void sub_10008AEC8(_Unwind_Exception *a1)
{
  sub_10008F608(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008AEEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008F608(a1);
  std::ios::~ios();
  return a1;
}

unint64_t sub_10008AF30(uint64_t a1)
{
  result = atomic_load((a1 + 48));
  if (!result)
  {
    v5 = a1;
    if (atomic_load_explicit((a1 + 56), memory_order_acquire) != -1)
    {
      v4[0] = &v5;
      v6 = v4;
      std::__call_once((a1 + 56), &v6, sub_1000993BC);
    }

    result = atomic_load((a1 + 48));
    if (!result)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      sub_100002148(v4);
      sub_1000026BC(v4, "Failed opening mapped blocks file for ", 38);
      sub_10008CB14(v4, a1);
      sub_100004290(exception, v4, *(a1 + 64));
    }
  }

  return result;
}

void sub_10008B030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  if (v3)
  {
    __cxa_free_exception(v2);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10008B068(uint64_t a1, void *a2)
{
  v3 = sub_10008AF30(a1);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      if ((v5[6] & 2) != 0)
      {
        v7 = v5[4];
      }

      else
      {
        v7 = v5[4] + 1;
      }

      sub_1001969F4(v3, v7, (v5[6] & 1) + v5[5] - 1);
      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  v11 = *(v3 + 8);

  return sub_1000B1E00(v11);
}

void sub_10008B114(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a3;
  v5 = 0;
  v6 = 0;
  v4 = (***(a2 + 8))(*(a2 + 8));
  sub_100044490(&__p);
  sub_100098920();
}

void sub_10008B244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_10000367C(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008B2B8(uint64_t a1, unint64_t a2)
{
  if (*(*a1 + 8))
  {
    *&__p = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
    *(&__p + 1) = 32;
    v12 = 0;
    sub_10008B80C(v14, &__p);
    sub_1000026BC(v15, "Skipping erase of band ", 23);
    std::ostream::operator<<();
    sub_1000026BC(v15, ", disk image is terminated", 26);
    std::ostream::~ostream();
    sub_10008FDA0(v14);
    std::ios::~ios();
    return;
  }

  sub_100044490(&__p);
  v4 = (***(a1 + 16))(*(a1 + 16));
  v5 = sub_10015B050(v4, &__p);
  if (v5)
  {
    if (v5 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = -v5;
    }

    if (v6 != 2)
    {
      *&v9 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
      *(&v9 + 1) = 32;
      v10 = 16;
      sub_10008BAE4(v14, &v9);
      sub_1000026BC(v15, "Failed to erase mapped file of band ", 36);
      *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_1000026BC(v15, ", error ", 8);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100090CD0(v14);
      goto LABEL_11;
    }

    if (sub_1000E0464())
    {
      *&v9 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
      *(&v9 + 1) = 32;
      v10 = 2;
      sub_10008B978(v14, &v9);
      sub_1000026BC(v15, "No mapped file for band ", 24);
      *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 2;
      std::ostream::~ostream();
      sub_100090538(v14);
LABEL_11:
      std::ios::~ios();
    }
  }

  v7 = (***(a1 + 8))(*(a1 + 8));
  if (sub_10015B050(v7, &__p))
  {
    *&v9 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
    *(&v9 + 1) = 32;
    v10 = 16;
    sub_10008BC50(v14, &v9);
    sub_1000026BC(v15, "Failed to erase band ", 21);
    *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 2;
    sub_1000026BC(v15, ", error ", 8);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100091468(v14);
    std::ios::~ios();
  }

  else
  {
    v8 = *(a1 + 320);
    if (v8)
    {
      sub_1000B2014(v8, a2, 0);
    }
  }

  if (sub_1000E0464())
  {
    *&v9 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
    *(&v9 + 1) = 32;
    v10 = 2;
    sub_10008BDBC(v14, &v9);
    sub_1000026BC(v15, "Completed erase of band ", 24);
    *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 2;
    std::ostream::~ostream();
    sub_100091C00(v14);
    std::ios::~ios();
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_10008B790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10008B80C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100098C50(a1, a2);
  *a1 = off_100210E58;
  a1[45] = &off_100210F58;
  a1[46] = &off_100210F80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100210E58;
  a1[45] = off_100210EE0;
  a1[46] = off_100210F08;
  return a1;
}

void sub_10008B910(_Unwind_Exception *a1)
{
  sub_10008FDA0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008B934(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008FDA0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008B978(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100098D18(a1, a2);
  *a1 = off_100211078;
  a1[45] = &off_100211178;
  a1[46] = &off_1002111A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100211078;
  a1[45] = off_100211100;
  a1[46] = off_100211128;
  return a1;
}

void sub_10008BA7C(_Unwind_Exception *a1)
{
  sub_100090538(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008BAA0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100090538(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008BAE4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100098DE0(a1, a2);
  *a1 = off_100211298;
  a1[45] = &off_100211398;
  a1[46] = &off_1002113C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100211298;
  a1[45] = off_100211320;
  a1[46] = off_100211348;
  return a1;
}

void sub_10008BBE8(_Unwind_Exception *a1)
{
  sub_100090CD0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008BC0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100090CD0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008BC50(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100098EA8(a1, a2);
  *a1 = off_1002114B8;
  a1[45] = &off_1002115B8;
  a1[46] = &off_1002115E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002114B8;
  a1[45] = off_100211540;
  a1[46] = off_100211568;
  return a1;
}

void sub_10008BD54(_Unwind_Exception *a1)
{
  sub_100091468(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008BD78(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100091468(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008BDBC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100098F70(a1, a2);
  *a1 = off_1002116D8;
  a1[45] = &off_1002117D8;
  a1[46] = &off_100211800;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002116D8;
  a1[45] = off_100211760;
  a1[46] = off_100211788;
  return a1;
}

void sub_10008BEC0(_Unwind_Exception *a1)
{
  sub_100091C00(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008BEE4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100091C00(a1);
  std::ios::~ios();
  return a1;
}

void sub_10008BF28(uint64_t a1)
{
  if ((*(a1 + 176) & 1) == 0)
  {
    sub_10008BF74((a1 + 72));
    sub_100043BC4(*(a1 + 40) + 184, *(a1 + 32), 0);
    *(a1 + 176) = 1;
  }
}

void sub_10008BF74(uint64_t **a1)
{
  if (sub_1000E0464())
  {
    *&v10 = "sparse_bundles::Band::ContextsList::clear()";
    *(&v10 + 1) = 41;
    v11 = 2;
    sub_100092100(v12, &v10);
    sub_1000026BC(v13, "Resetting ", 10);
    v2 = a1[1] - *a1;
    std::ostream::operator<<();
    sub_1000026BC(v13, " band contexts", 14);
    std::ostream::~ostream();
    sub_100092334(v12);
    std::ios::~ios();
  }

  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = v3[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = a1[11];
      v7 = a1[12];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      v9 = *(v5 + 24);
      *(v5 + 16) = v8;
      *(v5 + 24) = v7;
      if (v9)
      {
        sub_10000367C(v9);
      }

      if (v6)
      {
        sub_10000367C(v6);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }
}

void sub_10008C094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100092228(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008C0AC(uint64_t a1)
{
  *a1 = off_1002106B8;
  sub_10008BF28(a1);
  v2 = atomic_load((a1 + 48));
  if (*(a1 + 69))
  {
    if (!v2)
    {
      goto LABEL_18;
    }

LABEL_13:
    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    operator delete();
  }

  if (v2)
  {
    if (*(**(a1 + 40) + 8))
    {
      *&v9 = "sparse_bundles::Band::~Band()";
      *(&v9 + 1) = 27;
      v10 = 0;
      sub_10008C3A4(v11, &v9);
      sub_1000026BC(v12, "Disk image is terminated, skipping flush of ", 44);
      sub_10008CB14(v12, a1);
      sub_1000026BC(v12, ", dirty=", 8);
      v3 = *(a1 + 68);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100092D64(v11);
      std::ios::~ios();
    }

    else
    {
      if (sub_1000E0464())
      {
        *&v9 = "sparse_bundles::Band::~Band()";
        *(&v9 + 1) = 27;
        v10 = 2;
        sub_10008C510(v11, &v9);
        sub_1000026BC(v12, "flushing and closing ", 21);
        sub_10008CB14(v12, a1);
        std::ostream::~ostream();
        sub_1000934FC(v11);
        std::ios::~ios();
      }

      sub_1001962EC(v2);
      if (*(a1 + 68))
      {
        (*(**(a1 + 16) + 16))(*(a1 + 16), 1);
      }
    }

    goto LABEL_13;
  }

  if (sub_1000E0464())
  {
    *&v9 = "sparse_bundles::Band::~Band()";
    *(&v9 + 1) = 27;
    v10 = 2;
    sub_100039C8C(v11, &v9);
    sub_1000026BC(v12, "Closing an unchanged ", 21);
    sub_10008CB14(v12, a1);
    std::ostream::~ostream();
    sub_100039EC0(v11);
    std::ios::~ios();
  }

LABEL_18:
  v6 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v6)
  {
    sub_10000367C(v6);
  }

  if (*(a1 + 69) == 1)
  {
    sub_10008B2B8(*(a1 + 40), *(a1 + 32));
  }

  sub_100043C60(*(a1 + 40) + 184, *(a1 + 32));
  sub_10008E3EC(a1 + 72);
  v7 = *(a1 + 24);
  if (v7)
  {
    sub_10000367C(v7);
  }

  return a1;
}

void *sub_10008C3A4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100099038(a1, a2);
  *a1 = off_100211B18;
  a1[45] = &off_100211C18;
  a1[46] = &off_100211C40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100211B18;
  a1[45] = off_100211BA0;
  a1[46] = off_100211BC8;
  return a1;
}

void sub_10008C4A8(_Unwind_Exception *a1)
{
  sub_100092D64(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008C4CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100092D64(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008C510(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100099100(a1, a2);
  *a1 = off_100211D38;
  a1[45] = &off_100211E38;
  a1[46] = &off_100211E60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100211D38;
  a1[45] = off_100211DC0;
  a1[46] = off_100211DE8;
  return a1;
}

void sub_10008C614(_Unwind_Exception *a1)
{
  sub_1000934FC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008C638(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000934FC(a1);
  std::ios::~ios();
  return a1;
}

void sub_10008C680(uint64_t a1)
{
  sub_10008C0AC(a1);

  operator delete();
}

void sub_10008C718(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000367C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008C730(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_100036CAC();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = a1;
    if (v11)
    {
      sub_1000715B0(a1, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1000715F8(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
  std::mutex::unlock((a1 + 24));
}

uint64_t sub_10008C86C(uint64_t a1)
{
  if ((*(a1 + 68) & 1) == 0)
  {
    return 0;
  }

  *(a1 + 68) = 0;
  v2 = atomic_load((a1 + 48));
  v3 = sub_1001962EC(v2);
  if (v3)
  {
    v4 = v3;
LABEL_6:
    *(a1 + 68) = 1;
    *&v6 = "sparse_bundles::Band::flush()";
    *(&v6 + 1) = 27;
    v7 = 16;
    sub_10008C9A8(v8, &v6);
    sub_10008CB14(v9, a1);
    sub_1000026BC(v9, ": flush failed (", 16);
    std::ostream::operator<<();
    sub_1000026BC(v9, ")", 1);
    std::ostream::~ostream();
    sub_100093C94(v8);
    std::ios::~ios();
    return v4;
  }

  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16), 1);
  if (v4)
  {
    goto LABEL_6;
  }

  return v4;
}

void sub_10008C994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10008CAD0(va);
  _Unwind_Resume(a1);
}

void *sub_10008C9A8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000992F4(a1, a2);
  *a1 = off_100211F58;
  a1[45] = &off_100212058;
  a1[46] = &off_100212080;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100211F58;
  a1[45] = off_100211FE0;
  a1[46] = off_100212008;
  return a1;
}

void sub_10008CAAC(_Unwind_Exception *a1)
{
  sub_100093C94(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008CAD0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100093C94(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008CB14(void *a1, uint64_t a2)
{
  v3 = sub_1000026BC(a1, "band ", 5);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  v4 = *(a2 + 32);
  result = std::ostream::operator<<();
  *(result + *(*result - 24) + 8) = *(result + *(*result - 24) + 8) & 0xFFFFFFB5 | 2;
  return result;
}

void *sub_10008CBA0(void *result)
{
  if (*result && atomic_fetch_add(*result, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v2 = result;
    v3 = result[1];
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }

    result = *v2;
    if (*v2)
    {

      operator delete();
    }
  }

  return result;
}

uint64_t sub_10008CC58(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  *result = *a2;
  v3 = atomic_load(v2);
  if (!v3)
  {
LABEL_5:
    operator new();
  }

  v4 = v3;
  while (1)
  {
    atomic_compare_exchange_strong(*result, &v4, v3 + 1);
    if (v4 == v3)
    {
      break;
    }

    v3 = v4;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v5;
  return result;
}

uint64_t sub_10008CCF8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  if (result != a2)
  {
    *a2 = 0;
  }

  return result;
}

void *sub_10008CD18(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_10008CBA0(a1);
    *a1 = *a2;
    a1[2] = a2[2];
    *a2 = 0;
  }

  return a1;
}

uint64_t sub_10008CD64@<X0>(std::chrono::steady_clock::time_point **a1@<X0>, std::chrono::steady_clock::time_point *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(*a1);
  sub_1000434F8(((*a1)[1].__d_.__rep_ + 56));
  if (v6 != 1 || (v7 = 1, atomic_compare_exchange_strong(&(*a1)->__d_.__rep_, &v7, 0), v7 != 1))
  {
    sub_100043504((*a1)[1].__d_.__rep_ + 56);
    if (sub_1000E0464())
    {
      *&v15 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)";
      *(&v15 + 1) = 46;
      v16 = 2;
      sub_10008D008(v17, &v15);
      sub_1000026BC(v18, "Missed an evictable slot", 24);
      std::ostream::~ostream();
      sub_10009442C(v17);
      std::ios::~ios();
    }

    rep = (*a1)[1].__d_.__rep_;
    operator new();
  }

  v9 = a1[1];
  if (v9)
  {
    sub_10008BF28(v9);
    v10 = a1[1];
    v11 = (*a1)[1].__d_.__rep_;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_10008D174;
    v14[3] = &unk_100210788;
    v14[4] = a1;
    v14[5] = v10;
    sub_1000468B0((v11 + 392), v14);
  }

  else
  {
    sub_100043504((*a1)[1].__d_.__rep_ + 56);
    if (sub_1000E0464())
    {
      *&v15 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)";
      *(&v15 + 1) = 46;
      v16 = 2;
      sub_10008D5B8(v17, &v15);
      sub_1000026BC(v18, "Replaced an empty slot", 22);
      std::ostream::~ostream();
      sub_100095AF4(v17);
      std::ios::~ios();
    }
  }

  a1[1] = a2;
  if (!a2)
  {
    a1[2] = -1;
    v13 = (*a1)[1].__d_.__rep_;
    operator new();
  }

  a1[2] = a2[4].__d_.__rep_;
  atomic_store(2uLL, *a1);
  (*a1)[2].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  result = sub_10008CC58(a3, a1);
  atomic_fetch_add(&(*a1)->__d_.__rep_, 0xFFFFFFFFFFFFFFFFLL);
  return result;
}

void *sub_10008D008(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009A9E0(a1, a2);
  *a1 = off_100212178;
  a1[45] = &off_100212278;
  a1[46] = &off_1002122A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212178;
  a1[45] = off_100212200;
  a1[46] = off_100212228;
  return a1;
}

void sub_10008D10C(_Unwind_Exception *a1)
{
  sub_10009442C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008D130(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009442C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10008D174(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (sub_1000E0464())
  {
    *&v5 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)_block_invoke";
    *(&v5 + 1) = 46;
    v6 = 2;
    sub_10008D2E0(v7, &v5);
    sub_1000026BC(v8, "Background close of ", 20);
    sub_10008CB14(v8, *(a1 + 40));
    std::ostream::~ostream();
    sub_100094BC4(v7);
    std::ios::~ios();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  sub_100043504(*(*v2 + 8) + 56);
  result = sub_1000E0464();
  if (result)
  {
    *&v5 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)_block_invoke";
    *(&v5 + 1) = 46;
    v6 = 2;
    sub_10008D44C(v7, &v5);
    sub_1000026BC(v8, "Close completed", 15);
    std::ostream::~ostream();
    sub_10009535C(v7);
    return std::ios::~ios();
  }

  return result;
}

void sub_10008D2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10008D574(va);
  _Unwind_Resume(a1);
}

void *sub_10008D2E0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009AAA8(a1, a2);
  *a1 = off_100212398;
  a1[45] = &off_100212498;
  a1[46] = &off_1002124C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212398;
  a1[45] = off_100212420;
  a1[46] = off_100212448;
  return a1;
}

void sub_10008D3E4(_Unwind_Exception *a1)
{
  sub_100094BC4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008D408(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100094BC4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008D44C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009AB70(a1, a2);
  *a1 = off_1002125B8;
  a1[45] = &off_1002126B8;
  a1[46] = &off_1002126E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002125B8;
  a1[45] = off_100212640;
  a1[46] = off_100212668;
  return a1;
}

void sub_10008D550(_Unwind_Exception *a1)
{
  sub_10009535C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008D574(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009535C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008D5B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009AC38(a1, a2);
  *a1 = off_1002127D8;
  a1[45] = &off_1002128D8;
  a1[46] = &off_100212900;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002127D8;
  a1[45] = off_100212860;
  a1[46] = off_100212888;
  return a1;
}

void sub_10008D6BC(_Unwind_Exception *a1)
{
  sub_100095AF4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008D6E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100095AF4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10008D724(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(*a1);
  while (v4 == 1)
  {
    v4 = 1;
    atomic_compare_exchange_strong(*a1, &v4, 0);
    if (v4 == 1)
    {
      v5 = sub_10008AF30(*(a1 + 8));
      if (sub_1000B1E00(*(v5 + 8)))
      {
        sub_10008BF28(*(a1 + 8));
        v6 = *(a1 + 8);
        v7 = *(*a1 + 8);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = sub_10008DFCC;
        v11[3] = &unk_1002107A8;
        v11[4] = v6;
        sub_1000468B0((v7 + 392), v11);
        *(a1 + 8) = 0;
        *(a1 + 16) = -1;
        v8 = *a1;
        v9 = 1;
        atomic_store(1uLL, v8);
      }

      else
      {
        if (sub_1000E0464())
        {
          *&v14 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
          *(&v14 + 1) = 43;
          v15 = 2;
          sub_10008DE60(v16, &v14);
          sub_1000026BC(v17, "Skipping erase of ", 18);
          sub_10008CB14(v17, *(a1 + 8));
          sub_1000026BC(v17, ", band was written to", 21);
          std::ostream::~ostream();
          sub_100097954(v16);
          std::ios::~ios();
        }

        return 1;
      }

      return v9;
    }
  }

  if (v4)
  {
    sub_10008CC58(&v14, a1);
    if (*(&v14 + 1) && *(*(&v14 + 1) + 32) == a2)
    {
      if (sub_1000E0464())
      {
        *&v12 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
        *(&v12 + 1) = 43;
        v13 = 2;
        sub_10008DB88(v16, &v12);
        sub_1000026BC(v17, "Skipping band erase (in use)", 28);
        std::ostream::~ostream();
        sub_100096A24(v16);
        std::ios::~ios();
      }

      v9 = 1;
    }

    else
    {
      if (sub_1000E0464())
      {
        *&v12 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
        *(&v12 + 1) = 43;
        v13 = 2;
        sub_10008DCF4(v16, &v12);
        sub_1000026BC(v17, "Band was evicted by another thread (during retain attempt), retry erase process", 79);
        std::ostream::~ostream();
        sub_1000971BC(v16);
        std::ios::~ios();
      }

      v9 = 0;
    }

    sub_10008CBA0(&v14);
  }

  else
  {
    if (sub_1000E0464())
    {
      *&v14 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
      *(&v14 + 1) = 43;
      v15 = 2;
      sub_10008DA1C(v16, &v14);
      sub_1000026BC(v17, "Band was evicted by another thread, retry erase process", 55);
      std::ostream::~ostream();
      sub_10009628C(v16);
      std::ios::~ios();
    }

    return 0;
  }

  return v9;
}

void *sub_10008DA1C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009AD00(a1, a2);
  *a1 = off_1002129F8;
  a1[45] = &off_100212AF8;
  a1[46] = &off_100212B20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002129F8;
  a1[45] = off_100212A80;
  a1[46] = off_100212AA8;
  return a1;
}

void sub_10008DB20(_Unwind_Exception *a1)
{
  sub_10009628C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008DB44(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009628C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008DB88(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009ADC8(a1, a2);
  *a1 = off_100212C18;
  a1[45] = &off_100212D18;
  a1[46] = &off_100212D40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212C18;
  a1[45] = off_100212CA0;
  a1[46] = off_100212CC8;
  return a1;
}

void sub_10008DC8C(_Unwind_Exception *a1)
{
  sub_100096A24(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008DCB0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100096A24(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008DCF4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009AE90(a1, a2);
  *a1 = off_100212E38;
  a1[45] = &off_100212F38;
  a1[46] = &off_100212F60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100212E38;
  a1[45] = off_100212EC0;
  a1[46] = off_100212EE8;
  return a1;
}

void sub_10008DDF8(_Unwind_Exception *a1)
{
  sub_1000971BC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008DE1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000971BC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10008DE60(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009AF58(a1, a2);
  *a1 = off_100213058;
  a1[45] = &off_100213158;
  a1[46] = &off_100213180;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213058;
  a1[45] = off_1002130E0;
  a1[46] = off_100213108;
  return a1;
}

void sub_10008DF64(_Unwind_Exception *a1)
{
  sub_100097954(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008DF88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100097954(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10008DFCC(uint64_t a1)
{
  if (sub_1000E0464())
  {
    *&v4 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)_block_invoke";
    *(&v4 + 1) = 43;
    v5 = 2;
    sub_10008E0B4(v6, &v4);
    sub_1000026BC(v7, "Background erase of ", 20);
    sub_10008CB14(v7, *(a1 + 32));
    std::ostream::~ostream();
    sub_1000980EC(v6);
    std::ios::~ios();
  }

  v2 = *(a1 + 32);
  v2[69] = 1;
  return (*(*v2 + 16))(v2);
}

void sub_10008E0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10008E1DC(va);
  _Unwind_Resume(a1);
}

void *sub_10008E0B4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009B020(a1, a2);
  *a1 = off_100213278;
  a1[45] = &off_100213378;
  a1[46] = &off_1002133A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213278;
  a1[45] = off_100213300;
  a1[46] = off_100213328;
  return a1;
}

void sub_10008E1B8(_Unwind_Exception *a1)
{
  sub_1000980EC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008E1DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000980EC(a1);
  std::ios::~ios();
  return a1;
}

unint64_t sub_10008E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = sub_1000986A4;
  v13[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  sub_100026714(v10, a3);
  sub_100026714(&v7, a4);
  v5 = sub_100039444(v13, v10, &v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v9)
  {
    sub_10000367C(v9);
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v11)
  {
    sub_10000367C(v11);
  }

  return v5;
}

void sub_10008E3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100002440(&a9);
  sub_100002440(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_10008E3EC(uint64_t a1)
{
  sub_10008BF74(a1);
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_10000367C(v2);
  }

  std::mutex::~mutex((a1 + 24));
  v4 = a1;
  sub_10007182C(&v4);
  return a1;
}

uint64_t sub_10008E440(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008E6D8(v1);

  return std::ios::~ios();
}

uint64_t sub_10008E48C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008E6D8(v1);

  return std::ios::~ios();
}

void sub_10008E4EC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008E6D8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008E554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008E590(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008E5FC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008E6D8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008E660(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008E6D8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008E6D8(uint64_t a1)
{
  *a1 = off_100210990;
  sub_10008E844(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008E844(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10008E9F4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008E990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008E9BC(uint64_t a1)
{
  sub_10008E6D8(a1);

  operator delete();
}

int *sub_10008E9F4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 47;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 47;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008EBD8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008EE70(v1);

  return std::ios::~ios();
}

uint64_t sub_10008EC24(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008EE70(v1);

  return std::ios::~ios();
}

void sub_10008EC84(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008EE70(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008ECEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008ED28(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008ED94(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008EE70(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008EDF8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008EE70(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008EE70(uint64_t a1)
{
  *a1 = off_100210BB0;
  sub_10008EFDC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008EFDC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10008F18C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008F128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F154(uint64_t a1)
{
  sub_10008EE70(a1);

  operator delete();
}

int *sub_10008F18C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 63;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 63;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008F370(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008F608(v1);

  return std::ios::~ios();
}

uint64_t sub_10008F3BC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008F608(v1);

  return std::ios::~ios();
}

void sub_10008F41C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008F608(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008F484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008F4C0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008F52C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008F608(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008F590(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008F608(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008F608(uint64_t a1)
{
  *a1 = off_100210DD0;
  sub_10008F774(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008F774(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10008F924((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008F8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F8EC(uint64_t a1)
{
  sub_10008F608(a1);

  operator delete();
}

int *sub_10008F924(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 74;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 74;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008FB08(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008FDA0(v1);

  return std::ios::~ios();
}

uint64_t sub_10008FB54(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008FDA0(v1);

  return std::ios::~ios();
}

void sub_10008FBB4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008FDA0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008FC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008FC58(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008FCC4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008FDA0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008FD28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008FDA0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008FDA0(uint64_t a1)
{
  *a1 = off_100210FF0;
  sub_10008FF0C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008FF0C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000900BC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100090058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100090084(uint64_t a1)
{
  sub_10008FDA0(a1);

  operator delete();
}

int *sub_1000900BC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 116;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 116;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000902A0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100090538(v1);

  return std::ios::~ios();
}

uint64_t sub_1000902EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100090538(v1);

  return std::ios::~ios();
}

void sub_10009034C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100090538(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000903B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000903F0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10009045C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100090538(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000904C0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100090538(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100090538(uint64_t a1)
{
  *a1 = off_100211210;
  sub_1000906A4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000906A4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100090854((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000907F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009081C(uint64_t a1)
{
  sub_100090538(a1);

  operator delete();
}

int *sub_100090854(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 124;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 124;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100090A38(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100090CD0(v1);

  return std::ios::~ios();
}

uint64_t sub_100090A84(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100090CD0(v1);

  return std::ios::~ios();
}

void sub_100090AE4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100090CD0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100090B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100090B88(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100090BF4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100090CD0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100090C58(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100090CD0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100090CD0(uint64_t a1)
{
  *a1 = off_100211430;
  sub_100090E3C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100090E3C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100090FEC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100090F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100090FB4(uint64_t a1)
{
  sub_100090CD0(a1);

  operator delete();
}

int *sub_100090FEC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 126;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 126;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000911D0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100091468(v1);

  return std::ios::~ios();
}

uint64_t sub_10009121C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100091468(v1);

  return std::ios::~ios();
}

void sub_10009127C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100091468(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000912E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100091320(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10009138C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100091468(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000913F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100091468(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100091468(uint64_t a1)
{
  *a1 = off_100211650;
  sub_1000915D4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000915D4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100091784((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100091720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009174C(uint64_t a1)
{
  sub_100091468(a1);

  operator delete();
}

int *sub_100091784(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 136;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 136;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100091968(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100091C00(v1);

  return std::ios::~ios();
}

uint64_t sub_1000919B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100091C00(v1);

  return std::ios::~ios();
}

void sub_100091A14(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100091C00(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100091A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100091AB8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100091B24(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100091C00(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100091B88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100091C00(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100091C00(uint64_t a1)
{
  *a1 = off_100211870;
  sub_100091D6C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100091D6C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100091F1C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100091EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100091EE4(uint64_t a1)
{
  sub_100091C00(a1);

  operator delete();
}

int *sub_100091F1C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 139;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 139;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100092100(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009226C(a1, a2);
  *a1 = off_1002118F8;
  a1[45] = &off_1002119F8;
  a1[46] = &off_100211A20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002118F8;
  a1[45] = off_100211980;
  a1[46] = off_1002119A8;
  return a1;
}

void sub_100092204(_Unwind_Exception *a1)
{
  sub_100092334(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100092228(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100092334(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10009226C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100211A90;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009231C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100092334(uint64_t a1)
{
  *a1 = off_100211A90;
  sub_100092774(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000924A0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100092334(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100092508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100092544(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000925B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100092334(v1);

  return std::ios::~ios();
}

void sub_1000925FC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100092334(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100092660(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100092334(v1);

  return std::ios::~ios();
}

void sub_1000926C0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100092334(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009273C(uint64_t a1)
{
  sub_100092334(a1);

  operator delete();
}

uint64_t sub_100092774(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000928E8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000928C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000928E8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 92;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 92;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100092ACC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100092D64(v1);

  return std::ios::~ios();
}

uint64_t sub_100092B18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100092D64(v1);

  return std::ios::~ios();
}

void sub_100092B78(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100092D64(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100092BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100092C1C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100092C88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100092D64(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100092CEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100092D64(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100092D64(uint64_t a1)
{
  *a1 = off_100211CB0;
  sub_100092ED0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100092ED0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100093080((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10009301C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100093048(uint64_t a1)
{
  sub_100092D64(a1);

  operator delete();
}

int *sub_100093080(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 162;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 162;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100093264(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000934FC(v1);

  return std::ios::~ios();
}

uint64_t sub_1000932B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000934FC(v1);

  return std::ios::~ios();
}

void sub_100093310(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000934FC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100093378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000933B4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100093420(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000934FC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100093484(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000934FC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000934FC(uint64_t a1)
{
  *a1 = off_100211ED0;
  sub_100093668(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100093668(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100093818((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000937B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000937E0(uint64_t a1)
{
  sub_1000934FC(a1);

  operator delete();
}

int *sub_100093818(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 164;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 164;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000939FC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100093C94(v1);

  return std::ios::~ios();
}

uint64_t sub_100093A48(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100093C94(v1);

  return std::ios::~ios();
}

void sub_100093AA8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100093C94(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100093B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100093B4C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100093BB8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100093C94(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100093C1C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100093C94(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100093C94(uint64_t a1)
{
  *a1 = off_1002120F0;
  sub_100093E00(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100093E00(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100093FB0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100093F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100093F78(uint64_t a1)
{
  sub_100093C94(a1);

  operator delete();
}

int *sub_100093FB0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 213;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 213;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100094194(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009442C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000941E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009442C(v1);

  return std::ios::~ios();
}

void sub_100094240(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009442C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000942A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000942E4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100094350(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009442C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000943B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009442C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009442C(uint64_t a1)
{
  *a1 = off_100212310;
  sub_100094598(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100094598(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100094748((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000946E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100094710(uint64_t a1)
{
  sub_10009442C(a1);

  operator delete();
}

int *sub_100094748(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 341;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 341;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009492C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100094BC4(v1);

  return std::ios::~ios();
}

uint64_t sub_100094978(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100094BC4(v1);

  return std::ios::~ios();
}

void sub_1000949D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100094BC4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100094A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100094A7C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100094AE8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100094BC4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100094B4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100094BC4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100094BC4(uint64_t a1)
{
  *a1 = off_100212530;
  sub_100094D30(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100094D30(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100094EE0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100094E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100094EA8(uint64_t a1)
{
  sub_100094BC4(a1);

  operator delete();
}

int *sub_100094EE0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 350;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 350;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000950C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009535C(v1);

  return std::ios::~ios();
}

uint64_t sub_100095110(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009535C(v1);

  return std::ios::~ios();
}

void sub_100095170(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009535C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000951D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100095214(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100095280(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009535C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000952E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009535C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009535C(uint64_t a1)
{
  *a1 = off_100212750;
  sub_1000954C8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000954C8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100095678((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100095614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100095640(uint64_t a1)
{
  sub_10009535C(a1);

  operator delete();
}

int *sub_100095678(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 353;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 353;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009585C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100095AF4(v1);

  return std::ios::~ios();
}

uint64_t sub_1000958A8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100095AF4(v1);

  return std::ios::~ios();
}

void sub_100095908(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100095AF4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100095970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000959AC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100095A18(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100095AF4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100095A7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100095AF4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100095AF4(uint64_t a1)
{
  *a1 = off_100212970;
  sub_100095C60(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100095C60(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100095E10((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100095DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100095DD8(uint64_t a1)
{
  sub_100095AF4(a1);

  operator delete();
}

int *sub_100095E10(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 357;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 357;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100095FF4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009628C(v1);

  return std::ios::~ios();
}

uint64_t sub_100096040(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009628C(v1);

  return std::ios::~ios();
}

void sub_1000960A0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009628C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100096108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100096144(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000961B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009628C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100096214(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009628C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009628C(uint64_t a1)
{
  *a1 = off_100212B90;
  sub_1000963F8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000963F8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000965A8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100096544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100096570(uint64_t a1)
{
  sub_10009628C(a1);

  operator delete();
}

int *sub_1000965A8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 392;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 392;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009678C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100096A24(v1);

  return std::ios::~ios();
}

uint64_t sub_1000967D8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100096A24(v1);

  return std::ios::~ios();
}

void sub_100096838(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100096A24(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000968A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000968DC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100096948(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100096A24(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000969AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100096A24(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100096A24(uint64_t a1)
{
  *a1 = off_100212DB0;
  sub_100096B90(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100096B90(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100096D40((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100096CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100096D08(uint64_t a1)
{
  sub_100096A24(a1);

  operator delete();
}

int *sub_100096D40(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 397;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 397;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100096F24(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000971BC(v1);

  return std::ios::~ios();
}

uint64_t sub_100096F70(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000971BC(v1);

  return std::ios::~ios();
}

void sub_100096FD0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000971BC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100097038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100097074(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000970E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000971BC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100097144(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000971BC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000971BC(uint64_t a1)
{
  *a1 = off_100212FD0;
  sub_100097328(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100097328(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1000974D8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100097474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000974A0(uint64_t a1)
{
  sub_1000971BC(a1);

  operator delete();
}

int *sub_1000974D8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 400;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 400;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000976BC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100097954(v1);

  return std::ios::~ios();
}

uint64_t sub_100097708(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100097954(v1);

  return std::ios::~ios();
}

void sub_100097768(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100097954(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000977D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009780C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100097878(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100097954(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000978DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100097954(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100097954(uint64_t a1)
{
  *a1 = off_1002131F0;
  sub_100097AC0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100097AC0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100097C70((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100097C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100097C38(uint64_t a1)
{
  sub_100097954(a1);

  operator delete();
}

int *sub_100097C70(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 409;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 409;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100097E54(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000980EC(v1);

  return std::ios::~ios();
}

uint64_t sub_100097EA0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000980EC(v1);

  return std::ios::~ios();
}

void sub_100097F00(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000980EC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100097F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100097FA4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100098010(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000980EC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100098074(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000980EC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000980EC(uint64_t a1)
{
  *a1 = off_100213410;
  sub_100098258(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100098258(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100098408((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000983A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000983D0(uint64_t a1)
{
  sub_1000980EC(a1);

  operator delete();
}

int *sub_100098408(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 416;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 416;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000985EC(void *a1)
{
  *a1 = off_100213490;
  v2 = a1[3];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_100098638(void *a1)
{
  *a1 = off_100213490;
  v1 = a1[3];
  if (v1)
  {
    sub_10000367C(v1);
  }

  operator delete();
}

uint64_t sub_1000986C8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100210990;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100098778(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100098790(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100210BB0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100098840(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100098858(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100210DD0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100098908(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000989BC(void *a1, int *a2, uint64_t a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020A1C0;
  v5 = *a4;
  v6 = sub_100158C4C(*a2, a3, *a4 | 0x2000u);
  sub_10004D9A0(a1 + 3, v6, (v5 & 3) != 0);
}

void *sub_100098AE0(void *a1, uint64_t *a2, uint64_t a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020B9C0;
  sub_100098B3C((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t sub_100098B3C(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100098BC8(&v8, *a4);
  sub_10018B89C(a1, &v9, a3, &v8);
  if (v10)
  {
    sub_10000367C(v10);
  }

  return a1;
}

void sub_100098BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000367C(a12);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_100098BC8(_DWORD *result, int a2)
{
  *result = a2;
  if ((a2 & 0xFFFFFFFC) != 0)
  {
    v2 = a2 & 0xFFFFFFFC;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "header_ignore_fields_t";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_100209F68;
    *(exception + 8) = v2;
  }

  return result;
}

uint64_t sub_100098C50(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100210FF0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100098D00(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100098D18(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100211210;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100098DC8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100098DE0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100211430;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100098E90(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100098EA8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100211650;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100098F58(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100098F70(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100211870;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100099020(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100099038(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100211CB0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000990E8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100099100(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100211ED0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000991B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100099230(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001A30E8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009924C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100099284(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_1000992B4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000992F4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002120F0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000993A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000993BC(uint64_t ***a1)
{
  v1 = ***a1;
  if (sub_1000E0464())
  {
    *&v3 = "sparse_bundles::Band::get_mapped_blocks()::(anonymous class)::operator()() const";
    *(&v3 + 1) = 72;
    LODWORD(v4) = 2;
    sub_100099554(v7, &v3);
    sub_1000026BC(v8, "Opening mapped blocks for ", 26);
    sub_10008CB14(v8, v1);
    std::ostream::~ostream();
    sub_1000999E8(v7);
    std::ios::~ios();
  }

  v2 = *(v1 + 40);
  *&v3 = _NSConcreteStackBlock;
  *(&v3 + 1) = 0x40000000;
  v4 = sub_1000996C0;
  v5 = &unk_100213550;
  v6 = v1;
  sub_100044150(v2, &v3);
}

void *sub_100099554(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100099920(a1, a2);
  *a1 = off_100213588;
  a1[45] = &off_100213688;
  a1[46] = &off_1002136B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213588;
  a1[45] = off_100213610;
  a1[46] = off_100213638;
  return a1;
}

void sub_100099658(_Unwind_Exception *a1)
{
  sub_1000999E8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10009967C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000999E8(a1);
  std::ios::~ios();
  return a1;
}

void sub_10009977C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000997B4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009A180(a1, a2);
  *a1 = off_1002137A8;
  a1[45] = &off_1002138A8;
  a1[46] = &off_1002138D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002137A8;
  a1[45] = off_100213830;
  a1[46] = off_100213858;
  return a1;
}

void sub_1000998B8(_Unwind_Exception *a1)
{
  sub_10009A248(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000998DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009A248(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100099920(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100213720;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000999D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000999E8(uint64_t a1)
{
  *a1 = off_100213720;
  sub_100099E28(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100099B54(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000999E8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100099BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100099BF8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100099C64(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000999E8(v1);

  return std::ios::~ios();
}

void sub_100099CB0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000999E8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100099D14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000999E8(v1);

  return std::ios::~ios();
}

void sub_100099D74(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000999E8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100099DF0(uint64_t a1)
{
  sub_1000999E8(a1);

  operator delete();
}

uint64_t sub_100099E28(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100099F9C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100099F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100099F9C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 229;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 229;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009A180(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100213940;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009A230(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009A248(uint64_t a1)
{
  *a1 = off_100213940;
  sub_10009A688(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10009A3B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009A248(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009A41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009A458(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10009A4C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009A248(v1);

  return std::ios::~ios();
}

void sub_10009A510(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009A248(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009A574(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009A248(v1);

  return std::ios::~ios();
}

void sub_10009A5D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009A248(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009A650(uint64_t a1)
{
  sub_10009A248(a1);

  operator delete();
}

uint64_t sub_10009A688(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10009A7FC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10009A7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10009A7FC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 236;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 236;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009A9E0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212310;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009AA90(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009AAA8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212530;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009AB58(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009AB70(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212750;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009AC20(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009AC38(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212970;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009ACE8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009AD00(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212B90;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009ADB0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009ADC8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212DB0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009AE78(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009AE90(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212FD0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009AF40(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009AF58(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002131F0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009B008(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B020(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100213410;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009B0D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10009B54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009B574(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

void sub_10009B6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009B6F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 updateDiskImageParamsWithFrontend:v5 error:&v9];
    v6 = v9;
  }

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

void sub_10009B88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009B8B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 updateDiskImageParamsWithFrontend:v5 error:&v9];
    v6 = v9;
  }

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

void sub_10009BA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009BA7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 updateDiskImageParamsWithFrontend:v5 error:&v9];
    v6 = v9;
  }

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

void sub_10009BB08(_OWORD *a1)
{
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  operator new[]();
}

void sub_10009BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  operator delete[]();
}

_DWORD *sub_10009BCAC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  LODWORD(v14) = 1936879731;
  sub_10009C144("header_signature", v4, &v14, 1);
  *a1 = 1936879731;
  v5 = bswap32(*(a2 + 4));
  v14 = 0x200000001;
  v15 = 3;
  sub_10009C144("version_t", v5, &v14, 3);
  *(a1 + 4) = v5;
  *(a1 + 8) = bswap32(*(a2 + 8));
  result = sub_10009C9C8(&v14, bswap32(*(a2 + 12)));
  *(a1 + 12) = v14;
  *(a1 + 16) = bswap32(*(a2 + 16));
  *(a1 + 20) = bswap64(*(a2 + 20));
  *(a1 + 28) = bswap64(*(a2 + 28));
  v7 = *(a2 + 36);
  v8 = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 52) = v8;
  *(a1 + 36) = v7;
  if (!*(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = sub_100001860(exception, "Band size in sparse is zero", 0x16u);
  }

  for (i = 0; i != 28; ++i)
  {
    if (*(a1 + 36 + i))
    {
      v10 = __cxa_allocate_exception(0x40uLL);
      v11 = sub_100001860(v10, "Reserved part isn't zeroed", 0x16u);
    }
  }

  return result;
}

void *sub_10009C044(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100213B00;
  a1[2] = off_100213B68;
  a1[1] = off_100213B28;
  return a1;
}

std::exception *sub_10009C0C8(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

uint64_t sub_10009C144(uint64_t result, int a2, _DWORD *a3, uint64_t a4)
{
  if (!a4)
  {
LABEL_5:
    v5 = result;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = v5;
    exception[2] = "invalid value";
    exception[3] = "value validator";
    *exception = &off_100209F68;
    *(exception + 8) = a2;
  }

  v4 = 4 * a4;
  while (*a3 != a2)
  {
    ++a3;
    v4 -= 4;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_10009C1E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = off_10022E648;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *a1 = off_100213BA0;
  (*(*a2 + 32))(a2);
  return a1;
}

void sub_10009C34C(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10009C3E8(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10009C46C(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10009C50C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_100213BA0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10009C5A4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_100213BA0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

void sub_10009C654(std::exception *this)
{
  this->__vftable = off_100213BA0;
  v2 = this[4].__vftable;
  this[4].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(this);
}

void sub_10009C6D4(std::exception *this)
{
  this->__vftable = off_100213BA0;
  v2 = this[4].__vftable;
  this[4].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(this);

  operator delete();
}

std::exception *sub_10009C768(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10009C7E4(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10009C880(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 1;
  v1[1].__vftable = off_100213BA0;
  v3 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10009C918(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[1].__vftable = off_100213BA0;
  v2 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 1);

  operator delete();
}

_DWORD *sub_10009C9C8(_DWORD *result, int a2)
{
  *result = a2;
  if ((a2 & 0xFFFFFFFE) != 0)
  {
    v2 = a2 & 0xFFFFFFFE;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "flags_t";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_100209F68;
    *(exception + 8) = v2;
  }

  return result;
}

void sub_10009CDF4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10009D028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009D07C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009D094(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *__error();
    if (sub_1000E044C())
    {
      v11 = sub_1000E03D8();
      os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      *buf = 68158210;
      v26 = 79;
      v27 = 2080;
      v28 = "+[DIKeyRetriever requestSynchronousDataWithRequest:session:error:]_block_invoke";
      v29 = 2112;
      v30 = v9;
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(__stderrp, "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v18 = sub_1000E03D8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158210;
        v26 = 79;
        v27 = 2080;
        v28 = "+[DIKeyRetriever requestSynchronousDataWithRequest:session:error:]_block_invoke";
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%.*s: %@", buf, 0x1Cu);
      }
    }

    *__error() = v10;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = [v13 statusCode];
      if (v14 == 200)
      {
        v15 = *(*(a1 + 48) + 8);
        v16 = v7;
        v17 = *(v15 + 40);
        *(v15 + 40) = v16;
      }

      else
      {
        v17 = [NSString stringWithFormat:@"HTTP request failed with status code: %ld", v14];
        v22 = [DIError errorWithEnumValue:150 verboseInfo:v17];
        v23 = *(*(a1 + 40) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;
      }
    }

    else
    {
      v13 = [NSString stringWithFormat:@"Unexpected response type: %@", v8];
      v19 = [DIError errorWithEnumValue:150 verboseInfo:v13];
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10009E19C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 8))(a2, "fd");
  if ((v4 & 0x80000000) == 0)
  {
    v16 = 0;
    v5 = (*a1)(a2, "path", &v16);
    v6 = v5;
    if (v5 > 0)
    {
      [NSString stringWithUTF8String:v16];
      objc_claimAutoreleasedReturnValue();
      (*(a1 + 16))(v16);
      v7 = (*a1)(a2, "writable", &v16);
      v8 = v7;
      if (v7 == 1)
      {
        v9 = *v16;
        (*(a1 + 16))();
        operator new();
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &off_100214188;
      v15 = std::generic_category();
      exception[1] = v8;
      exception[2] = v15;
      exception[3] = "Cannot decode writable";
    }

    v12 = __cxa_allocate_exception(0x20uLL);
    *v12 = &off_100214188;
    v13 = std::generic_category();
    v12[1] = v6;
    v12[2] = v13;
    v12[3] = "Cannot decode path";
  }

  v10 = __cxa_allocate_exception(0x20uLL);
  *v10 = &off_100214188;
  v11 = std::generic_category();
  v10[1] = v4;
  v10[2] = v11;
  v10[3] = "Cannot decode file descriptor";
}

void sub_10009E46C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    sub_10009E68C(v3, v2);
    __cxa_end_catch();
    JUMPOUT(0x10009E324);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10009E4F0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a2 + 8) objectForKeyedSubscript:@"path"];
  v5 = (*(a2 + 4) & 3) != 0;
  *(a1 + 96) = v4;
  *(a1 + 104) = v5;
  *(a1 + 108) = -1;
  *a1 = 96;
  *(a1 + 8) = sub_10009E944;
  *(a1 + 16) = sub_10009E94C;
  *(a1 + 24) = sub_10009E978;
  *(a1 + 32) = sub_10009E988;
  *(a1 + 40) = sub_10009E990;
  *(a1 + 48) = 0;
  *(a1 + 56) = sub_10009E998;
  *(a1 + 64) = sub_10009E99C;
  *(a1 + 72) = sub_10009E9A0;
  *(a1 + 80) = 0;
  *(a1 + 88) = sub_10009E9E0;
  v6 = open([v4 fileSystemRepresentation], *(a2 + 4));
  *(a1 + 108) = v6;
  if (v6 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = *__error();
    *exception = &off_100214188;
    v10 = std::generic_category();
    exception[1] = v9;
    exception[2] = v10;
    exception[3] = "Failed opening the file";
  }

  return a1;
}

void sub_10009E668(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1000A1458(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009E68C(_DWORD *a1, uint64_t *a2)
{
  v4 = *__error();
  if (sub_1000E044C())
  {
    v5 = sub_1000E03D8();
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    v6 = (*(*a1 + 16))(a1);
    v7 = a1[2];
    *buf = 68158466;
    v14 = 97;
    v15 = 2080;
    v16 = "static di_plugin_image_t *rawTestPlugin_t::CreationError(const pluginException_t &, CFErrorRef *)";
    v17 = 2080;
    v18 = v6;
    v19 = 1024;
    v20 = v7;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(__stderrp, "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = sub_1000E03D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = (*(*a1 + 16))(a1);
      v11 = a1[2];
      *buf = 68158466;
      v14 = 97;
      v15 = 2080;
      v16 = "static di_plugin_image_t *rawTestPlugin_t::CreationError(const pluginException_t &, CFErrorRef *)";
      v17 = 2080;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%.*s: Failed instantiating rawTestPlugin object: %s (code %d)", buf, 0x22u);
    }
  }

  *__error() = v4;
  if (a2)
  {
    *a2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:a1[2] userInfo:0];
  }

  return 0;
}

void *sub_10009E8E0(void *a1, uint64_t a2, unsigned int a3)
{
  *a1 = &off_100214188;
  v6 = std::generic_category();
  a1[1] = a3;
  a1[2] = v6;
  a1[3] = a2;
  return a1;
}

uint64_t sub_10009E9A0(uint64_t result)
{
  if (result)
  {
    sub_1000A1458(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10009E9E4@<X0>(uint64_t a1@<X0>, stat *a2@<X8>)
{
  result = fstat(*(a1 + 108), a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = __error();
    v5 = sub_10009E8E0(exception, "fstat failed", *v4);
  }

  return result;
}

uint64_t sub_10009EB78(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::mutex::~mutex((result + 104));

    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10009EBE4(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 104));
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v5 >= v4)
  {
    v7 = *(a1 + 72);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_100036CAC();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100051E78(a1 + 72, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(a1 + 72);
    v14 = *(a1 + 80) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(a1 + 72);
    *(a1 + 72) = v15;
    *(a1 + 80) = v6;
    *(a1 + 88) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(a1 + 80) = v6;
  std::mutex::unlock((a1 + 104));
  return 0;
}

void sub_10009ECDC(uint64_t a1)
{
  std::mutex::lock((a1 + 104));
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  std::mutex::unlock((a1 + 104));
  sub_1000026BC(&std::cerr, "raw plugin: going to execute ", 29);
  v4 = std::ostream::operator<<();
  v5 = sub_1000026BC(v4, " SQEs", 5);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v12, &std::ctype<char>::id);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v12);
  std::ostream::put();
  std::ostream::flush();
  v7 = *(a1 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10009EE98;
  block[3] = &unk_100213CE8;
  block[4] = a1;
  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_10009F524(&__p, v2, v3, (v3 - v2) >> 3);
  dispatch_async(v7, block);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v2)
  {
    operator delete(v2);
  }
}

void sub_10009EE70(_Unwind_Exception *a1)
{
  std::locale::~locale((v2 - 56));
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_10009EE98(void *result)
{
  v1 = result[5];
  v2 = result[6];
  if (v1 != v2)
  {
    v3 = result[4];
    while (1)
    {
      v4 = *v1;
      v5 = **v1;
      v6 = -45;
      if (v5 > 4)
      {
        if (v5 != 5)
        {
          if (v5 == 6)
          {
            v6 = 0;
          }

          else
          {
            v6 = -45;
          }

          goto LABEL_14;
        }

        v7 = sub_10009F45C(*(v3 + 64));
        goto LABEL_13;
      }

      if (v5 == 2)
      {
        break;
      }

      if (v5 == 4)
      {
        v7 = sub_10009F1E4(*(v3 + 64), (v4 + 24), &_pwritev);
LABEL_13:
        v6 = v7;
      }

LABEL_14:
      result = io_rings_return_status(*(v3 + 56), v4, v6, 0);
      if (++v1 == v2)
      {
        return result;
      }
    }

    v7 = sub_10009EF6C(*(v3 + 64), (v4 + 24), &_preadv);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10009EF6C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v4 = *a2;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = 0;
    v7 = v5 << 9;
    v8 = (v4 + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      v10 = v7 >= v9;
      v7 -= v9;
      if (!v10)
      {
        break;
      }

      ++v6;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v6 = -22;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  v11 = a2[1] << 9;
  v12 = a3(*(a1 + 108));
  if ((v12 & 0x80000000) == 0)
  {
    return v12 >> 9;
  }

  v14 = *__error();
  if (sub_1000E044C())
  {
    v15 = sub_1000E03D8();
    os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    v16 = *__error();
    *buf = 0x8404100502;
    v22 = 2080;
    v23 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_read_iov_t]";
    v24 = 2048;
    v25 = v11;
    v26 = 1024;
    v27 = v6;
    v28 = 1024;
    v29 = v16;
    v17 = _os_log_send_and_compose_impl();

    if (v17)
    {
      fprintf(__stderrp, "%s\n", v17);
      free(v17);
    }
  }

  else
  {
    v18 = sub_1000E03D8();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *__error();
      *buf = 0x8404100502;
      v22 = 2080;
      v23 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_read_iov_t]";
      v24 = 2048;
      v25 = v11;
      v26 = 1024;
      v27 = v6;
      v28 = 1024;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%.*s: I/O error at offset %lld iov_count %d errno %d", buf, 0x28u);
    }
  }

  *__error() = v14;
  v20 = *__error();
  if (v20 < 0)
  {
    return v20;
  }

  else
  {
    return -v20;
  }
}

uint64_t sub_10009F1E4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v4 = *a2;
  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = 0;
    v7 = v5 << 9;
    v8 = (v4 + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      v10 = v7 >= v9;
      v7 -= v9;
      if (!v10)
      {
        break;
      }

      ++v6;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v6 = -22;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  v11 = a2[1] << 9;
  v12 = a3(*(a1 + 108));
  if ((v12 & 0x80000000) == 0)
  {
    return v12 >> 9;
  }

  v14 = *__error();
  if (sub_1000E044C())
  {
    v15 = sub_1000E03D8();
    os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    v16 = *__error();
    *buf = 0x8504100502;
    v22 = 2080;
    v23 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_write_iov_t]";
    v24 = 2048;
    v25 = v11;
    v26 = 1024;
    v27 = v6;
    v28 = 1024;
    v29 = v16;
    v17 = _os_log_send_and_compose_impl();

    if (v17)
    {
      fprintf(__stderrp, "%s\n", v17);
      free(v17);
    }
  }

  else
  {
    v18 = sub_1000E03D8();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *__error();
      *buf = 0x8504100502;
      v22 = 2080;
      v23 = "int rawTestPlugin_t::do_io(const IOV_OP &, ssize_t (*)(int, const struct iovec *, int, off_t)) [IOV_OP = io_rings_sqe_op_write_iov_t]";
      v24 = 2048;
      v25 = v11;
      v26 = 1024;
      v27 = v6;
      v28 = 1024;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%.*s: I/O error at offset %lld iov_count %d errno %d", buf, 0x28u);
    }
  }

  *__error() = v14;
  v20 = *__error();
  if (v20 < 0)
  {
    return v20;
  }

  else
  {
    return -v20;
  }
}

uint64_t sub_10009F45C(uint64_t a1)
{
  result = fcntl(*(a1 + 108), 51, 0);
  if (result != -1)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (*__error() != 22 && *__error() != 25 && *__error() != 45 || (result = fsync(*(a1 + 108)), result))
  {
LABEL_8:
    v3 = *__error();
    if (v3 < 0)
    {
      return v3;
    }

    else
    {
      return -v3;
    }
  }

  return result;
}

uint64_t sub_10009F4F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_10009F524(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void sub_10009F50C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t sub_10009F524(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009F5A0(result, a4);
  }

  return result;
}

void sub_10009F584(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009F5A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100051E78(a1, a2);
  }

  sub_100036CAC();
}

uint64_t sub_10009F5DC()
{
  *&v1 = "rawTestPlugin_t::subscriber_t::_suspend()";
  *(&v1 + 1) = 39;
  v2 = 0;
  sub_1000411AC(v3, &v1);
  sub_1000026BC(v4, "Suspended", 9);
  std::ostream::~ostream();
  sub_1000413E0(v3);
  return std::ios::~ios();
}

void sub_10009F658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000412D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009F66C()
{
  *&v1 = "rawTestPlugin_t::subscriber_t::_resume()";
  *(&v1 + 1) = 38;
  v2 = 0;
  sub_10009F6FC(v3, &v1);
  sub_1000026BC(v4, "Resumed", 7);
  std::ostream::~ostream();
  sub_10009F930(v3);
  return std::ios::~ios();
}

void sub_10009F6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10009F824(va);
  _Unwind_Resume(a1);
}

void *sub_10009F6FC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009F868(a1, a2);
  *a1 = off_100213D30;
  a1[45] = &off_100213E30;
  a1[46] = &off_100213E58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213D30;
  a1[45] = off_100213DB8;
  a1[46] = off_100213DE0;
  return a1;
}

void sub_10009F800(_Unwind_Exception *a1)
{
  sub_10009F930(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10009F824(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009F930(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10009F868(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100213EC8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10009F918(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009F930(uint64_t a1)
{
  *a1 = off_100213EC8;
  sub_10009FD70(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10009FA9C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009F930(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009FB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009FB40(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10009FBAC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009F930(v1);

  return std::ios::~ios();
}

void sub_10009FBF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009F930(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009FC5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009F930(v1);

  return std::ios::~ios();
}

void sub_10009FCBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009F930(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009FD38(uint64_t a1)
{
  sub_10009F930(a1);

  operator delete();
}

uint64_t sub_10009FD70(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10009FEE4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10009FEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10009FEE4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 122;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E03D8();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 122;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000A00D8(uint64_t a1)
{
  dispatch_barrier_sync(*(a1 + 96), &stru_100213F38);
  *&v2 = "rawTestPlugin_t::subscriber_t::_cancel()";
  *(&v2 + 1) = 38;
  v3 = 0;
  sub_1000A017C(v4, &v2);
  sub_1000026BC(v5, "Cancelled", 9);
  std::ostream::~ostream();
  sub_1000A03B0(v4);
  return std::ios::~ios();
}

void sub_1000A0164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000A02A4(va);
  _Unwind_Resume(a1);
}

void *sub_1000A017C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A02E8(a1, a2);
  *a1 = off_100213F70;
  a1[45] = &off_100214070;
  a1[46] = &off_100214098;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100213F70;
  a1[45] = off_100213FF8;
  a1[46] = off_100214020;
  return a1;
}

void sub_1000A0280(_Unwind_Exception *a1)
{
  sub_1000A03B0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000A02A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A03B0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000A02E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100214108;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000A0398(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A03B0(uint64_t a1)
{
  *a1 = off_100214108;
  sub_1000A07F0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000A051C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A03B0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A0584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000A05C0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000A062C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A03B0(v1);

  return std::ios::~ios();
}

void sub_1000A0678(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A03B0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A06DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A03B0(v1);

  return std::ios::~ios();
}

void sub_1000A073C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A03B0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000A07B8(uint64_t a1)
{
  sub_1000A03B0(a1);

  operator delete();
}

uint64_t sub_1000A07F0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_1000A0964((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000A093C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000A0964(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 118;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E03D8();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 118;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000A0B58(uint64_t a1, void (*a2)(uint64_t, const char *, id, char *), void (*a3)(uint64_t, const char *, void), uint64_t a4)
{
  a3(a4, "fd", *(a1 + 108));
  a2(a4, "path", [*(a1 + 96) UTF8String], objc_msgSend(*(a1 + 96), "length") + 1);

  return (a2)(a4, "writable", a1 + 104, 1);
}

CFUUIDRef sub_1000A0C00(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  v1 = sub_1000A0C94(v5, [*(a1 + 96) UTF8String], objc_msgSend(*(a1 + 96), "length"));
  v3 = v2;
  *&v6.byte0 = v1;
  *&v6.byte8 = v3;
  return CFUUIDCreateFromUUIDBytes(0, v6);
}

uint64_t sub_1000A0C94(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = 0;
  v13 = xmmword_1001CAFD0;
  v14 = -1009589776;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  do
  {
    v7 = *(a1 + v6);
    v8 = v16++;
    v15[v8] = v7;
    if (v16 == 64)
    {
      v16 = 0;
      sub_1000A0F70(&v13);
    }

    if (v17 > 0xFFFFFFF7)
    {
      v17 = 0;
      if (v18 > 0xFFFFFFFE)
      {
        std::runtime_error::runtime_error(&v12, "sha1 too many bytes");
        sub_100089704(&v12);
      }

      ++v18;
    }

    else
    {
      v17 += 8;
    }

    ++v6;
  }

  while (v6 != 16);
  for (; a3; --a3)
  {
    v9 = *a2;
    v10 = v16++;
    v15[v10] = v9;
    if (v16 == 64)
    {
      v16 = 0;
      sub_1000A0F70(&v13);
    }

    if (v17 > 0xFFFFFFF7)
    {
      v17 = 0;
      if (v18 > 0xFFFFFFFE)
      {
        std::runtime_error::runtime_error(&v12, "sha1 too many bytes");
        sub_100089704(&v12);
      }

      ++v18;
    }

    else
    {
      v17 += 8;
    }

    ++a2;
  }

  return sub_1000A0EC4(a1, &v13);
}

uint64_t sub_1000A0EC4(uint64_t a1, _DWORD *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  sub_1000A11AC(a2, v4);
  for (i = 0; i != 16; i += 4)
  {
    *(&v6 + i) = bswap32(*(v4 + i));
  }

  BYTE6(v6) = BYTE6(v6) & 0xF | 0x50;
  return v6;
}

_DWORD *sub_1000A0F70(_DWORD *result)
{
  v1 = 0;
  v2 = (result + 5);
  v40 = vld4q_s8(v2);
  v3 = vmovl_u8(*v40.val[0].i8);
  v4 = vmovl_high_u8(v40.val[0]);
  _Q16 = vmovl_u8(*v40.val[1].i8);
  _Q17 = vmovl_high_u8(v40.val[1]);
  __asm
  {
    SHLL2           V18.4S, V17.8H, #0x10
    SHLL2           V19.4S, V16.8H, #0x10
  }

  v13 = vmovl_high_u8(v40.val[2]);
  v14 = vmovl_u8(*v40.val[2].i8);
  v15 = vorrq_s8(vorrq_s8(vshll_n_u16(*v14.i8, 8uLL), vshll_n_s16(*_Q16.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v3.i8), 0x18uLL));
  v16 = vmovl_high_u8(v40.val[3]);
  v40.val[0] = vmovl_u8(*v40.val[3].i8);
  v39[3] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v13, 8uLL), _Q18), vshlq_n_s32(vmovl_high_u16(v4), 0x18uLL)), vmovl_high_u16(v16));
  v39[2] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u16(*v13.i8, 8uLL), vshll_n_s16(*_Q17.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v4.i8), 0x18uLL)), vmovl_u16(*v16.i8));
  v39[1] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_high_n_u16(v14, 8uLL), _Q19), vshlq_n_s32(vmovl_high_u16(v3), 0x18uLL)), vmovl_high_u16(v40.val[0]));
  v39[0] = vorrq_s8(v15, vmovl_u16(*v40.val[0].i8));
  do
  {
    HIDWORD(v17) = *(&v39[2] + v1) ^ *(&v39[3] + v1 + 4) ^ *(v39 + v1 + 8) ^ *(v39 + v1);
    LODWORD(v17) = HIDWORD(v17);
    *(&v39[4] + v1) = v17 >> 31;
    v1 += 4;
  }

  while (v1 != 256);
  v18 = 0;
  v19 = result[1];
  v21 = result[3];
  v20 = result[4];
  v22 = v20;
  v23 = result[2];
  v24 = v21;
  v25 = v23;
  v26 = v19;
  v27 = *result;
  do
  {
    v28 = v27;
    v29 = v25;
    v30 = v24;
    v31 = v25 ^ v26 ^ v24;
    v32 = (v24 | v29) & v26 | v24 & v29;
    if (v18 <= 0x3B)
    {
      v33 = -1894007588;
    }

    else
    {
      v32 = v31;
      v33 = -899497514;
    }

    if (v18 <= 0x27)
    {
      v34 = 1859775393;
    }

    else
    {
      v31 = v32;
      v34 = v33;
    }

    if (v18 <= 0x13)
    {
      v31 = v30 & ~v26 | v29 & v26;
    }

    HIDWORD(v36) = v28;
    LODWORD(v36) = v28;
    v35 = v36 >> 27;
    if (v18 <= 0x13)
    {
      v34 = 1518500249;
    }

    v37 = v22 + v35 + v31 + v34;
    HIDWORD(v38) = v26;
    LODWORD(v38) = v26;
    v25 = v38 >> 2;
    v27 = v37 + *(v39 + v18++);
    v22 = v30;
    v24 = v29;
    v26 = v28;
  }

  while (v18 != 80);
  *result += v27;
  result[1] = v28 + v19;
  result[2] = v25 + v23;
  result[3] = v29 + v21;
  result[4] = v30 + v20;
  return result;
}

_DWORD *sub_1000A11AC(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  v4 = result + 5;
  v5 = *(result + 11);
  *(result + 11) = v5 + 1;
  *(result + v5 + 20) = 0x80;
  v6 = *(result + 11);
  if (v6 == 64)
  {
    *(result + 11) = 0;
    result = sub_1000A0F70(result);
    v6 = *(v3 + 11);
  }

  if (v6 < 0x39)
  {
    if (v6 != 56)
    {
      do
      {
        *(v3 + 11) = v6 + 1;
        *(v4 + v6) = 0;
        v6 = *(v3 + 11);
      }

      while (v6 < 0x38);
    }
  }

  else
  {
    do
    {
      *(v3 + 11) = v6 + 1;
      *(v4 + v6) = 0;
      v6 = *(v3 + 11);
      if (v6 == 64)
      {
        *(v3 + 11) = 0;
        result = sub_1000A0F70(v3);
        v6 = *(v3 + 11);
      }
    }

    while (v6);
    v7 = 0;
    do
    {
      v6 = v7 + 1;
      *(v4 + v7) = 0;
    }

    while (v7++ < 0x37);
  }

  v9 = *(v3 + 13) >> 24;
  *(v3 + 11) = v6 + 1;
  *(v4 + v6) = v9;
  v10 = *(v3 + 11);
  if (v10 == 64)
  {
    *(v3 + 11) = 0;
    result = sub_1000A0F70(v3);
    v10 = *(v3 + 11);
  }

  v11 = *(v3 + 13) >> 16;
  *(v3 + 11) = v10 + 1;
  *(v4 + v10) = v11;
  v12 = *(v3 + 11);
  if (v12 == 64)
  {
    *(v3 + 11) = 0;
    result = sub_1000A0F70(v3);
    v12 = *(v3 + 11);
  }

  v13 = *(v3 + 13) >> 8;
  *(v3 + 11) = v12 + 1;
  *(v4 + v12) = v13;
  v14 = *(v3 + 11);
  if (v14 == 64)
  {
    *(v3 + 11) = 0;
    result = sub_1000A0F70(v3);
    v14 = *(v3 + 11);
  }

  v15 = *(v3 + 13);
  *(v3 + 11) = v14 + 1;
  *(v4 + v14) = v15;
  v16 = *(v3 + 11);
  if (v16 == 64)
  {
    *(v3 + 11) = 0;
    result = sub_1000A0F70(v3);
    v16 = *(v3 + 11);
  }

  v17 = *(v3 + 12) >> 24;
  *(v3 + 11) = v16 + 1;
  *(v4 + v16) = v17;
  v18 = *(v3 + 11);
  if (v18 == 64)
  {
    *(v3 + 11) = 0;
    result = sub_1000A0F70(v3);
    v18 = *(v3 + 11);
  }

  v19 = *(v3 + 12) >> 16;
  *(v3 + 11) = v18 + 1;
  *(v4 + v18) = v19;
  v20 = *(v3 + 11);
  if (v20 == 64)
  {
    *(v3 + 11) = 0;
    result = sub_1000A0F70(v3);
    v20 = *(v3 + 11);
  }

  v21 = *(v3 + 12) >> 8;
  *(v3 + 11) = v20 + 1;
  *(v4 + v20) = v21;
  v22 = *(v3 + 11);
  if (v22 == 64)
  {
    *(v3 + 11) = 0;
    result = sub_1000A0F70(v3);
    v22 = *(v3 + 11);
  }

  v23 = *(v3 + 12);
  *(v3 + 11) = v22 + 1;
  *(v4 + v22) = v23;
  if (*(v3 + 11) == 64)
  {
    *(v3 + 11) = 0;
    result = sub_1000A0F70(v3);
  }

  *a2 = *v3;
  a2[1] = v3[1];
  a2[2] = v3[2];
  a2[3] = v3[3];
  a2[4] = v3[4];
  return result;
}

void sub_1000A1418(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_1000A1458(uint64_t a1)
{
  close(*(a1 + 108));
  *&v3 = "rawTestPlugin_t::~rawTestPlugin_t()";
  *(&v3 + 1) = 33;
  v4 = 0;
  sub_1000A14FC(v5, &v3);
  sub_1000026BC(v6, "Cleaning up!", 12);
  std::ostream::~ostream();
  sub_1000A1730(v5);
  std::ios::~ios();

  return a1;
}

void *sub_1000A14FC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A1668(a1, a2);
  *a1 = off_1002141B8;
  a1[45] = &off_1002142B8;
  a1[46] = &off_1002142E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002141B8;
  a1[45] = off_100214240;
  a1[46] = off_100214268;
  return a1;
}

void sub_1000A1600(_Unwind_Exception *a1)
{
  sub_1000A1730(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1624(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A1730(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000A1668(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100214350;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1000A1718(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1730(uint64_t a1)
{
  *a1 = off_100214350;
  sub_1000A1B70(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000A189C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A1730(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A1904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000A1940(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000A19AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A1730(v1);

  return std::ios::~ios();
}

void sub_1000A19F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A1730(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A1A5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A1730(v1);

  return std::ios::~ios();
}

void sub_1000A1ABC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A1730(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000A1B38(uint64_t a1)
{
  sub_1000A1730(a1);

  operator delete();
}

uint64_t sub_1000A1B70(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_1000A1CE4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000A1CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000A1CE4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 325;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E03D8();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 325;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}