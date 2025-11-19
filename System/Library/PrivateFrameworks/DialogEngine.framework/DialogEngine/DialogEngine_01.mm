BOOL sub_10000DD78(uint64_t *a1, uint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = sub_10000DB04(a1 + 3, a1);
        v15 = sub_10000DB04(v5, a1 + 3);
        if (v14)
        {
          if (!v15)
          {
            v33 = a1[2];
            v34 = *a1;
            *a1 = *(a1 + 3);
            a1[2] = a1[5];
            *(a1 + 3) = v34;
            a1[5] = v33;
            if (!sub_10000DB04(v5, a1 + 3))
            {
              return 1;
            }

            v16 = a1[5];
            v17 = *(a1 + 3);
            v35 = v5[2];
            *(a1 + 3) = *v5;
            a1[5] = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = a1[2];
          v17 = *a1;
          v18 = v5[2];
          *a1 = *v5;
          a1[2] = v18;
LABEL_16:
          *v5 = v17;
          v5[2] = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = a1[5];
        v25 = *(a1 + 3);
        v26 = v5[2];
        *(a1 + 3) = *v5;
        a1[5] = v26;
        *v5 = v25;
        v5[2] = v24;
        break;
      case 4:
        sub_10000DBBC(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        sub_10000DBBC(a1, a1 + 3, a1 + 6, a1 + 9);
        if (!sub_10000DB04(v6, a1 + 9))
        {
          return 1;
        }

        v7 = a1[11];
        v8 = *(a1 + 9);
        v9 = v6[2];
        *(a1 + 9) = *v6;
        a1[11] = v9;
        *v6 = v8;
        v6[2] = v7;
        if (!sub_10000DB04(a1 + 9, a1 + 6))
        {
          return 1;
        }

        v10 = a1[8];
        v11 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 9);
        a1[8] = a1[11];
        *(a1 + 9) = v11;
        a1[11] = v10;
        if (!sub_10000DB04(a1 + 6, a1 + 3))
        {
          return 1;
        }

        v12 = a1[5];
        v13 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 3);
        a1[5] = a1[8];
        *(a1 + 3) = v13;
        a1[8] = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_10000DB04(a1 + 3, a1))
    {
      v27 = a1[2];
      v28 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v28;
      a1[5] = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if (!sub_10000DB04(a2 - 3, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = a1 + 6;
  v20 = sub_10000DB04(a1 + 3, a1);
  v21 = sub_10000DB04(a1 + 6, a1 + 3);
  if (v20)
  {
    if (v21)
    {
      v22 = a1[2];
      v23 = *a1;
      *a1 = *v19;
      a1[2] = a1[8];
    }

    else
    {
      v36 = a1[2];
      v37 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v37;
      a1[5] = v36;
      if (!sub_10000DB04(a1 + 6, a1 + 3))
      {
        goto LABEL_33;
      }

      v22 = a1[5];
      v23 = *(a1 + 3);
      *(a1 + 3) = *v19;
      a1[5] = a1[8];
    }

    *v19 = v23;
    a1[8] = v22;
  }

  else if (v21)
  {
    v29 = a1[5];
    v30 = *(a1 + 3);
    *(a1 + 3) = *v19;
    a1[5] = a1[8];
    *v19 = v30;
    a1[8] = v29;
    if (sub_10000DB04(a1 + 3, a1))
    {
      v31 = a1[2];
      v32 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v32;
      a1[5] = v31;
    }
  }

LABEL_33:
  v38 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (sub_10000DB04(v38, v19))
    {
      v47 = *v38;
      v48 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      do
      {
        v42 = (a1 + v41);
        if (*(a1 + v41 + 95) < 0)
        {
          operator delete(v42[9]);
        }

        *(v42 + 9) = *(v42 + 3);
        v42[11] = v42[8];
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          v45 = a1;
          goto LABEL_44;
        }

        v43 = sub_10000DB04(&v47, (a1 + v41 + 24));
        v41 -= 24;
      }

      while (v43);
      v44 = *(a1 + v41 + 95);
      v45 = a1 + v41 + 72;
      if (v44 < 0)
      {
        operator delete(*v45);
      }

LABEL_44:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

void sub_10000E1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10000E1C4(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

uint64_t sub_10000E230(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void sub_10000E344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  sub_10000143C(v102, "/usr/local/bin/appleconnect serviceTicket --show-signIn-dialog --dawToken -I 178268 --realm APPLECONNECT.APPLE.COM 2>/dev/null");
  siri::dialogengine::ExecuteShellCommand();
  siri::dialogengine::StringTrim();
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v103 < 0)
  {
    operator delete(v102[0]);
  }

  sub_10000143C(&v106, "DAWTKNV");
  v15 = siri::dialogengine::StringStartsWith();
  v16 = v15;
  if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_28:
    v29 = sub_1000027F4(&std::cout, "Error getting AppleConnect token for rendercat. Make sure you have AppleConnect installed and are on the internal network.", 122);
    std::ios_base::getloc((v29 + *(*v29 - 24)));
    v30 = std::locale::use_facet(&v106, &std::ctype<char>::id);
    (v30->__vftable[2].~facet_0)(v30, 10);
    std::locale::~locale(&v106);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_166;
  }

  operator delete(v106.__r_.__value_.__l.__data_);
  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  std::operator+<char>();
  sub_10000143C(&__p, "Content-type: text/plain");
  std::operator+<char>();
  v17 = std::string::append(&v96, "&train=");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v97.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v97.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = *(a4 + 23);
  if (v19 >= 0)
  {
    v20 = a4;
  }

  else
  {
    v20 = *a4;
  }

  if (v19 >= 0)
  {
    v21 = *(a4 + 23);
  }

  else
  {
    v21 = *(a4 + 8);
  }

  v22 = std::string::append(&v97, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v98.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v98.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v98, "&darkMode=");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v106.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v106.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (a8)
  {
    v26 = "true";
  }

  else
  {
    v26 = "false";
  }

  v27 = std::string::append(&v106, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v99.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v99.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (*(a5 + 23) < 0)
  {
    if (!*(a5 + 8))
    {
      goto LABEL_38;
    }
  }

  else if (!*(a5 + 23))
  {
    goto LABEL_38;
  }

  std::operator+<char>();
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v106;
  }

  else
  {
    v31 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v106.__r_.__value_.__l.__size_;
  }

  std::string::append(&v99, v31, size);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

LABEL_38:
  if (*(a6 + 23) < 0)
  {
    if (!*(a6 + 8))
    {
      goto LABEL_50;
    }
  }

  else if (!*(a6 + 23))
  {
    goto LABEL_50;
  }

  std::operator+<char>();
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v106;
  }

  else
  {
    v33 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v106.__r_.__value_.__l.__size_;
  }

  std::string::append(&v99, v33, v34);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

LABEL_50:
  if (*(a7 + 23) < 0)
  {
    if (!*(a7 + 8))
    {
      goto LABEL_62;
    }
  }

  else if (!*(a7 + 23))
  {
    goto LABEL_62;
  }

  std::operator+<char>();
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v106;
  }

  else
  {
    v35 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v106.__r_.__value_.__l.__size_;
  }

  std::string::append(&v99, v35, v36);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

LABEL_62:
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8))
    {
LABEL_64:
      std::operator+<char>();
      v37 = std::string::append(&v90, " -b '");
      v38 = *&v37->__r_.__value_.__l.__data_;
      v91.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v91.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if ((v103 & 0x80u) == 0)
      {
        v39 = v102;
      }

      else
      {
        v39 = v102[0];
      }

      if ((v103 & 0x80u) == 0)
      {
        v40 = v103;
      }

      else
      {
        v40 = v102[1];
      }

      v41 = std::string::append(&v91, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v92.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v92.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v92, "' -d '");
      v44 = *&v43->__r_.__value_.__l.__data_;
      v93.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&v93.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = *(a1 + 23);
      if (v45 >= 0)
      {
        v46 = a1;
      }

      else
      {
        v46 = *a1;
      }

      if (v45 >= 0)
      {
        v47 = *(a1 + 23);
      }

      else
      {
        v47 = *(a1 + 8);
      }

      v48 = std::string::append(&v93, v46, v47);
      v49 = *&v48->__r_.__value_.__l.__data_;
      v94.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v94.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      v50 = std::string::append(&v94, "' -o ");
      v51 = *&v50->__r_.__value_.__l.__data_;
      v95.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
      *&v95.__r_.__value_.__l.__data_ = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      v52 = *(a2 + 23);
      if (v52 >= 0)
      {
        v53 = a2;
      }

      else
      {
        v53 = *a2;
      }

      if (v52 >= 0)
      {
        v54 = *(a2 + 23);
      }

      else
      {
        v54 = *(a2 + 8);
      }

      v55 = std::string::append(&v95, v53, v54);
      v56 = *&v55->__r_.__value_.__l.__data_;
      v96.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
      *&v96.__r_.__value_.__l.__data_ = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      v57 = std::string::append(&v96, " --url ");
      v58 = *&v57->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v58;
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v99;
      }

      else
      {
        v59 = v99.__r_.__value_.__r.__words[0];
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v99.__r_.__value_.__l.__size_;
      }

      v61 = std::string::append(&v97, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      v106.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&v106.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(&v106, " 2>&1");
      v64 = *&v63->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      siri::dialogengine::ExecuteShellCommand();
      if (siri::dialogengine::GetFileSize() > 499)
      {
        goto LABEL_123;
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v97.__r_.__value_.__l.__size_ == 3)
        {
          v65 = v97.__r_.__value_.__r.__words[0];
LABEL_114:
          data_low = LOWORD(v65->__r_.__value_.__l.__data_);
          v69 = v65->__r_.__value_.__s.__data_[2];
          if (data_low != 12338 || v69 != 48)
          {
            goto LABEL_118;
          }

LABEL_123:
          std::operator+<char>();
          v74 = std::string::append(&v96, "");
          v75 = *&v74->__r_.__value_.__l.__data_;
          v106.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
          *&v106.__r_.__value_.__l.__data_ = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          siri::dialogengine::Log::Info();
          if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v106.__r_.__value_.__l.__data_);
          }

          goto LABEL_154;
        }
      }

      else if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) == 3)
      {
        v65 = &v97;
        goto LABEL_114;
      }

LABEL_118:
      siri::dialogengine::ReadFileToString();
      v71 = sub_1000062A0(&v106, 0, 1024, 0);
      v72 = &v96;
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v72 = v96.__r_.__value_.__r.__words[0];
      }

      v95.__r_.__value_.__r.__words[0] = v72;
      v95.__r_.__value_.__l.__size_ = v72;
      if (*(sub_10000F154(v71, &v95) + 88))
      {
        if (v107 > 0x11)
        {
          v73 = "Unknown error.";
        }

        else
        {
          v73 = off_100074D70[v107];
        }

        sub_10000143C(&v95, v73);
        v85 = sub_1000027F4(&std::cout, "Error: Invalid JSON returned from rendercat: ", 45);
        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = &v95;
        }

        else
        {
          v86 = v95.__r_.__value_.__r.__words[0];
        }

        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v87 = v95.__r_.__value_.__l.__size_;
        }

        v88 = sub_1000027F4(v85, v86, v87);
        std::ios_base::getloc((v88 + *(*v88 - 24)));
        v89 = std::locale::use_facet(&v94, &std::ctype<char>::id);
        (v89->__vftable[2].~facet_0)(v89, 10);
        std::locale::~locale(&v94);
        std::ostream::put();
        std::ostream::flush();
        siri::dialogengine::DeleteFile();
      }

      else
      {
        sub_10000143C(&v94, "message");
        siri::dialogengine::ParseJSONString();
        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        sub_10000143C(&v93, "error");
        siri::dialogengine::ParseJSONString();
        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        v76 = sub_1000027F4(&std::cout, "Rendercat Error: ", 17);
        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = &v95;
        }

        else
        {
          v77 = v95.__r_.__value_.__r.__words[0];
        }

        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v78 = v95.__r_.__value_.__l.__size_;
        }

        v79 = sub_1000027F4(v76, v77, v78);
        v80 = sub_1000027F4(v79, " : ", 3);
        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = &v94;
        }

        else
        {
          v81 = v94.__r_.__value_.__r.__words[0];
        }

        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v82 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v82 = v94.__r_.__value_.__l.__size_;
        }

        v83 = sub_1000027F4(v80, v81, v82);
        std::ios_base::getloc((v83 + *(*v83 - 24)));
        v84 = std::locale::use_facet(&v93, &std::ctype<char>::id);
        (v84->__vftable[2].~facet_0)(v84, 10);
        std::locale::~locale(&v93);
        std::ostream::put();
        std::ostream::flush();
        siri::dialogengine::DeleteFile();
        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      sub_100007964(&v106);
LABEL_154:
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      goto LABEL_160;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_64;
  }

  v66 = sub_1000027F4(&std::cout, "Error: No snippet data provided for rendercat", 45);
  std::ios_base::getloc((v66 + *(*v66 - 24)));
  v67 = std::locale::use_facet(&v106, &std::ctype<char>::id);
  (v67->__vftable[2].~facet_0)(v67, 10);
  std::locale::~locale(&v106);
  std::ostream::put();
  std::ostream::flush();
LABEL_160:
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (v101 < 0)
  {
    operator delete(__p);
  }

  if (v103 < 0)
  {
    operator delete(v102[0]);
  }

LABEL_166:
  if (v105 < 0)
  {
    operator delete(v104);
  }
}

void sub_10000EE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::locale a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_100007964(v71 - 192);
  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (*(v71 - 217) < 0)
  {
    operator delete(*(v71 - 240));
  }

  if (*(v71 - 193) < 0)
  {
    operator delete(*(v71 - 216));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000F154(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v9 = a1;
  v10 = v3;
  v11 = 0u;
  v12 = 0u;
  v13 = 256;
  v14 = 0;
  v15 = 0;
  v16 = 2;
  v4 = sub_10000F24C(&v10, a2, a1);
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  if (!v4)
  {
    v6 = *(a1 + 64);
    if (v6 - *(a1 + 56) != 24)
    {
      __assert_rtn("ParseStream", "document.h", 2259, "stack_.GetSize() == sizeof(ValueType)");
    }

    *(a1 + 64) = v6 - 24;
    if (v6 - 24 != a1)
    {
      v7 = *(v6 - 24);
      *(a1 + 16) = *(v6 - 8);
      *a1 = v7;
      *(v6 - 2) = 0;
    }
  }

  sub_1000078CC(&v9);
  sub_100006334(&v10);
  return a1;
}

void sub_10000F228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_1000078CC(&a9);
  sub_100006334(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F24C(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  for (i = *a2; ; ++i)
  {
    v6 = *i;
    v7 = v6 > 0x20;
    v8 = (1 << v6) & 0x100002600;
    if (v7 || v8 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*i)
  {
    v15 = 1;
LABEL_19:
    v16 = &i[-a2[1]];
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    goto LABEL_16;
  }

  sub_10000F33C(a1, a2, a3);
  if (!*(a1 + 48))
  {
    for (i = *a2; ; ++i)
    {
      v10 = *i;
      v7 = v10 > 0x20;
      v11 = (1 << v10) & 0x100002600;
      if (v7 || v11 == 0)
      {
        break;
      }
    }

    *a2 = i;
    if (*i)
    {
      v15 = 2;
      goto LABEL_19;
    }
  }

LABEL_16:
  result = *(a1 + 48);
  v14 = *(a1 + 56);
  *(a1 + 24) = *(a1 + 16);
  return result;
}

void sub_10000F33C(uint64_t result, void *a2, uint64_t a3)
{
  v3 = **a2;
  if (v3 > 0x6D)
  {
    switch(v3)
    {
      case '{':
        sub_10000F4C4(result, a2, a3);
        return;
      case 't':
        sub_1000066B0(result, a2, a3);
        return;
      case 'n':
        sub_10000660C(result, a2, a3);
        return;
    }
  }

  else
  {
    switch(v3)
    {
      case '""':
        sub_10000F39C(result, a2, a3);
        return;
      case '[':
        sub_10000F71C(result, a2, a3);
        return;
      case 'f':
        sub_10000675C(result, a2, a3);
        return;
    }
  }

  sub_1000601A0(result, a2, a3);
}

double sub_10000F39C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v11 = *a2;
  v12 = a2;
  if (*v11 != 34)
  {
    __assert_rtn("ParseString", "reader.h", 961, "s.Peek() == '\\'");
  }

  *&v11 = v11 + 1;
  v9 = a1;
  v10 = 0;
  sub_10000F8F0(a1, &v11, &v9);
  if (!*(a1 + 48))
  {
    v5 = v10;
    v6 = sub_1000070A0(&v9);
    if ((sub_1000070D4(a3, v6, v5 - 1, 1) & 1) == 0)
    {
      if (*(a1 + 48))
      {
        __assert_rtn("ParseString", "reader.h", 983, "!HasParseError()");
      }

      v8 = v11 - *(&v11 + 1);
      *(a1 + 48) = 16;
      *(a1 + 56) = v8;
    }
  }

  result = *&v11;
  *v12 = v11;
  return result;
}

void sub_10000F4C4(uint64_t a1, uint64_t a2, void *a3)
{
  if (**a2 != 123)
  {
    sub_10005FD00();
  }

  ++*a2;
  v6 = sub_100006D00(a3 + 5, 1);
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  *(v6 + 22) = 3;
  for (i = *a2; ; ++i)
  {
    v8 = *i;
    v9 = v8 > 0x20;
    v10 = (1 << v8) & 0x100002600;
    if (v9 || v10 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*(a1 + 48))
  {
    v12 = *i;
    if (v12 == 125)
    {
      *a2 = i + 1;
      if (sub_1000076CC(a3, 0))
      {
        return;
      }

      if (*(a1 + 48))
      {
        sub_100060970();
      }

LABEL_46:
      i = *a2;
      v29 = 16;
LABEL_52:
      v30 = &i[-*(a2 + 8)];
      *(a1 + 48) = v29;
      *(a1 + 56) = v30;
      return;
    }

    if (v12 != 34)
    {
LABEL_44:
      v29 = 4;
      goto LABEL_52;
    }

    v13 = 0;
    while (1)
    {
      v14.n128_f64[0] = sub_10000F39C(a1, a2, a3);
      if (*(a1 + 48))
      {
        break;
      }

      for (i = *a2; ; ++i)
      {
        v15 = *i;
        v9 = v15 > 0x20;
        v16 = (1 << v15) & 0x100002600;
        if (v9 || v16 == 0)
        {
          break;
        }
      }

      *a2 = i;
      if (*i != 58)
      {
        v29 = 5;
        goto LABEL_52;
      }

      v18 = i + 1;
      *a2 = v18;
      while (1)
      {
        v19 = *v18;
        v9 = v19 > 0x20;
        v20 = (1 << v19) & 0x100002600;
        if (v9 || v20 == 0)
        {
          break;
        }

        ++v18;
      }

      *a2 = v18;
      sub_10000F33C(a1, a2, a3, v14);
      if (*(a1 + 48))
      {
        return;
      }

      for (i = *a2; ; ++i)
      {
        v22 = *i;
        v9 = v22 > 0x20;
        v23 = (1 << v22) & 0x100002600;
        if (v9 || v23 == 0)
        {
          break;
        }
      }

      *a2 = i;
      ++v13;
      v25 = *i;
      if (v25 != 44)
      {
        if (v25 != 125)
        {
          v29 = 6;
          goto LABEL_52;
        }

        *a2 = i + 1;
        if (sub_1000076CC(a3, v13))
        {
          return;
        }

        if (*(a1 + 48))
        {
          sub_100060944();
        }

        goto LABEL_46;
      }

      *a2 = ++i;
      while (1)
      {
        v26 = *i;
        v9 = v26 > 0x20;
        v27 = (1 << v26) & 0x100002600;
        if (v9 || v27 == 0)
        {
          break;
        }

        ++i;
      }

      *a2 = i;
      if (*i != 34)
      {
        goto LABEL_44;
      }
    }
  }
}

uint64_t sub_10000F71C(uint64_t a1, unsigned __int8 **a2, void *a3)
{
  if (**a2 != 91)
  {
    sub_10005FDD4();
  }

  ++*a2;
  result = sub_100006D00(a3 + 5, 1);
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 22) = 4;
  for (i = *a2; ; ++i)
  {
    v9 = *i;
    v10 = v9 > 0x20;
    v11 = (1 << v9) & 0x100002600;
    if (v10 || v11 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*(a1 + 48))
  {
    if (*i == 93)
    {
      *a2 = i + 1;
      result = sub_1000077A8(a3, 0);
      if (result)
      {
        return result;
      }

      if (*(a1 + 48))
      {
        sub_1000609C8();
      }

      goto LABEL_31;
    }

    result = sub_10000F33C(a1, a2, a3, v7);
    if (!*(a1 + 48))
    {
      v14 = 0;
      while (1)
      {
        for (j = *a2; ; ++j)
        {
          v16 = *j;
          v10 = v16 > 0x20;
          v17 = (1 << v16) & 0x100002600;
          if (v10 || v17 == 0)
          {
            break;
          }
        }

        ++v14;
        *a2 = j;
        v19 = *j;
        if (v19 != 44)
        {
          break;
        }

        v20 = j + 1;
        *a2 = v20;
        while (1)
        {
          v21 = *v20;
          v10 = v21 > 0x20;
          v22 = (1 << v21) & 0x100002600;
          if (v10 || v22 == 0)
          {
            break;
          }

          ++v20;
        }

        *a2 = v20;
        result = sub_10000F33C(a1, a2, a3, v13);
        if (*(a1 + 48))
        {
          return result;
        }
      }

      if (v19 != 93)
      {
        v24 = 7;
        goto LABEL_32;
      }

      *a2 = j + 1;
      result = sub_1000077A8(a3, v14);
      if ((result & 1) == 0)
      {
        if (*(a1 + 48))
        {
          sub_10006099C();
        }

LABEL_31:
        j = *a2;
        v24 = 16;
LABEL_32:
        v25 = (j - a2[1]);
        *(a1 + 48) = v24;
        *(a1 + 56) = v25;
      }
    }
  }

  return result;
}

_DWORD *sub_10000F8F0(_DWORD *result, unsigned __int8 **a2, void **a3)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
      v6 = *a2;
      v7 = **a2;
      if (v7 == 92)
      {
        break;
      }

      if (v7 == 34)
      {
        *a2 = v6 + 1;
        result = sub_100007344(*a3, 1);
        *result = 0;
        ++*(a3 + 2);
        return result;
      }

      if (v7 <= 0x1F)
      {
        v14 = *(v5 + 48);
        if (**a2)
        {
          if (v14)
          {
            sub_10006006C();
          }

          v15 = v6 - a2[1];
          v16 = 12;
        }

        else
        {
          if (v14)
          {
            sub_100060098();
          }

          v15 = v6 - a2[1];
          v16 = 11;
        }

        *(v5 + 48) = v16;
        goto LABEL_25;
      }

      *a2 = v6 + 1;
      v8 = *v6;
LABEL_6:
      result = sub_100007344(*a3, 1);
      *result = v8;
      ++*(a3 + 2);
    }

    v9 = a2[1];
    *a2 = v6 + 1;
    v10 = v6[1];
    v8 = byte_100063488[v10];
    if (v8)
    {
      *a2 = v6 + 2;
      goto LABEL_6;
    }

    v11 = v6 - v9;
    if (v10 != 117)
    {
      return sub_100060028((v5 + 48), v5, v11);
    }

    *a2 = v6 + 2;
    v18 = v6 - v9;
    result = sub_100007144(v5, a2, v11);
    if (*(v5 + 48))
    {
      return result;
    }

    v12 = result;
    if (result >> 10 == 54)
    {
      v17 = result;
      v13 = *a2;
      if (**a2 != 92)
      {
        goto LABEL_30;
      }

      *a2 = v13 + 1;
      if (v13[1] != 117)
      {
        goto LABEL_30;
      }

      *a2 = v13 + 2;
      result = sub_100007144(v5, a2, v18);
      if (*(v5 + 48))
      {
        return result;
      }

      if ((result - 57344) <= 0xFFFFFBFF)
      {
LABEL_30:
        *(v5 + 48) = 9;
        v15 = v18;
LABEL_25:
        *(v5 + 56) = v15;
        return result;
      }

      v12 = result + (v17 << 10) - 56613888;
    }

    result = sub_1000071E0(a3, v12);
  }
}

uint64_t sub_10000FAE0(uint64_t a1, _DWORD *a2)
{
  sub_10000143C(v13, "--randomSeed");
  v3 = siri::dialogengine::OptionExists();
  v4 = v3;
  if (v14 < 0)
  {
    operator delete(v13[0]);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v3)
  {
LABEL_3:
    sub_10000143C(__p, "--randomSeed");
    siri::dialogengine::GetOption();
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v5 = v13[1];
    }

    if (v5)
    {
      siri::dialogengine::StringToUInt();
      v8 = sub_1000027F4(&std::cout, "Error: the value of --randomSeed is not a number or is out of range", 67);
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v9 = std::locale::use_facet(__p, &std::ctype<char>::id);
      (v9->__vftable[2].~facet_0)(v9, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      if (a2)
      {
        *a2 = 0;
      }
    }

    else
    {
      v6 = sub_1000027F4(&std::cout, "Error: no value specified for option --randomSeed", 49);
      std::ios_base::getloc((v6 + *(*v6 - 24)));
      v7 = std::locale::use_facet(__p, &std::ctype<char>::id);
      (v7->__vftable[2].~facet_0)(v7, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      if (a2)
      {
        *a2 = 0;
      }
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    return 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 0;
}

void sub_10000FD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::locale::~locale(&a11);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10000FD6C(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_10000FE24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 71) < 0)
  {
    sub_100001C60(&__dst, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    __dst = *(v4 + 48);
  }

  memset(&__p, 0, sizeof(__p));
  if (siri::dialogengine::FileExists())
  {
    siri::dialogengine::ReadFileToString();
    goto LABEL_6;
  }

  sub_10000143C(&v104, "--json");
  v7 = siri::dialogengine::OptionExists();
  v8 = v7;
  if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v7)
    {
      goto LABEL_13;
    }

LABEL_27:
    sub_10000143C(&v104, "--renderVisualCat");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v104, "--renderVisualCat");
    if (siri::dialogengine::OptionExists())
    {
      if ((SBYTE7(v96) & 0x80u) == 0)
      {
        locale = BYTE7(v96);
      }

      else
      {
        locale = v95[1].__locale_;
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (!locale)
      {
        v10 = sub_1000027F4(&std::cout, "Error: No path given for rendered output", 40);
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v11 = std::locale::use_facet(&v104, &std::ctype<char>::id);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(&v104);
        std::ostream::put();
        std::ostream::flush();
        sub_10000143C(a2, &unk_10006B9FB);
LABEL_282:
        if ((SBYTE7(v96) & 0x80000000) == 0)
        {
          goto LABEL_285;
        }

        v39 = v95[0].__locale_;
        goto LABEL_284;
      }
    }

    else if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    sub_10000143C(v89, "--templateDir");
    siri::dialogengine::GetOption();
    siri::dialogengine::ExpandPath();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89[2]) < 0)
    {
      operator delete(v89[0]);
    }

    sub_10000143C(&v104, "--catId");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v104, "--visualCatId");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v104, "--locale");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    sub_10000143C(v89, "--params");
    siri::dialogengine::GetMultipleOptions();
    sub_10000143C(v80, " ");
    siri::dialogengine::StringJoin();
    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    v80[0] = &v104;
    sub_100002260(v80);
    if (SHIBYTE(v89[2]) < 0)
    {
      operator delete(v89[0]);
    }

    sub_10000143C(v89, "--globalParams");
    siri::dialogengine::GetMultipleOptions();
    sub_10000143C(v78, " ");
    siri::dialogengine::StringJoin();
    if (SHIBYTE(v79) < 0)
    {
      operator delete(v78[0]);
    }

    v78[0] = &v104;
    sub_100002260(v78);
    if (SHIBYTE(v89[2]) < 0)
    {
      operator delete(v89[0]);
    }

    sub_10000143C(&v104, "--resetState");
    v24 = siri::dialogengine::OptionExists();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v104, "--test");
    v25 = siri::dialogengine::OptionExists();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v104, "--debug");
    v26 = siri::dialogengine::OptionExists();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v104, "--createTrace");
    v27 = siri::dialogengine::OptionExists();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v104, "--labelMode");
    v28 = siri::dialogengine::OptionExists();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    v29 = v101;
    if ((v101 & 0x80u) != 0)
    {
      v29 = v100;
    }

    if (!v29)
    {
      v40 = sub_1000027F4(&std::cout, "Error: no --templateDir option specified", 40);
      std::ios_base::getloc((v40 + *(*v40 - 24)));
      v41 = std::locale::use_facet(&v104, &std::ctype<char>::id);
      (v41->__vftable[2].~facet_0)(v41, 10);
      std::locale::~locale(&v104);
      std::ostream::put();
      std::ostream::flush();
      sub_10000143C(a2, &unk_10006B9FB);
      goto LABEL_270;
    }

    v74 = v28;
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v88.__r_.__value_.__l.__size_;
    }

    v31 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (v31)
      {
        v32 = sub_1000027F4(&std::cout, "Warning: Both --catId and --visualCatId options specified; Ignoring --visualCatId", 81);
        std::ios_base::getloc((v32 + *(*v32 - 24)));
        v33 = std::locale::use_facet(&v104, &std::ctype<char>::id);
        (v33->__vftable[2].~facet_0)(v33, 10);
        std::locale::~locale(&v104);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          *__str.__r_.__value_.__l.__data_ = 0;
          __str.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          __str.__r_.__value_.__s.__data_[0] = 0;
          *(&__str.__r_.__value_.__s + 23) = 0;
        }
      }
    }

    else
    {
      if (!v31)
      {
        v58 = "Error: no --catId or --visualCatId option specified";
        v59 = 51;
        goto LABEL_185;
      }

      std::string::operator=(&v88, &__str);
    }

    v42 = v86;
    if ((v86 & 0x80u) != 0)
    {
      v42 = v85[1];
    }

    if (v42)
    {
      v77 = 0;
      sub_10000143C(&v104, "--randomSeed");
      v43 = siri::dialogengine::OptionExists();
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (!v43 || (sub_10000FAE0(a1, &v77) & 1) != 0)
      {
        memset(v89, 0, sizeof(v89));
        v90 = 256;
        *&v104.__r_.__value_.__r.__words[1] = 0u;
        v105 = 0u;
        v104.__r_.__value_.__r.__words[0] = v89;
        v106 = 0;
        v107 = 512;
        v108 = 324;
        v109 = 0x2000;
        v110 = 4;
        sub_100011D10(&v104);
        sub_1000146E8(&v104, 5);
        sub_100014A18(&v104, "templateDir", 0xBu);
        if ((v101 & 0x80u) == 0)
        {
          v44 = &v99;
        }

        else
        {
          v44 = v99;
        }

        v45 = strlen(v44);
        sub_100014394(&v104, v44, v45);
        sub_1000146E8(&v104, 5);
        sub_100014A18(&v104, "catId", 5u);
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v88;
        }

        else
        {
          v46 = v88.__r_.__value_.__r.__words[0];
        }

        v47 = strlen(v46);
        sub_100014394(&v104, v46, v47);
        sub_1000146E8(&v104, 5);
        sub_100014A18(&v104, "locale", 6u);
        if ((v86 & 0x80u) == 0)
        {
          v48 = v85;
        }

        else
        {
          v48 = v85[0];
        }

        v49 = strlen(v48);
        sub_100014394(&v104, v48, v49);
        v50 = v84;
        if ((v84 & 0x80u) != 0)
        {
          v50 = v83;
        }

        if (v50)
        {
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "parameters", 0xAu);
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "<PARAMS>", 8u);
        }

        v51 = v81;
        if ((v81 & 0x80u) != 0)
        {
          v51 = v80[1];
        }

        if (v51)
        {
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "globalParameters", 0x10u);
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "<GLOBALPARAMS>", 0xEu);
        }

        if (v77)
        {
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "randomSeed", 0xAu);
          sub_100011DB0(&v104, v77);
        }

        if (v24)
        {
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "resetState", 0xAu);
          sub_1000146E8(&v104, 2);
          sub_100015D30(&v104, 1);
        }

        if (v25)
        {
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "test", 4u);
          sub_1000146E8(&v104, 2);
          sub_100015D30(&v104, 1);
        }

        if (v26)
        {
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "debug", 5u);
          sub_1000146E8(&v104, 2);
          sub_100015D30(&v104, 1);
        }

        if (v27)
        {
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "createTrace", 0xBu);
          sub_1000146E8(&v104, 2);
          sub_100015D30(&v104, 1);
        }

        if (v74)
        {
          sub_1000146E8(&v104, 5);
          sub_100014A18(&v104, "labelMode", 9u);
          sub_1000146E8(&v104, 2);
          sub_100015D30(&v104, 1);
        }

        if (!size)
        {
          sub_100011D64(&v104, "requestType");
          sub_100011D64(&v104, "visual");
        }

        v52 = BYTE7(v96);
        if (SBYTE7(v96) < 0)
        {
          v52 = v95[1].__locale_;
        }

        if (!v52)
        {
          goto LABEL_260;
        }

        sub_1000146E8(&v104, 5);
        sub_100014A18(&v104, "renderVisualCat", 0xFu);
        if ((SBYTE7(v96) & 0x80u) == 0)
        {
          v53 = v95;
        }

        else
        {
          v53 = v95[0].__locale_;
        }

        v54 = strlen(v53);
        sub_100014394(&v104, v53, v54);
        sub_10000143C(v78, "--renderDarkMode");
        v55 = siri::dialogengine::OptionExists();
        if (SHIBYTE(v79) < 0)
        {
          operator delete(v78[0]);
        }

        if (v55)
        {
          sub_100011D64(&v104, "renderDarkMode");
          sub_1000146E8(&v104, 2);
          sub_100015D30(&v104, 1);
        }

        sub_10000143C(&v75, "--renderDeviceClass");
        siri::dialogengine::GetOption();
        if (v76 < 0)
        {
          operator delete(v75.__locale_);
        }

        sub_10000143C(&v75, "--renderDeviceClass");
        if (siri::dialogengine::OptionExists())
        {
          if (v79 >= 0)
          {
            v56 = HIBYTE(v79);
          }

          else
          {
            v56 = v78[1];
          }

          if (v76 < 0)
          {
            operator delete(v75.__locale_);
          }

          if (v56)
          {
            sub_100011D64(&v104, "renderDeviceClass");
            if (v79 >= 0)
            {
              v57 = v78;
            }

            else
            {
              v57 = v78[0];
            }

            sub_100011D64(&v104, v57);
          }
        }

        else if (v76 < 0)
        {
          operator delete(v75.__locale_);
        }

        if (SHIBYTE(v79) < 0)
        {
          operator delete(v78[0]);
        }

        sub_10000143C(&v75, "--renderDeviceTrain");
        siri::dialogengine::GetOption();
        if (v76 < 0)
        {
          operator delete(v75.__locale_);
        }

        sub_10000143C(&v75, "--renderDeviceTrain");
        if (siri::dialogengine::OptionExists())
        {
          if (v79 >= 0)
          {
            v62 = HIBYTE(v79);
          }

          else
          {
            v62 = v78[1];
          }

          if (v76 < 0)
          {
            operator delete(v75.__locale_);
          }

          if (v62)
          {
            sub_100011D64(&v104, "renderDeviceTrain");
            if (v79 >= 0)
            {
              v63 = v78;
            }

            else
            {
              v63 = v78[0];
            }

            sub_100011D64(&v104, v63);
            if (SHIBYTE(v79) < 0)
            {
              operator delete(v78[0]);
            }

            sub_10000143C(&v75, "--renderOrientation");
            siri::dialogengine::GetOption();
            if (v76 < 0)
            {
              operator delete(v75.__locale_);
            }

            sub_10000143C(&v75, "--renderOrientation");
            if (siri::dialogengine::OptionExists())
            {
              if (v79 >= 0)
              {
                v64 = HIBYTE(v79);
              }

              else
              {
                v64 = v78[1];
              }

              if (v76 < 0)
              {
                operator delete(v75.__locale_);
              }

              if (v64)
              {
                sub_100011D64(&v104, "renderOrientation");
                if (v79 >= 0)
                {
                  v65 = v78;
                }

                else
                {
                  v65 = v78[0];
                }

                sub_100011D64(&v104, v65);
              }
            }

            else if (v76 < 0)
            {
              operator delete(v75.__locale_);
            }

            if (SHIBYTE(v79) < 0)
            {
              operator delete(v78[0]);
            }

            sub_10000143C(&v75, "--renderContext");
            siri::dialogengine::GetOption();
            if (v76 < 0)
            {
              operator delete(v75.__locale_);
            }

            sub_10000143C(&v75, "--renderContext");
            if (siri::dialogengine::OptionExists())
            {
              if (v79 >= 0)
              {
                v69 = HIBYTE(v79);
              }

              else
              {
                v69 = v78[1];
              }

              if (v76 < 0)
              {
                operator delete(v75.__locale_);
              }

              if (v69)
              {
                sub_100011D64(&v104, "renderContext");
                if (v79 >= 0)
                {
                  v70 = v78;
                }

                else
                {
                  v70 = v78[0];
                }

                sub_100011D64(&v104, v70);
              }
            }

            else if (v76 < 0)
            {
              operator delete(v75.__locale_);
            }

            if (SHIBYTE(v79) < 0)
            {
              operator delete(v78[0]);
            }

            sub_10000143C(&v75, "--renderScreenSize");
            siri::dialogengine::GetOption();
            if (v76 < 0)
            {
              operator delete(v75.__locale_);
            }

            sub_10000143C(&v75, "--renderScreenSize");
            if (siri::dialogengine::OptionExists())
            {
              if (v79 >= 0)
              {
                v71 = HIBYTE(v79);
              }

              else
              {
                v71 = v78[1];
              }

              if (v76 < 0)
              {
                operator delete(v75.__locale_);
              }

              if (v71)
              {
                sub_100011D64(&v104, "renderScreenSize");
                if (v79 >= 0)
                {
                  v72 = v78;
                }

                else
                {
                  v72 = v78[0];
                }

                sub_100011D64(&v104, v72);
              }
            }

            else if (v76 < 0)
            {
              operator delete(v75.__locale_);
            }

            if (SHIBYTE(v79) < 0)
            {
              operator delete(v78[0]);
            }

LABEL_260:
            sub_100011E30(&v104);
            v73 = sub_100011CCC(v89);
            sub_10000143C(a2, v73);
            sub_10000143C(&v75, "<PARAMS>");
            siri::dialogengine::StringReplace();
            if (*(a2 + 23) < 0)
            {
              operator delete(*a2);
            }

            *a2 = *v78;
            *(a2 + 16) = v79;
            HIBYTE(v79) = 0;
            LOBYTE(v78[0]) = 0;
            if (v76 < 0)
            {
              operator delete(v75.__locale_);
            }

            sub_10000143C(&v75, "<GLOBALPARAMS>");
            siri::dialogengine::StringReplace();
            if (*(a2 + 23) < 0)
            {
              operator delete(*a2);
            }

            *a2 = *v78;
            *(a2 + 16) = v79;
            HIBYTE(v79) = 0;
            LOBYTE(v78[0]) = 0;
            if ((v76 & 0x80000000) == 0)
            {
              goto LABEL_269;
            }

            v68 = v75.__locale_;
            goto LABEL_268;
          }
        }

        else if (v76 < 0)
        {
          operator delete(v75.__locale_);
        }

        v66 = sub_1000027F4(&std::cout, "Error: no --renderDeviceTrain option specified", 46);
        std::ios_base::getloc((v66 + *(*v66 - 24)));
        v67 = std::locale::use_facet(&v75, &std::ctype<char>::id);
        (v67->__vftable[2].~facet_0)(v67, 10);
        std::locale::~locale(&v75);
        std::ostream::put();
        std::ostream::flush();
        sub_10000143C(a2, &unk_10006B9FB);
        if ((SHIBYTE(v79) & 0x80000000) == 0)
        {
LABEL_269:
          sub_100006334(&v104.__r_.__value_.__l.__size_);
          sub_100006334(v89);
          goto LABEL_270;
        }

        v68 = v78[0];
LABEL_268:
        operator delete(v68);
        goto LABEL_269;
      }

      sub_10000143C(a2, &unk_10006B9FB);
LABEL_270:
      if (v81 < 0)
      {
        operator delete(v80[0]);
      }

      if (v84 < 0)
      {
        operator delete(v82);
      }

      if (v86 < 0)
      {
        operator delete(v85[0]);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (v101 < 0)
      {
        operator delete(v99);
      }

      goto LABEL_282;
    }

    v58 = "Error: no --locale option specified";
    v59 = 35;
LABEL_185:
    v60 = sub_1000027F4(&std::cout, v58, v59);
    std::ios_base::getloc((v60 + *(*v60 - 24)));
    v61 = std::locale::use_facet(&v104, &std::ctype<char>::id);
    (v61->__vftable[2].~facet_0)(v61, 10);
    std::locale::~locale(&v104);
    std::ostream::put();
    std::ostream::flush();
    sub_10000143C(a2, &unk_10006B9FB);
    goto LABEL_270;
  }

  operator delete(v104.__r_.__value_.__l.__data_);
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_13:
  sub_10000143C(v89, "--json");
  siri::dialogengine::GetOption();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  __dst = v104;
  *(&v104.__r_.__value_.__s + 23) = 0;
  v104.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v89[2]) < 0)
  {
    operator delete(v89[0]);
  }

  if (siri::dialogengine::FileExists())
  {
    siri::dialogengine::ReadFileToString();
LABEL_6:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v104;
    LODWORD(v88.__r_.__value_.__l.__data_) = 0;
    sub_10000143C(&v104, "--randomSeed");
    v5 = siri::dialogengine::OptionExists();
    v6 = v5;
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    else if (!v5)
    {
      goto LABEL_21;
    }

    if ((sub_10000FAE0(a1, &v88) & 1) == 0)
    {
      sub_10000143C(a2, &unk_10006B9FB);
      goto LABEL_285;
    }

LABEL_21:
    sub_10000143C(v89, "--templateDir");
    siri::dialogengine::GetOption();
    siri::dialogengine::ExpandPath();
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89[2]) < 0)
    {
      operator delete(v89[0]);
      if (v6)
      {
LABEL_41:
        v13 = sub_1000062A0(&v104, 0, 1024, 0);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v89[0] = p_p;
        v89[1] = p_p;
        if (*(sub_10000F154(v13, v89) + 88))
        {
          if (v111 > 0x11)
          {
            v15 = "Unknown error.";
          }

          else
          {
            v15 = off_100074E00[v111];
          }

          sub_10000143C(v89, v15);
          v34 = sub_1000027F4(&std::cout, "Error: Invalid JSON request - ignoring request: ", 48);
          if (SHIBYTE(v89[2]) >= 0)
          {
            v35 = v89;
          }

          else
          {
            v35 = v89[0];
          }

          if (SHIBYTE(v89[2]) >= 0)
          {
            v36 = HIBYTE(v89[2]);
          }

          else
          {
            v36 = v89[1];
          }

          v37 = sub_1000027F4(v34, v35, v36);
          std::ios_base::getloc((v37 + *(*v37 - 24)));
          v38 = std::locale::use_facet(v95, &std::ctype<char>::id);
          (v38->__vftable[2].~facet_0)(v38, 10);
          std::locale::~locale(v95);
          std::ostream::put();
          std::ostream::flush();
          sub_10000143C(a2, &unk_10006B9FB);
          if (SHIBYTE(v89[2]) < 0)
          {
            operator delete(v89[0]);
          }

          sub_100007964(&v104);
          goto LABEL_116;
        }

        if (v6)
        {
          sub_10000143C(v89, "randomSeed");
          siri::dialogengine::SetJSONUintVal();
          if (SHIBYTE(v89[2]) < 0)
          {
            operator delete(v89[0]);
          }
        }

        v16 = v101;
        if ((v101 & 0x80u) != 0)
        {
          v16 = v100;
        }

        if (v16)
        {
          sub_10000143C(v89, "templateDir");
          siri::dialogengine::SetJSONString();
          if (SHIBYTE(v89[2]) < 0)
          {
            operator delete(v89[0]);
          }
        }

        *&v95[0].__locale_ = 0u;
        v96 = 0u;
        v97 = 0;
        v98 = 256;
        memset(&v89[1], 0, 32);
        v89[0] = v95;
        v90 = 0;
        v91 = 512;
        v92 = 324;
        v93 = 0x2000;
        v94 = 4;
        sub_100011964(&v104, v89);
        v17 = sub_100011CCC(v95);
        std::string::assign(&__p, v17);
        sub_100006334(&v89[1]);
        sub_100006334(v95);
        sub_100007964(&v104);
LABEL_56:
        *a2 = __p;
        memset(&__p, 0, sizeof(__p));
LABEL_116:
        if ((v101 & 0x80000000) == 0)
        {
          goto LABEL_285;
        }

        v39 = v99;
LABEL_284:
        operator delete(v39);
        goto LABEL_285;
      }
    }

    else if (v6)
    {
      goto LABEL_41;
    }

    v12 = v101;
    if ((v101 & 0x80u) != 0)
    {
      v12 = v100;
    }

    if (!v12)
    {
      goto LABEL_56;
    }

    goto LABEL_41;
  }

  v18 = sub_1000027F4(&std::cout, "Error: Specified JSON file does not exist (", 43);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = __dst.__r_.__value_.__l.__size_;
  }

  v21 = sub_1000027F4(v18, p_dst, v20);
  v22 = sub_1000027F4(v21, ")", 1);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v104, &std::ctype<char>::id);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v104);
  std::ostream::put();
  std::ostream::flush();
  sub_10000143C(a2, &unk_10006B9FB);
LABEL_285:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1000114E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::locale a61, uint64_t a62, int a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100006334(v74 + 8);
  sub_100006334(&a51);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a66 < 0)
  {
    operator delete(a61.__locale_);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (*(v75 - 217) < 0)
  {
    operator delete(*(v75 - 240));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100011964(unsigned int *a1, uint64_t *a2)
{
  v4 = *(a1 + 11);
  v5 = v4 & 7;
  if (v5 <= 3)
  {
    if ((v4 & 7u) <= 1)
    {
      if ((v4 & 7) == 0)
      {
        sub_1000146E8(a2, 0);

        return sub_100014850(a2);
      }

      sub_1000146E8(a2, 1);
      v8 = a2;
      v9 = 0;
      goto LABEL_30;
    }

    if (v5 == 2)
    {
      sub_1000146E8(a2, 2);
      v8 = a2;
      v9 = 1;
LABEL_30:

      return sub_100015D30(v8, v9);
    }

    if (sub_100011D10(a2))
    {
      if (*(a1 + 11) != 3)
      {
        sub_100060A78();
      }

      v14 = *(a1 + 1);
      while (v14 != *(a1 + 1) + 48 * *a1)
      {
        if ((*(v14 + 22) & 0x400) == 0)
        {
          sub_100060AD0();
        }

        v15 = sub_100013D60(v14);
        v16 = sub_100013F4C(v14);
        v17 = *(v14 + 22);
        if (!sub_100014394(a2, v15, v16))
        {
          return 0;
        }

        v18 = v14 + 24;
        if ((sub_100011964(v18, a2) & 1) == 0)
        {
          return 0;
        }

        v14 = v18 + 24;
        if (*(a1 + 11) != 3)
        {
          sub_100060AA4();
        }
      }

      return sub_100011E30(a2);
    }

    return 0;
  }

  if ((v4 & 7u) > 5)
  {
    if (v5 != 6)
    {
      sub_1000609F4();
    }

    if ((*(a1 + 11) & 0x200) != 0)
    {
      v19 = *a1;

      return sub_1000143F0(a2, v19);
    }

    else if ((v4 & 0x20) != 0)
    {
      v20 = *a1;

      return sub_100014528(a2, v20);
    }

    else if ((v4 & 0x40) != 0)
    {
      v21 = *a1;

      return sub_100011DB0(a2, v21);
    }

    else
    {
      v10 = *a1;
      if ((v4 & 0x80) != 0)
      {

        return sub_1000145C8(a2, v10);
      }

      else
      {

        return sub_100014668(a2, v10);
      }
    }
  }

  if (v5 != 4)
  {
    v11 = sub_100013D60(a1);
    v12 = sub_100013F4C(a1);
    v13 = (*(a1 + 11) >> 11) & 1;

    return sub_100014394(a2, v11, v12);
  }

  if (!sub_100014284(a2))
  {
    return 0;
  }

  if (*(a1 + 11) != 4)
  {
    sub_100060A20();
  }

  for (i = *(a1 + 1); i != *(a1 + 1) + 24 * *a1; i += 24)
  {
    if (!sub_100011964(i, a2))
    {
      return 0;
    }

    if (*(a1 + 11) != 4)
    {
      sub_100060A4C();
    }
  }

  return sub_1000142DC(a2);
}

uint64_t sub_100011CCC(void *a1)
{
  *sub_100007344(a1, 1) = 0;
  result = a1[2];
  v3 = a1[3];
  if (v3 == result)
  {
    sub_10005FBCC();
  }

  a1[3] = v3 - 1;
  return result;
}

uint64_t sub_100011D10(void **a1)
{
  sub_1000146E8(a1, 3);
  v2 = sub_1000148E0(a1 + 1, 1);
  *v2 = 0;
  *(v2 + 8) = 0;
  *sub_100007344(*a1, 1) = 123;
  return 1;
}

uint64_t sub_100011D64(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100014394(a1, __s, v4);
}

uint64_t sub_100011DB0(void **a1, unsigned int a2)
{
  sub_1000146E8(a1, 6);
  v4 = sub_100007344(*a1, 10);
  v5 = sub_100015438(a2, v4);
  v6 = (*a1)[3];
  if (v6 - (*a1)[2] < (v4 - v5 + 10))
  {
    sub_10005FBCC();
  }

  (*a1)[3] = v6 - (v4 - v5) - 10;
  return 1;
}

uint64_t sub_100011E30(void **a1)
{
  v1 = a1[4];
  if ((v1 - a1[3]) <= 0xF)
  {
    sub_100060B54();
  }

  if (*(v1 - 8) == 1)
  {
    sub_100060B28();
  }

  v4 = *(v1 - 2);
  v2 = v1 - 16;
  v3 = v4;
  if (v4)
  {
    sub_100060AFC();
  }

  a1[4] = v2;
  if (v3)
  {
    *sub_100007344(*a1, 1) = 10;
    v6 = ((a1[4] - a1[3]) >> 4) * *(a1 + 16);
    v7 = *(a1 + 61);
    v8 = sub_100007344(*a1, v6);
    memset(v8, v7, v6);
  }

  *sub_100007344(*a1, 1) = 125;
  return 1;
}

uint64_t sub_100011EEC(void *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  sub_10000143C(&v60, "--debug");
  v6 = siri::dialogengine::OptionExists();
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v60.__locale_);
  }

  siri::dialogengine::Log::SetOutputToStdout(v6, v5);
  sub_10000143C(&v60, "--executeVisualCAT");
  v7 = siri::dialogengine::OptionExists();
  v8 = v7;
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v60.__locale_);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v7)
  {
LABEL_10:
    v9 = sub_1000027F4(&std::cout, "{ dialogResult:", 17);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v60, &std::ctype<char>::id);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v60);
    std::ostream::put();
    std::ostream::flush();
  }

LABEL_11:
  sub_100012A0C(a1, v44);
  sub_10000143C(&v60, "--executeVisualCAT");
  v11 = siri::dialogengine::OptionExists();
  v12 = v11;
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v60.__locale_);
    if (!v12)
    {
      goto LABEL_69;
    }
  }

  else if (!v11)
  {
    goto LABEL_69;
  }

  __p[0] = 0;
  __p[1] = 0;
  v43 = 0;
  memset(&v41, 0, sizeof(v41));
  v13 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v13 = v44[1];
  }

  if (v13)
  {
    v14 = sub_1000062A0(&v60, 0, 1024, 0);
    v15 = v44;
    if ((v45 & 0x80u) != 0)
    {
      v15 = v44[0];
    }

    v58[0] = v15;
    v58[1] = v15;
    if (*(sub_10000F154(v14, v58) + 88))
    {
      if (v64 > 0x11)
      {
        v16 = "Unknown error.";
      }

      else
      {
        v16 = off_100074E00[v64];
      }

      sub_10000143C(v58, v16);
      v29 = sub_1000027F4(&std::cout, "Error: Invalid JSON response: ", 30);
      if (v59 >= 0)
      {
        v30 = v58;
      }

      else
      {
        v30 = v58[0];
      }

      if (v59 >= 0)
      {
        v31 = HIBYTE(v59);
      }

      else
      {
        v31 = v58[1];
      }

      v32 = sub_1000027F4(v29, v30, v31);
      std::ios_base::getloc((v32 + *(*v32 - 24)));
      v33 = std::locale::use_facet(&v53, &std::ctype<char>::id);
      (v33->__vftable[2].~facet_0)(v33, 10);
      std::locale::~locale(&v53);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v59) < 0)
      {
        operator delete(v58[0]);
      }
    }

    else if (sub_100013F80(&v60, "visual_refs") && *(sub_100013CD0(&v60, "visual_refs") + 22) == 4)
    {
      v17 = sub_100013CD0(&v60, "visual_refs");
      if (*(v17 + 11) != 4)
      {
        __assert_rtn("GetArray", "document.h", 1723, "IsArray()");
      }

      if (*v17)
      {
        v18 = *(v17 + 1);
        v19 = &v18[6 * *v17];
        do
        {
          sub_10000143C(&v53, "id");
          siri::dialogengine::ParseJSONString();
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *v58;
          v43 = v59;
          HIBYTE(v59) = 0;
          LOBYTE(v58[0]) = 0;
          if (SHIBYTE(v54[1]) < 0)
          {
            operator delete(v53.__locale_);
          }

          sub_1000062A0(v58, 0, 1024, 0);
          v53.__locale_ = "{}";
          v54[0] = "{}";
          sub_10000F154(v58, &v53);
          v20 = sub_100013CD0(v18, "parameters");
          if (!v63)
          {
            __assert_rtn("GetAllocator", "document.h", 2407, "allocator_");
          }

          v54[0] = "parameters";
          v54[1] = 0x405000000000000;
          v53.__locale_ = 10;
          sub_10001407C(v58, &v53, v20, v63);
          memset(v50, 0, sizeof(v50));
          v51 = 0;
          v52 = 256;
          memset(v54, 0, 40);
          v53.__locale_ = v50;
          v54[5] = 512;
          v55 = 324;
          v56 = 0x2000;
          v57 = 4;
          sub_100011964(v58, &v53);
          v21 = sub_100011CCC(v50);
          sub_10000143C(&__str, v21);
          siri::dialogengine::StringTrim();
          siri::dialogengine::StringTrim();
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v48;
          *(&v48.__r_.__value_.__s + 23) = 0;
          v48.__r_.__value_.__s.__data_[0] = 0;
          if (v47 < 0)
          {
            operator delete(v46);
          }

          v22 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          v23 = __str.__r_.__value_.__r.__words[0];
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
            size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          if (size >= 1)
          {
            v26 = p_str + size;
            v27 = p_str;
            do
            {
              v28 = memchr(v27, 123, size);
              if (!v28)
              {
                break;
              }

              if (*v28 == 123)
              {
                if (v28 == v26 || v28 - p_str == -1)
                {
                  break;
                }

                std::string::basic_string(&v48, &__str, v28 - p_str, 0xFFFFFFFFFFFFFFFFLL, &v46);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                __str = v48;
                std::string::operator=(&v41, &__str);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                sub_100006334(v54);
                sub_100006334(v50);
                sub_100007964(v58);
                sub_100007964(&v60);
                v60.__locale_ = 0;
                v61 = 0;
                v62 = 0;
                sub_10000143C(v58, "execute");
                sub_100013BA0(&v60, v58);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v58[0]);
                }

                sub_10000143C(v58, "--templateDir");
                sub_100013BA0(&v60, v58);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v58[0]);
                }

                sub_10000143C(&v53, "--templateDir");
                siri::dialogengine::GetOption();
                sub_100013BA0(&v60, v58);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v58[0]);
                }

                if (SHIBYTE(v54[1]) < 0)
                {
                  operator delete(v53.__locale_);
                }

                sub_10000143C(v58, "--visualCatId");
                sub_100013BA0(&v60, v58);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v58[0]);
                }

                sub_1000012A8(&v60, __p);
                sub_10000143C(v58, "--params");
                sub_100013BA0(&v60, v58);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v58[0]);
                }

                sub_1000012A8(&v60, &v41);
                v38 = sub_1000027F4(&std::cout, ", visualResult:", 17);
                sub_10000FD6C(v38);
                sub_100012A0C(&v60, &v39);
                if (v40 < 0)
                {
                  operator delete(v39);
                }

                v58[0] = &v60;
                sub_100002260(v58);
                goto LABEL_65;
              }

              v27 = (v28 + 1);
              size = v26 - v27;
            }

            while (v26 - v27 >= 1);
          }

          if (v22 < 0)
          {
            operator delete(v23);
          }

          sub_100006334(v54);
          sub_100006334(v50);
          sub_100007964(v58);
          v18 += 6;
        }

        while (v18 != v19);
      }
    }

    sub_100007964(&v60);
  }

LABEL_65:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_69:
  sub_10000143C(&v60, "--executeVisualCAT");
  v34 = siri::dialogengine::OptionExists();
  v35 = v34;
  if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
    if (!v34)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  operator delete(v60.__locale_);
  if (v35)
  {
LABEL_73:
    v36 = sub_1000027F4(&std::cout, "}", 1);
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v37 = std::locale::use_facet(&v60, &std::ctype<char>::id);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(&v60);
    std::ostream::put();
    std::ostream::flush();
  }

LABEL_74:
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  return 1;
}

void sub_100012804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  __p = (v61 - 216);
  sub_100002260(&__p);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void sub_100012A0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000FE24(a1, v59);
  if ((SHIBYTE(v60) & 0x80000000) == 0)
  {
    if (HIBYTE(v60))
    {
      goto LABEL_5;
    }

LABEL_17:
    sub_10000143C(a2, &unk_10006B9FB);
    goto LABEL_214;
  }

  if (!v59[1])
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = CATExecute();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_10006B9FB;
  }

  sub_10000143C(a2, v5);
  free(v4);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = sub_1000027F4(&std::cout, v7, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(v88, &std::ctype<char>::id);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(v88);
  std::ostream::put();
  std::ostream::flush();
  sub_10000143C(&v85, "renderVisualCat");
  v11 = std::string::insert(&v85, 0, "");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v86.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v86.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v86, ":");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v89 = v13->__r_.__value_.__r.__words[2];
  *&v88[0].__locale_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (siri::dialogengine::StringContains())
  {
    sub_10000143C(&__p, "type: visual,");
    v16 = siri::dialogengine::StringContains();
    if (v84 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v16 = 0;
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88[0].__locale_);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
    if (!v16)
    {
      goto LABEL_214;
    }
  }

  else if (!v16)
  {
    goto LABEL_214;
  }

  if (SHIBYTE(v60) < 0)
  {
    sub_100001C60(__dst, v59[0], v59[1]);
  }

  else
  {
    *__dst = *v59;
    v58 = v60;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100001C60(v55, *a2, *(a2 + 8));
  }

  else
  {
    *v55 = *a2;
    v56 = *(a2 + 16);
  }

  siri::dialogengine::Log::Info("Preparing to render VisualCat...", v15);
  sub_1000062A0(v88, 0, 1024, 0);
  sub_1000062A0(&v86, 0, 1024, 0);
  v17 = v55;
  if (v56 < 0)
  {
    v17 = v55[0];
  }

  v85.__r_.__value_.__r.__words[0] = v17;
  v85.__r_.__value_.__l.__size_ = v17;
  if (*(sub_10000F154(&v86, &v85) + 88))
  {
    if (v87 > 0x11)
    {
      v18 = "Unknown error.";
    }

    else
    {
      v18 = off_100074E00[v87];
    }

    sub_10000143C(&v85, v18);
    v21 = sub_1000027F4(&std::cout, "Error: Invalid JSON result: ", 28);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v85;
    }

    else
    {
      v22 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v85.__r_.__value_.__l.__size_;
    }

LABEL_50:
    v24 = sub_1000027F4(v21, v22, size);
    std::ios_base::getloc((v24 + *(*v24 - 24)));
    v25 = std::locale::use_facet(&__p, &std::ctype<char>::id);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_208;
  }

  v19 = __dst;
  if (v58 < 0)
  {
    v19 = __dst[0];
  }

  v85.__r_.__value_.__r.__words[0] = v19;
  v85.__r_.__value_.__l.__size_ = v19;
  if (*(sub_10000F154(v88, &v85) + 88))
  {
    if (v90 > 0x11)
    {
      v20 = "Unknown error.";
    }

    else
    {
      v20 = off_100074E00[v90];
    }

    sub_10000143C(&v85, v20);
    v21 = sub_1000027F4(&std::cout, "Error: Invalid JSON request: ", 29);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v85;
    }

    else
    {
      v22 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v85.__r_.__value_.__l.__size_;
    }

    goto LABEL_50;
  }

  sub_10000143C(&__p, "renderVisualCat");
  siri::dialogengine::ParseJSONString();
  if (v84 < 0)
  {
    operator delete(__p);
  }

  if ((siri::dialogengine::DirExists() & 1) == 0)
  {
    siri::dialogengine::DirName();
    v26 = siri::dialogengine::DirExists();
    if (v84 < 0)
    {
      operator delete(__p);
    }

    if ((v26 & 1) == 0)
    {
      v34 = sub_1000027F4(&std::cout, "Error: Destination directory doesn't exist: ", 44);
      siri::dialogengine::DirName();
      if ((v84 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v84 & 0x80u) == 0)
      {
        v36 = v84;
      }

      else
      {
        v36 = v83;
      }

      v37 = sub_1000027F4(v34, p_p, v36);
      std::ios_base::getloc((v37 + *(*v37 - 24)));
      v38 = std::locale::use_facet(&v80, &std::ctype<char>::id);
      (v38->__vftable[2].~facet_0)(v38, 10);
      std::locale::~locale(&v80);
      std::ostream::put();
      std::ostream::flush();
      goto LABEL_206;
    }
  }

  sub_10000143C(&v80, "catId");
  siri::dialogengine::ParseJSONString();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  sub_10000143C(&v79, "status");
  siri::dialogengine::ParseJSONString();
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81) < 0)
  {
    v28 = v80;
    if (*(&v80 + 1) != 7)
    {
      goto LABEL_205;
    }

    v30 = *v80 != 1667462515 || *(v80 + 3) != 1936942435;
    operator delete(v80);
    if (v30)
    {
      goto LABEL_206;
    }
  }

  else
  {
    if (SHIBYTE(v81) != 7)
    {
      goto LABEL_206;
    }

    if (v80 != 1667462515 || *(&v80 + 3) != 1936942435)
    {
      goto LABEL_206;
    }
  }

  v31 = sub_100013CD0(&v86, "response");
  sub_10000143C(&v79, "renderDeviceTrain");
  siri::dialogengine::ParseJSONString();
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v78, "renderDeviceClass");
  siri::dialogengine::ParseJSONString();
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v32 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = v79.__r_.__value_.__l.__size_;
  }

  if (!v32)
  {
    std::string::assign(&v79, "iPhone");
  }

  sub_10000143C(v76, "renderContext");
  siri::dialogengine::ParseJSONString();
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76[0]);
  }

  v33 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = v78.__r_.__value_.__l.__size_;
  }

  if (!v33)
  {
    std::string::assign(&v78, "MockSiri");
  }

  sub_10000143C(&v74, "renderScreenSize");
  siri::dialogengine::ParseJSONString();
  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  sub_10000143C(&v73, "renderOrientation");
  siri::dialogengine::ParseJSONString();
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v73, "renderDarkMode");
  v54 = siri::dialogengine::ParseJSONBool();
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100001C60(&v73, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    v73 = v85;
  }

  if (siri::dialogengine::DirExists())
  {
    if ((v84 & 0x80u) == 0)
    {
      v39 = v84;
    }

    else
    {
      v39 = v83;
    }

    sub_1000094C0(&v71, v39 + 11);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v71;
    }

    else
    {
      v40 = v71.__r_.__value_.__r.__words[0];
    }

    if (v39)
    {
      if ((v84 & 0x80u) == 0)
      {
        v41 = &__p;
      }

      else
      {
        v41 = __p;
      }

      memmove(v40, v41, v39);
    }

    strcpy(v40 + v39, "-render.png");
    siri::dialogengine::JoinPath();
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    v73 = v72;
    *(&v72.__r_.__value_.__s + 23) = 0;
    v72.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }
  }

  if (*(v31 + 11) != 4)
  {
    __assert_rtn("Begin", "document.h", 1591, "IsArray()");
  }

  for (i = *(v31 + 1); i != (*(v31 + 1) + 24 * *v31); i += 6)
  {
    memset(&v72, 0, sizeof(v72));
    memset(&v71, 0, sizeof(v71));
    if (*(i + 11) != 3)
    {
      v52 = 1155;
      v53 = "MemberBegin";
LABEL_217:
      __assert_rtn(v53, "document.h", v52, "IsObject()");
    }

    v43 = *(i + 1);
    while (v43 != *(i + 1) + 48 * *i)
    {
      v44 = sub_100013D60(v43);
      if (!strcmp(v44, "type"))
      {
        v45 = sub_100013D60(v43 + 24);
        std::string::assign(&v72, v45);
      }

      v46 = sub_100013D60(v43);
      if (!strcmp(v46, "data"))
      {
        v47 = sub_100013D60(v43 + 24);
        std::string::assign(&v71, v47);
      }

      v43 += 48;
      if (*(i + 11) != 3)
      {
        v52 = 1158;
        v53 = "MemberEnd";
        goto LABEL_217;
      }
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v72.__r_.__value_.__l.__size_ != 6)
      {
        goto LABEL_187;
      }

      v48 = v72.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) != 6)
      {
        goto LABEL_187;
      }

      v48 = &v72;
    }

    data = v48->__r_.__value_.__l.__data_;
    v50 = WORD2(v48->__r_.__value_.__r.__words[0]);
    if (data == 1970497910 && v50 == 27745)
    {
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100001C60(&v70, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
      }

      else
      {
        v70 = v71;
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100001C60(&v69, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
      }

      else
      {
        v69 = v73;
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100001C60(&v68, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
      }

      else
      {
        v68 = v79;
      }

      if (SHIBYTE(v81) < 0)
      {
        sub_100001C60(v66, v80, *(&v80 + 1));
      }

      else
      {
        *v66 = v80;
        v67 = v81;
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100001C60(&v65, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
      }

      else
      {
        v65 = v78;
      }

      if (SHIBYTE(v77) < 0)
      {
        sub_100001C60(v63, v76[0], v76[1]);
      }

      else
      {
        *v63 = *v76;
        v64 = v77;
      }

      if (SHIBYTE(v75) < 0)
      {
        sub_100001C60(v61, v74, *(&v74 + 1));
      }

      else
      {
        *v61 = v74;
        v62 = v75;
      }

      sub_10000E344(&v70, &v69, &v68, v66, &v65, v63, v61, v54);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(v63[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }
    }

LABEL_187:
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (*(v31 + 11) != 4)
    {
      __assert_rtn("End", "document.h", 1594, "IsArray()");
    }
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81) < 0)
  {
    v28 = v80;
LABEL_205:
    operator delete(v28);
  }

LABEL_206:
  if (v84 < 0)
  {
    operator delete(__p);
  }

LABEL_208:
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  sub_100007964(&v86);
  sub_100007964(v88);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_214:
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
  }
}

void sub_1000137F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  sub_100007964(&STACK[0x230]);
  sub_100007964(v81 - 208);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v80 + 23) < 0)
  {
    operator delete(*v80);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100013BA0(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000020B0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_1000020C8(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_100002760(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_100013CD0(unsigned int *a1, char *a2)
{
  v4 = a2;
  v5 = sub_100013DE8(&v4, a2);
  v6[2] = 0x405000000000000;
  v6[1] = v4;
  v6[0] = v5;
  return sub_100013D84(a1, v6);
}

uint64_t sub_100013D60(uint64_t result)
{
  if ((*(result + 22) & 0x400) == 0)
  {
    sub_100060B80();
  }

  if ((*(result + 22) & 0x1000) == 0)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100013D84(unsigned int *a1, uint64_t a2)
{
  sub_100013E0C(a1, a2, &v4);
  if (*(a1 + 11) != 3)
  {
    sub_100060BAC();
  }

  if (v4 == *(a1 + 1) + 48 * *a1)
  {
    sub_100060BD8();
  }

  return v4 + 24;
}

size_t sub_100013DE8(int a1, char *__s)
{
  if (!__s)
  {
    sub_100060C04();
  }

  return strlen(__s);
}

BOOL sub_100013E0C@<W0>(_BOOL8 result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(result + 22) != 3)
  {
    sub_100060C30();
  }

  if ((*(a2 + 22) & 0x400) == 0)
  {
    sub_100060C8C();
  }

  v5 = result;
  v6 = *(result + 8);
  while (v6 != *(v5 + 1) + 48 * *v5)
  {
    result = sub_100013EAC(a2, v6);
    if (result)
    {
      break;
    }

    v6 += 48;
    if (*(v5 + 11) != 3)
    {
      sub_100060C5C(v6, a3);
    }
  }

  *a3 = v6;
  return result;
}

BOOL sub_100013EAC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 22) & 0x400) == 0)
  {
    sub_100060CE4();
  }

  if ((*(a2 + 22) & 0x400) == 0)
  {
    sub_100060CB8();
  }

  v4 = sub_100013F4C(a1);
  if (v4 != sub_100013F4C(a2))
  {
    return 0;
  }

  v5 = sub_100013D60(a1);
  v6 = sub_100013D60(a2);
  return v5 == v6 || memcmp(v5, v6, v4) == 0;
}

uint64_t sub_100013F4C(unsigned int *a1)
{
  if ((*(a1 + 11) & 0x400) == 0)
  {
    sub_100060D10();
  }

  if ((*(a1 + 11) & 0x1000) != 0)
  {
    return (21 - *(a1 + 21));
  }

  else
  {
    return *a1;
  }
}

BOOL sub_100013F80(unsigned int *a1, char *a2)
{
  sub_100013FDC(a1, a2, &v4);
  if (*(a1 + 11) != 3)
  {
    sub_100060AA4();
  }

  return v4 != *(a1 + 1) + 48 * *a1;
}

BOOL sub_100013FDC@<W0>(_BOOL8 a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2;
  v7 = sub_100013DE8(&v6, a2);
  v8[2] = 0x405000000000000;
  v8[1] = v6;
  v8[0] = v7;
  return sub_100013E0C(a1, v8, a3);
}

unsigned int *sub_10001407C(unsigned int *a1, __int128 *a2, __int128 *a3, size_t *a4)
{
  if (*(a1 + 11) != 3)
  {
    sub_100060D3C();
  }

  if ((*(a2 + 11) & 0x400) == 0)
  {
    sub_100060D68();
  }

  v7 = *a1;
  v8 = a1[1];
  if (*a1 >= v8)
  {
    if (v8)
    {
      v9 = v8 + ((v8 + 1) >> 1);
    }

    else
    {
      v9 = 16;
    }

    sub_100014144(a1, v9, a4);
    v7 = *a1;
  }

  v10 = *(a1 + 1);
  v11 = v10 + 48 * v7;
  v12 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *v11 = v12;
  *(a2 + 11) = 0;
  v13 = v10 + 48 * *a1;
  v14 = *a3;
  *(v13 + 40) = *(a3 + 2);
  *(v13 + 24) = v14;
  *(a3 + 11) = 0;
  ++*a1;
  return a1;
}

uint64_t sub_100014144(uint64_t a1, unsigned int a2, size_t *a3)
{
  if (*(a1 + 22) != 3)
  {
    sub_100060D94();
  }

  v5 = *(a1 + 4);
  if (v5 < a2)
  {
    *(a1 + 8) = sub_1000141B0(a3, *(a1 + 8), 48 * v5, 48 * a2);
    *(a1 + 4) = a2;
  }

  return a1;
}

void *sub_1000141B0(size_t *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a2;
      v5 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
      v6 = (a4 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v6 <= v5)
      {
        return v4;
      }

      v7 = *a1;
      v8 = *(*a1 + 8);
      if ((*a1 + v8 - v5 + 24) == v4)
      {
        v9 = v8 + v6 - v5;
        if (v9 <= *v7)
        {
          v7[1] = v9;
          return v4;
        }
      }

      v10 = sub_100007568(a1, v6);
      if (v10)
      {
        if (v5)
        {

          return memcpy(v10, v4, v5);
        }

        return v10;
      }
    }

    return 0;
  }

  return sub_100007568(a1, a4);
}

uint64_t sub_100014284(void **a1)
{
  sub_1000146E8(a1, 4);
  v2 = sub_1000148E0(a1 + 1, 1);
  *v2 = 0;
  *(v2 + 8) = 1;
  *sub_100007344(*a1, 1) = 91;
  return 1;
}

uint64_t sub_1000142DC(void **a1)
{
  v1 = a1[4];
  if ((v1 - a1[3]) <= 0xF)
  {
    sub_100060DEC();
  }

  if ((*(v1 - 8) & 1) == 0)
  {
    sub_100060DC0();
  }

  v3 = *(v1 - 2);
  a1[4] = v1 - 16;
  if (v3 && (*(a1 + 68) & 1) == 0)
  {
    *sub_100007344(*a1, 1) = 10;
    v4 = ((a1[4] - a1[3]) >> 4) * *(a1 + 16);
    v5 = *(a1 + 61);
    v6 = sub_100007344(*a1, v4);
    memset(v6, v5, v4);
  }

  *sub_100007344(*a1, 1) = 93;
  return 1;
}

uint64_t sub_100014394(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    sub_100060E18();
  }

  sub_1000146E8(a1, 5);

  return sub_100014A18(a1, a2, a3);
}

BOOL sub_1000143F0(void **a1, double a2)
{
  sub_1000146E8(a1, 6);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v5 = sub_100007344(*a1, 25);
    v6 = *(a1 + 14);
    if (v6 <= 0)
    {
      sub_100060E44();
    }

    v7 = v5;
    if (a2 == 0.0)
    {
      if ((*&a2 & 0x8000000000000000) != 0)
      {
        *v5 = 45;
        v8 = v5 + 1;
      }

      else
      {
        v8 = v5;
      }

      *v8 = 11824;
      v8[2] = 48;
      v9 = v8 + 3;
    }

    else
    {
      if (a2 < 0.0)
      {
        *v5 = 45;
        v11 = v5 + 1;
        v10 = -a2;
      }

      else
      {
        v10 = a2;
        v11 = v5;
      }

      v14 = 0;
      sub_100014AFC(v11, &v14 + 1, &v14, v10);
      v9 = sub_100014CAC(v11, SHIDWORD(v14), v14, v6);
    }

    v12 = (*a1)[3];
    if (v12 - (*a1)[2] < (v7 - v9 + 25))
    {
      sub_10005FBCC();
    }

    (*a1)[3] = v12 - (v7 - v9) - 25;
  }

  return (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

uint64_t sub_100014528(void **a1, unsigned int a2)
{
  sub_1000146E8(a1, 6);
  v4 = sub_100007344(*a1, 11);
  if (!v4)
  {
    sub_100060E70();
  }

  v5 = v4;
  if ((a2 & 0x80000000) != 0)
  {
    *v4 = 45;
    v6 = v4 + 1;
    a2 = -a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = sub_100015438(a2, v6);
  v8 = (*a1)[3];
  if (v8 - (*a1)[2] < (v5 - v7 + 11))
  {
    sub_10005FBCC();
  }

  (*a1)[3] = v8 - (v5 - v7) - 11;
  return 1;
}

uint64_t sub_1000145C8(void **a1, unint64_t a2)
{
  sub_1000146E8(a1, 6);
  v4 = sub_100007344(*a1, 21);
  if (!v4)
  {
    sub_100060E9C();
  }

  v5 = v4;
  if ((a2 & 0x8000000000000000) != 0)
  {
    *v4 = 45;
    v6 = v4 + 1;
    a2 = -a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = sub_1000156EC(a2, v6);
  v8 = (*a1)[3];
  if (v8 - (*a1)[2] < (v5 - v7 + 21))
  {
    sub_10005FBCC();
  }

  (*a1)[3] = v8 - (v5 - v7) - 21;
  return 1;
}

uint64_t sub_100014668(void **a1, unint64_t a2)
{
  sub_1000146E8(a1, 6);
  v4 = sub_100007344(*a1, 20);
  v5 = sub_1000156EC(a2, v4);
  v6 = (*a1)[3];
  if (v6 - (*a1)[2] < (v4 - v5 + 20))
  {
    sub_10005FBCC();
  }

  (*a1)[3] = v6 - (v4 - v5) - 20;
  return 1;
}

void **sub_1000146E8(void **result, int a2)
{
  v2 = result;
  v3 = result[4];
  v4 = v3 - result[3];
  if (v4)
  {
    if (v4 <= 0xF)
    {
      sub_100060174();
    }

    v6 = *(v3 - 2);
    if (*(v3 - 8) == 1)
    {
      if (v6)
      {
        result = sub_100007344(*result, 1);
        *result = 44;
        if (*(v2 + 68))
        {
          result = sub_100007344(*v2, 1);
          *result = 32;
        }
      }

      if (*(v2 + 68))
      {
        goto LABEL_21;
      }

      *sub_100007344(*v2, 1) = 10;
    }

    else
    {
      v7 = 10;
      if (v6)
      {
        v8 = sub_100007344(*result, 1);
        if (v6)
        {
          v9 = 58;
        }

        else
        {
          v9 = 44;
        }

        if (v6)
        {
          v7 = 32;
        }

        else
        {
          v7 = 10;
        }

        *v8 = v9;
      }

      result = sub_100007344(*v2, 1);
      *result = v7;
      if (*(v3 - 16))
      {
        goto LABEL_21;
      }
    }

    v10 = ((v2[4] - v2[3]) >> 4) * *(v2 + 16);
    v11 = *v2;
    v12 = *(v2 + 61);
    v13 = sub_100007344(v11, v10);
    result = memset(v13, v12, v10);
LABEL_21:
    v14 = *(v3 - 2);
    if ((*(v3 - 8) & 1) == 0 && a2 != 5 && (v14 & 1) == 0)
    {
      sub_100060EC8();
    }

    *(v3 - 2) = v14 + 1;
    return result;
  }

  if (*(result + 60) == 1)
  {
    sub_100060EF4();
  }

  *(result + 60) = 1;
  return result;
}

uint64_t sub_100014850(uint64_t *a1)
{
  v2 = *a1;
  if ((v2[4] - v2[3]) <= 3)
  {
    sub_1000073E0(v2, 4);
    v2 = *a1;
  }

  *sub_1000073A0(v2, 1) = 110;
  *sub_1000073A0(*a1, 1) = 117;
  *sub_1000073A0(*a1, 1) = 108;
  *sub_1000073A0(*a1, 1) = 108;
  return 1;
}

uint64_t sub_1000148E0(void *a1, uint64_t a2)
{
  if (a1[4] - a1[3] < 16 * a2)
  {
    sub_100014980(a1, a2);
  }

  return sub_10001493C(a1, a2);
}

uint64_t sub_10001493C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10005FFFC();
  }

  if (16 * a2 > *(a1 + 32) - v2)
  {
    sub_10005FFD0();
  }

  *(a1 + 24) = v2 + 16 * a2;
  return v2;
}

char *sub_100014980(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = a1[3] + 16 * a2 - v2;
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return sub_100006E48(a1, v5);
}

uint64_t sub_100014A18(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v7 = 6 * a3 + 2;
  if (v6[4] - v6[3] < v7)
  {
    sub_1000073E0(v6, v7);
    v6 = *a1;
  }

  *sub_1000073A0(v6, 1) = 34;
  if (a3)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = *(a2 + v8);
      v11 = a0123456789abcd[v10 + 16];
      v12 = sub_1000073A0(*a1, 1);
      if (v11)
      {
        sub_100060F20(v12, a1, v11, v10);
      }

      else
      {
        *v12 = v10;
      }

      ++v8;
    }

    while (v8 < v9);
  }

  *sub_1000073A0(*a1, 1) = 34;
  return 1;
}

uint64_t sub_100014AFC(uint64_t a1, int *a2, _DWORD *a3, double a4)
{
  if (((*&a4 >> 52) & 0x7FF) != 0)
  {
    v7 = *&a4 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v7 = *&a4 & 0xFFFFFFFFFFFFFLL;
  }

  if (((*&a4 >> 52) & 0x7FF) != 0)
  {
    v8 = ((*&a4 >> 52) & 0x7FF) - 1075;
  }

  else
  {
    v8 = -1074;
  }

  v32 = v7;
  v33 = v8;
  v34 = (2 * (v7 & 0x1FFFFFFFFFFFFFLL)) | 1;
  v35 = v8 - 1;
  v9 = sub_1000153EC(&v34);
  v11 = 2 * v7 - 1;
  if (v7 == 0x10000000000000)
  {
    v12 = -2;
  }

  else
  {
    v12 = -1;
  }

  if (v7 == 0x10000000000000)
  {
    v11 = 0x3FFFFFFFFFFFFFLL;
  }

  v30 = v9;
  v31 = v10;
  v34 = v11 << (v8 - v10 + v12);
  v35 = v10;
  v13 = (-61 - v10) * 0.301029996 + 347.0;
  v14 = v13;
  if (v13 > v13)
  {
    ++v14;
  }

  v15 = (v14 >> 3) + 1;
  *a3 = 348 - 8 * v15;
  if (v15 >= 0x57)
  {
    sub_100060FD0();
  }

  v16 = qword_1000636B0[v15];
  v17 = word_100063968[v15];
  v28 = v16;
  v29 = v17;
  v24 = sub_100014F3C(&v32);
  v25 = v18;
  v26 = sub_100014F6C(&v24, &v28);
  v27 = v19;
  v20 = sub_100014F6C(&v30, &v28);
  v25 = v21;
  v22 = sub_100014F6C(&v34, &v28);
  v24 = v20 - 1;
  return sub_100014FCC(&v26, &v24, v20 - 1 + ~v22, a1, a2, a3);
}

char *sub_100014CAC(char *__src, int a2, int a3, int a4)
{
  v8 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v8 <= 21)
  {
    if (a3)
    {
      v9 = &__src[a2];
      if (v8 <= a2 + 1)
      {
        v10 = a2 + 1;
      }

      else
      {
        v10 = a3 + a2;
      }

      memset(v9, 48, (v10 + ~a2) + 1);
    }

    v11 = &__src[v8];
    v12 = 12334;
    goto LABEL_9;
  }

  v14 = v8 - 1;
  if ((v8 - 1) > 0x14)
  {
    if (v8 == 0 || v8 >= 0xFFFFFFFB)
    {
      v18 = 2 - v8;
      memmove(&__src[v18], __src, a2);
      *__src = 11824;
      if (v8 < 0)
      {
        if (v18 <= 3)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2 - v8;
        }

        memset(__src + 2, 48, (v19 - 2));
      }

      if (-a3 <= a4)
      {
        return &__src[v18 + a2];
      }

      if (a4 >= 2)
      {
        LODWORD(v20) = a4 + 2;
        while (1)
        {
          v20 = (v20 - 1);
          if (__src[v20] != 48)
          {
            break;
          }

          if (v20 < 4)
          {
            return __src + 3;
          }
        }

        v17 = &__src[v20];
        return v17 + 1;
      }

      return __src + 3;
    }

    if (v8 < -a4)
    {
      *__src = 11824;
      __src[2] = 48;
      return __src + 3;
    }

    if (a2 == 1)
    {
      __src[1] = 101;
      if ((v14 & 0x80000000) == 0)
      {
        v11 = __src + 2;
        goto LABEL_44;
      }

      v11 = __src + 3;
      __src[2] = 45;
    }

    else
    {
      memmove(__src + 2, __src + 1, a2 - 1);
      __src[1] = 46;
      v22 = &__src[a2];
      v22[1] = 101;
      if ((v14 & 0x80000000) == 0)
      {
        v11 = v22 + 2;
        goto LABEL_44;
      }

      v11 = v22 + 3;
      v22[2] = 45;
    }

    v14 = 1 - v8;
LABEL_44:
    if (v14 < 0x64)
    {
      if (v14 >= 0xA)
      {
        v12 = *&a00010203040506[2 * v14];
LABEL_9:
        *v11 = v12;
        return v11 + 2;
      }

      *v11 = v14 | 0x30;
      return v11 + 1;
    }

    else
    {
      *v11 = v14 / 0x64 + 48;
      *(v11 + 1) = *&a00010203040506[2 * (v14 % 0x64)];
      return v11 + 3;
    }
  }

  v15 = (v8 + 1);
  v16 = &__src[v8];
  memmove(&__src[v15], v16, -a3);
  *v16 = 46;
  if (a4 + a3 >= 0)
  {
    v17 = &__src[a2];
    return v17 + 1;
  }

  if (a4 < 2)
  {
    return v16 + 2;
  }

  v21 = v8 + a4;
  result = &__src[v8 + 1 + a4];
  while (__src[v21] == 48)
  {
    --v21;
    --result;
    if (v21 <= v15)
    {
      return v16 + 2;
    }
  }

  return result;
}

unint64_t sub_100014F3C(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    sub_100060FFC();
  }

  v2 = __clz(v1);
  v3 = (*(a1 + 8) - v2);
  return v1 << v2;
}

unint64_t sub_100014F6C(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((((*a2 * *a1) >> 32) + v5 + v4 + 0x80000000) >> 32);
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return v6;
}

uint64_t sub_100014FCC(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, int *a5, _DWORD *a6)
{
  v6 = -*(a2 + 2);
  v7 = 1;
  v8 = 1 << -*(a2 + 8);
  v9 = *a2;
  v10 = *a1;
  result = *a2 >> -*(a2 + 8);
  v12 = (v8 - 1) & *a2;
  if (result >= 0xA)
  {
    if (result >= 0x64)
    {
      if (result >= 0x3E8)
      {
        if (result >> 4 >= 0x271)
        {
          if (result >= 0x186A0)
          {
            if (result >= 0xF4240)
            {
              if (result >= 0x989680)
              {
                if (result < 0x5F5E100)
                {
                  v7 = 8;
                }

                else
                {
                  v7 = 9;
                }
              }

              else
              {
                v7 = 7;
              }
            }

            else
            {
              v7 = 6;
            }
          }

          else
          {
            v7 = 5;
          }
        }

        else
        {
          v7 = 4;
        }
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 2;
    }
  }

  v13 = v9 - v10;
  *a5 = 0;
  while (v7 > 0)
  {
    if (v7 <= 4)
    {
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v14 = result / 0x64;
          v16 = result % 0x64;
        }

        else
        {
          v14 = result / 0x3E8;
          v16 = result % 0x3E8;
        }

        goto LABEL_38;
      }

      if (v7 != 1)
      {
        v14 = result / 0xA;
        v16 = result % 0xA;
        goto LABEL_38;
      }

      v16 = 0;
LABEL_39:
      v17 = *a5;
      if (result)
      {
        v18 = result + 48;
        result = v16;
      }

      else
      {
        result = v16;
        if (!v17)
        {
          goto LABEL_46;
        }

LABEL_44:
        v18 = 48;
      }

      *a5 = v17 + 1;
      *(a4 + v17) = v18;
      goto LABEL_46;
    }

    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        v14 = result / 0x2710;
        v16 = result % 0x2710;
      }

      else
      {
        v14 = result / 0x186A0;
        v16 = result % 0x186A0;
      }

      goto LABEL_38;
    }

    switch(v7)
    {
      case 7:
        v14 = result / 0xF4240;
        v15 = 1000000;
        goto LABEL_37;
      case 8:
        v14 = result / 0x989680;
        v15 = 10000000;
LABEL_37:
        v16 = result - v14 * v15;
LABEL_38:
        LODWORD(result) = v14;
        goto LABEL_39;
      case 9:
        v14 = result / 0x5F5E100;
        v15 = 100000000;
        goto LABEL_37;
    }

    v17 = *a5;
    if (*a5)
    {
      goto LABEL_44;
    }

LABEL_46:
    --v7;
    v19 = result << v6;
    if (a3 >= v19 + v12)
    {
      *a6 += v7;
      if (v19 + v12 < v13)
      {
        v20 = dword_100063A18[v7] << v6;
        if (a3 - (v19 + v12) >= v20)
        {
          v21 = *a5;
          v22 = v12 + v19;
          v23 = v13 - v22;
          v24 = v22 + v20;
          v25 = a3 - v24;
          v26 = v10 - v9;
          do
          {
            if (v24 >= v13 && v23 <= v26 + v24)
            {
              break;
            }

            --*(a4 - 1 + v21);
            if (v24 >= v13)
            {
              break;
            }

            v23 -= v20;
            v24 += v20;
            v27 = v25 >= v20;
            v25 -= v20;
          }

          while (v27);
        }
      }

      return result;
    }
  }

  v28 = 0;
  do
  {
    v29 = a3;
    v30 = 10 * v12;
    v31 = *a5;
    if ((v30 >> v6))
    {
      v32 = 0;
    }

    else
    {
      v32 = v31 == 0;
    }

    if (!v32)
    {
      *a5 = v31 + 1;
      *(a4 + v31) = (v30 >> v6) + 48;
    }

    a3 *= 10;
    v12 = v30 & (v8 - 1);
    ++v28;
  }

  while (10 * v29 <= v12);
  *a6 -= v28;
  if ((1 - v28) < -7)
  {
    v33 = 0;
  }

  else
  {
    v33 = dword_100063A18[v28];
  }

  if (10 * v29 - v12 >= v8)
  {
    v34 = v33 * v13;
    v35 = v33 * v13 - v12;
    if (v33 * v13 > v12)
    {
      v36 = *a5;
      v37 = v8 + v12;
      result = -v37;
      v38 = 10 * v29 - v37;
      v39 = -(v33 * v13);
      do
      {
        if (v37 >= v34 && v35 <= v39 + v37)
        {
          break;
        }

        --*(a4 - 1 + v36);
        if (v37 >= v34)
        {
          break;
        }

        v35 -= v8;
        v37 += v8;
        v27 = v38 >= v8;
        v38 -= v8;
      }

      while (v27);
    }
  }

  return result;
}

uint64_t sub_1000153EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if ((*a1 & 0x20000000000000) == 0)
  {
    v3 = __clz(v2 & 0x1FFFFFFFFFFFFFLL) ^ 0x3F;
    v2 <<= 53 - v3;
    v4 = v3 - 53;
    do
    {
      v1 = (v1 - 1) | v1 & 0xFFFFFFFF00000000;
    }

    while (!__CFADD__(v4++, 1));
  }

  return v2 << 10;
}

_BYTE *sub_100015438(unsigned int a1, _BYTE *a2)
{
  if (!a2)
  {
    sub_100061028();
  }

  if (a1 >> 4 <= 0x270)
  {
    if (a1 < 0x3E8)
    {
      if (a1 < 0x64)
      {
        if (a1 < 0xA)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *a2++ = a00010203040506[2 * (a1 / 0x64u)];
    }

    *a2++ = a00010203040506[2 * (a1 / 0x64u) + 1];
LABEL_10:
    *a2++ = a00010203040506[2 * (a1 % 0x64u)];
LABEL_11:
    *a2 = a00010203040506[(2 * (a1 % 0x64u)) + 1];
    return a2 + 1;
  }

  if (a1 < 0x5F5E100)
  {
    v2 = (a1 / 0x7A120uLL) & 0x3FFE;
    if (a1 < 0x989680)
    {
      if (a1 < 0xF4240)
      {
        if (a1 >> 5 < 0xC35)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      *a2++ = a00010203040506[v2];
    }

    *a2++ = a00010203040506[v2 + 1];
LABEL_16:
    *a2++ = a00010203040506[2 * ((a1 / 0x2710) % 0x64u)];
LABEL_17:
    *a2 = a00010203040506[(2 * ((a1 / 0x2710) % 0x64u)) + 1];
    a2[1] = a00010203040506[2 * (a1 % 0x2710 / 0x64)];
    a2[2] = a00010203040506[2 * (a1 % 0x2710 / 0x64) + 1];
    a2[3] = a00010203040506[2 * (a1 % 0x2710 % 0x64)];
    a2[4] = a00010203040506[(2 * (a1 % 0x2710 % 0x64)) + 1];
    return a2 + 5;
  }

  v4 = a1 / 0x5F5E100;
  v5 = a1 % 0x5F5E100;
  if (a1 < 0x3B9ACA00)
  {
    *a2 = v4 | 0x30;
    v6 = a2 + 1;
  }

  else
  {
    *a2 = *&a00010203040506[2 * v4];
    v6 = a2 + 2;
  }

  v7 = v6;
  *v6 = *&a00010203040506[(v5 / 0x7A120uLL) & 0x3FFE];
  *(v6 + 1) = *&a00010203040506[2 * ((v5 / 0x2710) % 0x64u)];
  *(v6 + 2) = *&a00010203040506[2 * (v5 % 0x2710 / 0x64)];
  v6[6] = a00010203040506[2 * (v5 % 0x2710 % 0x64)];
  v3 = v6 + 8;
  v7[7] = a00010203040506[(2 * (v5 % 0x2710 % 0x64)) + 1];
  return v3;
}

_BYTE *sub_1000156EC(unint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    sub_100061054();
  }

  if (a1 >= 0x5F5E100)
  {
    if (a1 < 0x2386F26FC10000)
    {
      v3 = a1 % 0x5F5E100;
      v4 = a1 / 0x5F5E100;
      v5 = (v4 / 0x7A120uLL) & 0x3FFE;
      v6 = 2 * ((v4 / 0x2710) % 0x64u);
      v7 = 2 * (v4 % 0x2710 / 0x64);
      v8 = 2 * (v4 % 0x2710 % 0x64);
      v9 = v3 % 0x2710;
      v10 = (v3 / 0x7A120uLL) & 0x3FFE;
      v11 = 2 * ((v3 / 0x2710) % 0x64u);
      if (a1 < 0x38D7EA4C68000)
      {
        if (a1 < 0x5AF3107A4000)
        {
          if (a1 < 0x9184E72A000)
          {
            if (a1 < 0xE8D4A51000)
            {
              if (a1 < 0x174876E800)
              {
                if (a1 < 0x2540BE400)
                {
                  if (a1 < 0x3B9ACA00)
                  {
                    goto LABEL_24;
                  }

                  goto LABEL_23;
                }

LABEL_22:
                *a2++ = a00010203040506[v7 + 1];
LABEL_23:
                *a2++ = a00010203040506[v8];
LABEL_24:
                *a2 = a00010203040506[v8 + 1];
                a2[1] = a00010203040506[v10];
                a2[2] = a00010203040506[v10 + 1];
                a2[3] = a00010203040506[v11];
                a2[4] = a00010203040506[v11 + 1];
                a2[5] = a00010203040506[2 * (v9 / 0x64u)];
                a2[6] = a00010203040506[2 * (v9 / 0x64u) + 1];
                a2[7] = a00010203040506[2 * (v9 % 0x64u)];
                a2[8] = a00010203040506[(2 * (v9 % 0x64u)) + 1];
                return a2 + 9;
              }

LABEL_21:
              *a2++ = a00010203040506[v7];
              goto LABEL_22;
            }

LABEL_20:
            *a2++ = a00010203040506[v6 + 1];
            goto LABEL_21;
          }

LABEL_19:
          *a2++ = a00010203040506[v6];
          goto LABEL_20;
        }
      }

      else
      {
        *a2++ = a00010203040506[v5];
      }

      *a2++ = a00010203040506[v5 + 1];
      goto LABEL_19;
    }

    v13 = a1 / 0x2386F26FC10000;
    v14 = a1 % 0x2386F26FC10000;
    if (a1 > 0x16345785D89FFFFLL)
    {
      if (a1 > 0xDE0B6B3A763FFFFLL)
      {
        v21 = (1311 * v13) >> 17;
        if (a1 > 0x8AC7230489E7FFFFLL)
        {
          v22 = 2 * (v13 - 100 * v21);
          *a2 = *&a00010203040506[2 * v21];
          a2[2] = a00010203040506[v22];
          v23 = a00010203040506[(v22 & 0xFFFE) + 1];
          v17 = a2 + 4;
          a2[3] = v23;
        }

        else
        {
          *a2 = v21 + 48;
          *(a2 + 1) = *&a00010203040506[2 * (v13 - 100 * v21)];
          v17 = a2 + 3;
        }

        goto LABEL_32;
      }

      *a2 = *&a00010203040506[2 * v13];
      v15 = a2 + 2;
    }

    else
    {
      *a2 = v13 | 0x30;
      v15 = a2 + 1;
    }

    v17 = v15;
LABEL_32:
    v18 = v14 % 0x5F5E100;
    v19 = v14 / 0x5F5E100;
    *v17 = *&a00010203040506[(v19 / 0x7A120uLL) & 0x3FFE];
    *(v17 + 1) = *&a00010203040506[2 * ((v19 / 0x2710) % 0x64u)];
    *(v17 + 2) = *&a00010203040506[2 * (v19 % 0x2710 / 0x64)];
    v17[6] = a00010203040506[2 * (v19 % 0x2710 % 0x64)];
    v17[7] = a00010203040506[(2 * (v19 % 0x2710 % 0x64)) + 1];
    *(v17 + 4) = *&a00010203040506[(v18 / 0x7A120uLL) & 0x3FFE];
    *(v17 + 5) = *&a00010203040506[2 * ((v18 / 0x2710) % 0x64u)];
    *(v17 + 6) = *&a00010203040506[2 * (v18 % 0x2710 / 0x64)];
    v17[14] = a00010203040506[2 * (v18 % 0x2710 % 0x64)];
    v16 = v17 + 16;
    v17[15] = a00010203040506[(2 * (v18 % 0x2710 % 0x64)) + 1];
    return v16;
  }

  if (a1 >> 4 > 0x270)
  {
    v12 = (a1 / 0x7A120uLL) & 0x3FFE;
    if (a1 < 0x989680)
    {
      if (a1 < 0xF4240)
      {
        if (a1 >> 5 < 0xC35)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      *a2++ = a00010203040506[v12];
    }

    *a2++ = a00010203040506[v12 + 1];
LABEL_27:
    *a2++ = a00010203040506[2 * ((a1 / 0x2710) % 0x64u)];
LABEL_28:
    *a2 = a00010203040506[(2 * ((a1 / 0x2710) % 0x64u)) + 1];
    a2[1] = a00010203040506[2 * (a1 % 0x2710 / 0x64)];
    a2[2] = a00010203040506[2 * (a1 % 0x2710 / 0x64) + 1];
    a2[3] = a00010203040506[2 * (a1 % 0x2710 % 0x64)];
    a2[4] = a00010203040506[(2 * (a1 % 0x2710 % 0x64)) + 1];
    return a2 + 5;
  }

  v2 = 2 * (a1 / 0x64uLL);
  if (a1 < 0x3E8)
  {
    if (a1 < 0x64)
    {
      if (a1 < 0xA)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    *a2++ = a00010203040506[v2];
  }

  *a2++ = a00010203040506[v2 + 1];
LABEL_15:
  *a2++ = a00010203040506[2 * (a1 % 0x64)];
LABEL_16:
  *a2 = a00010203040506[2 * (a1 % 0x64) + 1];
  return a2 + 1;
}

uint64_t sub_100015D30(uint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = v3[4] - v3[3];
  if (!a2)
  {
    if (v4 <= 4)
    {
      sub_1000073E0(v3, 5);
      v3 = *a1;
    }

    *sub_1000073A0(v3, 1) = 102;
    v5 = 115;
    v6 = 108;
    v7 = 97;
    goto LABEL_7;
  }

  if (v4 <= 3)
  {
    sub_1000073E0(v3, 4);
    v5 = 117;
    v6 = 114;
    v7 = 116;
LABEL_7:
    v3 = *a1;
    goto LABEL_8;
  }

  v5 = 117;
  v6 = 114;
  v7 = 116;
LABEL_8:
  *sub_1000073A0(v3, 1) = v7;
  *sub_1000073A0(*a1, 1) = v6;
  *sub_1000073A0(*a1, 1) = v5;
  *sub_1000073A0(*a1, 1) = 101;
  return 1;
}

uint64_t sub_100015E14()
{
  strcpy(__p, "--debug");
  v1 = siri::dialogengine::OptionExists();
  if (v1)
  {
    siri::dialogengine::Log::SetLogDebugMessages(1, v0);
    siri::dialogengine::Log::SetOutputToStdout(1, v2);
    siri::dialogengine::Log::Debug("Activate debug mode", v3);
  }

  else
  {
    siri::dialogengine::Log::SetLogDebugMessages(0, v0);
    siri::dialogengine::Log::SetOutputToStdout(0, v4);
  }

  return v1;
}

void sub_100015EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100015ED0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10002A428(a1, *a3, a3[1], (a3[1] - *a3) >> 4);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (!*a2)
  {
    goto LABEL_6;
  }

  Type = siri::dialogengine::VisualComponentsCombination::GetType(*a2);
  if (Type != 3)
  {
    if (Type == 2)
    {
      sub_100016294();
    }

    if (Type == 1)
    {
      sub_10001605C();
    }

LABEL_6:
    sub_1000164CC();
  }

  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 32);
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  if (v8)
  {
    sub_100005EB4(v8);
  }

  siri::dialogengine::VisualComponentsCombination::GetEntries(&v14, *(a1 + 24));
  v9 = v14;
  for (i = v15; v9 != i; v9 += 16)
  {
    v11 = *(v9 + 8);
    v13[0] = *v9;
    v13[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    *(a1 + 40) += sub_10001665C(v13);
    if (v11)
    {
      sub_100005EB4(v11);
    }
  }

  v16 = &v14;
  sub_100007C5C(&v16);
  return a1;
}

void sub_10001600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  v16 = *(v14 + 32);
  if (v16)
  {
    sub_100005EB4(v16);
  }

  a14 = v14;
  sub_100007C5C(&a14);
  _Unwind_Resume(a1);
}

void sub_100016240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100005EB4(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100016478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100005EB4(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100016628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_100005EB4(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001665C(siri::dialogengine::VisualComponentsCombination::Entry **a1)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  v3 = siri::dialogengine::VisualComponentsCombination::Entry::GetType(v2) == 4;
  siri::dialogengine::VisualComponentsCombination::Entry::GetChildren(&v10, *a1);
  v4 = v10;
  for (i = v11; v4 != i; v4 += 2)
  {
    v6 = v4[1];
    v9[0] = *v4;
    v9[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = sub_10001665C(v9);
    if (v6)
    {
      sub_100005EB4(v6);
    }

    v3 += v7;
  }

  v12 = &v10;
  sub_100007C5C(&v12);
  return v3;
}

void sub_100016724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (v14)
  {
    sub_100005EB4(v14);
  }

  a14 = &a11;
  sub_100007C5C(&a14);
  _Unwind_Resume(a1);
}

unint64_t sub_10001674C(uint64_t a1)
{
  siri::dialogengine::VisualComponentsCombination::GetEntries(&v8, *(a1 + 24));
  v1 = v8;
  v2 = v9;
  if (v8 == v9)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *(v1 + 8);
      v7[0] = *v1;
      v7[1] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      }

      v5 = sub_100016820(v7);
      if (v3 <= v5)
      {
        v3 = v5;
      }

      if (v4)
      {
        sub_100005EB4(v4);
      }

      v1 += 16;
    }

    while (v1 != v2);
  }

  v10 = &v8;
  sub_100007C5C(&v10);
  return v3;
}

void sub_1000167F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (v14)
  {
    sub_100005EB4(v14);
  }

  a14 = &a11;
  sub_100007C5C(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_100016820(siri::dialogengine::VisualComponentsCombination::Entry **a1)
{
  siri::dialogengine::VisualComponentsCombination::Entry::GetChildren(&v9, *a1);
  v1 = v9;
  v2 = v10;
  if (v9 == v10)
  {
    v6 = 1;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v1[1];
      v8[0] = *v1;
      v8[1] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = sub_100016820(v8);
      if (v3 <= v5)
      {
        v3 = v5;
      }

      if (v4)
      {
        sub_100005EB4(v4);
      }

      v1 += 2;
    }

    while (v1 != v2);
    v6 = v3 + 1;
  }

  v11 = &v9;
  sub_100007C5C(&v11);
  return v6;
}

void sub_1000168D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (v14)
  {
    sub_100005EB4(v14);
  }

  a14 = &a11;
  sub_100007C5C(&a14);
  _Unwind_Resume(a1);
}

void sub_1000168F8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v13 = 0;
  siri::dialogengine::VisualComponentsCombination::GetEntries(&v11, *(a1 + 24));
  v5 = v11;
  for (i = v12; v5 != i; v5 += 2)
  {
    v7 = v5[1];
    v9 = *v5;
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = sub_1000169F4(&v9, a2, &v13, 1, a3);
    if (v10)
    {
      sub_100005EB4(v10);
    }

    if (v8)
    {
      break;
    }
  }

  v14 = &v11;
  sub_100007C5C(&v14);
}

void sub_1000169B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002A570(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000169F4(uint64_t *a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v22 = a4;
  result = *a1;
  if (result)
  {
    if (*a3 == a2)
    {
      v10 = a5[1];
      if (v10 >= a5[2])
      {
        v12 = sub_10002A7A0(a5, a1, &v22);
      }

      else
      {
        v11 = a1[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          *v10 = result;
          v10[1] = v11;
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v10[2] = a4;
          sub_100005EB4(v11);
        }

        else
        {
          *v10 = result;
          v10[1] = 0;
          v10[2] = a4;
        }

        v12 = (v10 + 3);
        a5[1] = (v10 + 3);
      }

      a5[1] = v12;
      result = *a1;
    }

    if (siri::dialogengine::VisualComponentsCombination::Entry::GetType(result) == 4)
    {
      v13 = *a3 + 1;
      *a3 = v13;
      if (v13 > a2)
      {
        return 1;
      }
    }

    else
    {
      siri::dialogengine::VisualComponentsCombination::Entry::GetChildren(&v20, *a1);
      v14 = v20;
      v15 = v21;
      if (v20 != v21)
      {
        while (1)
        {
          v16 = v14[1];
          v18 = *v14;
          v19 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v17 = sub_1000169F4(&v18, a2, a3, v22 + 1, a5);
          if (v19)
          {
            sub_100005EB4(v19);
          }

          if (v17)
          {
            break;
          }

          v14 += 2;
          if (v14 == v15)
          {
            goto LABEL_20;
          }
        }

        v23 = &v20;
        sub_100007C5C(&v23);
        return 1;
      }

LABEL_20:
      v23 = &v20;
      sub_100007C5C(&v23);
    }

    return 0;
  }

  return result;
}

void sub_100016B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  if (a11)
  {
    sub_100005EB4(a11);
  }

  a16 = &a12;
  sub_100007C5C(&a16);
  _Unwind_Resume(a1);
}

void sub_100016BA0(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    goto LABEL_22;
  }

  do
  {
    siri::dialogengine::PatternSchemaComponent::GetName(__p, *v4);
    v8 = v17;
    if ((v17 & 0x80u) == 0)
    {
      v9 = v17;
    }

    else
    {
      v9 = __p[1];
    }

    v10 = *(a2 + 23);
    v11 = v10;
    if (v10 < 0)
    {
      v10 = a2[1];
    }

    if (v9 != v10)
    {
      v14 = 0;
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      operator delete(__p[0]);
      goto LABEL_18;
    }

    if ((v17 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v11 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v14 = memcmp(v12, v13, v9) == 0;
    if (v8 < 0)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (v14)
    {
      goto LABEL_21;
    }

    v4 += 16;
  }

  while (v4 != v5);
  v4 = v5;
LABEL_21:
  v5 = a1[1];
LABEL_22:
  if (v4 == v5)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v15 = *(v4 + 8);
    *a3 = *v4;
    a3[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

BOOL sub_100016CB0(uint64_t *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  v131 = 0;
  v132 = 256;
  v133[0] = 0;
  v135 = 0;
  v137 = 0;
  v138 = 0;
  v136 = 0;
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= 3)
  {
    sub_10000143C(v105, "Insufficient arguments specified for catutil pattern");
    sub_10000143C(__p, &unk_10006B9FB);
    v4 = sub_1000498E0(&v131, v105, __p, 0);
    if (SBYTE7(v113) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v105[23] & 0x80000000) == 0)
    {
      goto LABEL_119;
    }

    v7 = *v105;
    goto LABEL_118;
  }

  if (*(v6 + 71) < 0)
  {
    sub_100001C60(&__dst, *(v6 + 48), *(v6 + 56));
  }

  else
  {
    __dst = *(v6 + 48);
    v130 = *(v6 + 64);
  }

  if (SHIBYTE(v130) < 0)
  {
    if (*(&__dst + 1) == 6)
    {
      if (*__dst == 1953001332 && *(__dst + 4) == 27757)
      {
        goto LABEL_121;
      }
    }

    else if (*(&__dst + 1) == 7)
    {
      if (*__dst == 1667594341 && *(__dst + 3) == 1702131043)
      {
        goto LABEL_58;
      }
    }

    else if (*(&__dst + 1) == 8 && *__dst == 0x65746164696C6176)
    {
LABEL_23:
      sub_10000143C(&v126, "--templateDir");
      siri::dialogengine::GetOption();
      siri::dialogengine::ExpandPath();
      if (SBYTE7(v113) < 0)
      {
        operator delete(__p[0]);
      }

      if (v128 < 0)
      {
        operator delete(v126);
      }

      sub_10000143C(&v126, "--patternId");
      siri::dialogengine::GetOption();
      if (v128 < 0)
      {
        operator delete(v126);
      }

      sub_10000143C(&v126, "--xcode");
      v8 = siri::dialogengine::OptionExists();
      sub_100049784(&v131, v8);
      if (v128 < 0)
      {
        operator delete(v126);
      }

      v9 = v105[23];
      if (v105[23] < 0)
      {
        v9 = *&v105[8];
      }

      if (v9)
      {
        v10 = BYTE7(v113);
        if (SBYTE7(v113) < 0)
        {
          v10 = __p[1];
        }

        if (v10)
        {
          sub_100018FE0();
        }

        sub_10000143C(v122, "pattern");
        siri::dialogengine::JoinPath();
        siri::dialogengine::ListDirRecursively();
        if (SHIBYTE(v125) < 0)
        {
          operator delete(v124);
        }

        if (v123 < 0)
        {
          operator delete(v122[0]);
        }

        v50 = v126;
        for (i = v127; v50 != i; v50 += 3)
        {
          if (*(v50 + 23) < 0)
          {
            sub_100001C60(&v124, *v50, v50[1]);
          }

          else
          {
            v52 = *v50;
            v125 = v50[2];
            v124 = v52;
          }

          if (siri::dialogengine::HasPatternExtension())
          {
            std::operator+<char>();
            sub_100049CDC(&v131, v122);
            if (v123 < 0)
            {
              operator delete(v122[0]);
            }

            siri::dialogengine::CatPathToId();
            sub_100018FE0();
          }

          if (SHIBYTE(v125) < 0)
          {
            operator delete(v124);
          }
        }

        v4 = sub_100049D14(&v131);
        *&v124 = &v126;
        sub_100002260(&v124);
        goto LABEL_111;
      }

      sub_10000143C(&v126, "--templateDir required for catutil pattern validate");
      sub_10000143C(&v124, &unk_10006B9FB);
      v42 = sub_1000498E0(&v131, &v126, &v124, 0);
      goto LABEL_254;
    }

    if (*(&__dst + 1) != 6 || (*__dst == 1634038371 ? (v24 = *(__dst + 4) == 25972) : (v24 = 0), !v24))
    {
      if (*(&__dst + 1) != 6)
      {
LABEL_109:
        sub_10000143C(v105, "Unsupported sub-command for catutil pattern");
        sub_10000143C(__p, &unk_10006B9FB);
        v28 = sub_1000498E0(&v131, v105, __p, 0);
LABEL_110:
        v4 = v28;
        goto LABEL_111;
      }

      p_dst = __dst;
      goto LABEL_105;
    }

LABEL_146:
    sub_10000143C(__p, "--schema");
    siri::dialogengine::GetOption();
    if (SBYTE7(v113) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000143C(&v124, "--templateDir");
    siri::dialogengine::GetOption();
    siri::dialogengine::ExpandPath();
    if (v128 < 0)
    {
      operator delete(v126);
    }

    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124);
    }

    sub_10000143C(&v124, "--patternId");
    siri::dialogengine::GetOption();
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124);
    }

    sub_10000143C(v120, "--schemaTemplateDir");
    siri::dialogengine::GetOption();
    siri::dialogengine::ExpandPath();
    if (v123 < 0)
    {
      operator delete(v122[0]);
    }

    if (v121 < 0)
    {
      operator delete(v120[0]);
    }

    v39 = v105[23];
    if (v105[23] < 0)
    {
      v39 = *&v105[8];
    }

    if (v39)
    {
      v40 = BYTE7(v113);
      if (SBYTE7(v113) < 0)
      {
        v40 = __p[1];
      }

      if (v40)
      {
        v41 = v128;
        if ((v128 & 0x80u) != 0)
        {
          v41 = v127;
        }

        if (v41)
        {
          v42 = sub_10001F52C();
LABEL_254:
          v4 = v42;
LABEL_255:
          if (SHIBYTE(v125) < 0)
          {
            operator delete(v124);
          }

          if ((v128 & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          v54 = v126;
          goto LABEL_259;
        }

        sub_10000143C(v122, "--patternId required for catutil pattern create");
        sub_10000143C(v120, &unk_10006B9FB);
        v49 = sub_1000498E0(&v131, v122, v120, 0);
      }

      else
      {
        sub_10000143C(v122, "--templateDir required for catutil pattern create");
        sub_10000143C(v120, &unk_10006B9FB);
        v49 = sub_1000498E0(&v131, v122, v120, 0);
      }
    }

    else
    {
      sub_10000143C(v122, "--schema required for catutil pattern create");
      sub_10000143C(v120, &unk_10006B9FB);
      v49 = sub_1000498E0(&v131, v122, v120, 0);
    }

    v4 = v49;
    if (v121 < 0)
    {
      operator delete(v120[0]);
    }

    if (v123 < 0)
    {
      operator delete(v122[0]);
    }

    goto LABEL_255;
  }

  if (HIBYTE(v130) != 6)
  {
    if (HIBYTE(v130) != 7)
    {
      if (HIBYTE(v130) != 8 || __dst != 0x65746164696C6176)
      {
        goto LABEL_109;
      }

      goto LABEL_23;
    }

    if (__dst != 1667594341 || *(&__dst + 3) != 1702131043)
    {
      goto LABEL_109;
    }

LABEL_58:
    sub_10000143C(__p, "--templateDir");
    siri::dialogengine::GetOption();
    siri::dialogengine::ExpandPath();
    if ((v105[23] & 0x80000000) != 0)
    {
      operator delete(*v105);
    }

    if (SBYTE7(v113) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000143C(v105, "--patternId");
    siri::dialogengine::GetOption();
    if ((v105[23] & 0x80000000) != 0)
    {
      operator delete(*v105);
    }

    sub_10000143C(v105, "--locale");
    siri::dialogengine::GetOption();
    if ((v105[23] & 0x80000000) != 0)
    {
      operator delete(*v105);
    }

    sub_10000143C(__p, "--params");
    siri::dialogengine::GetMultipleOptions();
    sub_10000143C(v118, " ");
    siri::dialogengine::StringJoin();
    if (v119 < 0)
    {
      operator delete(v118[0]);
    }

    v118[0] = v105;
    sub_100002260(v118);
    if (SBYTE7(v113) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000143C(v105, "--mode");
    siri::dialogengine::GetOption();
    if ((v105[23] & 0x80000000) != 0)
    {
      operator delete(*v105);
    }

    sub_10000143C(v105, "--debug");
    v16 = siri::dialogengine::OptionExists();
    if ((v105[23] & 0x80000000) != 0)
    {
      operator delete(*v105);
    }

    v17 = v128;
    if ((v128 & 0x80u) != 0)
    {
      v17 = v127;
    }

    if (v17)
    {
      v18 = HIBYTE(v125);
      if (SHIBYTE(v125) < 0)
      {
        v18 = *(&v124 + 1);
      }

      if (v18)
      {
        v19 = v123;
        if ((v123 & 0x80u) != 0)
        {
          v19 = v122[1];
        }

        if (v19)
        {
          if (sub_100019680(v118, "voiceOnly") && sub_100019680(v118, "voiceForward") && sub_100019680(v118, "displayForward") && sub_100019680(v118, "displayOnly") && sub_100019680(v118, &unk_10006B9FB))
          {
            std::operator+<char>();
            v20 = std::string::append(__p, "' not recognized");
            v21 = *&v20->__r_.__value_.__l.__data_;
            *&v105[16] = *(&v20->__r_.__value_.__l + 2);
            *v105 = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            sub_10000143C(v116, &unk_10006B9FB);
            v4 = sub_1000498E0(&v131, v105, v116, 0);
            if (v117 < 0)
            {
              operator delete(v116[0]);
            }

            if ((v105[23] & 0x80000000) != 0)
            {
              operator delete(*v105);
            }

            if ((SBYTE7(v113) & 0x80000000) == 0)
            {
              goto LABEL_408;
            }

            v22 = __p[0];
            goto LABEL_407;
          }

          sub_10000143C(v105, "--renderVisualCat");
          siri::dialogengine::GetOption();
          if ((v105[23] & 0x80000000) != 0)
          {
            operator delete(*v105);
          }

          sub_10000143C(v105, "--renderVisualCat");
          if (siri::dialogengine::OptionExists())
          {
            v53 = sub_100018F5C(v116, &unk_10006B9FB);
            if ((v105[23] & 0x80000000) != 0)
            {
              operator delete(*v105);
            }

            if (v53)
            {
              sub_10000143C(v105, "--localeNo path given for rendered output");
              sub_10000143C(__p, &unk_10006B9FB);
              v4 = sub_1000498E0(&v131, v105, __p, 0);
              if (SBYTE7(v113) < 0)
              {
                operator delete(__p[0]);
              }

              if ((v105[23] & 0x80000000) != 0)
              {
                operator delete(*v105);
              }

LABEL_405:
              if ((v117 & 0x80000000) == 0)
              {
LABEL_408:
                if (v119 < 0)
                {
                  operator delete(v118[0]);
                }

                if (v121 < 0)
                {
                  operator delete(v120[0]);
                }

                if (v123 < 0)
                {
                  operator delete(v122[0]);
                }

                if (SHIBYTE(v125) < 0)
                {
                  operator delete(v124);
                }

                if ((v128 & 0x80000000) == 0)
                {
                  goto LABEL_116;
                }

                v29 = v126;
                goto LABEL_115;
              }

              v22 = v116[0];
LABEL_407:
              operator delete(v22);
              goto LABEL_408;
            }
          }

          else if ((v105[23] & 0x80000000) != 0)
          {
            operator delete(*v105);
          }

          sub_10000143C(v105, "--debug");
          v56 = siri::dialogengine::OptionExists();
          if ((v105[23] & 0x80000000) != 0)
          {
            operator delete(*v105);
          }

          if (v56)
          {
            siri::dialogengine::Log::SetOutputToStdout(1, v55);
            siri::dialogengine::Log::SetLogDebugMessages(1, v57);
          }

          else
          {
            siri::dialogengine::Log::SetOutputToStdout(0, v55);
          }

          *__p = 0u;
          v113 = 0u;
          v114 = 0;
          v115 = 256;
          *&v105[8] = 0u;
          v106 = 0u;
          *v105 = __p;
          v107 = 0;
          v108 = 512;
          v109 = 324;
          v110 = 0x2000;
          v111 = 4;
          sub_100011D10(v105);
          sub_100011D64(v105, "templateDir");
          if ((v128 & 0x80u) == 0)
          {
            v58 = &v126;
          }

          else
          {
            v58 = v126;
          }

          sub_100011D64(v105, v58);
          sub_100011D64(v105, "patternId");
          if (SHIBYTE(v125) >= 0)
          {
            v59 = &v124;
          }

          else
          {
            v59 = v124;
          }

          sub_100011D64(v105, v59);
          sub_100011D64(v105, "locale");
          if ((v123 & 0x80u) == 0)
          {
            v60 = v122;
          }

          else
          {
            v60 = v122[0];
          }

          sub_100011D64(v105, v60);
          v61 = v121;
          if ((v121 & 0x80u) != 0)
          {
            v61 = v120[1];
          }

          if (v61)
          {
            sub_100011D64(v105, "parameters");
            sub_100011D64(v105, "<PARAMS>");
          }

          v62 = v119;
          if ((v119 & 0x80u) != 0)
          {
            v62 = v118[1];
          }

          if (v62)
          {
            sub_100011D64(v105, "responseMode");
            if ((v119 & 0x80u) == 0)
            {
              v63 = v118;
            }

            else
            {
              v63 = v118[0];
            }

            sub_100011D64(v105, v63);
          }

          if (v16)
          {
            sub_100011D64(v105, "debug");
            sub_1000146E8(v105, 2);
            sub_100015D30(v105, 1);
          }

          if (!sub_100019680(v116, &unk_10006B9FB))
          {
            goto LABEL_368;
          }

          sub_100011D64(v105, "renderVisualCat");
          if (v117 >= 0)
          {
            v64 = v116;
          }

          else
          {
            v64 = v116[0];
          }

          sub_100011D64(v105, v64);
          sub_10000143C(v103, "--renderDarkMode");
          v65 = siri::dialogengine::OptionExists();
          if (SHIBYTE(v104) < 0)
          {
            operator delete(v103[0]);
          }

          if (v65)
          {
            sub_100011D64(v105, "renderDarkMode");
            sub_1000146E8(v105, 2);
            sub_100015D30(v105, 1);
          }

          sub_10000143C(&v101, "--renderDeviceClass");
          siri::dialogengine::GetOption();
          if (SHIBYTE(v102) < 0)
          {
            operator delete(v101);
          }

          sub_10000143C(&v101, "--renderDeviceClass");
          if (siri::dialogengine::OptionExists())
          {
            v66 = sub_100019680(v103, &unk_10006B9FB);
            if (SHIBYTE(v102) < 0)
            {
              operator delete(v101);
            }

            if (v66)
            {
              sub_100011D64(v105, "renderDeviceClass");
              if (v104 >= 0)
              {
                v67 = v103;
              }

              else
              {
                v67 = v103[0];
              }

              sub_100011D64(v105, v67);
            }
          }

          else if (SHIBYTE(v102) < 0)
          {
            operator delete(v101);
          }

          sub_10000143C(v99, "--renderDeviceTrain");
          siri::dialogengine::GetOption();
          if (SHIBYTE(v100) < 0)
          {
            operator delete(v99[0]);
          }

          sub_10000143C(v99, "--renderDeviceTrain");
          if (siri::dialogengine::OptionExists())
          {
            v68 = sub_100018F5C(&v101, &unk_10006B9FB);
            if (SHIBYTE(v100) < 0)
            {
              operator delete(v99[0]);
            }

            if (!v68)
            {
              sub_100011D64(v105, "renderDeviceTrain");
              if (v102 >= 0)
              {
                v69 = &v101;
              }

              else
              {
                v69 = v101;
              }

              sub_100011D64(v105, v69);
              sub_10000143C(&v98, "--renderOrientation");
              siri::dialogengine::GetOption();
              if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v98.__r_.__value_.__l.__data_);
              }

              sub_10000143C(&v98, "--renderOrientation");
              if (siri::dialogengine::OptionExists())
              {
                v70 = sub_100019680(v99, &unk_10006B9FB);
                if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v98.__r_.__value_.__l.__data_);
                }

                if (v70)
                {
                  sub_100011D64(v105, "renderOrientation");
                  if (v100 >= 0)
                  {
                    v71 = v99;
                  }

                  else
                  {
                    v71 = v99[0];
                  }

                  sub_100011D64(v105, v71);
                }
              }

              else if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v98.__r_.__value_.__l.__data_);
              }

              sub_10000143C(&v97, "--renderContext");
              siri::dialogengine::GetOption();
              if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v97.__r_.__value_.__l.__data_);
              }

              sub_10000143C(&v97, "--renderContext");
              if (siri::dialogengine::OptionExists())
              {
                v73 = sub_100019680(&v98, &unk_10006B9FB);
                if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v97.__r_.__value_.__l.__data_);
                }

                if (v73)
                {
                  sub_100011D64(v105, "renderContext");
                  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v74 = &v98;
                  }

                  else
                  {
                    v74 = v98.__r_.__value_.__r.__words[0];
                  }

                  sub_100011D64(v105, v74);
                }
              }

              else if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v97.__r_.__value_.__l.__data_);
              }

              sub_10000143C(v95, "--renderScreenSize");
              siri::dialogengine::GetOption();
              if (v96 < 0)
              {
                operator delete(v95[0]);
              }

              sub_10000143C(v95, "--renderScreenSize");
              if (siri::dialogengine::OptionExists())
              {
                v75 = sub_100019680(&v97, &unk_10006B9FB);
                if (v96 < 0)
                {
                  operator delete(v95[0]);
                }

                if (v75)
                {
                  sub_100011D64(v105, "renderScreenSize");
                  if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v76 = &v97;
                  }

                  else
                  {
                    v76 = v97.__r_.__value_.__r.__words[0];
                  }

                  sub_100011D64(v105, v76);
                }
              }

              else if (v96 < 0)
              {
                operator delete(v95[0]);
              }

              if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v97.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v98.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v100) < 0)
              {
                operator delete(v99[0]);
              }

              if (SHIBYTE(v102) < 0)
              {
                operator delete(v101);
              }

              if (SHIBYTE(v104) < 0)
              {
                operator delete(v103[0]);
              }

LABEL_368:
              sub_100011E30(v105);
              v77 = sub_100011CCC(__p);
              sub_10000143C(v103, v77);
              sub_10000143C(v99, "<PARAMS>");
              siri::dialogengine::StringReplace();
              if (SHIBYTE(v104) < 0)
              {
                operator delete(v103[0]);
              }

              *v103 = v101;
              v104 = v102;
              HIBYTE(v102) = 0;
              LOBYTE(v101) = 0;
              if (SHIBYTE(v100) < 0)
              {
                operator delete(v99[0]);
              }

              v78 = CATPatternExecute();
              puts(v78);
              if (v78)
              {
                v79 = v78;
              }

              else
              {
                v79 = &unk_10006B9FB;
              }

              sub_10000143C(&v101, v79);
              CATFree();
              sub_10000143C(&v97, "renderVisualCat");
              v80 = std::string::insert(&v97, 0, "");
              v81 = *&v80->__r_.__value_.__l.__data_;
              v98.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
              *&v98.__r_.__value_.__l.__data_ = v81;
              v80->__r_.__value_.__l.__size_ = 0;
              v80->__r_.__value_.__r.__words[2] = 0;
              v80->__r_.__value_.__r.__words[0] = 0;
              v82 = std::string::append(&v98, ":");
              v83 = *&v82->__r_.__value_.__l.__data_;
              v100 = v82->__r_.__value_.__r.__words[2];
              *v99 = v83;
              v82->__r_.__value_.__l.__size_ = 0;
              v82->__r_.__value_.__r.__words[2] = 0;
              v82->__r_.__value_.__r.__words[0] = 0;
              if (siri::dialogengine::StringContains())
              {
                sub_10000143C(v95, "visual: ");
                if (siri::dialogengine::StringContains())
                {
                  sub_10000143C(&v93, "data: ");
                  v84 = siri::dialogengine::StringContains();
                  if (v94 < 0)
                  {
                    operator delete(v93);
                  }
                }

                else
                {
                  v84 = 0;
                }

                if (v96 < 0)
                {
                  operator delete(v95[0]);
                }
              }

              else
              {
                v84 = 0;
              }

              if (SHIBYTE(v100) < 0)
              {
                operator delete(v99[0]);
              }

              if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v98.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v97.__r_.__value_.__l.__data_);
              }

              if (v84)
              {
                if (SHIBYTE(v104) < 0)
                {
                  sub_100001C60(v91, v103[0], v103[1]);
                }

                else
                {
                  *v91 = *v103;
                  v92 = v104;
                }

                if (SHIBYTE(v102) < 0)
                {
                  sub_100001C60(v89, v101, *(&v101 + 1));
                }

                else
                {
                  *v89 = v101;
                  v90 = v102;
                }

                sub_100019704(v91, v89);
                if (SHIBYTE(v90) < 0)
                {
                  operator delete(v89[0]);
                }

                if (SHIBYTE(v92) < 0)
                {
                  operator delete(v91[0]);
                }
              }

              goto LABEL_400;
            }
          }

          else if (SHIBYTE(v100) < 0)
          {
            operator delete(v99[0]);
          }

          v72 = sub_1000027F4(&std::cout, "Error: no --renderDeviceTrain option specified", 46);
          sub_10000FD6C(v72);
LABEL_400:
          if (SHIBYTE(v102) < 0)
          {
            operator delete(v101);
          }

          if (SHIBYTE(v104) < 0)
          {
            operator delete(v103[0]);
          }

          sub_100006334(&v105[8]);
          sub_100006334(__p);
          v4 = 1;
          goto LABEL_405;
        }

        sub_10000143C(v105, "--locale required for catutil pattern execute");
        sub_10000143C(__p, &unk_10006B9FB);
        v48 = sub_1000498E0(&v131, v105, __p, 0);
      }

      else
      {
        sub_10000143C(v105, "--patternId required for catutil pattern execute");
        sub_10000143C(__p, &unk_10006B9FB);
        v48 = sub_1000498E0(&v131, v105, __p, 0);
      }
    }

    else
    {
      sub_10000143C(v105, "--templateDir required for catutil pattern execute");
      sub_10000143C(__p, &unk_10006B9FB);
      v48 = sub_1000498E0(&v131, v105, __p, 0);
    }

    v4 = v48;
    if (SBYTE7(v113) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v105[23] & 0x80000000) == 0)
    {
      goto LABEL_408;
    }

    v22 = *v105;
    goto LABEL_407;
  }

  if (__dst != 1953001332 || WORD2(__dst) != 27757)
  {
    if (__dst != 1634038371 || WORD2(__dst) != 25972)
    {
      p_dst = &__dst;
LABEL_105:
      v25 = *p_dst;
      v26 = *(p_dst + 2);
      if (v25 != 1634886000 || v26 != 29549)
      {
        goto LABEL_109;
      }

      sub_10000143C(&v126, "--templateDir");
      siri::dialogengine::GetOption();
      siri::dialogengine::ExpandPath();
      if (SBYTE7(v113) < 0)
      {
        operator delete(__p[0]);
      }

      if (v128 < 0)
      {
        operator delete(v126);
      }

      sub_10000143C(&v126, "--patternId");
      siri::dialogengine::GetOption();
      if (v128 < 0)
      {
        operator delete(v126);
      }

      sub_10000143C(&v126, "--excludeComputed");
      siri::dialogengine::OptionExists();
      if (v128 < 0)
      {
        operator delete(v126);
      }

      sub_10000143C(&v126, "--includeComputed");
      siri::dialogengine::OptionExists();
      if (v128 < 0)
      {
        operator delete(v126);
      }

      sub_10000143C(&v126, "--includeSettings");
      siri::dialogengine::OptionExists();
      if (v128 < 0)
      {
        operator delete(v126);
      }

      sub_10000143C(&v126, "--includeValueFromCat");
      siri::dialogengine::OptionExists();
      if (v128 < 0)
      {
        operator delete(v126);
      }

      sub_10000143C(&v126, "--json");
      siri::dialogengine::OptionExists();
      if (v128 < 0)
      {
        operator delete(v126);
      }

      sub_10000143C(&v126, "--xml");
      siri::dialogengine::OptionExists();
      if (v128 < 0)
      {
        operator delete(v126);
      }

      v43 = v105[23];
      if (v105[23] < 0)
      {
        v43 = *&v105[8];
      }

      if (v43)
      {
        v44 = BYTE7(v113);
        if (SBYTE7(v113) < 0)
        {
          v44 = __p[1];
        }

        if (v44)
        {
          v28 = sub_100021378();
          goto LABEL_110;
        }

        sub_10000143C(&v126, "--patternId required for catutil pattern params");
        sub_10000143C(&v124, &unk_10006B9FB);
        v42 = sub_1000498E0(&v131, &v126, &v124, 0);
      }

      else
      {
        sub_10000143C(&v126, "--templateDir required for catutil pattern params");
        sub_10000143C(&v124, &unk_10006B9FB);
        v42 = sub_1000498E0(&v131, &v126, &v124, 0);
      }

      goto LABEL_254;
    }

    goto LABEL_146;
  }

LABEL_121:
  sub_10000143C(&v126, "--schemaTemplateDir");
  siri::dialogengine::GetOption();
  siri::dialogengine::ExpandPath();
  if (SBYTE7(v113) < 0)
  {
    operator delete(__p[0]);
  }

  if (v128 < 0)
  {
    operator delete(v126);
  }

  sub_10000143C(__p, "--all");
  v30 = siri::dialogengine::OptionExists();
  v31 = v30;
  if (SBYTE7(v113) < 0)
  {
    operator delete(__p[0]);
  }

  if (v31)
  {
    siri::dialogengine::GetSchemaSearchPaths(__p, v30);
    v32 = v105[23];
    if (v105[23] < 0)
    {
      v32 = *&v105[8];
    }

    if (v32)
    {
      sub_10001A42C(__p, __p[0], v105);
    }

    v33 = __p[0];
    v34 = __p[1];
    if (__p[0] == __p[1])
    {
LABEL_145:
      v126 = __p;
      sub_100002260(&v126);
      v4 = 1;
      goto LABEL_113;
    }

LABEL_133:
    siri::dialogengine::ListDir();
    v35 = v126;
    v36 = v127;
    while (1)
    {
      if (v35 == v36)
      {
        *&v124 = &v126;
        sub_100002260(&v124);
        v33 += 24;
        if (v33 == v34)
        {
          goto LABEL_145;
        }

        goto LABEL_133;
      }

      sub_10000143C(&v124, "patternschema");
      HasExtension = siri::dialogengine::HasExtension();
      v38 = HasExtension;
      if (SHIBYTE(v125) < 0)
      {
        operator delete(v124);
        if (!v38)
        {
          goto LABEL_143;
        }
      }

      else if (!HasExtension)
      {
        goto LABEL_143;
      }

      siri::dialogengine::RemoveExtension();
      sub_10001A5D4();
      if (v88 < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(v125) < 0)
      {
        operator delete(v124);
      }

LABEL_143:
      v35 += 3;
    }
  }

  sub_10000143C(&v126, "--schema");
  siri::dialogengine::GetOption();
  if (v128 < 0)
  {
    operator delete(v126);
  }

  v45 = BYTE7(v113);
  if (SBYTE7(v113) < 0)
  {
    v45 = __p[1];
  }

  if (!v45)
  {
    sub_10000143C(&v126, "--schema required for catutil pattern tohtml");
    sub_10000143C(&v124, &unk_10006B9FB);
    v42 = sub_1000498E0(&v131, &v126, &v124, 0);
    goto LABEL_254;
  }

  sub_10001A5D4();
  v46 = v128;
  if ((v128 & 0x80u) != 0)
  {
    v46 = v127;
  }

  if (v46)
  {
    sub_10000143C(&v124, "--open");
    v47 = siri::dialogengine::OptionExists();
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124);
    }

    if (v47)
    {
      std::operator+<char>();
      siri::dialogengine::ExecuteShellCommand();
      if (v86 < 0)
      {
        operator delete(v85);
      }

      if (SHIBYTE(v125) < 0)
      {
        operator delete(v124);
      }
    }
  }

  if ((v128 & 0x80000000) == 0)
  {
    v4 = v128 != 0;
    goto LABEL_111;
  }

  v54 = v126;
  v4 = v127 != 0;
LABEL_259:
  operator delete(v54);
LABEL_111:
  if (SBYTE7(v113) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_113:
  if ((v105[23] & 0x80000000) != 0)
  {
    v29 = *v105;
LABEL_115:
    operator delete(v29);
  }

LABEL_116:
  if ((SHIBYTE(v130) & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

  v7 = __dst;
LABEL_118:
  operator delete(v7);
LABEL_119:
  if (v135 == 1)
  {
    sub_10000623C(v133, v134);
  }

  return v4;
}

void sub_1000187C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (*(v77 - 225) < 0)
  {
    operator delete(*(v77 - 248));
  }

  if (*(v77 - 201) < 0)
  {
    operator delete(*(v77 - 224));
  }

  if (*(v77 - 177) < 0)
  {
    operator delete(*(v77 - 200));
  }

  if (*(v77 - 153) < 0)
  {
    operator delete(*(v77 - 176));
  }

  if (*(v77 - 112) == 1)
  {
    sub_10000623C(v76 + 8, *(v77 - 128));
  }

  _Unwind_Resume(a1);
}

BOOL sub_100018F5C(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_10002832C();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_100018FE0()
{
  siri::dialogengine::GetTemplateDirs();
  siri::dialogengine::Context::Context();
  v0 = &v1;
  sub_10000C88C(&v0);
  sub_100021E20();
}

void sub_1000194D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, char a28)
{
  v31 = v28 + 32;
  v32 = -64;
  do
  {
    *(v29 - 168) = v31;
    sub_1000225AC((v29 - 168));
    v31 -= 32;
    v32 += 32;
  }

  while (v32);
  sub_10002339C(&a9, a10);
  *(v29 - 160) = &a12;
  sub_1000225AC((v29 - 160));
  *(v29 - 160) = &a15;
  sub_1000225AC((v29 - 160));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_100005EB4(a25);
  }

  siri::dialogengine::Context::~Context(&a28);
  _Unwind_Resume(a1);
}

BOOL sub_100019680(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 1;
    }

    return memcmp(a1, __s, v4) != 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_10002832C();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) != 0;
  }

  return 1;
}

uint64_t sub_100019704(uint64_t **a1, const char *a2)
{
  v2 = a2;
  siri::dialogengine::Log::Info("Preparing to render VisualCats...", a2);
  sub_1000062A0(v64, 0, 1024, 0);
  sub_1000062A0(v62, 0, 1024, 0);
  if (v2[23] < 0)
  {
    v2 = *v2;
  }

  *&v60 = v2;
  *(&v60 + 1) = v2;
  if (*(sub_10000F154(v62, &v60) + 88))
  {
    if (v63 > 0x11)
    {
      v4 = "Unknown error.";
    }

    else
    {
      v4 = off_100075058[v63];
    }

    sub_10000143C(&v60, v4);
    v6 = sub_1000027F4(&std::cout, "Error: Invalid JSON result: ", 28);
    if (v61 >= 0)
    {
      v7 = &v60;
    }

    else
    {
      v7 = v60;
    }

    if (v61 >= 0)
    {
      v8 = HIBYTE(v61);
    }

    else
    {
      v8 = *(&v60 + 1);
    }

LABEL_18:
    v9 = sub_1000027F4(v6, v7, v8);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v57, &std::ctype<char>::id);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v57);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_156;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  *&v60 = a1;
  *(&v60 + 1) = a1;
  if (*(sub_10000F154(v64, &v60) + 88))
  {
    if (v65 > 0x11)
    {
      v5 = "Unknown error.";
    }

    else
    {
      v5 = off_100075058[v65];
    }

    sub_10000143C(&v60, v5);
    v6 = sub_1000027F4(&std::cout, "Error: Invalid JSON request: ", 29);
    if (v61 >= 0)
    {
      v7 = &v60;
    }

    else
    {
      v7 = v60;
    }

    if (v61 >= 0)
    {
      v8 = HIBYTE(v61);
    }

    else
    {
      v8 = *(&v60 + 1);
    }

    goto LABEL_18;
  }

  sub_10000143C(&v57, "renderVisualCat");
  siri::dialogengine::ParseJSONString();
  if (v59 < 0)
  {
    operator delete(v57.__locale_);
  }

  if (siri::dialogengine::DirExists())
  {
    goto LABEL_25;
  }

  siri::dialogengine::DirName();
  v11 = siri::dialogengine::DirExists();
  if (v59 < 0)
  {
    operator delete(v57.__locale_);
  }

  if (v11)
  {
LABEL_25:
    sub_10000143C(__p, "patternId");
    siri::dialogengine::ParseJSONString();
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000143C(v53, "status");
    siri::dialogengine::ParseJSONString();
    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53[0]);
    }

    v12 = v56;
    if (v56 < 0)
    {
      v13 = __p[0];
      if (__p[1] != 7)
      {
LABEL_153:
        operator delete(v13);
        goto LABEL_154;
      }
    }

    else
    {
      if (v56 != 7)
      {
        goto LABEL_154;
      }

      v13 = __p;
    }

    if (*v13 != 1667462515 || *(v13 + 3) != 1936942435)
    {
LABEL_151:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_154;
      }

      v13 = __p[0];
      goto LABEL_153;
    }

    v15 = sub_100013CD0(v62, "visual");
    sub_10000143C(&v52, "renderDeviceTrain");
    siri::dialogengine::ParseJSONString();
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v51, "renderDeviceClass");
    siri::dialogengine::ParseJSONString();
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v52.__r_.__value_.__l.__size_)
      {
        goto LABEL_61;
      }
    }

    else if (*(&v52.__r_.__value_.__s + 23))
    {
      goto LABEL_61;
    }

    std::string::assign(&v52, "iPhone");
LABEL_61:
    sub_10000143C(&v49, "renderContext");
    siri::dialogengine::ParseJSONString();
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v51.__r_.__value_.__l.__size_)
      {
        goto LABEL_68;
      }
    }

    else if (*(&v51.__r_.__value_.__s + 23))
    {
      goto LABEL_68;
    }

    std::string::assign(&v51, "MockSiri");
LABEL_68:
    sub_10000143C(v47, "renderScreenSize");
    siri::dialogengine::ParseJSONString();
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    sub_10000143C(&v46, "renderOrientation");
    siri::dialogengine::ParseJSONString();
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v46, "renderDarkMode");
    v21 = siri::dialogengine::ParseJSONBool();
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    sub_10000143C(&v46, &unk_10006B9FB);
    if (*(v15 + 11) != 3)
    {
      __assert_rtn("MemberBegin", "document.h", 1161, "IsObject()");
    }

    for (i = *(v15 + 1); i != *(v15 + 1) + 48 * *v15; i += 48)
    {
      v23 = sub_100013D60(i);
      if (!strcmp(v23, "data"))
      {
        v24 = sub_100013D60(i + 24);
        std::string::assign(&v46, v24);
      }

      if (*(v15 + 11) != 3)
      {
        __assert_rtn("MemberEnd", "document.h", 1164, "IsObject()");
      }
    }

    if (SHIBYTE(v61) < 0)
    {
      sub_100001C60(__dst, v60, *(&v60 + 1));
    }

    else
    {
      *__dst = v60;
      v45 = v61;
    }

    if (siri::dialogengine::DirExists())
    {
      if ((v59 & 0x80u) == 0)
      {
        v25 = v59;
      }

      else
      {
        v25 = v58;
      }

      v26 = v40;
      sub_1000094C0(v40, v25 + 11);
      if (v41 < 0)
      {
        v26 = v40[0];
      }

      if (v25)
      {
        if ((v59 & 0x80u) == 0)
        {
          locale = &v57;
        }

        else
        {
          locale = v57.__locale_;
        }

        memmove(v26, locale, v25);
      }

      strcpy(v26 + v25, "-render.png");
      siri::dialogengine::JoinPath();
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__dst[0]);
      }

      *__dst = v42;
      v45 = v43;
      HIBYTE(v43) = 0;
      LOBYTE(v42) = 0;
      if (v41 < 0)
      {
        operator delete(v40[0]);
      }
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v46.__r_.__value_.__l.__size_)
      {
        sub_100001C60(&v39, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
        goto LABEL_104;
      }
    }

    else if (*(&v46.__r_.__value_.__s + 23))
    {
      v39 = v46;
LABEL_104:
      if (SHIBYTE(v45) < 0)
      {
        sub_100001C60(v37, __dst[0], __dst[1]);
      }

      else
      {
        *v37 = *__dst;
        v38 = v45;
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100001C60(&v36, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = v52;
      }

      if (SHIBYTE(v54) < 0)
      {
        sub_100001C60(v34, v53[0], v53[1]);
      }

      else
      {
        *v34 = *v53;
        v35 = v54;
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100001C60(&v33, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
      }

      else
      {
        v33 = v51;
      }

      if (SHIBYTE(v50) < 0)
      {
        sub_100001C60(v31, v49, *(&v49 + 1));
      }

      else
      {
        *v31 = v49;
        v32 = v50;
      }

      if (SHIBYTE(v48) < 0)
      {
        sub_100001C60(v29, v47[0], v47[1]);
      }

      else
      {
        *v29 = *v47;
        v30 = v48;
      }

      sub_10000E344(&v39, v37, &v36, v34, &v33, v31, v29, v21);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29[0]);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[0]);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53[0]);
    }

    v12 = v56;
    goto LABEL_151;
  }

  v16 = sub_1000027F4(&std::cout, "Error: Destination directory doesn't exist: ", 44);
  siri::dialogengine::DirName();
  if ((v59 & 0x80u) == 0)
  {
    v17 = &v57;
  }

  else
  {
    v17 = v57.__locale_;
  }

  if ((v59 & 0x80u) == 0)
  {
    v18 = v59;
  }

  else
  {
    v18 = v58;
  }

  v19 = sub_1000027F4(v16, v17, v18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(__p, &std::ctype<char>::id);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
LABEL_154:
  if (v59 < 0)
  {
    operator delete(v57.__locale_);
  }

LABEL_156:
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60);
  }

  sub_100007964(v62);
  return sub_100007964(v64);
}

void sub_10001A144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (a88 < 0)
  {
    operator delete(a87);
  }

  sub_100007964(&STACK[0x208]);
  sub_100007964(v88 - 176);
  _Unwind_Resume(a1);
}

std::string *sub_10001A42C(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000020B0();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v27 = a1;
    if (v15)
    {
      sub_1000020C8(a1, v15);
    }

    v24 = 0;
    v25 = 8 * (v12 >> 3);
    v26 = v25;
    sub_10002AB8C(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    sub_100002760(&v24);
    return v16;
  }

  else if (a2 == v6)
  {
    sub_1000025C0(a1, a3);
  }

  else
  {
    sub_10002AB1C(a1, a2, v6, a2 + 24);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 24;
    if (v8)
    {
      v9 = 0;
    }

    std::string::operator=(v4, (a3 + v9));
  }

  return v4;
}

void sub_10001A5C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100002760(va);
  _Unwind_Resume(a1);
}

void sub_10001A5D4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  siri::dialogengine::GetTemplateDirs();
  siri::dialogengine::Context::Context();
  v504 = __p;
  sub_10000C88C(&v504);
  siri::dialogengine::PatternRegistry::GetSchema();
  if (v507)
  {
    siri::dialogengine::Context::GetSchemaErrors(&v504, v509);
    v3 = v504;
    v4 = v505;
    if (v504 != v505)
    {
      do
      {
        sub_10000143C(__p, &unk_10006B9FB);
        sub_1000498E0(v0, v3, __p, 0);
        if (SHIBYTE(v468) < 0)
        {
          operator delete(__p[0]);
        }

        v3 += 24;
      }

      while (v3 != v4);
    }

    v503[1] = 0;
    v503[0] = 0;
    v502 = v503;
    siri::dialogengine::PatternSchema::GetGroups(__p, v507);
    v453 = v2;
    if (__p[0] != __p[1])
    {
      v6 = *__p[0];
      v5 = *(__p[0] + 1);
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 88))(&v499, v6);
      (*(*v6 + 72))(&v501, v6);
      sub_1000248F4();
    }

    v501.__r_.__value_.__r.__words[0] = __p;
    sub_100007C5C(&v501);
    sub_10000143C(&v501, "<!DOCTYPE html>\n<html>\n<head>\n");
    siri::dialogengine::PatternSchema::GetName(&v499, v507);
    v7 = std::string::insert(&v499, 0, "<title>");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v500, "</title>\n");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v468 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v468 >= 0)
    {
      v12 = HIBYTE(v468);
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(&v501, v11, v12);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    std::string::append(&v501, "<style>\n      body {\n        font-family: Arial, Helvetica, sans-serif;\n      }\n      table, th, td {\n        border: 1px solid lightgrey;\n        border-collapse: collapse;\n        font-size: 90%;\n      }\n      th, td {\n        padding: 5pt;\n      }\n      .patternDescription {\n        white-space: pre-wrap;\n      }\n      .greyColor {\n        background-color: #f4f5f7;\n      }\n      .dialogColor {\n        background-color: #ffebe5;\n      }\n      .visualColor {\n        background-color: #deebff;\n      }\n      .usage {\n        text-align: center;\n      }\n      .combinationOperator {\n        background-color: #f4f5f7;\n        font-style: italic;\n        text-align: center;\n      }\n      .variants {\n        color: grey;\n        font-size: 90%;\n      }\n      .variantsLabel {\n        color: black;\n      }\n      .defaultVariant {\n        font-weight: bold;\n      }\n      .empty {\n        color: lightgrey;\n      }\n      .error {\n        background-color: #cc0000;\n      }\n");
    std::string::append(&v501, "</style>\n");
    std::string::append(&v501, "</head>\n<body>\n");
    siri::dialogengine::PatternSchema::GetName(&v499, v507);
    v13 = std::string::insert(&v499, 0, "<h2>");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v500, "</h2>\n");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v468 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if (v468 >= 0)
    {
      v18 = HIBYTE(v468);
    }

    else
    {
      v18 = __p[1];
    }

    std::string::append(&v501, v17, v18);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    siri::dialogengine::PatternSchema::GetDescription(&v499, v507);
    v19 = std::string::insert(&v499, 0, "<p class=patternDescription>");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v500, "</p>\n");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v468 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if (v468 >= 0)
    {
      v24 = HIBYTE(v468);
    }

    else
    {
      v24 = __p[1];
    }

    std::string::append(&v501, v23, v24);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    std::string::append(&v501, "<table border=1>\n");
    std::string::append(&v501, "<tr>\n");
    sub_100023408(1uLL, byte_100078610);
    v25 = std::string::append(&v499, "Group Name");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v498;
    }

    else
    {
      v27 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v498.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v500, v27, size);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v468 = v29->__r_.__value_.__r.__words[2];
    *__p = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    if (v468 >= 0)
    {
      v32 = HIBYTE(v468);
    }

    else
    {
      v32 = __p[1];
    }

    std::string::append(&v501, v31, v32);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078610);
    v33 = std::string::append(&v499, "Usage");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v498;
    }

    else
    {
      v35 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = v498.__r_.__value_.__l.__size_;
    }

    v37 = std::string::append(&v500, v35, v36);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v468 = v37->__r_.__value_.__r.__words[2];
    *__p = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v39 = __p;
    }

    else
    {
      v39 = __p[0];
    }

    if (v468 >= 0)
    {
      v40 = HIBYTE(v468);
    }

    else
    {
      v40 = __p[1];
    }

    std::string::append(&v501, v39, v40);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078610);
    sub_10000143C(&v499, "</th>\n");
    if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v499;
    }

    else
    {
      v41 = v499.__r_.__value_.__r.__words[0];
    }

    if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v499.__r_.__value_.__l.__size_;
    }

    v43 = std::string::append(&v500, v41, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v468 = v43->__r_.__value_.__r.__words[2];
    *__p = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v45 = __p;
    }

    else
    {
      v45 = __p[0];
    }

    if (v468 >= 0)
    {
      v46 = HIBYTE(v468);
    }

    else
    {
      v46 = __p[1];
    }

    std::string::append(&v501, v45, v46);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078628);
    v47 = std::string::append(&v499, "Dialog Component");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v498;
    }

    else
    {
      v49 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v498.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v500, v49, v50);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v468 = v51->__r_.__value_.__r.__words[2];
    *__p = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v53 = __p;
    }

    else
    {
      v53 = __p[0];
    }

    if (v468 >= 0)
    {
      v54 = HIBYTE(v468);
    }

    else
    {
      v54 = __p[1];
    }

    std::string::append(&v501, v53, v54);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078628);
    v55 = std::string::append(&v499, "Usage");
    v56 = *&v55->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v498;
    }

    else
    {
      v57 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v58 = v498.__r_.__value_.__l.__size_;
    }

    v59 = std::string::append(&v500, v57, v58);
    v60 = *&v59->__r_.__value_.__l.__data_;
    v468 = v59->__r_.__value_.__r.__words[2];
    *__p = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v61 = __p;
    }

    else
    {
      v61 = __p[0];
    }

    if (v468 >= 0)
    {
      v62 = HIBYTE(v468);
    }

    else
    {
      v62 = __p[1];
    }

    std::string::append(&v501, v61, v62);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078628);
    v63 = std::string::append(&v499, "Full");
    v64 = *&v63->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v498;
    }

    else
    {
      v65 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v66 = v498.__r_.__value_.__l.__size_;
    }

    v67 = std::string::append(&v500, v65, v66);
    v68 = *&v67->__r_.__value_.__l.__data_;
    v468 = v67->__r_.__value_.__r.__words[2];
    *__p = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v69 = __p;
    }

    else
    {
      v69 = __p[0];
    }

    if (v468 >= 0)
    {
      v70 = HIBYTE(v468);
    }

    else
    {
      v70 = __p[1];
    }

    std::string::append(&v501, v69, v70);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078628);
    v71 = std::string::append(&v499, "Full Dialog Examples");
    v72 = *&v71->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v72;
    v71->__r_.__value_.__l.__size_ = 0;
    v71->__r_.__value_.__r.__words[2] = 0;
    v71->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &v498;
    }

    else
    {
      v73 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = v498.__r_.__value_.__l.__size_;
    }

    v75 = std::string::append(&v500, v73, v74);
    v76 = *&v75->__r_.__value_.__l.__data_;
    v468 = v75->__r_.__value_.__r.__words[2];
    *__p = v76;
    v75->__r_.__value_.__l.__size_ = 0;
    v75->__r_.__value_.__r.__words[2] = 0;
    v75->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v77 = __p;
    }

    else
    {
      v77 = __p[0];
    }

    if (v468 >= 0)
    {
      v78 = HIBYTE(v468);
    }

    else
    {
      v78 = __p[1];
    }

    std::string::append(&v501, v77, v78);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078628);
    v79 = std::string::append(&v499, "Supporting");
    v80 = *&v79->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v80;
    v79->__r_.__value_.__l.__size_ = 0;
    v79->__r_.__value_.__r.__words[2] = 0;
    v79->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &v498;
    }

    else
    {
      v81 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v82 = v498.__r_.__value_.__l.__size_;
    }

    v83 = std::string::append(&v500, v81, v82);
    v84 = *&v83->__r_.__value_.__l.__data_;
    v468 = v83->__r_.__value_.__r.__words[2];
    *__p = v84;
    v83->__r_.__value_.__l.__size_ = 0;
    v83->__r_.__value_.__r.__words[2] = 0;
    v83->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v85 = __p;
    }

    else
    {
      v85 = __p[0];
    }

    if (v468 >= 0)
    {
      v86 = HIBYTE(v468);
    }

    else
    {
      v86 = __p[1];
    }

    std::string::append(&v501, v85, v86);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078628);
    v87 = std::string::append(&v499, "Supporting Dialog Examples");
    v88 = *&v87->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v88;
    v87->__r_.__value_.__l.__size_ = 0;
    v87->__r_.__value_.__r.__words[2] = 0;
    v87->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v89 = &v498;
    }

    else
    {
      v89 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v90 = v498.__r_.__value_.__l.__size_;
    }

    v91 = std::string::append(&v500, v89, v90);
    v92 = *&v91->__r_.__value_.__l.__data_;
    v468 = v91->__r_.__value_.__r.__words[2];
    *__p = v92;
    v91->__r_.__value_.__l.__size_ = 0;
    v91->__r_.__value_.__r.__words[2] = 0;
    v91->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v93 = __p;
    }

    else
    {
      v93 = __p[0];
    }

    if (v468 >= 0)
    {
      v94 = HIBYTE(v468);
    }

    else
    {
      v94 = __p[1];
    }

    std::string::append(&v501, v93, v94);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078610);
    sub_10000143C(&v499, "</th>\n");
    if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v95 = &v499;
    }

    else
    {
      v95 = v499.__r_.__value_.__r.__words[0];
    }

    if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v96 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v96 = v499.__r_.__value_.__l.__size_;
    }

    v97 = std::string::append(&v500, v95, v96);
    v98 = *&v97->__r_.__value_.__l.__data_;
    v468 = v97->__r_.__value_.__r.__words[2];
    *__p = v98;
    v97->__r_.__value_.__l.__size_ = 0;
    v97->__r_.__value_.__r.__words[2] = 0;
    v97->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v99 = __p;
    }

    else
    {
      v99 = __p[0];
    }

    if (v468 >= 0)
    {
      v100 = HIBYTE(v468);
    }

    else
    {
      v100 = __p[1];
    }

    std::string::append(&v501, v99, v100);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    sub_100023408(0, byte_100078640);
    v101 = std::string::append(&v499, "Visual Component");
    v102 = *&v101->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v102;
    v101->__r_.__value_.__l.__size_ = 0;
    v101->__r_.__value_.__r.__words[2] = 0;
    v101->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = &v498;
    }

    else
    {
      v103 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v104 = v498.__r_.__value_.__l.__size_;
    }

    v105 = std::string::append(&v500, v103, v104);
    v106 = *&v105->__r_.__value_.__l.__data_;
    v468 = v105->__r_.__value_.__r.__words[2];
    *__p = v106;
    v105->__r_.__value_.__l.__size_ = 0;
    v105->__r_.__value_.__r.__words[2] = 0;
    v105->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v107 = __p;
    }

    else
    {
      v107 = __p[0];
    }

    if (v468 >= 0)
    {
      v108 = HIBYTE(v468);
    }

    else
    {
      v108 = __p[1];
    }

    std::string::append(&v501, v107, v108);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078640);
    v109 = std::string::append(&v499, "Usage");
    v110 = *&v109->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v110;
    v109->__r_.__value_.__l.__size_ = 0;
    v109->__r_.__value_.__r.__words[2] = 0;
    v109->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = &v498;
    }

    else
    {
      v111 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v112 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v112 = v498.__r_.__value_.__l.__size_;
    }

    v113 = std::string::append(&v500, v111, v112);
    v114 = *&v113->__r_.__value_.__l.__data_;
    v468 = v113->__r_.__value_.__r.__words[2];
    *__p = v114;
    v113->__r_.__value_.__l.__size_ = 0;
    v113->__r_.__value_.__r.__words[2] = 0;
    v113->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v115 = __p;
    }

    else
    {
      v115 = __p[0];
    }

    if (v468 >= 0)
    {
      v116 = HIBYTE(v468);
    }

    else
    {
      v116 = __p[1];
    }

    std::string::append(&v501, v115, v116);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078640);
    v117 = std::string::append(&v499, "Full");
    v118 = *&v117->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v118;
    v117->__r_.__value_.__l.__size_ = 0;
    v117->__r_.__value_.__r.__words[2] = 0;
    v117->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v119 = &v498;
    }

    else
    {
      v119 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v120 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v120 = v498.__r_.__value_.__l.__size_;
    }

    v121 = std::string::append(&v500, v119, v120);
    v122 = *&v121->__r_.__value_.__l.__data_;
    v468 = v121->__r_.__value_.__r.__words[2];
    *__p = v122;
    v121->__r_.__value_.__l.__size_ = 0;
    v121->__r_.__value_.__r.__words[2] = 0;
    v121->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v123 = __p;
    }

    else
    {
      v123 = __p[0];
    }

    if (v468 >= 0)
    {
      v124 = HIBYTE(v468);
    }

    else
    {
      v124 = __p[1];
    }

    std::string::append(&v501, v123, v124);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078640);
    v125 = std::string::append(&v499, "Full Overrides");
    v126 = *&v125->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v126;
    v125->__r_.__value_.__l.__size_ = 0;
    v125->__r_.__value_.__r.__words[2] = 0;
    v125->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v127 = &v498;
    }

    else
    {
      v127 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v128 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v128 = v498.__r_.__value_.__l.__size_;
    }

    v129 = std::string::append(&v500, v127, v128);
    v130 = *&v129->__r_.__value_.__l.__data_;
    v468 = v129->__r_.__value_.__r.__words[2];
    *__p = v130;
    v129->__r_.__value_.__l.__size_ = 0;
    v129->__r_.__value_.__r.__words[2] = 0;
    v129->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v131 = __p;
    }

    else
    {
      v131 = __p[0];
    }

    if (v468 >= 0)
    {
      v132 = HIBYTE(v468);
    }

    else
    {
      v132 = __p[1];
    }

    std::string::append(&v501, v131, v132);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078640);
    v133 = std::string::append(&v499, "Supporting");
    v134 = *&v133->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v134;
    v133->__r_.__value_.__l.__size_ = 0;
    v133->__r_.__value_.__r.__words[2] = 0;
    v133->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v135 = &v498;
    }

    else
    {
      v135 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v136 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v136 = v498.__r_.__value_.__l.__size_;
    }

    v137 = std::string::append(&v500, v135, v136);
    v138 = *&v137->__r_.__value_.__l.__data_;
    v468 = v137->__r_.__value_.__r.__words[2];
    *__p = v138;
    v137->__r_.__value_.__l.__size_ = 0;
    v137->__r_.__value_.__r.__words[2] = 0;
    v137->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v139 = __p;
    }

    else
    {
      v139 = __p[0];
    }

    if (v468 >= 0)
    {
      v140 = HIBYTE(v468);
    }

    else
    {
      v140 = __p[1];
    }

    std::string::append(&v501, v139, v140);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    sub_100023408(1uLL, byte_100078640);
    v141 = std::string::append(&v499, "Supporting Overrides");
    v142 = *&v141->__r_.__value_.__l.__data_;
    v500.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
    *&v500.__r_.__value_.__l.__data_ = v142;
    v141->__r_.__value_.__l.__size_ = 0;
    v141->__r_.__value_.__r.__words[2] = 0;
    v141->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v498, "</th>\n");
    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v143 = &v498;
    }

    else
    {
      v143 = v498.__r_.__value_.__r.__words[0];
    }

    if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v144 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v144 = v498.__r_.__value_.__l.__size_;
    }

    v145 = std::string::append(&v500, v143, v144);
    v146 = *&v145->__r_.__value_.__l.__data_;
    v468 = v145->__r_.__value_.__r.__words[2];
    *__p = v146;
    v145->__r_.__value_.__l.__size_ = 0;
    v145->__r_.__value_.__r.__words[2] = 0;
    v145->__r_.__value_.__r.__words[0] = 0;
    if (v468 >= 0)
    {
      v147 = __p;
    }

    else
    {
      v147 = __p[0];
    }

    if (v468 >= 0)
    {
      v148 = HIBYTE(v468);
    }

    else
    {
      v148 = __p[1];
    }

    std::string::append(&v501, v147, v148);
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v498.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v500.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v499.__r_.__value_.__l.__data_);
    }

    std::string::append(&v501, "</tr>\n");
    siri::dialogengine::PatternSchema::GetGroups(__p, v507);
    v149 = __p[0];
    v454 = __p[1];
    if (__p[0] != __p[1])
    {
      do
      {
        v455 = v149;
        v151 = *v149;
        v150 = v149[1];
        if (v150)
        {
          atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v456 = v150;
        std::string::append(&v501, "\n");
        siri::dialogengine::PatternSchemaGroup::GetName(&v497, v151);
        v152 = std::string::insert(&v497, 0, "Group: ");
        v153 = *&v152->__r_.__value_.__l.__data_;
        v498.__r_.__value_.__r.__words[2] = v152->__r_.__value_.__r.__words[2];
        *&v498.__r_.__value_.__l.__data_ = v153;
        v152->__r_.__value_.__l.__size_ = 0;
        v152->__r_.__value_.__r.__words[2] = 0;
        v152->__r_.__value_.__r.__words[0] = 0;
        v154 = std::string::append(&v498, "");
        v155 = *&v154->__r_.__value_.__l.__data_;
        v499.__r_.__value_.__r.__words[2] = v154->__r_.__value_.__r.__words[2];
        *&v499.__r_.__value_.__l.__data_ = v155;
        v154->__r_.__value_.__l.__size_ = 0;
        v154->__r_.__value_.__r.__words[2] = 0;
        v154->__r_.__value_.__r.__words[0] = 0;
        sub_100023658(&v500);
        if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v156 = &v500;
        }

        else
        {
          v156 = v500.__r_.__value_.__r.__words[0];
        }

        if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v157 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v157 = v500.__r_.__value_.__l.__size_;
        }

        std::string::append(&v501, v156, v157);
        if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v500.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v499.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v498.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v497.__r_.__value_.__l.__data_);
        }

        (*(*v151 + 48))(&v500, v151);
        v158 = v500.__r_.__value_.__l.__size_;
        v159 = v500.__r_.__value_.__r.__words[0];
        v499.__r_.__value_.__r.__words[0] = &v500;
        sub_100002260(&v499);
        if (v158 != v159)
        {
          std::string::append(&v501, "<tr>\n");
          sub_10000143C(&v497, &unk_10006B9FB);
          sub_1000236E8(1uLL, 1uLL, &v497, &v498);
          siri::dialogengine::PatternSchemaGroup::GetName(&v495, v151);
          sub_10000143C(v493, &unk_10006B9FB);
          memset(v492, 0, sizeof(v492));
          sub_10000143C(v490, &unk_10006B9FB);
          sub_1000239FC(&v495, v493, v492, v490, 0, &v496);
          if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v160 = &v496;
          }

          else
          {
            v160 = v496.__r_.__value_.__r.__words[0];
          }

          if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v161 = HIBYTE(v496.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v161 = v496.__r_.__value_.__l.__size_;
          }

          v162 = std::string::append(&v498, v160, v161);
          v163 = *&v162->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v162->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v163;
          v162->__r_.__value_.__l.__size_ = 0;
          v162->__r_.__value_.__r.__words[2] = 0;
          v162->__r_.__value_.__r.__words[0] = 0;
          sub_10000143C(&v489, "</td>\n");
          if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v164 = &v489;
          }

          else
          {
            v164 = v489.__r_.__value_.__r.__words[0];
          }

          if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v165 = HIBYTE(v489.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v165 = v489.__r_.__value_.__l.__size_;
          }

          v166 = std::string::append(&v499, v164, v165);
          v167 = *&v166->__r_.__value_.__l.__data_;
          v500.__r_.__value_.__r.__words[2] = v166->__r_.__value_.__r.__words[2];
          *&v500.__r_.__value_.__l.__data_ = v167;
          v166->__r_.__value_.__l.__size_ = 0;
          v166->__r_.__value_.__r.__words[2] = 0;
          v166->__r_.__value_.__r.__words[0] = 0;
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v168 = &v500;
          }

          else
          {
            v168 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v169 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v169 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v168, v169);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v489.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v489.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v496.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v496.__r_.__value_.__l.__data_);
          }

          if (v491 < 0)
          {
            operator delete(v490[0]);
          }

          v489.__r_.__value_.__r.__words[0] = v492;
          sub_100002260(&v489);
          if (v494 < 0)
          {
            operator delete(v493[0]);
          }

          if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v495.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

          sub_1000236E8(1uLL, 1uLL, byte_100078658, &v498);
          (*(*v151 + 40))(&v496, v151);
          sub_100024230(&v496, &v497);
          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v170 = &v497;
          }

          else
          {
            v170 = v497.__r_.__value_.__r.__words[0];
          }

          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v171 = HIBYTE(v497.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v171 = v497.__r_.__value_.__l.__size_;
          }

          v172 = std::string::append(&v498, v170, v171);
          v173 = *&v172->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v172->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v173;
          v172->__r_.__value_.__l.__size_ = 0;
          v172->__r_.__value_.__r.__words[2] = 0;
          v172->__r_.__value_.__r.__words[0] = 0;
          sub_10000143C(&v495, "</td>\n");
          if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v174 = &v495;
          }

          else
          {
            v174 = v495.__r_.__value_.__r.__words[0];
          }

          if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v175 = HIBYTE(v495.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v175 = v495.__r_.__value_.__l.__size_;
          }

          v176 = std::string::append(&v499, v174, v175);
          v177 = *&v176->__r_.__value_.__l.__data_;
          v500.__r_.__value_.__r.__words[2] = v176->__r_.__value_.__r.__words[2];
          *&v500.__r_.__value_.__l.__data_ = v177;
          v176->__r_.__value_.__l.__size_ = 0;
          v176->__r_.__value_.__r.__words[2] = 0;
          v176->__r_.__value_.__r.__words[0] = 0;
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v178 = &v500;
          }

          else
          {
            v178 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v179 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v179 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v178, v179);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v495.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

          v495.__r_.__value_.__r.__words[0] = &v496;
          sub_100007C5C(&v495);
          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          sub_1000236E8(1uLL, 1uLL, byte_100078610, &v499);
          sub_10000143C(&v498, "</td>\n");
          if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v180 = &v498;
          }

          else
          {
            v180 = v498.__r_.__value_.__r.__words[0];
          }

          if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v181 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v181 = v498.__r_.__value_.__l.__size_;
          }

          v182 = std::string::append(&v499, v180, v181);
          v183 = *&v182->__r_.__value_.__l.__data_;
          v500.__r_.__value_.__r.__words[2] = v182->__r_.__value_.__r.__words[2];
          *&v500.__r_.__value_.__l.__data_ = v183;
          v182->__r_.__value_.__l.__size_ = 0;
          v182->__r_.__value_.__r.__words[2] = 0;
          v182->__r_.__value_.__r.__words[0] = 0;
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v184 = &v500;
          }

          else
          {
            v184 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v185 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v185 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v184, v185);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          sub_10000143C(&v499, &unk_10006B9FB);
          sub_1000236E8(0xCuLL, 1uLL, &v499, &v500);
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v186 = &v500;
          }

          else
          {
            v186 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v187 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v187 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v186, v187);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          (*(*v151 + 48))(&v500, v151);
          v189 = v500.__r_.__value_.__l.__size_;
          v188 = v500.__r_.__value_.__r.__words[0];
          if (v500.__r_.__value_.__r.__words[0] != v500.__r_.__value_.__l.__size_)
          {
            v190 = 1;
            do
            {
              if ((v190 & 1) == 0)
              {
                std::string::append(&v501, "<br/> or ");
              }

              std::operator+<char>();
              v191 = std::string::append(&v498, "</b>");
              v192 = *&v191->__r_.__value_.__l.__data_;
              v499.__r_.__value_.__r.__words[2] = v191->__r_.__value_.__r.__words[2];
              *&v499.__r_.__value_.__l.__data_ = v192;
              v191->__r_.__value_.__l.__size_ = 0;
              v191->__r_.__value_.__r.__words[2] = 0;
              v191->__r_.__value_.__r.__words[0] = 0;
              if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v193 = &v499;
              }

              else
              {
                v193 = v499.__r_.__value_.__r.__words[0];
              }

              if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v194 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v194 = v499.__r_.__value_.__l.__size_;
              }

              std::string::append(&v501, v193, v194);
              if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v499.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v498.__r_.__value_.__l.__data_);
              }

              v190 = 0;
              v188 += 24;
            }

            while (v188 != v189);
          }

          v499.__r_.__value_.__r.__words[0] = &v500;
          sub_100002260(&v499);
          sub_10000143C(&v500, "</td>\n");
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v195 = &v500;
          }

          else
          {
            v195 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v196 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v196 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v195, v196);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          std::string::append(&v501, "</tr>\n");
        }

        (*(*v151 + 56))(&v500, v151);
        v197 = v500.__r_.__value_.__l.__size_;
        v198 = v500.__r_.__value_.__r.__words[0];
        v499.__r_.__value_.__r.__words[0] = &v500;
        sub_100007C5C(&v499);
        siri::dialogengine::PatternSchemaGroup::GetName(&v500, v151);
        v498.__r_.__value_.__r.__words[0] = &v500;
        v464 = v151;
        v199 = *(sub_100024B40(&v502, &v500.__r_.__value_.__l.__data_) + 56);
        if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v500.__r_.__value_.__l.__data_);
        }

        v200 = 0;
        v201 = (v197 - v198) >> 4;
        v466 = v199;
        v202 = v199[5];
        if (v201 <= v202)
        {
          v203 = v199[5];
        }

        else
        {
          v203 = (v197 - v198) >> 4;
        }

        v461 = v199[5];
        v462 = (v197 - v198) >> 4;
        v459 = v203 - v201 + 1;
        v460 = v201 - 1;
        __val = v203;
        v457 = v203 - v202 + 1;
        v458 = v202 - 1;
        while (v200 != __val)
        {
          std::string::append(&v501, "\n");
          siri::dialogengine::PatternSchemaGroup::GetName(&v489, v464);
          v204 = std::string::insert(&v489, 0, "Group ");
          v205 = *&v204->__r_.__value_.__l.__data_;
          v495.__r_.__value_.__r.__words[2] = v204->__r_.__value_.__r.__words[2];
          *&v495.__r_.__value_.__l.__data_ = v205;
          v204->__r_.__value_.__l.__size_ = 0;
          v204->__r_.__value_.__r.__words[2] = 0;
          v204->__r_.__value_.__r.__words[0] = 0;
          v206 = std::string::append(&v495, " row ");
          v207 = *&v206->__r_.__value_.__l.__data_;
          v496.__r_.__value_.__r.__words[2] = v206->__r_.__value_.__r.__words[2];
          *&v496.__r_.__value_.__l.__data_ = v207;
          v206->__r_.__value_.__l.__size_ = 0;
          v206->__r_.__value_.__r.__words[2] = 0;
          v206->__r_.__value_.__r.__words[0] = 0;
          v463 = v200 + 1;
          std::to_string(&v488, v200 + 1);
          if ((v488.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v208 = &v488;
          }

          else
          {
            v208 = v488.__r_.__value_.__r.__words[0];
          }

          if ((v488.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v209 = HIBYTE(v488.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v209 = v488.__r_.__value_.__l.__size_;
          }

          v210 = std::string::append(&v496, v208, v209);
          v211 = *&v210->__r_.__value_.__l.__data_;
          v497.__r_.__value_.__r.__words[2] = v210->__r_.__value_.__r.__words[2];
          *&v497.__r_.__value_.__l.__data_ = v211;
          v210->__r_.__value_.__l.__size_ = 0;
          v210->__r_.__value_.__r.__words[2] = 0;
          v210->__r_.__value_.__r.__words[0] = 0;
          v212 = std::string::append(&v497, " of ");
          v213 = *&v212->__r_.__value_.__l.__data_;
          v498.__r_.__value_.__r.__words[2] = v212->__r_.__value_.__r.__words[2];
          *&v498.__r_.__value_.__l.__data_ = v213;
          v212->__r_.__value_.__l.__size_ = 0;
          v212->__r_.__value_.__r.__words[2] = 0;
          v212->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v487, __val);
          if ((v487.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v214 = &v487;
          }

          else
          {
            v214 = v487.__r_.__value_.__r.__words[0];
          }

          if ((v487.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v215 = HIBYTE(v487.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v215 = v487.__r_.__value_.__l.__size_;
          }

          v216 = std::string::append(&v498, v214, v215);
          v217 = *&v216->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v216->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v217;
          v216->__r_.__value_.__l.__size_ = 0;
          v216->__r_.__value_.__r.__words[2] = 0;
          v216->__r_.__value_.__r.__words[0] = 0;
          sub_100023658(&v500);
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v218 = &v500;
          }

          else
          {
            v218 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v219 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v219 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v218, v219);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v487.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v487.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v488.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v488.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v496.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v496.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v495.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v489.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v489.__r_.__value_.__l.__data_);
          }

          std::string::append(&v501, "<tr>\n");
          if (!v200)
          {
            sub_10000143C(&v497, &unk_10006B9FB);
            sub_1000236E8(1uLL, __val, &v497, &v498);
            siri::dialogengine::PatternSchemaGroup::GetName(&v495, v464);
            sub_10000143C(v485, &unk_10006B9FB);
            memset(v484, 0, sizeof(v484));
            sub_10000143C(v482, &unk_10006B9FB);
            sub_1000239FC(&v495, v485, v484, v482, 0, &v496);
            if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v220 = &v496;
            }

            else
            {
              v220 = v496.__r_.__value_.__r.__words[0];
            }

            if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v221 = HIBYTE(v496.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v221 = v496.__r_.__value_.__l.__size_;
            }

            v222 = std::string::append(&v498, v220, v221);
            v223 = *&v222->__r_.__value_.__l.__data_;
            v499.__r_.__value_.__r.__words[2] = v222->__r_.__value_.__r.__words[2];
            *&v499.__r_.__value_.__l.__data_ = v223;
            v222->__r_.__value_.__l.__size_ = 0;
            v222->__r_.__value_.__r.__words[2] = 0;
            v222->__r_.__value_.__r.__words[0] = 0;
            sub_10000143C(&v489, "</td>\n");
            if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v224 = &v489;
            }

            else
            {
              v224 = v489.__r_.__value_.__r.__words[0];
            }

            if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v225 = HIBYTE(v489.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v225 = v489.__r_.__value_.__l.__size_;
            }

            v226 = std::string::append(&v499, v224, v225);
            v227 = *&v226->__r_.__value_.__l.__data_;
            v500.__r_.__value_.__r.__words[2] = v226->__r_.__value_.__r.__words[2];
            *&v500.__r_.__value_.__l.__data_ = v227;
            v226->__r_.__value_.__l.__size_ = 0;
            v226->__r_.__value_.__r.__words[2] = 0;
            v226->__r_.__value_.__r.__words[0] = 0;
            if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v228 = &v500;
            }

            else
            {
              v228 = v500.__r_.__value_.__r.__words[0];
            }

            if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v229 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v229 = v500.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v228, v229);
            if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v500.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v489.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v489.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v496.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v496.__r_.__value_.__l.__data_);
            }

            if (v483 < 0)
            {
              operator delete(v482[0]);
            }

            v489.__r_.__value_.__r.__words[0] = v484;
            sub_100002260(&v489);
            if (v486 < 0)
            {
              operator delete(v485[0]);
            }

            if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v495.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v498.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v497.__r_.__value_.__l.__data_);
            }

            sub_1000236E8(1uLL, __val, byte_100078658, &v498);
            (*(*v464 + 40))(&v496);
            sub_100024230(&v496, &v497);
            if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v230 = &v497;
            }

            else
            {
              v230 = v497.__r_.__value_.__r.__words[0];
            }

            if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v231 = HIBYTE(v497.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v231 = v497.__r_.__value_.__l.__size_;
            }

            v232 = std::string::append(&v498, v230, v231);
            v233 = *&v232->__r_.__value_.__l.__data_;
            v499.__r_.__value_.__r.__words[2] = v232->__r_.__value_.__r.__words[2];
            *&v499.__r_.__value_.__l.__data_ = v233;
            v232->__r_.__value_.__l.__size_ = 0;
            v232->__r_.__value_.__r.__words[2] = 0;
            v232->__r_.__value_.__r.__words[0] = 0;
            sub_10000143C(&v495, "</td>\n");
            if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v234 = &v495;
            }

            else
            {
              v234 = v495.__r_.__value_.__r.__words[0];
            }

            if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v235 = HIBYTE(v495.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v235 = v495.__r_.__value_.__l.__size_;
            }

            v236 = std::string::append(&v499, v234, v235);
            v237 = *&v236->__r_.__value_.__l.__data_;
            v500.__r_.__value_.__r.__words[2] = v236->__r_.__value_.__r.__words[2];
            *&v500.__r_.__value_.__l.__data_ = v237;
            v236->__r_.__value_.__l.__size_ = 0;
            v236->__r_.__value_.__r.__words[2] = 0;
            v236->__r_.__value_.__r.__words[0] = 0;
            if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v238 = &v500;
            }

            else
            {
              v238 = v500.__r_.__value_.__r.__words[0];
            }

            if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v239 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v239 = v500.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v238, v239);
            if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v500.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v495.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v497.__r_.__value_.__l.__data_);
            }

            v495.__r_.__value_.__r.__words[0] = &v496;
            sub_100007C5C(&v495);
            if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v498.__r_.__value_.__l.__data_);
            }

            sub_1000236E8(1uLL, __val, byte_100078610, &v499);
            sub_10000143C(&v498, "</td>\n");
            if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v240 = &v498;
            }

            else
            {
              v240 = v498.__r_.__value_.__r.__words[0];
            }

            if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v241 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v241 = v498.__r_.__value_.__l.__size_;
            }

            v242 = std::string::append(&v499, v240, v241);
            v243 = *&v242->__r_.__value_.__l.__data_;
            v500.__r_.__value_.__r.__words[2] = v242->__r_.__value_.__r.__words[2];
            *&v500.__r_.__value_.__l.__data_ = v243;
            v242->__r_.__value_.__l.__size_ = 0;
            v242->__r_.__value_.__r.__words[2] = 0;
            v242->__r_.__value_.__r.__words[0] = 0;
            if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v244 = &v500;
            }

            else
            {
              v244 = v500.__r_.__value_.__r.__words[0];
            }

            if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v245 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v245 = v500.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v244, v245);
            if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v500.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v498.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }
          }

          std::string::append(&v501, "\n");
          sub_10000143C(&v499, "Dialog Components");
          sub_100023658(&v500);
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v246 = &v500;
          }

          else
          {
            v246 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v247 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v247 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v246, v247);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (v200 >= v462)
          {
            if (!(v200 | v462))
            {
              sub_1000236E8(6uLL, __val, byte_100078670, &v498);
              v297 = std::string::append(&v498, "(None)");
              v298 = *&v297->__r_.__value_.__l.__data_;
              v499.__r_.__value_.__r.__words[2] = v297->__r_.__value_.__r.__words[2];
              *&v499.__r_.__value_.__l.__data_ = v298;
              v297->__r_.__value_.__l.__size_ = 0;
              v297->__r_.__value_.__r.__words[2] = 0;
              v297->__r_.__value_.__r.__words[0] = 0;
              sub_10000143C(&v497, "</td>\n");
              if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v299 = &v497;
              }

              else
              {
                v299 = v497.__r_.__value_.__r.__words[0];
              }

              if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v300 = HIBYTE(v497.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v300 = v497.__r_.__value_.__l.__size_;
              }

              v301 = std::string::append(&v499, v299, v300);
              v302 = *&v301->__r_.__value_.__l.__data_;
              v500.__r_.__value_.__r.__words[2] = v301->__r_.__value_.__r.__words[2];
              *&v500.__r_.__value_.__l.__data_ = v302;
              v301->__r_.__value_.__l.__size_ = 0;
              v301->__r_.__value_.__r.__words[2] = 0;
              v301->__r_.__value_.__r.__words[0] = 0;
              if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v303 = &v500;
              }

              else
              {
                v303 = v500.__r_.__value_.__r.__words[0];
              }

              if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v304 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v304 = v500.__r_.__value_.__l.__size_;
              }

              std::string::append(&v501, v303, v304);
              if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v500.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v497.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v499.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v498.__r_.__value_.__l.__data_);
                if (v200)
                {
                  goto LABEL_824;
                }

                goto LABEL_803;
              }
            }

LABEL_802:
            if (v200)
            {
              goto LABEL_824;
            }

            goto LABEL_803;
          }

          if (v200 == v460)
          {
            v248 = v459;
          }

          else
          {
            v248 = 1;
          }

          (*(*v464 + 56))(&v500);
          v249 = v500.__r_.__value_.__r.__words[0] + 16 * v200;
          v251 = *v249;
          v250 = *(v249 + 8);
          if (v250)
          {
            atomic_fetch_add_explicit(&v250->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v499.__r_.__value_.__r.__words[0] = &v500;
          sub_100007C5C(&v499);
          sub_10000143C(&v497, &unk_10006B9FB);
          sub_1000236E8(1uLL, v248, &v497, &v498);
          siri::dialogengine::PatternSchemaComponent::GetName(&v495, v251);
          siri::dialogengine::PatternSchemaComponent::GetDefaultComponent(v480, v251);
          siri::dialogengine::PatternSchemaComponent::GetAllowedVariants(v479, v251);
          siri::dialogengine::PatternSchemaComponent::GetDefaultVariant(v477, v251);
          AllowMultiple = siri::dialogengine::PatternSchemaComponent::GetAllowMultiple(v251);
          sub_1000239FC(&v495, v480, v479, v477, AllowMultiple, &v496);
          if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v253 = &v496;
          }

          else
          {
            v253 = v496.__r_.__value_.__r.__words[0];
          }

          if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v254 = HIBYTE(v496.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v254 = v496.__r_.__value_.__l.__size_;
          }

          v255 = std::string::append(&v498, v253, v254);
          v256 = *&v255->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v255->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v256;
          v255->__r_.__value_.__l.__size_ = 0;
          v255->__r_.__value_.__r.__words[2] = 0;
          v255->__r_.__value_.__r.__words[0] = 0;
          sub_10000143C(&v489, "</td>\n");
          if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v257 = &v489;
          }

          else
          {
            v257 = v489.__r_.__value_.__r.__words[0];
          }

          if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v258 = HIBYTE(v489.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v258 = v489.__r_.__value_.__l.__size_;
          }

          v259 = std::string::append(&v499, v257, v258);
          v260 = *&v259->__r_.__value_.__l.__data_;
          v500.__r_.__value_.__r.__words[2] = v259->__r_.__value_.__r.__words[2];
          *&v500.__r_.__value_.__l.__data_ = v260;
          v259->__r_.__value_.__l.__size_ = 0;
          v259->__r_.__value_.__r.__words[2] = 0;
          v259->__r_.__value_.__r.__words[0] = 0;
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v261 = &v500;
          }

          else
          {
            v261 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v262 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v262 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v261, v262);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v489.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v489.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v496.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v496.__r_.__value_.__l.__data_);
          }

          if (v478 < 0)
          {
            operator delete(v477[0]);
          }

          v489.__r_.__value_.__r.__words[0] = v479;
          sub_100002260(&v489);
          if (v481 < 0)
          {
            operator delete(v480[0]);
          }

          if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v495.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

          sub_1000236E8(1uLL, v248, byte_100078658, &v498);
          siri::dialogengine::PatternSchemaComponent::GetUsage(&v496, v251);
          sub_100024230(&v496, &v497);
          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v263 = &v497;
          }

          else
          {
            v263 = v497.__r_.__value_.__r.__words[0];
          }

          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v264 = HIBYTE(v497.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v264 = v497.__r_.__value_.__l.__size_;
          }

          v265 = std::string::append(&v498, v263, v264);
          v266 = *&v265->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v265->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v266;
          v265->__r_.__value_.__l.__size_ = 0;
          v265->__r_.__value_.__r.__words[2] = 0;
          v265->__r_.__value_.__r.__words[0] = 0;
          sub_10000143C(&v495, "</td>\n");
          if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v267 = &v495;
          }

          else
          {
            v267 = v495.__r_.__value_.__r.__words[0];
          }

          if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v268 = HIBYTE(v495.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v268 = v495.__r_.__value_.__l.__size_;
          }

          v269 = std::string::append(&v499, v267, v268);
          v270 = *&v269->__r_.__value_.__l.__data_;
          v500.__r_.__value_.__r.__words[2] = v269->__r_.__value_.__r.__words[2];
          *&v500.__r_.__value_.__l.__data_ = v270;
          v269->__r_.__value_.__l.__size_ = 0;
          v269->__r_.__value_.__r.__words[2] = 0;
          v269->__r_.__value_.__r.__words[0] = 0;
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v271 = &v500;
          }

          else
          {
            v271 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v272 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v272 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v271, v272);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v495.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

          v495.__r_.__value_.__r.__words[0] = &v496;
          sub_100007C5C(&v495);
          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          sub_1000236E8(1uLL, v248, byte_100078658, &v498);
          siri::dialogengine::PatternSchemaComponent::GetFullUsage(&v496, v251);
          sub_100024230(&v496, &v497);
          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v273 = &v497;
          }

          else
          {
            v273 = v497.__r_.__value_.__r.__words[0];
          }

          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v274 = HIBYTE(v497.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v274 = v497.__r_.__value_.__l.__size_;
          }

          v275 = std::string::append(&v498, v273, v274);
          v276 = *&v275->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v275->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v276;
          v275->__r_.__value_.__l.__size_ = 0;
          v275->__r_.__value_.__r.__words[2] = 0;
          v275->__r_.__value_.__r.__words[0] = 0;
          sub_10000143C(&v495, "</td>\n");
          if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v277 = &v495;
          }

          else
          {
            v277 = v495.__r_.__value_.__r.__words[0];
          }

          if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v278 = HIBYTE(v495.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v278 = v495.__r_.__value_.__l.__size_;
          }

          v279 = std::string::append(&v499, v277, v278);
          v280 = *&v279->__r_.__value_.__l.__data_;
          v500.__r_.__value_.__r.__words[2] = v279->__r_.__value_.__r.__words[2];
          *&v500.__r_.__value_.__l.__data_ = v280;
          v279->__r_.__value_.__l.__size_ = 0;
          v279->__r_.__value_.__r.__words[2] = 0;
          v279->__r_.__value_.__r.__words[0] = 0;
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v281 = &v500;
          }

          else
          {
            v281 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v282 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v282 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v281, v282);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v495.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

          v495.__r_.__value_.__r.__words[0] = &v496;
          sub_100007C5C(&v495);
          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          siri::dialogengine::PatternSchemaComponent::GetFullExamples(&v499, v251);
          sub_1000245B0(v248, &v499);
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v283 = &v500;
          }

          else
          {
            v283 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v284 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v284 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v283, v284);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          v498.__r_.__value_.__r.__words[0] = &v499;
          sub_100002260(&v498);
          sub_1000236E8(1uLL, v248, byte_100078658, &v498);
          siri::dialogengine::PatternSchemaComponent::GetSupportingUsage(&v496, v251);
          sub_100024230(&v496, &v497);
          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v285 = &v497;
          }

          else
          {
            v285 = v497.__r_.__value_.__r.__words[0];
          }

          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v286 = HIBYTE(v497.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v286 = v497.__r_.__value_.__l.__size_;
          }

          v287 = std::string::append(&v498, v285, v286);
          v288 = *&v287->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v287->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v288;
          v287->__r_.__value_.__l.__size_ = 0;
          v287->__r_.__value_.__r.__words[2] = 0;
          v287->__r_.__value_.__r.__words[0] = 0;
          sub_10000143C(&v495, "</td>\n");
          if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v289 = &v495;
          }

          else
          {
            v289 = v495.__r_.__value_.__r.__words[0];
          }

          if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v290 = HIBYTE(v495.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v290 = v495.__r_.__value_.__l.__size_;
          }

          v291 = std::string::append(&v499, v289, v290);
          v292 = *&v291->__r_.__value_.__l.__data_;
          v500.__r_.__value_.__r.__words[2] = v291->__r_.__value_.__r.__words[2];
          *&v500.__r_.__value_.__l.__data_ = v292;
          v291->__r_.__value_.__l.__size_ = 0;
          v291->__r_.__value_.__r.__words[2] = 0;
          v291->__r_.__value_.__r.__words[0] = 0;
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v293 = &v500;
          }

          else
          {
            v293 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v294 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v294 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v293, v294);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v495.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

          v495.__r_.__value_.__r.__words[0] = &v496;
          sub_100007C5C(&v495);
          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          siri::dialogengine::PatternSchemaComponent::GetSupportingExamples(&v499, v251);
          sub_1000245B0(v248, &v499);
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v295 = &v500;
          }

          else
          {
            v295 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v296 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v296 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v295, v296);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          v498.__r_.__value_.__r.__words[0] = &v499;
          sub_100002260(&v498);
          if (!v250)
          {
            goto LABEL_802;
          }

          sub_100005EB4(v250);
          if (v200)
          {
            goto LABEL_824;
          }

LABEL_803:
          std::string::append(&v501, "\n");
          sub_1000236E8(1uLL, __val, byte_100078610, &v498);
          v305 = std::string::append(&v498, "&#10132;");
          v306 = *&v305->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v305->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v306;
          v305->__r_.__value_.__l.__size_ = 0;
          v305->__r_.__value_.__r.__words[2] = 0;
          v305->__r_.__value_.__r.__words[0] = 0;
          sub_10000143C(&v497, "</td>\n");
          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v307 = &v497;
          }

          else
          {
            v307 = v497.__r_.__value_.__r.__words[0];
          }

          if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v308 = HIBYTE(v497.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v308 = v497.__r_.__value_.__l.__size_;
          }

          v309 = std::string::append(&v499, v307, v308);
          v310 = *&v309->__r_.__value_.__l.__data_;
          v500.__r_.__value_.__r.__words[2] = v309->__r_.__value_.__r.__words[2];
          *&v500.__r_.__value_.__l.__data_ = v310;
          v309->__r_.__value_.__l.__size_ = 0;
          v309->__r_.__value_.__r.__words[2] = 0;
          v309->__r_.__value_.__r.__words[0] = 0;
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v311 = &v500;
          }

          else
          {
            v311 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v312 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v312 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v311, v312);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

LABEL_824:
          std::string::append(&v501, "\n");
          sub_10000143C(&v499, "Visual Components");
          sub_100023658(&v500);
          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v313 = &v500;
          }

          else
          {
            v313 = v500.__r_.__value_.__r.__words[0];
          }

          if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v314 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v314 = v500.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v313, v314);
          if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v500.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (v200 >= v461)
          {
            if (!(v200 | v461))
            {
              sub_1000236E8(5uLL, __val, byte_100078670, &v498);
              v343 = std::string::append(&v498, "(None)");
              v344 = *&v343->__r_.__value_.__l.__data_;
              v499.__r_.__value_.__r.__words[2] = v343->__r_.__value_.__r.__words[2];
              *&v499.__r_.__value_.__l.__data_ = v344;
              v343->__r_.__value_.__l.__size_ = 0;
              v343->__r_.__value_.__r.__words[2] = 0;
              v343->__r_.__value_.__r.__words[0] = 0;
              sub_10000143C(&v497, "</td>\n");
              if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v345 = &v497;
              }

              else
              {
                v345 = v497.__r_.__value_.__r.__words[0];
              }

              if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v346 = HIBYTE(v497.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v346 = v497.__r_.__value_.__l.__size_;
              }

              v347 = std::string::append(&v499, v345, v346);
              v348 = *&v347->__r_.__value_.__l.__data_;
              v500.__r_.__value_.__r.__words[2] = v347->__r_.__value_.__r.__words[2];
              *&v500.__r_.__value_.__l.__data_ = v348;
              v347->__r_.__value_.__l.__size_ = 0;
              v347->__r_.__value_.__r.__words[2] = 0;
              v347->__r_.__value_.__r.__words[0] = 0;
              if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v349 = &v500;
              }

              else
              {
                v349 = v500.__r_.__value_.__r.__words[0];
              }

              if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v350 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v350 = v500.__r_.__value_.__l.__size_;
              }

              std::string::append(&v501, v349, v350);
              if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v500.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v497.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v499.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v498.__r_.__value_.__l.__data_);
              }
            }
          }

          else
          {
            sub_1000168F8(v466, v200, &v500);
            if (v200 == v458)
            {
              v315 = v457;
            }

            else
            {
              v315 = 1;
            }

            v317 = v500.__r_.__value_.__l.__size_;
            v316 = v500.__r_.__value_.__r.__words[0];
            if (v500.__r_.__value_.__r.__words[0] != v500.__r_.__value_.__l.__size_)
            {
              v318 = 0;
              v319 = 0;
              while (1)
              {
                if (siri::dialogengine::VisualComponentsCombination::Entry::GetType(*v316) == 4)
                {
                  siri::dialogengine::VisualComponentsCombination::Entry::GetComponentName(&v499, *v316);
                  sub_100016BA0(v466, &v499.__r_.__value_.__l.__data_, &v498);
                  v320 = v498.__r_.__value_.__l.__size_;
                  v318 = v498.__r_.__value_.__r.__words[0];
                  *&v498.__r_.__value_.__l.__data_ = 0uLL;
                  if (v319)
                  {
                    sub_100005EB4(v319);
                    if (v498.__r_.__value_.__l.__size_)
                    {
                      sub_100005EB4(v498.__r_.__value_.__l.__size_);
                    }
                  }

                  if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v499.__r_.__value_.__l.__data_);
                  }

                  memset(&v499, 0, sizeof(v499));
                  if (!v318)
                  {
                    std::string::operator=(&v499, byte_1000786D0);
                    operator new();
                  }

                  v319 = v320;
                  sub_1000236E8(1 - *(v316 + 16), v315, &v499, &v498);
                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v336 = &v498;
                  }

                  else
                  {
                    v336 = v498.__r_.__value_.__r.__words[0];
                  }

                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v337 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v337 = v498.__r_.__value_.__l.__size_;
                  }

                  std::string::append(&v501, v336, v337);
                  if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v498.__r_.__value_.__l.__data_);
                  }

                  siri::dialogengine::PatternSchemaComponent::GetName(&v497, v318);
                  siri::dialogengine::PatternSchemaComponent::GetDefaultComponent(v475, v318);
                  siri::dialogengine::PatternSchemaComponent::GetAllowedVariants(v474, v318);
                  siri::dialogengine::PatternSchemaComponent::GetDefaultVariant(v472, v318);
                  v338 = siri::dialogengine::PatternSchemaComponent::GetAllowMultiple(v318);
                  sub_1000239FC(&v497, v475, v474, v472, v338, &v498);
                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v339 = &v498;
                  }

                  else
                  {
                    v339 = v498.__r_.__value_.__r.__words[0];
                  }

                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v340 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v340 = v498.__r_.__value_.__l.__size_;
                  }

                  std::string::append(&v501, v339, v340);
                  if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v498.__r_.__value_.__l.__data_);
                  }

                  if (v473 < 0)
                  {
                    operator delete(v472[0]);
                  }

                  v496.__r_.__value_.__r.__words[0] = v474;
                  sub_100002260(&v496);
                  if (v476 < 0)
                  {
                    operator delete(v475[0]);
                  }

                  if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v497.__r_.__value_.__l.__data_);
                  }

                  sub_10000143C(&v498, "</td>\n");
                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v341 = &v498;
                  }

                  else
                  {
                    v341 = v498.__r_.__value_.__r.__words[0];
                  }

                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v342 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v342 = v498.__r_.__value_.__l.__size_;
                  }

                  std::string::append(&v501, v341, v342);
                  if ((SHIBYTE(v498.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_914;
                  }

                  v335 = v498.__r_.__value_.__r.__words[0];
                }

                else
                {
                  v321 = *(v316 + 8);
                  v471[0] = *v316;
                  v471[1] = v321;
                  if (v321)
                  {
                    atomic_fetch_add_explicit(v321 + 1, 1uLL, memory_order_relaxed);
                  }

                  v322 = sub_10001665C(v471);
                  if (v321)
                  {
                    sub_100005EB4(v321);
                  }

                  memset(&v499, 0, sizeof(v499));
                  v323 = siri::dialogengine::VisualComponentsCombination::Entry::GetType(*v316) - 1;
                  v324 = "INVALID";
                  if (v323 < 3)
                  {
                    v324 = off_1000750E8[v323];
                  }

                  std::string::assign(&v499, v324);
                  sub_10000143C(&v495, "combinationOperator");
                  sub_1000236E8(1uLL, v322, &v495, &v496);
                  if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v325 = &v499;
                  }

                  else
                  {
                    v325 = v499.__r_.__value_.__r.__words[0];
                  }

                  if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v326 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v326 = v499.__r_.__value_.__l.__size_;
                  }

                  v327 = std::string::append(&v496, v325, v326);
                  v328 = *&v327->__r_.__value_.__l.__data_;
                  v497.__r_.__value_.__r.__words[2] = v327->__r_.__value_.__r.__words[2];
                  *&v497.__r_.__value_.__l.__data_ = v328;
                  v327->__r_.__value_.__l.__size_ = 0;
                  v327->__r_.__value_.__r.__words[2] = 0;
                  v327->__r_.__value_.__r.__words[0] = 0;
                  sub_10000143C(&v489, "</td>\n");
                  if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v329 = &v489;
                  }

                  else
                  {
                    v329 = v489.__r_.__value_.__r.__words[0];
                  }

                  if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v330 = HIBYTE(v489.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v330 = v489.__r_.__value_.__l.__size_;
                  }

                  v331 = std::string::append(&v497, v329, v330);
                  v332 = *&v331->__r_.__value_.__l.__data_;
                  v498.__r_.__value_.__r.__words[2] = v331->__r_.__value_.__r.__words[2];
                  *&v498.__r_.__value_.__l.__data_ = v332;
                  v331->__r_.__value_.__l.__size_ = 0;
                  v331->__r_.__value_.__r.__words[2] = 0;
                  v331->__r_.__value_.__r.__words[0] = 0;
                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v333 = &v498;
                  }

                  else
                  {
                    v333 = v498.__r_.__value_.__r.__words[0];
                  }

                  if ((v498.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v334 = HIBYTE(v498.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v334 = v498.__r_.__value_.__l.__size_;
                  }

                  std::string::append(&v501, v333, v334);
                  if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v498.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v489.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v489.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v497.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v496.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v496.__r_.__value_.__l.__data_);
                  }

                  if ((SHIBYTE(v495.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_914;
                  }

                  v335 = v495.__r_.__value_.__r.__words[0];
                }

                operator delete(v335);
LABEL_914:
                if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v499.__r_.__value_.__l.__data_);
                }

                v316 += 24;
                if (v316 == v317)
                {
                  goto LABEL_940;
                }
              }
            }

            v319 = 0;
            v318 = 0;
LABEL_940:
            sub_1000236E8(1uLL, v315, byte_100078658, &v497);
            siri::dialogengine::PatternSchemaComponent::GetUsage(&v495, v318);
            sub_100024230(&v495, &v496);
            if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v351 = &v496;
            }

            else
            {
              v351 = v496.__r_.__value_.__r.__words[0];
            }

            if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v352 = HIBYTE(v496.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v352 = v496.__r_.__value_.__l.__size_;
            }

            v353 = std::string::append(&v497, v351, v352);
            v354 = *&v353->__r_.__value_.__l.__data_;
            v498.__r_.__value_.__r.__words[2] = v353->__r_.__value_.__r.__words[2];
            *&v498.__r_.__value_.__l.__data_ = v354;
            v353->__r_.__value_.__l.__size_ = 0;
            v353->__r_.__value_.__r.__words[2] = 0;
            v353->__r_.__value_.__r.__words[0] = 0;
            sub_10000143C(&v489, "</td>\n");
            if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v355 = &v489;
            }

            else
            {
              v355 = v489.__r_.__value_.__r.__words[0];
            }

            if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v356 = HIBYTE(v489.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v356 = v489.__r_.__value_.__l.__size_;
            }

            v357 = std::string::append(&v498, v355, v356);
            v358 = *&v357->__r_.__value_.__l.__data_;
            v499.__r_.__value_.__r.__words[2] = v357->__r_.__value_.__r.__words[2];
            *&v499.__r_.__value_.__l.__data_ = v358;
            v357->__r_.__value_.__l.__size_ = 0;
            v357->__r_.__value_.__r.__words[2] = 0;
            v357->__r_.__value_.__r.__words[0] = 0;
            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v359 = &v499;
            }

            else
            {
              v359 = v499.__r_.__value_.__r.__words[0];
            }

            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v360 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v360 = v499.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v359, v360);
            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v489.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v489.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v498.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v496.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v496.__r_.__value_.__l.__data_);
            }

            v489.__r_.__value_.__r.__words[0] = &v495;
            sub_100007C5C(&v489);
            if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v497.__r_.__value_.__l.__data_);
            }

            sub_1000236E8(1uLL, v315, byte_100078658, &v497);
            siri::dialogengine::PatternSchemaComponent::GetFullUsage(&v495, v318);
            sub_100024230(&v495, &v496);
            if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v361 = &v496;
            }

            else
            {
              v361 = v496.__r_.__value_.__r.__words[0];
            }

            if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v362 = HIBYTE(v496.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v362 = v496.__r_.__value_.__l.__size_;
            }

            v363 = std::string::append(&v497, v361, v362);
            v364 = *&v363->__r_.__value_.__l.__data_;
            v498.__r_.__value_.__r.__words[2] = v363->__r_.__value_.__r.__words[2];
            *&v498.__r_.__value_.__l.__data_ = v364;
            v363->__r_.__value_.__l.__size_ = 0;
            v363->__r_.__value_.__r.__words[2] = 0;
            v363->__r_.__value_.__r.__words[0] = 0;
            sub_10000143C(&v489, "</td>\n");
            if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v365 = &v489;
            }

            else
            {
              v365 = v489.__r_.__value_.__r.__words[0];
            }

            if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v366 = HIBYTE(v489.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v366 = v489.__r_.__value_.__l.__size_;
            }

            v367 = std::string::append(&v498, v365, v366);
            v368 = *&v367->__r_.__value_.__l.__data_;
            v499.__r_.__value_.__r.__words[2] = v367->__r_.__value_.__r.__words[2];
            *&v499.__r_.__value_.__l.__data_ = v368;
            v367->__r_.__value_.__l.__size_ = 0;
            v367->__r_.__value_.__r.__words[2] = 0;
            v367->__r_.__value_.__r.__words[0] = 0;
            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v369 = &v499;
            }

            else
            {
              v369 = v499.__r_.__value_.__r.__words[0];
            }

            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v370 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v370 = v499.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v369, v370);
            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v489.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v489.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v498.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v496.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v496.__r_.__value_.__l.__data_);
            }

            v489.__r_.__value_.__r.__words[0] = &v495;
            sub_100007C5C(&v489);
            if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v497.__r_.__value_.__l.__data_);
            }

            sub_1000236E8(1uLL, v315, byte_100078658, &v499);
            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v371 = &v499;
            }

            else
            {
              v371 = v499.__r_.__value_.__r.__words[0];
            }

            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v372 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v372 = v499.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v371, v372);
            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }

            siri::dialogengine::PatternSchemaComponent::GetFullOverrides(&v499, v318);
            v373 = v499.__r_.__value_.__l.__size_;
            v374 = v499.__r_.__value_.__r.__words[0];
            v498.__r_.__value_.__r.__words[0] = &v499;
            sub_100007C5C(&v498);
            v375 = v373 - v374;
            if (v373 != v374)
            {
              v376 = 0;
              v377 = 0;
              v378 = v375 >> 4;
              v379 = v378 - 1;
              if (v378 <= 1)
              {
                v380 = 1;
              }

              else
              {
                v380 = v378;
              }

              do
              {
                siri::dialogengine::PatternSchemaComponent::GetFullOverrides(&v499, v318);
                v381 = *(v499.__r_.__value_.__r.__words[0] + v376);
                v382 = *(v499.__r_.__value_.__r.__words[0] + v376 + 8);
                if (v382)
                {
                  atomic_fetch_add_explicit(&v382->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v498.__r_.__value_.__r.__words[0] = &v499;
                sub_100007C5C(&v498);
                siri::dialogengine::PatternSchemaOverride::GetUsage(&v497, v381);
                sub_100024230(&v497, &v498);
                v383 = std::string::append(&v498, "<br/>");
                v384 = *&v383->__r_.__value_.__l.__data_;
                v499.__r_.__value_.__r.__words[2] = v383->__r_.__value_.__r.__words[2];
                *&v499.__r_.__value_.__l.__data_ = v384;
                v383->__r_.__value_.__l.__size_ = 0;
                v383->__r_.__value_.__r.__words[2] = 0;
                v383->__r_.__value_.__r.__words[0] = 0;
                if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v385 = &v499;
                }

                else
                {
                  v385 = v499.__r_.__value_.__r.__words[0];
                }

                if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v386 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v386 = v499.__r_.__value_.__l.__size_;
                }

                std::string::append(&v501, v385, v386);
                if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v499.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v498.__r_.__value_.__l.__data_);
                }

                v496.__r_.__value_.__r.__words[0] = &v497;
                sub_100007C5C(&v496);
                siri::dialogengine::PatternSchemaOverride::GetIdioms(&v498, v381);
                sub_10000143C(&v497, ", ");
                siri::dialogengine::StringJoin();
                if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v387 = &v499;
                }

                else
                {
                  v387 = v499.__r_.__value_.__r.__words[0];
                }

                if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v388 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v388 = v499.__r_.__value_.__l.__size_;
                }

                std::string::append(&v501, v387, v388);
                if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v499.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v497.__r_.__value_.__l.__data_);
                }

                v497.__r_.__value_.__r.__words[0] = &v498;
                sub_100002260(&v497);
                if (v377 < v379)
                {
                  std::string::append(&v501, "<hr>");
                }

                if (v382)
                {
                  sub_100005EB4(v382);
                }

                ++v377;
                v376 += 16;
              }

              while (v380 != v377);
            }

            sub_10000143C(&v499, "</td>\n");
            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v389 = &v499;
            }

            else
            {
              v389 = v499.__r_.__value_.__r.__words[0];
            }

            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v390 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v390 = v499.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v389, v390);
            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }

            sub_1000236E8(1uLL, v315, byte_100078658, &v497);
            siri::dialogengine::PatternSchemaComponent::GetSupportingUsage(&v495, v318);
            sub_100024230(&v495, &v496);
            if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v391 = &v496;
            }

            else
            {
              v391 = v496.__r_.__value_.__r.__words[0];
            }

            if ((v496.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v392 = HIBYTE(v496.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v392 = v496.__r_.__value_.__l.__size_;
            }

            v393 = std::string::append(&v497, v391, v392);
            v394 = *&v393->__r_.__value_.__l.__data_;
            v498.__r_.__value_.__r.__words[2] = v393->__r_.__value_.__r.__words[2];
            *&v498.__r_.__value_.__l.__data_ = v394;
            v393->__r_.__value_.__l.__size_ = 0;
            v393->__r_.__value_.__r.__words[2] = 0;
            v393->__r_.__value_.__r.__words[0] = 0;
            sub_10000143C(&v489, "</td>\n");
            if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v395 = &v489;
            }

            else
            {
              v395 = v489.__r_.__value_.__r.__words[0];
            }

            if ((v489.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v396 = HIBYTE(v489.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v396 = v489.__r_.__value_.__l.__size_;
            }

            v397 = std::string::append(&v498, v395, v396);
            v398 = *&v397->__r_.__value_.__l.__data_;
            v499.__r_.__value_.__r.__words[2] = v397->__r_.__value_.__r.__words[2];
            *&v499.__r_.__value_.__l.__data_ = v398;
            v397->__r_.__value_.__l.__size_ = 0;
            v397->__r_.__value_.__r.__words[2] = 0;
            v397->__r_.__value_.__r.__words[0] = 0;
            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v399 = &v499;
            }

            else
            {
              v399 = v499.__r_.__value_.__r.__words[0];
            }

            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v400 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v400 = v499.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v399, v400);
            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v489.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v489.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v498.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v496.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v496.__r_.__value_.__l.__data_);
            }

            v489.__r_.__value_.__r.__words[0] = &v495;
            sub_100007C5C(&v489);
            if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v497.__r_.__value_.__l.__data_);
            }

            sub_1000236E8(1uLL, v315, byte_100078658, &v499);
            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v401 = &v499;
            }

            else
            {
              v401 = v499.__r_.__value_.__r.__words[0];
            }

            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v402 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v402 = v499.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v401, v402);
            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }

            siri::dialogengine::PatternSchemaComponent::GetSupportingOverrides(&v499, v318);
            v403 = v499.__r_.__value_.__l.__size_;
            v404 = v499.__r_.__value_.__r.__words[0];
            v498.__r_.__value_.__r.__words[0] = &v499;
            sub_100007C5C(&v498);
            v405 = v403 - v404;
            if (v403 != v404)
            {
              v406 = 0;
              v407 = 0;
              v408 = v405 >> 4;
              v409 = v408 - 1;
              if (v408 <= 1)
              {
                v410 = 1;
              }

              else
              {
                v410 = v408;
              }

              do
              {
                siri::dialogengine::PatternSchemaComponent::GetSupportingOverrides(&v499, v318);
                v411 = *(v499.__r_.__value_.__r.__words[0] + v406);
                v412 = *(v499.__r_.__value_.__r.__words[0] + v406 + 8);
                if (v412)
                {
                  atomic_fetch_add_explicit(&v412->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v498.__r_.__value_.__r.__words[0] = &v499;
                sub_100007C5C(&v498);
                siri::dialogengine::PatternSchemaOverride::GetUsage(&v497, v411);
                sub_100024230(&v497, &v498);
                v413 = std::string::append(&v498, "<br/>");
                v414 = *&v413->__r_.__value_.__l.__data_;
                v499.__r_.__value_.__r.__words[2] = v413->__r_.__value_.__r.__words[2];
                *&v499.__r_.__value_.__l.__data_ = v414;
                v413->__r_.__value_.__l.__size_ = 0;
                v413->__r_.__value_.__r.__words[2] = 0;
                v413->__r_.__value_.__r.__words[0] = 0;
                if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v415 = &v499;
                }

                else
                {
                  v415 = v499.__r_.__value_.__r.__words[0];
                }

                if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v416 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v416 = v499.__r_.__value_.__l.__size_;
                }

                std::string::append(&v501, v415, v416);
                if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v499.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v498.__r_.__value_.__l.__data_);
                }

                v496.__r_.__value_.__r.__words[0] = &v497;
                sub_100007C5C(&v496);
                siri::dialogengine::PatternSchemaOverride::GetIdioms(&v498, v411);
                sub_10000143C(&v497, ", ");
                siri::dialogengine::StringJoin();
                if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v417 = &v499;
                }

                else
                {
                  v417 = v499.__r_.__value_.__r.__words[0];
                }

                if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v418 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v418 = v499.__r_.__value_.__l.__size_;
                }

                std::string::append(&v501, v417, v418);
                if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v499.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v497.__r_.__value_.__l.__data_);
                }

                v497.__r_.__value_.__r.__words[0] = &v498;
                sub_100002260(&v497);
                if (v407 < v409)
                {
                  std::string::append(&v501, "<hr>");
                }

                if (v412)
                {
                  sub_100005EB4(v412);
                }

                ++v407;
                v406 += 16;
              }

              while (v410 != v407);
            }

            sub_10000143C(&v499, "</td>\n");
            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v419 = &v499;
            }

            else
            {
              v419 = v499.__r_.__value_.__r.__words[0];
            }

            if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v420 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v420 = v499.__r_.__value_.__l.__size_;
            }

            std::string::append(&v501, v419, v420);
            if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v499.__r_.__value_.__l.__data_);
            }

            if (v319)
            {
              sub_100005EB4(v319);
            }

            v499.__r_.__value_.__r.__words[0] = &v500;
            sub_10002A570(&v499);
          }

          std::string::append(&v501, "</tr>\n");
          v200 = v463;
        }

        if (v456)
        {
          sub_100005EB4(v456);
        }

        v149 = v455 + 2;
      }

      while (v455 + 2 != v454);
    }

    v500.__r_.__value_.__r.__words[0] = __p;
    sub_100007C5C(&v500);
    std::string::append(&v501, "</table>\n");
    siri::dialogengine::PatternSchema::GetSettings(&v500, v507);
    if (v500.__r_.__value_.__r.__words[2])
    {
      std::string::append(&v501, "<p>\n");
      std::string::append(&v501, "<b>Settings:</b>\n");
      std::string::append(&v501, "<ul>\n");
      v421 = v500.__r_.__value_.__r.__words[0];
      if (v500.__r_.__value_.__l.__data_ != &v500.__r_.__value_.__r.__words[1])
      {
        do
        {
          sub_100005C00(__p, (v421 + 32));
          v423 = v469;
          v422 = v470;
          if (v470)
          {
            atomic_fetch_add_explicit(&v470->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          siri::dialogengine::PropertyBase::GetName(&v497, v423);
          v424 = std::string::insert(&v497, 0, "  <li><b>");
          v425 = *&v424->__r_.__value_.__l.__data_;
          v498.__r_.__value_.__r.__words[2] = v424->__r_.__value_.__r.__words[2];
          *&v498.__r_.__value_.__l.__data_ = v425;
          v424->__r_.__value_.__l.__size_ = 0;
          v424->__r_.__value_.__r.__words[2] = 0;
          v424->__r_.__value_.__r.__words[0] = 0;
          v426 = std::string::append(&v498, "</b>");
          v427 = *&v426->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v426->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v427;
          v426->__r_.__value_.__l.__size_ = 0;
          v426->__r_.__value_.__r.__words[2] = 0;
          v426->__r_.__value_.__r.__words[0] = 0;
          if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v428 = &v499;
          }

          else
          {
            v428 = v499.__r_.__value_.__r.__words[0];
          }

          if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v429 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v429 = v499.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v428, v429);
          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

          siri::dialogengine::ObjectProperty::GetDefaultValue(&v499, v423);
          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            v430 = v499.__r_.__value_.__l.__size_;
            operator delete(v499.__r_.__value_.__l.__data_);
            if (!v430)
            {
              goto LABEL_1157;
            }
          }

          else if (!*(&v499.__r_.__value_.__s + 23))
          {
            goto LABEL_1157;
          }

          siri::dialogengine::ObjectProperty::GetDefaultValue(&v497, v423);
          v431 = std::string::insert(&v497, 0, " (default = ");
          v432 = *&v431->__r_.__value_.__l.__data_;
          v498.__r_.__value_.__r.__words[2] = v431->__r_.__value_.__r.__words[2];
          *&v498.__r_.__value_.__l.__data_ = v432;
          v431->__r_.__value_.__l.__size_ = 0;
          v431->__r_.__value_.__r.__words[2] = 0;
          v431->__r_.__value_.__r.__words[0] = 0;
          v433 = std::string::append(&v498, ")");
          v434 = *&v433->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v433->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v434;
          v433->__r_.__value_.__l.__size_ = 0;
          v433->__r_.__value_.__r.__words[2] = 0;
          v433->__r_.__value_.__r.__words[0] = 0;
          if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v435 = &v499;
          }

          else
          {
            v435 = v499.__r_.__value_.__r.__words[0];
          }

          if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v436 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v436 = v499.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v435, v436);
          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

LABEL_1157:
          siri::dialogengine::PropertyBase::GetDeprecated(&v499, v423);
          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            v437 = v499.__r_.__value_.__l.__size_;
            operator delete(v499.__r_.__value_.__l.__data_);
            if (!v437)
            {
              goto LABEL_1173;
            }
          }

          else if (!*(&v499.__r_.__value_.__s + 23))
          {
            goto LABEL_1173;
          }

          siri::dialogengine::PropertyBase::GetDeprecated(&v497, v423);
          v438 = std::string::insert(&v497, 0, " <i>(Deprecated: ");
          v439 = *&v438->__r_.__value_.__l.__data_;
          v498.__r_.__value_.__r.__words[2] = v438->__r_.__value_.__r.__words[2];
          *&v498.__r_.__value_.__l.__data_ = v439;
          v438->__r_.__value_.__l.__size_ = 0;
          v438->__r_.__value_.__r.__words[2] = 0;
          v438->__r_.__value_.__r.__words[0] = 0;
          v440 = std::string::append(&v498, ")</i>");
          v441 = *&v440->__r_.__value_.__l.__data_;
          v499.__r_.__value_.__r.__words[2] = v440->__r_.__value_.__r.__words[2];
          *&v499.__r_.__value_.__l.__data_ = v441;
          v440->__r_.__value_.__l.__size_ = 0;
          v440->__r_.__value_.__r.__words[2] = 0;
          v440->__r_.__value_.__r.__words[0] = 0;
          if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v442 = &v499;
          }

          else
          {
            v442 = v499.__r_.__value_.__r.__words[0];
          }

          if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v443 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v443 = v499.__r_.__value_.__l.__size_;
          }

          std::string::append(&v501, v442, v443);
          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v499.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v498.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v497.__r_.__value_.__l.__data_);
          }

LABEL_1173:
          siri::dialogengine::PropertyBase::GetDescription(&v499, v423);
          if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
          {
            v444 = v499.__r_.__value_.__l.__size_;
            operator delete(v499.__r_.__value_.__l.__data_);
            if (v444)
            {
LABEL_1177:
              siri::dialogengine::PropertyBase::GetDescription(&v498, v423);
              v445 = std::string::insert(&v498, 0, ": ");
              v446 = *&v445->__r_.__value_.__l.__data_;
              v499.__r_.__value_.__r.__words[2] = v445->__r_.__value_.__r.__words[2];
              *&v499.__r_.__value_.__l.__data_ = v446;
              v445->__r_.__value_.__l.__size_ = 0;
              v445->__r_.__value_.__r.__words[2] = 0;
              v445->__r_.__value_.__r.__words[0] = 0;
              if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v447 = &v499;
              }

              else
              {
                v447 = v499.__r_.__value_.__r.__words[0];
              }

              if ((v499.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v448 = HIBYTE(v499.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v448 = v499.__r_.__value_.__l.__size_;
              }

              std::string::append(&v501, v447, v448);
              if (SHIBYTE(v499.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v499.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v498.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v498.__r_.__value_.__l.__data_);
              }
            }
          }

          else if (*(&v499.__r_.__value_.__s + 23))
          {
            goto LABEL_1177;
          }

          std::string::append(&v501, "</li>\n");
          if (v422)
          {
            sub_100005EB4(v422);
          }

          if (v470)
          {
            sub_100005EB4(v470);
          }

          if (SHIBYTE(v468) < 0)
          {
            operator delete(__p[0]);
          }

          v449 = *(v421 + 8);
          if (v449)
          {
            do
            {
              v450 = v449;
              v449 = v449->__r_.__value_.__r.__words[0];
            }

            while (v449);
          }

          else
          {
            do
            {
              v450 = *(v421 + 16);
              v451 = v450->__r_.__value_.__r.__words[0] == v421;
              v421 = v450;
            }

            while (!v451);
          }

          v421 = v450;
        }

        while (v450 != &v500.__r_.__value_.__r.__words[1]);
      }

      std::string::append(&v501, "</ul>\n");
      std::string::append(&v501, "</p>\n");
    }

    std::string::append(&v501, "</body>\n</html>\n");
    sub_10000143C(__p, ".html");
    siri::dialogengine::AddExtension();
    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    siri::dialogengine::WriteFileFromString();
    if (v453[23] >= 0)
    {
      v452 = v453;
    }

    else
    {
      v452 = *v453;
    }

    printf("Output written to %s\n", v452);
    sub_100005E58(&v500, v500.__r_.__value_.__l.__size_);
    if (SHIBYTE(v501.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v501.__r_.__value_.__l.__data_);
    }

    sub_100005E58(&v502, v503[0]);
    __p[0] = &v504;
    sub_100002260(__p);
  }

  else
  {
    std::operator+<char>();
    sub_10000143C(&v504, &unk_10006B9FB);
    sub_1000498E0(v0, __p, &v504, 0);
    if (v506 < 0)
    {
      operator delete(v504);
    }

    if (SHIBYTE(v468) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000143C(v2, &unk_10006B9FB);
  }

  if (v508)
  {
    sub_100005EB4(v508);
  }

  siri::dialogengine::Context::~Context(v509);
}