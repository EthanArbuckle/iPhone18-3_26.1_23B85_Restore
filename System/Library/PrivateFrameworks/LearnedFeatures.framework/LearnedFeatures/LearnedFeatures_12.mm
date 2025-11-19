void sub_255B4E9AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B4E9C8(uint64_t a1)
{
  result = sub_255BFBBB8(a1);
  if (result > 875836517)
  {
    if (result > 1111970368)
    {
      if (result == 1111970369 || result == 1278226488 || result == 1380401729)
      {
        return result;
      }
    }

    else if (result == 875836518 || result == 875836534 || result == 1094862674)
    {
      return result;
    }
  }

  else if (result > 843264055)
  {
    if (result == 843264056 || result == 875704422 || result == 875704438)
    {
      return result;
    }
  }

  else if (result == 24 || result == 32 || result == 842285639)
  {
    return result;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 118, "Contains(pf::formats::U8(), ref.Format())", 0x29uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v2 = qword_27F7DD608;
    v3 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (byte_27F7DD638 == 1)
  {
    v2 = qword_27F7DD608;
    v3 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      do
      {
LABEL_25:
        v5 = *v2;
        v4 = *(v2 + 8);
        v2 += 16;
        v5(v4, "Contains(pf::formats::U8(), ref.Format())", 41, &unk_255C2500B, 0);
      }

      while (v2 != v3);
      if (byte_27F7DD630)
      {
        goto LABEL_27;
      }

LABEL_30:
      abort();
    }
  }

LABEL_27:
  v7 = qword_27F7DD620;
  v6 = *algn_27F7DD628;

  return v7(v6, "Contains(pf::formats::U8(), ref.Format())", 41, &unk_255C2500B, 0);
}

void sub_255B4EC30(uint64_t a1, int a2, unint64_t a3)
{
  v43[2] = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v43[0] = &unk_2867C6020;
      if (a3 <= 0x20)
      {
        v3 = 32;
      }

      else
      {
        v3 = a3;
      }

      v4 = v3 << 32;
      if (!HIDWORD(a3))
      {
        v4 = 0x2000000000;
      }

      v37 = &unk_2867C5048;
      if (a3)
      {
        ++v4;
      }

      *v39 = a3;
      *&v39[8] = v4;
      sub_255B0B45C(&v37, v39);
      v37 = &unk_2867C5048;
      operator new();
    case 2:
      v43[0] = &unk_2867C5DA0;
      if (a3 <= 0x10)
      {
        v17 = 16;
      }

      else
      {
        v17 = a3;
      }

      v18 = v17 << 32;
      if (!HIDWORD(a3))
      {
        v18 = 0x1000000000;
      }

      v37 = &unk_2867C4D78;
      if (a3)
      {
        ++v18;
      }

      *v39 = a3;
      *&v39[8] = v18;
      sub_255B10B24(&v37, v39);
      v37 = &unk_2867C4D78;
      operator new();
    case 3:
      v43[0] = &unk_2867C5AE0;
      if (a3 <= 0x10)
      {
        v15 = 16;
      }

      else
      {
        v15 = a3;
      }

      v16 = v15 << 32;
      if (!HIDWORD(a3))
      {
        v16 = 0x1000000000;
      }

      v37 = &unk_2867C4A18;
      if (a3)
      {
        ++v16;
      }

      *v39 = a3;
      *&v39[8] = v16;
      sub_255B13E54(&v37, v39);
      v37 = &unk_2867C4A18;
      operator new();
    case 4:
      v43[0] = &unk_2867C5A60;
      if (a3 <= 8)
      {
        v29 = 8;
      }

      else
      {
        v29 = a3;
      }

      v30 = v29 << 32;
      if (!HIDWORD(a3))
      {
        v30 = 0x800000000;
      }

      v37 = &unk_2867C4988;
      if (a3)
      {
        ++v30;
      }

      *v39 = a3;
      *&v39[8] = v30;
      sub_255B17224(&v37, v39);
      v37 = &unk_2867C4988;
      operator new();
    case 5:
      v38 = &unk_2867C5A00;
      v19 = 2 * (a3 != 0);
      LODWORD(v20) = v19 * a3;
      if ((v19 * a3) <= 0x20)
      {
        LODWORD(v20) = 32;
      }

      v37 = &unk_2867C48F8;
      if (HIDWORD(a3))
      {
        v20 = v20;
      }

      else
      {
        v20 = 32;
      }

      *v39 = 2;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v19 & 0x1FFFFFFFFLL | ((v20 >> 1) << 33);
      *&v39[12] = v43[0];
      v40 = v20;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B0C514(&v37, v39);
      v37 = &unk_2867C48F8;
      operator new();
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 30:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, &unk_255C2500B, 0, "The buffer does not support the given format", 0x2CuLL, sub_255C101E0);
      abort();
    case 7:
      v38 = &unk_2867C5980;
      v31 = 2 * (a3 != 0);
      LODWORD(v32) = v31 * a3;
      if ((v31 * a3) <= 0x10)
      {
        LODWORD(v32) = 16;
      }

      v37 = &unk_2867C4868;
      if (HIDWORD(a3))
      {
        v32 = v32;
      }

      else
      {
        v32 = 16;
      }

      *v39 = 2;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v31 & 0x1FFFFFFFFLL | ((v32 >> 1) << 33);
      *&v39[12] = v43[0];
      v40 = v32;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B15018(&v37, v39);
      v37 = &unk_2867C4868;
      operator new();
    case 8:
      v38 = &unk_2867C5920;
      v23 = 2 * (a3 != 0);
      LODWORD(v24) = v23 * a3;
      if ((v23 * a3) <= 8)
      {
        LODWORD(v24) = 8;
      }

      v37 = &unk_2867C47D8;
      if (HIDWORD(a3))
      {
        v24 = v24;
      }

      else
      {
        v24 = 8;
      }

      *v39 = 2;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v23 & 0x1FFFFFFFFLL | ((v24 >> 1) << 33);
      *&v39[12] = v43[0];
      v40 = v24;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B183E8(&v37, v39);
      v37 = &unk_2867C47D8;
      operator new();
    case 17:
      v38 = &unk_2867C60C0;
      if (a3)
      {
        v21 = 3;
      }

      else
      {
        v21 = 0;
      }

      LODWORD(v22) = v21 * a3;
      if ((v21 * a3) <= 0x20)
      {
        LODWORD(v22) = 32;
      }

      v37 = &unk_2867C50D8;
      if (HIDWORD(a3))
      {
        v22 = v22;
      }

      else
      {
        v22 = 32;
      }

      *v39 = 3;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v21 | (v22 << 32);
      *&v39[12] = v43[0];
      v40 = v22;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B0D4F4(&v37, 17, v39);
      v37 = &unk_2867C50D8;
      operator new();
    case 21:
      v38 = &unk_2867C5FA0;
      if (a3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      LODWORD(v12) = v11 * a3;
      if ((v11 * a3) <= 0x20)
      {
        LODWORD(v12) = 32;
      }

      v37 = &unk_2867C4FB8;
      if (HIDWORD(a3))
      {
        v12 = v12;
      }

      else
      {
        v12 = 32;
      }

      *v39 = 3;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v11 | (v12 << 32);
      *&v39[12] = v43[0];
      v40 = v12;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B0D4F4(&v37, 21, v39);
      v37 = &unk_2867C4FB8;
      operator new();
    case 22:
      v38 = &unk_2867C5F40;
      if (a3)
      {
        v33 = 3;
      }

      else
      {
        v33 = 0;
      }

      LODWORD(v34) = v33 * a3;
      if ((v33 * a3) <= 0x10)
      {
        LODWORD(v34) = 16;
      }

      v37 = &unk_2867C4F28;
      if (HIDWORD(a3))
      {
        v34 = v34;
      }

      else
      {
        v34 = 16;
      }

      *v39 = 3;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v33 | (v34 << 32);
      *&v39[12] = v43[0];
      v40 = v34;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B11CD8(&v37, v39);
      v37 = &unk_2867C4F28;
      operator new();
    case 25:
      v38 = &unk_2867C5EA0;
      v5 = 4 * (a3 != 0);
      LODWORD(v6) = v5 * a3;
      if ((v5 * a3) <= 0x20)
      {
        LODWORD(v6) = 32;
      }

      v37 = &unk_2867C4E98;
      if (HIDWORD(a3))
      {
        v6 = v6;
      }

      else
      {
        v6 = 32;
      }

      *v39 = 4;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
      *&v39[12] = v43[0];
      v40 = v6;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B0EF44(&v37, 25, v39);
      v37 = &unk_2867C4E98;
      operator new();
    case 29:
      v38 = &unk_2867C5E00;
      v7 = 4 * (a3 != 0);
      LODWORD(v8) = v7 * a3;
      if ((v7 * a3) <= 0x20)
      {
        LODWORD(v8) = 32;
      }

      v37 = &unk_2867C4E08;
      if (HIDWORD(a3))
      {
        v8 = v8;
      }

      else
      {
        v8 = 32;
      }

      *v39 = 4;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
      *&v39[12] = v43[0];
      v40 = v8;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B0EF44(&v37, 29, v39);
      v37 = &unk_2867C4E08;
      operator new();
    case 31:
      v38 = &unk_2867C5D20;
      v25 = 4 * (a3 != 0);
      LODWORD(v26) = v25 * a3;
      if ((v25 * a3) <= 0x10)
      {
        LODWORD(v26) = 16;
      }

      v37 = &unk_2867C4CE8;
      if (HIDWORD(a3))
      {
        v26 = v26;
      }

      else
      {
        v26 = 16;
      }

      *v39 = 4;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v25 & 0x3FFFFFFFFLL | ((v26 >> 2) << 34);
      *&v39[12] = v43[0];
      v40 = v26;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B16164(&v37, v39);
      v37 = &unk_2867C4CE8;
      operator new();
    case 32:
      v38 = &unk_2867C5CC0;
      v35 = 4 * (a3 != 0);
      LODWORD(v36) = v35 * a3;
      if ((v35 * a3) <= 8)
      {
        LODWORD(v36) = 8;
      }

      v37 = &unk_2867C4C58;
      if (HIDWORD(a3))
      {
        v36 = v36;
      }

      else
      {
        v36 = 8;
      }

      *v39 = 4;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v35 & 0x3FFFFFFFFLL | ((v36 >> 2) << 34);
      *&v39[12] = v43[0];
      v40 = v36;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B19530(&v37, v39);
      v37 = &unk_2867C4C58;
      operator new();
    case 33:
      v38 = &unk_2867C5C80;
      v13 = 4 * (a3 != 0);
      LODWORD(v14) = v13 * a3;
      if ((v13 * a3) <= 0x20)
      {
        LODWORD(v14) = 32;
      }

      v37 = &unk_2867C4BC8;
      if (HIDWORD(a3))
      {
        v14 = v14;
      }

      else
      {
        v14 = 32;
      }

      *v39 = 4;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
      *&v39[12] = v43[0];
      v40 = v14;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B0EF44(&v37, 33, v39);
      v37 = &unk_2867C4BC8;
      operator new();
    case 37:
      v38 = &unk_2867C5BC0;
      v9 = 4 * (a3 != 0);
      LODWORD(v10) = v9 * a3;
      if ((v9 * a3) <= 0x20)
      {
        LODWORD(v10) = 32;
      }

      v37 = &unk_2867C4B38;
      if (HIDWORD(a3))
      {
        v10 = v10;
      }

      else
      {
        v10 = 32;
      }

      *v39 = 4;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v9 & 0x3FFFFFFFFLL | ((v10 >> 2) << 34);
      *&v39[12] = v43[0];
      v40 = v10;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B0EF44(&v37, 37, v39);
      v37 = &unk_2867C4B38;
      operator new();
    case 38:
      v38 = &unk_2867C5B60;
      v27 = 4 * (a3 != 0);
      LODWORD(v28) = v27 * a3;
      if ((v27 * a3) <= 0x10)
      {
        LODWORD(v28) = 16;
      }

      v37 = &unk_2867C4AA8;
      if (HIDWORD(a3))
      {
        v28 = v28;
      }

      else
      {
        v28 = 16;
      }

      *v39 = 4;
      *&v39[4] = a3;
      LODWORD(v43[0]) = 1;
      *(v43 + 4) = v27 & 0x3FFFFFFFFLL | ((v28 >> 2) << 34);
      *&v39[12] = v43[0];
      v40 = v28;
      v41 = a3;
      v42 = *(v43 + 4);
      sub_255B12D98(&v37, v39);
      v37 = &unk_2867C4AA8;
      operator new();
    default:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_255C2500B, 0, "Runtime format not in given Formats list", 0x28uLL, sub_255C101E0);
      abort();
  }
}

void sub_255B50898(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B50A8C(uint64_t a1, int a2, _DWORD *a3)
{
  v240 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v226 = &unk_2867C6020;
      LODWORD(v3) = *a3;
      v4 = a3[1];
      v5 = *a3 != 0;
      if (*a3 <= 0x20u)
      {
        LODWORD(v3) = 32;
      }

      v6 = *a3;
      v222 = &unk_2867C5048;
      if (v4)
      {
        v3 = v3;
      }

      else
      {
        v3 = 32;
      }

      v230 = v6;
      v231 = (v5 | (v3 << 32));
      LOBYTE(v221) = 0;
      sub_255B0B45C(&v222, &v230);
      if (v225 > 2)
      {
        goto LABEL_506;
      }

      if (!v223)
      {
        goto LABEL_342;
      }

      v8 = *v223;
      v7 = v223[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (!v8)
      {
        goto LABEL_342;
      }

      if (v225 == 2)
      {
        v155 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v155 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v155)
        {
          goto LABEL_341;
        }

        v157 = *v155;
        v156 = v155[1];
        if (v156)
        {
          atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v156->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v156->__on_zero_shared)(v156);
            std::__shared_weak_count::__release_weak(v156);
          }
        }

        if (!v157)
        {
          goto LABEL_341;
        }
      }

      else if (v225 == 1)
      {
        v145 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v145 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v145)
        {
          goto LABEL_341;
        }

        v147 = *v145;
        v146 = v145[1];
        if (v146)
        {
          atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
          }
        }

        if (!v147)
        {
          goto LABEL_341;
        }
      }

      else
      {
        if (v225)
        {
LABEL_506:
          sub_255A7C284();
        }

        v9 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v9 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v9)
        {
          goto LABEL_341;
        }

        v11 = *v9;
        v10 = v9[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }

        if (!v11)
        {
          goto LABEL_341;
        }
      }

      sub_255C010CC(*&v237[8]);
LABEL_341:
      sub_255B0BBBC(v232, &v222);
      v227 = v232;
      v228 = &v221;
      sub_255AF21DC(&v227);
      sub_255BF973C(v237);
LABEL_342:
      v222 = &unk_2867C5048;
      operator new();
    case 2:
      v226 = &unk_2867C5DA0;
      LODWORD(v46) = *a3;
      v47 = a3[1];
      v48 = *a3 != 0;
      if (*a3 <= 0x10u)
      {
        LODWORD(v46) = 16;
      }

      v49 = *a3;
      v222 = &unk_2867C4D78;
      if (v47)
      {
        v46 = v46;
      }

      else
      {
        v46 = 16;
      }

      v230 = v49;
      v231 = (v48 | (v46 << 32));
      LOWORD(v221) = 0;
      sub_255B10B24(&v222, &v230);
      if (v225 > 2)
      {
        goto LABEL_508;
      }

      if (!v223)
      {
        goto LABEL_332;
      }

      v51 = *v223;
      v50 = v223[1];
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v50->__on_zero_shared)(v50);
          std::__shared_weak_count::__release_weak(v50);
        }
      }

      if (!v51)
      {
        goto LABEL_332;
      }

      if (v225 == 2)
      {
        v152 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v152 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v152)
        {
          goto LABEL_331;
        }

        v154 = *v152;
        v153 = v152[1];
        if (v153)
        {
          atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v153->__on_zero_shared)(v153);
            std::__shared_weak_count::__release_weak(v153);
          }
        }

        if (!v154)
        {
          goto LABEL_331;
        }
      }

      else if (v225 == 1)
      {
        v142 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v142 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v142)
        {
          goto LABEL_331;
        }

        v144 = *v142;
        v143 = v142[1];
        if (v143)
        {
          atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v143->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v143->__on_zero_shared)(v143);
            std::__shared_weak_count::__release_weak(v143);
          }
        }

        if (!v144)
        {
          goto LABEL_331;
        }
      }

      else
      {
        if (v225)
        {
LABEL_508:
          sub_255A7C284();
        }

        v52 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v52 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v52)
        {
          goto LABEL_331;
        }

        v54 = *v52;
        v53 = v52[1];
        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v53->__on_zero_shared)(v53);
            std::__shared_weak_count::__release_weak(v53);
          }
        }

        if (!v54)
        {
          goto LABEL_331;
        }
      }

      sub_255C010CC(*&v237[8]);
LABEL_331:
      sub_255B11228(v232, &v222);
      v227 = v232;
      v228 = &v221;
      sub_255AF3560(&v227);
      sub_255BF973C(v237);
LABEL_332:
      v222 = &unk_2867C4D78;
      operator new();
    case 3:
      v226 = &unk_2867C5AE0;
      LODWORD(v37) = *a3;
      v38 = a3[1];
      v39 = *a3 != 0;
      if (*a3 <= 0x10u)
      {
        LODWORD(v37) = 16;
      }

      v40 = *a3;
      v222 = &unk_2867C4A18;
      if (v38)
      {
        v37 = v37;
      }

      else
      {
        v37 = 16;
      }

      v230 = v40;
      v231 = (v39 | (v37 << 32));
      LOWORD(v221) = 0;
      sub_255B13E54(&v222, &v230);
      if (v225 > 2)
      {
        goto LABEL_507;
      }

      if (!v223)
      {
        goto LABEL_322;
      }

      v42 = *v223;
      v41 = v223[1];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v41->__on_zero_shared)(v41);
          std::__shared_weak_count::__release_weak(v41);
        }
      }

      if (!v42)
      {
        goto LABEL_322;
      }

      if (v225 == 2)
      {
        v148 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v148 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v148)
        {
          goto LABEL_321;
        }

        v150 = *v148;
        v149 = v148[1];
        if (v149)
        {
          atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v149->__on_zero_shared)(v149);
            std::__shared_weak_count::__release_weak(v149);
          }
        }

        if (!v150)
        {
          goto LABEL_321;
        }
      }

      else if (v225 == 1)
      {
        v139 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v139 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v139)
        {
          goto LABEL_321;
        }

        v141 = *v139;
        v140 = v139[1];
        if (v140)
        {
          atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
          }
        }

        if (!v141)
        {
          goto LABEL_321;
        }
      }

      else
      {
        if (v225)
        {
LABEL_507:
          sub_255A7C284();
        }

        v43 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v43 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v43)
        {
          goto LABEL_321;
        }

        v45 = *v43;
        v44 = v43[1];
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
          }
        }

        if (!v45)
        {
          goto LABEL_321;
        }
      }

      sub_255C010CC(*&v237[8]);
LABEL_321:
      sub_255B14558(v232, &v222);
      v227 = v232;
      v228 = &v221;
      sub_255AF4D58(&v227, v151);
      sub_255BF973C(v237);
LABEL_322:
      v222 = &unk_2867C4A18;
      operator new();
    case 4:
      v226 = &unk_2867C5A60;
      LODWORD(v100) = *a3;
      v101 = a3[1];
      v102 = *a3 != 0;
      if (*a3 <= 8u)
      {
        LODWORD(v100) = 8;
      }

      v103 = *a3;
      v222 = &unk_2867C4988;
      if (v101)
      {
        v100 = v100;
      }

      else
      {
        v100 = 8;
      }

      v230 = v103;
      v231 = (v102 | (v100 << 32));
      v221 = 0;
      sub_255B17224(&v222, &v230);
      if (v225 > 2)
      {
        goto LABEL_513;
      }

      if (!v223)
      {
        goto LABEL_460;
      }

      v105 = *v223;
      v104 = v223[1];
      if (v104)
      {
        atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v104->__on_zero_shared)(v104);
          std::__shared_weak_count::__release_weak(v104);
        }
      }

      if (!v105)
      {
        goto LABEL_460;
      }

      if (v225 == 2)
      {
        v203 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v203 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v203)
        {
          goto LABEL_459;
        }

        v205 = *v203;
        v204 = v203[1];
        if (v204)
        {
          atomic_fetch_add_explicit(&v204->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v204->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v204->__on_zero_shared)(v204);
            std::__shared_weak_count::__release_weak(v204);
          }
        }

        if (!v205)
        {
          goto LABEL_459;
        }
      }

      else if (v225 == 1)
      {
        v187 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v187 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v187)
        {
          goto LABEL_459;
        }

        v189 = *v187;
        v188 = v187[1];
        if (v188)
        {
          atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
          }
        }

        if (!v189)
        {
          goto LABEL_459;
        }
      }

      else
      {
        if (v225)
        {
LABEL_513:
          sub_255A7C284();
        }

        v106 = v223;
        *&v237[8] = v223;
        *&v237[16] = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v106 = *&v237[8];
        }

        *v237 = &unk_2867C4028;
        if (!v106)
        {
          goto LABEL_459;
        }

        v108 = *v106;
        v107 = v106[1];
        if (v107)
        {
          atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v107->__on_zero_shared)(v107);
            std::__shared_weak_count::__release_weak(v107);
          }
        }

        if (!v108)
        {
          goto LABEL_459;
        }
      }

      sub_255C010CC(*&v237[8]);
LABEL_459:
      sub_255B17928(v232, &v222);
      v227 = v232;
      v228 = &v221;
      sub_255AF7284(&v227, v206);
      sub_255BF973C(v237);
LABEL_460:
      v222 = &unk_2867C4988;
      operator new();
    case 5:
      v226 = &unk_2867C5A00;
      v55 = a3[1];
      v56 = 2 * (*a3 != 0);
      LODWORD(v57) = v56 * *a3;
      if (v57 <= 0x20)
      {
        LODWORD(v57) = 32;
      }

      v58 = *a3;
      v59 = HIDWORD(*a3);
      v222 = &unk_2867C48F8;
      if (v55)
      {
        v57 = v57;
      }

      else
      {
        v57 = 32;
      }

      *v237 = 2;
      *&v237[4] = v58;
      *v232 = *v237;
      *v237 = 1;
      *&v237[4] = v56 & 0x1FFFFFFFFLL | ((v57 >> 1) << 33);
      v233 = *v237;
      *&v232[8] = v59;
      v234 = v57;
      v235 = v58;
      v236 = *&v237[4];
      LOBYTE(v221) = 0;
      sub_255B0C514(&v222, v232);
      if (v225 > 2)
      {
        goto LABEL_509;
      }

      if (!v223)
      {
        goto LABEL_504;
      }

      v61 = *v223;
      v60 = v223[1];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v60->__on_zero_shared)(v60);
          std::__shared_weak_count::__release_weak(v60);
        }
      }

      if (!v61)
      {
        goto LABEL_504;
      }

      if (v225 == 2)
      {
        v161 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v161 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v161)
        {
          goto LABEL_359;
        }

        v163 = *v161;
        v162 = v161[1];
        if (v162)
        {
          atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v162->__on_zero_shared)(v162);
            std::__shared_weak_count::__release_weak(v162);
          }
        }

        if (!v163)
        {
          goto LABEL_359;
        }
      }

      else
      {
        if (v225 != 1)
        {
          if (v225)
          {
LABEL_509:
            sub_255A7C284();
          }

          v62 = v223;
          v228 = v223;
          v229 = v224;
          if (v224)
          {
            atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
            v62 = v228;
          }

          v227 = &unk_2867C4028;
          if (v62)
          {
            v64 = *v62;
            v63 = v62[1];
            if (v63)
            {
              atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v63->__on_zero_shared)(v63);
                std::__shared_weak_count::__release_weak(v63);
              }
            }

            if (v64)
            {
              goto LABEL_358;
            }
          }

LABEL_359:
          sub_255B0CC54(v237, &v222);
          v230 = v237;
          v231 = &v221;
          if (*&v237[20] == 1)
          {
            sub_255AF2530(&v230);
LABEL_503:
            sub_255BF973C(&v227);
LABEL_504:
            v222 = &unk_2867C48F8;
            operator new();
          }

          if (!*&v237[8] || !*&v237[12] || !*&v237[16])
          {
            goto LABEL_503;
          }

          v164 = *&v237[12] - 1;
          v165 = v238;
          v166 = *v237;
          v167 = *&v237[16] - 1;
          if (*&v237[16] == 1)
          {
            v169 = v221;
          }

          else
          {
            v168 = HIDWORD(v238);
            v169 = v221;
            if (*&v237[12] != 1)
            {
              v170 = 0;
              v171 = *v237 + 1;
              do
              {
                v172 = v171;
                v173 = v164;
                do
                {
                  *(v172 - 1) = v169;
                  v169 = v221;
                  *v172 = v221;
                  v172 += v165;
                  --v173;
                }

                while (v173);
                *(v172 - 1) = v169;
                v169 = v221;
                *v172 = v221;
                v166 += v168;
                ++v170;
                v171 += v168;
              }

              while (v170 != v167);
              goto LABEL_501;
            }

            do
            {
              *v166 = v169;
              v169 = v221;
              v166[1] = v221;
              v166 += v168;
              --v167;
            }

            while (v167);
          }

          if (!v164)
          {
LABEL_502:
            *v166 = v169;
            v166[1] = v221;
            goto LABEL_503;
          }

          do
          {
LABEL_501:
            *v166 = v169;
            v169 = v221;
            v166[1] = v221;
            v166 += v165;
            --v164;
          }

          while (v164);
          goto LABEL_502;
        }

        v158 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v158 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v158)
        {
          goto LABEL_359;
        }

        v160 = *v158;
        v159 = v158[1];
        if (v159)
        {
          atomic_fetch_add_explicit(&v159->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v159->__on_zero_shared)(v159);
            std::__shared_weak_count::__release_weak(v159);
          }
        }

        if (!v160)
        {
          goto LABEL_359;
        }
      }

LABEL_358:
      sub_255C010CC(v228);
      goto LABEL_359;
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 30:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, &unk_255C2500B, 0, "The buffer does not support the given format", 0x2CuLL, sub_255C101E0);
      abort();
    case 7:
      v226 = &unk_2867C5980;
      v109 = a3[1];
      v110 = 2 * (*a3 != 0);
      LODWORD(v111) = v110 * *a3;
      if (v111 <= 0x10)
      {
        LODWORD(v111) = 16;
      }

      v112 = *a3;
      v113 = HIDWORD(*a3);
      v222 = &unk_2867C4868;
      if (v109)
      {
        v111 = v111;
      }

      else
      {
        v111 = 16;
      }

      *v237 = 2;
      *&v237[4] = v112;
      *v232 = *v237;
      *v237 = 1;
      *&v237[4] = v110 & 0x1FFFFFFFFLL | ((v111 >> 1) << 33);
      v233 = *v237;
      *&v232[8] = v113;
      v234 = v111;
      v235 = v112;
      v236 = *&v237[4];
      LOWORD(v221) = 0;
      sub_255B15018(&v222, v232);
      if (v225 > 2)
      {
        goto LABEL_514;
      }

      if (!v223)
      {
        goto LABEL_470;
      }

      v115 = *v223;
      v114 = v223[1];
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v114->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v114->__on_zero_shared)(v114);
          std::__shared_weak_count::__release_weak(v114);
        }
      }

      if (!v115)
      {
        goto LABEL_470;
      }

      if (v225 == 2)
      {
        v207 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v207 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v207)
        {
          goto LABEL_469;
        }

        v209 = *v207;
        v208 = v207[1];
        if (v208)
        {
          atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
          }
        }

        if (!v209)
        {
          goto LABEL_469;
        }
      }

      else if (v225 == 1)
      {
        v194 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v194 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v194)
        {
          goto LABEL_469;
        }

        v196 = *v194;
        v195 = v194[1];
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v195->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v195->__on_zero_shared)(v195);
            std::__shared_weak_count::__release_weak(v195);
          }
        }

        if (!v196)
        {
          goto LABEL_469;
        }
      }

      else
      {
        if (v225)
        {
LABEL_514:
          sub_255A7C284();
        }

        v116 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v116 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v116)
        {
          goto LABEL_469;
        }

        v118 = *v116;
        v117 = v116[1];
        if (v117)
        {
          atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v117->__on_zero_shared)(v117);
            std::__shared_weak_count::__release_weak(v117);
          }
        }

        if (!v118)
        {
          goto LABEL_469;
        }
      }

      sub_255C010CC(v228);
LABEL_469:
      sub_255B1575C(v237, &v222);
      v230 = v237;
      v231 = &v221;
      sub_255AF5094(&v230, v210);
      sub_255BF973C(&v227);
LABEL_470:
      v222 = &unk_2867C4868;
      operator new();
    case 8:
      v226 = &unk_2867C5920;
      v70 = a3[1];
      v71 = 2 * (*a3 != 0);
      LODWORD(v72) = v71 * *a3;
      if (v72 <= 8)
      {
        LODWORD(v72) = 8;
      }

      v73 = *a3;
      v74 = HIDWORD(*a3);
      v222 = &unk_2867C47D8;
      if (v70)
      {
        v72 = v72;
      }

      else
      {
        v72 = 8;
      }

      *v237 = 2;
      *&v237[4] = v73;
      *v232 = *v237;
      *v237 = 1;
      *&v237[4] = v71 & 0x1FFFFFFFFLL | ((v72 >> 1) << 33);
      v233 = *v237;
      *&v232[8] = v74;
      v234 = v72;
      v235 = v73;
      v236 = *&v237[4];
      v221 = 0;
      sub_255B183E8(&v222, v232);
      if (v225 > 2)
      {
        goto LABEL_510;
      }

      if (!v223)
      {
        goto LABEL_398;
      }

      v76 = *v223;
      v75 = v223[1];
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v75->__on_zero_shared)(v75);
          std::__shared_weak_count::__release_weak(v75);
        }
      }

      if (!v76)
      {
        goto LABEL_398;
      }

      if (v225 == 2)
      {
        v180 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v180 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v180)
        {
          goto LABEL_397;
        }

        v182 = *v180;
        v181 = v180[1];
        if (v181)
        {
          atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v181->__on_zero_shared)(v181);
            std::__shared_weak_count::__release_weak(v181);
          }
        }

        if (!v182)
        {
          goto LABEL_397;
        }
      }

      else if (v225 == 1)
      {
        v174 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v174 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v174)
        {
          goto LABEL_397;
        }

        v176 = *v174;
        v175 = v174[1];
        if (v175)
        {
          atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v175->__on_zero_shared)(v175);
            std::__shared_weak_count::__release_weak(v175);
          }
        }

        if (!v176)
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (v225)
        {
LABEL_510:
          sub_255A7C284();
        }

        v77 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v77 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v77)
        {
          goto LABEL_397;
        }

        v79 = *v77;
        v78 = v77[1];
        if (v78)
        {
          atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v78->__on_zero_shared)(v78);
            std::__shared_weak_count::__release_weak(v78);
          }
        }

        if (!v79)
        {
          goto LABEL_397;
        }
      }

      sub_255C010CC(v228);
LABEL_397:
      sub_255B18B28(v237, &v222);
      v230 = v237;
      v231 = &v221;
      sub_255AF76C0(&v230, v183);
      sub_255BF973C(&v227);
LABEL_398:
      v222 = &unk_2867C47D8;
      operator new();
    case 17:
      v227 = &unk_2867C60C0;
      v65 = a3[1];
      if (*a3)
      {
        v66 = 3;
      }

      else
      {
        v66 = 0;
      }

      LODWORD(v67) = v66 * *a3;
      if (v67 <= 0x20)
      {
        LODWORD(v67) = 32;
      }

      v68 = *a3;
      v69 = HIDWORD(*a3);
      v222 = &unk_2867C50D8;
      if (v65)
      {
        v67 = v67;
      }

      else
      {
        v67 = 32;
      }

      *&v237[4] = v68;
      *v237 = 3;
      *&v237[8] = v69;
      *v232 = 1;
      *&v232[4] = v66 | (v67 << 32);
      *&v237[12] = *v232;
      *&v237[20] = v67;
      v238 = v68;
      v239 = *&v232[4];
      v232[0] = 0;
      sub_255B0D4F4(&v222, 17, v237);
      sub_255B0D7F4(&v222, v232);
      v222 = &unk_2867C50D8;
      operator new();
    case 21:
      v227 = &unk_2867C5FA0;
      v27 = a3[1];
      if (*a3)
      {
        v28 = 3;
      }

      else
      {
        v28 = 0;
      }

      LODWORD(v29) = v28 * *a3;
      if (v29 <= 0x20)
      {
        LODWORD(v29) = 32;
      }

      v30 = *a3;
      v31 = HIDWORD(*a3);
      v222 = &unk_2867C4FB8;
      if (v27)
      {
        v29 = v29;
      }

      else
      {
        v29 = 32;
      }

      *&v237[4] = v30;
      *v237 = 3;
      *&v237[8] = v31;
      *v232 = 1;
      *&v232[4] = v28 | (v29 << 32);
      *&v237[12] = *v232;
      *&v237[20] = v29;
      v238 = v30;
      v239 = *&v232[4];
      v232[0] = 0;
      sub_255B0D4F4(&v222, 21, v237);
      sub_255B0D7F4(&v222, v232);
      v222 = &unk_2867C4FB8;
      operator new();
    case 22:
      v226 = &unk_2867C5F40;
      v119 = a3[1];
      if (*a3)
      {
        v120 = 3;
      }

      else
      {
        v120 = 0;
      }

      LODWORD(v121) = v120 * *a3;
      if (v121 <= 0x10)
      {
        LODWORD(v121) = 16;
      }

      v122 = *a3;
      v123 = HIDWORD(*a3);
      v222 = &unk_2867C4F28;
      if (v119)
      {
        v121 = v121;
      }

      else
      {
        v121 = 16;
      }

      *v237 = 3;
      *&v237[4] = v122;
      *v232 = *v237;
      *v237 = 1;
      *&v237[4] = v120 | (v121 << 32);
      v233 = *v237;
      *&v232[8] = v123;
      v234 = v121;
      v235 = v122;
      v236 = *&v237[4];
      LOWORD(v221) = 0;
      sub_255B11CD8(&v222, v232);
      if (v225 > 2)
      {
        goto LABEL_515;
      }

      if (!v223)
      {
        goto LABEL_480;
      }

      v125 = *v223;
      v124 = v223[1];
      if (v124)
      {
        atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v124->__on_zero_shared)(v124);
          std::__shared_weak_count::__release_weak(v124);
        }
      }

      if (!v125)
      {
        goto LABEL_480;
      }

      if (v225 == 2)
      {
        v211 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v211 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v211)
        {
          goto LABEL_479;
        }

        v213 = *v211;
        v212 = v211[1];
        if (v212)
        {
          atomic_fetch_add_explicit(&v212->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v212->__on_zero_shared)(v212);
            std::__shared_weak_count::__release_weak(v212);
          }
        }

        if (!v213)
        {
          goto LABEL_479;
        }
      }

      else if (v225 == 1)
      {
        v200 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v200 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v200)
        {
          goto LABEL_479;
        }

        v202 = *v200;
        v201 = v200[1];
        if (v201)
        {
          atomic_fetch_add_explicit(&v201->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v201->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v201->__on_zero_shared)(v201);
            std::__shared_weak_count::__release_weak(v201);
          }
        }

        if (!v202)
        {
          goto LABEL_479;
        }
      }

      else
      {
        if (v225)
        {
LABEL_515:
          sub_255A7C284();
        }

        v126 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v126 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v126)
        {
          goto LABEL_479;
        }

        v128 = *v126;
        v127 = v126[1];
        if (v127)
        {
          atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v127->__on_zero_shared)(v127);
            std::__shared_weak_count::__release_weak(v127);
          }
        }

        if (!v128)
        {
          goto LABEL_479;
        }
      }

      sub_255C010CC(v228);
LABEL_479:
      sub_255B12418(v237, &v222);
      v230 = v237;
      v231 = &v221;
      sub_255AF3A94(&v230);
      sub_255BF973C(&v227);
LABEL_480:
      v222 = &unk_2867C4F28;
      operator new();
    case 25:
      v227 = &unk_2867C5EA0;
      v12 = a3[1];
      v13 = 4 * (*a3 != 0);
      LODWORD(v14) = v13 * *a3;
      if (v14 <= 0x20)
      {
        LODWORD(v14) = 32;
      }

      v15 = *a3;
      v16 = HIDWORD(*a3);
      v222 = &unk_2867C4E98;
      if (v12)
      {
        v14 = v14;
      }

      else
      {
        v14 = 32;
      }

      *&v237[4] = v15;
      *v237 = 4;
      *&v237[8] = v16;
      *v232 = 1;
      *&v232[4] = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
      *&v237[12] = *v232;
      *&v237[20] = v14;
      v238 = v15;
      v239 = *&v232[4];
      v232[0] = 0;
      sub_255B0EF44(&v222, 25, v237);
      sub_255B0F24C(&v222, v232);
      v222 = &unk_2867C4E98;
      operator new();
    case 29:
      v227 = &unk_2867C5E00;
      v17 = a3[1];
      v18 = 4 * (*a3 != 0);
      LODWORD(v19) = v18 * *a3;
      if (v19 <= 0x20)
      {
        LODWORD(v19) = 32;
      }

      v20 = *a3;
      v21 = HIDWORD(*a3);
      v222 = &unk_2867C4E08;
      if (v17)
      {
        v19 = v19;
      }

      else
      {
        v19 = 32;
      }

      *&v237[4] = v20;
      *v237 = 4;
      *&v237[8] = v21;
      *v232 = 1;
      *&v232[4] = v18 & 0x3FFFFFFFFLL | ((v19 >> 2) << 34);
      *&v237[12] = *v232;
      *&v237[20] = v19;
      v238 = v20;
      v239 = *&v232[4];
      v232[0] = 0;
      sub_255B0EF44(&v222, 29, v237);
      sub_255B0F24C(&v222, v232);
      v222 = &unk_2867C4E08;
      operator new();
    case 31:
      v226 = &unk_2867C5D20;
      v80 = a3[1];
      v81 = 4 * (*a3 != 0);
      LODWORD(v82) = v81 * *a3;
      if (v82 <= 0x10)
      {
        LODWORD(v82) = 16;
      }

      v83 = *a3;
      v84 = HIDWORD(*a3);
      v222 = &unk_2867C4CE8;
      if (v80)
      {
        v82 = v82;
      }

      else
      {
        v82 = 16;
      }

      *v237 = 4;
      *&v237[4] = v83;
      *v232 = *v237;
      *v237 = 1;
      *&v237[4] = v81 & 0x3FFFFFFFFLL | ((v82 >> 2) << 34);
      v233 = *v237;
      *&v232[8] = v84;
      v234 = v82;
      v235 = v83;
      v236 = *&v237[4];
      LOWORD(v221) = 0;
      sub_255B16164(&v222, v232);
      if (v225 > 2)
      {
        goto LABEL_511;
      }

      if (!v223)
      {
        goto LABEL_424;
      }

      v86 = *v223;
      v85 = v223[1];
      if (v85)
      {
        atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }
      }

      if (!v86)
      {
        goto LABEL_424;
      }

      if (v225 == 2)
      {
        v190 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v190 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v190)
        {
          goto LABEL_423;
        }

        v192 = *v190;
        v191 = v190[1];
        if (v191)
        {
          atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v191->__on_zero_shared)(v191);
            std::__shared_weak_count::__release_weak(v191);
          }
        }

        if (!v192)
        {
          goto LABEL_423;
        }
      }

      else if (v225 == 1)
      {
        v177 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v177 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v177)
        {
          goto LABEL_423;
        }

        v179 = *v177;
        v178 = v177[1];
        if (v178)
        {
          atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v178->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v178->__on_zero_shared)(v178);
            std::__shared_weak_count::__release_weak(v178);
          }
        }

        if (!v179)
        {
          goto LABEL_423;
        }
      }

      else
      {
        if (v225)
        {
LABEL_511:
          sub_255A7C284();
        }

        v87 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v87 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v87)
        {
          goto LABEL_423;
        }

        v89 = *v87;
        v88 = v87[1];
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v88->__on_zero_shared)(v88);
            std::__shared_weak_count::__release_weak(v88);
          }
        }

        if (!v89)
        {
          goto LABEL_423;
        }
      }

      sub_255C010CC(v228);
LABEL_423:
      sub_255B168A8(v237, &v222);
      v230 = v237;
      v231 = &v221;
      sub_255AF62AC(&v230, v193);
      sub_255BF973C(&v227);
LABEL_424:
      v222 = &unk_2867C4CE8;
      operator new();
    case 32:
      v226 = &unk_2867C5CC0;
      v129 = a3[1];
      v130 = 4 * (*a3 != 0);
      LODWORD(v131) = v130 * *a3;
      if (v131 <= 8)
      {
        LODWORD(v131) = 8;
      }

      v132 = *a3;
      v133 = HIDWORD(*a3);
      v222 = &unk_2867C4C58;
      if (v129)
      {
        v131 = v131;
      }

      else
      {
        v131 = 8;
      }

      *v237 = 4;
      *&v237[4] = v132;
      *v232 = *v237;
      *v237 = 1;
      *&v237[4] = v130 & 0x3FFFFFFFFLL | ((v131 >> 2) << 34);
      v233 = *v237;
      *&v232[8] = v133;
      v234 = v131;
      v235 = v132;
      v236 = *&v237[4];
      v221 = 0;
      sub_255B19530(&v222, v232);
      if (v225 > 2)
      {
        goto LABEL_516;
      }

      if (!v223)
      {
        goto LABEL_498;
      }

      v135 = *v223;
      v134 = v223[1];
      if (v134)
      {
        atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v134->__on_zero_shared)(v134);
          std::__shared_weak_count::__release_weak(v134);
        }
      }

      if (!v135)
      {
        goto LABEL_498;
      }

      if (v225 == 2)
      {
        v217 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v217 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v217)
        {
          goto LABEL_497;
        }

        v219 = *v217;
        v218 = v217[1];
        if (v218)
        {
          atomic_fetch_add_explicit(&v218->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
          }
        }

        if (!v219)
        {
          goto LABEL_497;
        }
      }

      else if (v225 == 1)
      {
        v214 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v214 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v214)
        {
          goto LABEL_497;
        }

        v216 = *v214;
        v215 = v214[1];
        if (v215)
        {
          atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v215->__on_zero_shared)(v215);
            std::__shared_weak_count::__release_weak(v215);
          }
        }

        if (!v216)
        {
          goto LABEL_497;
        }
      }

      else
      {
        if (v225)
        {
LABEL_516:
          sub_255A7C284();
        }

        v136 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v136 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v136)
        {
          goto LABEL_497;
        }

        v138 = *v136;
        v137 = v136[1];
        if (v137)
        {
          atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v137->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v137->__on_zero_shared)(v137);
            std::__shared_weak_count::__release_weak(v137);
          }
        }

        if (!v138)
        {
          goto LABEL_497;
        }
      }

      sub_255C010CC(v228);
LABEL_497:
      sub_255B19C70(v237, &v222);
      v230 = v237;
      v231 = &v221;
      sub_255AF80F8(&v230, v220);
      sub_255BF973C(&v227);
LABEL_498:
      v222 = &unk_2867C4C58;
      operator new();
    case 33:
      v227 = &unk_2867C5C80;
      v32 = a3[1];
      v33 = 4 * (*a3 != 0);
      LODWORD(v34) = v33 * *a3;
      if (v34 <= 0x20)
      {
        LODWORD(v34) = 32;
      }

      v35 = *a3;
      v36 = HIDWORD(*a3);
      v222 = &unk_2867C4BC8;
      if (v32)
      {
        v34 = v34;
      }

      else
      {
        v34 = 32;
      }

      *&v237[4] = v35;
      *v237 = 4;
      *&v237[8] = v36;
      *v232 = 1;
      *&v232[4] = v33 & 0x3FFFFFFFFLL | ((v34 >> 2) << 34);
      *&v237[12] = *v232;
      *&v237[20] = v34;
      v238 = v35;
      v239 = *&v232[4];
      v232[0] = 0;
      sub_255B0EF44(&v222, 33, v237);
      sub_255B0F24C(&v222, v232);
      v222 = &unk_2867C4BC8;
      operator new();
    case 37:
      v227 = &unk_2867C5BC0;
      v22 = a3[1];
      v23 = 4 * (*a3 != 0);
      LODWORD(v24) = v23 * *a3;
      if (v24 <= 0x20)
      {
        LODWORD(v24) = 32;
      }

      v25 = *a3;
      v26 = HIDWORD(*a3);
      v222 = &unk_2867C4B38;
      if (v22)
      {
        v24 = v24;
      }

      else
      {
        v24 = 32;
      }

      *&v237[4] = v25;
      *v237 = 4;
      *&v237[8] = v26;
      *v232 = 1;
      *&v232[4] = v23 & 0x3FFFFFFFFLL | ((v24 >> 2) << 34);
      *&v237[12] = *v232;
      *&v237[20] = v24;
      v238 = v25;
      v239 = *&v232[4];
      v232[0] = 0;
      sub_255B0EF44(&v222, 37, v237);
      sub_255B0F24C(&v222, v232);
      v222 = &unk_2867C4B38;
      operator new();
    case 38:
      v226 = &unk_2867C5B60;
      v90 = a3[1];
      v91 = 4 * (*a3 != 0);
      LODWORD(v92) = v91 * *a3;
      if (v92 <= 0x10)
      {
        LODWORD(v92) = 16;
      }

      v93 = *a3;
      v94 = HIDWORD(*a3);
      v222 = &unk_2867C4AA8;
      if (v90)
      {
        v92 = v92;
      }

      else
      {
        v92 = 16;
      }

      *v237 = 4;
      *&v237[4] = v93;
      *v232 = *v237;
      *v237 = 1;
      *&v237[4] = v91 & 0x3FFFFFFFFLL | ((v92 >> 2) << 34);
      v233 = *v237;
      *&v232[8] = v94;
      v234 = v92;
      v235 = v93;
      v236 = *&v237[4];
      LOWORD(v221) = 0;
      sub_255B12D98(&v222, v232);
      if (v225 > 2)
      {
        goto LABEL_512;
      }

      if (!v223)
      {
        goto LABEL_442;
      }

      v96 = *v223;
      v95 = v223[1];
      if (v95)
      {
        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v95->__on_zero_shared)(v95);
          std::__shared_weak_count::__release_weak(v95);
        }
      }

      if (!v96)
      {
        goto LABEL_442;
      }

      if (v225 == 2)
      {
        v197 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v197 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v197)
        {
          goto LABEL_441;
        }

        v199 = *v197;
        v198 = v197[1];
        if (v198)
        {
          atomic_fetch_add_explicit(&v198->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v198->__on_zero_shared)(v198);
            std::__shared_weak_count::__release_weak(v198);
          }
        }

        if (!v199)
        {
          goto LABEL_441;
        }
      }

      else if (v225 == 1)
      {
        v184 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v184 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v184)
        {
          goto LABEL_441;
        }

        v186 = *v184;
        v185 = v184[1];
        if (v185)
        {
          atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v185->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v185->__on_zero_shared)(v185);
            std::__shared_weak_count::__release_weak(v185);
          }
        }

        if (!v186)
        {
          goto LABEL_441;
        }
      }

      else
      {
        if (v225)
        {
LABEL_512:
          sub_255A7C284();
        }

        v97 = v223;
        v228 = v223;
        v229 = v224;
        if (v224)
        {
          atomic_fetch_add_explicit((v224 + 8), 1uLL, memory_order_relaxed);
          v97 = v228;
        }

        v227 = &unk_2867C4028;
        if (!v97)
        {
          goto LABEL_441;
        }

        v99 = *v97;
        v98 = v97[1];
        if (v98)
        {
          atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
          }
        }

        if (!v99)
        {
          goto LABEL_441;
        }
      }

      sub_255C010CC(v228);
LABEL_441:
      sub_255B134D8(v237, &v222);
      v230 = v237;
      v231 = &v221;
      sub_255AF47F0(&v230);
      sub_255BF973C(&v227);
LABEL_442:
      v222 = &unk_2867C4AA8;
      operator new();
    default:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_255C2500B, 0, "Runtime format not in given Formats list", 0x28uLL, sub_255C101E0);
      abort();
  }
}

void sub_255B54564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_255BF9188(va1);
  sub_255B19830(va);
  _Unwind_Resume(a1);
}

void sub_255B54660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_255BF9188(va1);
  sub_255B0C814(va);
  _Unwind_Resume(a1);
}

void sub_255B54684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BF9188((v2 - 104));
  sub_255B0B720(va);
  _Unwind_Resume(a1);
}

void sub_255B546F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_255BF973C(va1);
  sub_255B0C814(va);
  _Unwind_Resume(a1);
}

void sub_255B5470C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B54DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B54EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B54FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B550E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B551E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B552EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B553F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B554F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B55524(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgr8u]", 29, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255B55608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255B55714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B55818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B5591C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B55A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B55A50(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgba8u]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255B55B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255B55C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B55D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B55E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B55E78(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Abgr8u]", 30, &v10);
  sub_255A7FF3C(__p, &v10, 1uLL);
  sub_255C0F130(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_255B55F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_255B59860(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255B56068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B5616C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B5640C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = a15;
  a15 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  sub_255A7F5A0(&a12);
  sub_255A7A508(v15 + 16);
  sub_255A7A508(v15);
  sub_255A7F5A0(&a9);
  MEMORY[0x259C49320](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t sub_255B564FC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v1[4];
  v5 = v1[5];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v2)
    {
      v9 = v4;
      v10 = v5;
      v6 = v5;
LABEL_8:
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_9;
    }
  }

  else if (!v2)
  {
    v9 = v1[4];
    v10 = 0;
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v9 = v2;
  v10 = v3;
  v6 = v3;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v3)
  {
LABEL_13:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

LABEL_15:
  result = (*(*v9 + 16))(v9);
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      return v8;
    }
  }

  return result;
}

uint64_t sub_255B566C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v2)
    {
      v6 = v4 + 8;
      if (!v4)
      {
        v6 = 0;
      }

      v11 = v6;
      v12 = v5;
      v7 = v5;
      goto LABEL_10;
    }
  }

  else if (!v2)
  {
    v10 = v4 + 8;
    if (!v4)
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = 0;
    if (v3)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v11 = v2;
  v12 = v3;
  v7 = v3;
  if (v3)
  {
LABEL_10:
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v3)
  {
LABEL_15:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

LABEL_17:
  result = (*(*v11 + 16))(v11);
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
      return v9;
    }
  }

  return result;
}

void sub_255B5689C(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = **a1;
  v9 = (*a1)[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v7[4];
  v11 = v7[5];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v8)
    {
      v17 = v10;
      v18 = v11;
      v12 = v11;
LABEL_8:
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_9;
    }
  }

  else if (!v8)
  {
    v17 = v7[4];
    v18 = 0;
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v17 = v8;
  v18 = v9;
  v12 = v9;
  if (v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v9)
  {
LABEL_13:
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

LABEL_15:
  v13 = *(a2 + 32);
  v14 = *(a2 + 36);
  kdebug_trace();
  v19 = 0;
  v20[0] = &unk_2867C3C90;
  v20[1] = &v19;
  v20[2] = 0;
  v21 = v20;
  (*(*v17 + 32))(v17, a2, a3);
  v19 = 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 2);
  if (!v21)
  {
    sub_255A93CCC();
  }

  (*(*v21 + 48))(v21);
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
    v15 = v18;
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v21)
  {
    (*(*v21 + 40))();
  }

  v15 = v18;
  if (v18)
  {
LABEL_22:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_24:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_255B56B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255A8508C(&a12);
  sub_255A7A508(&a9);
  _Unwind_Resume(a1);
}

void sub_255B56B88(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_255A7B4D4(exception_object);
}

void sub_255B56BA4(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = *(*a1 + 24);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v10)
    {
      v14 = v12 + 8;
      if (!v12)
      {
        v14 = 0;
      }

      v23 = v14;
      v24 = v13;
      v15 = v13;
      goto LABEL_10;
    }
  }

  else if (!v10)
  {
    v22 = v12 + 8;
    if (!v12)
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = 0;
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v23 = v10;
  v24 = v11;
  v15 = v11;
  if (v11)
  {
LABEL_10:
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v11)
  {
LABEL_15:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_17:
  v16 = *(a2 + 32);
  v17 = *(a2 + 36);
  v18 = (a3[1] - *a3) >> 2;
  kdebug_trace();
  v25 = 0;
  v29[0] = &unk_2867C3C38;
  v29[1] = &v25;
  v29[2] = 0;
  v30 = v29;
  (*(*v23 + 32))(v23, a2, a3, a4);
  v26 = &v27;
  v27 = 0;
  v19 = *(a5 + 24);
  if (v19 == -1)
  {
    sub_255A7C284();
  }

  v28 = &v26;
  (off_2867D08B8[v19])(&v28, a5);
  v25 = v27;
  if (!v30)
  {
    sub_255A93CCC();
  }

  (*(*v30 + 48))(v30);
  if (v30 == v29)
  {
    (*(*v30 + 32))(v30);
    v20 = v24;
    if (!v24)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v30)
  {
    (*(*v30 + 40))();
  }

  v20 = v24;
  if (v24)
  {
LABEL_25:
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_255B56ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_255A8508C(va1);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B56F10(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (sub_255B57280(*a1))
  {
    if (a3 == a4)
    {
LABEL_19:
      v18 = (*a1)[4];
      v19 = (*a1)[5];
      v20[0] = v18;
      v20[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_255B573BC(a5, a2, v20, a3);
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);

        std::__shared_weak_count::__release_weak(v19);
      }

      return;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/FeatureExtraction/src/FeatureExtractor.cpp", 209, "detector_ps_handle == descriptor_ps_handle", 0x2AuLL, "Both detector and descriptor PSHandle handles must be same for EndToEndModel.", 0x4DuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "detector_ps_handle == descriptor_ps_handle", 42, "Both detector and descriptor PSHandle handles must be same for EndToEndModel.", 77);
        goto LABEL_19;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_27;
      }
    }

    do
    {
      v17 = *v10;
      v16 = *(v10 + 8);
      v10 += 16;
      v17(v16, "detector_ps_handle == descriptor_ps_handle", 42, "Both detector and descriptor PSHandle handles must be same for EndToEndModel.", 77);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_27:
    abort();
  }

  sub_255B5689C(a1, a2, a3, __p);
  sub_255B56BA4(a1, a2, __p, a4, &v26);
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v21 = 0uLL;
  v23 = 0;
  *a5 = *__p;
  *(a5 + 16) = v31;
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  *(a5 + 24) = 0;
  *(a5 + 48) = -1;
  v12 = v27;
  if (v27 != -1)
  {
    v32 = (a5 + 24);
    (*(&off_2867D0958 + v27))(&v32, &v26);
    *(a5 + 48) = v12;
  }

  v13 = v28;
  *(a5 + 72) = 0;
  *(a5 + 56) = v13;
  *(a5 + 64) = v29;
  *(a5 + 96) = -1;
  v32 = (a5 + 72);
  v14 = off_2867D0958(&v32, &v21);
  *(a5 + 96) = 0;
  v15 = v23;
  *(a5 + 104) = v24;
  *(a5 + 112) = v25;
  if (v15 != -1)
  {
    (off_2867D00C0[v15])(&v32, &v21, v14);
  }

  if (v27 != -1)
  {
    (off_2867D00C0[v27])(&v21, &v26);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_255B5725C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

BOOL sub_255B57280(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[2];
  v3 = a1[3];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[4];
  v5 = a1[5];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  if (v2 | v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  return !v7;
}

uint64_t sub_255B573BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = *(a2 + 36);
  kdebug_trace();
  v13 = 0;
  v17[0] = &unk_2867C3BE0;
  v17[1] = &v13;
  v17[2] = 0;
  v18 = v17;
  (*(**a3 + 56))(*a3, a2, a4);
  v14 = &v15;
  v15 = 0;
  v10 = *(a1 + 48);
  if (v10 == -1)
  {
    sub_255A7C284();
  }

  v16 = &v14;
  (off_2867D08B8[v10])(&v16, a1 + 24);
  v13 = v15;
  if (!v18)
  {
    sub_255A93CCC();
  }

  (*(*v18 + 48))(v18);
  result = v18;
  if (v18 == v17)
  {
    result = (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    result = (*(*v18 + 40))();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255B57578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255A8508C(va);
  _Unwind_Resume(a1);
}

void sub_255B575B0(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  if (sub_255B57280(*a1))
  {
    v11 = (*a1)[4];
    v10 = (*a1)[5];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a2 + 32);
    v13 = *(a2 + 36);
    v14 = (a3[1] - *a3) >> 2;
    kdebug_trace();
    v29 = 0;
    __p = &unk_2867C3B88;
    v33 = &v29;
    v34 = 0;
    p_p = &__p;
    (*(*v11 + 64))(v11, a2, a3, a4);
    v30 = &v31;
    v31 = 0;
    v15 = *(a5 + 48);
    if (v15 == -1)
    {
      sub_255A7C284();
    }

    v25.n128_u64[0] = &v30;
    (off_2867D08B8[v15])(&v25, a5 + 24);
    v29 = v31;
    if (!p_p)
    {
      sub_255A93CCC();
    }

    (*(*p_p + 6))(p_p);
    if (p_p == &__p)
    {
      (*(*p_p + 4))(p_p);
      if (!v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (p_p)
      {
        (*(*p_p + 5))();
      }

      if (!v10)
      {
        goto LABEL_32;
      }
    }

    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    goto LABEL_32;
  }

  sub_255B56BA4(a1, a2, a3, a4, &v25);
  v16 = (*a1)[4];
  v17 = (*a1)[5];
  v24[0] = v16;
  v24[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B573BC(&__p, a2, v24, a4);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  *(a5 + 48) = -1;
  v18 = v26;
  if (v26 != -1)
  {
    v31 = a5 + 24;
    (*(&off_2867D0958 + v26))(&v31, &v25);
    *(a5 + 48) = v18;
  }

  v19 = v27;
  *(a5 + 72) = 0;
  *(a5 + 56) = v19;
  *(a5 + 64) = v28;
  *(a5 + 96) = -1;
  v20 = v38;
  if (v38 != -1)
  {
    v31 = a5 + 72;
    (*(&off_2867D0958 + v38))(&v31, v37);
    *(a5 + 96) = v20;
    v21 = v38;
    *(a5 + 104) = v39;
    *(a5 + 112) = v40;
    if (v21 != -1)
    {
      (off_2867D00C0[v21])(&v31, v37);
    }

    v38 = -1;
    v22 = v36;
    if (v36 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  *(a5 + 104) = v39;
  *(a5 + 112) = v40;
  v38 = -1;
  v22 = v36;
  if (v36 != -1)
  {
LABEL_24:
    (off_2867D00C0[v22])(&v31, &p_p);
  }

LABEL_25:
  v36 = -1;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v26 != -1)
  {
    (off_2867D00C0[v26])(&__p, &v25);
  }

LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_255B579D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_255A7B4D4(exception_object);
}

void sub_255B57A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_255AB7344(v2);
  sub_255A8508C(va1);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B57A60(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  v5 = a1[5];
  v8 = a1[4];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v6 = 1;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    v6 = (*(*v4 + 40))(v4);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_14:
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v6;
}

void sub_255B57BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_255A7A508(&a9);
  sub_255A7A508(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_255B57BC0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  v5 = a1[5];
  v8 = a1[4];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v6 = 1;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    v6 = (*(*v4 + 48))(v4);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_14:
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v6;
}

void sub_255B57D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_255A7A508(&a9);
  sub_255A7A508(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_255B57D20(uint64_t **a1, uint64_t a2)
{
  result = sub_255B57A60(*a1);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5[4];
  v9 = v5[5];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v6)
    {
      v12 = v8;
      v13 = v9;
      v10 = v9;
      goto LABEL_9;
    }

LABEL_8:
    v12 = v6;
    v13 = v7;
    v10 = v7;
    if (!v7)
    {
LABEL_10:
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      if (!v7)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_9:
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_10;
  }

  if (v6)
  {
    goto LABEL_8;
  }

  v12 = v5[4];
  v13 = 0;
  if (v7)
  {
LABEL_14:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

LABEL_16:
  result = (*(*v12 + 24))(v12, a2);
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = result;
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      return v11;
    }
  }

  return result;
}

uint64_t sub_255B57EF0(void **a1, uint64_t a2)
{
  result = sub_255B57BC0(*a1);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v6)
    {
      v10 = v8 + 8;
      if (!v8)
      {
        v10 = 0;
      }

      v14 = v10;
      v15 = v9;
      v11 = v9;
      goto LABEL_11;
    }

LABEL_10:
    v14 = v6;
    v15 = v7;
    v11 = v7;
    if (!v7)
    {
LABEL_12:
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

LABEL_11:
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  if (v6)
  {
    goto LABEL_10;
  }

  v13 = v8 + 8;
  if (!v8)
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = 0;
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_18:
  result = (*(*v14 + 24))(v14, a2);
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = result;
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      return v12;
    }
  }

  return result;
}

__n128 sub_255B5814C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3C90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255B581B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_121DetectKeypointsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEENS3_10shared_ptrINS6_17IKeypointDetectorEEEPvE3$_0JEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_121DetectKeypointsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEENS3_10shared_ptrINS6_17IKeypointDetectorEEEPvE3$_0JEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_121DetectKeypointsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEENS3_10shared_ptrINS6_17IKeypointDetectorEEEPvE3$_0JEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_121DetectKeypointsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEENS3_10shared_ptrINS6_17IKeypointDetectorEEEPvE3$_0JEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_255B582A0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255B58308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_124ComputeDescriptorsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEERKNS5_13KeypointsDataENS3_10shared_ptrINS6_20IDescriptorExtractorEEEPvE3$_0JEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_124ComputeDescriptorsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEERKNS5_13KeypointsDataENS3_10shared_ptrINS6_20IDescriptorExtractorEEEPvE3$_0JEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_124ComputeDescriptorsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEERKNS5_13KeypointsDataENS3_10shared_ptrINS6_20IDescriptorExtractorEEEPvE3$_0JEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_124ComputeDescriptorsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEERKNS5_13KeypointsDataENS3_10shared_ptrINS6_20IDescriptorExtractorEEEPvE3$_0JEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_255B583F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3BE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255B5845C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_130DetectAndComputeFeaturesHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEENS3_10shared_ptrINS6_18IEndToEndExtractorEEEPvE3$_0JEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_130DetectAndComputeFeaturesHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEENS3_10shared_ptrINS6_18IEndToEndExtractorEEEPvE3$_0JEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_130DetectAndComputeFeaturesHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEENS3_10shared_ptrINS6_18IEndToEndExtractorEEEPvE3$_0JEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_130DetectAndComputeFeaturesHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEENS3_10shared_ptrINS6_18IEndToEndExtractorEEEPvE3$_0JEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_255B58548(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3B88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255B585B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_135ComputeLocalGlobalDescriptorsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEERKNS5_13KeypointsDataENS3_10shared_ptrINS6_18IEndToEndExtractorEEEPvE3$_0JEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_135ComputeLocalGlobalDescriptorsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEERKNS5_13KeypointsDataENS3_10shared_ptrINS6_18IEndToEndExtractorEEEPvE3$_0JEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_135ComputeLocalGlobalDescriptorsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEERKNS5_13KeypointsDataENS3_10shared_ptrINS6_18IEndToEndExtractorEEEPvE3$_0JEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZNS_2lf7feature12_GLOBAL__N_135ComputeLocalGlobalDescriptorsHelperERKNS_3kit3img9ImageViewILNS9_6FormatE1ENS9_13DynamicBufferELNS9_10MutabilityE0EEERKNS5_13KeypointsDataENS3_10shared_ptrINS6_18IEndToEndExtractorEEEPvE3$_0JEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_255B5862C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B58664(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_255B58694(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d2lf7feature17IKeypointDetectorEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d2lf7feature17IKeypointDetectorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d2lf7feature17IKeypointDetectorEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d2lf7feature17IKeypointDetectorEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_255B586F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B58730(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_255B58760(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d2lf7feature20IDescriptorExtractorEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d2lf7feature20IDescriptorExtractorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d2lf7feature20IDescriptorExtractorEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d2lf7feature20IDescriptorExtractorEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_255B587C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B587FC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_255B5882C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d2lf7feature18IEndToEndExtractorEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d2lf7feature18IEndToEndExtractorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d2lf7feature18IEndToEndExtractorEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d2lf7feature18IEndToEndExtractorEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255B5888C(void *result)
{
  if (result)
  {
    v1 = result[5];
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      result = v2;
    }

    v3 = result[3];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      result = v4;
    }

    v5 = result[1];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

int *sub_255B589C0@<X0>(int *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  if (*result != 2 || v3 != 4)
  {
    v5 = v3 == 7 && v2 == 3;
    if (!v5 && v2 != 0)
    {
      if (v2 > 1)
      {
        if (v2 == 2)
        {
          operator new();
        }

        operator new();
      }

      if (v2)
      {
        operator new();
      }
    }
  }

  *a2 = 0;
  return result;
}

void sub_255B58B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7F5A0(va);
  MEMORY[0x259C49320](v2, v3);
  _Unwind_Resume(a1);
}

_DWORD *sub_255B58B54@<X0>(_DWORD *result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = result[1];
  if ((*result != 2 || v4 != 4) && (*result != 3 || v4 != 7))
  {
    v7 = v4 == 1 && result[2] == 1;
    v8 = !v7;
    if (v4 && v8)
    {
      if (v4 > 3)
      {
        if (v4 > 5 && v4 != 6)
        {
          operator new();
        }

        operator new();
      }

      if (v4 != 1)
      {
        operator new();
      }

      v11 = *(a2 + 8);
      v10 = *(a2 + 16);
      v13 = &unk_2867CE598;
      v14 = v11;
      v15 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      sub_255A82C84(&__p);
      v12 = sub_255BAEB68(&__p, 0xEu);
      if (v18 == 1 && SHIBYTE(v17) < 0)
      {
        operator delete(__p);
      }

      if (v12)
      {
        operator new();
      }

      operator new();
    }
  }

  *a3 = 0;
  return result;
}

void sub_255B58EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255A7F5A0(&a12);
  MEMORY[0x259C49320](v12, 0xA1C4034F8F590);
  sub_255A7F5A0(&a9);
  _Unwind_Resume(a1);
}

void sub_255B58F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
    sub_255A7F5A0(&a9);
    _Unwind_Resume(a1);
  }

  sub_255A7F5A0(&a9);
  _Unwind_Resume(a1);
}

void sub_255B58F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7F5A0(va);
  MEMORY[0x259C49320](v5, v4);
  _Unwind_Resume(a1);
}

_DWORD *sub_255B58F9C@<X0>(_DWORD *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if (*result == 2 && v3 == 4)
  {
    operator new();
  }

  v5 = result[2];
  if (v3 == 1 && v5 == 1)
  {
    operator new();
  }

  if (v5 == 1)
  {
    if (v3 == 1)
    {
      operator new();
    }

    operator new();
  }

  if (*result == 3 && v3 == 7)
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

void sub_255B59224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7F5A0(va);
  MEMORY[0x259C49320](v2, 0xA1C40FB386A5DLL);
  _Unwind_Resume(a1);
}

uint64_t sub_255B59260(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_255B592D8(_DWORD *a1)
{
  v1[10] = &unk_2867C5A40;
  sub_255BE71D0(a1, v1);
  operator new();
}

void sub_255B59500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_255A7A508(v10);
  sub_255A7A508(&a10);
  sub_255B599D4(&a9);
  _Unwind_Resume(a1);
}

void sub_255B59548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B59560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B59618(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_255B596C8()
{
  if ((atomic_load_explicit(&qword_27F7DC618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC618))
  {
    sub_255B59764();
  }

  if (byte_27F7DC617 >= 0)
  {
    return &qword_27F7DC600;
  }

  else
  {
    return qword_27F7DC600;
  }
}

void sub_255B59830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_255B59860(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_255B598D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B59910(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 48) = 0;

    JUMPOUT(0x259C49320);
  }

  return result;
}

uint64_t sub_255B59974(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255B599D4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 48);
    if (v3)
    {
      free(v3);
    }

    *(v1 + 48) = 0;
    MEMORY[0x259C49320](v1, 0x1091C406A8758A4);
    return v2;
  }

  return result;
}

void sub_255B59A2C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a1 = v4;
      a2 = v5;
    }

    v2 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = a1;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        a2 = v9;
        if (*(v8 + 49) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *a2 = 0;
        return;
      }
    }
  }

  if (*(a1 + 49) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  v7(v2, 0);
}

void sub_255B59D08(void ***a1, uint64_t a2, uint64_t a3)
{
  if ((((*a1)[3])(a1, a2 + 32) & 1) == 0)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/KeypointDetection/src/KeypointDetector.cpp", 48, "IsValidInputImageResolution(image.Size())", 0x29uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v5 = qword_27F7DD608, v6 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_9:
        qword_27F7DD620(*algn_27F7DD628, "IsValidInputImageResolution(image.Size())", 41, &unk_255C2500B, 0);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_27F7DD608;
      v6 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_30;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "IsValidInputImageResolution(image.Size())", 41, &unk_255C2500B, 0);
    }

    while (v5 != v6);
    if (byte_27F7DD630)
    {
      goto LABEL_9;
    }

LABEL_30:
    abort();
  }

LABEL_10:
  (*(**a1[1] + 32))(&v26);
  v9 = *a1[1];
  v20 = &unk_2867C5350;
  v10 = v27;
  v11 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = v10;
    v32 = v11;
    v29 = v10;
    v30 = v11;
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = v10;
    v22 = v11;
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = v10;
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v10 = v12;
    }
  }

  else
  {
    v31 = v27;
    v32 = 0;
    v29 = v27;
    v30 = 0;
    v21 = v27;
    v22 = 0;
  }

  (*(*v10 + 72))(&v33);
  v13 = *(v33 + 2);
  v23 = *v33;
  v24 = v13;
  v33 = 0;
  MEMORY[0x259C49320]();
  v14 = v21;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      v14 = v21;
    }
  }

  v15 = (*(*v14 + 104))(v14);
  v25 = v15 & ((v15 >> 1) >> 15);
  v16 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  (*(*v9 + 40))(v9, &v20, a3);
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = v28;
  if (v28)
  {
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }
}

void sub_255B5A180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B0A26C(va);
  sub_255A7A508(v2 + 8);
  _Unwind_Resume(a1);
}

void sub_255B5A19C(_Unwind_Exception *a1)
{
  sub_255A7A508(v2 + 8);
  sub_255A7A508(v3 - 120);
  sub_255A7A508(v3 - 104);
  sub_255A7A508(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_255B5A1C8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B5A240(uint64_t result)
{
  v1 = *(result + 8);
  *result = &unk_2867C9650;
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    (*(result + 16))(v1);
    return v2;
  }

  return result;
}

void sub_255B5A298(uint64_t a1)
{
  v1 = *(a1 + 8);
  *a1 = &unk_2867C9650;
  *(a1 + 8) = 0;
  if (v1)
  {
    (*(a1 + 16))(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t *sub_255B5A310(uint64_t *result)
{
  if (result)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
      v1 = vars8;
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

void sub_255B5A390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B5A448(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255B5A5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255B5D394(va);
  sub_255B5C920(v5);
  _Unwind_Resume(a1);
}

void sub_255B5A608(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0x1E000000280;
  *(a1 + 24) = 0x312E7475706E69;
  *(a1 + 47) = 7;
  *(a1 + 48) = 12600;
  *(a1 + 71) = 2;
  *(a1 + 72) = 14648;
  *(a1 + 95) = 2;
  *(a1 + 96) = 12601;
  *(a1 + 119) = 2;
  sub_255B5EAEC();
}

void sub_255B5A698(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
    if ((*(v1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 72));
  if ((*(v1 + 71) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v1 + 48));
  if ((*(v1 + 47) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v1 + 24));
  _Unwind_Resume(exception_object);
}

uint64_t sub_255B5A704(uint64_t a1)
{
  v1 = **(a1 + 160);
  result = *(v1 + 8);
  v3 = *(v1 + 16) | 0x100000000;
  return result;
}

void sub_255B5AAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
    sub_255A7A508(v12);
    _Unwind_Resume(a1);
  }

  sub_255A7A508(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_255B5ABA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = (*(*a1 + 24))(a1);
  if (*(a2 + 32) == v8 && *(a2 + 36) == HIDWORD(v8))
  {
    goto LABEL_13;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/KeypointDetection/src/KeypointModel.cpp", 64, "InputImageSize() == image.Size()", 0x20uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v10 = qword_27F7DD608;
    v11 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_85;
    }

    do
    {
LABEL_10:
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "InputImageSize() == image.Size()", 32, &unk_255C2500B, 0);
    }

    while (v10 != v11);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_12;
  }

  if (byte_27F7DD638 == 1)
  {
    v10 = qword_27F7DD608;
    v11 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  qword_27F7DD620(*algn_27F7DD628, "InputImageSize() == image.Size()", 32, &unk_255C2500B, 0);
LABEL_13:
  v50[0] = &unk_2867C7EC8;
  v50[1] = a3;
  v14 = *(a1 + 168);
  v15 = *(a1 + 160);
  __p = &unk_2867C5710;
  sub_255B5C9C4(a2, &v41);
  if (v14)
  {
    v16 = v50;
  }

  else
  {
    v16 = 0;
  }

  sub_255BC2F38(*(v15 + 16), &__p, v16, v14, &v44);
  v17 = *(&v41 + 1);
  if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (v45)
    {
      goto LABEL_19;
    }
  }

  else if (v45)
  {
LABEL_19:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_70;
  }

  if ((v49 & 1) == 0)
  {
    sub_255A92214();
  }

  sub_255AA246C(v47, &__p);
  v18 = *(&v41 + 4);
  if (DWORD1(v41))
  {
    v19 = HIDWORD(*(&v41 + 4)) == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v18 = 0;
  }

  v39[0] = __p;
  v39[1] = v18;
  v39[2] = v42;
  if (HIDWORD(v18) * HIDWORD(v42) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v20 = qword_27F7DD608, v21 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_35:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_36;
      }
    }

    else
    {
      v20 = qword_27F7DD608;
      v21 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_85;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_35;
  }

LABEL_36:
  sub_255AA246C(v47 + 120, &__p);
  if (DWORD1(v41))
  {
    v22 = HIDWORD(*(&v41 + 4)) == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = HIDWORD(v41);
  }

  if (v23 * v43 == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v24 = qword_27F7DD608, v25 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_50:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_51;
      }
    }

    else
    {
      v24 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_85;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v24 += 16;
    }

    while (v24 != v25);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_50;
  }

LABEL_51:
  sub_255AA246C(v47 + 240, &__p);
  v26 = HIDWORD(*(&v41 + 4));
  if (DWORD1(v41))
  {
    v27 = v26 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    LODWORD(v26) = 0;
  }

  if (v26 * HIDWORD(v42) != -1)
  {
    goto LABEL_65;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v28 = qword_27F7DD608;
    v29 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_85;
    }

    goto LABEL_62;
  }

  if (byte_27F7DD638 == 1)
  {
    v28 = qword_27F7DD608;
    v29 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      do
      {
LABEL_62:
        (*v28)(*(v28 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v28 += 16;
      }

      while (v28 != v29);
      if (byte_27F7DD630)
      {
        goto LABEL_64;
      }

LABEL_85:
      abort();
    }
  }

LABEL_64:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_65:
  sub_255B5DC40(v39, &__p);
  if (v41 != __p)
  {
    if (((v41 - __p) >> 3) <= 0xCCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (__p)
  {
    *&v41 = __p;
    operator delete(__p);
  }

LABEL_70:
  if (v49 == 1)
  {
    v30 = v47;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
      {
        do
        {
          if (*(v31 - 8) == 1)
          {
            v33 = *(v31 - 6);
            if (v33)
            {
              if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v33->__on_zero_shared)(v33);
                std::__shared_weak_count::__release_weak(v33);
              }
            }
          }

          v31 -= 120;
        }

        while (v31 != v30);
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }
  }

  v44 = &unk_2867C51A8;
  v34 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  return j_nullsub_87_0(v50);
}

void sub_255B5BB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  sub_255A977C8(&a29);
  j_nullsub_87_0(v29 - 192);
  _Unwind_Resume(a1);
}

uint64_t sub_255B5BC44(uint64_t a1)
{
  *a1 = &unk_2867C9468;
  v2 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_10:
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(a1 + 104));
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_18;
  }

LABEL_16:
  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_18:
  operator delete(*(a1 + 32));
  return a1;
}

void sub_255B5BDAC(uint64_t a1)
{
  *a1 = &unk_2867C9468;
  v2 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_10:
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(a1 + 104));
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(a1 + 80));
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_12:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    operator delete(*(a1 + 32));
LABEL_13:

    JUMPOUT(0x259C49320);
  }

LABEL_19:
  operator delete(*(a1 + 56));
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  goto LABEL_20;
}

void sub_255B5C484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  sub_255A7A508(va1);
  sub_255A7A508(va);
  sub_255B5C724((v11 - 88));
  _Unwind_Resume(a1);
}

void sub_255B5C4D4(_Unwind_Exception *a1)
{
  *v3 = v2;
  sub_255A829E0(&v1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  sub_255B5C724((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_255B5C51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v11 - 65) < 0)
  {
    operator delete(*(v11 - 88));
    if ((v10 & 1) == 0)
    {
LABEL_6:
      sub_255B5C7E0(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v10)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v9);
  sub_255B5C7E0(&a9);
  _Unwind_Resume(a1);
}

void sub_255B5C590(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867D00F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B5C60C(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v2 = *(a2 + 8);
    if (v2 != *a2)
    {
      if ((0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 2)) < 0x924924924924925)
      {
        operator new();
      }

      sub_255B5C70C();
    }

    *(result + 24) = 1;
  }

  return result;
}

void sub_255B5C6D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  if (*(v1 + 24) == 1)
  {
    v4 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_255B5C724(uint64_t *a1)
{
  a1[1] = &unk_2867C51A8;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_255B5C7E0(uint64_t result)
{
  *(result + 32) = &unk_2867C51A8;
  v1 = *(result + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v5;
    if (*(v5 + 24) != 1)
    {
      return result;
    }
  }

  else if (*(result + 24) != 1)
  {
    return result;
  }

  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 8))(v2);
    result = v3;
  }

  v4 = *(result + 8);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      return v6;
    }
  }

  return result;
}

uint64_t sub_255B5C920(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 72));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*(a1 + 24));
  return a1;
}

void sub_255B5C9C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 2, a1 + 40, 2, 4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 4;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255B5CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B5CB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x277D85DE8];
  LOBYTE(v26[0]) = 0;
  v28 = 0;
  if (*(a3 + 24) == 1)
  {
    if (*(a3 + 23) < 0)
    {
      sub_255A7E018(v26, *a3, *(a3 + 8));
    }

    else
    {
      *v26 = *a3;
      v27 = *(a3 + 16);
    }

    v28 = 1;
  }

  v6 = *(a2 + 12);
  v5 = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    sub_255A7E018(&v56, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v56 = *(a2 + 24);
    v57 = *(a2 + 40);
  }

  v58 = 1;
  LODWORD(v59) = 65;
  BYTE4(v59) = 1;
  v60 = 1;
  v61 = 1;
  v62 = v6;
  v63 = 1;
  v64 = v5;
  v65 = 1;
  v66 = 1;
  v67 = 1;
  v68 = 1;
  v69 = 1;
  v70 = 1;
  v71 = 0;
  v73 = 0;
  v74 = 0;
  v76 = 0;
  sub_255A82028(__p, &v56);
  sub_255B5D5E8(v41, __p, 1uLL);
  if (v55 != 1)
  {
LABEL_13:
    if (v52 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v54 != &v53)
  {
    if (v54)
    {
      (*(*v54 + 40))(v54, v7, v8);
    }

    goto LABEL_13;
  }

  (*(*v54 + 32))(v54);
  if (v52 != 1)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v51 == &v50)
  {
    (*(*v51 + 32))(v51);
  }

  else if (v51)
  {
    (*(*v51 + 40))(v51, v7, v8);
  }

LABEL_20:
  if (v44 == 1 && SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 71) < 0)
  {
    sub_255A7E018(__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    *__p = *(a2 + 48);
    v43 = *(a2 + 64);
  }

  v44 = 1;
  if (*(a2 + 95) < 0)
  {
    sub_255A7E018(&v45, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v45 = *(a2 + 72);
    v46 = *(a2 + 88);
  }

  v47 = 1;
  if (*(a2 + 119) < 0)
  {
    sub_255A7E018(&v48, *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v48 = *(a2 + 96);
    v49 = *(a2 + 112);
  }

  v50 = 1;
  sub_255B5D898(&v39, __p, 3uLL);
  if (v50 == 1 && SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (v47 == 1 && SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (v44 == 1 && SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  v29 = *a2;
  v30 = *(a2 + 8);
  if (v28 != 1)
  {
    v9 = (a2 + 120);
    if (*(a2 + 143) < 0)
    {
      v10 = (a2 + 128);
      goto LABEL_47;
    }

LABEL_45:
    v31 = *v9;
    v32 = v9[2];
    goto LABEL_48;
  }

  v9 = v26;
  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  v10 = &v26[1];
LABEL_47:
  sub_255A7E018(&v31, *v9, *v10);
LABEL_48:
  sub_255B5DB04(v33, v41);
  sub_255A826BC(&v34, &v39);
  LOBYTE(v36) = 0;
  v38 = 0;
  v11 = v39;
  if (v39)
  {
    v12 = v40;
    v13 = v39;
    if (v40 != v39)
    {
      do
      {
        v14 = v12;
        v12 -= 4;
        if (*(v14 - 8) == 1 && *(v14 - 9) < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v39;
    }

    v40 = v11;
    operator delete(v13);
  }

  __p[0] = v41;
  sub_255A8250C(__p);
  if (v76 != 1)
  {
LABEL_61:
    if (v73 != 1)
    {
      goto LABEL_68;
    }

    goto LABEL_62;
  }

  if (v75 != &v74)
  {
    if (v75)
    {
      (*(*v75 + 40))(v75);
    }

    goto LABEL_61;
  }

  (*(*v75 + 32))(v75);
  if (v73 != 1)
  {
    goto LABEL_68;
  }

LABEL_62:
  if (v72 == &v71)
  {
    (*(*v72 + 32))(v72);
  }

  else if (v72)
  {
    (*(*v72 + 40))(v72);
  }

LABEL_68:
  if (v58 == 1 && SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  v15 = *(a2 + 144);
  LOBYTE(v56) = 0;
  v58 = 0;
  LOWORD(v60) = 0;
  v59 = v15;
  *a1 = &unk_2867C7F40;
  sub_255A81DE0(a1 + 8, &v29);
  *a1 = &unk_2867C7EA0;
  sub_255B5C60C(a1 + 128, &v56);
  *(a1 + 160) = v59;
  *(a1 + 168) = v60;
  if (v58 == 1 && v56)
  {
    *(&v56 + 1) = v56;
    operator delete(v56);
  }

  if (v38 == 1)
  {
    v16 = v36;
    if (v36)
    {
      v17 = v37;
      v18 = v36;
      if (v37 != v36)
      {
        do
        {
          v19 = *(v17 - 1);
          v17 -= 3;
          if (v19 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v18 = v36;
      }

      v37 = v16;
      operator delete(v18);
    }
  }

  v20 = v34;
  if (v34)
  {
    v21 = v35;
    v22 = v34;
    if (v35 != v34)
    {
      do
      {
        v23 = v21;
        v21 -= 4;
        if (*(v23 - 8) == 1 && *(v23 - 9) < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = v34;
    }

    v35 = v20;
    operator delete(v22);
  }

  *&v56 = v33;
  sub_255A8250C(&v56);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (v28 == 1 && SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  *a1 = &unk_2867C91D8;
  v24 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255B5D218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B5D320(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  if (a55 == 1 && a54 < 0)
  {
    operator delete(__p);
  }

  if (a48 == 1 && a47 < 0)
  {
    operator delete(a42);
  }

  if (a41 == 1 && a40 < 0)
  {
    operator delete(a35);
  }

  JUMPOUT(0x255B5D2E4);
}

uint64_t sub_255B5D394(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);
  return a1;
}

void sub_255B5D414(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B5D4B4(uint64_t a1)
{
  if (*(a1 + 160) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(a1 + 152);
  if (v2 != a1 + 128)
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

LABEL_5:
    if (*(a1 + 120) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  (*(*v2 + 32))(v2);
  if (*(a1 + 120) != 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  v3 = *(a1 + 112);
  if (v3 == a1 + 88)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

LABEL_12:
  if (*(a1 + 24) != 1 || (*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void *sub_255B5D5E8(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x186186186186187)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255B5D6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_255B5D714(&a11);
  *(v11 + 8) = v12;
  sub_255A8250C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255B5D714(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = 0;
      while (1)
      {
        v7 = v4 + v6;
        if (*(v4 + v6 - 8) != 1)
        {
          goto LABEL_9;
        }

        v8 = *(v7 - 16);
        if (v7 - 40 != v8)
        {
          break;
        }

        (*(*v8 + 32))(v8);
        if (*(v7 - 48) == 1)
        {
LABEL_10:
          v9 = *(v4 + v6 - 56);
          if (v7 - 80 == v9)
          {
            (*(*v9 + 32))(v9);
          }

          else if (v9)
          {
            (*(*v9 + 40))(v9);
          }
        }

LABEL_16:
        if (*(v4 + v6 - 144) == 1 && *(v4 + v6 - 145) < 0)
        {
          operator delete(*(v7 - 168));
        }

        v6 -= 168;
        if (v4 + v6 == v5)
        {
          return a1;
        }
      }

      if (v8)
      {
        (*(*v8 + 40))(v8);
      }

LABEL_9:
      if (*(v7 - 48) == 1)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  return a1;
}

void *sub_255B5D898(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255B5D9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  if (*(v13 + 24) == 1 && *(v13 + 23) < 0)
  {
    operator delete(*v13);
  }

  sub_255B5DA94(&a11);
  *(v11 + 8) = v12;
  sub_255B5DA00(&a9);
  _Unwind_Resume(a1);
}

void ****sub_255B5DA00(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = v4;
          v4 -= 4;
          if (*(v6 - 8) == 1 && *(v6 - 9) < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_255B5DA94(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = v3;
      v3 -= 4;
      if (*(v5 - 8) == 1 && *(v5 - 9) < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void *sub_255B5DB04(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v2 - *a2) >> 3) < 0x186186186186187)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255B5DC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_255B5D714(&a11);
  *(v11 + 8) = v12;
  sub_255A8250C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255B5DC40@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(result + 8);
  if (v4 >> 33)
  {
    v5 = v4 > 1;
  }

  else
  {
    v5 = 0;
  }

  v13 = *(result + 8);
  if (!v5)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ImageProcessing/src/NonMaximumSuppression.cpp", 63, "w > 1 && h > 1", 0xEuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v6 = qword_27F7DD608, v7 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_12:
        result = qword_27F7DD620(*algn_27F7DD628, "w > 1 && h > 1", 14, &unk_255C2500B, 0);
        v4 = v13;
        goto LABEL_13;
      }
    }

    else
    {
      v6 = qword_27F7DD608;
      v7 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "w > 1 && h > 1", 14, &unk_255C2500B, 0);
    }

    while (v6 != v7);
    if (byte_27F7DD630)
    {
      goto LABEL_12;
    }

LABEL_20:
    abort();
  }

LABEL_13:
  if (HIDWORD(v4) != 2)
  {
    if (v4 != 2)
    {
      v11 = *(*v2 + 4 * (*(v2 + 16) + *(v2 + 20)));
      operator new();
    }

    *a2 = 0;
LABEL_18:
    *(v2 + 16);
    v10 = **v2;
    sub_255B5E668();
  }

  if (v4)
  {
    goto LABEL_18;
  }

  *a2 = 0;
  *a2 = 0;
  return result;
}

void sub_255B5E5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = v15;
  if (v15)
  {
    a9[1] = v15;
    v16 = a1;
    operator delete(v15);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_255B5E9B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B5E9D4(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_255A7B4E8();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_255A7B590();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_255B5ED5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  __cxa_free_exception(v41);
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  sub_255A7F000(&a23, MEMORY[0x277D82818]);
  MEMORY[0x259C49250](&a41);
  _Unwind_Resume(a1);
}

void sub_255B5EDCC(unsigned int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1 <= 3 && a1 != 2)
  {
    if (a1 <= 1)
    {
      sub_255A82C84(__p);
      sub_255BAEB68(__p, 0x10u);
      if (v8 == 1 && v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_18:
    sub_255AA8504();
    v7 = 10;
    strcpy(__p, "lf-320x320");
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/Densefeat2.cpp", 165, "device == DeviceType::Any || device == DeviceType::ANE || device == DeviceType::CPU", 0x53uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v2 = qword_27F7DD608, v3 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_17:
      qword_27F7DD620(*algn_27F7DD628, "device == DeviceType::Any || device == DeviceType::ANE || device == DeviceType::CPU", 83, &unk_255C2500B, 0);
      goto LABEL_18;
    }
  }

  else
  {
    v2 = qword_27F7DD608;
    v3 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_19;
    }
  }

  do
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v2 += 16;
    v5(v4, "device == DeviceType::Any || device == DeviceType::ANE || device == DeviceType::CPU", 83, &unk_255C2500B, 0);
  }

  while (v2 != v3);
  if (byte_27F7DD630)
  {
    goto LABEL_17;
  }

LABEL_19:
  abort();
}

void sub_255B5F17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a20 == 1 && a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B5F204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 160);
  v6 = *(a2 + 183);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 168);
  }

  else
  {
    v5 = a2 + 160;
  }

  v7 = 7;
  if (v6 < 7)
  {
    v7 = v6;
  }

  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (!v8)
  {
LABEL_25:
    sub_255A93C3C("string_view::substr");
  }

  if (v6 < 7 || ((v10 = (v5 + v9), v11 = *v10, v12 = *(v10 + 3), v11 == 1853186606) ? (v13 = v12 == 1701602414) : (v13 = 0), !v13))
  {
    v14 = 4;
    if (v6 < 4)
    {
      v14 = v6;
    }

    v8 = v6 >= v14;
    v15 = v6 - v14;
    if (!v8)
    {
      goto LABEL_25;
    }

    if (v6 < 4 || *(v5 + v15) != 1818848558)
    {
      v17[0] = 0;
      v18 = 0;
      sub_255B71274(v19, a2, v17);
      sub_255B60C64(v19);
    }
  }

  v17[0] = 0;
  v18 = 0;
  v16[0] = &unk_2867CE598;
  v16[1] = v3;
  v16[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_255B718F4(v19, a2, v17, v16);
  sub_255B60A30(v19);
}

void sub_255B5F530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  sub_255A81798(&a28);
  sub_255A7F5A0(&a15);
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    sub_255A7F5A0(&a10);
    _Unwind_Resume(a1);
  }

  sub_255A7F5A0(&a10);
  _Unwind_Resume(a1);
}

void *sub_255B5F5D4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    MEMORY[0x259C49320](v1, 0x60C40CE5A77A8);
    return v2;
  }

  return result;
}

void *sub_255B5F69C(void *a1)
{
  *a1 = &unk_2867D0140;
  v2 = a1[44];
  a1[44] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));
  return a1;
}

void *sub_255B5F788(void *a1)
{
  *a1 = &unk_2867D0140;
  v2 = a1[44];
  a1[44] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));
  return a1;
}

uint64_t sub_255B5F874(uint64_t a1)
{
  sub_255A81DE0(v11, (**(a1 + 352) + 8));
  v1 = v11[0];
  if (v18 == 1)
  {
    v2 = __p;
    if (__p)
    {
      v3 = v17;
      v4 = __p;
      if (v17 != __p)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = __p;
      }

      v17 = v2;
      operator delete(v4);
    }
  }

  v6 = v14;
  if (v14)
  {
    v7 = v15;
    v8 = v14;
    if (v15 != v14)
    {
      do
      {
        v9 = v7;
        v7 -= 4;
        if (*(v9 - 8) == 1 && *(v9 - 9) < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v14;
    }

    v15 = v6;
    operator delete(v8);
  }

  v19 = &v13;
  sub_255A8250C(&v19);
  if (v12 < 0)
  {
    operator delete(v11[2]);
  }

  return v1;
}

void sub_255B5F9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 40))(a1, a2 + 32))
  {
    goto LABEL_10;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/Densefeat2.cpp", 96, "IsValidInputImageResolution(image.Size())", 0x29uLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v6 = qword_27F7DD608, v7 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "IsValidInputImageResolution(image.Size())", 41, &unk_255C2500B, 0);
LABEL_10:
      v36[0] = &unk_2867C7EC8;
      v36[1] = a3;
      v10 = *(a1 + 360);
      if (*(a1 + 360))
      {
        v11 = v36;
      }

      else
      {
        v11 = 0;
      }

      sub_255B59A2C(a2, &v35);
      v12 = *(a1 + 352);
      v27.__r_.__value_.__r.__words[0] = &unk_2867C5710;
      sub_255B62A60(a2, &v27.__r_.__value_.__l.__size_);
      sub_255BC31B4(*(v12 + 16), &v27, v11, v10, &v30);
      v13 = v27.__r_.__value_.__r.__words[2];
      if (v27.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v27.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v31)
      {
        sub_255B60470("Error:");
        v20 = *(v32 + 23);
        if (v20 >= 0)
        {
          v21 = v32;
        }

        else
        {
          v21 = *v32;
        }

        if (v20 >= 0)
        {
          v22 = *(v32 + 23);
        }

        else
        {
          v22 = *(v32 + 8);
        }

        v23 = std::string::append(&v29, v21, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v27;
        }

        else
        {
          v25 = v27.__r_.__value_.__r.__words[0];
        }

        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v27.__r_.__value_.__l.__size_;
        }

        sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/Densefeat2.cpp", 118, &unk_255C2500B, 0, v25, size, sub_255C101E0);
        std::string::~string(&v27);
        std::string::~string(&v29);
        abort();
      }

      if (v34)
      {
        goto LABEL_26;
      }

      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/Densefeat2.cpp", 120, "ret_score_desc.outputs.has_value()", 0x22uLL, "No error detected but output empty.", 0x23uLL, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_25:
          qword_27F7DD620(*algn_27F7DD628, "ret_score_desc.outputs.has_value()", 34, "No error detected but output empty.", 35);
LABEL_26:
          if (*(__p + 30) != 1)
          {
            sub_255A7C284();
          }

          sub_255B62CB0(__p, &v27);
          v16 = v27.__r_.__value_.__r.__words[2];
          if (HIDWORD(v27.__r_.__value_.__r.__words[1]))
          {
            v17 = LODWORD(v27.__r_.__value_.__r.__words[2]) == 0;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            v16 = 0;
          }

          if (v16 * HIDWORD(v28) != -1)
          {
LABEL_41:
            sub_255B78CC8(__p + 8, 0x80uLL, &v29);
            operator new();
          }

          sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
          if (byte_27F7DD630 == 1)
          {
            if (byte_27F7DD638 != 1 || (v18 = qword_27F7DD608, v19 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
            {
LABEL_40:
              qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
              goto LABEL_41;
            }
          }

          else
          {
            v18 = qword_27F7DD608;
            v19 = *algn_27F7DD610;
            if (qword_27F7DD608 == *algn_27F7DD610)
            {
              goto LABEL_42;
            }
          }

          do
          {
            (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
            v18 += 16;
          }

          while (v18 != v19);
          if (byte_27F7DD630)
          {
            goto LABEL_40;
          }

LABEL_42:
          abort();
        }
      }

      else
      {
        v14 = qword_27F7DD608;
        v15 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_42;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "ret_score_desc.outputs.has_value()", 34, "No error detected but output empty.", 35);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v6 = qword_27F7DD608;
    v7 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_42;
    }
  }

  do
  {
    v9 = *v6;
    v8 = *(v6 + 8);
    v6 += 16;
    v9(v8, "IsValidInputImageResolution(image.Size())", 41, &unk_255C2500B, 0);
  }

  while (v6 != v7);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_42;
  }

  goto LABEL_9;
}

void sub_255B60338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_255B61C44(&a34);
  v36 = *(v34 - 136);
  *(v34 - 136) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  j_nullsub_87_0(v34 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_255B60470(uint64_t a1)
{
  v3 = 0;
  v4[0] = v2;
  v4[1] = a1;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a1;
  v5 = v4;
  sub_255B62BBC(&v5);
  if (v3 == -1)
  {
    sub_255A7C284();
  }

  v4[0] = &v5;
  result = (off_2867D02C0[v3])(v4, v2);
  if (v3 != -1)
  {
    return (off_2867D02A8[v3])(v4, v2);
  }

  return result;
}

uint64_t sub_255B60548(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (v2[95] < 0)
      {
        operator delete(*(v2 + 9));
        if (v2[64] == 1)
        {
LABEL_10:
          v6 = *(v2 + 5);
          if (v6)
          {
            v7 = *(v2 + 6);
            v8 = *(v2 + 5);
            if (v7 != v6)
            {
              do
              {
                v9 = *(v7 - 1);
                v7 -= 3;
                if (v9 < 0)
                {
                  operator delete(*v7);
                }
              }

              while (v7 != v6);
              v8 = *(v2 + 5);
            }

            *(v2 + 6) = v6;
            operator delete(v8);
          }
        }
      }

      else if (v2[64] == 1)
      {
        goto LABEL_10;
      }

      v10 = *(v2 + 2);
      if (v10)
      {
        *(v2 + 3) = v10;
        operator delete(v10);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_255B60630(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 24));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*a1);
  return a1;
}

uint64_t sub_255B606BC(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_255B60718(void *a1)
{
  *a1 = &unk_2867D0140;
  v2 = a1[44];
  a1[44] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B60834(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    return *(a1 + 272);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_255B60928(uint64_t a1)
{
  if (*(a1 + 320) == 1 && *(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
    sub_255B60548(a1 + 184);
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
LABEL_4:
      if ((*(a1 + 159) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_255B60548(a1 + 184);
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  operator delete(*(a1 + 160));
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(a1 + 136));
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(a1 + 112));
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a1 + 88));
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    operator delete(*(a1 + 40));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_18;
  }

LABEL_16:
  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_18:
  operator delete(*(a1 + 16));
  return a1;
}

void sub_255B60C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_255B5C7E0(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  sub_255B5C7E0(&a16);
  _Unwind_Resume(a1);
}

void sub_255B60E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_255B5C7E0(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  sub_255B5C7E0(&a16);
  _Unwind_Resume(a1);
}

void sub_255B61190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  sub_255A7A508(va1);
  sub_255A7A508(va);
  sub_255B5C724(va2);
  _Unwind_Resume(a1);
}

void sub_255B611E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B5C724(va);
  _Unwind_Resume(a1);
}

void sub_255B61314(_Unwind_Exception *a1)
{
  *v3 = v2;
  sub_255A829E0(&v1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_255B61338(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_255B61370(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867D01C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255B616E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  sub_255A7A508(va1);
  sub_255A7A508(va);
  sub_255B5C724(va2);
  _Unwind_Resume(a1);
}

void sub_255B61734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B5C724(va);
  _Unwind_Resume(a1);
}

void sub_255B61840(_Unwind_Exception *a1)
{
  *v3 = v2;
  sub_255A829E0(&v1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_255B61864(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_255B6189C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867D0210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B61918(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 39) < 0)
  {
    sub_255A7E018((a1 + 16), a2[2], a2[3]);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 16) = v5;
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *(a2 + 5);
      *(a1 + 56) = a2[7];
      *(a1 + 40) = v6;
      goto LABEL_6;
    }
  }

  sub_255A7E018((a1 + 40), a2[5], a2[6]);
LABEL_6:
  sub_255B61AF8(a1 + 64, a2 + 4);
  if (*(a2 + 183) < 0)
  {
    sub_255A7E018((a1 + 160), a2[20], a2[21]);
  }

  else
  {
    v7 = *(a2 + 10);
    *(a1 + 176) = a2[22];
    *(a1 + 160) = v7;
  }

  sub_255B61EA4(a1 + 184, (a2 + 23));
  *(a1 + 224) = *(a2 + 14);
  v8 = *(a2 + 15);
  v9 = *(a2 + 16);
  v10 = *(a2 + 17);
  *(a1 + 288) = a2[36];
  *(a1 + 256) = v9;
  *(a1 + 272) = v10;
  *(a1 + 240) = v8;
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  if (*(a2 + 320) == 1)
  {
    if (*(a2 + 319) < 0)
    {
      sub_255A7E018((a1 + 296), a2[37], a2[38]);
    }

    else
    {
      v11 = *(a2 + 37);
      *(a1 + 312) = a2[39];
      *(a1 + 296) = v11;
    }

    *(a1 + 320) = 1;
  }

  v12 = a2[41];
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 328) = v12;
  return a1;
}

void sub_255B61A68(_Unwind_Exception *a1)
{
  if (*(v1 + 320) == 1 && *(v1 + 319) < 0)
  {
    operator delete(*v2);
  }

  sub_255B60548(v1 + 184);
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  sub_255B60630(v1 + 64);
  sub_255B606BC(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_255B61AF8(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_255A7E018(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_255A7E018((a1 + 24), *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    sub_255A7E018((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_255A7E018((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  return a1;
}

void sub_255B61BD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_255B61C44(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      if (v3 != v2)
      {
        do
        {
          v5 = v3 - 128;
          v6 = *(v3 - 8);
          if (v6 != -1)
          {
            (off_2867D0290[v6])(&v9, v3 - 128);
          }

          *(v3 - 8) = -1;
          v3 -= 128;
        }

        while (v5 != v2);
        v4 = *(a1 + 32);
      }

      *(a1 + 40) = v2;
      operator delete(v4);
    }
  }

  *a1 = &unk_2867C51A8;
  v7 = *(a1 + 24);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_255B61D5C(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_255B9748C(a1, v4);
  if ((v14 & 1) == 0)
  {
    v3 = sub_255B61E3C(v4);
    sub_255B61E94(v3);
  }

  sub_255B61EA4(a2, v4);
  if (v14 == 1)
  {
    sub_255B60548(v4);
  }

  else if (v13 == 1)
  {
    if (v12 == 1)
    {
      if (v11 < 0)
      {
        operator delete(__p);
      }

      if (v9 < 0)
      {
        operator delete(v8);
      }
    }

    if (v7 == 1 && v6 < 0)
    {
      operator delete(v5);
    }
  }
}

uint64_t sub_255B61E3C(uint64_t result)
{
  if (*(result + 120))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2867C4000;
    __cxa_throw(exception, &unk_2867C9F48, std::exception::~exception);
  }

  return result;
}

uint64_t sub_255B61EA4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_255B61FE8(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_255B6217C(a1, (i + 2));
  }

  return a1;
}

void sub_255B61FE8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_255A7B590();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_255B6217C(void *a1, uint64_t a2)
{
  v13[0] = a2;
  v13[1] = a2 + 24;
  v14 = 0;
  sub_255B62710(&v14, v13);
  v4 = v14;
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v14;
    if (v14 >= v5)
    {
      v7 = v14 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & v14;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    sub_255B624C4();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (sub_255B97308((v9 + 2), a2))
        {
          return v9;
        }
      }

      else if ((v11 & (v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= v5)
    {
      v10 %= v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (!sub_255B97308((v9 + 2), a2))
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_255B62600(_Unwind_Exception *a1)
{
  sub_255B6286C(v2);
  sub_255B62650(v1);
  _Unwind_Resume(a1);
}

void sub_255B6261C(_Unwind_Exception *a1)
{
  sub_255A82960(v4);
  v6 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v6;
    operator delete(v6);
  }

  sub_255B62650(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_255B62650(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 95) < 0)
      {
        operator delete(*(v2 + 72));
      }

      if (*(v2 + 64) == 1)
      {
        v3 = *(v2 + 40);
        if (v3)
        {
          v4 = *(v2 + 48);
          v5 = *(v2 + 40);
          if (v4 != v3)
          {
            do
            {
              v6 = *(v4 - 1);
              v4 -= 3;
              if (v6 < 0)
              {
                operator delete(*v4);
              }
            }

            while (v4 != v3);
            v5 = *(v2 + 40);
          }

          *(v2 + 48) = v3;
          operator delete(v5);
        }
      }

      v7 = *(v2 + 16);
      if (v7)
      {
        *(v2 + 24) = v7;
        operator delete(v7);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_255B62710(uint64_t *result, uint64_t a2)
{
  v2 = 2654435769;
  v3 = **a2;
  v4 = *(*a2 + 8);
  v5 = 2654435769;
  if (v3 != v4)
  {
    v6 = 0;
    do
    {
      v7 = (v3[1] + 2654435769 + ((*v3 + 2654435769u) >> 2) + ((*v3 + 2654435769) << 6)) ^ (*v3 + 2654435769);
      v8 = (v3[2] + 2654435769 + (v7 >> 2) + (v7 << 6)) ^ v7;
      v9 = (v3[3] + 2654435769 + (v8 >> 2) + (v8 << 6)) ^ v8;
      v6 ^= (v6 >> 2) + 2654435769u + (v6 << 6) + ((v3[4] + 2654435769 + (v9 >> 2) + (v9 << 6)) ^ v9);
      v3 += 5;
    }

    while (v3 != v4);
    v5 = v6 + 2654435769u;
  }

  v10 = (v5 + (*result >> 2) + (*result << 6)) ^ *result;
  *result = v10;
  v11 = *(a2 + 8);
  if (*(v11 + 24) == 1)
  {
    v12 = *v11;
    v13 = v11[1];
    if (*v11 != v13)
    {
      v14 = result;
      v15 = 0;
      do
      {
        v16 = *(v12 + 23);
        if (v16 >= 0)
        {
          v17 = v12;
        }

        else
        {
          v17 = *v12;
        }

        if (v16 >= 0)
        {
          v18 = *(v12 + 23);
        }

        else
        {
          v18 = *(v12 + 8);
        }

        v15 ^= (v15 >> 2) + 2654435769u + (v15 << 6) + sub_255A96750(&v19, v17, v18);
        v12 += 24;
      }

      while (v12 != v13);
      v2 = v15 + 2654435769u;
      result = v14;
      v10 = *v14;
    }
  }

  *result = (v2 + (v10 >> 2) + (v10 << 6)) ^ v10;
  return result;
}

uint64_t sub_255B6286C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v2;
      operator delete(v4);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_255B628FC(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    return sub_255B60548(result);
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(*(result + 80));
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(*(result + 48));
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(*(result + 16));
      return v3;
    }
  }

  return result;
}

uint64_t sub_255B629AC(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(a1 + 56);
      v4 = *(a1 + 48);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *(a1 + 48);
      }

      *(a1 + 56) = v2;
      operator delete(v4);
    }
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_255B62A60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 2, a1 + 40, 2, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 1;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255B62BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

size_t sub_255B62BBC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867D02A8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_255B62CB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v24 = *MEMORY[0x277D85DE8];
  if ((*(result + 48) & 0x20) == 0)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/include/Kit/ML/DataView.h", 727, "format.Contains(FormatFlags::FLOAT16)", 0x25uLL, "The DataView does not contain half data", 0x27uLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_9:
        result = qword_27F7DD620(*algn_27F7DD628, "format.Contains(FormatFlags::FLOAT16)", 37, "The DataView does not contain half data", 39);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27F7DD608;
      v5 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_35;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "format.Contains(FormatFlags::FLOAT16)", 37, "The DataView does not contain half data", 39);
    }

    while (v4 != v5);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_9;
  }

LABEL_10:
  if (*(v2 + 112) == 1)
  {
    if (*(v2 + 108) == 1 && *(v2 + 96))
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 72);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v10 = v8;
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
          v8 = v10;
        }
      }

      result = (*(*v8 + 88))(v8, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v11 = 96;
  }

  else
  {
    v11 = 40;
  }

  v12 = *(v2 + v11);
  v13 = *(v2 + 36);
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v2))) & 1) != 0 || (v14 = *(v2 + 16)) == 0)
  {
    v14 = 0;
    v23 = 0uLL;
  }

  else
  {
    v23 = *v2;
  }

  *(a2 + 28) = *(v2 + 20);
  *a2 = v12;
  *(a2 + 8) = v23;
  *(a2 + 24) = v14;
  *(a2 + 44) = v13;
  if (v14 * v13 != -1)
  {
    v15 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 != 1)
  {
    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (byte_27F7DD638 == 1)
  {
    v16 = qword_27F7DD608;
    v17 = *algn_27F7DD610;
    if (qword_27F7DD608 != *algn_27F7DD610)
    {
      do
      {
LABEL_30:
        v19 = *v16;
        v18 = *(v16 + 8);
        v16 += 16;
        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v16 != v17);
      if (byte_27F7DD630)
      {
        goto LABEL_32;
      }

LABEL_35:
      abort();
    }
  }

LABEL_32:
  v21 = qword_27F7DD620;
  v20 = *algn_27F7DD628;
  v22 = *MEMORY[0x277D85DE8];

  return v21(v20, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

void sub_255B6304C(void *a1)
{
  *a1 = &unk_2867C95B8;
  a1[1] = &unk_2867C9618;
  operator new();
}

void sub_255B63570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  va_copy(va4, va3);
  v18 = va_arg(va4, void);
  v20 = va_arg(va4, void);
  v21 = va_arg(va4, void);
  sub_255A7F5A0(va3);
  sub_255B60928(va4);
  sub_255A7F5A0(va2);
  MEMORY[0x259C49320](v4, 0x10B3C4006B73F45);
  sub_255A7F5A0(va1);
  sub_255A7F5A0(va);
  MEMORY[0x259C49320](v2, v3);
  _Unwind_Resume(a1);
}

void sub_255B6393C(int a1)
{
  if (a1 == 5)
  {
LABEL_10:
    sub_255B65ED0();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/LearnedFeatures/EndToEndExtraction/src/EndToEndExtractor.cpp", 114, "type == EndToEndModelType::ATUHardNetGlobalFeat", 0x2FuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v1 = qword_27F7DD608, v2 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "type == EndToEndModelType::ATUHardNetGlobalFeat", 47, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v1 = qword_27F7DD608;
    v2 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v4 = *v1;
    v3 = *(v1 + 8);
    v1 += 16;
    v4(v3, "type == EndToEndModelType::ATUHardNetGlobalFeat", 47, &unk_255C2500B, 0);
  }

  while (v1 != v2);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255B63B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((*(v15 - 73) & 0x80) != 0)
  {
    operator delete(*(v15 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255B63B88(uint64_t result)
{
  *result = &unk_2867C95B8;
  v1 = *(result + 16);
  *(result + 8) = &unk_2867C9618;
  *(result + 16) = 0;
  if (v1)
  {
    v2 = result;
    (*(result + 24))(v1);
    return v2;
  }

  return result;
}

void sub_255B63C00(uint64_t a1)
{
  *a1 = &unk_2867C95B8;
  v1 = *(a1 + 16);
  *(a1 + 8) = &unk_2867C9618;
  *(a1 + 16) = 0;
  if (v1)
  {
    (*(a1 + 24))(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B63C98(uint64_t result)
{
  *(result - 8) = &unk_2867C95B8;
  v1 = *(result + 8);
  *result = &unk_2867C9618;
  *(result + 8) = 0;
  if (v1)
  {
    return (*(result + 16))(v1);
  }

  return result;
}

void sub_255B63D00(uint64_t a1)
{
  *(a1 - 8) = &unk_2867C95B8;
  v1 = *(a1 + 8);
  *a1 = &unk_2867C9618;
  *(a1 + 8) = 0;
  if (v1)
  {
    (*(a1 + 16))(v1);
  }

  JUMPOUT(0x259C49320);
}

void sub_255B63D98(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255B63DD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_255B63E00(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d2lf7feature14IEndToEndModelEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d2lf7feature14IEndToEndModelEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d2lf7feature14IEndToEndModelEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d2lf7feature14IEndToEndModelEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_255B63E60(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }

    JUMPOUT(0x259C49320);
  }

  return result;
}

void sub_255B63EF4(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255A82C84(__p);
  sub_255BAEB68(__p, 0xDu);
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_255A7EFF0();
  if (a2)
  {
    v4 = 15;
    strcpy(__p, "main_lf-640x480");
    v6 = 0;
    v7 = 0;
    v5 = 0;
    operator new();
  }

  v4 = 4;
  strcpy(__p, "main");
  operator new();
}

void sub_255B64894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_255B629AC(v27);
  sub_255B629AC(a10);
  sub_255B629AC(a11);
  sub_255B629AC(a13);
  sub_255B629AC(a12);
  sub_255B629AC(a15);
  sub_255B629AC(a16);
  sub_255B629AC(a14);
  sub_255B629AC(a17);
  sub_255B629AC(a18);
  sub_255B629AC(a19);
  sub_255B629AC(a20);
  sub_255B629AC(&a27);
  _Unwind_Resume(a1);
}

void sub_255B64908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v29 = STACK[0x468];
  if (STACK[0x468])
  {
    STACK[0x470] = v29;
    operator delete(v29);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  do
  {
    v27 -= 80;
    sub_255B629AC(v27);
  }

  while (v27 != &a27);
  _Unwind_Resume(a1);
}

void sub_255B64B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255B64B38);
}

void sub_255B64BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  v7 = &unk_2867CE598;
  v8 = v4;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v8;
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  sub_255B64CB8(&v10, a2, v4, v6);
}

void sub_255B64C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B5F5D4(&a12);
  sub_255A7F5A0(&a9);
  _Unwind_Resume(a1);
}

void sub_255B64CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 160;
  if (*(a2 + 183) >= 0)
  {
    v5 = *(a2 + 183);
  }

  else
  {
    v4 = *(a2 + 160);
    v5 = *(a2 + 168);
  }

  v6 = 7;
  if (v5 < 7)
  {
    v6 = v5;
  }

  v7 = v5 >= v6;
  v8 = v5 - v6;
  if (!v7)
  {
LABEL_23:
    sub_255A93C3C("string_view::substr");
  }

  if (v5 < 7 || ((v9 = (v4 + v8), v10 = *v9, v11 = *(v9 + 3), v10 == 1853186606) ? (v12 = v11 == 1701602414) : (v12 = 0), !v12))
  {
    v13 = 4;
    if (v5 < 4)
    {
      v13 = v5;
    }

    v7 = v5 >= v13;
    v14 = v5 - v13;
    if (!v7)
    {
      goto LABEL_23;
    }

    if (v5 < 4 || *(v4 + v14) != 1818848558)
    {
      LOBYTE(v15) = 0;
      v16 = 0;
      sub_255B71274(v20, a2, &v15);
      sub_255B60C64(v20);
    }
  }

  LOBYTE(v18) = 0;
  v19 = 0;
  v17[0] = &unk_2867CE598;
  v17[1] = a3;
  v17[2] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_255B718F4(v20, a2, &v18, v17);
  sub_255B60A30(v20);
}

void sub_255B64EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  sub_255A81798(&a31);
  sub_255A7F5A0(&a18);
  if (a29 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_255B64F1C(void *a1)
{
  *a1 = &unk_2867C9688;
  v2 = a1[44];
  a1[44] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x259C49320](v2, 0x60C40CE5A77A8);
  }

  sub_255B60928((a1 + 1));
  return a1;
}