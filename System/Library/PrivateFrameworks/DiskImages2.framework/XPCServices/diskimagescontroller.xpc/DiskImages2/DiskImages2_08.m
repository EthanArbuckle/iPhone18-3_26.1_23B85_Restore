void sub_1000BCBF4(_Unwind_Exception *a1)
{
  sub_1000C26F0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BCC18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C26F0(a1);
  std::ios::~ios();
  return a1;
}

BOOL sub_1000BCC60()
{
  sub_100159884();
  if (v6 < 0)
  {
    v1 = v5 == 5 && *v4 == 1718642273 && v4[4] == 115;
    operator delete(v4);
  }

  else
  {
    return v6 == 5 && v4 == 1718642273 && BYTE4(v4) == 115;
  }

  return v1;
}

void *sub_1000BCD04(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D18A8(a1, a2);
  *a1 = off_100216F98;
  a1[45] = &off_100217098;
  a1[46] = &off_1002170C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100216F98;
  a1[45] = off_100217020;
  a1[46] = off_100217048;
  return a1;
}

void sub_1000BCE08(_Unwind_Exception *a1)
{
  sub_1000C3028(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BCE2C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C3028(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000BCE70(uint64_t a1)
{
  v10 = 0;
  sub_100046AE0(a1 + 352, 0, v11);
  v2 = *(a1 + 712);
  v3 = *(a1 + 720);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      sub_10008CCF4(&v8, v2);
      if (v9 && (*(v9 + 68) & 1) != 0)
      {
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 1174405120;
        v6[2] = sub_1000BCFD8;
        v6[3] = &unk_100216C90;
        sub_10008CCF4(v7, &v8);
        v7[3] = &v10;
        sub_1000468B0(v11, v6);
        ++v4;
        sub_10008CC30(v7);
      }

      sub_10008CC30(&v8);
      v2 += 24;
    }

    while (v2 != v3);
  }

  sub_100046A5C(v11);
  return atomic_load(&v10);
}

void sub_1000BCFC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100002A4C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000BCFD8(uint64_t a1)
{
  if (sub_1000E0464())
  {
    *&v3 = "size_t> DiskImageSparseBundle::flush_open_bands()_block_invoke";
    *(&v3 + 1) = 47;
    v4 = 2;
    sub_1000BD0A4(v5, &v3);
    sub_1000026BC(v6, "Flushing ", 9);
    sub_10008CB14(v6, *(a1 + 40));
    std::ostream::~ostream();
    sub_1000C37C0(v5);
    std::ios::~ios();
  }

  result = sub_10008C86C(*(a1 + 40));
  if (result)
  {
    atomic_store(result, *(a1 + 56));
  }

  return result;
}

void sub_1000BD090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000BD1CC(va);
  _Unwind_Resume(a1);
}

void *sub_1000BD0A4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D1970(a1, a2);
  *a1 = off_1002171B8;
  a1[45] = &off_1002172B8;
  a1[46] = &off_1002172E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002171B8;
  a1[45] = off_100217240;
  a1[46] = off_100217268;
  return a1;
}

void sub_1000BD1A8(_Unwind_Exception *a1)
{
  sub_1000C37C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BD1CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C37C0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000BD224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000E0464())
  {
    *&v7 = "int DiskImageSparseBundle::flush(DiskImage::Context &, di_flush_mode)";
    *(&v7 + 1) = 32;
    v8 = 2;
    sub_1000676B8(v9, &v7);
    sub_1000026BC(v10, "Starting flush", 14);
    std::ostream::~ostream();
    sub_1000678EC(v9);
    std::ios::~ios();
  }

  std::mutex::lock((a1 + 576));
  sub_100043568(a1 + 80);
  v5 = sub_1000BCE70(a1);
  sub_100043578(a1 + 80);
  if (v5)
  {
    *&v7 = "int DiskImageSparseBundle::flush(DiskImage::Context &, di_flush_mode)";
    *(&v7 + 1) = 32;
    v8 = 16;
    sub_10003C0E0(v9, &v7);
    sub_1000026BC(v10, "Flush failed - returning ", 25);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10003EAEC(v9);
    std::ios::~ios();
  }

  else
  {
    if (sub_1000E0464())
    {
      *&v7 = "int DiskImageSparseBundle::flush(DiskImage::Context &, di_flush_mode)";
      *(&v7 + 1) = 32;
      v8 = 2;
      sub_10007DCC0(v9, &v7);
      std::ostream::operator<<();
      sub_1000026BC(v10, " bands flushed, calling ", 24);
      sub_10019A310(v10, a3);
      std::ostream::~ostream();
      sub_100081308(v9);
      std::ios::~ios();
    }

    v5 = (*(**(a1 + 560) + 16))(*(a1 + 560), a3);
  }

  std::mutex::unlock((a1 + 576));
  return v5;
}

void *sub_1000BD45C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if ((*(*a1 + 40))(a1))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = v8 | 0x200;
  }

  else
  {
    v9 = v8;
  }

  while (1)
  {
    sub_1000BD5EC(a1, a2, v11);
    if (v11[1])
    {
      sub_10008CCF8(a4, v11);
      return sub_10008CC30(v11);
    }

    if (sub_100043600(a1 + 208, a2))
    {
      break;
    }

    sub_10008CC30(v11);
  }

  sub_1000BD840(a1, a2, v9, a4);
  return sub_10008CC30(v11);
}

std::chrono::steady_clock::time_point sub_1000BD5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::chrono::steady_clock::time_point **a3@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = *(a1 + 712);
  while (*(v7 + 16) != a2)
  {
    ++v6;
    v7 += 24;
    if (v4 == v6)
    {
      goto LABEL_14;
    }
  }

  sub_10008CCF4(a3, v7);
  v8 = a3[1];
  if (!v8 || v8[4].__d_.__rep_ != a2)
  {
    if (sub_1000E0464())
    {
      *&v10 = "DiskImageSparseBundle::find_band_in_array(uint64_t)";
      *(&v10 + 1) = 41;
      v11 = 2;
      sub_1000BE40C(v12, &v10);
      sub_1000026BC(v13, "Band ", 5);
      *(&v13[1] + *(v13[0] - 24)) = *(&v13[1] + *(v13[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v13[1] + *(v13[0] - 24)) = *(&v13[1] + *(v13[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_1000026BC(v13, " changed before retain completed", 32);
      std::ostream::~ostream();
      sub_1000C5620(v12);
      std::ios::~ios();
    }

    sub_10008CC30(a3);
LABEL_14:
    operator new();
  }

  if (sub_1000E0464())
  {
    *&v10 = "DiskImageSparseBundle::find_band_in_array(uint64_t)";
    *(&v10 + 1) = 41;
    v11 = 2;
    sub_1000BE2A0(v12, &v10);
    sub_1000026BC(v13, "Found ", 6);
    sub_10008CB14(v13, a3[1]);
    sub_1000026BC(v13, " at index ", 10);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000C4E88(v12);
    std::ios::~ios();
  }

  result.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  (*a3)[2].__d_.__rep_ = result.__d_.__rep_;
  return result;
}

void sub_1000BD840(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (sub_1000E0464())
  {
    *&v11 = "DiskImageSparseBundle::open_band(uint64_t, int)";
    *(&v11 + 1) = 32;
    v12 = 2;
    sub_1000BDBBC(v13, &v11);
    sub_1000026BC(v14, "Opening band ", 13);
    *(&v14[1] + *(v14[0] - 24)) = *(&v14[1] + *(v14[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    *(&v14[1] + *(v14[0] - 24)) = *(&v14[1] + *(v14[0] - 24)) & 0xFFFFFFB5 | 2;
    std::ostream::~ostream();
    sub_1000C3F58(v13);
    std::ios::~ios();
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1000BDD28;
  v9[3] = &unk_100216CC8;
  v9[4] = &v15;
  v9[5] = a1;
  v9[6] = a2;
  v10 = a3;
  sub_100044150(a1 + 24, v9);
  sub_1000BDD6C(a1, v16[3], a4);
  if (!a4[1])
  {
    v8 = 0;
    do
    {
      if (!v8 && sub_1000E0464())
      {
        *&v11 = "DiskImageSparseBundle::open_band(uint64_t, int)";
        *(&v11 + 1) = 32;
        v12 = 2;
        sub_10007317C(v13, &v11);
        sub_1000026BC(v14, "Failed to evict band to make room for ", 38);
        sub_10008CB14(v14, v16[3]);
        sub_1000026BC(v14, ", retrying", 10);
        std::ostream::~ostream();
        sub_100078BB0(v13);
        std::ios::~ios();
      }

      usleep(0x3E8u);
      sub_10008CC30(a4);
      ++v8;
      sub_1000BDD6C(a1, v16[3], a4);
    }

    while (!a4[1]);
  }

  if (sub_1000E0464())
  {
    *&v11 = "DiskImageSparseBundle::open_band(uint64_t, int)";
    *(&v11 + 1) = 32;
    v12 = 2;
    sub_1000BE134(v13, &v11);
    sub_10008CB14(v14, a4[1]);
    sub_1000026BC(v14, " opened and replaced at attempt ", 32);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000C46F0(v13);
    std::ios::~ios();
  }

  _Block_object_dispose(&v15, 8);
}

void sub_1000BDB54(_Unwind_Exception *a1)
{
  sub_10008CC30(v1);
  _Block_object_dispose((v2 - 120), 8);
  _Unwind_Resume(a1);
}

void *sub_1000BDBBC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D1A38(a1, a2);
  *a1 = off_1002173D8;
  a1[45] = &off_1002174D8;
  a1[46] = &off_100217500;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002173D8;
  a1[45] = off_100217460;
  a1[46] = off_100217488;
  return a1;
}

void sub_1000BDCC0(_Unwind_Exception *a1)
{
  sub_1000C3F58(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BDCE4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C3F58(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000BDD28(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 560) + 88;
  sub_10008B114(*(a1 + 48), v1 + 24, *(a1 + 56));
}

void sub_1000BDD6C(uint64_t a1@<X0>, std::chrono::steady_clock::time_point *a2@<X1>, void *a3@<X8>)
{
  v6 = v22;
  __p = v22;
  v21 = xmmword_1001CC060;
  if (*(a1 + 16))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = atomic_load(*(*(a1 + 712) + v7));
      if (v9 == 1)
      {
        *&v18[0] = *(*(*(a1 + 712) + v7) + 16);
        *(&v18[0] + 1) = v8;
        v10 = __p + 16 * v21;
        if (v21 == *(&v21 + 1))
        {
          sub_1000D1D58(&__p, v10, 1, v18, &v16);
        }

        else
        {
          *v10 = v18[0];
          *&v21 = v21 + 1;
        }
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < *(a1 + 16));
    v6 = __p;
    v11 = (__p + 16 * v21);
    if (v21)
    {
      v12 = 126 - 2 * __clz(v21);
      goto LABEL_13;
    }
  }

  else
  {
    v11 = v22;
  }

  v12 = 0;
LABEL_13:
  sub_1000C5B20(v6, v11, v18, v12, 1);
  if (sub_1000E0464())
  {
    *&v16 = "DiskImageSparseBundle::replace_oldest_band(Band *)";
    *(&v16 + 1) = 42;
    v17 = 2;
    sub_10008C9A8(v18, &v16);
    sub_1000026BC(v19, "Looking for an evictable slot for ", 34);
    sub_10008CB14(v19, a2);
    std::ostream::~ostream();
    sub_100093C94(v18);
    std::ios::~ios();
  }

  if (!v21)
  {
LABEL_21:
    operator new();
  }

  v13 = (__p + 8);
  v14 = 16 * v21;
  while (1)
  {
    v15 = *v13;
    v13 += 2;
    sub_10008CD64((*(a1 + 712) + 24 * v15), a2, a3);
    if (a3[1])
    {
      break;
    }

    if (sub_1000E0464())
    {
      *&v16 = "DiskImageSparseBundle::replace_oldest_band(Band *)";
      *(&v16 + 1) = 42;
      v17 = 2;
      sub_1000BE6E4(v18, &v16);
      sub_1000026BC(v19, "Failed placing new ", 19);
      sub_10008CB14(v19, a2);
      sub_1000026BC(v19, " at index ", 10);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_1000C7840(v18);
      std::ios::~ios();
    }

    sub_10008CC30(a3);
    v14 -= 16;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (sub_1000E0464())
  {
    *&v16 = "DiskImageSparseBundle::replace_oldest_band(Band *)";
    *(&v16 + 1) = 42;
    v17 = 2;
    sub_1000BE578(v18, &v16);
    sub_1000026BC(v19, "Placed new ", 11);
    sub_10008CB14(v19, a2);
    sub_1000026BC(v19, " at index ", 10);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000C70A8(v18);
    std::ios::~ios();
  }

  sub_100043BC4(a1 + 208, a2[4].__d_.__rep_, 1);
  if (*(&v21 + 1) && v22 != __p)
  {
    operator delete(__p);
  }
}

void sub_1000BE11C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100002A4C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1000BE134(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D1B00(a1, a2);
  *a1 = off_1002175F8;
  a1[45] = &off_1002176F8;
  a1[46] = &off_100217720;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002175F8;
  a1[45] = off_100217680;
  a1[46] = off_1002176A8;
  return a1;
}

void sub_1000BE238(_Unwind_Exception *a1)
{
  sub_1000C46F0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BE25C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C46F0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000BE2A0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D1BC8(a1, a2);
  *a1 = off_100217818;
  a1[45] = &off_100217918;
  a1[46] = &off_100217940;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100217818;
  a1[45] = off_1002178A0;
  a1[46] = off_1002178C8;
  return a1;
}

void sub_1000BE3A4(_Unwind_Exception *a1)
{
  sub_1000C4E88(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BE3C8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C4E88(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000BE40C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D1C90(a1, a2);
  *a1 = off_100217A38;
  a1[45] = &off_100217B38;
  a1[46] = &off_100217B60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100217A38;
  a1[45] = off_100217AC0;
  a1[46] = off_100217AE8;
  return a1;
}

void sub_1000BE510(_Unwind_Exception *a1)
{
  sub_1000C5620(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BE534(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C5620(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000BE578(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D1E6C(a1, a2);
  *a1 = off_100217C58;
  a1[45] = &off_100217D58;
  a1[46] = &off_100217D80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100217C58;
  a1[45] = off_100217CE0;
  a1[46] = off_100217D08;
  return a1;
}

void sub_1000BE67C(_Unwind_Exception *a1)
{
  sub_1000C70A8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BE6A0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C70A8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000BE6E4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D1F34(a1, a2);
  *a1 = off_100217E78;
  a1[45] = &off_100217F78;
  a1[46] = &off_100217FA0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100217E78;
  a1[45] = off_100217F00;
  a1[46] = off_100217F28;
  return a1;
}

void sub_1000BE7E8(_Unwind_Exception *a1)
{
  sub_1000C7840(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BE80C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C7840(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000BE850(uint64_t a1)
{
  *a1 = off_100216BC0;
  *&v8 = "DiskImageSparseBundle::~DiskImageSparseBundle()";
  *(&v8 + 1) = 45;
  v9 = 0;
  sub_1000BE9F8(v10, &v8);
  sub_1000026BC(v11, "Closing bands", 13);
  std::ostream::~ostream();
  sub_1000C7FD8(v10);
  std::ios::~ios();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      if (*(*(a1 + 712) + v4))
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_1000BEB64;
        v7[3] = &unk_100216CE8;
        v7[4] = a1;
        v7[5] = v3;
        sub_1000468B0((a1 + 416), v7);
        v2 = *(a1 + 16);
      }

      ++v3;
      v4 += 24;
    }

    while (v3 < v2);
  }

  sub_1000469FC(a1 + 416, 0xFFFFFFFFFFFFFFFFLL);
  v10[0] = (a1 + 712);
  sub_1000C2BF0(v10);
  v10[0] = (a1 + 664);
  sub_10000E990(v10);
  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  std::mutex::~mutex((a1 + 576));
  v5 = *(a1 + 568);
  if (v5)
  {
    sub_10000367C(v5);
  }

  sub_1000C2C74(a1 + 24);
  return a1;
}

void *sub_1000BE9F8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D1FFC(a1, a2);
  *a1 = off_100218098;
  a1[45] = &off_100218198;
  a1[46] = &off_1002181C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100218098;
  a1[45] = off_100218120;
  a1[46] = off_100218148;
  return a1;
}

void sub_1000BEAFC(_Unwind_Exception *a1)
{
  sub_1000C7FD8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BEB20(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C7FD8(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000BEB64(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (sub_1000E0464())
  {
    *&v4 = "DiskImageSparseBundle::~DiskImageSparseBundle()_block_invoke";
    *(&v4 + 1) = 45;
    v5 = 2;
    sub_1000BED0C(&v6, &v4);
    sub_1000026BC(v7, "Background close of band at index ", 34);
    v3 = *(a1 + 40);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000C8770(&v6);
    std::ios::~ios();
  }

  operator new();
}

void sub_1000BECD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000BEFA0(va);
  _Unwind_Resume(a1);
}

void *sub_1000BED0C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D20C4(a1, a2);
  *a1 = off_1002182B8;
  a1[45] = &off_1002183B8;
  a1[46] = &off_1002183E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002182B8;
  a1[45] = off_100218340;
  a1[46] = off_100218368;
  return a1;
}

void sub_1000BEE10(_Unwind_Exception *a1)
{
  sub_1000C8770(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BEE34(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C8770(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000BEE78(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D218C(a1, a2);
  *a1 = off_1002184D8;
  a1[45] = &off_1002185D8;
  a1[46] = &off_100218600;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002184D8;
  a1[45] = off_100218560;
  a1[46] = off_100218588;
  return a1;
}

void sub_1000BEF7C(_Unwind_Exception *a1)
{
  sub_1000C8F08(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BEFA0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C8F08(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000BEFE8(uint64_t a1)
{
  sub_1000BE850(a1);

  operator delete();
}

size_t sub_1000BF020(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = 0;
  v8 = *(a1 + 64);
  v10 = a4[2];
  v9 = a4[3];
  v11 = v9 / v8;
  v22 = v8;
  v12 = v9 % v8;
  while (v10)
  {
    if (v10 >= v22 - v12)
    {
      v13 = v22 - v12;
    }

    else
    {
      v13 = v10;
    }

    sub_10008A548(&v32, a4, v13, v7, v12, a4[4] - v7);
    sub_1000BD45C(a1, v11, a3, &v30);
    v14 = v31;
    if (v31)
    {
      v15 = *(v30 + 24);
      if (!*(*(a2 + 16) + 16 * v15))
      {
        goto LABEL_10;
      }

      if (sub_1000BF5FC(*(*(a2 + 16) + 16 * v15)))
      {
        v14 = v31;
LABEL_10:
        sub_10008C6B8(v14, v34);
      }

      sub_100025704(&v32, v34);
      v16 = *(*(a2 + 16) + 16 * v15);
      sub_1000246F4(v35, &v27);
      sub_100024448(v35, v24);
      if (a3)
      {
        v17 = sub_1000037F0(v16);
      }

      else
      {
        v17 = sub_10000247C(v16);
      }

      v4 = v17;
      if (v26)
      {
        sub_10000367C(v26);
      }

      if (v25)
      {
        sub_10000367C(v25);
      }

      if (v29)
      {
        sub_10000367C(v29);
      }

      if (*(&v27 + 1))
      {
        sub_10000367C(*(&v27 + 1));
      }

      sub_1000036E8(v34);
      if (v4 != v13)
      {
        v18 = 0;
        goto LABEL_29;
      }

      v4 = v13;
    }

    else
    {
      if (sub_1000E0464())
      {
        *&v27 = "DiskImageSparseBundle::perform_io(ContextSparseBundle &, BOOL, const sg_entry &)";
        *(&v27 + 1) = 33;
        v28 = 2;
        sub_1000BF694(v34, &v27);
        sub_1000026BC(v36, "Band ", 5);
        *(&v36[1] + *(v36[0] - 24)) = *(&v36[1] + *(v36[0] - 24)) & 0xFFFFFFB5 | 8;
        std::ostream::operator<<();
        *(&v36[1] + *(v36[0] - 24)) = *(&v36[1] + *(v36[0] - 24)) & 0xFFFFFFB5 | 2;
        sub_1000026BC(v36, " doesn't exist, returning zeros", 31);
        std::ostream::~ostream();
        sub_1000C96A0(v34);
        std::ios::~ios();
      }

      bzero((*a4 + v7), v13);
    }

    v12 = 0;
    v10 -= v13;
    v7 += v13;
    ++v11;
    v18 = 1;
LABEL_29:
    sub_10008CC30(&v30);
    if (v33)
    {
      sub_10000367C(v33);
    }

    if ((v18 & 1) == 0)
    {
      return v4;
    }
  }

  v4 = a4[2];
  v20 = a4[3];
  return v4;
}

void sub_1000BF370(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 a43, int a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sub_10008CC30(&a70);
    if (STACK[0x208])
    {
      sub_10000367C(STACK[0x208]);
    }

    if (a2 == 2)
    {
      v72 = __cxa_begin_catch(a1);
      *&a43 = "DiskImageSparseBundle::perform_io(ContextSparseBundle &, BOOL, const sg_entry &)";
      *(&a43 + 1) = 33;
      a44 = 16;
      sub_1000BF800(&STACK[0x270], &a43);
      if (a14)
      {
        v73 = "Write error: ";
      }

      else
      {
        v73 = "Read error: ";
      }

      if (a14)
      {
        v74 = 13;
      }

      else
      {
        v74 = 12;
      }

      sub_1000026BC(&STACK[0x3D8], v73, v74);
      v75 = (*(*v72 + 16))(v72);
      v76 = strlen(v75);
      sub_1000026BC(&STACK[0x3D8], v75, v76);
      sub_1000026BC(&STACK[0x3D8], " (band ", 7);
      *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) = *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) = *(&STACK[0x3D8] + *(STACK[0x3D8] - 24) + 8) & 0xFFFFFFB5 | 2;
      sub_1000026BC(&STACK[0x3D8], ", err ", 6);
      v77 = v72[2];
      std::ostream::operator<<();
      sub_1000026BC(&STACK[0x3D8], ")", 1);
      sub_1000BF928(&STACK[0x270]);
      v72[2];
      __cxa_end_catch();
      JUMPOUT(0x1000BF32CLL);
    }

    sub_100002A4C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000BF5EC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1000BF444);
  }

  JUMPOUT(0x1000BF5DCLL);
}

uint64_t sub_1000BF5FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = 1;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_10000367C(v4);
  }

  return v5;
}

void *sub_1000BF694(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D2254(a1, a2);
  *a1 = off_1002186F8;
  a1[45] = &off_1002187F8;
  a1[46] = &off_100218820;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002186F8;
  a1[45] = off_100218780;
  a1[46] = off_1002187A8;
  return a1;
}

void sub_1000BF798(_Unwind_Exception *a1)
{
  sub_1000C96A0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BF7BC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C96A0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000BF800(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D231C(a1, a2);
  *a1 = off_100218918;
  a1[45] = &off_100218A18;
  a1[46] = &off_100218A40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100218918;
  a1[45] = off_1002189A0;
  a1[46] = off_1002189C8;
  return a1;
}

void sub_1000BF904(_Unwind_Exception *a1)
{
  sub_1000C9E38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000BF928(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C9E38(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000BF96C(uint64_t a1)
{
  v5 = 0;
  v2 = (a1 + 704);
  v4[0] = a1;
  v4[1] = &v5;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = v4;
    v6 = &v7;
    std::__call_once(v2, &v6, sub_1000D23E4);
  }

  return v5;
}

size_t sub_1000BF9D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000BF96C(a1);
  if (v6)
  {
    if (v6 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = -v6;
    }

    return -v7;
  }

  else
  {
    v9 = sub_1000BF020(a1, a2, 1, a3);
    v8 = v9;
    if ((v9 & 0x8000000000000000) != 0 && v9)
    {
      v10 = *(a2 + 8);
      *&v12 = "DiskImage::terminate()";
      *(&v12 + 1) = 20;
      v13 = 16;
      sub_1000CA338(v14, &v12);
      sub_1000026BC(v15, "Encountered an inrecoverable I/O error, all future I/Os will be invalidated", 75);
      std::ostream::~ostream();
      sub_1000CA56C(v14);
      std::ios::~ios();
      atomic_store(1u, v10 + 8);
      (*(*v10 + 200))(v10);
      sub_10019E398();
    }
  }

  return v8;
}

void sub_1000BFAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000CA460(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1000BFB08(void **a1)
{
  v2 = (*(*a1[70] + 40))(a1[70]);
  if (v2 % ((*a1)[3])(a1))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001860(exception, "Size is not a multiple of block size", 0x16u);
  }

  return v2 / ((*a1)[3])(a1);
}

uint64_t sub_1000BFBE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10008CCF4(&v10, *(a1 + 712) + 24 * a2);
  v8 = v11 != 0;
  if (v11 && sub_10008B068(v11, a4))
  {
    sub_10008CC30(&v10);
    return sub_10008D724(*(a1 + 712) + 24 * a2, a3);
  }

  else
  {
    sub_10008CC30(&v10);
  }

  return v8;
}

void sub_1000BFC8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008CC30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BFCA0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_100043600(a1 + 208, a2);
  if (v6)
  {
    if (sub_1000D2E94(a3) != *(a1 + 64))
    {
      if (sub_1000E0464())
      {
        *&v8 = "DiskImageSparseBundle::try_unmap_band_extents_without_list(uint64_t, const extents_set_t &)";
        *(&v8 + 1) = 58;
        v9 = 2;
        sub_1000C022C(&v10, &v8);
        sub_1000026BC(v11, "Unmapping band ", 15);
        *(&v11[1] + *(v11[0] - 24)) = *(&v11[1] + *(v11[0] - 24)) & 0xFFFFFFB5 | 8;
        std::ostream::operator<<();
        *(&v11[1] + *(v11[0] - 24)) = *(&v11[1] + *(v11[0] - 24)) & 0xFFFFFFB5 | 2;
        sub_1000026BC(v11, " directly (without list)", 24);
        std::ostream::~ostream();
        sub_1000CB734(&v10);
        std::ios::~ios();
      }

      sub_100195D1C(&v10, a1 + 24);
    }

    if (sub_1000E0464())
    {
      *&v8 = "DiskImageSparseBundle::try_unmap_band_extents_without_list(uint64_t, const extents_set_t &)";
      *(&v8 + 1) = 58;
      v9 = 2;
      sub_1000C00C0(&v10, &v8);
      sub_1000026BC(v11, "Unmapping band ", 15);
      *(&v11[1] + *(v11[0] - 24)) = *(&v11[1] + *(v11[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v11[1] + *(v11[0] - 24)) = *(&v11[1] + *(v11[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_1000026BC(v11, " completely", 11);
      std::ostream::~ostream();
      sub_1000CAF9C(&v10);
      std::ios::~ios();
    }

    sub_10008B2B8(a1 + 24, a2);
    sub_100043C60(a1 + 208, a2);
  }

  return v6;
}

void sub_1000BFFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(exception_object);
    sub_100043C60(v13 + 208, v12);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_1000CBC34(exception, v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000C00C0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D2F18(a1, a2);
  *a1 = off_100218D58;
  a1[45] = &off_100218E58;
  a1[46] = &off_100218E80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100218D58;
  a1[45] = off_100218DE0;
  a1[46] = off_100218E08;
  return a1;
}

void sub_1000C01C4(_Unwind_Exception *a1)
{
  sub_1000CAF9C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C01E8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CAF9C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C022C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D2FE0(a1, a2);
  *a1 = off_100218F78;
  a1[45] = &off_100219078;
  a1[46] = &off_1002190A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100218F78;
  a1[45] = off_100219000;
  a1[46] = off_100219028;
  return a1;
}

void sub_1000C0330(_Unwind_Exception *a1)
{
  sub_1000CB734(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0354(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CB734(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000C0398(uint64_t a1, unint64_t a2, void *a3)
{
  do
  {
    while (1)
    {
      v6 = *(a1 + 16);
      if (!v6)
      {
        break;
      }

      v7 = 0;
      v8 = (*(a1 + 712) + 16);
      while (1)
      {
        v9 = *v8;
        v8 += 3;
        if (v9 == a2)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_9;
        }
      }

      if (v7 < 0)
      {
        break;
      }

      result = sub_1000BFBE8(a1, v7, a2, a3);
      if (result)
      {
        return result;
      }

      usleep(0x3E8u);
    }

LABEL_9:
    result = sub_1000BFCA0(a1, a2, a3);
  }

  while (!result);
  return result;
}

uint64_t sub_1000C0430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1000E0464())
  {
    *&v49 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
    *(&v49 + 1) = 32;
    v50 = 2;
    sub_1000C0D34(&v42, &v49);
    sub_1000026BC(v48, "Starting unmap of ", 18);
    std::ostream::operator<<();
    sub_1000026BC(v48, " extents", 8);
    std::ostream::~ostream();
    sub_1000CBFF4(&v42);
    std::ios::~ios();
  }

  v6 = a1[8];
  v41 = 0;
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  if (a1[43])
  {
    v7 = sub_1000BF96C(a1);
    if (!v7)
    {
      sub_100046AE0((a1 + 80), 0, &v49);
      if (a4)
      {
        v8 = 0;
        v9 = 0;
        v32 = a3;
        do
        {
          v10 = v8;
          v11 = *(a3 + 16 * v8);
          v12 = (*(*a1 + 24))(a1);
          v34 = v10;
          v13 = *(a3 + 16 * v10 + 8);
          v35 = v12 * v11;
          v14 = (*(*a1 + 24))(a1) * v13;
          if (sub_1000E0464())
          {
            *&v37 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
            *(&v37 + 1) = 32;
            v38 = 2;
            sub_1000C100C(&v42, &v37);
            sub_1000026BC(v48, "Extent ", 7);
            std::ostream::operator<<();
            sub_1000026BC(v48, ": [", 3);
            v15 = v48[0];
            *(&v48[1] + *(v48[0] - 24)) |= 0x200u;
            *(&v48[1] + *(v15 - 24)) = *(&v48[1] + *(v15 - 24)) & 0xFFFFFFB5 | 8;
            std::ostream::operator<<();
            sub_1000026BC(v48, "-", 1);
            std::ostream::operator<<();
            sub_1000026BC(v48, "]", 1);
            v16 = v48[0];
            *(&v48[1] + *(v48[0] - 24)) &= ~0x200u;
            *(&v48[1] + *(v16 - 24)) = *(&v48[1] + *(v16 - 24)) & 0xFFFFFFB5 | 2;
            std::ostream::~ostream();
            sub_1000CCF24(&v42);
            std::ios::~ios();
          }

          if (v14)
          {
            v17 = v35 / v6;
            v18 = v35 % v6;
            do
            {
              if (v9 != v17 && v39 != v40)
              {
                v42 = 0;
                v43 = &v42;
                v44 = 0x4002000000;
                v45 = sub_1000C1178;
                v46 = sub_1000C11B4;
                sub_1000D3300(v47, &v39);
                v36[0] = _NSConcreteStackBlock;
                v36[1] = 0x40000000;
                v36[2] = sub_1000C11C0;
                v36[3] = &unk_100216D10;
                v36[4] = &v42;
                v36[5] = a1;
                v36[6] = v9;
                v36[7] = &v41;
                sub_1000468B0(&v49, v36);
                sub_10000C880(&v39, v39, v40);
                _Block_object_dispose(&v42, 8);
                sub_1000085B4(v47, v47[1]);
              }

              if (v14 >= v6 - v18)
              {
                v19 = v6 - v18;
              }

              else
              {
                v19 = v14;
              }

              if (sub_1000B1EE8(a1[43], v17))
              {
                v42 = v18;
                v43 = (v19 + v18);
                LOBYTE(v44) = 2;
                if (v18 < v19 + v18)
                {
                  v20 = sub_10000BB3C(&v39, &v42);
                  if (v21)
                  {
                    *&v37 = v20;
                    sub_10000BE50(&v39, &v37);
                    sub_10000BF50(&v39, &v37);
                  }

                  else
                  {
                    v22 = v40[0];
                    v23 = v40;
                    if (!v40[0])
                    {
                      goto LABEL_47;
                    }

                    v24 = v43 + (v44 & 1) - 1;
                    v23 = v40;
                    do
                    {
                      v25 = v22[4];
                      if ((v22[6] & 2) == 0)
                      {
                        ++v25;
                      }

                      v26 = v24 >= v25;
                      v27 = v24 >= v25;
                      if (!v26)
                      {
                        v23 = v22;
                      }

                      v22 = v22[v27];
                    }

                    while (v22);
                    v28 = *v23;
                    if (*v23)
                    {
                      do
                      {
                        v29 = v28;
                        v28 = v28[1];
                      }

                      while (v28);
                    }

                    else
                    {
LABEL_47:
                      do
                      {
                        v29 = v23[2];
                        v30 = *v29 == v23;
                        v23 = v29;
                      }

                      while (v30);
                    }

                    sub_10000BAF4(&v39, &v42, v29);
                  }
                }

                v9 = v17;
              }

              v18 = 0;
              ++v17;
              v14 -= v19;
            }

            while (v14);
          }

          v8 = v34 + 1;
          a3 = v32;
        }

        while (v34 + 1 != a4);
      }

      else
      {
        v9 = 0;
      }

      if (v39 != v40)
      {
        sub_1000C0398(a1, v9, &v39);
      }

      sub_100046A5C(&v49);
      if (sub_1000E0464())
      {
        *&v49 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
        *(&v49 + 1) = 32;
        v50 = 2;
        sub_1000C166C(&v42, &v49);
        sub_1000026BC(v48, "Unmap done", 10);
        std::ostream::~ostream();
        sub_1000CE5EC(&v42);
        std::ios::~ios();
      }

      v7 = atomic_load(&v41);
    }
  }

  else
  {
    *&v49 = "int DiskImageSparseBundle::unmap(DiskImage::Context &, const unmap_extent_t *, size_t)";
    *(&v49 + 1) = 32;
    v50 = 16;
    sub_1000C0EA0(&v42, &v49);
    sub_1000026BC(v48, "Unexpected unmap command received on read only image", 52);
    std::ostream::~ostream();
    sub_1000CC78C(&v42);
    std::ios::~ios();
    v7 = 4294967277;
  }

  sub_1000085B4(&v39, v40[0]);
  return v7;
}

void sub_1000C0AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_1000C1794(&a32);
  sub_1000085B4(&a28, a29);
  _Unwind_Resume(a1);
}

void *sub_1000C0D34(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D30A8(a1, a2);
  *a1 = off_100219198;
  a1[45] = &off_100219298;
  a1[46] = &off_1002192C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100219198;
  a1[45] = off_100219220;
  a1[46] = off_100219248;
  return a1;
}

void sub_1000C0E38(_Unwind_Exception *a1)
{
  sub_1000CBFF4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0E5C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CBFF4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C0EA0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D3170(a1, a2);
  *a1 = off_1002193B8;
  a1[45] = &off_1002194B8;
  a1[46] = &off_1002194E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002193B8;
  a1[45] = off_100219440;
  a1[46] = off_100219468;
  return a1;
}

void sub_1000C0FA4(_Unwind_Exception *a1)
{
  sub_1000CC78C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0FC8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CC78C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C100C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D3238(a1, a2);
  *a1 = off_1002195D8;
  a1[45] = &off_1002196D8;
  a1[46] = &off_100219700;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002195D8;
  a1[45] = off_100219660;
  a1[46] = off_100219688;
  return a1;
}

void sub_1000C1110(_Unwind_Exception *a1)
{
  sub_1000CCF24(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1134(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CCF24(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C1178(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void *sub_1000C1394(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D33E0(a1, a2);
  *a1 = off_1002197F8;
  a1[45] = &off_1002198F8;
  a1[46] = &off_100219920;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002197F8;
  a1[45] = off_100219880;
  a1[46] = off_1002198A8;
  return a1;
}

void sub_1000C1498(_Unwind_Exception *a1)
{
  sub_1000CD6BC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C14BC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CD6BC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C1500(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D34A8(a1, a2);
  *a1 = off_100219A18;
  a1[45] = &off_100219B18;
  a1[46] = &off_100219B40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100219A18;
  a1[45] = off_100219AA0;
  a1[46] = off_100219AC8;
  return a1;
}

void sub_1000C1604(_Unwind_Exception *a1)
{
  sub_1000CDE54(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1628(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CDE54(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C166C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D3570(a1, a2);
  *a1 = off_100219C38;
  a1[45] = &off_100219D38;
  a1[46] = &off_100219D60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100219C38;
  a1[45] = off_100219CC0;
  a1[46] = off_100219CE8;
  return a1;
}

void sub_1000C1770(_Unwind_Exception *a1)
{
  sub_1000CE5EC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1794(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CE5EC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000C17D8(uint64_t a1)
{
  if (sub_1000E0464())
  {
    *&v6 = "void DiskImageSparseBundle::on_eject()";
    *(&v6 + 1) = 36;
    v7 = 2;
    sub_1000C1934(v8, &v6);
    sub_1000026BC(v9, "Evicting all bands for eject", 28);
    std::ostream::~ostream();
    sub_1000CED84(v8);
    std::ios::~ios();
  }

  if (*(a1 + 16))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sub_10008CD64((*(a1 + 712) + v2), 0, v5);
      sub_10008CC30(v5);
      ++v3;
      v2 += 24;
    }

    while (v3 < *(a1 + 16));
  }

  sub_1000469FC(a1 + 416, 0xFFFFFFFFFFFFFFFFLL);
  *&v6 = "void DiskImageSparseBundle::on_eject()";
  *(&v6 + 1) = 36;
  v7 = 0;
  sub_1000C1AA0(v8, &v6);
  sub_1000026BC(v9, "Sparse bundle ejected", 21);
  std::ostream::~ostream();
  sub_1000CF51C(v8);
  return std::ios::~ios();
}

void sub_1000C1910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000C1A5C(va);
  _Unwind_Resume(a1);
}

void *sub_1000C1934(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D3638(a1, a2);
  *a1 = off_100219E58;
  a1[45] = &off_100219F58;
  a1[46] = &off_100219F80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100219E58;
  a1[45] = off_100219EE0;
  a1[46] = off_100219F08;
  return a1;
}

void sub_1000C1A38(_Unwind_Exception *a1)
{
  sub_1000CED84(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1A5C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CED84(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000C1AA0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D3700(a1, a2);
  *a1 = off_10021A078;
  a1[45] = &off_10021A178;
  a1[46] = &off_10021A1A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021A078;
  a1[45] = off_10021A100;
  a1[46] = off_10021A128;
  return a1;
}

void sub_1000C1BA4(_Unwind_Exception *a1)
{
  sub_1000CF51C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1BC8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CF51C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000C1C0C(uint64_t a1, uint64_t a2)
{
  result = sub_1000C1D54(a1, a2);
  if (!result)
  {
    if (((a2 + 4095) & 0xFFFFFFFFFFFFF000) < 0x200000000000001)
    {
      v5 = *(**(a1 + 560) + 56);

      return v5();
    }

    else
    {
      *&v6 = "int DiskImageSparseBundle::set_size(uint64_t)";
      *(&v6 + 1) = 35;
      v7 = 16;
      sub_1000C1F30(v8, &v6);
      std::ostream::operator<<();
      sub_1000026BC(v9, " bytes are above the sparsebundle limit of ", 43);
      std::ostream::operator<<();
      sub_1000026BC(v9, " bytes", 6);
      std::ostream::~ostream();
      sub_1000CFCB4(v8);
      std::ios::~ios();
      return 4294967269;
    }
  }

  return result;
}

void sub_1000C1D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000C2058(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C1D54(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = (*(*a1 + 24))(a1) * v4;
  v6 = (*(*a1 + 24))(a1);
  v7 = (a2 + v6 - 1) / v6 * v6;
  if (v5 <= v7)
  {
    return 0;
  }

  v11[0] = v7 / (*(*a1 + 24))(a1);
  v11[1] = (v5 - v7) / (*(*a1 + 24))(a1);
  v8 = (*(*a1 + 144))(a1);
  v9 = (*(*a1 + 192))(a1, v8, v11, 1);
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  return v9;
}

void sub_1000C1F18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001A3164(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000C1F30(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D37C8(a1, a2);
  *a1 = off_10021A298;
  a1[45] = &off_10021A398;
  a1[46] = &off_10021A3C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021A298;
  a1[45] = off_10021A320;
  a1[46] = off_10021A348;
  return a1;
}

void sub_1000C2034(_Unwind_Exception *a1)
{
  sub_1000CFCB4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C2058(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CFCB4(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000C21DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100038E68();
}

void *sub_1000C2234(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_10008CCF4(a4, v8);
      v8 += 3;
      a4 += 24;
      v7 -= 24;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_10008CC30(v6);
      v6 += 3;
    }
  }

  return result;
}

void sub_1000C22B4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 24);
    do
    {
      v4 = sub_10008CC30(v4) - 3;
      v2 += 24;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C22D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_10008CC30((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000C2328(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100036CAC();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000C21DC(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  sub_10008CCF8(24 * v2, a2);
  v15 = 24 * v2 + 24;
  v7 = *(a1 + 8);
  v8 = 24 * v2 + *a1 - v7;
  sub_1000C2234(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1000C22D8(&v13);
  return v12;
}

void sub_1000C2444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000C22D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C2458(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C26F0(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C24A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C26F0(v1);

  return std::ios::~ios();
}

void sub_1000C2504(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C26F0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C256C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C25A8(_BYTE *a1, int a2)
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

void sub_1000C2614(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C26F0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C2678(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C26F0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C26F0(uint64_t a1)
{
  *a1 = off_100216F10;
  sub_1000C285C(a1);
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

uint64_t sub_1000C285C(uint64_t a1)
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
        sub_1000C2A0C((a1 + 72), __p);
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

void sub_1000C29A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C29D4(uint64_t a1)
{
  sub_1000C26F0(a1);

  operator delete();
}

int *sub_1000C2A0C(uint64_t *a1, uint64_t *a2)
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
    v21 = 46;
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
      v21 = 46;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_1000C2BF0(void ***a1)
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
        v4 = sub_10008CC30(v4 - 3);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1000C2C74(uint64_t a1)
{
  sub_100046A5C(a1 + 392);
  v7 = (a1 + 352);
  sub_10000E990(&v7);
  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  v2 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::condition_variable::~condition_variable((a1 + 272));
  std::mutex::~mutex((a1 + 208));
  sub_1000085B4(a1 + 184, *(a1 + 192));
  std::condition_variable::~condition_variable((a1 + 136));
  std::mutex::~mutex((a1 + 64));
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  return a1;
}

uint64_t sub_1000C2D90(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C3028(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C2DDC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C3028(v1);

  return std::ios::~ios();
}

void sub_1000C2E3C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C3028(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C2EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C2EE0(_BYTE *a1, int a2)
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

void sub_1000C2F4C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C3028(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C2FB0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C3028(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C3028(uint64_t a1)
{
  *a1 = off_100217130;
  sub_1000C3194(a1);
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

uint64_t sub_1000C3194(uint64_t a1)
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
        sub_1000C3344((a1 + 72), __p);
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

void sub_1000C32E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C330C(uint64_t a1)
{
  sub_1000C3028(a1);

  operator delete();
}

int *sub_1000C3344(uint64_t *a1, uint64_t *a2)
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
    v21 = 59;
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
      v21 = 59;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C3528(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C37C0(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C3574(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C37C0(v1);

  return std::ios::~ios();
}

void sub_1000C35D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C37C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C363C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C3678(_BYTE *a1, int a2)
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

void sub_1000C36E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C37C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C3748(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C37C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C37C0(uint64_t a1)
{
  *a1 = off_100217350;
  sub_1000C392C(a1);
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

uint64_t sub_1000C392C(uint64_t a1)
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
        sub_1000C3ADC((a1 + 72), __p);
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

void sub_1000C3A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C3AA4(uint64_t a1)
{
  sub_1000C37C0(a1);

  operator delete();
}

int *sub_1000C3ADC(uint64_t *a1, uint64_t *a2)
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
    v21 = 80;
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
      v21 = 80;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C3CC0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C3F58(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C3D0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C3F58(v1);

  return std::ios::~ios();
}

void sub_1000C3D6C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C3F58(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C3DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C3E10(_BYTE *a1, int a2)
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

void sub_1000C3E7C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C3F58(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C3EE0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C3F58(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C3F58(uint64_t a1)
{
  *a1 = off_100217570;
  sub_1000C40C4(a1);
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

uint64_t sub_1000C40C4(uint64_t a1)
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
        sub_1000C4274((a1 + 72), __p);
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

void sub_1000C4210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C423C(uint64_t a1)
{
  sub_1000C3F58(a1);

  operator delete();
}

int *sub_1000C4274(uint64_t *a1, uint64_t *a2)
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
    v21 = 154;
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
      v21 = 154;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C4458(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C46F0(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C44A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C46F0(v1);

  return std::ios::~ios();
}

void sub_1000C4504(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C46F0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C45A8(_BYTE *a1, int a2)
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

void sub_1000C4614(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C46F0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C4678(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C46F0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C46F0(uint64_t a1)
{
  *a1 = off_100217790;
  sub_1000C485C(a1);
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

uint64_t sub_1000C485C(uint64_t a1)
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
        sub_1000C4A0C((a1 + 72), __p);
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

void sub_1000C49A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C49D4(uint64_t a1)
{
  sub_1000C46F0(a1);

  operator delete();
}

int *sub_1000C4A0C(uint64_t *a1, uint64_t *a2)
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
    v21 = 165;
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
      v21 = 165;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C4BF0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C4E88(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C4C3C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C4E88(v1);

  return std::ios::~ios();
}

void sub_1000C4C9C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C4E88(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C4D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C4D40(_BYTE *a1, int a2)
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

void sub_1000C4DAC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C4E88(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C4E10(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C4E88(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C4E88(uint64_t a1)
{
  *a1 = off_1002179B0;
  sub_1000C4FF4(a1);
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

uint64_t sub_1000C4FF4(uint64_t a1)
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
        sub_1000C51A4((a1 + 72), __p);
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

void sub_1000C5140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C516C(uint64_t a1)
{
  sub_1000C4E88(a1);

  operator delete();
}

int *sub_1000C51A4(uint64_t *a1, uint64_t *a2)
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
    v21 = 190;
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
      v21 = 190;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C5388(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C5620(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C53D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C5620(v1);

  return std::ios::~ios();
}

void sub_1000C5434(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C5620(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C549C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C54D8(_BYTE *a1, int a2)
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

void sub_1000C5544(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C5620(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C55A8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C5620(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C5620(uint64_t a1)
{
  *a1 = off_100217BD0;
  sub_1000C578C(a1);
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

uint64_t sub_1000C578C(uint64_t a1)
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
        sub_1000C593C((a1 + 72), __p);
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

void sub_1000C58D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C5904(uint64_t a1)
{
  sub_1000C5620(a1);

  operator delete();
}

int *sub_1000C593C(uint64_t *a1, uint64_t *a2)
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
    v21 = 194;
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
      v21 = 194;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C5B20(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v25 = *(a2 - 2);
        v26 = *v9;
        v27 = -1;
        if (v25 >= *v9)
        {
          v27 = 1;
        }

        if (v25 == *v9)
        {
          v28 = *(a2 - 1);
          v29 = v9[1];
          v30 = v28 >= v29;
          v31 = v28 == v29;
          v27 = -1;
          if (v30)
          {
            v27 = 1;
          }

          if (v31)
          {
            v27 = 0;
          }
        }

        if (v27 < 0)
        {
          v32 = v9[1];
          v33 = *(a2 - 1);
          *v9 = v25;
          v9[1] = v33;
          *(a2 - 2) = v26;
          *(a2 - 1) = v32;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = sub_1000C5FAC(v9, v9 + 2, v9 + 4);
      v34 = *(a2 - 2);
      v35 = v9[4];
      v36 = -1;
      if (v34 >= v35)
      {
        v36 = 1;
      }

      if (v34 == v35)
      {
        v37 = *(a2 - 1);
        v38 = v9[5];
        v30 = v37 >= v38;
        v39 = v37 == v38;
        v36 = -1;
        if (v30)
        {
          v36 = 1;
        }

        if (v39)
        {
          v36 = 0;
        }
      }

      if (v36 < 0)
      {
        v9[4] = v34;
        *(a2 - 2) = v35;
        v40 = v9[4];
        v41 = v9[5];
        v9[5] = *(a2 - 1);
        *(a2 - 1) = v41;
        v42 = v9[2];
        v43 = -1;
        if (v40 >= v42)
        {
          v43 = 1;
        }

        if (v40 == v42)
        {
          v44 = v9[5];
          v45 = v9[3];
          v30 = v44 >= v45;
          v46 = v44 == v45;
          v43 = -1;
          if (v30)
          {
            v43 = 1;
          }

          if (v46)
          {
            v43 = 0;
          }
        }

        if (v43 < 0)
        {
          v47 = v9[3];
          v48 = v9[5];
          v9[2] = v40;
          v9[3] = v48;
          v9[4] = v42;
          v9[5] = v47;
          v49 = *v9;
          v50 = -1;
          if (v40 >= *v9)
          {
            v50 = 1;
          }

          if (v40 == *v9)
          {
            v51 = v9[1];
            v30 = v48 >= v51;
            v52 = v48 == v51;
            v50 = -1;
            if (v30)
            {
              v50 = 1;
            }

            if (v52)
            {
              v50 = 0;
            }
          }

          if (v50 < 0)
          {
            v53 = v9[1];
            *v9 = v40;
            v9[1] = v48;
            v9[2] = v49;
            v9[3] = v53;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return sub_1000C60FC(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_1000C6334(v9, a2);
      }

      else
      {

        return sub_1000C63F4(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_1000C6A30(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_1000C5FAC(&v9[2 * (v12 >> 1)], v9, a2 - 2);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1000C5FAC(v9, &v9[2 * (v12 >> 1)], a2 - 2);
      sub_1000C5FAC(v9 + 2, v14 - 2, a2 - 4);
      sub_1000C5FAC(v9 + 4, &v9[2 * v13 + 2], a2 - 6);
      sub_1000C5FAC(v14 - 2, v14, &v9[2 * v13 + 2]);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_28;
      }
    }

    v16 = *(v9 - 2);
    v17 = v16 == *v9;
    if (v16 >= *v9)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = *(v9 - 1);
      v20 = v9[1];
      v21 = v19 == v20;
      v18 = v19 >= v20 ? 1 : -1;
      if (v21)
      {
        v18 = 0;
      }
    }

    if ((v18 & 0x80) == 0)
    {
      result = sub_1000C6494(v9, a2);
      v9 = result;
      goto LABEL_33;
    }

LABEL_28:
    v22 = sub_1000C661C(v9, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_31;
    }

    v24 = sub_1000C6784(v9, v22);
    v9 = v22 + 2;
    result = sub_1000C6784(v22 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_31:
      result = sub_1000C5B20(v8, v22, a3, -v11, a5 & 1);
      v9 = v22 + 2;
LABEL_33:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return sub_1000C5FAC(v9, v9 + 2, a2 - 2);
}

uint64_t sub_1000C5FAC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (*a2 == *a1)
  {
    v6 = a2[1];
    v7 = a1[1];
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (*a3 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v18 = a3[1];
      v19 = a2[1];
      v8 = v18 >= v19;
      v20 = v18 == v19;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v20)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      v36 = a1[1];
      v37 = a3[1];
      *a1 = v11;
      a1[1] = v37;
      *a3 = v4;
      a3[1] = v36;
    }

    else
    {
      v21 = a1[1];
      v22 = a2[1];
      *a1 = v3;
      a1[1] = v22;
      *a2 = v4;
      a2[1] = v21;
      v23 = -1;
      if (*a3 >= v4)
      {
        v23 = 1;
      }

      if (*a3 == v4)
      {
        v24 = a3[1];
        v8 = v24 >= v21;
        v25 = v24 == v21;
        v23 = -1;
        if (v8)
        {
          v23 = 1;
        }

        if (v25)
        {
          v23 = 0;
        }
      }

      if (v23 < 0)
      {
        v26 = a3[1];
        *a2 = *a3;
        a2[1] = v26;
        *a3 = v4;
        a3[1] = v21;
      }
    }
  }

  else
  {
    if (v11 == v3)
    {
      v13 = a3[1];
      v14 = a2[1];
      v8 = v13 >= v14;
      v15 = v13 == v14;
      v16 = -1;
      if (v8)
      {
        v16 = 1;
      }

      if (v15)
      {
        v12 = 0;
      }

      else
      {
        v12 = v16;
      }
    }

    if ((v12 & 0x80) == 0)
    {
      return 0;
    }

    *a2 = v11;
    *a3 = v3;
    v27 = *a2;
    v28 = a2[1];
    a2[1] = a3[1];
    a3[1] = v28;
    v29 = *a1;
    v30 = -1;
    if (v27 >= *a1)
    {
      v30 = 1;
    }

    if (v27 == *a1)
    {
      v31 = a2[1];
      v32 = a1[1];
      v8 = v31 >= v32;
      v33 = v31 == v32;
      v30 = -1;
      if (v8)
      {
        v30 = 1;
      }

      if (v33)
      {
        v30 = 0;
      }
    }

    if (v30 < 0)
    {
      v34 = a1[1];
      v35 = a2[1];
      *a1 = v27;
      a1[1] = v35;
      *a2 = v29;
      a2[1] = v34;
    }
  }

  return 1;
}

uint64_t sub_1000C60FC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_1000C5FAC(a1, a2, a3);
  v11 = *a3;
  v12 = -1;
  if (*a4 >= *a3)
  {
    v12 = 1;
  }

  if (*a4 == *a3)
  {
    v13 = a4[1];
    v14 = a3[1];
    v15 = v13 >= v14;
    v16 = v13 == v14;
    v12 = -1;
    if (v15)
    {
      v12 = 1;
    }

    if (v16)
    {
      v12 = 0;
    }
  }

  if (v12 < 0)
  {
    *a3 = *a4;
    *a4 = v11;
    v17 = *a3;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a2;
    v20 = -1;
    if (v17 >= *a2)
    {
      v20 = 1;
    }

    if (v17 == *a2)
    {
      v21 = a3[1];
      v22 = a2[1];
      v15 = v21 >= v22;
      v23 = v21 == v22;
      v20 = -1;
      if (v15)
      {
        v20 = 1;
      }

      if (v23)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      *a2 = v17;
      *a3 = v19;
      v24 = *a2;
      v25 = a2[1];
      a2[1] = a3[1];
      a3[1] = v25;
      v26 = *a1;
      v27 = -1;
      if (v24 >= *a1)
      {
        v27 = 1;
      }

      if (v24 == *a1)
      {
        v28 = a2[1];
        v29 = a1[1];
        v15 = v28 >= v29;
        v30 = v28 == v29;
        v27 = -1;
        if (v15)
        {
          v27 = 1;
        }

        if (v30)
        {
          v27 = 0;
        }
      }

      if (v27 < 0)
      {
        v31 = a1[1];
        v32 = a2[1];
        *a1 = v24;
        a1[1] = v32;
        *a2 = v26;
        a2[1] = v31;
      }
    }
  }

  v33 = *a4;
  v34 = -1;
  if (*a5 >= *a4)
  {
    v34 = 1;
  }

  if (*a5 == *a4)
  {
    v35 = a5[1];
    v36 = a4[1];
    v15 = v35 >= v36;
    v37 = v35 == v36;
    v34 = -1;
    if (v15)
    {
      v34 = 1;
    }

    if (v37)
    {
      v34 = 0;
    }
  }

  if (v34 < 0)
  {
    *a4 = *a5;
    *a5 = v33;
    v38 = *a4;
    v39 = a4[1];
    a4[1] = a5[1];
    a5[1] = v39;
    v40 = *a3;
    v41 = -1;
    if (v38 >= *a3)
    {
      v41 = 1;
    }

    if (v38 == *a3)
    {
      v42 = a4[1];
      v43 = a3[1];
      v15 = v42 >= v43;
      v44 = v42 == v43;
      v41 = -1;
      if (v15)
      {
        v41 = 1;
      }

      if (v44)
      {
        v41 = 0;
      }
    }

    if (v41 < 0)
    {
      *a3 = v38;
      *a4 = v40;
      v45 = *a3;
      v46 = a3[1];
      a3[1] = a4[1];
      a4[1] = v46;
      v47 = *a2;
      v48 = -1;
      if (v45 >= *a2)
      {
        v48 = 1;
      }

      if (v45 == *a2)
      {
        v49 = a3[1];
        v50 = a2[1];
        v15 = v49 >= v50;
        v51 = v49 == v50;
        v48 = -1;
        if (v15)
        {
          v48 = 1;
        }

        if (v51)
        {
          v48 = 0;
        }
      }

      if (v48 < 0)
      {
        *a2 = v45;
        *a3 = v47;
        v52 = *a2;
        v53 = a2[1];
        a2[1] = a3[1];
        a3[1] = v53;
        v54 = *a1;
        v55 = -1;
        if (v52 >= *a1)
        {
          v55 = 1;
        }

        if (v52 == *a1)
        {
          v56 = a2[1];
          v57 = a1[1];
          v15 = v56 >= v57;
          v58 = v56 == v57;
          v55 = -1;
          if (v15)
          {
            v55 = 1;
          }

          if (v58)
          {
            v55 = 0;
          }
        }

        if (v55 < 0)
        {
          v59 = a1[1];
          v60 = a2[1];
          *a1 = v52;
          a1[1] = v60;
          *a2 = v54;
          a2[1] = v59;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_1000C6334(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        v7 = *v4;
        if (v6 >= *v4)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (v6 == *v4)
        {
          v9 = v4[3];
          v10 = v4[1];
          v11 = v9 == v10;
          v8 = v9 >= v10 ? 1 : -1;
          if (v11)
          {
            v8 = 0;
          }
        }

        if (v8 < 0)
        {
          v12 = v4[3];
          v13 = v3;
          while (1)
          {
            v14 = result + v13;
            v15 = *(result + v13 + 8);
            *(v14 + 2) = v7;
            *(v14 + 3) = v15;
            if (!v13)
            {
              break;
            }

            v7 = *(v14 - 2);
            if (v6 >= v7)
            {
              v16 = 1;
            }

            else
            {
              v16 = -1;
            }

            if (v6 == v7)
            {
              v17 = *(result + v13 - 8);
              v18 = v12 == v17;
              if (v12 >= v17)
              {
                v16 = 1;
              }

              else
              {
                v16 = -1;
              }

              if (v18)
              {
                v16 = 0;
              }
            }

            v13 -= 16;
            if ((v16 & 0x80) == 0)
            {
              v19 = (result + v13 + 16);
              goto LABEL_28;
            }
          }

          v19 = result;
LABEL_28:
          *v19 = v6;
          v19[1] = v12;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t *sub_1000C63F4(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = (result + 3);
      do
      {
        v4 = v2;
        v5 = result[2];
        v6 = *result;
        if (v5 >= *result)
        {
          v7 = 1;
        }

        else
        {
          v7 = -1;
        }

        if (v5 == *result)
        {
          v8 = result[3];
          v9 = result[1];
          v10 = v8 == v9;
          v7 = v8 >= v9 ? 1 : -1;
          if (v10)
          {
            v7 = 0;
          }
        }

        if (v7 < 0)
        {
          v11 = result[3];
          v12 = v3;
          do
          {
            v13 = *(v12 - 2);
            *(v12 - 1) = v6;
            *v12 = v13;
            v6 = *(v12 - 5);
            if (v5 >= v6)
            {
              v14 = 1;
            }

            else
            {
              v14 = -1;
            }

            if (v5 == v6)
            {
              v15 = *(v12 - 4);
              v16 = v11 == v15;
              if (v11 >= v15)
              {
                v14 = 1;
              }

              else
              {
                v14 = -1;
              }

              if (v16)
              {
                v14 = 0;
              }
            }

            v12 -= 2;
          }

          while (v14 < 0);
          *(v12 - 1) = v5;
          *v12 = v11;
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

void *sub_1000C6494(void *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  v5 = *a1 == v4;
  if (*a1 >= v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = *(a2 - 1);
    v8 = v3 >= v7;
    v9 = v3 == v7;
    v6 = -1;
    if (v8)
    {
      v6 = 1;
    }

    if (v9)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    v15 = a1;
    v11 = a1;
    do
    {
      v16 = v11[2];
      v11 += 2;
      v17 = v2 == v16;
      if (v2 >= v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = v15[3];
        v20 = v3 == v19;
        if (v3 >= v19)
        {
          v21 = 1;
        }

        else
        {
          v21 = -1;
        }

        if (v20)
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }
      }

      v15 = v11;
    }

    while ((v18 & 0x80) == 0);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v11 = v10;
      if (v10 >= a2)
      {
        break;
      }

      if (v2 >= *v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (v2 == *v10)
      {
        v13 = v10[1];
        v14 = v3 == v13;
        v12 = v3 >= v13 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v10 += 2;
    }

    while ((v12 & 0x80) == 0);
  }

  if (v11 >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a2;
    do
    {
      v23 = *(v22 - 2);
      v22 -= 2;
      v24 = v2 == v23;
      if (v2 >= v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      if (v24)
      {
        v26 = *(a2 - 1);
        v27 = v3 == v26;
        v25 = v3 >= v26 ? 1 : -1;
        if (v27)
        {
          v25 = 0;
        }
      }

      a2 = v22;
    }

    while (v25 < 0);
  }

  if (v11 < v22)
  {
    v28 = *v11;
    v29 = *v22;
    do
    {
      v30 = v11[1];
      v31 = v22[1];
      *v11 = v29;
      v11[1] = v31;
      *v22 = v28;
      v22[1] = v30;
      v32 = v11;
      do
      {
        v33 = v11[2];
        v11 += 2;
        v28 = v33;
        v34 = v2 == v33;
        if (v2 >= v33)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        if (v34)
        {
          v36 = v32[3];
          v37 = v3 == v36;
          v35 = v3 >= v36 ? 1 : -1;
          if (v37)
          {
            v35 = 0;
          }
        }

        v32 = v11;
      }

      while ((v35 & 0x80) == 0);
      v38 = v22;
      do
      {
        v39 = *(v22 - 2);
        v22 -= 2;
        v29 = v39;
        v40 = v2 == v39;
        if (v2 >= v39)
        {
          v41 = 1;
        }

        else
        {
          v41 = -1;
        }

        if (v40)
        {
          v42 = *(v38 - 1);
          v43 = v3 == v42;
          v41 = v3 >= v42 ? 1 : -1;
          if (v43)
          {
            v41 = 0;
          }
        }

        v38 = v22;
      }

      while (v41 < 0);
    }

    while (v11 < v22);
  }

  if (v11 - 2 != a1)
  {
    *a1 = *(v11 - 1);
  }

  *(v11 - 2) = v2;
  *(v11 - 1) = v3;
  return v11;
}

uint64_t *sub_1000C661C(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if (v5 == v3)
    {
      v7 = a1[v2 + 3];
      v8 = v7 == v4;
      v6 = v7 >= v4 ? 1 : -1;
      if (v8)
      {
        v6 = 0;
      }
    }

    v2 += 2;
  }

  while (v6 < 0);
  v9 = &a1[v2];
  if (v2 == 2)
  {
    while (v9 < a2)
    {
      v10 = a2 - 2;
      v16 = *(a2 - 2);
      v17 = v16 == v3;
      if (v16 >= v3)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = *(a2 - 1);
        v20 = v19 == v4;
        v18 = v19 >= v4 ? 1 : -1;
        if (v20)
        {
          v18 = 0;
        }
      }

      a2 -= 2;
      if (v18 < 0)
      {
        goto LABEL_39;
      }
    }

    v10 = a2;
  }

  else
  {
    v10 = a2;
    do
    {
      v11 = *(v10 - 2);
      v10 -= 2;
      v12 = v11 == v3;
      if (v11 >= v3)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v12)
      {
        v14 = *(a2 - 1);
        v15 = v14 == v4;
        v13 = v14 >= v4 ? 1 : -1;
        if (v15)
        {
          v13 = 0;
        }
      }

      a2 = v10;
    }

    while ((v13 & 0x80) == 0);
  }

LABEL_39:
  if (v9 >= v10)
  {
    v22 = v9;
  }

  else
  {
    v21 = *v10;
    v22 = v9;
    v23 = v10;
    do
    {
      v24 = v22[1];
      v25 = v23[1];
      *v22 = v21;
      v22[1] = v25;
      *v23 = v5;
      v23[1] = v24;
      v26 = v22;
      do
      {
        v27 = v22[2];
        v22 += 2;
        v5 = v27;
        v28 = v27 == v3;
        if (v27 >= v3)
        {
          v29 = 1;
        }

        else
        {
          v29 = -1;
        }

        if (v28)
        {
          v30 = v26[3];
          v31 = v30 == v4;
          v29 = v30 >= v4 ? 1 : -1;
          if (v31)
          {
            v29 = 0;
          }
        }

        v26 = v22;
      }

      while (v29 < 0);
      v32 = v23;
      do
      {
        v33 = *(v23 - 2);
        v23 -= 2;
        v21 = v33;
        v34 = v33 == v3;
        if (v33 >= v3)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        if (v34)
        {
          v36 = *(v32 - 1);
          v37 = v36 == v4;
          v35 = v36 >= v4 ? 1 : -1;
          if (v37)
          {
            v35 = 0;
          }
        }

        v32 = v23;
      }

      while ((v35 & 0x80) == 0);
    }

    while (v22 < v23);
  }

  if (v22 - 2 != a1)
  {
    *a1 = *(v22 - 1);
  }

  *(v22 - 2) = v3;
  *(v22 - 1) = v4;
  return v22 - 2;
}

BOOL sub_1000C6784(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_1000C5FAC(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        sub_1000C5FAC(a1, a1 + 2, a1 + 4);
        v32 = *(a2 - 2);
        v33 = a1[4];
        v34 = -1;
        if (v32 >= v33)
        {
          v34 = 1;
        }

        if (v32 == v33)
        {
          v35 = *(a2 - 1);
          v36 = a1[5];
          v10 = v35 >= v36;
          v37 = v35 == v36;
          v34 = -1;
          if (v10)
          {
            v34 = 1;
          }

          if (v37)
          {
            v34 = 0;
          }
        }

        if (v34 < 0)
        {
          a1[4] = v32;
          *(a2 - 2) = v33;
          v38 = a1[4];
          v39 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v39;
          v40 = a1[2];
          v41 = -1;
          if (v38 >= v40)
          {
            v41 = 1;
          }

          if (v38 == v40)
          {
            v42 = a1[5];
            v43 = a1[3];
            v10 = v42 >= v43;
            v44 = v42 == v43;
            v41 = -1;
            if (v10)
            {
              v41 = 1;
            }

            if (v44)
            {
              v41 = 0;
            }
          }

          if (v41 < 0)
          {
            v45 = a1[3];
            v46 = a1[5];
            a1[2] = v38;
            a1[3] = v46;
            a1[4] = v40;
            a1[5] = v45;
            v47 = *a1;
            v48 = -1;
            if (v38 >= *a1)
            {
              v48 = 1;
            }

            if (v38 == *a1)
            {
              v49 = a1[1];
              v10 = v46 >= v49;
              v50 = v46 == v49;
              v48 = -1;
              if (v10)
              {
                v48 = 1;
              }

              if (v50)
              {
                v48 = 0;
              }
            }

            if (v48 < 0)
            {
              v51 = a1[1];
              *a1 = v38;
              a1[1] = v46;
              a1[2] = v47;
              a1[3] = v51;
            }
          }
        }

        return 1;
      case 5:
        sub_1000C60FC(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= *a1)
    {
      v7 = 1;
    }

    if (v5 == *a1)
    {
      v8 = *(a2 - 1);
      v9 = a1[1];
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      v12 = a1[1];
      v13 = *(a2 - 1);
      *a1 = v5;
      a1[1] = v13;
      *(a2 - 2) = v6;
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_19:
  v14 = a1 + 4;
  sub_1000C5FAC(a1, a1 + 2, a1 + 4);
  v15 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *v15;
    v19 = *v14;
    if (*v15 >= *v14)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (*v15 == *v14)
    {
      v21 = v15[1];
      v22 = v14[1];
      v23 = v21 == v22;
      v20 = v21 >= v22 ? 1 : -1;
      if (v23)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      v24 = v15[1];
      v25 = v16;
      while (1)
      {
        v26 = (a1 + v25);
        v27 = *(a1 + v25 + 40);
        v26[6] = v19;
        v26[7] = v27;
        if (v25 == -32)
        {
          break;
        }

        v19 = v26[2];
        if (v18 >= v19)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v18 == v19)
        {
          v29 = *(a1 + v25 + 24);
          v30 = v24 == v29;
          v28 = v24 >= v29 ? 1 : -1;
          if (v30)
          {
            v28 = 0;
          }
        }

        v25 -= 16;
        if ((v28 & 0x80) == 0)
        {
          v31 = (a1 + v25 + 48);
          goto LABEL_45;
        }
      }

      v31 = a1;
LABEL_45:
      *v31 = v18;
      v31[1] = v24;
      if (++v17 == 8)
      {
        return v15 + 2 == a2;
      }
    }

    v14 = v15;
    v16 += 16;
    v15 += 2;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

char *sub_1000C6A30(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        sub_1000C6B98(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*v12 >= *a1)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (*v12 == *a1)
        {
          v15 = *(v12 + 1);
          v16 = *(a1 + 1);
          v17 = v15 == v16;
          v14 = v15 >= v16 ? 1 : -1;
          if (v17)
          {
            v14 = 0;
          }
        }

        if (v14 < 0)
        {
          v18 = *(v12 + 1);
          v19 = *(a1 + 1);
          *v12 = *a1;
          *(v12 + 1) = v19;
          *a1 = v13;
          *(a1 + 1) = v18;
          sub_1000C6B98(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v20 = a2 - 16;
      do
      {
        v22 = *a1;
        v21 = *(a1 + 1);
        v23 = sub_1000C6CE4(a1, a4, v8);
        if (v20 == v23)
        {
          *v23 = v22;
          *(v23 + 1) = v21;
        }

        else
        {
          *v23 = *v20;
          *v20 = v22;
          *(v20 + 1) = v21;
          sub_1000C6D74(a1, (v23 + 16), a4, (v23 + 16 - a1) >> 4);
        }

        v20 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1000C6B98(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        v11 = *v8 == v10;
        if (*v8 >= v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if (v11)
        {
          v13 = v8[1];
          v14 = v8[3];
          v15 = v13 >= v14;
          v16 = v13 == v14;
          v12 = -1;
          if (v15)
          {
            v12 = 1;
          }

          if (v16)
          {
            v12 = 0;
          }
        }

        if (v12 < 0)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v17 = *v8;
      v18 = *a4;
      v19 = -1;
      if (*v8 >= *a4)
      {
        v19 = 1;
      }

      if (*v8 == *a4)
      {
        v20 = v8[1];
        v21 = a4[1];
        v15 = v20 >= v21;
        v22 = v20 == v21;
        v19 = -1;
        if (v15)
        {
          v19 = 1;
        }

        if (v22)
        {
          v19 = 0;
        }
      }

      if ((v19 & 0x80) == 0)
      {
        v23 = a4[1];
        do
        {
          v24 = a4;
          a4 = v8;
          v25 = v8[1];
          *v24 = v17;
          v24[1] = v25;
          if (v5 < v7)
          {
            break;
          }

          v26 = (2 * v7) | 1;
          v8 = (result + 16 * v26);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v26;
          }

          else
          {
            v27 = v8[2];
            v28 = *v8 == v27;
            if (*v8 >= v27)
            {
              v29 = 1;
            }

            else
            {
              v29 = -1;
            }

            if (v28)
            {
              v30 = v8[1];
              v31 = v8[3];
              v32 = v30 == v31;
              v29 = v30 >= v31 ? 1 : -1;
              if (v32)
              {
                v29 = 0;
              }
            }

            if (v29 < 0)
            {
              v8 += 2;
            }

            else
            {
              v7 = v26;
            }
          }

          v17 = *v8;
          if (*v8 >= v18)
          {
            v33 = 1;
          }

          else
          {
            v33 = -1;
          }

          if (*v8 == v18)
          {
            v34 = v8[1];
            v35 = v34 == v23;
            if (v34 >= v23)
            {
              v33 = 1;
            }

            else
            {
              v33 = -1;
            }

            if (v35)
            {
              v33 = 0;
            }
          }
        }

        while ((v33 & 0x80) == 0);
        *a4 = v18;
        a4[1] = v23;
      }
    }
  }

  return result;
}

_OWORD *sub_1000C6CE4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = v4 + 4;
      v8 = v4[4];
      v9 = v4[2];
      v10 = v9 == v8;
      if (v9 >= v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = v4[3];
        v13 = v4[5];
        v14 = v12 == v13;
        if (v12 >= v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v14)
        {
          v11 = 0;
        }

        else
        {
          v11 = v15;
        }
      }

      if (v11 < 0)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_1000C6D74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 16 * v4);
    v6 = (a2 - 16);
    v7 = *(a2 - 16);
    v8 = *v5;
    v9 = -1;
    if (*v5 >= v7)
    {
      v9 = 1;
    }

    if (*v5 == v7)
    {
      v10 = v5[1];
      v11 = *(a2 - 8);
      v12 = v10 >= v11;
      v13 = v10 == v11;
      v9 = -1;
      if (v12)
      {
        v9 = 1;
      }

      if (v13)
      {
        v9 = 0;
      }
    }

    if (v9 < 0)
    {
      v14 = *(a2 - 8);
      do
      {
        v15 = v6;
        v6 = v5;
        v16 = v5[1];
        *v15 = v8;
        v15[1] = v16;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 16 * v4);
        v8 = *v5;
        if (*v5 >= v7)
        {
          v17 = 1;
        }

        else
        {
          v17 = -1;
        }

        if (*v5 == v7)
        {
          v18 = v5[1];
          v19 = v18 == v14;
          if (v18 >= v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = -1;
          }

          if (v19)
          {
            v17 = 0;
          }
        }
      }

      while (v17 < 0);
      *v6 = v7;
      v6[1] = v14;
    }
  }

  return result;
}

uint64_t sub_1000C6E10(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C70A8(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C6E5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C70A8(v1);

  return std::ios::~ios();
}

void sub_1000C6EBC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C70A8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C6F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C6F60(_BYTE *a1, int a2)
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

void sub_1000C6FCC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C70A8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C7030(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C70A8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C70A8(uint64_t a1)
{
  *a1 = off_100217DF0;
  sub_1000C7214(a1);
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

uint64_t sub_1000C7214(uint64_t a1)
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
        sub_1000C73C4((a1 + 72), __p);
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

void sub_1000C7360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C738C(uint64_t a1)
{
  sub_1000C70A8(a1);

  operator delete();
}

int *sub_1000C73C4(uint64_t *a1, uint64_t *a2)
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
    v21 = 218;
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
      v21 = 218;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C75A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C7840(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C75F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C7840(v1);

  return std::ios::~ios();
}

void sub_1000C7654(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C7840(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C76BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C76F8(_BYTE *a1, int a2)
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

void sub_1000C7764(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C7840(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C77C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C7840(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C7840(uint64_t a1)
{
  *a1 = off_100218010;
  sub_1000C79AC(a1);
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

uint64_t sub_1000C79AC(uint64_t a1)
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
        sub_1000C7B5C((a1 + 72), __p);
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

void sub_1000C7AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C7B24(uint64_t a1)
{
  sub_1000C7840(a1);

  operator delete();
}

int *sub_1000C7B5C(uint64_t *a1, uint64_t *a2)
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
    v21 = 222;
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
      v21 = 222;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C7D40(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C7FD8(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C7D8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C7FD8(v1);

  return std::ios::~ios();
}

void sub_1000C7DEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C7FD8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C7E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C7E90(_BYTE *a1, int a2)
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

void sub_1000C7EFC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C7FD8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C7F60(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C7FD8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C7FD8(uint64_t a1)
{
  *a1 = off_100218230;
  sub_1000C8144(a1);
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

uint64_t sub_1000C8144(uint64_t a1)
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
        sub_1000C82F4((a1 + 72), __p);
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

void sub_1000C8290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C82BC(uint64_t a1)
{
  sub_1000C7FD8(a1);

  operator delete();
}

int *sub_1000C82F4(uint64_t *a1, uint64_t *a2)
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
    v21 = 231;
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
      v21 = 231;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C84D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C8770(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C8524(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C8770(v1);

  return std::ios::~ios();
}

void sub_1000C8584(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C8770(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C85EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C8628(_BYTE *a1, int a2)
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

void sub_1000C8694(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C8770(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C86F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C8770(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C8770(uint64_t a1)
{
  *a1 = off_100218450;
  sub_1000C88DC(a1);
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

uint64_t sub_1000C88DC(uint64_t a1)
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
        sub_1000C8A8C((a1 + 72), __p);
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

void sub_1000C8A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C8A54(uint64_t a1)
{
  sub_1000C8770(a1);

  operator delete();
}

int *sub_1000C8A8C(uint64_t *a1, uint64_t *a2)
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
    v21 = 235;
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
      v21 = 235;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C8C70(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C8F08(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C8CBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C8F08(v1);

  return std::ios::~ios();
}

void sub_1000C8D1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C8F08(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C8D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C8DC0(_BYTE *a1, int a2)
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

void sub_1000C8E2C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C8F08(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C8E90(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C8F08(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C8F08(uint64_t a1)
{
  *a1 = off_100218670;
  sub_1000C9074(a1);
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

uint64_t sub_1000C9074(uint64_t a1)
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
        sub_1000C9224((a1 + 72), __p);
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

void sub_1000C91C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C91EC(uint64_t a1)
{
  sub_1000C8F08(a1);

  operator delete();
}

int *sub_1000C9224(uint64_t *a1, uint64_t *a2)
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
    v21 = 237;
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
      v21 = 237;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C9408(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C96A0(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C9454(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C96A0(v1);

  return std::ios::~ios();
}

void sub_1000C94B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C96A0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C9558(_BYTE *a1, int a2)
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

void sub_1000C95C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C96A0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C9628(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C96A0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C96A0(uint64_t a1)
{
  *a1 = off_100218890;
  sub_1000C980C(a1);
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

uint64_t sub_1000C980C(uint64_t a1)
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
        sub_1000C99BC((a1 + 72), __p);
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

void sub_1000C9958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C9984(uint64_t a1)
{
  sub_1000C96A0(a1);

  operator delete();
}

int *sub_1000C99BC(uint64_t *a1, uint64_t *a2)
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
    v21 = 284;
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
      v21 = 284;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000C9BA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C9E38(v1);

  return std::ios::~ios();
}

uint64_t sub_1000C9BEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C9E38(v1);

  return std::ios::~ios();
}

void sub_1000C9C4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000C9E38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C9CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000C9CF0(_BYTE *a1, int a2)
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

void sub_1000C9D5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000C9E38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000C9DC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000C9E38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C9E38(uint64_t a1)
{
  *a1 = off_100218AB0;
  sub_1000C9FA4(a1);
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

uint64_t sub_1000C9FA4(uint64_t a1)
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
        sub_1000CA154((a1 + 72), __p);
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

void sub_1000CA0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CA11C(uint64_t a1)
{
  sub_1000C9E38(a1);

  operator delete();
}

int *sub_1000CA154(uint64_t *a1, uint64_t *a2)
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
    v21 = 295;
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
      v21 = 295;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000CA338(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000CA4A4(a1, a2);
  *a1 = off_100218B38;
  a1[45] = &off_100218C38;
  a1[46] = &off_100218C60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100218B38;
  a1[45] = off_100218BC0;
  a1[46] = off_100218BE8;
  return a1;
}

void sub_1000CA43C(_Unwind_Exception *a1)
{
  sub_1000CA56C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA460(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CA56C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000CA4A4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100218CD0;
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

void sub_1000CA554(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA56C(uint64_t a1)
{
  *a1 = off_100218CD0;
  sub_1000CA9AC(a1);
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

void sub_1000CA6D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CA56C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CA740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CA77C(_BYTE *a1, int a2)
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

uint64_t sub_1000CA7E8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CA56C(v1);

  return std::ios::~ios();
}

void sub_1000CA834(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CA56C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CA898(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CA56C(v1);

  return std::ios::~ios();
}

void sub_1000CA8F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CA56C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CA974(uint64_t a1)
{
  sub_1000CA56C(a1);

  operator delete();
}

uint64_t sub_1000CA9AC(uint64_t a1)
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
        sub_1000CAB20((a1 + 72), __p);
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

void sub_1000CAAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000CAB20(uint64_t *a1, uint64_t *a2)
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
    v21 = 246;
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
      v21 = 246;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CAD04(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CAF9C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CAD50(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CAF9C(v1);

  return std::ios::~ios();
}

void sub_1000CADB0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CAF9C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CAE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CAE54(_BYTE *a1, int a2)
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

void sub_1000CAEC0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CAF9C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CAF24(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CAF9C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CAF9C(uint64_t a1)
{
  *a1 = off_100218EF0;
  sub_1000CB108(a1);
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

uint64_t sub_1000CB108(uint64_t a1)
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
        sub_1000CB2B8((a1 + 72), __p);
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

void sub_1000CB254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CB280(uint64_t a1)
{
  sub_1000CAF9C(a1);

  operator delete();
}

int *sub_1000CB2B8(uint64_t *a1, uint64_t *a2)
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
    v21 = 387;
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
      v21 = 387;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CB49C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CB734(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CB4E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CB734(v1);

  return std::ios::~ios();
}

void sub_1000CB548(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CB734(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CB5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CB5EC(_BYTE *a1, int a2)
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

void sub_1000CB658(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CB734(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CB6BC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CB734(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CB734(uint64_t a1)
{
  *a1 = off_100219110;
  sub_1000CB8A0(a1);
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

uint64_t sub_1000CB8A0(uint64_t a1)
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
        sub_1000CBA50((a1 + 72), __p);
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

void sub_1000CB9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CBA18(uint64_t a1)
{
  sub_1000CB734(a1);

  operator delete();
}

int *sub_1000CBA50(uint64_t *a1, uint64_t *a2)
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
    v21 = 390;
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
      v21 = 390;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CBC34(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100233158;
  *(a1 + 8) = *(a2 + 8);
  sub_1000CBCA8(a1 + 24, (a2 + 24));
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_1000CBCA8(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1000CBCF8(a1, a2);
  return a1;
}

void sub_1000CBCD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1001A3928(v1);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_1000CBCF8(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = __dst;
    if (*(a2 + 23) < 0)
    {
      __dst = sub_1000093B4(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v3;
    }

    v2[24] = 1;
  }

  return __dst;
}

uint64_t sub_1000CBD5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CBFF4(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CBDA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CBFF4(v1);

  return std::ios::~ios();
}

void sub_1000CBE08(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CBFF4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CBE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CBEAC(_BYTE *a1, int a2)
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

void sub_1000CBF18(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CBFF4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CBF7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CBFF4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CBFF4(uint64_t a1)
{
  *a1 = off_100219330;
  sub_1000CC160(a1);
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

uint64_t sub_1000CC160(uint64_t a1)
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
        sub_1000CC310((a1 + 72), __p);
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

void sub_1000CC2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CC2D8(uint64_t a1)
{
  sub_1000CBFF4(a1);

  operator delete();
}

int *sub_1000CC310(uint64_t *a1, uint64_t *a2)
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
    v21 = 434;
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
      v21 = 434;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CC4F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CC78C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CC540(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CC78C(v1);

  return std::ios::~ios();
}

void sub_1000CC5A0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CC78C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CC608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CC644(_BYTE *a1, int a2)
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

void sub_1000CC6B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CC78C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CC714(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CC78C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CC78C(uint64_t a1)
{
  *a1 = off_100219550;
  sub_1000CC8F8(a1);
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

uint64_t sub_1000CC8F8(uint64_t a1)
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
        sub_1000CCAA8((a1 + 72), __p);
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

void sub_1000CCA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CCA70(uint64_t a1)
{
  sub_1000CC78C(a1);

  operator delete();
}

int *sub_1000CCAA8(uint64_t *a1, uint64_t *a2)
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
    v21 = 443;
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
      v21 = 443;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CCC8C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CCF24(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CCCD8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CCF24(v1);

  return std::ios::~ios();
}

void sub_1000CCD38(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CCF24(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CCDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CCDDC(_BYTE *a1, int a2)
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

void sub_1000CCE48(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CCF24(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CCEAC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CCF24(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CCF24(uint64_t a1)
{
  *a1 = off_100219770;
  sub_1000CD090(a1);
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

uint64_t sub_1000CD090(uint64_t a1)
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
        sub_1000CD240((a1 + 72), __p);
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

void sub_1000CD1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CD208(uint64_t a1)
{
  sub_1000CCF24(a1);

  operator delete();
}

int *sub_1000CD240(uint64_t *a1, uint64_t *a2)
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
    v21 = 460;
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
      v21 = 460;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CD424(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CD6BC(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CD470(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CD6BC(v1);

  return std::ios::~ios();
}

void sub_1000CD4D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CD6BC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CD538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CD574(_BYTE *a1, int a2)
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

void sub_1000CD5E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CD6BC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CD644(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CD6BC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CD6BC(uint64_t a1)
{
  *a1 = off_100219990;
  sub_1000CD828(a1);
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

uint64_t sub_1000CD828(uint64_t a1)
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
        sub_1000CD9D8((a1 + 72), __p);
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

void sub_1000CD974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CD9A0(uint64_t a1)
{
  sub_1000CD6BC(a1);

  operator delete();
}

int *sub_1000CD9D8(uint64_t *a1, uint64_t *a2)
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
    v21 = 469;
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
      v21 = 469;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CDBBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CDE54(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CDC08(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CDE54(v1);

  return std::ios::~ios();
}

void sub_1000CDC68(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CDE54(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CDCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CDD0C(_BYTE *a1, int a2)
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

void sub_1000CDD78(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CDE54(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CDDDC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CDE54(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CDE54(uint64_t a1)
{
  *a1 = off_100219BB0;
  sub_1000CDFC0(a1);
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

uint64_t sub_1000CDFC0(uint64_t a1)
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
        sub_1000CE170((a1 + 72), __p);
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

void sub_1000CE10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CE138(uint64_t a1)
{
  sub_1000CDE54(a1);

  operator delete();
}

int *sub_1000CE170(uint64_t *a1, uint64_t *a2)
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
    v21 = 492;
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
      v21 = 492;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CE354(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CE5EC(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CE3A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CE5EC(v1);

  return std::ios::~ios();
}

void sub_1000CE400(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CE5EC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CE468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CE4A4(_BYTE *a1, int a2)
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

void sub_1000CE510(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CE5EC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CE574(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CE5EC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CE5EC(uint64_t a1)
{
  *a1 = off_100219DD0;
  sub_1000CE758(a1);
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

uint64_t sub_1000CE758(uint64_t a1)
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
        sub_1000CE908((a1 + 72), __p);
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

void sub_1000CE8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CE8D0(uint64_t a1)
{
  sub_1000CE5EC(a1);

  operator delete();
}

int *sub_1000CE908(uint64_t *a1, uint64_t *a2)
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
    v21 = 498;
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
      v21 = 498;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CEAEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CED84(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CEB38(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CED84(v1);

  return std::ios::~ios();
}

void sub_1000CEB98(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CED84(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CEC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CEC3C(_BYTE *a1, int a2)
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

void sub_1000CECA8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CED84(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CED0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CED84(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CED84(uint64_t a1)
{
  *a1 = off_100219FF0;
  sub_1000CEEF0(a1);
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

uint64_t sub_1000CEEF0(uint64_t a1)
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
        sub_1000CF0A0((a1 + 72), __p);
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

void sub_1000CF03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CF068(uint64_t a1)
{
  sub_1000CED84(a1);

  operator delete();
}

int *sub_1000CF0A0(uint64_t *a1, uint64_t *a2)
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
    v21 = 505;
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
      v21 = 505;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000CF284(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CF51C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000CF2D0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CF51C(v1);

  return std::ios::~ios();
}

void sub_1000CF330(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000CF51C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CF398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000CF3D4(_BYTE *a1, int a2)
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

void sub_1000CF440(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000CF51C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000CF4A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000CF51C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000CF51C(uint64_t a1)
{
  *a1 = off_10021A210;
  sub_1000CF688(a1);
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