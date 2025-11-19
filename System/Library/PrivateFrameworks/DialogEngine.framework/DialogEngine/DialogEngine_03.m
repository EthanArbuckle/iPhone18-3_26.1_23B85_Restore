void sub_10002C514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::locale::~locale(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10002C580(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_10002AD74(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 1);
        v7 -= 3;
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

uint64_t sub_10002C608(uint64_t *a1, uint64_t a2)
{
  sub_10000143C(v38, &unk_10006B9FB);
  sub_10000143C(&v40, &unk_10006B9FB);
  sub_10000143C(&v42, &unk_10006B9FB);
  sub_10000143C(v44, &unk_10006B9FB);
  memset(v46, 0, 7);
  memset(v37, 0, sizeof(v37));
  sub_100001FDC(v37, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  LOBYTE(a2) = sub_10002BAF8(v37, a2, v38);
  v35[0] = v37;
  sub_100002260(v35);
  if ((a2 & 1) == 0)
  {
    v10 = 0;
    goto LABEL_69;
  }

  if (BYTE2(v46[1]) == 1)
  {
    siri::dialogengine::Log::SetLogDebugMessages(1, v4);
    siri::dialogengine::Log::SetOutputToStdout(1, v5);
    siri::dialogengine::Log::Debug("Activate debug mode", v6);
  }

  v7 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v7 = v44[1];
  }

  if (v7)
  {
    if (v46[0] > 4)
    {
      if (v46[0] == 5)
      {
        sub_10000143C(&__p, "schema");
        siri::dialogengine::JoinPath();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        siri::dialogengine::ListDirRecursively();
        v21 = __p;
        v22 = v33;
        while (v21 != v22)
        {
          if (siri::dialogengine::HasPatternSchemaExtension())
          {
            siri::dialogengine::JoinPath();
            sub_10002CE58();
            if (v31 < 0)
            {
              operator delete(v30[0]);
            }
          }

          v21 += 24;
        }

        goto LABEL_65;
      }

      if (v46[0] == 6)
      {
        sub_10000143C(&__p, "schema");
        siri::dialogengine::JoinPath();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        siri::dialogengine::ListDirRecursively();
        v11 = __p;
        v12 = v33;
        while (v11 != v12)
        {
          if (siri::dialogengine::HasPatternSchemaExtension())
          {
            siri::dialogengine::JoinPath();
            sub_10002CE58();
            if (v31 < 0)
            {
              operator delete(v30[0]);
            }
          }

          v11 += 24;
        }

        goto LABEL_65;
      }
    }

    else
    {
      if (v46[0] == 3)
      {
        sub_10000143C(&__p, "schema");
        siri::dialogengine::JoinPath();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        siri::dialogengine::ListDirRecursively();
        v19 = __p;
        v20 = v33;
        while (v19 != v20)
        {
          if (siri::dialogengine::HasSchemaExtension())
          {
            siri::dialogengine::JoinPath();
            sub_10002CE58();
            if (v31 < 0)
            {
              operator delete(v30[0]);
            }
          }

          v19 += 24;
        }

        goto LABEL_65;
      }

      if (v46[0] == 4)
      {
        sub_10000143C(&__p, "schema");
        siri::dialogengine::JoinPath();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        siri::dialogengine::ListDirRecursively();
        v8 = __p;
        v9 = v33;
        while (v8 != v9)
        {
          if (siri::dialogengine::HasSchemaExtension())
          {
            siri::dialogengine::JoinPath();
            sub_10002CE58();
            if (v31 < 0)
            {
              operator delete(v30[0]);
            }
          }

          v8 += 24;
        }

LABEL_65:
        v30[0] = &__p;
        sub_100002260(v30);
LABEL_66:
        if (v36 < 0)
        {
          operator delete(v35[0]);
        }

        v10 = 1;
        goto LABEL_69;
      }
    }

    sub_10000143C(&__p, "dialog");
    siri::dialogengine::JoinPath();
    if (v34 < 0)
    {
      operator delete(__p);
    }

    siri::dialogengine::ListDirRecursively();
    v13 = __p;
    v14 = v33;
    if (__p == v33)
    {
LABEL_41:
      v30[0] = &__p;
      sub_100002260(v30);
      sub_10000143C(v30, "pattern");
      siri::dialogengine::JoinPath();
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      siri::dialogengine::ListDirRecursively();
      v17 = v30[0];
      v18 = v30[1];
      while (v17 != v18)
      {
        if (siri::dialogengine::HasPatternExtension())
        {
          siri::dialogengine::JoinPath();
          sub_10002CE58();
          if (v29 < 0)
          {
            operator delete(v28[0]);
          }
        }

        v17 += 24;
      }

      v28[0] = v30;
      sub_100002260(v28);
      sub_10000143C(v28, "visual");
      siri::dialogengine::JoinPath();
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      siri::dialogengine::ListDirRecursively();
      v24 = v28[0];
      v25 = v28[1];
      while (v24 != v25)
      {
        if (siri::dialogengine::HasVisualCATExtension())
        {
          siri::dialogengine::JoinPath();
          sub_10002CE58();
          if (v27 < 0)
          {
            operator delete(v26);
          }
        }

        v24 += 24;
      }

      v26 = v28;
      sub_100002260(&v26);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (v34 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_66;
    }

    while (1)
    {
      sub_10000143C(v30, "cat");
      HasExtension = siri::dialogengine::HasExtension();
      v16 = HasExtension;
      if (v31 < 0)
      {
        operator delete(v30[0]);
        if (v16)
        {
LABEL_38:
          siri::dialogengine::JoinPath();
          sub_10002CE58();
          if (v31 < 0)
          {
            operator delete(v30[0]);
          }
        }
      }

      else if (HasExtension)
      {
        goto LABEL_38;
      }

      v13 += 24;
      if (v13 == v14)
      {
        goto LABEL_41;
      }
    }
  }

  sub_10000143C(v35, &unk_10006B9FB);
  v10 = sub_10002CE58();
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

LABEL_69:
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  return v10;
}

void sub_10002CC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_10002E8F0(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_10002CE58()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  sub_10002EA68(&v117, v0);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  if (v3)
  {
    std::string::operator=(&v117, v2);
    std::string::operator=(&v118, v2);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100001C60(&__dst, v117.__r_.__value_.__l.__data_, v117.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v117;
  }

  if (siri::dialogengine::HasPatternExtension())
  {
    sub_10002B9E4(&v117);
    v4 = sub_1000027F4(&std::cout, "Converting ", 11);
    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v117;
    }

    else
    {
      v5 = v117.__r_.__value_.__r.__words[0];
    }

    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v117.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v117.__r_.__value_.__l.__size_;
    }

    v7 = sub_1000027F4(v4, v5, size);
    v8 = sub_1000027F4(v7, " to ", 4);
    if (v122)
    {
      v9 = "BINARY";
    }

    else
    {
      v9 = "XML";
    }

    if (v122)
    {
      v10 = 6;
    }

    else
    {
      v10 = 3;
    }

    v11 = sub_1000027F4(v8, v9, v10);
    if (v123)
    {
      v12 = " (preserve existing)";
    }

    else
    {
      v12 = " (delete existing)";
    }

    if (v123)
    {
      v13 = 20;
    }

    else
    {
      v13 = 18;
    }

    v14 = sub_1000027F4(v11, v12, v13);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v131, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v131);
    std::ostream::put();
    std::ostream::flush();
    siri::dialogengine::Context::Context(&v131);
    siri::dialogengine::PatternFile::LoadFromPath();
    if (__str.__r_.__value_.__r.__words[0])
    {
      v16 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v118.__r_.__value_.__l.__size_;
      }

      v18 = 24;
      if (!v17)
      {
        v18 = 0;
      }

      v19 = &v117 + v18;
      if (!v17)
      {
        v16 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
      }

      if (v16 < 0)
      {
        if (v17)
        {
          v70 = v118.__r_.__value_.__l.__size_;
        }

        else
        {
          v70 = v117.__r_.__value_.__l.__size_;
        }

        sub_100001C60(v124, *v19, v70);
      }

      else
      {
        *&v124[0].__locale_ = *v19;
        v125 = *(v19 + 2);
      }

      siri::dialogengine::ChangePatternExtension();
      if (SHIBYTE(v125) < 0)
      {
        operator delete(v124[0].__locale_);
      }

      *&v124[0].__locale_ = *&__p.__r_.__value_.__l.__data_;
      v125 = __p.__r_.__value_.__r.__words[2];
      *&v127.__r_.__value_.__l.__data_ = *&__str.__r_.__value_.__l.__data_;
      if (__str.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v51 = siri::dialogengine::PatternFile::Save();
      if (v127.__r_.__value_.__l.__size_)
      {
        sub_100005EB4(v127.__r_.__value_.__l.__size_);
      }

      if (v51)
      {
        if ((v123 & 1) == 0)
        {
          siri::dialogengine::ChangePatternExtension();
          siri::dialogengine::DeleteFile();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v71 = sub_1000027F4(&std::cout, "Error: failed to save Pattern file: ", 36);
        if (v125 >= 0)
        {
          locale = v124;
        }

        else
        {
          locale = v124[0].__locale_;
        }

        if (v125 >= 0)
        {
          v73 = HIBYTE(v125);
        }

        else
        {
          v73 = v124[1].__locale_;
        }

        v74 = sub_1000027F4(v71, locale, v73);
        std::ios_base::getloc((v74 + *(*v74 - 24)));
        v75 = std::locale::use_facet(&__p, &std::ctype<char>::id);
        (v75->__vftable[2].~facet_0)(v75, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
      }

      if (SHIBYTE(v125) < 0)
      {
        operator delete(v124[0].__locale_);
      }
    }

    else
    {
      v46 = sub_1000027F4(&std::cout, "Error: unable to load Pattern file: ", 36);
      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v117;
      }

      else
      {
        v47 = v117.__r_.__value_.__r.__words[0];
      }

      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = v117.__r_.__value_.__l.__size_;
      }

      v49 = sub_1000027F4(v46, v47, v48);
      std::ios_base::getloc((v49 + *(*v49 - 24)));
      v50 = std::locale::use_facet(v124, &std::ctype<char>::id);
      (v50->__vftable[2].~facet_0)(v50, 10);
      std::locale::~locale(v124);
      std::ostream::put();
      std::ostream::flush();
      v51 = 0;
    }

    v76 = __str.__r_.__value_.__l.__size_;
    if (!__str.__r_.__value_.__l.__size_)
    {
      goto LABEL_285;
    }

    goto LABEL_284;
  }

  if (!siri::dialogengine::HasVisualCATExtension())
  {
    if (siri::dialogengine::HasSchemaExtension())
    {
      v32 = sub_1000027F4(&std::cout, "Converting ", 11);
      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v117;
      }

      else
      {
        v33 = v117.__r_.__value_.__r.__words[0];
      }

      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v117.__r_.__value_.__l.__size_;
      }

      v35 = sub_1000027F4(v32, v33, v34);
      v36 = sub_1000027F4(v35, " to ", 4);
      if (v122 == 3)
      {
        v37 = "YAML";
      }

      else
      {
        v37 = "BINARY";
      }

      if (v122 == 3)
      {
        v38 = 4;
      }

      else
      {
        v38 = 6;
      }

      v39 = sub_1000027F4(v36, v37, v38);
      if (v123)
      {
        v40 = " (preserve existing)";
      }

      else
      {
        v40 = " (delete existing)";
      }

      if (v123)
      {
        v41 = 20;
      }

      else
      {
        v41 = 18;
      }

      v42 = sub_1000027F4(v39, v40, v41);
      std::ios_base::getloc((v42 + *(*v42 - 24)));
      v43 = std::locale::use_facet(&v131, &std::ctype<char>::id);
      (v43->__vftable[2].~facet_0)(v43, 10);
      std::locale::~locale(&v131);
      std::ostream::put();
      std::ostream::flush();
      siri::dialogengine::Context::Context(&v131);
      sub_10000143C(v124, "catschema.bin");
      v44 = siri::dialogengine::StringEndsWith();
      v45 = v44;
      if (SHIBYTE(v125) < 0)
      {
        operator delete(v124[0].__locale_);
        if (v45)
        {
          goto LABEL_80;
        }
      }

      else if (v44)
      {
LABEL_80:
        sub_10000143C(v124, &unk_10006B9FB);
        sub_10000143C(&__p, &unk_10006B9FB);
        siri::dialogengine::ParseCATSchemaBinary();
LABEL_164:
        v114 = *&__str.__r_.__value_.__l.__data_;
        *&__str.__r_.__value_.__l.__data_ = 0uLL;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v125) < 0)
        {
          operator delete(v124[0].__locale_);
        }

        v82 = *(&v114 + 1);
        if (v114)
        {
          v83 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
          if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v84 = v118.__r_.__value_.__l.__size_;
          }

          v85 = 24;
          if (!v84)
          {
            v85 = 0;
          }

          v86 = &v117 + v85;
          if (!v84)
          {
            v83 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
          }

          if (v83 < 0)
          {
            if (v84)
            {
              v94 = v118.__r_.__value_.__l.__size_;
            }

            else
            {
              v94 = v117.__r_.__value_.__l.__size_;
            }

            sub_100001C60(v124, *v86, v94);
          }

          else
          {
            *&v124[0].__locale_ = *v86;
            v125 = *(v86 + 2);
          }

          siri::dialogengine::ChangeSchemaExtension();
          if (SHIBYTE(v125) < 0)
          {
            operator delete(v124[0].__locale_);
          }

          *&v124[0].__locale_ = *&__p.__r_.__value_.__l.__data_;
          v125 = __p.__r_.__value_.__r.__words[2];
          sub_10000143C(&__p, "catschema.bin");
          v95 = siri::dialogengine::StringEndsWith();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v95)
          {
            v129 = v114;
            if (*(&v114 + 1))
            {
              atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v96 = siri::dialogengine::WriteCATSchemaBinary();
            v97 = *(&v129 + 1);
            if (!*(&v129 + 1))
            {
              goto LABEL_215;
            }
          }

          else
          {
            *&__str.__r_.__value_.__l.__data_ = v114;
            if (*(&v114 + 1))
            {
              atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v96 = siri::dialogengine::WriteCATSchemaYAML();
            v97 = __str.__r_.__value_.__l.__size_;
            if (!__str.__r_.__value_.__l.__size_)
            {
              goto LABEL_215;
            }
          }

          sub_100005EB4(v97);
LABEL_215:
          if (v96)
          {
            if ((v123 & 1) == 0)
            {
              siri::dialogengine::ChangeSchemaExtension();
              siri::dialogengine::DeleteFile();
              goto LABEL_260;
            }

            goto LABEL_262;
          }

          v108 = sub_1000027F4(&std::cout, "Error: failed to save CAT schema file: ", 39);
          if (v125 >= 0)
          {
            v109 = v124;
          }

          else
          {
            v109 = v124[0].__locale_;
          }

          if (v125 >= 0)
          {
            v110 = HIBYTE(v125);
          }

          else
          {
            v110 = v124[1].__locale_;
          }

          goto LABEL_279;
        }

        v87 = sub_1000027F4(&std::cout, "Error: unable to load CAT schema file: ", 39);
        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v88 = &v117;
        }

        else
        {
          v88 = v117.__r_.__value_.__r.__words[0];
        }

        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v89 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v89 = v117.__r_.__value_.__l.__size_;
        }

LABEL_242:
        v100 = sub_1000027F4(v87, v88, v89);
        std::ios_base::getloc((v100 + *(*v100 - 24)));
        v101 = std::locale::use_facet(v124, &std::ctype<char>::id);
        (v101->__vftable[2].~facet_0)(v101, 10);
        std::locale::~locale(v124);
        std::ostream::put();
        std::ostream::flush();
        v51 = 0;
LABEL_282:
        if (!v82)
        {
LABEL_285:
          siri::dialogengine::Context::~Context(&v131);
          goto LABEL_286;
        }

        v76 = v82;
LABEL_284:
        sub_100005EB4(v76);
        goto LABEL_285;
      }

      sub_10000143C(v124, &unk_10006B9FB);
      sub_10000143C(&__p, &unk_10006B9FB);
      siri::dialogengine::ParseCATSchemaYAML();
      goto LABEL_164;
    }

    if (!siri::dialogengine::HasPatternSchemaExtension())
    {
      v51 = sub_10002B038(&v117);
      goto LABEL_286;
    }

    v57 = sub_1000027F4(&std::cout, "Converting ", 11);
    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v117;
    }

    else
    {
      v58 = v117.__r_.__value_.__r.__words[0];
    }

    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v117.__r_.__value_.__l.__size_;
    }

    v60 = sub_1000027F4(v57, v58, v59);
    v61 = sub_1000027F4(v60, " to ", 4);
    if (v122 == 5)
    {
      v62 = "YAML";
    }

    else
    {
      v62 = "BINARY";
    }

    if (v122 == 5)
    {
      v63 = 4;
    }

    else
    {
      v63 = 6;
    }

    v64 = sub_1000027F4(v61, v62, v63);
    if (v123)
    {
      v65 = " (preserve existing)";
    }

    else
    {
      v65 = " (delete existing)";
    }

    if (v123)
    {
      v66 = 20;
    }

    else
    {
      v66 = 18;
    }

    v67 = sub_1000027F4(v64, v65, v66);
    std::ios_base::getloc((v67 + *(*v67 - 24)));
    v68 = std::locale::use_facet(&v131, &std::ctype<char>::id);
    (v68->__vftable[2].~facet_0)(v68, 10);
    std::locale::~locale(&v131);
    std::ostream::put();
    std::ostream::flush();
    siri::dialogengine::Context::Context(&v131);
    sub_10000143C(v124, "patternschema.bin");
    v69 = siri::dialogengine::StringEndsWith();
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124[0].__locale_);
    }

    sub_10000143C(v124, &unk_10006B9FB);
    sub_10000143C(&__p, &unk_10006B9FB);
    if (v69)
    {
      siri::dialogengine::ParsePatternSchemaBinary();
    }

    else
    {
      siri::dialogengine::ParsePatternSchemaYAML();
    }

    v115 = *&__str.__r_.__value_.__l.__data_;
    *&__str.__r_.__value_.__l.__data_ = 0uLL;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124[0].__locale_);
    }

    v82 = *(&v115 + 1);
    if (!v115)
    {
      v87 = sub_1000027F4(&std::cout, "Error: unable to load pattern schema file: ", 43);
      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = &v117;
      }

      else
      {
        v88 = v117.__r_.__value_.__r.__words[0];
      }

      if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v89 = v117.__r_.__value_.__l.__size_;
      }

      goto LABEL_242;
    }

    v90 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v91 = v118.__r_.__value_.__l.__size_;
    }

    v92 = 24;
    if (!v91)
    {
      v92 = 0;
    }

    v93 = &v117 + v92;
    if (!v91)
    {
      v90 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
    }

    if (v90 < 0)
    {
      if (v91)
      {
        v104 = v118.__r_.__value_.__l.__size_;
      }

      else
      {
        v104 = v117.__r_.__value_.__l.__size_;
      }

      sub_100001C60(v124, *v93, v104);
    }

    else
    {
      *&v124[0].__locale_ = *v93;
      v125 = *(v93 + 2);
    }

    siri::dialogengine::ChangePatternSchemaExtension();
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124[0].__locale_);
    }

    *&v124[0].__locale_ = *&__p.__r_.__value_.__l.__data_;
    v125 = __p.__r_.__value_.__r.__words[2];
    sub_10000143C(&__p, "patternschema.bin");
    v105 = siri::dialogengine::StringEndsWith();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v105)
    {
      v129 = v115;
      if (*(&v115 + 1))
      {
        atomic_fetch_add_explicit((*(&v115 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v106 = siri::dialogengine::WritePatternSchemaBinary();
      v107 = *(&v129 + 1);
      if (!*(&v129 + 1))
      {
        goto LABEL_257;
      }
    }

    else
    {
      *&__str.__r_.__value_.__l.__data_ = v115;
      if (*(&v115 + 1))
      {
        atomic_fetch_add_explicit((*(&v115 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v106 = siri::dialogengine::WritePatternSchemaYAML();
      v107 = __str.__r_.__value_.__l.__size_;
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_257;
      }
    }

    sub_100005EB4(v107);
LABEL_257:
    if (v106)
    {
      if ((v123 & 1) == 0)
      {
        siri::dialogengine::ChangePatternSchemaExtension();
        siri::dialogengine::DeleteFile();
LABEL_260:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

LABEL_262:
      v51 = 1;
      goto LABEL_280;
    }

    v108 = sub_1000027F4(&std::cout, "Error: failed to save pattern schema file: ", 43);
    if (v125 >= 0)
    {
      v109 = v124;
    }

    else
    {
      v109 = v124[0].__locale_;
    }

    if (v125 >= 0)
    {
      v110 = HIBYTE(v125);
    }

    else
    {
      v110 = v124[1].__locale_;
    }

LABEL_279:
    v111 = sub_1000027F4(v108, v109, v110);
    std::ios_base::getloc((v111 + *(*v111 - 24)));
    v112 = std::locale::use_facet(&__p, &std::ctype<char>::id);
    (v112->__vftable[2].~facet_0)(v112, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v51 = 0;
LABEL_280:
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124[0].__locale_);
    }

    goto LABEL_282;
  }

  if ((siri::dialogengine::FileExists() & 1) == 0)
  {
    v52 = sub_1000027F4(&std::cout, "Error: can't find input Visual CAT file: ", 41);
    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v117;
    }

    else
    {
      v53 = v117.__r_.__value_.__r.__words[0];
    }

    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = v117.__r_.__value_.__l.__size_;
    }

    v55 = sub_1000027F4(v52, v53, v54);
    std::ios_base::getloc((v55 + *(*v55 - 24)));
    v56 = std::locale::use_facet(&v131, &std::ctype<char>::id);
    (v56->__vftable[2].~facet_0)(v56, 10);
    std::locale::~locale(&v131);
    std::ostream::put();
    std::ostream::flush();
    v51 = 0;
    goto LABEL_286;
  }

  v20 = sub_1000027F4(&std::cout, "Converting ", 11);
  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v117;
  }

  else
  {
    v21 = v117.__r_.__value_.__r.__words[0];
  }

  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v117.__r_.__value_.__l.__size_;
  }

  v23 = sub_1000027F4(v20, v21, v22);
  v24 = sub_1000027F4(v23, " to ", 4);
  if (v122)
  {
    v25 = "BINARY";
  }

  else
  {
    v25 = "XML";
  }

  if (v122)
  {
    v26 = 6;
  }

  else
  {
    v26 = 3;
  }

  v27 = sub_1000027F4(v24, v25, v26);
  if (v123)
  {
    v28 = " (preserve existing)";
  }

  else
  {
    v28 = " (delete existing)";
  }

  if (v123)
  {
    v29 = 20;
  }

  else
  {
    v29 = 18;
  }

  v30 = sub_1000027F4(v27, v28, v29);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v131, &std::ctype<char>::id);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v131);
  std::ostream::put();
  std::ostream::flush();
  siri::dialogengine::ChangeVisualCATExtension();
  siri::dialogengine::ChangeVisualCATExtension();
  sub_10002E954(&v117, &__p, &__str);
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100001C60(&v127, v119.__r_.__value_.__l.__data_, v119.__r_.__value_.__l.__size_);
  }

  else
  {
    v127 = v119;
  }

  v77 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
  if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v77 = v127.__r_.__value_.__l.__size_;
  }

  if (!v77)
  {
    std::string::operator=(&v127, &__p);
    if (v122)
    {
      if (v122 != 1)
      {
        sub_1000027F4(&std::cout, "Unrecognized format: ", 21);
        v102 = std::ostream::operator<<();
        std::ios_base::getloc((v102 + *(*v102 - 24)));
        v103 = std::locale::use_facet(&v131, &std::ctype<char>::id);
        (v103->__vftable[2].~facet_0)(v103, 10);
        std::locale::~locale(&v131);
        std::ostream::put();
        std::ostream::flush();
        v51 = 0;
        goto LABEL_230;
      }

      std::string::operator=(&v127, &__str);
    }
  }

  siri::dialogengine::Context::Context(&v131);
  siri::dialogengine::RequestInfo::RequestInfo(v124);
  LODWORD(v126) = 1;
  siri::dialogengine::RequestInfo::SetRequestType();
  siri::dialogengine::RequestInfo::SetVisualPath();
  siri::dialogengine::GetTemplateDirs();
  siri::dialogengine::RequestInfo::SetTemplateDirs();
  *&v129 = &v126;
  sub_10000C88C(&v129);
  siri::dialogengine::Context::SetRequestInfo();
  sub_10002A140(v124);
  if (siri::dialogengine::Context::LoadVisualFiles())
  {
    sub_10000143C(v124, &unk_10006B9FB);
    v78 = siri::dialogengine::Context::Save();
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124[0].__locale_);
    }

    if (v78)
    {
      if ((v123 & 1) == 0)
      {
        siri::dialogengine::ChangeVisualCATExtension();
        siri::dialogengine::DeleteFile();
        if (SHIBYTE(v125) < 0)
        {
          operator delete(v124[0].__locale_);
        }
      }

      v51 = 1;
      goto LABEL_229;
    }

    v79 = sub_1000027F4(&std::cout, "Error: unable to save Visual CAT file: ", 39);
    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = &v118;
    }

    else
    {
      v80 = v118.__r_.__value_.__r.__words[0];
    }

    if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v81 = v118.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    v79 = sub_1000027F4(&std::cout, "Error: unable to load Visual CAT file: ", 39);
    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = &v117;
    }

    else
    {
      v80 = v117.__r_.__value_.__r.__words[0];
    }

    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v81 = v117.__r_.__value_.__l.__size_;
    }
  }

  v98 = sub_1000027F4(v79, v80, v81);
  std::ios_base::getloc((v98 + *(*v98 - 24)));
  v99 = std::locale::use_facet(v124, &std::ctype<char>::id);
  (v99->__vftable[2].~facet_0)(v99, 10);
  std::locale::~locale(v124);
  std::ostream::put();
  std::ostream::flush();
  v51 = 0;
LABEL_229:
  siri::dialogengine::Context::~Context(&v131);
LABEL_230:
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_286:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  return v51;
}

void sub_10002E614()
{
  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  __cxa_end_catch();
  JUMPOUT(0x10002E7BCLL);
}

void sub_10002E6B0()
{
  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  JUMPOUT(0x10002E774);
}

void sub_10002E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (STACK[0x2C8])
  {
    JUMPOUT(0x10002E8A4);
  }

  JUMPOUT(0x10002E8A8);
}

void sub_10002E730(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27)
{
  std::locale::~locale(&a27);
  if (v27)
  {
    JUMPOUT(0x10002E8A4);
  }

  JUMPOUT(0x10002E8A8);
}

void sub_10002E744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  STACK[0x2E0] = v27;
  sub_10000C88C(&STACK[0x2E0]);
  sub_10002A140(&a27);
  JUMPOUT(0x10002E844);
}

void sub_10002E770(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10002E8A8);
}

void sub_10002E7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    sub_100005EB4(v35);
  }

  siri::dialogengine::Context::~Context(&STACK[0x308]);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_10002E8F0(&a17);
  _Unwind_Resume(a1);
}

void sub_10002E7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::locale::~locale(&STACK[0x2F0]);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  JUMPOUT(0x10002E89CLL);
}

void sub_10002E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (STACK[0x2A8])
  {
    sub_100005EB4(STACK[0x2A8]);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  JUMPOUT(0x10002E89CLL);
}

void sub_10002E824(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27)
{
  std::locale::~locale(&a27);
  if (STACK[0x2C8])
  {
    JUMPOUT(0x10002E8A4);
  }

  JUMPOUT(0x10002E8A8);
}

void sub_10002E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, __int16 a7, char a8, char a9, ...)
{
  va_start(va, a9);
  siri::dialogengine::Context::~Context(&STACK[0x308]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (a9 < 0)
  {
    operator delete(a4);
  }

  sub_10002E8F0(va);
  _Unwind_Resume(a1);
}

void sub_10002E8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, __int16 a7, char a8, char a9, ...)
{
  va_start(va, a9);
  std::locale::~locale(&STACK[0x308]);
  if (a9 < 0)
  {
    operator delete(a4);
  }

  sub_10002E8F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10002E8F0(uint64_t a1)
{
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

void sub_10002E954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 96);
  if (v5)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  if (*(v6 + 23) < 0)
  {
    sub_100001C60(__dst, *v6, *(v6 + 8));
    v5 = *(a1 + 96);
  }

  else
  {
    *__dst = *v6;
    v12 = *(v6 + 16);
  }

  if (v5)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  if (*(v8 + 23) < 0)
  {
    sub_100001C60(__p, *v8, *(v8 + 8));
  }

  else
  {
    *__p = *v8;
    v10 = *(v8 + 16);
  }

  if (siri::dialogengine::FileExists() && siri::dialogengine::FileExists())
  {
    siri::dialogengine::DeleteFile();
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10002EA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10002EA68(char *__dst, __int128 *a2)
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

  v8 = *(a2 + 24);
  *(__dst + 99) = *(a2 + 99);
  *(__dst + 24) = v8;
  return __dst;
}

void sub_10002EB40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

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

uint64_t sub_10002EB8C(void *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  sub_10000143C(__p, "--templateDir");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v42;
  if ((v42 & 0x80u) != 0)
  {
    v6 = v41;
  }

  if (v6)
  {
    v7 = *a1;
    if ((*(*a1 + 71) & 0x8000000000000000) != 0)
    {
      v10 = *(v7 + 48);
      v11 = *(v7 + 56);
    }

    siri::dialogengine::StringToLower();
    if (v39 < 0)
    {
      if (v38 != 3)
      {
        if (v38 != 4)
        {
          goto LABEL_42;
        }

        v12 = v37;
        goto LABEL_21;
      }

      if (*v37 != 30066 || v37[2] != 110)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v39 != 3)
      {
        if (v39 != 4)
        {
          goto LABEL_42;
        }

        v12 = &v37;
LABEL_21:
        if (*v12 == 1953720684)
        {
          siri::dialogengine::TestSuite::TestSuite(&v28, 0);
          sub_10000143C(__p, &unk_10006B9FB);
          sub_10000143C(&v34, &unk_10006B9FB);
          sub_10000143C(v32, &unk_10006B9FB);
          siri::dialogengine::TestSuite::LoadTests();
          if (v33 < 0)
          {
            operator delete(v32[0]);
          }

          if (v36 < 0)
          {
            operator delete(v34);
          }

          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          siri::dialogengine::TestSuite::GetTests(&v34, &v28);
          v13 = v34;
          for (i = v35; v13 != i; v13 += 16)
          {
            sub_10002F404(__p, v13);
            siri::dialogengine::TestCase::ToString(v32, __p);
            if (v33 >= 0)
            {
              v15 = v32;
            }

            else
            {
              v15 = v32[0];
            }

            printf("%s", v15);
            if (v33 < 0)
            {
              operator delete(v32[0]);
            }

            if ((siri::dialogengine::TestCase::IsEnabled(__p) & 1) == 0)
            {
              printf(" [Disabled]");
            }

            putchar(10);
            sub_10002F7F4(__p);
          }

          __p[0] = &v34;
          sub_10002F8C0(__p);
          __p[0] = v30;
          sub_100002260(__p);
          __p[0] = &v28 + 8;
          sub_10002F8C0(__p);
          v4 = 1;
          goto LABEL_43;
        }

LABEL_42:
        v17 = sub_1000027F4(&std::cout, "Must specify 'run' or 'list' for 'catutil test'", 47);
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v18 = std::locale::use_facet(__p, &std::ctype<char>::id);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        v4 = 0;
LABEL_43:
        if (v39 < 0)
        {
          operator delete(v37);
        }

        goto LABEL_45;
      }

      if (v37 != 30066 || BYTE2(v37) != 110)
      {
        goto LABEL_42;
      }
    }

    sub_10000143C(__p, "--debug");
    v21 = siri::dialogengine::OptionExists();
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (v21)
    {
      siri::dialogengine::Log::SetOutputToStdout(1, v20);
    }

    sub_10000143C(__p, "--catId");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    v22 = HIBYTE(v29);
    if (v29 < 0)
    {
      v22 = *(&v28 + 1);
    }

    if (v22)
    {
      v23 = 0;
    }

    else
    {
      sub_10000143C(&v34, "--patternId");
      siri::dialogengine::GetOption();
      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28);
      }

      v28 = *__p;
      v29 = v26;
      HIBYTE(v26) = 0;
      LOBYTE(__p[0]) = 0;
      if (v36 < 0)
      {
        operator delete(v34);
      }

      v24 = HIBYTE(v29);
      if (v29 < 0)
      {
        v24 = *(&v28 + 1);
      }

      v23 = v24 != 0;
    }

    sub_10000143C(__p, "--locale");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000143C(__p, "--test");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000143C(__p, "--outputJson");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    siri::dialogengine::TestSuite::TestSuite(__p, v21 & v23);
    siri::dialogengine::TestSuite::LoadTests();
    v4 = siri::dialogengine::TestRunner::RunTestSuite();
    v43 = &v27;
    sub_100002260(&v43);
    v43 = &__p[1];
    sub_10002F8C0(&v43);
    if (v31 < 0)
    {
      operator delete(v30[4]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v36 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    goto LABEL_43;
  }

  v8 = sub_1000027F4(&std::cout, "Must specify --templateDir", 26);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(__p, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v4 = 0;
LABEL_45:
  if (v42 < 0)
  {
    operator delete(v40);
  }

  return v4;
}

void sub_10002F1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 - 105) < 0)
  {
    operator delete(*(v16 - 128));
  }

  if (*(v16 - 217) < 0)
  {
    operator delete(*(v16 - 240));
  }

  if (*(v16 - 81) < 0)
  {
    operator delete(*(v16 - 104));
  }

  if (*(v16 - 57) < 0)
  {
    operator delete(*(v16 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002F3B8(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_100002260(&v3);
  v3 = (a1 + 8);
  sub_10002F8C0(&v3);
  return a1;
}

char *sub_10002F404(char *__dst, __int128 *a2)
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

  __dst[120] = *(a2 + 120);
  if (*(a2 + 151) < 0)
  {
    sub_100001C60(__dst + 128, *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v9 = a2[8];
    *(__dst + 18) = *(a2 + 18);
    *(__dst + 8) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    sub_100001C60(__dst + 152, *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v10 = *(a2 + 152);
    *(__dst + 21) = *(a2 + 21);
    *(__dst + 152) = v10;
  }

  if (*(a2 + 199) < 0)
  {
    sub_100001C60(__dst + 176, *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v11 = a2[11];
    *(__dst + 24) = *(a2 + 24);
    *(__dst + 11) = v11;
  }

  *(__dst + 25) = 0;
  *(__dst + 26) = 0;
  *(__dst + 27) = 0;
  sub_10002F6AC((__dst + 200), *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 4);
  v12 = *(a2 + 112);
  *(__dst + 29) = 0;
  *(__dst + 112) = v12;
  *(__dst + 30) = 0;
  *(__dst + 31) = 0;
  sub_100001FDC((__dst + 232), *(a2 + 29), *(a2 + 30), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 30) - *(a2 + 29)) >> 3));
  return __dst;
}

void sub_10002F5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 175) < 0)
  {
    operator delete(*(v10 + 152));
  }

  if (*(v10 + 151) < 0)
  {
    operator delete(*(v10 + 128));
  }

  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002F6AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100029F30(result, a4);
  }

  return result;
}

void sub_10002F714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100007C5C(&a9);
  _Unwind_Resume(a1);
}

void *sub_10002F734(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_10002F7BC(v7);
  return v4;
}

uint64_t sub_10002F7BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10002A074(a1);
  }

  return a1;
}

uint64_t sub_10002F7F4(uint64_t a1)
{
  v3 = (a1 + 232);
  sub_100002260(&v3);
  v3 = (a1 + 200);
  sub_100007C5C(&v3);
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
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

void sub_10002F8C0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10002F7F4(v4 - 256);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10002F944(void *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  sub_10000143C(__p, &unk_10006B9FB);
  v53 = 0uLL;
  v54 = 0;
  v55 = 1;
  v6 = *a1;
  if ((*(*a1 + 71) & 0x8000000000000000) != 0)
  {
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
  }

  siri::dialogengine::StringToLower();
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  v52 = v47;
  *__p = *&v46[0].__locale_;
  if (SHIBYTE(v47) < 0)
  {
    if (__p[1] != 6)
    {
      if (__p[1] != 7)
      {
        if (__p[1] != 8)
        {
          goto LABEL_74;
        }

        v9 = *__p[0];
        goto LABEL_18;
      }

      v25 = *(__p[0] + 3);
      v26 = *__p[0] == 1886676327;
      v27 = 1752457584;
      goto LABEL_70;
    }

    v12 = __p[0];
LABEL_69:
    v28 = *v12;
    v25 = *(v12 + 2);
    v26 = v28 == 1701602660;
    v27 = 25972;
LABEL_70:
    if (!v26 || v25 != v27)
    {
      goto LABEL_74;
    }

    goto LABEL_19;
  }

  if (HIBYTE(v47) == 6)
  {
    v12 = __p;
    goto LABEL_69;
  }

  if (HIBYTE(v47) != 7)
  {
    if (HIBYTE(v47) != 8)
    {
      goto LABEL_74;
    }

    v9 = __p[0];
LABEL_18:
    if (v9 == 0x64616F6C6E776F64)
    {
      goto LABEL_19;
    }

LABEL_74:
    v30 = "Must specify 'download', 'delete' or 'getpath' for 'catutil morphun'";
    v31 = 68;
LABEL_75:
    v32 = sub_1000027F4(&std::cout, v30, v31);
    std::ios_base::getloc((v32 + *(*v32 - 24)));
    v33 = std::locale::use_facet(v46, &std::ctype<char>::id);
    (v33->__vftable[2].~facet_0)(v33, 10);
    std::locale::~locale(v46);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_76;
  }

  if (LODWORD(__p[0]) != 1886676327 || *(__p + 3) != 1752457584)
  {
    goto LABEL_74;
  }

LABEL_19:
  sub_10000143C(v46, "--nonBlocking");
  v55 = siri::dialogengine::OptionExists() ^ 1;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0].__locale_);
  }

  sub_10000143C(__dst, "--locale");
  siri::dialogengine::GetMultipleOptions();
  sub_100005FE0(&v53);
  v53 = *&v46[0].__locale_;
  v54 = v47;
  v46[1].__locale_ = 0;
  v47 = 0;
  v46[0].__locale_ = 0;
  v57 = v46;
  sub_100002260(&v57);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__dst[0]);
  }

  if ((v52 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v52) != 6)
    {
      if (HIBYTE(v52) != 7)
      {
        if (HIBYTE(v52) == 8)
        {
          v10 = __p[0];
          goto LABEL_39;
        }

LABEL_76:
        v4 = 0;
        goto LABEL_77;
      }

      v34 = __p;
LABEL_87:
      v36 = *v34;
      v37 = *(v34 + 3);
      if (v36 == 1886676327 && v37 == 1752457584)
      {
        v4 = sub_1000301BC(__p);
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    if (LODWORD(__p[0]) != 1701602660 || WORD2(__p[0]) != 25972)
    {
      goto LABEL_76;
    }

LABEL_98:
    v40 = *(&v53 + 1);
    v41 = v53;
    if (v53 == *(&v53 + 1))
    {
      v42 = sub_1000027F4(&std::cout, "Deleting ALL Morphun assets...", 30);
      sub_10000FD6C(v42);
      siri::dialogengine::MorphunUpdaterTuriTrial::DeleteAll(v46);
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v50 = 0;
      v56 = __dst;
      do
      {
        siri::dialogengine::GetLocaleLanguage();
        sub_100030A70(&v56, v46);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46[0].__locale_);
        }

        v41 += 24;
      }

      while (v41 != v40);
      siri::dialogengine::MorphunUpdaterTuriTrial::Delete();
      v46[0].__locale_ = __dst;
      sub_100002260(v46);
    }

    goto LABEL_106;
  }

  if (__p[1] == 6)
  {
    if (*__p[0] != 1701602660 || *(__p[0] + 2) != 25972)
    {
      goto LABEL_76;
    }

    goto LABEL_98;
  }

  if (__p[1] == 7)
  {
    v34 = __p[0];
    goto LABEL_87;
  }

  if (__p[1] != 8)
  {
    goto LABEL_76;
  }

  v10 = *__p[0];
LABEL_39:
  if (v10 != 0x64616F6C6E776F64)
  {
    goto LABEL_76;
  }

  if (v53 == *(&v53 + 1))
  {
    v30 = "Must specify at least one locale for 'catutil download'";
    v31 = 55;
    goto LABEL_75;
  }

  v13 = sub_1000027F4(&std::cout, "Initiating download of locale(s): ", 34);
  sub_10000143C(__dst, ",");
  siri::dialogengine::StringJoin();
  if (v47 >= 0)
  {
    locale = v46;
  }

  else
  {
    locale = v46[0].__locale_;
  }

  if (v47 >= 0)
  {
    v15 = HIBYTE(v47);
  }

  else
  {
    v15 = v46[1].__locale_;
  }

  v16 = sub_1000027F4(v13, locale, v15);
  sub_10000FD6C(v16);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0].__locale_);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(__dst[0]);
  }

  v18 = *(&v53 + 1);
  v17 = v53;
  if (v53 != *(&v53 + 1))
  {
    v43 = v45;
    do
    {
      if (*(v17 + 23) < 0)
      {
        sub_100001C60(__dst, *v17, *(v17 + 1));
      }

      else
      {
        v19 = *v17;
        v50 = *(v17 + 2);
        *__dst = v19;
      }

      if (v55 == 1)
      {
        v46[0].__locale_ = 0;
        v46[1].__locale_ = v46;
        v47 = 0x2020000000;
        v48 = 0;
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v45[0] = sub_1000301A8;
        v45[1] = &unk_100075140;
        v45[2] = v46;
        v20 = objc_retainBlock(v44);
        v21 = +[NSRunLoop currentRunLoop];
        siri::dialogengine::MorphunUpdaterTuriTrial::Download();
        do
        {
          if (*(v46[1].__locale_ + 24))
          {
            break;
          }

          v22 = [NSDate dateWithTimeIntervalSinceNow:2.0];
          v23 = [v21 runMode:NSDefaultRunLoopMode beforeDate:v22];
        }

        while ((v23 & 1) != 0);

        _Block_object_dispose(v46, 8);
      }

      else
      {
        siri::dialogengine::MorphunUpdaterTuriTrial::Download();
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__dst[0]);
      }

      v17 = (v17 + 24);
    }

    while (v17 != v18);
  }

  if (v55)
  {
    v24 = sub_1000027F4(&std::cout, "Results: ", 9);
    sub_10000FD6C(v24);
    sub_1000301BC(__p);
  }

LABEL_106:
  v4 = 1;
LABEL_77:
  v46[0].__locale_ = &v53;
  sub_100002260(v46);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

uint64_t sub_1000301BC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 24);
  if (v3 != v2)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v54 = &v42;
    while (1)
    {
      siri::dialogengine::GetCanonicalLocale();
      sub_10000143C(&__p, "_");
      v4 = siri::dialogengine::StringContains();
      v5 = v4;
      if (SHIBYTE(v53) < 0)
      {
        operator delete(__p);
        if ((v5 & 1) == 0)
        {
LABEL_8:
          siri::dialogengine::GetDefaultLocaleForLanguage();
          goto LABEL_10;
        }
      }

      else if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      if (SHIBYTE(v46) < 0)
      {
        sub_100001C60(&__str, __dst[0].__locale_, __dst[1].__locale_);
LABEL_10:
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__dst[0].__locale_);
        }

        goto LABEL_12;
      }

      *&__str.__r_.__value_.__l.__data_ = *&__dst[0].__locale_;
      __str.__r_.__value_.__r.__words[2] = v46;
LABEL_12:
      sub_100030A70(&v54, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v3 += 24;
      if (v3 == v2)
      {
        v52 = 0;
        v53 = 0;
        __p = &v52;
        v6 = v42;
        v7 = v43;
        if (v42 == v43)
        {
          goto LABEL_53;
        }

        do
        {
          if (*(v6 + 23) < 0)
          {
            sub_100001C60(__dst, *v6, *(v6 + 1));
          }

          else
          {
            v8 = *v6;
            v46 = *(v6 + 2);
            *&__dst[0].__locale_ = v8;
          }

          siri::dialogengine::MorphunUpdaterTuriTrial::GetPath();
          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v54 = __dst;
            v11 = sub_100030BB8(&__p, &__dst[0].__locale_);
            std::string::operator=((v11 + 56), &__str);
            v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          if (v10 < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v46) < 0)
          {
            operator delete(__dst[0].__locale_);
          }

          v6 = (v6 + 24);
        }

        while (v6 != v7);
        if (!v53)
        {
LABEL_53:
          v24 = sub_1000027F4(&std::cout, "No such locale(s) installed on device!", 38);
          std::ios_base::getloc((v24 + *(*v24 - 24)));
          v25 = std::locale::use_facet(__dst, &std::ctype<char>::id);
          (v25->__vftable[2].~facet_0)(v25, 10);
          std::locale::~locale(__dst);
          std::ostream::put();
          std::ostream::flush();
        }

        else
        {
          v12 = __p;
          if (__p != &v52)
          {
            do
            {
              sub_1000309DC(__dst, v12 + 2);
              if (v46 >= 0)
              {
                locale = __dst;
              }

              else
              {
                locale = __dst[0].__locale_;
              }

              if (v46 >= 0)
              {
                v14 = HIBYTE(v46);
              }

              else
              {
                v14 = __dst[1].__locale_;
              }

              v15 = sub_1000027F4(&std::cout, locale, v14);
              v16 = sub_1000027F4(v15, ": ", 2);
              if ((v49 & 0x80u) == 0)
              {
                v17 = &v47;
              }

              else
              {
                v17 = v47;
              }

              if ((v49 & 0x80u) == 0)
              {
                v18 = v49;
              }

              else
              {
                v18 = v48;
              }

              v19 = sub_1000027F4(v16, v17, v18);
              std::ios_base::getloc((v19 + *(*v19 - 24)));
              v20 = std::locale::use_facet(&__str, &std::ctype<char>::id);
              (v20->__vftable[2].~facet_0)(v20, 10);
              std::locale::~locale(&__str);
              std::ostream::put();
              std::ostream::flush();
              if (v49 < 0)
              {
                operator delete(v47);
              }

              if (SHIBYTE(v46) < 0)
              {
                operator delete(__dst[0].__locale_);
              }

              v21 = *(v12 + 1);
              if (v21)
              {
                do
                {
                  v22 = v21;
                  v21 = *v21;
                }

                while (v21);
              }

              else
              {
                do
                {
                  v22 = *(v12 + 2);
                  v23 = *v22 == v12;
                  v12 = v22;
                }

                while (!v23);
              }

              v12 = v22;
            }

            while (v22 != &v52);
          }
        }

        sub_10002A374(&__p, v52);
        __dst[0].__locale_ = &v42;
        sub_100002260(__dst);
        return 1;
      }
    }
  }

  v52 = 0;
  v53 = 0;
  __p = &v52;
  siri::dialogengine::MorphunUpdaterTuriTrial::GetPaths(__dst, &__str);
  sub_10002A374(&__p, v52);
  v27 = __dst[1].__locale_;
  __p = __dst[0].__locale_;
  v52 = __dst[1].__locale_;
  v53 = v46;
  if (v46)
  {
    *(__dst[1].__locale_ + 2) = &v52;
    __dst[0].__locale_ = &__dst[1];
    __dst[1].__locale_ = 0;
    v46 = 0;
    v27 = 0;
  }

  else
  {
    __p = &v52;
  }

  sub_10002A374(__dst, v27);
  v26 = v53 != 0;
  if (v53)
  {
    v28 = __p;
    if (__p != &v52)
    {
      do
      {
        sub_1000309DC(__dst, v28 + 2);
        if (v46 >= 0)
        {
          v29 = __dst;
        }

        else
        {
          v29 = __dst[0].__locale_;
        }

        if (v46 >= 0)
        {
          v30 = HIBYTE(v46);
        }

        else
        {
          v30 = __dst[1].__locale_;
        }

        v31 = sub_1000027F4(&std::cout, v29, v30);
        v32 = sub_1000027F4(v31, ": ", 2);
        if ((v49 & 0x80u) == 0)
        {
          v33 = &v47;
        }

        else
        {
          v33 = v47;
        }

        if ((v49 & 0x80u) == 0)
        {
          v34 = v49;
        }

        else
        {
          v34 = v48;
        }

        v35 = sub_1000027F4(v32, v33, v34);
        std::ios_base::getloc((v35 + *(*v35 - 24)));
        v36 = std::locale::use_facet(&__str, &std::ctype<char>::id);
        (v36->__vftable[2].~facet_0)(v36, 10);
        std::locale::~locale(&__str);
        std::ostream::put();
        std::ostream::flush();
        if (v49 < 0)
        {
          operator delete(v47);
        }

        if (SHIBYTE(v46) < 0)
        {
          operator delete(__dst[0].__locale_);
        }

        v37 = *(v28 + 1);
        if (v37)
        {
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37);
        }

        else
        {
          do
          {
            v38 = *(v28 + 2);
            v23 = *v38 == v28;
            v28 = v38;
          }

          while (!v23);
        }

        v28 = v38;
      }

      while (v38 != &v52);
    }
  }

  else
  {
    v39 = sub_1000027F4(&std::cout, "No Morphun locales installed on device!", 39);
    std::ios_base::getloc((v39 + *(*v39 - 24)));
    v40 = std::locale::use_facet(__dst, &std::ctype<char>::id);
    (v40->__vftable[2].~facet_0)(v40, 10);
    std::locale::~locale(__dst);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_10002A374(&__p, v52);
  return v26;
}

void sub_10003086C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, void *a29, int a30, __int16 a31, char a32, char a33)
{
  std::locale::~locale(&a13);
  sub_10002A374(&__p, a29);
  _Unwind_Resume(a1);
}

uint64_t sub_100030998(uint64_t a1)
{
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

char *sub_1000309DC(char *__dst, __int128 *a2)
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

  return __dst;
}

void sub_100030A54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100030A70(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000020B0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = *a1;
    if (v12)
    {
      sub_1000020C8(v4, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = 24 * v9 + 24;
    v15 = *(v4 + 8) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20[0] = v17;
    v20[1] = v17;
    *(v4 + 8) = v8;
    v20[2] = v17;
    v18 = *(v4 + 16);
    *(v4 + 16) = 0;
    v20[3] = v18;
    sub_100002760(v20);
  }

  else
  {
    v7 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = v5 + 24;
  }

  *(v4 + 8) = v8;
  return a1;
}

uint64_t sub_100030BB8(uint64_t a1, const void **a2)
{
  v2 = *sub_1000229D8(a1, &v4, a2);
  if (!v2)
  {
    sub_100030C60();
  }

  return v2;
}

uint64_t sub_100030D04(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10002A3D0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100030D50(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_100002260(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100030D9C(void *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  sub_100015E14();
  v6 = *a1;
  if ((*(*a1 + 71) & 0x8000000000000000) != 0)
  {
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
  }

  siri::dialogengine::StringToLower();
  if ((v92 & 0x80000000) == 0)
  {
    if (v92 == 9)
    {
      v9 = v91;
      goto LABEL_12;
    }

LABEL_16:
    sub_10000143C(&v112, "dialogids");
    sub_100032C58(v108, &v112.__locale_, 1);
    if (SHIBYTE(v114) < 0)
    {
      operator delete(v112.__locale_);
    }

    v13 = sub_1000027F4(&std::cerr, "Please specify one of the following contents sub-commands: ", 59);
    sub_10000143C(&__p, ", ");
    siri::dialogengine::StringJoin();
    if (v114 >= 0)
    {
      locale = &v112;
    }

    else
    {
      locale = v112.__locale_;
    }

    if (v114 >= 0)
    {
      v15 = HIBYTE(v114);
    }

    else
    {
      v15 = v113;
    }

    v16 = sub_1000027F4(v13, locale, v15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v100, &std::ctype<char>::id);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v100);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v114) < 0)
    {
      operator delete(v112.__locale_);
    }

    if (SHIBYTE(v106) < 0)
    {
      operator delete(__p);
    }

    sub_10000623C(v108, v108[1].__locale_);
    goto LABEL_29;
  }

  if (v91[1] != 9)
  {
    goto LABEL_16;
  }

  v9 = v91[0];
LABEL_12:
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = v10 == 0x6469676F6C616964 && v11 == 115;
  if (!v12)
  {
    goto LABEL_16;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) >= 3 && !sub_100039B20())
  {
    sub_10000143C(&v112, "--templateDir");
    siri::dialogengine::GetOption();
    siri::dialogengine::ExpandPath();
    if (SHIBYTE(v109) < 0)
    {
      operator delete(v108[0].__locale_);
    }

    if (SHIBYTE(v114) < 0)
    {
      operator delete(v112.__locale_);
    }

    sub_10000143C(v108, "--catId");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v109) < 0)
    {
      operator delete(v108[0].__locale_);
    }

    sub_10000143C(v108, "--locale");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v109) < 0)
    {
      operator delete(v108[0].__locale_);
    }

    sub_10000143C(v108, "--json");
    v18 = siri::dialogengine::OptionExists();
    if (SHIBYTE(v109) < 0)
    {
      operator delete(v108[0].__locale_);
    }

    v19 = v102;
    if ((v102 & 0x80u) != 0)
    {
      v19 = v101;
    }

    if (v19)
    {
      v20 = v99;
      if ((v99 & 0x80u) != 0)
      {
        v20 = v98;
      }

      if (v20)
      {
        v94[0] = 0;
        v94[1] = 0;
        v93 = v94;
        v21 = v96;
        if ((v96 & 0x80u) != 0)
        {
          v21 = v95[1];
        }

        if (v21)
        {
          v108[1].__locale_ = 0;
          v109 = 0;
          v108[0].__locale_ = &v108[1];
          if (!sub_100031DD4())
          {
            sub_10000623C(v108, v108[1].__locale_);
LABEL_170:
            sub_100022170(&v93, v94[0]);
            v4 = 1;
            goto LABEL_171;
          }

          v112.__locale_ = v95;
          v22 = (sub_1000325A0(&v93, v95) + 56);
          if (v22 != v108)
          {
            sub_100032738(v22, v108[0].__locale_, &v108[1].__locale_);
          }

          sub_10000623C(v108, v108[1].__locale_);
        }

        else
        {
          siri::dialogengine::CatIdToPath();
          siri::dialogengine::JoinPath();
          if (SHIBYTE(v114) < 0)
          {
            operator delete(v112.__locale_);
          }

          if (siri::dialogengine::DirExists())
          {
            siri::dialogengine::GetCatLocales();
            v28 = v112.__locale_;
            v29 = v113;
            if (v112.__locale_ == v113)
            {
              v46 = sub_1000027F4(&std::cerr, "Cannot find any locale files in CAT directory: ", 47);
              if (SHIBYTE(v109) >= 0)
              {
                v47 = v108;
              }

              else
              {
                v47 = v108[0].__locale_;
              }

              if (SHIBYTE(v109) >= 0)
              {
                v48 = HIBYTE(v109);
              }

              else
              {
                v48 = v108[1].__locale_;
              }

              v49 = sub_1000027F4(v46, v47, v48);
              std::ios_base::getloc((v49 + *(*v49 - 24)));
              v50 = std::locale::use_facet(&__p, &std::ctype<char>::id);
              (v50->__vftable[2].~facet_0)(v50, 10);
              std::locale::~locale(&__p);
              std::ostream::put();
              std::ostream::flush();
              v30 = 0;
            }

            else
            {
              v30 = 1;
              do
              {
                v105 = 0;
                v106 = 0;
                __p = &v105;
                if (sub_100031DD4())
                {
                  v107 = v28;
                  v31 = (sub_1000325A0(&v93, v28) + 56);
                  if (v31 != &__p)
                  {
                    sub_100032738(v31, __p, &v105);
                  }
                }

                else
                {
                  v30 = 0;
                }

                sub_10000623C(&__p, v105);
                v28 += 3;
              }

              while (v28 != v29);
            }

            __p = &v112;
            sub_100002260(&__p);
          }

          else
          {
            v32 = sub_1000027F4(&std::cerr, "CAT ID [", 8);
            if ((v99 & 0x80u) == 0)
            {
              v33 = &v97;
            }

            else
            {
              v33 = v97;
            }

            if ((v99 & 0x80u) == 0)
            {
              v34 = v99;
            }

            else
            {
              v34 = v98;
            }

            v35 = sub_1000027F4(v32, v33, v34);
            v36 = sub_1000027F4(v35, "] does not exist under template dir [", 37);
            if ((v102 & 0x80u) == 0)
            {
              v37 = &v100;
            }

            else
            {
              v37 = v100.__locale_;
            }

            if ((v102 & 0x80u) == 0)
            {
              v38 = v102;
            }

            else
            {
              v38 = v101;
            }

            v39 = sub_1000027F4(v36, v37, v38);
            v40 = sub_1000027F4(v39, "] (", 3);
            if (SHIBYTE(v109) >= 0)
            {
              v41 = v108;
            }

            else
            {
              v41 = v108[0].__locale_;
            }

            if (SHIBYTE(v109) >= 0)
            {
              v42 = HIBYTE(v109);
            }

            else
            {
              v42 = v108[1].__locale_;
            }

            v43 = sub_1000027F4(v40, v41, v42);
            v44 = sub_1000027F4(v43, ")", 1);
            std::ios_base::getloc((v44 + *(*v44 - 24)));
            v45 = std::locale::use_facet(&v112, &std::ctype<char>::id);
            (v45->__vftable[2].~facet_0)(v45, 10);
            std::locale::~locale(&v112);
            std::ostream::put();
            std::ostream::flush();
            v30 = 0;
          }

          if (SHIBYTE(v109) < 0)
          {
            operator delete(v108[0].__locale_);
          }

          if ((v30 & 1) == 0)
          {
            goto LABEL_170;
          }
        }

        if (v18)
        {
          v113 = 0;
          v114 = 0;
          v112.__locale_ = &v113;
          v51 = v93;
          if (v93 != v94)
          {
            do
            {
              __p = 0;
              v105 = 0;
              v106 = 0;
              v52 = v51[7];
              if (v52 != v51 + 8)
              {
                do
                {
                  siri::dialogengine::CreateJSONStringVal();
                  v53 = v105;
                  if (v105 >= v106)
                  {
                    v54 = __p;
                    v55 = v105 - __p;
                    v56 = (v105 - __p) >> 4;
                    v57 = v56 + 1;
                    if ((v56 + 1) >> 60)
                    {
                      sub_1000020B0();
                    }

                    v58 = v106 - __p;
                    if ((v106 - __p) >> 3 > v57)
                    {
                      v57 = v58 >> 3;
                    }

                    if (v58 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v59 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v59 = v57;
                    }

                    p_p = &__p;
                    if (v59)
                    {
                      sub_100029F6C(&__p, v59);
                    }

                    *(16 * v56) = v103;
                    v103 = 0uLL;
                    memcpy(0, v54, v55);
                    v60 = __p;
                    v61 = v106;
                    __p = 0;
                    v105 = (16 * v56 + 16);
                    v106 = 0;
                    v109 = v60;
                    v110 = v61;
                    v108[0].__locale_ = v60;
                    v108[1].__locale_ = v60;
                    sub_100032A88(&v108[0].__locale_);
                    v105 = (16 * v56 + 16);
                    if (*(&v103 + 1))
                    {
                      sub_100005EB4(*(&v103 + 1));
                    }
                  }

                  else
                  {
                    *v105 = v103;
                    v105 = v53 + 16;
                  }

                  v62 = v52[1];
                  if (v62)
                  {
                    do
                    {
                      v63 = v62;
                      v62 = *v62;
                    }

                    while (v62);
                  }

                  else
                  {
                    do
                    {
                      v63 = v52[2];
                      v12 = *v63 == v52;
                      v52 = v63;
                    }

                    while (!v12);
                  }

                  v52 = v63;
                }

                while (v63 != v51 + 8);
              }

              siri::dialogengine::CreateJSONArrayVal();
              v107 = v51 + 4;
              v64 = sub_100032B10(&v112, v51 + 4);
              v65 = *&v108[0].__locale_;
              v108[0].__locale_ = 0;
              v108[1].__locale_ = 0;
              v66 = *(v64 + 64);
              *(v64 + 56) = v65;
              if (v66)
              {
                sub_100005EB4(v66);
                if (v108[1].__locale_)
                {
                  sub_100005EB4(v108[1].__locale_);
                }
              }

              v108[0].__locale_ = &__p;
              sub_100007C5C(v108);
              v67 = v51[1];
              if (v67)
              {
                do
                {
                  v68 = v67;
                  v67 = *v67;
                }

                while (v67);
              }

              else
              {
                do
                {
                  v68 = v51[2];
                  v12 = *v68 == v51;
                  v51 = v68;
                }

                while (!v12);
              }

              v51 = v68;
            }

            while (v68 != v94);
          }

          siri::dialogengine::ConstructJSONString();
          if (SHIBYTE(v109) >= 0)
          {
            v69 = v108;
          }

          else
          {
            v69 = v108[0].__locale_;
          }

          if (SHIBYTE(v109) >= 0)
          {
            v70 = HIBYTE(v109);
          }

          else
          {
            v70 = v108[1].__locale_;
          }

          v71 = sub_1000027F4(&std::cout, v69, v70);
          std::ios_base::getloc((v71 + *(*v71 - 24)));
          v72 = std::locale::use_facet(&__p, &std::ctype<char>::id);
          (v72->__vftable[2].~facet_0)(v72, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
          if (SHIBYTE(v109) < 0)
          {
            operator delete(v108[0].__locale_);
          }

          sub_100005E58(&v112, v113);
        }

        else
        {
          v73 = v93;
          if (v93 != v94)
          {
            do
            {
              v74 = *(v73 + 55);
              if (v74 >= 0)
              {
                v75 = (v73 + 4);
              }

              else
              {
                v75 = v73[4];
              }

              if (v74 >= 0)
              {
                v76 = *(v73 + 55);
              }

              else
              {
                v76 = v73[5];
              }

              v77 = sub_1000027F4(&std::cout, v75, v76);
              v78 = sub_1000027F4(v77, ":", 1);
              std::ios_base::getloc((v78 + *(*v78 - 24)));
              v79 = std::locale::use_facet(v108, &std::ctype<char>::id);
              (v79->__vftable[2].~facet_0)(v79, 10);
              std::locale::~locale(v108);
              std::ostream::put();
              std::ostream::flush();
              v80 = v73[7];
              if (v80 != v73 + 8)
              {
                do
                {
                  v81 = sub_1000027F4(&std::cout, "    ", 4);
                  v82 = *(v80 + 55);
                  if (v82 >= 0)
                  {
                    v83 = (v80 + 4);
                  }

                  else
                  {
                    v83 = v80[4];
                  }

                  if (v82 >= 0)
                  {
                    v84 = *(v80 + 55);
                  }

                  else
                  {
                    v84 = v80[5];
                  }

                  v85 = sub_1000027F4(v81, v83, v84);
                  std::ios_base::getloc((v85 + *(*v85 - 24)));
                  v86 = std::locale::use_facet(v108, &std::ctype<char>::id);
                  (v86->__vftable[2].~facet_0)(v86, 10);
                  std::locale::~locale(v108);
                  std::ostream::put();
                  std::ostream::flush();
                  v87 = v80[1];
                  if (v87)
                  {
                    do
                    {
                      v88 = v87;
                      v87 = *v87;
                    }

                    while (v87);
                  }

                  else
                  {
                    do
                    {
                      v88 = v80[2];
                      v12 = *v88 == v80;
                      v80 = v88;
                    }

                    while (!v12);
                  }

                  v80 = v88;
                }

                while (v88 != v73 + 8);
              }

              v89 = v73[1];
              if (v89)
              {
                do
                {
                  v90 = v89;
                  v89 = *v89;
                }

                while (v89);
              }

              else
              {
                do
                {
                  v90 = v73[2];
                  v12 = *v90 == v73;
                  v73 = v90;
                }

                while (!v12);
              }

              v73 = v90;
            }

            while (v90 != v94);
          }
        }

        goto LABEL_170;
      }
    }

    else
    {
      v23 = sub_1000027F4(&std::cerr, "Error: The option --templateDir is required", 45);
      std::ios_base::getloc((v23 + *(*v23 - 24)));
      v24 = std::locale::use_facet(v108, &std::ctype<char>::id);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(v108);
      std::ostream::put();
      std::ostream::flush();
      v25 = v99;
      if ((v99 & 0x80u) != 0)
      {
        v25 = v98;
      }

      if (v25)
      {
        goto LABEL_62;
      }
    }

    v26 = sub_1000027F4(&std::cerr, "Error: The option --catId is required", 39);
    std::ios_base::getloc((v26 + *(*v26 - 24)));
    v27 = std::locale::use_facet(v108, &std::ctype<char>::id);
    (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(v108);
    std::ostream::put();
    std::ostream::flush();
LABEL_62:
    v4 = 0;
LABEL_171:
    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    if (v99 < 0)
    {
      operator delete(v97);
    }

    if (v102 < 0)
    {
      operator delete(v100.__locale_);
    }

    goto LABEL_30;
  }

  sub_100039B10(a2);
LABEL_29:
  v4 = 0;
LABEL_30:
  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  return v4;
}

void sub_100031B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, std::locale a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, std::locale a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  std::locale::~locale(&a40);
  a37 = v45 - 120;
  sub_100002260(&a37);
  if (*(v45 - 137) < 0)
  {
    operator delete(*(v45 - 160));
  }

  sub_100022170(&a16, a17);
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
    operator delete(a31.__locale_);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100031DD4()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = v2;
  v4 = (v0 + 8);
  sub_10000623C(v0, *(v0 + 8));
  *v1 = v4;
  *(v1 + 16) = 0;
  *v4 = 0;
  siri::dialogengine::GetTemplateDirs();
  siri::dialogengine::FindParamsFile();
  if (*(v3 + 23) < 0)
  {
    sub_100001C60(__p, *v3, *(v3 + 8));
  }

  else
  {
    *__p = *v3;
    v32 = *(v3 + 16);
  }

  v21.__locale_ = 0;
  v22 = 0;
  v23 = 0;
  sub_10000954C(&v21, __p, v33, 1uLL);
  siri::dialogengine::FindLocaleFile();
  v18 = &v21;
  sub_100002260(&v18);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v5 = v25;
  }

  if (v5)
  {
    siri::dialogengine::Context::Context(&v21);
    siri::dialogengine::RequestInfo::RequestInfo(__p);
    siri::dialogengine::RequestInfo::SetTemplateDirs();
    siri::dialogengine::RequestInfo::SetParamsPath();
    siri::dialogengine::RequestInfo::SetLocalePath();
    LODWORD(v18) = 0;
    siri::dialogengine::RequestInfo::SetRequestType();
    siri::dialogengine::Context::SetRequestInfo();
    sub_10002A140(__p);
    v6 = siri::dialogengine::Context::Load(&v21);
    if (v6)
    {
      siri::dialogengine::Context::GetFile(&v18, &v21);
      __p[0] = off_100075170;
      __p[1] = v18;
      v33[1] = 0;
      v33[0] = 0;
      v32 = v33;
      (*(*v18 + 32))(v18, __p);
      if (&v32 != v1)
      {
        sub_100032738(v1, v32, v33);
      }

      __p[0] = off_100075170;
      sub_10000623C(&v32, v33[0]);
      if (v19)
      {
        sub_100005EB4(v19);
      }
    }

    else
    {
      v12 = sub_1000027F4(&std::cerr, "Failed to load CAT locale file: ", 32);
      siri::dialogengine::Context::GetRequestInfo(__p, &v21);
      siri::dialogengine::RequestInfo::GetLocalePath(&v18, __p);
      if ((v20 & 0x80u) == 0)
      {
        v13 = &v18;
      }

      else
      {
        v13 = v18;
      }

      if ((v20 & 0x80u) == 0)
      {
        v14 = v20;
      }

      else
      {
        v14 = v19;
      }

      v15 = sub_1000027F4(v12, v13, v14);
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v16 = std::locale::use_facet(&v30, &std::ctype<char>::id);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v30);
      std::ostream::put();
      std::ostream::flush();
      if (v20 < 0)
      {
        operator delete(v18);
      }

      sub_10002A140(__p);
    }

    siri::dialogengine::Context::~Context(&v21);
  }

  else
  {
    v7 = sub_1000027F4(&std::cerr, "Cannot find CAT locale file: ", 29);
    if ((v26 & 0x80u) == 0)
    {
      v8 = &v24;
    }

    else
    {
      v8 = v24;
    }

    if ((v26 & 0x80u) == 0)
    {
      v9 = v26;
    }

    else
    {
      v9 = v25;
    }

    v10 = sub_1000027F4(v7, v8, v9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    v6 = 0;
  }

  if (v26 < 0)
  {
    operator delete(v24);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  v21.__locale_ = &v29;
  sub_10000C88C(&v21);
  return v6;
}

void sub_10003222C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002A140(&STACK[0xE70]);
  siri::dialogengine::Context::~Context(va);
  if (SLOBYTE(STACK[0xE37]) < 0)
  {
    operator delete(STACK[0xE20]);
  }

  if (SLOBYTE(STACK[0xE4F]) < 0)
  {
    operator delete(STACK[0xE38]);
  }

  STACK[0xE70] = &STACK[0xE50];
  sub_10000C88C(&STACK[0xE70]);
  _Unwind_Resume(a1);
}

uint64_t sub_10003233C(uint64_t a1)
{
  *a1 = off_100075170;
  sub_10000623C(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_100032388(uint64_t a1)
{
  *a1 = off_100075170;
  sub_10000623C(a1 + 16, *(a1 + 24));

  operator delete();
}

void sub_1000323F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  siri::dialogengine::File::GetOrCreateId();
  sub_100032470(a1 + 16, &__p);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100032450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100032470(uint64_t a1, const void **a2)
{
  result = *sub_1000229D8(a1, &v3, a2);
  if (!result)
  {
    sub_1000324F0();
  }

  return result;
}

void sub_100032584(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000061D8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1000325A0(uint64_t a1, const void **a2)
{
  v2 = *sub_1000229D8(a1, &v4, a2);
  if (!v2)
  {
    sub_100032648();
  }

  return v2;
}

uint64_t sub_1000326EC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000221CC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_100032738(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100032984(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = sub_1000328BC(v5, &v16, v15 + 4);
          sub_100005A54(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_100032984(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_1000329D8(&v13);
  }

  if (a2 != a3)
  {
    sub_100032A30();
  }

  return result;
}

void *sub_1000328BC(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v11 = v4[4];
        v9 = v4 + 4;
        v10 = v11;
        v12 = *(v9 + 23);
        v13 = v12 >= 0 ? *(v9 + 23) : v9[1];
        v14 = v12 >= 0 ? v9 : v10;
        v15 = (v13 >= v7 ? v7 : v13);
        v16 = memcmp(v8, v14, v15);
        v17 = v7 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_25;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_25:
  *a2 = v5;
  return result;
}

void *sub_100032984(uint64_t a1)
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

uint64_t sub_1000329D8(uint64_t a1)
{
  sub_10000623C(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10000623C(*a1, v2);
  }

  return a1;
}

void **sub_100032A88(void **a1)
{
  sub_100032ABC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100032ABC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_100005EB4(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t sub_100032B10(uint64_t a1, const void **a2)
{
  v2 = *sub_100005AF8(a1, &v4, a2);
  if (!v2)
  {
    sub_100032BB8();
  }

  return v2;
}

void *sub_100032C58(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_1000060A4(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100032CE0(uint64_t *a1)
{
  sub_10000143C(__p, "./pause.txt");
  siri::dialogengine::ExpandPath();
  if ((v37[0] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  while (siri::dialogengine::PathExists())
  {
    sub_1000027F4(&std::cout, "Pause for ", 10);
    v2 = std::ostream::operator<<();
    v3 = sub_1000027F4(v2, " seconds while the file [", 25);
    if ((v40 & 0x80u) == 0)
    {
      locale = &v38;
    }

    else
    {
      locale = v38.__locale_;
    }

    if ((v40 & 0x80u) == 0)
    {
      v5 = v40;
    }

    else
    {
      v5 = v39;
    }

    v6 = sub_1000027F4(v3, locale, v5);
    v7 = sub_1000027F4(v6, "] exists", 8);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(__p, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    __p[0] = 5000000000;
    std::this_thread::sleep_for (__p);
  }

  if (v40 < 0)
  {
    operator delete(v38.__locale_);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 2)
  {
    return 0;
  }

  sub_100039ABC(__p, a1, nullsub_2);
  v10 = *a1;
  if ((*(*a1 + 47) & 0x8000000000000000) != 0)
  {
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
  }

  siri::dialogengine::StringToLower();
  sub_10000143C(&v38, "contents");
  v41 = sub_100030D9C;
  sub_10000143C(v42, "diff");
  v43 = sub_1000096AC;
  sub_10000143C(v44, "exclude");
  v45 = sub_10003A5AC;
  sub_10000143C(v46, "execute");
  v47 = sub_100011EEC;
  sub_10000143C(v48, "expand");
  v49 = sub_100002B84;
  sub_10000143C(v50, "metadata");
  v51 = sub_10003E2DC;
  sub_10000143C(v52, "params");
  v53 = sub_10000AAD0;
  sub_10000143C(v54, "pattern");
  v55 = sub_100016CB0;
  sub_10000143C(v56, "test");
  v57 = sub_10002EB8C;
  sub_10000143C(v58, "tobinary");
  v59 = sub_10002C608;
  sub_10000143C(v60, "tobinarypatternschema");
  v61 = sub_10002C608;
  sub_10000143C(v62, "tobinaryschema");
  v63 = sub_10002C608;
  sub_10000143C(v64, "toxml");
  v65 = sub_10002C608;
  sub_10000143C(v66, "toyamlpatternschema");
  v67 = sub_10002C608;
  sub_10000143C(v68, "toyamlschema");
  v69 = sub_10002C608;
  sub_10000143C(v70, "upgrade");
  v71 = sub_100048850;
  sub_10000143C(v72, "validate");
  v73 = sub_100045EB4;
  sub_10000143C(v74, "metrics");
  v75 = sub_100033E34;
  sub_10000143C(v76, "assetdelivery");
  v77 = sub_100049530;
  sub_10000143C(v78, "manifest");
  v79 = sub_100039E00;
  sub_10000143C(v80, "morphun");
  v81 = sub_10002F944;
  sub_100033684(&v32, &v38.__locale_, 21);
  v13 = 84;
  do
  {
    if (v37[v13 * 8] < 0)
    {
      operator delete(__p[v13]);
    }

    v13 -= 4;
  }

  while (v13 * 8);
  v14 = sub_10000A9C0(&v32, &v34);
  if (&v33 != v14)
  {
    v9 = (*(v14 + 56))(a1, __p);
    goto LABEL_23;
  }

  sub_10000143C(&v38, "--version");
  v16 = siri::dialogengine::OptionExists();
  v17 = v16;
  if (v40 < 0)
  {
    operator delete(v38.__locale_);
    if (v17)
    {
      goto LABEL_27;
    }
  }

  else if (v16)
  {
LABEL_27:
    v18 = sub_1000027F4(&std::cout, "3505.10.1", 9);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_28;
  }

  sub_10000143C(&v38, "--minVersion");
  v21 = siri::dialogengine::OptionExists();
  v22 = v21;
  if (v40 < 0)
  {
    operator delete(v38.__locale_);
    if (v22)
    {
      goto LABEL_32;
    }

LABEL_46:
    v9 = 0;
LABEL_47:
    v20 = "false";
    goto LABEL_48;
  }

  if (!v21)
  {
    goto LABEL_46;
  }

LABEL_32:
  sub_10000143C(&v30, "--minVersion");
  siri::dialogengine::GetOption();
  sub_10000143C(&v28, "3505.10.1");
  v9 = siri::dialogengine::VersionLessThanOrEqual();
  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v40 < 0)
  {
    operator delete(v38.__locale_);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v9)
  {
    v23 = "Minimum version met";
  }

  else
  {
    v23 = "Minimum version not met";
  }

  if (v9)
  {
    v24 = 19;
  }

  else
  {
    v24 = 23;
  }

  v25 = sub_1000027F4(&std::cout, v23, v24);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v38, &std::ctype<char>::id);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
LABEL_23:
  if (!v9)
  {
    goto LABEL_47;
  }

LABEL_28:
  v20 = "true";
  v9 = 1;
LABEL_48:
  siri::dialogengine::Log::Debug("CatUtilMain() exiting with result: %s", v15, v20);
  sub_10000623C(&v32, v33);
  if (v35 < 0)
  {
    operator delete(v34);
  }

  v38.__locale_ = __p;
  sub_100002260(&v38);
  return v9;
}

void sub_100033518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, char *a24, uint64_t a25, std::locale *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::locale a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, std::locale a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39.__locale_);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_10000623C(&a23, a24);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  a26 = &a32;
  sub_100002260(&a26);
  _Unwind_Resume(a1);
}

void *sub_100033684(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_100033704(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100033704(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_100005838(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100033788();
  }

  return result;
}

void sub_100033824(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000061D8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100033840()
{
  sub_10000143C(__p, "catId");
  sub_10000143C(v4, "locale");
  sub_10000143C(v5, "xml lines");
  sub_10000143C(v6, "dialogs");
  sub_10000143C(v7, "texts");
  sub_10000143C(v8, "phrases");
  sub_10000143C(v9, "conditions");
  sub_10000143C(v10, "parameters");
  sub_10000143C(v11, "semantic concepts");
  sub_10000143C(v12, "expansion lines");
  sub_10000143C(v13, "expansion time (seconds)");
  sub_10000143C(v14, "file path");
  sub_10000143C(v15, "dialog IDs");
  sub_10000143C(v16, "dialogs with print != speak");
  sub_10000143C(v17, "texts with print != speak");
  memset(v1, 0, sizeof(v1));
  sub_10000954C(v1, __p, &v18, 0xFuLL);
  v0 = 45;
  do
  {
    if (SHIBYTE(__p[v0 - 1]) < 0)
    {
      operator delete(v1[v0]);
    }

    v0 -= 3;
  }

  while (v0 * 8);
  sub_10000143C(__p, ", ");
  siri::dialogengine::StringJoin();
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v1;
  sub_100002260(__p);
}

void sub_100033A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __p = &a10;
  sub_100002260(&__p);
  _Unwind_Resume(a1);
}

void sub_100033AFC(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    sub_100001C60(__dst, *a1, *(a1 + 8));
  }

  else
  {
    *__dst = *a1;
    v7 = *(a1 + 16);
  }

  if (*(a1 + 47) < 0)
  {
    sub_100001C60(&v8, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 40);
  }

  std::to_string(&v10, *(a1 + 72));
  std::to_string(&v11, *(a1 + 80));
  std::to_string(&v12, *(a1 + 88));
  std::to_string(&v13, *(a1 + 96));
  std::to_string(&v14, *(a1 + 104));
  std::to_string(&v15, *(a1 + 112));
  std::to_string(&v16, *(a1 + 128));
  std::to_string(&v17, *(a1 + 136));
  std::to_string(&v18, *(a1 + 144));
  if (*(a1 + 71) < 0)
  {
    sub_100001C60(&v19, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v19 = *(a1 + 48);
    v20 = *(a1 + 64);
  }

  sub_10000143C(&__p, "; ");
  siri::dialogengine::StringJoin();
  std::to_string(&v21, *(a1 + 176));
  std::to_string(&v22, *(a1 + 184));
  memset(v5, 0, sizeof(v5));
  sub_10000954C(v5, __dst, &v23, 0xFuLL);
  v2 = 45;
  do
  {
    if (SHIBYTE(__dst[v2 - 1]) < 0)
    {
      operator delete(v5[v2]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  sub_10000143C(__dst, ", ");
  siri::dialogengine::StringJoin();
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst[0]);
  }

  __dst[0] = v5;
  sub_100002260(__dst);
}

void sub_100033D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_100002260(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_100033E34(void *a1, uint64_t a2)
{
  siri::dialogengine::ElapsedTimer::ElapsedTimer(v122);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    sub_10000143C(&__dst, "\n  <EXECUTABLE> <COMMAND> --templateDir <dir> [--catId <id>] [--locale <locale>] [--dialogIDsOnly]\n\n      If --templateDir and --catId are specified, then report metrics for the specified CAT file.\n      If --locale is also specified then report metrics for only that locale, otherwise report for all locales.\n\n      If --templateDir is specified and --catId is not, then find and report metrics for all CAT files\n      under the directory and any template directories nested within it.  If --locale is specified, then\n      only generate metrics for that locale of each CAT file, otherwise report metrics for all locales for\n      all CAT files.\n\n      If the --dialogIDsOnly option is present, this will produce a JSON that contains only the dialog IDs\n      present in each CAT file for the purpose of comparison and identification of mismatches.\n\n");
    sub_10000143C(&v133, "metrics");
    sub_100039BEC();
    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  sub_10000143C(&v133, "--templateDir");
  siri::dialogengine::GetOption();
  siri::dialogengine::ExpandPath();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (siri::dialogengine::DirExists())
    {
      sub_10000143C(&__dst, "--catId");
      siri::dialogengine::GetOption();
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      sub_10000143C(&__dst, "--locale");
      siri::dialogengine::GetOption();
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      sub_10000143C(&__dst, "--dialogIDsOnly");
      v7 = siri::dialogengine::OptionExists();
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      memset(&v115, 0, sizeof(v115));
      v8 = v120;
      if ((v120 & 0x80u) != 0)
      {
        v8 = v119;
      }

      if (v8)
      {
        sub_100035230(v116, &__dst);
        sub_1000375B4(&v115);
        v115 = __dst;
        memset(&__dst, 0, sizeof(__dst));
        v133.__r_.__value_.__r.__words[0] = &__dst;
        sub_10003750C(&v133);
        if (v7)
        {
LABEL_27:
          *&v133.__r_.__value_.__r.__words[1] = 0uLL;
          v133.__r_.__value_.__r.__words[0] = &v133.__r_.__value_.__l.__size_;
          *&v132.__r_.__value_.__r.__words[1] = 0uLL;
          v132.__r_.__value_.__r.__words[0] = &v132.__r_.__value_.__l.__size_;
          v97 = v115.__r_.__value_.__l.__size_;
          for (i = v115.__r_.__value_.__r.__words[0]; i != v97; i += 192)
          {
            memset(&v131, 0, sizeof(v131));
            v10 = *(i + 152);
            if (v10 != (i + 160))
            {
              do
              {
                siri::dialogengine::CreateJSONStringVal();
                v11 = v131.__r_.__value_.__l.__size_;
                if (v131.__r_.__value_.__l.__size_ >= v131.__r_.__value_.__r.__words[2])
                {
                  v12 = v131.__r_.__value_.__r.__words[0];
                  v13 = v131.__r_.__value_.__l.__size_ - v131.__r_.__value_.__r.__words[0];
                  v14 = (v131.__r_.__value_.__l.__size_ - v131.__r_.__value_.__r.__words[0]) >> 4;
                  v15 = v14 + 1;
                  if ((v14 + 1) >> 60)
                  {
                    sub_1000020B0();
                  }

                  v16 = v131.__r_.__value_.__r.__words[2] - v131.__r_.__value_.__r.__words[0];
                  if ((v131.__r_.__value_.__r.__words[2] - v131.__r_.__value_.__r.__words[0]) >> 3 > v15)
                  {
                    v15 = v16 >> 3;
                  }

                  if (v16 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v17 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v17 = v15;
                  }

                  v137 = &v131;
                  if (v17)
                  {
                    sub_100029F6C(&v131, v17);
                  }

                  *(16 * v14) = *&v130.__r_.__value_.__l.__data_;
                  *&v130.__r_.__value_.__l.__data_ = 0uLL;
                  memcpy(0, v12, v13);
                  v18 = v131.__r_.__value_.__r.__words[0];
                  v19 = v131.__r_.__value_.__r.__words[2];
                  v131.__r_.__value_.__r.__words[0] = 0;
                  *&v131.__r_.__value_.__r.__words[1] = (16 * v14 + 16);
                  __dst.__r_.__value_.__r.__words[2] = v18;
                  v136 = v19;
                  __dst.__r_.__value_.__r.__words[0] = v18;
                  __dst.__r_.__value_.__l.__size_ = v18;
                  sub_100032A88(&__dst.__r_.__value_.__l.__data_);
                  v131.__r_.__value_.__l.__size_ = 16 * v14 + 16;
                  if (v130.__r_.__value_.__l.__size_)
                  {
                    sub_100005EB4(v130.__r_.__value_.__l.__size_);
                  }
                }

                else
                {
                  *v131.__r_.__value_.__l.__size_ = *&v130.__r_.__value_.__l.__data_;
                  v131.__r_.__value_.__l.__size_ = v11 + 16;
                }

                v20 = v10[1];
                if (v20)
                {
                  do
                  {
                    v21 = v20;
                    v20 = *v20;
                  }

                  while (v20);
                }

                else
                {
                  do
                  {
                    v21 = v10[2];
                    v22 = *v21 == v10;
                    v10 = v21;
                  }

                  while (!v22);
                }

                v10 = v21;
              }

              while (v21 != (i + 160));
            }

            siri::dialogengine::CreateJSONArrayVal();
            v129.__r_.__value_.__r.__words[0] = i + 24;
            v23 = sub_100032B10(&v132, (i + 24));
            v24 = *&__dst.__r_.__value_.__l.__data_;
            *&__dst.__r_.__value_.__l.__data_ = 0uLL;
            v25 = *(v23 + 64);
            *(v23 + 56) = v24;
            if (v25)
            {
              sub_100005EB4(v25);
              if (__dst.__r_.__value_.__l.__size_)
              {
                sub_100005EB4(__dst.__r_.__value_.__l.__size_);
              }
            }

            siri::dialogengine::CreateJSONObjectVal();
            v129.__r_.__value_.__r.__words[0] = i;
            v26 = sub_100032B10(&v133, i);
            v27 = *&__dst.__r_.__value_.__l.__data_;
            *&__dst.__r_.__value_.__l.__data_ = 0uLL;
            v28 = *(v26 + 64);
            *(v26 + 56) = v27;
            if (v28)
            {
              sub_100005EB4(v28);
              if (__dst.__r_.__value_.__l.__size_)
              {
                sub_100005EB4(__dst.__r_.__value_.__l.__size_);
              }
            }

            __dst.__r_.__value_.__r.__words[0] = &v131;
            sub_100007C5C(&__dst);
          }

          p_dst = &__dst;
          siri::dialogengine::ConstructJSONString();
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          v30 = strlen(p_dst);
          v31 = sub_1000027F4(&std::cout, p_dst, v30);
          std::ios_base::getloc((v31 + *(*v31 - 24)));
          v32 = std::locale::use_facet(&v131, &std::ctype<char>::id);
          (v32->__vftable[2].~facet_0)(v32, 10);
          std::locale::~locale(&v131);
          std::ostream::put();
          std::ostream::flush();
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_100005E58(&v132, v132.__r_.__value_.__l.__size_);
          sub_100005E58(&v133, v133.__r_.__value_.__l.__size_);
LABEL_211:
          __dst.__r_.__value_.__r.__words[0] = &v115;
          sub_10003750C(&__dst);
          if (v117 < 0)
          {
            operator delete(v116[0]);
          }

          if (v120 < 0)
          {
            operator delete(v118);
          }

          v4 = 1;
          goto LABEL_216;
        }

LABEL_178:
        if (v115.__r_.__value_.__r.__words[0] != v115.__r_.__value_.__l.__size_)
        {
          sub_100033840();
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v80 = &__dst;
          }

          else
          {
            v80 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v81 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v81 = __dst.__r_.__value_.__l.__size_;
          }

          v82 = sub_1000027F4(&std::cout, v80, v81);
          std::ios_base::getloc((v82 + *(*v82 - 24)));
          v83 = std::locale::use_facet(&v133, &std::ctype<char>::id);
          (v83->__vftable[2].~facet_0)(v83, 10);
          std::locale::~locale(&v133);
          std::ostream::put();
          std::ostream::flush();
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v85 = v115.__r_.__value_.__l.__size_;
          for (j = v115.__r_.__value_.__r.__words[0]; j != v85; j += 192)
          {
            sub_100033AFC(j);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v86 = &__dst;
            }

            else
            {
              v86 = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v87 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v87 = __dst.__r_.__value_.__l.__size_;
            }

            v88 = sub_1000027F4(&std::cout, v86, v87);
            std::ios_base::getloc((v88 + *(*v88 - 24)));
            v89 = std::locale::use_facet(&v133, &std::ctype<char>::id);
            (v89->__vftable[2].~facet_0)(v89, 10);
            std::locale::~locale(&v133);
            std::ostream::put();
            std::ostream::flush();
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }
        }

        sub_10000143C(&v133, "catutil metrics took ");
        siri::dialogengine::ElapsedTimer::GetSecs(v122);
        std::to_string(&v132, v90);
        if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v91 = &v132;
        }

        else
        {
          v91 = v132.__r_.__value_.__r.__words[0];
        }

        if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v92 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v92 = v132.__r_.__value_.__l.__size_;
        }

        v93 = std::string::append(&v133, v91, v92);
        v94 = *&v93->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v94;
        v93->__r_.__value_.__l.__size_ = 0;
        v93->__r_.__value_.__r.__words[2] = 0;
        v93->__r_.__value_.__r.__words[0] = 0;
        v95 = std::string::append(&__dst, " seconds");
        v96 = *&v95->__r_.__value_.__l.__data_;
        v100 = v95->__r_.__value_.__r.__words[2];
        *v99 = v96;
        v95->__r_.__value_.__l.__size_ = 0;
        v95->__r_.__value_.__r.__words[2] = 0;
        v95->__r_.__value_.__r.__words[0] = 0;
        sub_100035698(v99);
        if (SHIBYTE(v100) < 0)
        {
          operator delete(v99[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133.__r_.__value_.__l.__data_);
        }

        goto LABEL_211;
      }

      sub_10000143C(&__dst, "dialog");
      siri::dialogengine::JoinPath();
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if ((siri::dialogengine::DirExists() & 1) == 0)
      {
        std::string::operator=(&v114, &__str);
      }

      siri::dialogengine::ListDirRecursively();
      v111[0] = 0;
      v111[1] = 0;
      v110 = v111;
      v38 = v112;
      v39 = v113;
      v40 = v111;
      if (v112 != v113)
      {
        while (1)
        {
          if (*(v38 + 23) < 0)
          {
            sub_100001C60(&__dst, *v38, *(v38 + 1));
          }

          else
          {
            v41 = *v38;
            __dst.__r_.__value_.__r.__words[2] = *(v38 + 2);
            *&__dst.__r_.__value_.__l.__data_ = v41;
          }

          siri::dialogengine::JoinPath();
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = v133;
          sub_10000143C(&v133, "Templates/dialog/");
          v42 = siri::dialogengine::StringContains();
          v43 = v42;
          if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v133.__r_.__value_.__l.__data_);
            if ((v43 & 1) == 0)
            {
              goto LABEL_87;
            }
          }

          else if ((v42 & 1) == 0)
          {
            goto LABEL_87;
          }

          sub_10000143C(&v133, "cat");
          HasExtension = siri::dialogengine::HasExtension();
          v45 = HasExtension;
          if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if ((HasExtension & 1) == 0)
            {
              goto LABEL_87;
            }

LABEL_86:
            sub_10000AA50(&v110, &__dst.__r_.__value_.__l.__data_);
            goto LABEL_87;
          }

          operator delete(v133.__r_.__value_.__l.__data_);
          if (v45)
          {
            goto LABEL_86;
          }

LABEL_87:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v38 = (v38 + 24);
          if (v38 == v39)
          {
            v40 = v110;
            break;
          }
        }
      }

      v98 = v7;
      sub_1000375F4(&v108, v40, v111);
      v46 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v109 - v108));
      if (v109 == v108)
      {
        v47 = 0;
      }

      else
      {
        v47 = v46;
      }

      sub_1000377EC(v108, v109, &__dst, v47, 1);
      if (v109 == v108)
      {
LABEL_175:
        __dst.__r_.__value_.__r.__words[0] = &v108;
        sub_100002260(&__dst);
        sub_10000623C(&v110, v111[0]);
        __dst.__r_.__value_.__r.__words[0] = &v112;
        sub_100002260(&__dst);
        if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v114.__r_.__value_.__l.__data_);
        }

        if (v98)
        {
          goto LABEL_27;
        }

        goto LABEL_178;
      }

      v48 = 0;
      v49 = 0xAAAAAAAAAAAAAAABLL * (v109 - v108);
      if (v49 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = 0xAAAAAAAAAAAAAAABLL * (v109 - v108);
      }

      v51 = 1;
      while (1)
      {
        v52 = &v108[v48];
        if (SHIBYTE(v108[v48 + 2]) < 0)
        {
          sub_100001C60(&v107, *v52, v52[1]);
        }

        else
        {
          v53 = *v52;
          v107.__r_.__value_.__r.__words[2] = v52[2];
          *&v107.__r_.__value_.__l.__data_ = v53;
        }

        sub_10000143C(&__dst, "Templates/dialog/");
        v54 = siri::dialogengine::StringRFind();
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        sub_10000143C(&__dst, "Templates");
        v55 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v55 = __dst.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v106, &v107, 0, v55 + v54, &v133);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        siri::dialogengine::CatPathToId();
        if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100001C60(&v103, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
        }

        else
        {
          v103 = v106;
        }

        if (SHIBYTE(v105) < 0)
        {
          sub_100001C60(__p, v104[0], v104[1]);
        }

        else
        {
          *__p = *v104;
          v102 = v105;
        }

        sub_10000143C(&v128, "Processing CAT file ");
        std::to_string(&v127, v51);
        if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v127;
        }

        else
        {
          v56 = v127.__r_.__value_.__r.__words[0];
        }

        if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v57 = v127.__r_.__value_.__l.__size_;
        }

        v58 = std::string::append(&v128, v56, v57);
        v59 = *&v58->__r_.__value_.__l.__data_;
        v129.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&v129.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        v60 = std::string::append(&v129, " of ");
        v61 = *&v60->__r_.__value_.__l.__data_;
        v130.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
        *&v130.__r_.__value_.__l.__data_ = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v126, v49);
        if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v126;
        }

        else
        {
          v62 = v126.__r_.__value_.__r.__words[0];
        }

        if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v126.__r_.__value_.__l.__size_;
        }

        v64 = std::string::append(&v130, v62, v63);
        v65 = *&v64->__r_.__value_.__l.__data_;
        v131.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
        *&v131.__r_.__value_.__l.__data_ = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        v66 = std::string::append(&v131, ":  ");
        v67 = *&v66->__r_.__value_.__l.__data_;
        v132.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
        *&v132.__r_.__value_.__l.__data_ = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = &v103;
        }

        else
        {
          v68 = v103.__r_.__value_.__r.__words[0];
        }

        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v69 = v103.__r_.__value_.__l.__size_;
        }

        v70 = std::string::append(&v132, v68, v69);
        v71 = *&v70->__r_.__value_.__l.__data_;
        v133.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
        *&v133.__r_.__value_.__l.__data_ = v71;
        v70->__r_.__value_.__l.__size_ = 0;
        v70->__r_.__value_.__r.__words[2] = 0;
        v70->__r_.__value_.__r.__words[0] = 0;
        v72 = std::string::append(&v133, "  ");
        v73 = *&v72->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        if (v102 >= 0)
        {
          v74 = __p;
        }

        else
        {
          v74 = __p[0];
        }

        if (v102 >= 0)
        {
          v75 = HIBYTE(v102);
        }

        else
        {
          v75 = __p[1];
        }

        v76 = std::string::append(&__dst, v74, v75);
        v78 = v76->__r_.__value_.__r.__words[0];
        v77 = v76->__r_.__value_.__l.__size_;
        v134[0] = v76->__r_.__value_.__r.__words[2];
        *(v134 + 3) = *(&v76->__r_.__value_.__r.__words[2] + 3);
        v79 = SHIBYTE(v76->__r_.__value_.__r.__words[2]);
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v126.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
          if ((v79 & 0x80000000) == 0)
          {
LABEL_156:
            v123[0] = v78;
            v123[1] = v77;
            *v124 = v134[0];
            *&v124[3] = *(v134 + 3);
            v125 = v79;
            goto LABEL_159;
          }
        }

        else if ((v79 & 0x80000000) == 0)
        {
          goto LABEL_156;
        }

        sub_100001C60(v123, v78, v77);
LABEL_159:
        sub_100035698(v123);
        if (v125 < 0)
        {
          operator delete(v123[0]);
          if (v79 < 0)
          {
LABEL_174:
            operator delete(v78);
          }
        }

        else if (v79 < 0)
        {
          goto LABEL_174;
        }

        if (SHIBYTE(v102) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }

        sub_100035230(v116, &__dst);
        sub_10003944C(&v115, v115.__r_.__value_.__l.__size_, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 6));
        v133.__r_.__value_.__r.__words[0] = &__dst;
        sub_10003750C(&v133);
        if (SHIBYTE(v105) < 0)
        {
          operator delete(v104[0]);
        }

        if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v106.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }

        ++v51;
        v48 += 3;
        if (!--v50)
        {
          goto LABEL_175;
        }
      }
    }

    v34 = sub_1000027F4(&std::cerr, "Template directory does not exist: ", 35);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = __str.__r_.__value_.__l.__size_;
    }

    v33 = sub_1000027F4(v34, p_str, v36);
  }

  else
  {
    v33 = sub_1000027F4(&std::cerr, "--templateDir argument required for catutil metrics", 51);
  }

  std::ios_base::getloc((v33 + *(*v33 - 24)));
  v37 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
  (v37->__vftable[2].~facet_0)(v37, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  v4 = 0;
LABEL_216:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_100034DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  a72 = &a45;
  sub_10003750C(&a72);
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  _Unwind_Resume(a1);
}

void sub_100035230(uint64_t a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (v3)
  {
    sub_100035770();
    locale = v30;
    if ((v30 & 0x80u) != 0)
    {
      locale = v29[1].__locale_;
    }

    if (locale)
    {
      v5 = v35;
      if ((v35 & 0x80u) != 0)
      {
        v5 = v34;
      }

      if (v5)
      {
        sub_100036998(a2, v29);
      }
    }

    sub_10000623C(&v36, v37);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (v30 < 0)
    {
      v6 = v29[0].__locale_;
LABEL_58:
      operator delete(v6);
    }
  }

  else
  {
    siri::dialogengine::CatIdToPath();
    siri::dialogengine::JoinPath();
    if (v30 < 0)
    {
      operator delete(v29[0].__locale_);
    }

    if (siri::dialogengine::DirExists())
    {
      siri::dialogengine::GetCatLocales();
      v7 = v24;
      v8 = v25;
      if (v24 == v25)
      {
        v17 = sub_1000027F4(&std::cerr, "Cannot find any locale files in CAT directory: ", 47);
        if ((v28 & 0x80u) == 0)
        {
          v18 = &v26;
        }

        else
        {
          v18 = v26;
        }

        if ((v28 & 0x80u) == 0)
        {
          v19 = v28;
        }

        else
        {
          v19 = v27;
        }

        v20 = sub_1000027F4(v17, v18, v19);
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v21 = std::locale::use_facet(v29, &std::ctype<char>::id);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(v29);
        std::ostream::put();
        std::ostream::flush();
      }

      else
      {
        do
        {
          if (*(v7 + 23) < 0)
          {
            sub_100001C60(v22, *v7, *(v7 + 1));
          }

          else
          {
            v9 = *v7;
            v23 = *(v7 + 2);
            *v22 = v9;
          }

          sub_100035770();
          v10 = v30;
          if ((v30 & 0x80u) != 0)
          {
            v10 = v29[1].__locale_;
          }

          if (v10)
          {
            v11 = v35;
            if ((v35 & 0x80u) != 0)
            {
              v11 = v34;
            }

            if (v11)
            {
              sub_100036998(a2, v29);
            }
          }

          sub_10000623C(&v36, v37);
          if (v35 < 0)
          {
            operator delete(__p);
          }

          if (v32 < 0)
          {
            operator delete(v31);
          }

          if (v30 < 0)
          {
            operator delete(v29[0].__locale_);
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(v22[0]);
          }

          v7 = (v7 + 24);
        }

        while (v7 != v8);
      }

      v29[0].__locale_ = &v24;
      sub_100002260(v29);
    }

    else
    {
      v12 = sub_1000027F4(&std::cerr, "CAT does not exist: ", 20);
      if ((v28 & 0x80u) == 0)
      {
        v13 = &v26;
      }

      else
      {
        v13 = v26;
      }

      if ((v28 & 0x80u) == 0)
      {
        v14 = v28;
      }

      else
      {
        v14 = v27;
      }

      v15 = sub_1000027F4(v12, v13, v14);
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v16 = std::locale::use_facet(v29, &std::ctype<char>::id);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(v29);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v28 < 0)
    {
      v6 = v26;
      goto LABEL_58;
    }
  }
}

void sub_1000355D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::locale a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::locale::~locale(&a25);
  a9 = &a16;
  sub_100002260(&a9);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10003750C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_100035698(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  v4 = sub_1000027F4(&std::cerr, v2, v3);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v7, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v7);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_100035770()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  *(v4 + 160) = 0;
  *(v4 + 152) = v4 + 160;
  v6 = (v4 + 152);
  *(v4 + 168) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 176) = 0;
  v7 = (v4 + 176);
  *(v4 + 184) = 0;
  siri::dialogengine::GetTemplateDirs();
  if (*(v3 + 23) >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = v3[1];
  }

  sub_1000094C0(&__p, v8 + 2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(v3 + 23) >= 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = *v3;
    }

    memmove(p_p, v10, v8);
  }

  strcpy(p_p + v8, " (");
  v11 = *(v1 + 23);
  if (v11 >= 0)
  {
    v12 = v1;
  }

  else
  {
    v12 = *v1;
  }

  if (v11 >= 0)
  {
    v13 = *(v1 + 23);
  }

  else
  {
    v13 = *(v1 + 8);
  }

  v14 = std::string::append(&__p, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v109, ")");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v116 = v16->__r_.__value_.__r.__words[2];
  *v115 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  siri::dialogengine::FindParamsFile();
  if (*(v1 + 23) < 0)
  {
    sub_100001C60(&__p, *v1, *(v1 + 8));
  }

  else
  {
    __p = *v1;
  }

  memset(&v109, 0, sizeof(v109));
  sub_10000954C(&v109, &__p, &v134, 1uLL);
  siri::dialogengine::FindLocaleFile();
  v85.__r_.__value_.__r.__words[0] = &v109;
  sub_100002260(&v85);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v112.__r_.__value_.__r.__words[2]);
  if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v112.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    siri::dialogengine::CatLocalePathToLocale();
    v19 = *(v1 + 23);
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v1 + 8);
    }

    if (v19 && (siri::dialogengine::StringsEqual() & 1) == 0)
    {
      v45 = sub_1000027F4(&std::cerr, "Skipping fallback locale ", 25);
      if ((v111 & 0x80u) == 0)
      {
        v46 = v110;
      }

      else
      {
        v46 = v110[0];
      }

      if ((v111 & 0x80u) == 0)
      {
        v47 = v111;
      }

      else
      {
        v47 = v110[1];
      }

      v48 = sub_1000027F4(v45, v46, v47);
      v49 = sub_1000027F4(v48, " found for requested locale ", 28);
      v50 = *(v1 + 23);
      if (v50 >= 0)
      {
        v51 = v1;
      }

      else
      {
        v51 = *v1;
      }

      if (v50 >= 0)
      {
        v52 = *(v1 + 23);
      }

      else
      {
        v52 = *(v1 + 8);
      }

      v53 = sub_1000027F4(v49, v51, v52);
      std::ios_base::getloc((v53 + *(*v53 - 24)));
      v54 = std::locale::use_facet(&v109, &std::ctype<char>::id);
      (v54->__vftable[2].~facet_0)(v54, 10);
      std::locale::~locale(&v109);
      std::ostream::put();
      std::ostream::flush();
    }

    else
    {
      siri::dialogengine::Context::Context(&v109);
      siri::dialogengine::RequestInfo::RequestInfo(&__p);
      siri::dialogengine::RequestInfo::SetTemplateDirs();
      siri::dialogengine::RequestInfo::SetParamsPath();
      siri::dialogengine::RequestInfo::SetLocalePath();
      LODWORD(v85.__r_.__value_.__l.__data_) = 0;
      siri::dialogengine::RequestInfo::SetRequestType();
      siri::dialogengine::Context::SetRequestInfo();
      if (!siri::dialogengine::Context::Load(&v109))
      {
        goto LABEL_56;
      }

      siri::dialogengine::Context::GetFile(&v85, &v109);
      v20 = v85.__r_.__value_.__r.__words[0];
      if (v85.__r_.__value_.__l.__size_)
      {
        sub_100005EB4(v85.__r_.__value_.__l.__size_);
      }

      if (v20)
      {
        siri::dialogengine::Context::GetFile(&v106, &v109);
        siri::dialogengine::File::GetParameters(&v108, v106);
        siri::dialogengine::File::GetDialogs(&v104, v106);
        siri::dialogengine::File::GetTexts(&v102, v106);
        std::string::operator=(v5, v3);
        std::string::operator=(v5 + 1, v1);
        std::string::operator=(v5 + 2, &v112);
        MaxLineNumber = siri::dialogengine::File::GetMaxLineNumber(v106);
        v22 = (v105 - v104) >> 4;
        v5[3].__r_.__value_.__r.__words[0] = MaxLineNumber;
        v5[3].__r_.__value_.__l.__size_ = v22;
        v5[3].__r_.__value_.__r.__words[2] = (v103 - v102) >> 4;
        Phrases = siri::dialogengine::File::GetPhrases(v106);
        if (Phrases)
        {
          v24 = **Phrases;
          if (v25)
          {
            siri::dialogengine::GroupPhrases::GetPhrases(&v85, v25);
            v5[4].__r_.__value_.__r.__words[0] = (v85.__r_.__value_.__l.__size_ - v85.__r_.__value_.__r.__words[0]) >> 4;
            v118 = &v85;
            sub_100007C5C(&v118);
          }
        }

        siri::dialogengine::File::GetConditions(&v85, v106);
        v5[4].__r_.__value_.__l.__size_ = (v85.__r_.__value_.__l.__size_ - v85.__r_.__value_.__r.__words[0]) >> 4;
        v118 = &v85;
        sub_100007C5C(&v118);
        v26 = v108.__r_.__value_.__l.__size_;
        v27 = v108.__r_.__value_.__r.__words[0];
        v28 = v108.__r_.__value_.__l.__size_ == v108.__r_.__value_.__r.__words[0];
        v5[4].__r_.__value_.__r.__words[2] = 0xCF3CF3CF3CF3CF3DLL * ((v108.__r_.__value_.__l.__size_ - v108.__r_.__value_.__r.__words[0]) >> 4);
        if (v28)
        {
          v29 = 0;
        }

        else
        {
          LODWORD(v29) = 0;
          do
          {
            siri::dialogengine::ObjectProperty::GetSemanticConcept(&v85, v27);
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              v30 = v85.__r_.__value_.__l.__size_ == 0;
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            else
            {
              v30 = SHIBYTE(v85.__r_.__value_.__r.__words[2]) == 0;
            }

            v29 = v29 + !v30;
            v27 = (v27 + 336);
          }

          while (v27 != v26);
        }

        v5[5].__r_.__value_.__r.__words[0] = v29;
        v101[0] = 0;
        v101[1] = 0;
        v100[1].__locale_ = v101;
        (*(*v106 + 32))(v106, v100);
        DialogIds = siri::dialogengine::CollectDialogIdsVisitor::GetDialogIds(v100);
        if (v6 != DialogIds)
        {
          sub_100036A4C(v6, *DialogIds, (DialogIds + 8));
        }

        v57 = v104;
        v58 = v105;
        if (v104 != v105)
        {
          __str_15 = v105;
          v79 = v7;
          v59 = v5;
          while (1)
          {
            v60 = *v57;
            v61 = *(v57 + 8);
            if (v61)
            {
              atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            siri::dialogengine::Dialog::GetFull(&v85, v60);
            siri::dialogengine::SpeakableString::GetPrintChunks(&v99, &v85);
            siri::dialogengine::ChunkList::GetChunks(&v118, &v99);
            v83 = &v99;
            sub_100007C5C(&v83);
            if (v97 < 0)
            {
              operator delete(v96);
            }

            if (v95 < 0)
            {
              operator delete(v94);
            }

            if (v93 < 0)
            {
              operator delete(v92);
            }

            if (v91 < 0)
            {
              operator delete(v90);
            }

            if (v89 < 0)
            {
              operator delete(v88);
            }

            if (v87 < 0)
            {
              operator delete(v86);
            }

            __str_23 = v61;
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            v62 = v118;
            v63 = v119;
            while (v62 != v63)
            {
              v64 = *v62;
              v65 = *(v62 + 1);
              if (v65)
              {
                atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (!v64)
              {
                goto LABEL_141;
              }

              v66 = **v64;
              if (!v67)
              {
                goto LABEL_141;
              }

              v68 = v67;
              sub_10000143C(&v85, "semanticConcept");
              siri::dialogengine::ChunkText::GetAttribute();
              if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v85.__r_.__value_.__l.__data_);
              }

              v85.__r_.__value_.__s.__data_[0] = 0;
              v98 = 0;
              siri::dialogengine::ChunkVariable::GetName(&v82, v68);
              siri::dialogengine::ResolveType();
              if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v82.__r_.__value_.__l.__data_);
              }

              if (v98 == 1)
              {
                siri::dialogengine::ObjectProperty::GetSemanticConcept(&v82, &v85);
              }

              else
              {
                sub_10000143C(&v82, &unk_10006B9FB);
              }

              v69 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
              if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v69 = v99.__r_.__value_.__l.__size_;
              }

              if (v69)
              {
                std::string::operator=(&v82, &v99);
              }

              v70 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
              v71 = SHIBYTE(v82.__r_.__value_.__r.__words[2]);
              if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v70 = v82.__r_.__value_.__l.__size_;
              }

              if (v70)
              {
                ++v59[5].__r_.__value_.__l.__size_;
              }

              if (v71 < 0)
              {
                operator delete(v82.__r_.__value_.__l.__data_);
              }

              if (v84 < 0)
              {
                operator delete(v83);
              }

              if (v98 == 1)
              {
                sub_100036D5C(&v85);
              }

              if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_141:
                if (!v65)
                {
                  goto LABEL_143;
                }

LABEL_142:
                sub_100005EB4(v65);
                goto LABEL_143;
              }

              operator delete(v99.__r_.__value_.__l.__data_);
              if (v65)
              {
                goto LABEL_142;
              }

LABEL_143:
              v62 += 16;
            }

            v85.__r_.__value_.__r.__words[0] = &v118;
            sub_100007C5C(&v85);
            if (__str_23)
            {
              sub_100005EB4(__str_23);
            }

            v57 += 16;
            if (v57 == __str_15)
            {
              v57 = v104;
              v58 = v105;
              v5 = v59;
              v7 = v79;
              break;
            }
          }
        }

        for (i = 0; v57 != v58; v57 += 16)
        {
          siri::dialogengine::Dialog::GetFull(&v85, *v57);
          if (siri::dialogengine::SpeakableString::SpeakEqualsPrint(&v85))
          {
            siri::dialogengine::Dialog::GetSupporting(&v118, *v57);
            v73 = siri::dialogengine::SpeakableString::SpeakEqualsPrint(&v118);
            if (v132 < 0)
            {
              operator delete(v131);
            }

            if (v130 < 0)
            {
              operator delete(v129);
            }

            if (v128 < 0)
            {
              operator delete(v127);
            }

            if (v126 < 0)
            {
              operator delete(v125);
            }

            if (v124 < 0)
            {
              operator delete(v123);
            }

            if (v122 < 0)
            {
              operator delete(v121);
            }

            if (v120 < 0)
            {
              operator delete(v118);
            }

            v74 = v73 ^ 1u;
          }

          else
          {
            v74 = 1;
          }

          if (v97 < 0)
          {
            operator delete(v96);
          }

          if (v95 < 0)
          {
            operator delete(v94);
          }

          if (v93 < 0)
          {
            operator delete(v92);
          }

          if (v91 < 0)
          {
            operator delete(v90);
          }

          if (v89 < 0)
          {
            operator delete(v88);
          }

          if (v87 < 0)
          {
            operator delete(v86);
          }

          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }

          i += v74;
        }

        *v7 = i;
        v75 = v102;
        v76 = v103;
        if (v102 == v103)
        {
          v77 = 0;
        }

        else
        {
          v77 = 0;
          do
          {
            siri::dialogengine::Text::GetValue(&v85, *v75);
            v78 = siri::dialogengine::SpeakableString::SpeakEqualsPrint(&v85);
            if (v97 < 0)
            {
              operator delete(v96);
            }

            if (v95 < 0)
            {
              operator delete(v94);
            }

            if (v93 < 0)
            {
              operator delete(v92);
            }

            if (v91 < 0)
            {
              operator delete(v90);
            }

            if (v89 < 0)
            {
              operator delete(v88);
            }

            if (v87 < 0)
            {
              operator delete(v86);
            }

            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            v77 += v78 ^ 1u;
            v75 += 2;
          }

          while (v75 != v76);
        }

        v5[7].__r_.__value_.__r.__words[2] = v77;
        v100[0].__locale_ = v55;
        sub_10000623C(&v100[1], v101[0]);
        v85.__r_.__value_.__r.__words[0] = &v102;
        sub_100007C5C(&v85);
        v85.__r_.__value_.__r.__words[0] = &v104;
        sub_100007C5C(&v85);
        v85.__r_.__value_.__r.__words[0] = &v108;
        sub_100005F20(&v85);
        if (v107)
        {
          sub_100005EB4(v107);
        }
      }

      else
      {
LABEL_56:
        std::operator+<char>();
        siri::dialogengine::Context::GetError(&v118, &v109);
        v36 = v120;
        if ((v120 & 0x80u) != 0)
        {
          v36 = v119;
        }

        if (v36)
        {
          std::operator+<char>();
          v37 = std::string::append(&v108, "]");
          v38 = *&v37->__r_.__value_.__l.__data_;
          v101[0] = v37->__r_.__value_.__r.__words[2];
          *&v100[0].__locale_ = v38;
          v37->__r_.__value_.__l.__size_ = 0;
          v37->__r_.__value_.__r.__words[2] = 0;
          v37->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v101[0]) >= 0)
          {
            locale = v100;
          }

          else
          {
            locale = v100[0].__locale_;
          }

          if (SHIBYTE(v101[0]) >= 0)
          {
            v40 = HIBYTE(v101[0]);
          }

          else
          {
            v40 = v100[1].__locale_;
          }

          std::string::append(&v85, locale, v40);
          if (SHIBYTE(v101[0]) < 0)
          {
            operator delete(v100[0].__locale_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v85;
        }

        else
        {
          v41 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = v85.__r_.__value_.__l.__size_;
        }

        v43 = sub_1000027F4(&std::cerr, v41, v42);
        std::ios_base::getloc((v43 + *(*v43 - 24)));
        v44 = std::locale::use_facet(v100, &std::ctype<char>::id);
        (v44->__vftable[2].~facet_0)(v44, 10);
        std::locale::~locale(v100);
        std::ostream::put();
        std::ostream::flush();
        if (v120 < 0)
        {
          operator delete(v118);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }

      sub_10002A140(&__p);
      siri::dialogengine::Context::~Context(&v109);
    }

    if (v111 < 0)
    {
      v35 = v110[0];
      goto LABEL_207;
    }
  }

  else
  {
    std::operator+<char>();
    if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v109;
    }

    else
    {
      v31 = v109.__r_.__value_.__r.__words[0];
    }

    if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v109.__r_.__value_.__l.__size_;
    }

    v33 = sub_1000027F4(&std::cerr, v31, v32);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&__p, &std::ctype<char>::id);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      v35 = v109.__r_.__value_.__r.__words[0];
LABEL_207:
      operator delete(v35);
    }
  }

  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (v114 < 0)
  {
    operator delete(v113);
  }

  if (SHIBYTE(v116) < 0)
  {
    operator delete(v115[0]);
  }

  v109.__r_.__value_.__r.__words[0] = &v117;
  sub_10000C88C(&v109);
}

void sub_1000365B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, std::locale a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  a53.__locale_ = &a58;
  sub_100007C5C(&a53);
  a53.__locale_ = &a61;
  sub_100007C5C(&a53);
  a53.__locale_ = &a66;
  sub_100005F20(&a53);
  if (a65)
  {
    sub_100005EB4(a65);
  }

  sub_10002A140(&STACK[0x1110]);
  siri::dialogengine::Context::~Context(&a69);
  if (v69[23] < 0)
  {
    operator delete(STACK[0xFE8]);
  }

  if (v69[47] < 0)
  {
    operator delete(STACK[0x1000]);
  }

  if (v69[71] < 0)
  {
    operator delete(STACK[0x1018]);
  }

  if (v69[95] < 0)
  {
    operator delete(STACK[0x1030]);
  }

  STACK[0x1030] = &STACK[0x1050];
  sub_10000C88C(&STACK[0x1030]);
  sub_1000369EC(v70);
  _Unwind_Resume(a1);
}

uint64_t sub_100036998(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100036E7C(a1, a2);
  }

  else
  {
    sub_100036FAC(*(a1 + 8), a2);
    result = v3 + 192;
    *(a1 + 8) = v3 + 192;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000369EC(uint64_t a1)
{
  sub_10000623C(a1 + 152, *(a1 + 160));
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

uint64_t **sub_100036A4C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100032984(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = sub_100036BD0(v5, &v16, v15 + 4);
          sub_100005A54(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_100032984(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_1000329D8(&v13);
  }

  if (a2 != a3)
  {
    sub_100036C4C();
  }

  return result;
}

void *sub_100036BD0(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_100005B94(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void sub_100036CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000061D8(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100036CC8(uint64_t a1)
{
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

uint64_t sub_100036D5C(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  return sub_100036DDC(a1);
}

uint64_t sub_100036DDC(uint64_t a1)
{
  *a1 = off_1000751C0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100036E7C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_1000020B0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000371B4(a1, v6);
  }

  v13 = 0;
  v14 = 192 * v2;
  sub_100036FAC((192 * v2), a2);
  v15 = 192 * v2 + 192;
  v7 = *(a1 + 8);
  v8 = 192 * v2 + *a1 - v7;
  sub_10003720C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10003748C(&v13);
  return v12;
}

void sub_100036F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003748C(va);
  _Unwind_Resume(a1);
}

char *sub_100036FAC(char *__dst, __int128 *a2)
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

  *(__dst + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  *(__dst + 132) = *(a2 + 132);
  *(__dst + 120) = v9;
  *(__dst + 104) = v8;
  *(__dst + 88) = v7;
  sub_1000370D4(__dst + 19, a2 + 19);
  *(__dst + 11) = a2[11];
  return __dst;
}

void sub_100037088(_Unwind_Exception *exception_object)
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

void *sub_1000370D4(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10003712C(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_10003712C(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000060A4(v5, (v5 + 1), v4 + 4);
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

void sub_1000371B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_100001B50();
}

uint64_t sub_10003720C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
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
    v7 = a2;
    do
    {
      sub_1000372D8(a1, a4, v7);
      v7 += 12;
      a4 = v12 + 192;
      v12 += 192;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_10003738C(a1, v5);
      v5 += 192;
    }
  }

  return sub_100037400(v9);
}

__n128 sub_1000372D8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v4 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 5);
  *(a2 + 24) = v4;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 3) = 0;
  v5 = a3[3];
  *(a2 + 64) = *(a3 + 8);
  *(a2 + 48) = v5;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 6) = 0;
  *(a2 + 72) = *(a3 + 72);
  v6 = *(a3 + 88);
  v7 = *(a3 + 104);
  v8 = *(a3 + 120);
  *(a2 + 132) = *(a3 + 132);
  *(a2 + 120) = v8;
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 152) = *(a3 + 19);
  v9 = a3 + 10;
  v10 = *(a3 + 20);
  *(a2 + 160) = v10;
  v11 = a2 + 160;
  v12 = *(a3 + 21);
  *(a2 + 168) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *(a3 + 19) = v9;
    *v9 = 0;
    *(a3 + 21) = 0;
  }

  else
  {
    *(a2 + 152) = v11;
  }

  result = a3[11];
  *(a2 + 176) = result;
  return result;
}

void sub_10003738C(uint64_t a1, uint64_t a2)
{
  sub_10000623C(a2 + 152, *(a2 + 160));
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_100037400(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100037438(a1);
  }

  return a1;
}

void sub_100037438(uint64_t *a1)
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
      v3 -= 192;
      sub_10003738C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10003748C(uint64_t a1)
{
  sub_1000374C4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000374C4(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 192;
    sub_10003738C(v5, v4 - 192);
  }
}

void sub_10003750C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100037560(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100037560(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10003738C(a1, i))
  {
    i -= 192;
  }

  *(a1 + 8) = a2;
}

void sub_1000375B4(uint64_t *a1)
{
  if (*a1)
  {
    sub_100037560(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_1000375F4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  sub_100037678(a1, a2, a3, v4);
  return a1;
}

uint64_t sub_100037678(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100002064(result, a4);
  }

  return result;
}

void sub_1000376E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100002260(&a9);
  _Unwind_Resume(a1);
}

void *sub_100037700(uint64_t a1, void *a2, void *a3, void *__dst)
{
  v4 = __dst;
  v14 = __dst;
  v15 = __dst;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 55) < 0)
      {
        sub_100001C60(v4, v6[4], v6[5]);
      }

      else
      {
        v7 = *(v6 + 2);
        v4[2] = v6[6];
        *v4 = v7;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v4 = v15 + 24;
      v15 += 24;
      v6 = v9;
    }

    while (v9 != a3);
  }

  v13 = 1;
  sub_1000021E0(v12);
  return v4;
}

void sub_1000377EC(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_100005B94(a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = v8[2];
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_1000384D8(v10, a2, a3);
      }

      else
      {

        sub_1000385FC(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_100038E9C(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = sub_100005B94(a3, &v10[3 * v15], v10);
      v18 = sub_100005B94(a3, a2 - 3, (a1 + 24 * v15));
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = v16[2];
        *a1 = v27;
        v16[2] = v106;
        *v16 = v82;
        if (sub_100005B94(a3, a2 - 3, (a1 + 24 * v15)))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (sub_100005B94(a3, (a1 + 24 * v15), a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = sub_100005B94(a3, v29, (a1 + 24));
      v31 = sub_100005B94(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (sub_100005B94(a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (sub_100005B94(a3, v29, (a1 + 24)))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = sub_100005B94(a3, (v41 + 24), (a1 + 48));
      v43 = sub_100005B94(a3, a2 - 9, (v41 + 24));
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (sub_100005B94(a3, a2 - 9, (v41 + 24)))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (sub_100005B94(a3, (v41 + 24), (a1 + 48)))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = sub_100005B94(a3, v16, v29);
      v52 = sub_100005B94(a3, (v41 + 24), v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (sub_100005B94(a3, (v41 + 24), v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 24);
        v16[2] = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (sub_100005B94(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_100005B94(a3, v10, &v10[3 * v15]);
    v21 = sub_100005B94(a3, a2 - 3, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *a1;
      v16[2] = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (sub_100005B94(a3, a2 - 3, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (sub_100005B94(a3, a1, (a1 + 24 * v15)))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_100005B94(a3, (a1 - 24), a1))
    {
      v10 = sub_1000386FC(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_100038890(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_100038A20(a1, v54, a3);
    v10 = (v54 + 24);
    if (sub_100038A20(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_1000377EC(a1, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_1000382F8(v10, v10 + 3, v10 + 6, (a2 - 3), a3);
      return;
    }

    if (v14 == 5)
    {
      sub_1000382F8(v10, v10 + 3, v10 + 6, (v10 + 9), a3);
      if (!sub_100005B94(a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!sub_100005B94(a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!sub_100005B94(a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_100005B94(a3, v10 + 3, v10);
  v58 = sub_100005B94(a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    v8[2] = v71;
LABEL_92:
    if (sub_100005B94(a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (sub_100005B94(a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    v8[2] = v59;
  }
}

__n128 sub_1000382F8(const void **a1, const void **a2, const void **a3, __int128 *a4, uint64_t a5)
{
  v10 = sub_100005B94(a5, a2, a1);
  v11 = sub_100005B94(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (sub_100005B94(a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (sub_100005B94(a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (sub_100005B94(a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (sub_100005B94(a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (sub_100005B94(a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void sub_1000384D8(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v18 = v3;
    v19 = v4;
    v7 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (sub_100005B94(a3, v7, v11))
        {
          v16 = *v10;
          v17 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          do
          {
            v13 = a1 + v12;
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(*(v13 + 24));
            }

            *(v13 + 24) = *v13;
            *(v13 + 40) = *(v13 + 16);
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              v15 = a1;
              goto LABEL_13;
            }

            v12 -= 24;
          }

          while (sub_100005B94(a3, &v16, (v12 + a1)));
          v14 = *(a1 + v12 + 47);
          v15 = a1 + v12 + 24;
          if (v14 < 0)
          {
            operator delete(*v15);
          }

LABEL_13:
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

void sub_1000385FC(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (sub_100005B94(a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = sub_100005B94(a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **sub_1000386FC(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (sub_100005B94(a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!sub_100005B94(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_100005B94(a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (sub_100005B94(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!sub_100005B94(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (sub_100005B94(a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

unint64_t sub_100038890(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (sub_100005B94(a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while (!sub_100005B94(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!sub_100005B94(a3, a2, &v17));
  }

  v8 = a1 + v6;
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v19 = *v8;
      v10 = v19;
      v20 = *(v8 + 16);
      v11 = v20;
      v12 = v9[2];
      *v8 = *v9;
      *(v8 + 16) = v12;
      v9[2] = v11;
      *v9 = v10;
      do
      {
        v8 += 24;
      }

      while (sub_100005B94(a3, v8, &v17));
      do
      {
        v9 -= 3;
      }

      while (!sub_100005B94(a3, v9, &v17));
    }

    while (v8 < v9);
  }

  v13 = (v8 - 24);
  if ((v8 - 24) == a1)
  {
    if (*(v8 - 1) < 0)
    {
      operator delete(*v13);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v8 - 8);
    *a1 = v14;
    *(v8 - 1) = 0;
    *(v8 - 24) = 0;
  }

  v15 = v17;
  *(v8 - 8) = v18;
  *v13 = v15;
  return v8 - 24;
}

BOOL sub_100038A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_100005B94(a3, (a1 + 24), a1);
        v17 = sub_100005B94(a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_100005B94(a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_1000382F8(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_1000382F8(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!sub_100005B94(a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_100005B94(a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_100005B94(a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_100005B94(a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_100005B94(a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_100005B94(a3, (a1 + 24), a1);
  v23 = sub_100005B94(a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_100005B94(a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_100005B94(a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_100005B94(a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = sub_100005B94(a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while (v45);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_100038E9C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_1000390D4(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_100005B94(a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_1000390D4(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v27 = *(a1 + 8);
        *&v27[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = sub_100039270(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v27;
          *(v22 + 15) = *&v27[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 16);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 8) = *v27;
          *(v18 + 15) = *&v27[7];
          *(v18 + 23) = v20;
          sub_100039348(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_1000390BC(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1000390D4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_100005B94(a2, (a1 + 24 * v12), (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!sub_100005B94(a2, v13, v7))
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v16 = v13;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && sub_100005B94(a2, (a1 + 24 * v18), (v13 + 24)))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
          if (sub_100005B94(a2, v13, &v20))
          {
            if (v16[1].n128_i8[7] < 0)
            {
              operator delete(v16->n128_u64[0]);
            }

            break;
          }
        }

        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *sub_100039270(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = (v8 + 48);
      if (sub_100005B94(a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double sub_100039348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (sub_100005B94(a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!sub_100005B94(a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

std::string *sub_10003944C(void *a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 6)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 6)) >= a5)
      {
        v18 = 3 * a5;
        sub_100039644(a1, a2, a1[1], a2 + 192 * a5);
        v17 = &v7[(64 * v18) / 0x18];
      }

      else
      {
        a1[1] = sub_1000397A0(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_100039644(a1, v5, v10, &v5[8 * a5]);
        v17 = (v7 + v16);
      }

      sub_1000399F0(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 6);
    if (v12 > 0x155555555555555)
    {
      sub_1000020B0();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 6);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xAAAAAAAAAAAAAALL)
    {
      v15 = 0x155555555555555;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      sub_1000371B4(a1, v15);
    }

    v19 = (v13 >> 6 << 6);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = &v19[192 * a5];
    v21 = 192 * a5;
    do
    {
      sub_100036FAC(v19, v7);
      v19 += 192;
      v7 += 8;
      v21 -= 192;
    }

    while (v21);
    v24 = v20;
    v5 = sub_1000396E4(a1, v23, v5);
    sub_10003748C(v23);
  }

  return v5;
}

uint64_t sub_100039644(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      sub_1000372D8(a1, v8, v10);
      v10 += 12;
      v8 += 192;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_100039844(&v12, a2, v7, v6);
}

uint64_t sub_1000396E4(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_10003720C(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_10003720C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

char *sub_1000397A0(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100036FAC(v4, v6);
      v6 += 12;
      v4 = v11 + 192;
      v11 += 192;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100037400(v8);
  return v4;
}

uint64_t sub_100039844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 192);
      if (*(a4 + v7 - 169) < 0)
      {
        operator delete(*v9);
      }

      v10 = a3 + v7;
      v11 = (a3 + v7 - 192);
      v12 = *v11;
      *(a4 + v7 - 176) = *(a3 + v7 - 176);
      *v9 = v12;
      *(a3 + v7 - 169) = 0;
      *v11 = 0;
      v13 = v8 - 168;
      if (*(v8 - 145) < 0)
      {
        operator delete(*v13);
      }

      v14 = a3 + v7;
      v15 = *(v10 - 168);
      *(v13 + 16) = *(v10 - 152);
      *v13 = v15;
      *(a3 + v7 - 145) = 0;
      *(v10 - 168) = 0;
      v16 = a4 + v7;
      v17 = (a4 + v7 - 144);
      if (*(a4 + v7 - 121) < 0)
      {
        operator delete(*v17);
      }

      v18 = *(v14 - 144);
      *(a4 + v7 - 128) = *(v14 - 128);
      *v17 = v18;
      *(v14 - 121) = 0;
      *(v14 - 144) = 0;
      *(v16 - 120) = *(v14 - 120);
      v19 = *(v14 - 104);
      v20 = *(v14 - 88);
      v21 = *(v14 - 72);
      *(v16 - 60) = *(v14 - 60);
      *(v16 - 72) = v21;
      *(v16 - 88) = v20;
      *(v16 - 104) = v19;
      sub_100039984(v16 - 40, (v14 - 40));
      *(v16 - 16) = *(v14 - 16);
      v7 -= 192;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void sub_100039984(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_10000623C(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

std::string *sub_1000399F0(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  v7 = &__str[6].__r_.__value_.__r.__words[2];
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    *&this[3].__r_.__value_.__l.__data_ = *&v5[3].__r_.__value_.__l.__data_;
    v8 = *&v5[4].__r_.__value_.__r.__words[1];
    v9 = *&v5[5].__r_.__value_.__l.__data_;
    v10 = *(&v5[5].__r_.__value_.__r.__words[1] + 4);
    *&this[3].__r_.__value_.__r.__words[2] = *&v5[3].__r_.__value_.__r.__words[2];
    *(&this[5].__r_.__value_.__r.__words[1] + 4) = v10;
    *&this[5].__r_.__value_.__l.__data_ = v9;
    *&this[4].__r_.__value_.__r.__words[1] = v8;
    if (this != v5)
    {
      sub_100036A4C(&this[6].__r_.__value_.__l.__size_, v5[6].__r_.__value_.__l.__size_, v7);
    }

    *&this[7].__r_.__value_.__r.__words[1] = *&v5[7].__r_.__value_.__r.__words[1];
    this += 8;
    v7 += 24;
    v5 += 8;
  }

  while (v5 != v6);
  return v6;
}

void *sub_100039ABC(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100001FDC(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = a3;
  return a1;
}

uint64_t sub_100039B10(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100039B20()
{
  sub_10000143C(&v4, "-h");
  if (siri::dialogengine::OptionExists())
  {
    v0 = 1;
  }

  else
  {
    sub_10000143C(&__p, "--help");
    v0 = siri::dialogengine::OptionExists();
    if (v3 < 0)
    {
      operator delete(__p);
    }
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  return v0;
}

void sub_100039BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100039BEC()
{
  sub_10000143C(v6, "<EXECUTABLE>");
  siri::dialogengine::GetExecutableName();
  siri::dialogengine::StringReplace();
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0].__locale_);
  }

  sub_10000143C(&__p, "<COMMAND>");
  siri::dialogengine::StringReplace();
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  *v8 = *&v6[0].__locale_;
  v9 = v7;
  HIBYTE(v7) = 0;
  LOBYTE(v6[0].__locale_) = 0;
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v9 >= 0)
  {
    v0 = v8;
  }

  else
  {
    v0 = v8[0];
  }

  if (v9 >= 0)
  {
    v1 = HIBYTE(v9);
  }

  else
  {
    v1 = v8[1];
  }

  v2 = sub_1000027F4(&std::cout, v0, v1);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(v6, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(v6);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_100039D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100039E00(uint64_t *a1, uint64_t a2)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_100001FDC(&v28, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3) < 3)
  {
    goto LABEL_4;
  }

  sub_10000143C(v26, "--list");
  v6 = siri::dialogengine::PopOption();
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  sub_10000143C(v26, "--resolve");
  v7 = siri::dialogengine::PopOption();
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  sub_10000143C(&__p, "--distribution");
  siri::dialogengine::PopStringOption();
  if (v25 < 0)
  {
    operator delete(__p);
  }

  sub_10000143C(v22, "--version");
  siri::dialogengine::PopStringOption();
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  sub_10000143C(&v21, "--minDiffVersion");
  siri::dialogengine::PopStringOption();
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v21, "--updater");
  v8 = siri::dialogengine::PopOption();
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  sub_10000143C(v19, "--templateDir");
  siri::dialogengine::PopStringOption();
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::operator=(&v21, v28 + 2);
  }

  if (!v6)
  {
    if (v7)
    {
      siri::dialogengine::GetUpdatedTemplateDir();
      if (v20 >= 0)
      {
        v11 = v19;
      }

      else
      {
        v11 = v19[0];
      }

      printf("Resolved template directory: %s\n", v11);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      goto LABEL_51;
    }

    v12 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v12 = v26[1];
    }

    if (v12)
    {
      if (v8)
      {
        if ((v27 & 0x80u) == 0)
        {
          v13 = v26;
        }

        else
        {
          v13 = v26[0];
        }

        v14 = [NSString stringWithUTF8String:v13];
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v21;
        }

        else
        {
          v15 = v21.__r_.__value_.__r.__words[0];
        }

        v16 = [NSString stringWithUTF8String:v15];
        v17 = [NSURL fileURLWithPath:v16 isDirectory:1];

        v18 = +[DEFilter catUpdates];
        v4 = [DEUpdater putManifest:v14 src:v17 contents:v18 summary:0 overrides:0];

        goto LABEL_54;
      }

      if (siri::dialogengine::WriteAssetDeliveryConfig())
      {
        goto LABEL_51;
      }
    }

    else
    {
      puts("--distribution is required");
    }

LABEL_53:
    v4 = 0;
    goto LABEL_54;
  }

  if (!siri::dialogengine::ReadAssetDeliveryConfig())
  {
    goto LABEL_53;
  }

  if ((v23 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = v22[1];
  }

  if (v10)
  {
    printf("Distribution: %s\nVersion: %s\nMinimum Differential Update Version: %s\n");
  }

  else
  {
    printf("Distribution: %s\nVersion: %s\n");
  }

LABEL_51:
  v4 = 1;
LABEL_54:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

LABEL_5:
  v26[0] = &v28;
  sub_100002260(v26);
  return v4;
}