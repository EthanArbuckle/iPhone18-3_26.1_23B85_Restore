void sub_1000ECA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_ullong a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_1000E7978(&a11);
  sub_10019A264(&a12);
  a12 = &a16;
  sub_100101A08(&a12);
  _Unwind_Resume(a1);
}

void *sub_1000ECACC(void *a1, void *a2)
{
  sub_1000026BC(a1, "table entry data@", 17);
  v3 = *(*a2 + 352);
  v4 = *(*a2 + 8);
  v5 = (*(v4 + 56) + *(v4 + 56) * a2[1]) / (*(v4 + 56) + 1);
  v6 = *(v4 + 28);
  v7 = std::ostream::operator<<();
  sub_1000026BC(v7, " = offset = ", 12);
  v8 = *(*(*a2 + 56) + 16 * a2[1] + 8) & 0x7FFFFFFFFFFFFFLL;
  v9 = *(*(*a2 + 8) + 28);
  v10 = std::ostream::operator<<();
  v11 = sub_1000026BC(v10, ", flags = ", 10);
  v12 = atomic_load((*(*a2 + 56) + 16 * a2[1] + 8));
  v14 = v12 >> 62;
  return sub_1000F7778(v11, &v14);
}

uint64_t sub_1000ECB94(void *a1, void *a2)
{
  sub_1000026BC(a1, "table entry map@", 16);
  v3 = *(*a2 + 352);
  v4 = *(*a2 + 8);
  v5 = *(v4 + 56);
  v6 = *(v4 + 28);
  v7 = a2[1] / (v5 + 1) * v5;
  v8 = std::ostream::operator<<();
  sub_1000026BC(v8, " = offset = ", 12);
  v9 = (*(*(*a2 + 56) + 16 * a2[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a2 + 8) + 28);

  return std::ostream::operator<<();
}

__n128 sub_1000ECC2C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  std::mutex::lock((a1 + 104));
  sub_1000EA830(a3, a4, *(*(a1 + 8) + 28), *(*(a1 + 8) + 26), *(a1 + 352), *(*(a1 + 8) + 88) + *(a1 + 352), v79);
  v9 = 0;
  LOBYTE(v77) = 0;
  v78 = 0;
  v69 = *(*(*(a1 + 8) + 32) + 216);
  while (*v79 != v82 || *&v79[8] != v83 || *&v79[16] != *v79 + 16 * *&v79[8] && (*&v80[8] != v84 || *&v80[24] != v85))
  {
    v10 = *&v79[24];
    v11 = *v80;
    *&v80[8] += *&v80[24] * *v80;
    *&v79[24] = sub_1000E7FF0(v79);
    *v80 = v12;
    v13 = v10 * *(*(a1 + 8) + 26);
    v14 = sub_1000E8284(a1, v13);
    v16 = v14;
    v17 = v15;
    *&v76 = v14;
    *(&v76 + 1) = v15;
    if (v78 == 1)
    {
      v18 = v77;
      v19 = *(v14 + 352) == *(v77 + 352) && v15 == *(&v77 + 1);
      if (!v19)
      {
        v9 |= sub_1000E8BB4(a1, a2, &v77);
        v20 = *(v18 + 8);
        v21 = (*(v18 + 352) + (*(v20 + 56) + *(v20 + 56) * *(&v18 + 1)) / (*(v20 + 56) + 1) * *(v20 + 28)) / *(v20 + 26);
        v22 = *(a1 + 8);
        v23 = *(v22 + 56);
        v24 = *(v22 + 28);
        v25 = *(v22 + 26);
        v26 = v23 * (v24 / v25);
        v27 = *(a1 + 352) / v25;
        ++v23;
        v28 = v23 + v23 * ((v21 - v27) / v26);
        v29 = v16[1];
        if (v28 != v23 + v23 * (((v16[44] + (*(v29 + 56) + *(v29 + 56) * v17) / (*(v29 + 56) + 1) * *(v29 + 28)) / *(v29 + 26) - v27) / v26) && (v9 & 1) != 0)
        {
          sub_1000EC668(a1, a2, v28 - 1);
          v9 = 0;
        }
      }

      *(&v77 + 1) = v17;
    }

    else
    {
      v77 = v76;
      v78 = 1;
    }

    v30 = atomic_load((v16[7] + 16 * v17 + 8));
    v31 = v30 >> 62;
    if (v30 >> 62 != 2)
    {
      v32 = v76;
      v33 = *(v76 + 8);
      v34 = *(v33 + 56);
      v35 = *(v33 + 28);
      if (*(v76 + 352) + (v34 + v34 * *(&v76 + 1)) / (v34 + 1) * v35 == v13 && v11 * *(*(a1 + 8) + 26) == v35)
      {
        sub_1000F2424(*(v76 + 56) + 16 * *(&v76 + 1), 0, v74);
        if (v75 != 1)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          sub_1000ED6C4(v72, &v70);
          sub_1000026BC(v73, "Couldn't lock entry ", 20);
          sub_1000ECACC(v73, &v76);
          sub_1000ED7EC(v72);
          exception = __cxa_allocate_exception(0x40uLL);
          *exception = &off_100233158;
          v65 = std::generic_category();
          exception[1] = 4294967282;
          exception[2] = v65;
          *(exception + 24) = 0;
          *(exception + 48) = 0;
          exception[7] = "Couldn't lock entry";
        }

        v36 = atomic_load((*(v32 + 56) + 16 * *(&v32 + 1) + 8));
        v37 = v36 & 0xC000000000000000;
        if (v31 != 1 && v37 == 0x4000000000000000)
        {
          goto LABEL_32;
        }

        v39 = (*(v76 + 56) + 16 * *(&v76 + 1) + 8);
        v40 = *v39;
        v41 = *v39 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        for (i = *v39; ; v41 = i & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000)
        {
          atomic_compare_exchange_strong(v39, &i, v41);
          if (i == v40)
          {
            break;
          }

          v40 = i;
        }

        v48 = v40 >> 62;
        sub_1000ED4C0(a1, a2, v40 >> 62, 2, &v76);
        v9 |= v48 == 3;
        v49 = (*(v76 + 56) + 16 * *(&v76 + 1) + 8);
        v50 = *v49;
        v51 = *(*(v76 + 8) + 28);
        if (v51)
        {
          atomic_fetch_and_explicit(v49, 0xFF80000000000000, memory_order_relaxed);
          goto LABEL_41;
        }

        v52 = *v49;
        v53 = *v49;
        atomic_compare_exchange_strong_explicit(v49, &v53, *v49 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
        if (v53 == v52)
        {
          atomic_store(1u, (a1 + 96));
          goto LABEL_32;
        }

        do
        {
          v54 = v53;
          atomic_compare_exchange_strong_explicit(v49, &v54, v53 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v19 = v54 == v53;
          v53 = v54;
        }

        while (!v19);
LABEL_41:
        v55 = (v50 & 0x7FFFFFFFFFFFFFLL) * v51;
        atomic_store(1u, (a1 + 96));
        sub_10019A264(v74);
        if (v55)
        {
          sub_1000E8A0C(a1, v55);
        }
      }

      else if ((v30 & 0x4000000000000000) != 0)
      {
        v45 = (*(v76 + 56) + 16 * *(&v76 + 1));
        v46 = sub_100108E9C(v45);
        v74[0] = off_1002326B0;
        v74[1] = v45;
        v75 = v46;
        if ((v46 & 1) == 0)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          sub_1000ED830(v72, &v70);
          sub_1000026BC(v73, "Couldn't lock entry ", 20);
          sub_1000ECACC(v73, &v76);
          sub_1000ED958(v72);
          v62 = __cxa_allocate_exception(0x40uLL);
          *v62 = &off_100233158;
          v63 = std::generic_category();
          v62[1] = 4294967282;
          v62[2] = v63;
          *(v62 + 24) = 0;
          *(v62 + 48) = 0;
          v62[7] = "Couldn't lock entry";
        }

        v47 = *(*(a1 + 8) + 26);
        *v72 = sub_1000EDAB0(a1, v10 * v47, v11 * v47);
        sub_1000E9BE8(a1, a2, &v76, v72, 2u, v31 | &_mh_execute_header);
        sub_10019A0BC(v74);
      }

      else if ((v69 & 1) == 0)
      {
        sub_1000F2424(*(v76 + 56) + 16 * *(&v76 + 1), 0, v74);
        if ((v75 & 1) == 0)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          sub_10005C144(v72, &v70);
          sub_1000026BC(v73, "Couldn't exclusively lock entry ", 32);
          sub_1000ECACC(v73, &v76);
          sub_10005C26C(v72);
          v66 = __cxa_allocate_exception(0x40uLL);
          *v66 = &off_100233158;
          v67 = std::generic_category();
          v66[1] = 4294967282;
          v66[2] = v67;
          *(v66 + 24) = 0;
          *(v66 + 48) = 0;
          v66[7] = "Couldn't lock entry";
        }

        v43 = atomic_load((*(v32 + 56) + 16 * *(&v32 + 1) + 8));
        v44 = *(*(a1 + 8) + 26);
        *v72 = sub_1000EDAB0(a1, v10 * v44, v11 * v44);
        sub_1000E9BE8(a1, a2, &v76, v72, 2u, &_mh_execute_header & 0xFFFFFFFFFFFFFFFCLL | (v43 >> 62));
LABEL_32:
        sub_10019A264(v74);
      }
    }
  }

  if (v78 == 1 && ((sub_1000E8BB4(a1, a2, &v77) | v9) & 1) != 0)
  {
    v56 = *(v77 + 8);
    v57 = *(a1 + 8);
    v58 = *(v57 + 56);
    sub_1000EC668(a1, a2, v58 + (v58 + 1) * (((*(v77 + 352) + (*(v56 + 56) + *(v56 + 56) * *(&v77 + 1)) / (*(v56 + 56) + 1) * *(v56 + 28)) / *(v56 + 26) - *(a1 + 352) / *(v57 + 26)) / (v58 * (*(v57 + 28) / *(v57 + 26)))));
  }

  v59 = *&v80[16];
  a5[2] = *v80;
  a5[3] = v59;
  a5[4] = v81;
  v60 = *&v79[16];
  *a5 = *v79;
  a5[1] = v60;
  std::mutex::unlock((a1 + 104));
  return result;
}

atomic_ullong *sub_1000ED4C0(atomic_ullong *result, uint64_t a2, int a3, int a4, void *a5)
{
  v5 = *(result[1] + 16);
  if (*(v5 + 160) == 1)
  {
    v9 = result;
    sub_1000ED99C(*(result[1] + 16), a3, a4);
    v10 = *(*a5 + 8);
    v11 = v9[1];
    result = sub_1000B1EE8(v5, ((*(*a5 + 352) + (*(v10 + 56) + *(v10 + 56) * a5[1]) / (*(v10 + 56) + 1) * *(v10 + 28)) / *(v10 + 26) - v9[44] / *(v11 + 26)) / (*(v11 + 56) * (*(v11 + 28) / *(v11 + 26))) + *(v11 + 72) * (v9[44] / *(v11 + 88)));
    if (a3 == 3)
    {
      if (result)
      {
        v12 = *(*a5 + 8);
        sub_1000E90C8(v9, a2, (*(*a5 + 352) + (*(v12 + 56) + *(v12 + 56) * a5[1]) / (*(v12 + 56) + 1) * *(v12 + 28)) / *(v12 + 26), 0, &v19);
        v13 = *(*a5 + 8);
        v14 = sub_1000EDAB0(v9, *(*a5 + 352) + (*(v13 + 56) + *(v13 + 56) * a5[1]) / (*(v13 + 56) + 1) * *(v13 + 28), *(v13 + 28));
        if (v19)
        {
          v15 = v19 + 40;
          if (!*(v19 + 224))
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v9[1];
        v17 = *(v16 + 56);
        sub_1000EA32C(v15, v9[44] + v17 * *(v16 + 28) * (*(v19 + 40) / (v17 + 1)) + ((v14 * *(v16 + 26)) >> 1), v9[44] + ((HIDWORD(v14) * *(v16 + 26)) >> 1) + v17 * *(v16 + 28) * (*(v19 + 40) / (v17 + 1)), v9, v18);
        sub_1000EA454(v5, v18);
        return sub_1000E7978(&v19);
      }
    }
  }

  return result;
}

void sub_1000ED6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1000E7978(va);
  _Unwind_Resume(a1);
}

void *sub_1000ED6C4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011A81C(a1, a2);
  *a1 = off_10021E228;
  a1[45] = &off_10021E328;
  a1[46] = &off_10021E350;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E228;
  a1[45] = off_10021E2B0;
  a1[46] = off_10021E2D8;
  return a1;
}

void sub_1000ED7C8(_Unwind_Exception *a1)
{
  sub_100101D60(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED7EC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100101D60(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000ED830(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011A8E4(a1, a2);
  *a1 = off_10021E448;
  a1[45] = &off_10021E548;
  a1[46] = &off_10021E570;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E448;
  a1[45] = off_10021E4D0;
  a1[46] = off_10021E4F8;
  return a1;
}

void sub_1000ED934(_Unwind_Exception *a1)
{
  sub_1001024F8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED958(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001024F8(a1);
  std::ios::~ios();
  return a1;
}

atomic_ullong *sub_1000ED99C(atomic_ullong *result, int a2, int a3)
{
  v3 = result[10];
  v4 = v3;
  atomic_compare_exchange_strong_explicit(result + 10, &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v4 != v3)
  {
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v5, &_mh_execute_header + (v4 & 0xFFFFFFFF00000000 | (v4 + 1)), memory_order_relaxed, memory_order_relaxed);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }

  v7 = result + 11;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v8 = result + 13;
    }

    else
    {
      v8 = result + 14;
    }
  }

  else
  {
    v8 = result + 11;
    if (a2)
    {
      v8 = result + 12;
    }
  }

  atomic_fetch_add_explicit(v8, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = result + 13;
    }

    else
    {
      v7 = result + 14;
    }
  }

  else if (a3)
  {
    v7 = result + 12;
  }

  atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v6 = v11 == v10;
      v10 = v11;
    }

    while (!v6);
  }

  return result;
}

unint64_t sub_1000EDAB0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 26);
  if (v4 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(v3 + 26);
  }

  if (!a3)
  {
    v5 = 0;
  }

  v6 = *(v3 + 28);
  v7 = *(v3 + 56);
  return ((2 * (((a2 - (*(a1 + 352) + v7 * v6 * ((a2 / v4 - *(a1 + 352) / v4) / (v7 * (v6 / v4))))) / v4) & 0x7FFFFFFF)) | (((v5 + a2 - v4 - (*(a1 + 352) + ((v5 + a2 - v4) / v4 - *(a1 + 352) / v4) / (v7 * (v6 / v4)) * v7 * v6)) / v4) << 33)) + 0x200000000;
}

uint64_t sub_1000EDB30(uint64_t *a1, uint64_t a2, void *a3, char a4)
{
  if ((atomic_fetch_and((*(*a3 + 56) + 16 * a3[1] + 8), 0x7FFFFFFFFFFFFFFFuLL) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  if ((a4 & 2) != 0)
  {
    v9 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
    if (v9)
    {
      v13 = v9;
      sub_1000EB7EC(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      if (v13 < 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = -v13;
      }

      v16 = sub_100001860(exception, "Can't flush asif on table flush, backend barrier failed", v15);
    }
  }

  sub_1000E90C8(a1, a2, (*(*a3 + 352) + a3[1] / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28)) / *(a1[1] + 26), a4 & 1, &v22);
  if (v22 && (*(v22 + 344) & 1) == 0)
  {
    if (*(v22 + 224))
    {
      v10 = v22 + 40;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_1000EDE4C(v10, a2, a1);
    if (v11)
    {
      sub_1000EB7EC(a2);
      v17 = __cxa_allocate_exception(0x40uLL);
      sub_100002148(v21);
      sub_1000026BC(v21, "Can't flush asif table, bitmap flush failed ", 44);
      if (a4)
      {
        v18 = "(locked)";
      }

      else
      {
        v18 = "(unlocked)";
      }

      if (a4)
      {
        v19 = 8;
      }

      else
      {
        v19 = 10;
      }

      sub_1000026BC(v21, v18, v19);
      if (v11 < 0)
      {
        v20 = v11;
      }

      else
      {
        v20 = -v11;
      }

      sub_100004290(v17, v21, v20);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1000E7978(&v22);
  return v4;
}

void sub_1000EDDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000022B4(&a9);
  sub_1000E7978((v9 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1000EDE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 120));
  v6 = sub_1000F2584(a1, a2, a3, *(*(a3 + 8) + 28));
  std::mutex::unlock((a1 + 120));
  return v6;
}

uint64_t sub_1000EDEC0(uint64_t a1, uint64_t a2)
{
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v29 = atomic_exchange((a1 + 96), 0);
  std::mutex::lock((a1 + 280));
  v4 = *(a1 + 248);
  v5 = *(a1 + 264);
  v49 = *(a1 + 232);
  v50 = v4;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  v6 = v51;
  v51 = v5;
  *(a1 + 264) = v6;
  std::mutex::unlock((a1 + 280));
  v7 = *(a1 + 8);
  v8 = *(v7 + 26);
  v9 = *(v7 + 56);
  v10 = v8 + 8 * *(v7 + 64) - 1;
  v11 = v10 / v8 * v8;
  if (v10 == v10 % v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc_type_valloc(v11, 0x8B7C732DuLL);
    if (!v12)
    {
      exception = __cxa_allocate_exception(8uLL);
      v28 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v54 = off_10021E1A0;
  v55 = &v54;
  v52 = v12;
  sub_1000DF1F8(v53, &v54);
  sub_1000298F0(&v54);
  v13 = v52;
  std::mutex::lock((a1 + 168));
  sub_1000E8B2C(a1, v14, v44);
  v15 = 0;
  *&v39 = a2;
  *(&v39 + 1) = &v43;
  *&v40 = v13;
  *(&v40 + 1) = v41;
  v36 = v39;
  v43 = *(a1 + 344);
  v41[0] = a2;
  v41[1] = &v42;
  v33 = a2;
  v34 = &v43;
  v37 = v40;
  v35 = v13;
  v38 = v41;
  v16 = v13;
  v42 = 0;
  while (v44[0] != v47 || v44[1] != v48)
  {
    v42 = sub_1000EDB30(a1, a2, &v45, 0);
    sub_1000F2424(*(v45 + 56) + 16 * v46, 0, v32);
    v17 = sub_1000EDB30(a1, a2, &v45, 1);
    v42 |= v17;
    ++v15;
    if (v29)
    {
      if ((atomic_fetch_and((*(v45 + 56) + 16 * v46 + 8), 0xBFFFFFFFFFFFFFFFLL) & 0x4000000000000000) != 0 && v11 < 8 * v9 + 8)
      {
        sub_1000EE820(&v39, v13);
        v16 = v13;
      }

      sub_1000EC31C(a1, &v45, v30);
      if (v30[0] == v31[3] && v30[1] == v31[4])
      {
        v19 = atomic_load((*(v45 + 56) + 16 * v46 + 8));
        *v16 = bswap64(v19 & 0x3FFFFFFFFFFFFFFFLL);
        v55 = 0;
        operator new();
      }

      sub_1000EE9D8(v31);
      v18 = atomic_load((*(v31[0] + 56) + 16 * v31[1] + 8));
      *v16 = bswap64(v18);
      v55 = 0;
      operator new();
    }

    v43 = *(a1 + 344) + 8 * (v15 + v15 * *(*(a1 + 8) + 56));
    sub_10019A264(v32);
    sub_1000E81BC(v44);
  }

  std::mutex::unlock((a1 + 168));
  sub_10002986C(&v52, 0);
  sub_1000298F0(v53);
  v20 = *(&v51 + 1);
  v21 = (*(&v49 + 1) + 8 * (v51 >> 9));
  if (v50 == *(&v49 + 1))
  {
    v22 = 0;
    v24 = 0;
    v23 = (*(&v49 + 1) + 8 * ((v51 + *(&v51 + 1)) >> 9));
  }

  else
  {
    v22 = &(*v21)[v51 & 0x1FF];
    v23 = (*(&v49 + 1) + 8 * ((v51 + *(&v51 + 1)) >> 9));
    v24 = (*v23 + 8 * ((v51 + *(&v51 + 1)) & 0x1FF));
  }

  sub_1000EEB20(*(a1 + 8), v21, v22, v23, v24, a2);
  if (v20)
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  v25 = *(a1 + 100);
  if (v25 == 1)
  {
    (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 352), *(a1 + 344));
    *(a1 + 100) = 0;
  }

  sub_100069604(&v49);
  return v25;
}

void sub_1000EE62C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t a62, uint64_t a63)
{
  std::mutex::unlock((v63 + 168));
  sub_10002986C((v64 - 256), 0);
  sub_1000298F0(v64 - 248);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock((v63 + 280));
    v67 = *(v63 + 264) + *(v63 + 272);
    v68 = *(v63 + 240);
    v69 = (v68 + 8 * (v67 >> 9));
    if (*(v63 + 248) == v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = *v69 + 8 * (v67 & 0x1FF);
    }

    v71 = (a59 + 8 * (a62 >> 9));
    if (a60 == a59)
    {
      v72 = 0;
      v73 = 0;
      v74 = (a59 + 8 * ((a63 + a62) >> 9));
    }

    else
    {
      v72 = &(*v71)[8 * (a62 & 0x1FF)];
      v74 = (a59 + 8 * ((a63 + a62) >> 9));
      v73 = (*v74 + 8 * ((a63 + a62) & 0x1FF));
    }

    sub_1000EEAEC(a10, v69, v70, v71, v72, v74, v73);
    std::mutex::unlock((v63 + 280));
    atomic_fetch_or((v63 + 96), a16 != 0);
    __cxa_rethrow();
  }

  sub_100069604(&a58);
  _Unwind_Resume(a1);
}

void sub_1000EE810(void *a1, int a2)
{
  if (a2)
  {
    sub_100002A4C(a1);
  }

  JUMPOUT(0x1000EE808);
}

void sub_1000EE820(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  if (*v4[1] == 1)
  {
    sub_1001029F8(*v4);
    *v4[1] = 0;
  }

  v5 = a1[2];
  v6 = a2 - v5;
  v7 = *a1[1];
  v8 = *(sub_10019E2E8() + 1);
  v16 = v5;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v6;
  v19 = v7;
  v20 = v6;
  v22 = 0;
  v23 = 0;
  v21 = 1;
  sub_100026638(v24, &v16);
  if (v17)
  {
    sub_10000367C(v17);
  }

  v9 = (*(**(*a1 + 16) + 120))(*(*a1 + 16), v24);
  *a1[1] += v6;
  if (v6 != v9)
  {
    v10 = *a1;
    v11 = v9;
    sub_1000EB7EC(v10);
    LODWORD(v12) = v11;
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = exception;
    if (v12 < 0)
    {
      v12 = v12;
    }

    else
    {
      v12 = -v12;
    }

    *exception = &off_100233158;
    v15 = std::generic_category();
    v14[1] = v12;
    v14[2] = v15;
    *(v14 + 24) = 0;
    *(v14 + 48) = 0;
    v14[7] = "Can't flush asif table, backend write failed";
  }

  if (v25)
  {
    sub_10000367C(v25);
  }
}

void sub_1000EE9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000EE9D8(void *a1)
{
  atomic_load((*(*a1 + 56) + 16 * a1[1] + 8));
  v1 = atomic_load((*(*a1 + 56) + 16 * a1[1] + 8));
  if ((v1 & 0x3F80000000000000) != 0)
  {
    *&v3 = "di_asif::details::table_entry_data::validate() const";
    *(&v3 + 1) = 44;
    v4 = 16;
    sub_100102A8C(v5, &v3);
    sub_1000026BC(v6, "Diskimages2 - ASIF - bad reserved bits ", 39);
    *(&v6[1] + *(v6[0] - 24)) = *(&v6[1] + *(v6[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100102CC0(v5);
    std::ios::~ios();
  }

  return (v1 & 0x3F80000000000000) == 0;
}

void sub_1000EEAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100102BB4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000EEAEC(uint64_t a1, char *a2, uint64_t a3, char **a4, char *a5, char *a6, char *a7)
{
  if (a7 == a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&a7[-*a6] >> 3) + ((a6 - a4) << 6) - ((a5 - *a4) >> 3);
  }

  return sub_10011AB38(a1, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t sub_1000EEB20(atomic_ullong *a1, unint64_t **a2, unint64_t *a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v12 = (*(*a1 + 16))(a1);
  v15[0] = off_10021D680;
  v15[1] = a6;
  v15[3] = v15;
  sub_10011BADC(v12, a2, a3, a4, a5, v15);
  result = sub_100118264(v15);
  if (a5 == a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = ((a2 - a4) << 6) - ((a5 - *a4) >> 3) + a3 - *a2;
  }

  atomic_fetch_add(a1 + 1, v14);
  return result;
}

void sub_1000EEC38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100118264(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1000EEC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *(a3 + 24);
  *v84 = 0;
  v86 = 0;
  sub_100026714(&v80, a3);
  v55 = 0;
  while (!sub_1000242EC(&v80, a4))
  {
    v78 = sub_1000E8284(a1, v82);
    v79 = v7;
    v8 = v78[1];
    v9 = *(v8 + 56);
    v10 = *(v8 + 28);
    v69[0] = v78[44] + (v9 + v9 * v7) / (v9 + 1) * v10;
    v69[1] = v69[0] + v10;
    v70 = 2;
    sub_100024E40(&v80, v69, a4, v72);
    if (!sub_1000242EC(v72, &v75))
    {
      *&v65 = &v84[1];
      *(&v65 + 1) = &v78;
      v66 = v84;
      v67 = a1;
      v68 = a2;
      v13 = (v78[7] + 16 * v79);
      v14 = sub_100108E9C(v13);
      v63[0] = off_1002326B0;
      v63[1] = v13;
      v64 = v14;
      if ((v14 & 1) == 0)
      {
        *&v60 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
        *(&v60 + 1) = 30;
        LODWORD(v61) = 16;
        sub_1000EF85C(v69, &v60);
        sub_1000026BC(v71, "Couldn't lock entry ", 20);
        sub_1000ECACC(v71, &v78);
        sub_1000EF984(v69);
        exception = __cxa_allocate_exception(0x40uLL);
        *exception = &off_100233158;
        v49 = std::generic_category();
        exception[1] = 4294967282;
        exception[2] = v49;
        *(exception + 24) = 0;
        *(exception + 48) = 0;
        exception[7] = "Couldn't lock entry";
      }

      v15 = v79;
      v16 = v78[7];
      v17 = (*(v16 + 16 * v79 + 8) & 0x7FFFFFFFFFFFFFLL) * *(v78[1] + 28);
      if (!v17)
      {
        LODWORD(v12) = sub_1000E9A40(a1, a2, v78, v79);
        if (!v12)
        {
          v15 = v79;
          v16 = v78[7];
          goto LABEL_7;
        }

        *&v60 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
        *(&v60 + 1) = 30;
        LODWORD(v61) = 16;
        sub_1000EF9C8(v69, &v60);
        sub_1000026BC(v71, "couldn't allocate space for entry ", 34);
        sub_1000ECACC(v71, &v78);
        sub_1000026BC(v71, " ret: ", 6);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_100104674(v69);
        std::ios::~ios();
        v12 = v12;
        goto LABEL_43;
      }

LABEL_7:
      v18 = atomic_load((v16 + 16 * v15 + 8));
      v19 = sub_1000EFB34(&v78, a2, v72, &v75);
      v12 = v19;
      v21 = v20;
      if ((v19 & 0x8000000000000000) != 0 && v19)
      {
        if (v17)
        {
          goto LABEL_42;
        }

        sub_10019A0F8(v63, 0, v69);
        if (v70 == 1)
        {
          v22 = atomic_load((v78[7] + 16 * v79 + 8));
          if ((v22 & 0x4000000000000000) == 0)
          {
            v23 = (v78[7] + 16 * v79 + 8);
            v24 = *v23;
            v25 = *(v78[1] + 28);
            if (v25)
            {
              atomic_fetch_and_explicit(v23, 0xFF80000000000000, memory_order_relaxed);
LABEL_58:
              v41 = (v24 & 0x7FFFFFFFFFFFFFLL) * v25;
              sub_10019A264(v69);
              if (v41)
              {
                sub_1000E9B08(*(a1 + 8), v41, a2);
              }

LABEL_42:
              *&v60 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
              *(&v60 + 1) = 30;
              LODWORD(v61) = 16;
              sub_1000F041C(v69, &v60);
              sub_1000026BC(v71, "Failed during data entry write in table write, error ", 53);
              std::ostream::operator<<();
              std::ostream::~ostream();
              sub_100104E0C(v69);
              std::ios::~ios();
LABEL_43:
              v11 = 1;
LABEL_44:
              sub_10019A0BC(v63);
              sub_1000F08A0(&v65);
              goto LABEL_45;
            }

            v37 = *v23;
            v38 = *v23;
            atomic_compare_exchange_strong_explicit(v23, &v38, *v23 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
            if (v38 != v37)
            {
              v39 = v38;
              do
              {
                atomic_compare_exchange_strong_explicit(v23, &v39, v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
                v40 = v39 == v38;
                v38 = v39;
              }

              while (!v40);
              goto LABEL_58;
            }
          }
        }

        sub_10019A264(v69);
        goto LABEL_42;
      }

      v26 = v18 >> 62;
      *&v60 = &v80;
      *(&v60 + 1) = a4;
      v61 = v19;
      v62 = v20;
      if (v26 == 1)
      {
LABEL_15:
        v11 = 2;
      }

      else
      {
        v27 = v78[1];
        v28 = *(v27 + 28);
        if (v19 == v28 && v78[44] + (*(v27 + 56) + *(v27 + 56) * v79) / (*(v27 + 56) + 1) * v28 == v20)
        {
          sub_10019A0F8(v63, 0, v58);
          if ((v59 & 1) == 0)
          {
            *&v56 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
            *(&v56 + 1) = 30;
            v57 = 16;
            sub_1000F0588(v69, &v56);
            sub_1000026BC(v71, "Couldn't upgrade lock entry ", 28);
            sub_1000ECACC(v71, &v78);
            sub_1000F06B0(v69);
            v50 = __cxa_allocate_exception(0x40uLL);
            *v50 = &off_100233158;
            v51 = std::generic_category();
            v50[1] = 4294967282;
            v50[2] = v51;
            *(v50 + 24) = 0;
            *(v50 + 48) = 0;
            v50[7] = "Couldn't upgrade lock entry";
          }

          v29 = atomic_load((v78[7] + 16 * v79 + 8));
          if (v26 == 2 || (v29 & 0xC000000000000000) != 0x8000000000000000)
          {
            v30 = (v78[7] + 16 * v79 + 8);
            v31 = *v30;
            v32 = *v30 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
            for (i = *v30; ; v32 = i & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000)
            {
              atomic_compare_exchange_strong(v30, &i, v32);
              if (i == v31)
              {
                break;
              }

              v31 = i;
            }

            v36 = v31 >> 62;
            sub_1000ED4C0(a1, a2, v31 >> 62, 1, &v78);
            v84[0] |= v36 == 3;
            atomic_store(1u, (a1 + 96));
          }

          sub_10019A264(v58);
          v11 = 2;
        }

        else
        {
          if (v26 == 3)
          {
            v69[0] = sub_1000EDAB0(a1, v20, v19);
            sub_1000E9BE8(a1, a2, &v78, v69, 1u, 0x100000003);
          }

          else
          {
            sub_10019A0F8(v63, 0, v58);
            if ((v59 & 1) == 0)
            {
              *&v56 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
              *(&v56 + 1) = 30;
              v57 = 16;
              sub_1000F06F4(v69, &v56);
              sub_1000026BC(v71, "Couldn't upgrade lock entry ", 28);
              sub_1000ECACC(v71, &v78);
              sub_1000F081C(v69);
              v52 = __cxa_allocate_exception(0x40uLL);
              *v52 = &off_100233158;
              v53 = std::generic_category();
              v52[1] = 4294967282;
              v52[2] = v53;
              *(v52 + 24) = 0;
              *(v52 + 48) = 0;
              v52[7] = "Couldn't upgrade lock entry";
            }

            v34 = atomic_load((v78[7] + 16 * v79 + 8));
            if (!((*(v78[7] + 16 * v79 + 8) & 0x7FFFFFFFFFFFFFLL) * *(v78[1] + 28)) || (v35 = v34 >> 62, v34 >> 62 == 1))
            {
              sub_10019A264(v58);
              goto LABEL_15;
            }

            v69[0] = sub_1000EDAB0(a1, v21, v12);
            sub_1000E9BE8(a1, a2, &v78, v69, 1u, v35 | &_mh_execute_header);
            sub_10019A264(v58);
          }

          if (v17)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0;
            atomic_store(1u, (a1 + 96));
          }
        }
      }

      v55 += v12;
      sub_1000F0860(&v60);
      goto LABEL_44;
    }

    *&v65 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v65 + 1) = 30;
    LODWORD(v66) = 16;
    sub_1000EF6F0(v69, &v65);
    sub_1000026BC(v71, "Couldn't trim entry in write ", 29);
    sub_10019A3A8(v71, &v80);
    std::ostream::~ostream();
    sub_100103744(v69);
    std::ios::~ios();
    v11 = 1;
    v12 = -34;
LABEL_45:
    if (v77)
    {
      sub_10000367C(v77);
    }

    if (v76)
    {
      sub_10000367C(v76);
    }

    if (v74)
    {
      sub_10000367C(v74);
    }

    if (v73)
    {
      sub_10000367C(v73);
    }

    if ((v11 | 2) != 2)
    {
      goto LABEL_64;
    }
  }

  if (v86 == 1)
  {
    v42 = sub_1000E8BB4(a1, a2, &v84[1]);
    v12 = v55;
    v43 = v42 | v84[0];
    v84[0] = (v42 | v84[0]) & 1;
    if (v43)
    {
      v44 = *(*&v84[1] + 8);
      v45 = *(a1 + 8);
      v46 = *(v45 + 56);
      sub_1000EC668(a1, a2, v46 + (v46 + 1) * (((*(*&v84[1] + 352) + (*(v44 + 56) + *(v44 + 56) * v85) / (*(v44 + 56) + 1) * *(v44 + 28)) / *(v44 + 26) - *(a1 + 352) / *(v45 + 26)) / (v46 * (*(v45 + 28) / *(v45 + 26)))));
    }
  }

  else
  {
    v12 = v55;
  }

LABEL_64:
  if (v83)
  {
    sub_10000367C(v83);
  }

  if (v81)
  {
    sub_10000367C(v81);
  }

  return v12;
}

void sub_1000EF5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t *a26)
{
  sub_10019A264(&a15);
  sub_1000F0860(&a19);
  sub_10019A0BC(&a23);
  sub_1000F08A0(&a26);
  sub_10006D100(&STACK[0x2B8]);
  sub_100002440(&STACK[0x488]);
  _Unwind_Resume(a1);
}

void *sub_1000EF6F0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011BD08(a1, a2);
  *a1 = off_10021E888;
  a1[45] = &off_10021E988;
  a1[46] = &off_10021E9B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E888;
  a1[45] = off_10021E910;
  a1[46] = off_10021E938;
  return a1;
}

void sub_1000EF7F4(_Unwind_Exception *a1)
{
  sub_100103744(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000EF818(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100103744(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000EF85C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011BDD0(a1, a2);
  *a1 = off_10021EAA8;
  a1[45] = &off_10021EBA8;
  a1[46] = &off_10021EBD0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021EAA8;
  a1[45] = off_10021EB30;
  a1[46] = off_10021EB58;
  return a1;
}

void sub_1000EF960(_Unwind_Exception *a1)
{
  sub_100103EDC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000EF984(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100103EDC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000EF9C8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011BE98(a1, a2);
  *a1 = off_10021ECC8;
  a1[45] = &off_10021EDC8;
  a1[46] = &off_10021EDF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021ECC8;
  a1[45] = off_10021ED50;
  a1[46] = off_10021ED78;
  return a1;
}

void sub_1000EFACC(_Unwind_Exception *a1)
{
  sub_100104674(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000EFAF0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100104674(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000EFB34(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a1[1];
  v5 = *(*a1 + 8);
  v6 = *(v5 + 28);
  if (!((*(*(*a1 + 56) + 16 * v4 + 8) & 0x7FFFFFFFFFFFFFLL) * v6))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v43 = sub_100001860(exception, "ASIF: No data offset found (write)", 0xFFFFFFEA);
  }

  *&v105 = *(*a1 + 352) + (*(v5 + 56) + *(v5 + 56) * v4) / (*(v5 + 56) + 1) * v6;
  *(&v105 + 1) = v105 + v6;
  LOBYTE(v106) = 2;
  sub_100024E40(a3, &v105, a4, v68);
  if (sub_1000242EC(v68, &v71))
  {
    v10 = -34;
  }

  else
  {
    __p = v123;
    v122 = xmmword_1001C76E0;
    v11 = *(a3 + 136);
    v105 = *(a3 + 120);
    v106 = v11;
    v107 = *(a3 + 152);
    v108 = *(a3 + 168);
    v12 = *(a3 + 184);
    v109 = *(a3 + 176);
    v110 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v111 = *(a3 + 192);
    v13 = a4[15];
    v14 = a4[16];
    v15 = a4[17];
    v16 = a4[23];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = 0;
    for (i = 0; ; ++i)
    {
      v19 = v105 == v13 && *(&v105 + 1) == v14;
      if (v19 && v106 == v15)
      {
        break;
      }

      v17 += 24;
      sub_100023DCC(&v105);
    }

    if (v16)
    {
      sub_10000367C(v16);
    }

    if (v110)
    {
      sub_10000367C(v110);
    }

    if (*(&v122 + 1) < i)
    {
      if (i >= 0x555555555555556)
      {
        sub_100026DEC("get_next_capacity, allocator's max size reached");
      }

      v21 = operator new(v17);
      sub_100056CB0(&__p, v21, i, __p + 24 * v122, 0, 0);
    }

    sub_100026714(v57, a3);
    sub_100026714(v46, a4);
    sub_100026898(&v85, v57);
    v87 = v59;
    v88 = v60;
    v89 = v61;
    v90 = v62;
    v91 = v63;
    v22 = v64;
    v64 = 0uLL;
    v92 = v22;
    v93 = v65;
    v95 = v67;
    v94 = v66;
    sub_100026898(v74, v46);
    v23 = 0;
    v24 = 0;
    v76 = v48;
    v77 = v49;
    v78 = v50;
    v79 = v51;
    v80 = v52;
    v25 = v53;
    v53 = 0uLL;
    v81 = v25;
    v82 = v54;
    v26 = v55;
    v84 = v56;
    v83 = v55;
    LOBYTE(v105) = 0;
    v117 = 0;
    while (!sub_1000242EC(&v85, v74))
    {
      if (v94 >= v26 || v24 == -1)
      {
        break;
      }

      if (sub_1000E0464())
      {
        *&v101 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/asif.cpp:1990:32)]";
        *(&v101 + 1) = 104;
        LODWORD(v102) = 2;
        sub_10002A1D4(&v97, &v101);
        sub_1000026BC(v100, "sg: ", 4);
        sub_10019A3A8(v100, &v85);
        std::ostream::~ostream();
        sub_10002A44C(&v97);
        std::ios::~ios();
      }

      v97 = 0;
      v98 = v26;
      v99 = 2;
      sub_10008A3F4(&v85, &v97, &v101);
      v28 = *(*(*a1 + 8) + 28);
      sub_10008A548(&v97, &v101, v102, 0, v103 % v28 + (*(*(*a1 + 56) + 16 * a1[1] + 8) & 0x7FFFFFFFFFFFFFLL) * v28, v104);
      (*(**(a2 + 16) + 144))(v118);
      v29 = __p + 24 * v122;
      if (v122 == *(&v122 + 1))
      {
        sub_1000591CC(&__p, v29, 1, v118, &v120);
      }

      else
      {
        *v29 = 0;
        v29[4] = 0;
        *(v29 + 1) = 0;
        if (BYTE4(v118[0]) == 1)
        {
          *v29 = v118[0];
          v29[4] = 1;
        }

        *(v29 + 2) = v119;
        v119 = 0;
        v30 = *(v29 + 2);
        if (v30)
        {
          *v30 = v29;
        }

        *&v122 = v122 + 1;
      }

      v31 = v103;
      v32 = v102;
      if (v98)
      {
        sub_10000367C(v98);
      }

      v33 = v32 >= 0 || v32 == 0;
      v34 = v33;
      if (v33)
      {
        if ((v23 & 1) == 0)
        {
          v23 = 1;
        }

        if (sub_100025604(&v85, v74, v31, v32))
        {
          sub_100026714(v96, &v85);
          sub_100025558(v96, v74, v31, v32, 0xFFFFFFFFFFFFFFFFLL, &v97);
          sub_10002A340(&v105, &v97);
          sub_100025620(&v97);
          sub_100002440(v96);
          sub_1000246F4(&v105, &v97);
          sub_100027250(&v85, &v97);
          sub_100002440(&v97);
          sub_100024448(&v105, &v97);
          sub_100027250(v74, &v97);
          sub_100002440(&v97);
        }

        sub_100024AB4(&v85, v32);
        v24 += v32;
      }

      else
      {
        if (v32 >= 0)
        {
          v35 = v32;
        }

        else
        {
          v35 = -v32;
        }

        v44 = -v35;
      }

      if (*(&v101 + 1))
      {
        sub_10000367C(*(&v101 + 1));
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v44 = v24;
LABEL_63:
    v10 = v44;
    if (v117 == 1)
    {
      if (v116)
      {
        sub_10000367C(v116);
      }

      if (v115)
      {
        sub_10000367C(v115);
      }

      if (v114)
      {
        sub_10000367C(v114);
      }

      if (v113)
      {
        sub_10000367C(v113);
      }

      if (v112)
      {
        sub_10000367C(v112);
      }

      if (v111)
      {
        sub_10000367C(v111);
      }
    }

    if (*(&v81 + 1))
    {
      sub_10000367C(*(&v81 + 1));
    }

    if (v75)
    {
      sub_10000367C(v75);
    }

    if (*(&v92 + 1))
    {
      sub_10000367C(*(&v92 + 1));
    }

    if (v86)
    {
      sub_10000367C(v86);
    }

    if (*(&v53 + 1))
    {
      sub_10000367C(*(&v53 + 1));
    }

    if (v47)
    {
      sub_10000367C(v47);
    }

    if (*(&v64 + 1))
    {
      sub_10000367C(*(&v64 + 1));
    }

    if (v58)
    {
      sub_10000367C(v58);
    }

    if ((v44 & 0x8000000000000000) == 0 || !v44)
    {
      (*(**(a2 + 16) + 152))(*(a2 + 16));
      if (v122)
      {
        v36 = 0;
        v37 = __p;
        v38 = 24 * v122;
        do
        {
          v39 = sub_10003C008(v37);
          if (v39 < 0)
          {
            break;
          }

          v36 += v39;
          v37 += 6;
          v39 = v36;
          v38 -= 24;
        }

        while (v38);
      }

      else
      {
        v39 = 0;
      }

      if (v44 != v39)
      {
        if (v39 < 0)
        {
          v40 = v39;
        }

        else
        {
          v40 = -5;
        }

        v10 = --v40;
      }
    }

    if (*(&v122 + 1) && v123 != __p)
    {
      operator delete(__p);
    }
  }

  if (v73)
  {
    sub_10000367C(v73);
  }

  if (v72)
  {
    sub_10000367C(v72);
  }

  if (v70)
  {
    sub_10000367C(v70);
  }

  if (v69)
  {
    sub_10000367C(v69);
  }

  return v10;
}

void sub_1000F02E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&STACK[0x640]);
  if (STACK[0x918])
  {
    sub_10000367C(STACK[0x918]);
  }

  sub_10002568C(&STACK[0x980]);
  sub_100002440(&STACK[0x3A0]);
  sub_100002440(&STACK[0x480]);
  sub_100002440(&a13);
  sub_100002440(&a41);
  if (STACK[0xC90])
  {
    if (a10 != STACK[0xC80])
    {
      operator delete(STACK[0xC80]);
    }
  }

  sub_10006D100(&a69);
  _Unwind_Resume(a1);
}

void sub_1000F03FC()
{
  if (v0)
  {
    sub_10000367C(v0);
  }

  if (STACK[0x9C0])
  {
    sub_10000367C(STACK[0x9C0]);
  }

  JUMPOUT(0x1000F03D0);
}

void *sub_1000F041C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011BF60(a1, a2);
  *a1 = off_10021EEE8;
  a1[45] = &off_10021EFE8;
  a1[46] = &off_10021F010;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021EEE8;
  a1[45] = off_10021EF70;
  a1[46] = off_10021EF98;
  return a1;
}

void sub_1000F0520(_Unwind_Exception *a1)
{
  sub_100104E0C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F0544(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100104E0C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F0588(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011C028(a1, a2);
  *a1 = off_10021F108;
  a1[45] = &off_10021F208;
  a1[46] = &off_10021F230;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F108;
  a1[45] = off_10021F190;
  a1[46] = off_10021F1B8;
  return a1;
}

void sub_1000F068C(_Unwind_Exception *a1)
{
  sub_1001055A4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F06B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001055A4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F06F4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011C0F0(a1, a2);
  *a1 = off_10021F328;
  a1[45] = &off_10021F428;
  a1[46] = &off_10021F450;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F328;
  a1[45] = off_10021F3B0;
  a1[46] = off_10021F3D8;
  return a1;
}

void sub_1000F07F8(_Unwind_Exception *a1)
{
  sub_100105D3C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F081C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100105D3C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F0860(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x8000000000000000) == 0 || !v2)
  {
    sub_1000249F0(*a1, v2);
  }

  return a1;
}

uint64_t **sub_1000F08A0(uint64_t **a1)
{
  v2 = *a1;
  if (*(*a1 + 16) == 1)
  {
    v3 = a1[3];
    v4 = a1[1];
    if (*(*v4 + 352) != *(*v2 + 352) || v4[1] != v2[1])
    {
      v5 = sub_1000E8BB4(a1[3], a1[4], v2);
      v6 = a1[2];
      v7 = (v5 & 1) != 0 ? 1 : *v6;
      *v6 = v7 & 1;
      v2 = *a1;
      v8 = a1[1];
      v9 = **a1;
      v10 = *(v9 + 352);
      v11 = *(v9 + 8);
      v12 = (v10 + (*(v11 + 56) + *(v11 + 56) * (*a1)[1]) / (*(v11 + 56) + 1) * *(v11 + 28)) / *(v11 + 26);
      v13 = v3[1];
      v14 = *(v13 + 56);
      v15 = *(v13 + 28);
      v16 = *(v13 + 26);
      v17 = v14 * (v15 / v16);
      v18 = v3[44] / v16;
      ++v14;
      v19 = v14 + v14 * ((v12 - v18) / v17);
      v20 = *(*v8 + 8);
      if (v19 != v14 + v14 * (((*(*v8 + 352) + (*(v20 + 56) + *(v20 + 56) * v8[1]) / (*(v20 + 56) + 1) * *(v20 + 28)) / *(v20 + 26) - v18) / v17) && (v7 & 1) != 0)
      {
        sub_1000EC668(v3, a1[4], v19 - 1);
        *a1[2] = 0;
        v2 = *a1;
      }
    }
  }

  v21 = a1[1];
  if (*(v2 + 16) == 1)
  {
    v2[1] = v21[1];
  }

  else
  {
    *v2 = *v21;
    *(v2 + 16) = 1;
  }

  return a1;
}

uint64_t sub_1000F0A1C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v31 = v3;
  v4 = v0;
  v6 = *(v5 + 24);
  sub_100026714(&v46, v5);
  *&v50 = -78;
  LOBYTE(v54[0]) = 0;
  v58 = 0;
  sub_100026714(&v59, &v46);
  sub_100026714(v60, &v46);
  v32 = 0;
  v61 = v31;
  v62[0] = &v63;
  v62[1] = 0;
  v62[2] = 16;
  LOBYTE(v64) = 0;
  v65 = 0;
  v66 = &v69;
  v67 = 0;
  v68 = 16;
  v70 = 0;
  v45[0] = v54;
  v45[1] = &v50;
  v45[2] = v31;
  while (!sub_1000242EC(&v46, v2))
  {
    *&v44 = sub_1000E8284(v4, v48);
    *(&v44 + 1) = v7;
    v8 = *(v44 + 8);
    v9 = *(v8 + 56);
    v10 = *(v8 + 28);
    *&v71 = *(v44 + 352) + (v9 + v9 * v7) / (v9 + 1) * v10;
    *(&v71 + 1) = v71 + v10;
    LOBYTE(v72) = 2;
    sub_100024E40(&v46, &v71, v2, &v38);
    if (!sub_1000242EC(&v38, &v41))
    {
      if (v65 == 1 && !sub_1000F24B4(&v44, &v64) && (v18 = sub_100106B64(v54), v18 < 0) && v18)
      {
        *&v33 = v18;
        *(&v33 + 1) = v19;
        v34 = v54;
        v35 = 0;
        v36[0] = 0;
        v37 = 0;
      }

      else
      {
        v64 = v44;
        v65 = 1;
        v12 = (*(v44 + 56) + 16 * *(&v44 + 1));
        v13 = sub_100108E9C(v12);
        *&v80 = off_1002326B0;
        *(&v80 + 1) = v12;
        LOBYTE(v81) = v13;
        if (v13)
        {
          v14 = 0;
        }

        else
        {
          *&v51 = "di_asif::details::table::read(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)::data_entries_vectorizer_t::add_data_entry(const data_entry_t &)";
          *(&v51 + 1) = 139;
          v52 = 16;
          sub_100106C7C(&v71, &v51);
          sub_1000026BC(v77, "Couldn't lock entry ", 20);
          sub_1000ECACC(v77, &v44);
          std::ostream::~ostream();
          sub_100106F48(&v71);
          std::ios::~ios();
          v14 = -5;
        }

        v15 = atomic_load((*(v64 + 56) + 16 * *(&v64 + 1) + 8));
        *&v33 = v14;
        v34 = v54;
        v35 = v15 >> 62;
        sub_10019A024(v36, &v80);
        v37 = 1;
        sub_10019A0BC(&v80);
      }

      v50 = v33;
      v16 = v33;
      v17 = v33;
      if ((v33 & 0x8000000000000000) != 0 && v33)
      {
        v11 = 0;
LABEL_64:
        sub_1000F1DF0(&v33);
        goto LABEL_65;
      }

      if (v35 <= 1)
      {
        if (v35)
        {
          if (v35 == 1)
          {
LABEL_57:
            sub_1000F15E4(&v44, v31, &v38, &v41, v62, &v71);
            v50 = v71;
            v16 = v71;
            v17 = v71;
            if ((v71 & 0x8000000000000000) == 0 || !v50)
            {
              v70 += v72;
            }
          }

LABEL_60:
          if ((v16 & 0x8000000000000000) != 0 && v17)
          {
            v11 = 0;
            v70 = 0;
          }

          else
          {
            sub_1000249F0(&v46, v16);
            sub_100106DE8(v60, &v46);
            v32 += v16;
            v11 = 1;
          }

          goto LABEL_64;
        }

LABEL_26:
        v16 = sub_1000F1CF4(&v44, &v38, &v41);
        *&v50 = v16;
        *(&v50 + 1) = v22;
        v17 = v16;
        goto LABEL_60;
      }

      if (v35 == 2)
      {
        goto LABEL_26;
      }

      if (v35 != 3)
      {
        goto LABEL_60;
      }

      v20 = *(v44 + 8);
      v21 = (*(v44 + 352) + (*(v20 + 56) + *(v20 + 56) * *(&v44 + 1)) / (*(v20 + 56) + 1) * *(v20 + 28)) / *(v20 + 26);
      if (v58 == 1)
      {
        if (*(v54[0] + 40) == (v21 - v4[44] / *(v4[1] + 26)) / (*(v4[1] + 56) * (*(v4[1] + 28) / *(v4[1] + 26))))
        {
          v16 = 0;
          goto LABEL_45;
        }

        v25 = sub_1001076E0(v54);
        v30 = v26;
        v16 = v25;
        if (v25 < 0 && v25)
        {
          v27 = v26;
          goto LABEL_55;
        }

        if (v58)
        {
LABEL_45:
          sub_100026960(&v71, &v38, &v41);
          if (v56 == *(&v56 + 1))
          {
            sub_100107F00(&v55, &v55[56 * v56], 1, &v71, &v80);
            v27 = v30;
          }

          else
          {
            sub_100107FB4(&v55[56 * v56], &v71);
            v27 = v30;
            *&v56 = v56 + 1;
          }

          if (v78)
          {
            sub_10000367C(v78);
          }

          if (v76)
          {
            sub_10000367C(v76);
          }

          if (v75)
          {
            sub_10000367C(v75);
          }

          if (*(&v71 + 1))
          {
            sub_10000367C(*(&v71 + 1));
          }

          goto LABEL_55;
        }
      }

      else
      {
        v16 = 0;
      }

      *&v80 = 0;
      *(&v80 + 1) = v4;
      v81 = &v83;
      v82 = xmmword_1001C76E0;
      sub_1000E90C8(v4, v61, v21, 0, &v51);
      sub_1000E9838(&v80, &v51);
      sub_1000E7978(&v51);
      if (v80 && (*(v80 + 344) & 1) == 0)
      {
        sub_100107738(&v71, &v80);
        *(&v71 + 1) = *(&v80 + 1);
        v72 = &v74;
        v73 = xmmword_1001C76E0;
        *&v51 = v81;
        v53 = &v81[56 * v82];
        sub_100107AC8(&v72, &v51, &v53);
        v24 = 1;
      }

      else
      {
        v23 = std::generic_category();
        v24 = 0;
        *&v71 = 5;
        *(&v71 + 1) = v23;
      }

      v27 = 7208;
      v79 = v24;
      sub_10010623C(&v80);
      if (v79)
      {
        if (v58 == 1)
        {
          sub_10010623C(v54);
          v58 = 0;
        }

        sub_100107738(v54, &v71);
        v54[1] = *(&v71 + 1);
        v55 = &v57;
        v56 = xmmword_1001C76E0;
        *&v80 = v72;
        *&v51 = &v72[56 * v73];
        sub_100107AC8(&v55, &v80, &v51);
        v58 = 1;
        if (v79)
        {
          sub_10010623C(&v71);
        }

        goto LABEL_45;
      }

      if (v71 >= 0)
      {
        v28 = v71;
      }

      else
      {
        v28 = -v71;
      }

      v16 = -v28;
LABEL_55:
      *&v50 = v16;
      *(&v50 + 1) = v27;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_57;
      }

      v17 = v16;
      if (!v16)
      {
        goto LABEL_57;
      }

      goto LABEL_60;
    }

    *&v80 = "di_asif::details::table::read(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v80 + 1) = 29;
    LODWORD(v81) = 16;
    sub_1000F1478(&v71, &v80);
    sub_1000026BC(v77, "Couldn't trim entry in read ", 28);
    sub_10019A3A8(v77, &v46);
    std::ostream::~ostream();
    sub_100106664(&v71);
    std::ios::~ios();
    v11 = 0;
    *&v50 = -34;
LABEL_65:
    if (v43)
    {
      sub_10000367C(v43);
    }

    if (v42)
    {
      sub_10000367C(v42);
    }

    if (v40)
    {
      sub_10000367C(v40);
    }

    if (v39)
    {
      sub_10000367C(v39);
    }

    if ((v11 & 1) == 0)
    {
      break;
    }
  }

  if ((v50 & 0x8000000000000000) == 0 || !v50)
  {
    *&v50 = v32;
    *(&v50 + 1) = v6;
  }

  sub_1000F1EB8(v45);
  sub_1000F1F0C(v54);
  if (v49)
  {
    sub_10000367C(v49);
  }

  if (v47)
  {
    sub_10000367C(v47);
  }

  return v50;
}

void sub_1000F12E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1001062D0(v28 + 16);
  sub_1000E7978(&STACK[0x24E0]);
  sub_10010623C(&STACK[0x4110]);
  sub_1000F1DF0(&a20);
  sub_10006D100(&a28);
  sub_1000F1EB8(&STACK[0x268]);
  sub_1000F1F0C(&STACK[0x390]);
  sub_100002440(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void *sub_1000F1478(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011C1B8(a1, a2);
  *a1 = off_10021F548;
  a1[45] = &off_10021F648;
  a1[46] = &off_10021F670;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F548;
  a1[45] = off_10021F5D0;
  a1[46] = off_10021F5F8;
  return a1;
}

void sub_1000F157C(_Unwind_Exception *a1)
{
  sub_100106664(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F15A0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100106664(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000F15E4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, unint64_t *a6@<X8>)
{
  v10 = *(*a1 + 8);
  v11 = *(v10 + 56);
  v12 = *(v10 + 28);
  v96[0] = *(*a1 + 352) + (v11 + v11 * a1[1]) / (v11 + 1) * v12;
  v96[1] = v96[0] + v12;
  v97 = 2;
  sub_100024E40(a3, v96, a4, v57);
  if (sub_1000242EC(v57, &v61))
  {
    *a6 = -34;
LABEL_83:
    a6[2] = 0;
    goto LABEL_84;
  }

  if (!((*(*(*a1 + 56) + 16 * a1[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a1 + 8) + 28)))
  {
    v30 = sub_100025FD4(v57, &v61);
    v31 = v59;
    *a6 = v30;
    a6[1] = v31;
    goto LABEL_83;
  }

  sub_100026714(v46, v57);
  sub_100026714(v35, &v61);
  sub_100026898(&v75, v46);
  v33 = a6;
  v77 = v48;
  v78 = v49;
  v79 = v50;
  v80 = v51;
  v81 = v52;
  v13 = v53;
  v53 = 0uLL;
  v82 = v13;
  v83 = v54;
  v85 = v56;
  v84 = v55;
  sub_100026898(v64, v35);
  v34 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = v40;
  v70 = v41;
  v17 = v42;
  v42 = 0uLL;
  v71 = v17;
  v72 = v43;
  v18 = v44;
  v74 = v45;
  v73 = v44;
  LOBYTE(v96[0]) = 0;
  v104 = 0;
  while (!sub_1000242EC(&v75, v64))
  {
    if (v84 >= v18 || v16 == -1)
    {
      break;
    }

    if (sub_1000E0464())
    {
      *&v107 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/asif.cpp:1954:32)]";
      *(&v107 + 1) = 104;
      LODWORD(v108) = 2;
      sub_10002A1D4(&v87, &v107);
      sub_1000026BC(v90, "sg: ", 4);
      sub_10019A3A8(v90, &v75);
      std::ostream::~ostream();
      sub_10002A44C(&v87);
      std::ios::~ios();
    }

    v87 = 0;
    v88 = v18;
    v89 = 2;
    sub_10008A3F4(&v75, &v87, v91);
    v20 = *(*(*a1 + 8) + 28);
    sub_10008A548(&v87, v91, v93, 0, v94 % v20 + (*(*(*a1 + 56) + 16 * a1[1] + 8) & 0x7FFFFFFFFFFFFFLL) * v20, v95);
    v21 = (*(**(a2 + 16) + 40))(*(a2 + 16));
    v105[0] = 0;
    v105[1] = v21;
    LOBYTE(v106) = 2;
    sub_10008A3F4(&v87, v105, &v107);
    if (v108)
    {
      (*(**(a2 + 16) + 136))(v105);
      v22 = a5[1];
      v23 = *a5 + 24 * v22;
      if (v22 == a5[2])
      {
        sub_1000591CC(a5, v23, 1, v105, &v109);
      }

      else
      {
        *v23 = 0;
        *(v23 + 4) = 0;
        *(v23 + 8) = 0;
        if (BYTE4(v105[0]) == 1)
        {
          *v23 = v105[0];
          *(v23 + 4) = 1;
        }

        *(v23 + 16) = v106;
        v106 = 0;
        v24 = *(v23 + 16);
        if (v24)
        {
          *v24 = v23;
        }

        ++a5[1];
      }

      v34 += v108;
    }

    v25 = v94;
    v26 = v93;
    if (*(&v107 + 1))
    {
      sub_10000367C(*(&v107 + 1));
    }

    if (v88)
    {
      sub_10000367C(v88);
    }

    v27 = v26 >= 0 || v26 == 0;
    v28 = v27;
    if (v27)
    {
      if ((v15 & 1) == 0)
      {
        v14 = v25;
        v15 = 1;
      }

      if (sub_100025604(&v75, v64, v25, v26))
      {
        sub_100026714(v86, &v75);
        sub_100025558(v86, v64, v25, v26, 0xFFFFFFFFFFFFFFFFLL, &v87);
        sub_10002A340(v96, &v87);
        sub_100025620(&v87);
        sub_100002440(v86);
        sub_1000246F4(v96, &v87);
        sub_100027250(&v75, &v87);
        sub_100002440(&v87);
        sub_100024448(v96, &v87);
        sub_100027250(v64, &v87);
        sub_100002440(&v87);
      }

      sub_100024AB4(&v75, v26);
      v16 += v26;
    }

    else
    {
      if (v26 >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = -v26;
      }

      v32 = -v29;
    }

    if (v92)
    {
      sub_10000367C(v92);
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  if (v15)
  {
    v26 = v14;
  }

  else
  {
    v26 = 0;
  }

  v32 = v16;
LABEL_50:
  if (v104 == 1)
  {
    if (v103)
    {
      sub_10000367C(v103);
    }

    if (v102)
    {
      sub_10000367C(v102);
    }

    if (v101)
    {
      sub_10000367C(v101);
    }

    if (v100)
    {
      sub_10000367C(v100);
    }

    if (v99)
    {
      sub_10000367C(v99);
    }

    if (v98)
    {
      sub_10000367C(v98);
    }
  }

  if (*(&v71 + 1))
  {
    sub_10000367C(*(&v71 + 1));
  }

  if (v65)
  {
    sub_10000367C(v65);
  }

  if (*(&v82 + 1))
  {
    sub_10000367C(*(&v82 + 1));
  }

  if (v76)
  {
    sub_10000367C(v76);
  }

  if (*(&v42 + 1))
  {
    sub_10000367C(*(&v42 + 1));
  }

  if (v36)
  {
    sub_10000367C(v36);
  }

  if (*(&v53 + 1))
  {
    sub_10000367C(*(&v53 + 1));
  }

  if (v47)
  {
    sub_10000367C(v47);
  }

  *v33 = v32;
  v33[1] = v26;
  if ((v32 & 0x8000000000000000) != 0 && v32)
  {
    v33[2] = 0;
  }

  else
  {
    v33[2] = v34;
  }

LABEL_84:
  if (v63)
  {
    sub_10000367C(v63);
  }

  if (v62)
  {
    sub_10000367C(v62);
  }

  if (v60)
  {
    sub_10000367C(v60);
  }

  if (v58)
  {
    sub_10000367C(v58);
  }
}

void sub_1000F1BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&STACK[0x640]);
  if (STACK[0x918])
  {
    sub_10000367C(STACK[0x918]);
  }

  sub_10002568C(&STACK[0x980]);
  sub_100002440(&STACK[0x3A0]);
  sub_100002440(&STACK[0x480]);
  sub_100002440(&a13);
  sub_100002440(&a41);
  sub_10006D100(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F1CF4(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*a1 + 8);
  v4 = *(v3 + 56);
  v5 = *(v3 + 28);
  v8[0] = *(*a1 + 352) + (v4 + v4 * a1[1]) / (v4 + 1) * v5;
  v8[1] = v8[0] + v5;
  v9 = 2;
  sub_100024E40(a2, v8, a3, v10);
  if (sub_1000242EC(v10, &v14))
  {
    v6 = -34;
  }

  else
  {
    sub_100025FD4(v10, &v14);
    v6 = (v17 - v13) & ~((v17 - v13) >> 63);
  }

  if (v16)
  {
    sub_10000367C(v16);
  }

  if (v15)
  {
    sub_10000367C(v15);
  }

  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v11)
  {
    sub_10000367C(v11);
  }

  return v6;
}

void sub_1000F1DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10006D100(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F1DF0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 16);
    if (*(v2 + 8104) == 1 && (*(a1 + 24) | 2) != 2)
    {
      v3 = *(v2 + 8120);
      if (v3 == *(v2 + 8128))
      {
        sub_100108358((v2 + 8112), *(v2 + 8112) + 24 * v3, 1, a1 + 32, &v5);
      }

      else
      {
        sub_10019A024(*(v2 + 8112) + 24 * v3, a1 + 32);
        ++*(v2 + 8120);
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    sub_10019A0BC(a1 + 32);
  }

  return a1;
}

uint64_t *sub_1000F1EB8(uint64_t *a1)
{
  v2 = sub_1001076E0(*a1);
  if (v2 < 0)
  {
    if (v2)
    {
      v4 = a1[1];
      if ((*v4 & 0x8000000000000000) == 0 || !*v4)
      {
        *v4 = v2;
        v4[1] = v3;
      }
    }
  }

  return a1;
}

uint64_t sub_1000F1F0C(uint64_t a1)
{
  sub_100108674(a1 + 8112);
  if (*(a1 + 7696))
  {
    v2 = *(a1 + 7680);
    if ((a1 + 7704) != v2)
    {
      operator delete(v2);
    }
  }

  v3 = *(a1 + 7624);
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = *(a1 + 7448);
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = *(a1 + 7400);
  if (v5)
  {
    sub_10000367C(v5);
  }

  v6 = *(a1 + 7224);
  if (v6)
  {
    sub_10000367C(v6);
  }

  if (*(a1 + 7208) == 1)
  {
    sub_10010623C(a1);
  }

  return a1;
}

uint64_t sub_1000F1FA4(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 32);
  v20 = off_10021D0C0;
  v21 = v2;
  (*(**(v2 + 16) + 80))(&v22);
  if (*(v21 + 8))
  {
    v4 = 4294967290;
  }

  else
  {
    if (atomic_load((a1 + 96)))
    {
      LODWORD(v6) = (*(*v22 + 16))(v22, 0);
      if (v6)
      {
        sub_1000EB7EC(&v20);
        exception = __cxa_allocate_exception(0x40uLL);
        v15 = exception;
        if (v6 < 0)
        {
          v6 = v6;
        }

        else
        {
          v6 = -v6;
        }

        *exception = &off_100233158;
        v16 = std::generic_category();
        v15[1] = v6;
        v15[2] = v16;
        *(v15 + 24) = 0;
        *(v15 + 48) = 0;
        v15[7] = "Can't flush asif on table close, backend barrier failed";
      }

      sub_1000EDEC0(a1, &v20);
    }

    else
    {
      sub_1000E8B2C(a1, v3, v18);
      v8 = 1;
      while (v18[0] != v19[3] || v18[1] != v19[4])
      {
        if (v8)
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        v10 = sub_1000EDB30(a1, &v20, v19, v9);
        sub_1000F2424(*(v19[0] + 56) + 16 * v19[1], 0, v17);
        v11 = v10 | v8 ^ 1;
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = 3;
        }

        v13 = sub_1000EDB30(a1, &v20, v19, v12);
        sub_10019A264(v17);
        sub_1000E81BC(v18);
        v8 = (v13 | v11) ^ 1;
      }
    }

    v4 = 0;
  }

  v20 = off_10021D0C0;
  if (v23)
  {
    sub_10000367C(v23);
  }

  return v4;
}

void sub_1000F21DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, char a14)
{
  *(v15 - 96) = v14;
  v17 = *(v15 - 72);
  if (v17)
  {
    sub_10000367C(v17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000F22B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011C280(a1, a2);
  *a1 = off_10021F988;
  a1[45] = &off_10021FA88;
  a1[46] = &off_10021FAB0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F988;
  a1[45] = off_10021FA10;
  a1[46] = off_10021FA38;
  return a1;
}

void sub_1000F23BC(_Unwind_Exception *a1)
{
  sub_10010899C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F23E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010899C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F2424@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  while (1)
  {
    if (!*v4)
    {
      v6 = 0;
      atomic_compare_exchange_strong(v4, &v6, 0xFFFFFFFFFFFFFFFFLL);
      if (!v6)
      {
        break;
      }
    }

    result = sub_100108F10(v4, 1);
    if ((result & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = 1;
LABEL_7:
  *(a3 + 16) = v7;
  *a3 = off_1002326D0;
  *(a3 + 8) = v4;
  *(a3 + 24) = a2;
  return result;
}

BOOL sub_1000F24B4(void *a1, void *a2)
{
  v2 = *(*(*a1 + 8) + 28);
  v3 = (*(*(*a1 + 56) + 16 * a1[1] + 8) & 0x7FFFFFFFFFFFFFLL) * v2;
  v4 = (*(*(*a2 + 56) + 16 * a2[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a2 + 8) + 28);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5 || v3 == v4 + v2;
}

uint64_t sub_1000F2518(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = *a1;
  v4 = 24 * v1;
  while (1)
  {
    v5 = sub_10003C008(v3);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v2 = (v5 + v2);
    v3 += 6;
    v4 -= 24;
    if (!v4)
    {
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1000F2584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 113) != 1)
  {
    goto LABEL_14;
  }

  *(a1 + 113) = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 40);
  v10 = *(sub_10019E2E8() + 1);
  v17 = v9;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a4;
  v20 = v6;
  v21 = a4;
  v23 = 0;
  v24 = 0;
  v22 = 1;
  sub_100026638(v26, &v17);
  if (v18)
  {
    sub_10000367C(v18);
  }

  v11 = (*(**(a2 + 16) + 120))(*(a2 + 16), v26);
  v12 = v28;
  if (v28 != v11)
  {
    *&v15 = "di_asif::details::map_element::flush_locked(ContextASIF &, table *, size_t)";
    *(&v15 + 1) = 43;
    v16 = 16;
    sub_1000F2790(&v17, &v15);
    sub_1000026BC(v25, "backend write failed during locked flush of map element, error ", 63);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10010929C(&v17);
    std::ios::~ios();
    *(a1 + 113) = 1;
    sub_1000EB7EC(a2);
    if (v11 < 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = -v11;
    }
  }

  if (v27)
  {
    sub_10000367C(v27);
  }

  if (v12 == v11)
  {
LABEL_14:
    v6 = 0;
    if (a3 && (*(a1 + 112) & 1) != 0)
    {
      *(a1 + 112) = 0;
      sub_1000EA780(a3, *a1, *(a1 + 16));
      if (!*(a1 + 16))
      {
        v13 = *(a1 + 24);
        if (v13)
        {
          sub_1000E8A0C(a3, v13);
        }
      }

      return 0;
    }
  }

  return v6;
}

void sub_1000F2754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *(v13 - 168);
  if (v15)
  {
    sub_10000367C(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000F2790(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011C348(a1, a2);
  *a1 = off_10021FBA8;
  a1[45] = &off_10021FCA8;
  a1[46] = &off_10021FCD0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021FBA8;
  a1[45] = off_10021FC30;
  a1[46] = off_10021FC58;
  return a1;
}

void sub_1000F2894(_Unwind_Exception *a1)
{
  sub_10010929C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F28B8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010929C(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000F28FC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1[1] + *(*(a2 + 8) + 56) * *(*(a2 + 8) + 28);
  v30[0] = a1[1];
  v30[1] = v7;
  v31 = 2;
  sub_100024E40(a3, v30, a4, &v45);
  if (!sub_1000242EC(&v45, &v50))
  {
    v8 = *(*(a2 + 8) + 26);
    v9 = v47 / v8 * v8;
    v19 = (v53 - v49) & ~((v53 - v49) >> 63);
    v10 = v19 + v47;
    v11 = (v8 + v19 + v47 - 1) / v8 * v8;
    if (v9 < v11)
    {
      v12 = v47 % v8;
      do
      {
        v13 = sub_1000E94FC(a1, a2, 1u, v9, v11);
        v14 = v13;
        if (v10 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v10;
        }

        v16 = v9 + v12;
        if (v15 > v9 + v12)
        {
          if (v19 - ((v49 - a3[26]) & ~((v49 - a3[26]) >> 63)) >= v15 - (v9 + v12))
          {
            v17 = v15 - (v9 + v12);
          }

          else
          {
            v17 = v19 - ((v49 - a3[26]) & ~((v49 - a3[26]) >> 63));
          }

          sub_100025170(&v45, v17 + v47, a4, 0, v38);
          sub_100026714(v27, v38);
          sub_100025558(v27, &v42, v40, v17, 0xFFFFFFFFFFFFFFFFLL, v30);
          if (v29)
          {
            sub_10000367C(v29);
          }

          if (v28)
          {
            sub_10000367C(v28);
          }

          sub_1000246F4(v30, v24);
          sub_100024448(v30, v21);
          sub_10002585C(v24, v21);
          if (v23)
          {
            sub_10000367C(v23);
          }

          if (v22)
          {
            sub_10000367C(v22);
          }

          if (v26)
          {
            sub_10000367C(v26);
          }

          if (v25)
          {
            sub_10000367C(v25);
          }

          if (v37)
          {
            sub_10000367C(v37);
          }

          if (v36)
          {
            sub_10000367C(v36);
          }

          if (v35)
          {
            sub_10000367C(v35);
          }

          if (v34)
          {
            sub_10000367C(v34);
          }

          if (v33)
          {
            sub_10000367C(v33);
          }

          if (v32)
          {
            sub_10000367C(v32);
          }

          if (v44)
          {
            sub_10000367C(v44);
          }

          if (v43)
          {
            sub_10000367C(v43);
          }

          if (v41)
          {
            sub_10000367C(v41);
          }

          if (v39)
          {
            sub_10000367C(v39);
          }
        }

        v18 = sub_1000E95A4(a1, a2, 1u, v14, v11);
        v9 = v18;
        if (v18 >= v15 + v12)
        {
          sub_1000249F0(&v45, v18 - v16);
          v12 = 0;
        }
      }

      while (v9 < v10);
    }
  }

  if (v52)
  {
    sub_10000367C(v52);
  }

  if (v51)
  {
    sub_10000367C(v51);
  }

  if (v48)
  {
    sub_10000367C(v48);
  }

  if (v46)
  {
    sub_10000367C(v46);
  }
}

void sub_1000F2C3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  v7 = *(*(a3 + 8) + 28);
  v8 = a1[2];
  v9 = *(sub_10019E2E8() + 1);
  v15 = v6;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v7;
  v18 = v8;
  v19 = v7;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v10 = (*(**(a2 + 16) + 128))(*(a2 + 16), &v15);
  if (v17 != v10)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = exception;
    if (v10 < 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = -v10;
    }

    *exception = &off_100233158;
    v14 = std::generic_category();
    v12[1] = v13;
    v12[2] = v14;
    *(v12 + 24) = 0;
    *(v12 + 48) = 0;
    v12[7] = "Can't load bitmap from backend";
  }

  sub_1000F2D98(a1, a3);
  if (v16)
  {
    sub_10000367C(v16);
  }
}

void sub_1000F2D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1000F2D98(uint64_t *a1, uint64_t a2)
{
  sub_1000FFF2C(v23, a2, *a1);
  v20 = v23[0];
  result = sub_1000EC31C(a2, &v20, v23);
  v5 = *(a2 + 8);
  v6 = *(v5 + 16);
  if (*(v6 + 160) != 1 || (v7 = (a1[1] / *(v5 + 26) - *(a2 + 352) / *(v5 + 26)) / (*(v5 + 56) * (*(v5 + 28) / *(v5 + 26))) + *(v5 + 72) * (*(a2 + 352) / *(v5 + 88)), result = sub_1000B1EE8(v6, v7), (result & 1) != 0) || v7 >= *(v6 + 16))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    result = sub_1000B2014(v6, v7, 1);
  }

  v22 = v24;
  v20 = v23[0];
  v21 = v23[1];
  v9 = *(a2 + 8);
  v10 = *(v9 + 26);
  v11 = *(v9 + 28);
  v18 = 0u;
  v19 = 0u;
  if (2 * v11 / v10 * *(v9 + 56))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      if (!((v13 >> 1) * v10 % v11))
      {
        if (v13)
        {
          sub_1000E82E4(&v20);
          v12 = 0;
        }

        v15 = atomic_load((*(v21 + 56) + 16 * *(&v21 + 1) + 8));
        v12 |= v15 >> 62 == 3;
        v14 += 2 * (v11 / v10);
      }

      v16 = sub_1000E93C0(a1, v13);
      result = v13;
      if (v13 != v14)
      {
        *v25 = v16 & 1 | (((v16 >> 1) & 1) << 8);
        result = sub_1000B1980((a1 + 4), v13, v14, v25);
      }

      if ((v8 & v12) == 1)
      {
        if (v16 > 1)
        {
          v17 = &v19;
          if (v16 != 2)
          {
            v17 = &v19 + 8;
          }
        }

        else if (v16)
        {
          v17 = &v18 + 8;
        }

        else
        {
          v17 = &v18;
        }

        *v17 += (result - v13) >> 1;
      }

      v13 = result;
    }

    while (result < 2 * (*(*(a2 + 8) + 28) / *(*(a2 + 8) + 26)) * *(*(a2 + 8) + 56));
  }

  if (v8)
  {
    return sub_1000F3008(v6, &v18);
  }

  return result;
}

atomic_ullong *sub_1000F3008(atomic_ullong *result, unint64_t *a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, &_mh_execute_header + (v2 & 0xFFFFFFFF00000000 | (v2 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 15, *a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 16, v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 17, v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 18, v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

uint64_t sub_1000F30D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  *a1 = a4;
  v9 = *(a3 + 8);
  v10 = *(v9 + 56);
  v11 = *(v9 + 28);
  *(a1 + 8) = *(a3 + 352) + a4 / (v10 + 1) * v10 * v11;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  v12 = a6 ^ 1;
  sub_100087B04((a1 + 32), 2 * v10 * (v11 / *(v9 + 26)), a6 ^ 1);
  *(a1 + 120) = 850045863;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  if (v12)
  {
    sub_1000F2C3C(a1, a2, a3);
  }

  else
  {
    *(a1 + 112) = 257;
    sub_1000FFF2C(&v16, a3, *a1);
    atomic_fetch_or((*(v16 + 56) + 16 * v17 + 8), 0x8000000000000000);
    sub_1000FFF2C(&v16, a3, *a1);
    atomic_fetch_or((*(v16 + 56) + 16 * v17 + 8), 0x4000000000000000uLL);
    v13 = *(a3 + 8);
    v14 = *(v13 + 16);
    if (*(v14 + 160) == 1)
    {
      sub_1000B2014(v14, (*(a1 + 8) / *(v13 + 26) - *(a3 + 352) / *(v13 + 26)) / (*(v13 + 56) * (*(v13 + 28) / *(v13 + 26))) + *(v13 + 72) * (*(a3 + 352) / *(v13 + 88)), 1);
    }
  }

  return a1;
}

void sub_1000F3258(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  sub_10010979C((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t sub_1000F3280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a2 + 8) + 8) & 1) == 0)
  {
    std::mutex::lock((a1 + 120));
    if (a3 && (sub_1000FFF2C(&v17, a3, *a1), (atomic_fetch_and((*(v17 + 56) + 16 * v18 + 8), 0x7FFFFFFFFFFFFFFFuLL) & 0x8000000000000000) != 0))
    {
      v9 = 1;
    }

    else
    {
      if ((*(a1 + 113) & 1) == 0)
      {
        v4 = 0;
        if (*(a1 + 112) != 1)
        {
LABEL_16:
          std::mutex::unlock((a1 + 120));
          return v4;
        }
      }

      v9 = 0;
    }

    v10 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
    if (v10)
    {
      sub_1000EB7EC(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = exception;
      if (v10 < 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = -v10;
      }

      *exception = &off_100233158;
      v16 = std::generic_category();
      v14[1] = v15;
      v14[2] = v16;
      *(v14 + 24) = 0;
      *(v14 + 48) = 0;
      v14[7] = "Can't flush asif on map element close, backend barrier failed";
    }

    v4 = sub_1000F2584(a1, a2, a3, a4);
    if (v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (a3 && v11)
    {
      sub_1000FFF2C(&v17, a3, *a1);
      atomic_fetch_or((*(v17 + 56) + 16 * v18 + 8), 0x8000000000000000);
    }

    goto LABEL_16;
  }

  return 4294967290;
}

atomic_ullong *sub_1000F3458@<X0>(atomic_ullong *result@<X0>, uint64_t a2@<X1>, std::unique_lock<std::mutex>::mutex_type *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, char a6@<W5>, atomic_ullong *a7@<X8>)
{
  v10 = result;
  v19 = a4;
  *a7 = 0;
  if (a4 || a5)
  {
    sub_1000F35E0((result + 36), a3, a6, &v18);
    sub_1000F385C(a7, &v18);
    result = sub_1000E6B5C(&v18);
    v12 = *a7;
    if (*a7)
    {
      LOBYTE(v12) = *(v12 + 520) ^ 1;
    }

    if (v12 & 1) != 0 || (a6)
    {
      if (!*a7 || (v13 = atomic_load((*a7 + 24)), v13 != 2))
      {
        if (!*a7 || (*(*a7 + 520) & 1) == 0)
        {
          if (v19 | (*(*(v10 + 160) + 8 * a3) * *(v10 + 28)))
          {
            if (v19)
            {
              v14 = v19;
            }

            else
            {
              v14 = *(*(v10 + 160) + 8 * a3) * *(v10 + 28);
            }

            v18 = *(v10 + 88) * a3;
            v19 = v14;
            sub_1000F3900(a7, v10, (a2 + 16), &v19, &v18);
          }

          v15 = sub_1000E98DC(v10, a2, 1);
          v17 = *(v10 + 88) * a3;
          v18 = v15;
          v16 = 1;
          sub_1000F389C(a7, v10, (a2 + 16), &v18, &v17, &v16);
        }
      }
    }
  }

  return result;
}

atomic_ullong *sub_1000F35E0@<X0>(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v20 = 0;
  v21 = a2;
  sub_10011C410(a1, a2, a3, &v18);
  if (v18 && (*(v18 + 520) & 1) == 0 || v18 && (*(v18 + 520) & 1) != 0)
  {
LABEL_5:
    *a4 = 0;
    v7 = atomic_exchange(&v18, 0);
  }

  else
  {
    v8 = *(a1 + 912);
    if ((v8 & 1) == 0 || v19 == (a1 + 936))
    {
      *a4 = 0;
      return sub_1000E6B5C(&v18);
    }

    while ((v8 & 2) == 0)
    {
      sub_10011C8E4(a1, a2, &v16);
      v20 = v16;
      sub_1000F385C(&v18, &v17);
      sub_1000E6B5C(&v17);
      if (v18 && (*(v18 + 520) & 1) == 0)
      {
        goto LABEL_23;
      }

      v9 = sub_10011CAF0(a1);
      if (v9)
      {
        v20 = v9;
        sub_10011CB98(a1, v9, a2, &v16);
        sub_1000F385C(&v18, &v16);
        sub_1000E6B5C(&v16);
LABEL_23:
        std::mutex::lock((a1 + 952));
        v13 = sub_100117F3C((a1 + 928), v19, &v21);
        if ((v14 & 1) == 0)
        {
          *(v13 + 40) = v20;
        }

        std::condition_variable::notify_all((a1 + 1016));
        std::mutex::unlock((a1 + 952));
        v22[0] = 0;
        v23 = 0;
        sub_100119994(a1, 0, v22);
        if (v23 == 1)
        {
          sub_100119CD0(v22);
        }

        goto LABEL_5;
      }

      v8 = *(a1 + 912);
      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v7 = (a1 + 104);
    *a4 = 0;
    v11 = atomic_load((a1 + 104));
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        atomic_compare_exchange_strong(v7, &v12, v11 + 1);
        if (v12 == v11)
        {
          break;
        }

        v11 = v12;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v15 = *(a1 + 608);
      if (v15)
      {
        *(a1 + 616) = atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_21:
      v7 = 0;
    }
  }

  atomic_store(v7, a4);
  return sub_1000E6B5C(&v18);
}

void sub_1000F37E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100002A4C(exception_object);
}

atomic_ullong *sub_1000F385C(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    sub_1000E6B5C(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_1000F38C4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 464))
    {
      sub_10011D8C8(v2 + 440, v2);
    }
  }

  __cxa_rethrow();
}

void sub_1000F3928(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 464))
    {
      sub_10011D8C8(v2 + 440, v2);
    }
  }

  __cxa_rethrow();
}

unint64_t *sub_1000F3964@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    sub_10011CF00(&v8, v6, 1);
    if (v8 && (*(v8 + 520) & 1) == 0)
    {
      v7 = *(v8 + 32);
      *a3 = 0;
      if (v7 == a2)
      {
        atomic_store(atomic_exchange(&v8, 0), a3);
      }
    }

    else
    {
      *a3 = 0;
    }

    return sub_1000E6B5C(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_1000F3A00(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011D738(a1, a2);
  *a1 = off_10021FDC8;
  a1[45] = &off_10021FEC8;
  a1[46] = &off_10021FEF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021FDC8;
  a1[45] = off_10021FE50;
  a1[46] = off_10021FE78;
  return a1;
}

void sub_1000F3B04(_Unwind_Exception *a1)
{
  sub_100109A8C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F3B28(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100109A8C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F3B6C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011D800(a1, a2);
  *a1 = off_10021FFE8;
  a1[45] = &off_1002200E8;
  a1[46] = &off_100220110;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021FFE8;
  a1[45] = off_100220070;
  a1[46] = off_100220098;
  return a1;
}

void sub_1000F3C70(_Unwind_Exception *a1)
{
  sub_10010A224(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F3C94(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010A224(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F3CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F3EB8(a1 + 2088);
  if (v4 == -1)
  {
    return 4294967282;
  }

  if (v4 != 1 || ((v5 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0), v5 < 0) ? (v6 = v5) : (v6 = -v5), !v5))
  {
    v7 = sub_1000F40C4(a1 + 288);
    if (v7 != -1)
    {
      if (v7 != 1)
      {
        return 0;
      }

      v8 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
      v6 = v8 < 0 ? v8 : -v8;
      if (!v8)
      {
        return 0;
      }

      *&v10 = "di_asif::details::dir::handle_all_failures(ContextASIF &)";
      *(&v10 + 1) = 42;
      v11 = 16;
      sub_1000F4164(v12, &v10);
      sub_1000026BC(v13, "Backend barrier failed during allocator failures handling, error ", 65);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10010B154(v12);
      goto LABEL_15;
    }

    return 4294967282;
  }

  *&v10 = "di_asif::details::dir::handle_all_failures(ContextASIF &)";
  *(&v10 + 1) = 42;
  v11 = 16;
  sub_1000F3F58(v12, &v10);
  sub_1000026BC(v13, "Backend barrier failed during bitmap allocator failures handling, error ", 72);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10010A9BC(v12);
LABEL_15:
  std::ios::~ios();
  return v6;
}

void sub_1000F3E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000F428C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F3EB8(uint64_t a1)
{
  v3[0] = 0;
  v4 = 0;
  v1 = sub_100116C84(a1, 0, v3);
  if (v4 == 1)
  {
    sub_1001181E4(v3);
  }

  return v1;
}

void sub_1000F3F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_1001181E4(&a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000F3F58(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011D91C(a1, a2);
  *a1 = off_100220208;
  a1[45] = &off_100220308;
  a1[46] = &off_100220330;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220208;
  a1[45] = off_100220290;
  a1[46] = off_1002202B8;
  return a1;
}

void sub_1000F405C(_Unwind_Exception *a1)
{
  sub_10010A9BC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F4080(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010A9BC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F40C4(uint64_t a1)
{
  v3[0] = 0;
  v4 = 0;
  v1 = sub_100119994(a1, 0, v3);
  if (v4 == 1)
  {
    sub_100119CD0(v3);
  }

  return v1;
}

void sub_1000F4144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_100119CD0(&a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000F4164(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011D9E4(a1, a2);
  *a1 = off_100220428;
  a1[45] = &off_100220528;
  a1[46] = &off_100220550;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220428;
  a1[45] = off_1002204B0;
  a1[46] = off_1002204D8;
  return a1;
}

void sub_1000F4268(_Unwind_Exception *a1)
{
  sub_10010B154(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F428C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010B154(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F42D0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  std::mutex::lock((a1 + 3800));
  v6 = *(a1 + 3768);
  v54 = *(a1 + 3752);
  v55 = v6;
  *(a1 + 3752) = 0u;
  *(a1 + 3768) = 0u;
  v7 = v56;
  v56 = *(a1 + 3784);
  *(a1 + 3784) = v7;
  std::mutex::unlock((a1 + 3800));
  sub_1000F4A90(a1 + 2088);
  sub_1000F4B24(a1 + 288);
  v8 = sub_1000F3CD8(a1, a2);
  if (v8)
  {
    goto LABEL_25;
  }

  v9 = *(a1 + 26);
  v10 = *(a1 + 168) - *(a1 + 160) + v9 + 7;
  v11 = v10 / v9 * v9;
  if (v10 == v10 % v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc_type_valloc(v10 / v9 * v9, 0x8B7C732DuLL);
    if (!v12)
    {
      exception = __cxa_allocate_exception(8uLL);
      v43 = std::bad_alloc::bad_alloc(exception);
    }
  }

  *&v57 = off_10021E1A0;
  v59 = &v57;
  v67 = v12;
  sub_1000DF1F8(v68, &v57);
  sub_1000298F0(&v57);
  v13 = v67;
  *v67 = bswap64(*(a1 + 3616) - 2);
  v14 = v13 + 1;
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  while (v15 != v16)
  {
    v17 = *v15++;
    *v14++ = bswap64(v17);
  }

  bzero(v14, v67 + v11 - v14);
  v18 = *(a1 + 26);
  if (*(a1 + 26))
  {
    v18 = malloc_type_valloc(v18, 0x8B7C732DuLL);
    if (!v18)
    {
      v40 = __cxa_allocate_exception(8uLL);
      v41 = std::bad_alloc::bad_alloc(v40);
    }
  }

  *&v57 = off_10021E1A0;
  v59 = &v57;
  v65 = v18;
  sub_1000DF1F8(v66, &v57);
  sub_1000298F0(&v57);
  memcpy(v65, v67, *(a1 + 26));
  v19 = v67;
  v20 = *(sub_10019E2E8() + 1);
  v46 = v19;
  v47 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = v11;
  v49 = a3;
  v50 = v11;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v21 = (*(**(a2 + 16) + 120))(*(a2 + 16), &v46);
  if (v11 != v21)
  {
    v33 = v21;
    *&v44 = "di_asif::details::dir::flush_dir(ContextASIF &, uint64_t)";
    *(&v44 + 1) = 32;
    v45 = 16;
    sub_1000F4BB8(&v57, &v44);
    sub_1000026BC(v64, "Full dir write failed with ", 27);
    std::ostream::operator<<();
    sub_1000F4CE0(&v57);
    v34 = __cxa_allocate_exception(0x40uLL);
    if (v33 >= 0)
    {
      v22 = -5;
    }

    else
    {
      v22 = v33;
    }

    v35 = "Failed writing full dir";
LABEL_31:
    *v34 = &off_100233158;
    v36 = std::generic_category();
    v34[1] = v22;
    v34[2] = v36;
    *(v34 + 24) = 0;
    *(v34 + 48) = 0;
    v34[7] = v35;
  }

  v22 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
  if (v22)
  {
    v34 = __cxa_allocate_exception(0x40uLL);
    v35 = "Failed barrier after writing full dir";
    goto LABEL_31;
  }

  v23 = *(a1 + 3616);
  *(a1 + 3616) = v23 + 1;
  *v65 = bswap64(v23);
  v24 = v65;
  v25 = *(a1 + 26);
  v26 = *(sub_10019E2E8() + 1);
  *&v57 = v24;
  *(&v57 + 1) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v58 = v25;
  v59 = a3;
  v60 = v25;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  sub_100024B78(&v46, &v57);
  if (*(&v57 + 1))
  {
    sub_10000367C(*(&v57 + 1));
  }

  LODWORD(v27) = (*(**(a2 + 16) + 120))(*(a2 + 16), &v46);
  if (v27 != *(a1 + 26))
  {
    *&v44 = "di_asif::details::dir::flush_dir(ContextASIF &, uint64_t)";
    *(&v44 + 1) = 32;
    v45 = 16;
    sub_1000F4D24(&v57, &v44);
    sub_1000026BC(v64, "First block of dir write failed with ", 37);
    std::ostream::operator<<();
    sub_1000F4E4C(&v57);
    v37 = __cxa_allocate_exception(0x40uLL);
    v38 = v37;
    if (v27 >= 0)
    {
      v27 = 4294967291;
    }

    else
    {
      v27 = v27;
    }

    *v37 = &off_100233158;
    v39 = std::generic_category();
    v38[1] = v27;
    v38[2] = v39;
    *(v38 + 24) = 0;
    *(v38 + 48) = 0;
    v38[7] = "Failed writing first block of dir";
  }

  if (v47)
  {
    sub_10000367C(v47);
  }

  v28 = (*(&v54 + 1) + 8 * (v56 >> 9));
  if (v55 == *(&v54 + 1))
  {
    v29 = 0;
    v31 = 0;
    v30 = (*(&v54 + 1) + 8 * ((*(&v56 + 1) + v56) >> 9));
  }

  else
  {
    v29 = &(*v28)[v56 & 0x1FF];
    v30 = (*(&v54 + 1) + 8 * ((*(&v56 + 1) + v56) >> 9));
    v31 = (*v30 + 8 * ((*(&v56 + 1) + v56) & 0x1FF));
  }

  sub_1000EEB20(a1, v28, v29, v30, v31, a2);
  v8 = 1;
  sub_10002986C(&v65, 0);
  sub_1000298F0(v66);
  sub_10002986C(&v67, 0);
  sub_1000298F0(v68);
LABEL_25:
  sub_100069604(&v54);
  return v8;
}

void sub_1000F48CC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, char a33)
{
  sub_1000F4E4C(&a33);
  if (a14)
  {
    sub_10000367C(a14);
  }

  if (a2 == 1)
  {
    v41 = __cxa_begin_catch(a1);
    *(v33 + 3616) = v37;
    std::mutex::lock((v33 + 3800));
    v42 = *(v33 + 3784) + *(v33 + 3792);
    v43 = *(v33 + 3760);
    v44 = (v43 + 8 * (v42 >> 9));
    if (*(v33 + 3768) == v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = *v44 + 8 * (v42 & 0x1FF);
    }

    v46 = (a28 + 8 * (a31 >> 9));
    if (a29 == a28)
    {
      v47 = 0;
      v49 = 0;
      v48 = (a28 + 8 * ((a32 + a31) >> 9));
    }

    else
    {
      v47 = &(*v46)[8 * (a31 & 0x1FF)];
      v48 = (a28 + 8 * ((a32 + a31) >> 9));
      v49 = (*v48 + 8 * ((a32 + a31) & 0x1FF));
    }

    sub_1000EEAEC(v34, v44, v45, v46, v47, v48, v49);
    v50 = v41[2];
    std::mutex::unlock((v33 + 3800));
    __cxa_end_catch();
    JUMPOUT(0x1000F465CLL);
  }

  sub_10002986C((v38 - 168), 0);
  sub_1000298F0(v36 + 8);
  sub_10002986C((v38 - 128), 0);
  sub_1000298F0(v35 + 8);
  sub_100069604(&a27);
  _Unwind_Resume(a1);
}

void sub_1000F4A90(uint64_t a1)
{
  v1 = (a1 + 608);
  if (atomic_load((a1 + 608)))
  {
    v4 = (a1 + 616);
    atomic_fetch_add((a1 + 616), 1uLL);
    v7.__m_ = (a1 + 624);
    v7.__owns_ = 1;
    std::mutex::lock((a1 + 624));
    if (atomic_load(v1))
    {
      do
      {
        std::condition_variable::wait((a1 + 688), &v7);
      }

      while (atomic_load((a1 + 608)));
    }

    atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL);
    if (v7.__owns_)
    {
      std::mutex::unlock(v7.__m_);
    }
  }
}

void sub_1000F4B24(uint64_t a1)
{
  v1 = (a1 + 784);
  if (atomic_load((a1 + 784)))
  {
    v4 = (a1 + 792);
    atomic_fetch_add((a1 + 792), 1uLL);
    v7.__m_ = (a1 + 800);
    v7.__owns_ = 1;
    std::mutex::lock((a1 + 800));
    if (atomic_load(v1))
    {
      do
      {
        std::condition_variable::wait((a1 + 864), &v7);
      }

      while (atomic_load((a1 + 784)));
    }

    atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL);
    if (v7.__owns_)
    {
      std::mutex::unlock(v7.__m_);
    }
  }
}

void *sub_1000F4BB8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011DAAC(a1, a2);
  *a1 = off_100220648;
  a1[45] = &off_100220748;
  a1[46] = &off_100220770;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220648;
  a1[45] = off_1002206D0;
  a1[46] = off_1002206F8;
  return a1;
}

void sub_1000F4CBC(_Unwind_Exception *a1)
{
  sub_10010B8EC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F4CE0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010B8EC(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F4D24(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011DB74(a1, a2);
  *a1 = off_100220868;
  a1[45] = &off_100220968;
  a1[46] = &off_100220990;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220868;
  a1[45] = off_1002208F0;
  a1[46] = off_100220918;
  return a1;
}

void sub_1000F4E28(_Unwind_Exception *a1)
{
  sub_10010C084(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F4E4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010C084(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F4E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(a4 + 208) - *(a3 + 208);
  v11 = v10 & ~(v10 >> 63);
  v12 = *(a3 + 24);
  sub_100026714(&v39, a3);
  v13 = 0;
  if (a5)
  {
    v14 = "read";
  }

  else
  {
    v14 = "write";
  }

  v15 = 4;
  if (!a5)
  {
    v15 = 5;
  }

  v24 = v15;
  v25 = v14;
  while (1)
  {
    v16 = v12 / *(a1 + 88);
    sub_1000EB1E4(a1, a2, v16, a5 ^ 1, 1, &v38);
    if (v38 && (*(v38 + 520) & 1) != 0)
    {
      if ((a5 & 1) == 0)
      {
        sub_1000EB7EC(a2);
      }

      v17 = 0;
      v5 = -5;
      goto LABEL_24;
    }

    sub_100025170(&v39, *(a1 + 88) + *(a1 + 88) * v16, a4, 0, &v30);
    if (v38 && (*(v38 + 520) & 1) == 0)
    {
      if (a5)
      {
        *(v38 + 400);
        v20 = sub_1000F0A1C();
      }

      else
      {
        if (*(v38 + 400))
        {
          v19 = v38 + 40;
        }

        else
        {
          v19 = 0;
        }

        v20 = sub_1000EEC4C(v19, a2, &v30, &v34);
      }

      v5 = v20;
      if ((v20 & 0x8000000000000000) != 0 && v20)
      {
        *&v26 = "di_asif::details::dir::do_io(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &, BOOL)";
        *(&v26 + 1) = 28;
        v27 = 16;
        sub_1000F51E0(v28, &v26);
        sub_1000026BC(v29, "Failed during table ", 20);
        sub_1000026BC(v29, v25, v24);
        sub_1000026BC(v29, " in dir I/O, error ", 19);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10010C81C(v28);
        std::ios::~ios();
        if ((a5 & 1) == 0)
        {
          sub_1000EB7EC(a2);
        }

        v17 = 0;
        goto LABEL_16;
      }

      v18 = v20;
    }

    else
    {
      sub_100025FD4(&v30, &v34);
      v18 = (v37 - v33) & ~((v37 - v33) >> 63);
      sub_1000249F0(&v30, v18);
    }

    sub_1000249F0(&v39, v18);
    v12 += v18;
    v13 += v18;
    v17 = 1;
LABEL_16:
    if (v36)
    {
      sub_10000367C(v36);
    }

    if (v35)
    {
      sub_10000367C(v35);
    }

    if (v32)
    {
      sub_10000367C(v32);
    }

    if (v31)
    {
      sub_10000367C(v31);
    }

LABEL_24:
    sub_1000E6B5C(&v38);
    if (!v17)
    {
      break;
    }

    if (v13 == v11)
    {
      v21 = *(a3 + 24);
      goto LABEL_40;
    }
  }

  v11 = v5;
LABEL_40:
  if (v41)
  {
    sub_10000367C(v41);
  }

  if (v40)
  {
    sub_10000367C(v40);
  }

  return v11;
}

void sub_1000F5184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000F5308(va);
  sub_10006D100(&STACK[0x240]);
  sub_1000E6B5C(&STACK[0x400]);
  sub_100002440(&STACK[0x408]);
  _Unwind_Resume(a1);
}

void *sub_1000F51E0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011DC3C(a1, a2);
  *a1 = off_100220A88;
  a1[45] = &off_100220B88;
  a1[46] = &off_100220BB0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220A88;
  a1[45] = off_100220B10;
  a1[46] = off_100220B38;
  return a1;
}

void sub_1000F52E4(_Unwind_Exception *a1)
{
  sub_10010C81C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F5308(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010C81C(a1);
  std::ios::~ios();
  return a1;
}

double sub_1000F534C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 32) & 1) + *(a1 + 24);
  v10[0] = *(a1 + 40);
  v10[1] = v3;
  v11 = 2;
  *&v8 = qword_10023FE60;
  *(&v8 + 1) = qword_10023FE60;
  LOBYTE(v9) = 2;
  v4 = sub_1000F5408(*(a1 + 64), *(a1 + 56), v10, &v8);
  if (v4 >= 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_100001860(exception, "Can't convert ASIF flag.", 5u);
  }

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v4;
  return result;
}

unint64_t sub_1000F5408(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = 0;
  *&v29 = *a3;
  *(&v29 + 1) = v29;
  v26 = qword_10023FE60;
  v27 = qword_10023FE60;
  v30 = 2;
  v28 = 2;
  v24 = *a3;
  v25 = a3[2];
  do
  {
    v8 = *(&v24 + 1);
    if (v25)
    {
      if (v25 == 3)
      {
        if (*(&v24 + 1) < v24)
        {
          goto LABEL_5;
        }
      }

      else if (v24 >= *(&v24 + 1))
      {
        goto LABEL_5;
      }
    }

    else if (v24 >= *(&v24 + 1) || (v24 + 1) >= *(&v24 + 1))
    {
LABEL_5:
      if (!qword_10023FE60)
      {
        break;
      }

      goto LABEL_12;
    }

    if (!(*(&v24 + 1) + (v25 & 1) - v24 + ((v25 >> 1) & 1) - 1))
    {
      break;
    }

LABEL_12:
    if ((v25 & 2) != 0)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }

    v11 = v10 * *(a1 + 26);
    sub_1000EB1E4(a1, a2, v11 / *(a1 + 88), 0, 1, &v23);
    if (v23 && (*(v23 + 520) & 1) != 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v18 = std::generic_category();
      exception[1] = 4294967291;
      exception[2] = v18;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Can't load table to get extents";
    }

    if (v23 && (*(v23 + 520) & 1) == 0)
    {
      if (*(v23 + 400))
      {
        v14 = (v23 + 40);
      }

      else
      {
        v14 = 0;
      }

      v12 = sub_1000F56F8(v14, a2, &v24, &v26);
    }

    else
    {
      v12 = 0;
      v13 = (*(a1 + 88) + *(a1 + 88) * (v11 / *(a1 + 88)) + 1) / *(a1 + 26);
      if (v13 >= v8)
      {
        v13 = v8;
      }

      v26 = v10;
      v27 = v13;
      v28 = 2;
    }

    if (v12 == v7)
    {
LABEL_36:
      *(&v29 + 1) = v27;
      v30 = 2;
      v19 = v24;
      v20 = v25;
      sub_10000C778(&v19, &v29, &v21);
      v24 = v21;
      LOBYTE(v25) = v22;
      v15 = 1;
      v7 = v12;
      goto LABEL_40;
    }

    if (v30)
    {
      if (v30 == 3)
      {
        if (*(&v29 + 1) >= v29)
        {
          goto LABEL_35;
        }
      }

      else if (v29 < *(&v29 + 1))
      {
        goto LABEL_35;
      }
    }

    else if (v29 < *(&v29 + 1) && (v29 + 1) < *(&v29 + 1))
    {
LABEL_35:
      if (!(*(&v29 + 1) + (v30 & 1) - v29 + ((v30 >> 1) & 1) - 1))
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    if (!qword_10023FE60)
    {
      goto LABEL_36;
    }

LABEL_39:
    v15 = 0;
LABEL_40:
    sub_1000E6B5C(&v23);
  }

  while ((v15 & 1) != 0);
  *a4 = v29;
  *(a4 + 16) = v30;
  return v7;
}

void sub_1000F56D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000E6B5C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1000F56F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v61[0] = *(a3 + 17);
  *(v61 + 3) = *(a3 + 20);
  if ((v7 & 2) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v5 + 1;
  }

  v9 = sub_1000E8284(a1, v8 * *(a1[1] + 26));
  v11 = atomic_load((v9[7] + 16 * v10 + 8));
  v48 = v11 >> 62;
  if (v11 >> 62 == 3)
  {
    v12 = v9[1];
    sub_1000E90C8(a1, a2, (v9[44] + (*(v12 + 56) + *(v12 + 56) * v10) / (*(v12 + 56) + 1) * *(v12 + 28)) / *(v12 + 26), 0, v54);
    v13 = a1[1];
    if (v54[0])
    {
      if (*(v54[0] + 224))
      {
        v15 = v54[0] + 40;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v14 = *(v13 + 26);
    v48 = sub_1000E93C0(v15, 2 * ((v8 * v14 - (a1[44] + *(v13 + 56) * *(v13 + 28) * ((v8 * v14 / v14 - a1[44] / v14) / (*(v13 + 56) * (*(v13 + 28) / v14))))) / v14));
    sub_1000E7978(v54);
  }

  v16 = 0;
  while (1)
  {
    if (v7)
    {
      if (v7 == 3)
      {
        if (v6 >= v5)
        {
          goto LABEL_18;
        }
      }

      else if (v6 > v5)
      {
        goto LABEL_18;
      }
    }

    else if (v6 > v5 && v5 + 1 < v6)
    {
LABEL_18:
      if (!(v6 - v5 + (v7 & 1) + (((v7 >> 1) & 1) - 1)))
      {
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (!qword_10023FE60)
    {
      goto LABEL_42;
    }

LABEL_22:
    if ((v7 & 2) != 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = v5 + 1;
    }

    v18 = a1[1];
    v19 = v17 * *(v18 + 26);
    if (v19 >= *(v18 + 88) + a1[44])
    {
      goto LABEL_42;
    }

    v20 = sub_1000E8284(a1, v19);
    v22 = v20;
    v23 = v21;
    v59 = v20;
    v60 = v21;
    v24 = v7;
    v49 = v6;
    v25 = *(a1[1] + 26);
    v26 = v20[1];
    v27 = (*(v26 + 56) + *(v26 + 56) * v21) / (*(v26 + 56) + 1);
    v28 = *(v26 + 28);
    if (v20[44] + v28 + v27 * v28 >= v25 + v25 * (v6 + ((v7 & 1) - 1)))
    {
      v29 = v25 + v25 * (v6 + ((v7 & 1) - 1));
    }

    else
    {
      v29 = v20[44] + v28 + v27 * v28;
    }

    v30 = (v20[7] + 16 * v21);
    v31 = sub_100108E9C(v30);
    v57[0] = off_1002326B0;
    v57[1] = v30;
    v58 = v31;
    if ((v31 & 1) == 0)
    {
      *&v52 = "di_asif::details::table::get_next_extent(ContextASIF &, const interval_sectors &, interval_sectors &)";
      *(&v52 + 1) = 40;
      LODWORD(v53) = 16;
      sub_1000F5CDC(v54, &v52);
      sub_1000026BC(v56, "Couldn't lock entry ", 20);
      sub_1000ECACC(v56, &v59);
      sub_1000F5E04(v54);
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v42 = std::generic_category();
      exception[1] = 5;
      exception[2] = v42;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Can't lock entry";
    }

    v32 = atomic_load((v22[7] + 16 * v23 + 8));
    v33 = v32 >> 62;
    if (v48 == v33)
    {
      v34 = v29 / *(a1[1] + 26);
      v16 = v34;
      goto LABEL_40;
    }

    if (v33 != 3)
    {
      break;
    }

    v35 = v59[1];
    sub_1000E90C8(a1, a2, (v59[44] + (*(v35 + 56) + *(v35 + 56) * v60) / (*(v35 + 56) + 1) * *(v35 + 28)) / *(v35 + 26), 0, v50);
    if (!v50[0] || (*(v50[0] + 344) & 1) != 0)
    {
      *&v52 = "di_asif::details::table::get_next_extent(ContextASIF &, const interval_sectors &, interval_sectors &)";
      *(&v52 + 1) = 40;
      LODWORD(v53) = 16;
      sub_1000F5E48(v54, &v52);
      sub_1000026BC(v56, "Can't read bitmap", 17);
      sub_1000F5F70(v54);
      v43 = __cxa_allocate_exception(0x40uLL);
      *v43 = &off_100233158;
      v44 = std::generic_category();
      v43[1] = 5;
      v43[2] = v44;
      *(v43 + 24) = 0;
      *(v43 + 48) = 0;
      v43[7] = "Can't read bitmap";
    }

    v36 = *(v50[0] + 224) ? (v50[0] + 40) : 0;
    v37 = sub_1000E95A4(v36, a1, v48, v19, v29);
    v38 = *(a1[1] + 26);
    sub_1000E7978(v50);
    v16 = v37 / v38;
    if (v37 < v29)
    {
      break;
    }

    v34 = v29 / *(a1[1] + 26);
LABEL_40:
    *&v52 = v5;
    *(&v52 + 1) = v49;
    LOBYTE(v53) = v24;
    *(&v53 + 1) = v61[0];
    HIDWORD(v53) = *(v61 + 3);
    v50[0] = v17;
    v50[1] = v34;
    v51 = 2;
    sub_10000C778(&v52, v50, v54);
    v5 = v54[0];
    v6 = v54[1];
    v7 = v55;
    sub_10019A0BC(v57);
  }

  sub_10019A0BC(v57);
LABEL_42:
  v39 = *a3;
  if ((*(a3 + 16) & 2) == 0)
  {
    ++v39;
  }

  *a4 = v39;
  *(a4 + 8) = v16;
  *(a4 + 16) = 2;
  return v48;
}

void sub_1000F5C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000E7978(va);
  _Unwind_Resume(a1);
}

void *sub_1000F5CDC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011DD04(a1, a2);
  *a1 = off_100220CA8;
  a1[45] = &off_100220DA8;
  a1[46] = &off_100220DD0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220CA8;
  a1[45] = off_100220D30;
  a1[46] = off_100220D58;
  return a1;
}

void sub_1000F5DE0(_Unwind_Exception *a1)
{
  sub_10010CFB4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F5E04(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010CFB4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F5E48(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011DDCC(a1, a2);
  *a1 = off_100220EC8;
  a1[45] = &off_100220FC8;
  a1[46] = &off_100220FF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220EC8;
  a1[45] = off_100220F50;
  a1[46] = off_100220F78;
  return a1;
}

void sub_1000F5F4C(_Unwind_Exception *a1)
{
  sub_10010D74C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F5F70(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010D74C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F5FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000EC5D4(a1, a3, a4, &v33);
  v9 = *(*(a1 + 32) + 216);
  while (1)
  {
    v10 = v33;
    if (v33 == v41 && v34 == v42 && v35 == v43 && (v35 == v33 + 16 * v34 || v38 == v44 && v39 == v45 && v40 == v46))
    {
      return 0;
    }

    v11 = v36 * *(a1 + 26);
    sub_1000EB1E4(a1, a2, v11 / *(a1 + 88), v9 ^ 1, 1, &v32);
    if (v32 && (*(v32 + 520) & 1) == 0)
    {
      if (*(v32 + 400))
      {
        v14 = v32 + 40;
      }

      else
      {
        v14 = 0;
      }

      sub_1000ECC2C(v14, a2, a3, a4, &v19);
      v35 = v20;
      v38 = v23;
      if (v34 != (v20 - v10) >> 4)
      {
        v36 = sub_1000E7FF0(&v33);
        v37 = v17;
      }

      v13 = 0;
      goto LABEL_38;
    }

    if (v32)
    {
      if (*(v32 + 520))
      {
        v12 = 4294967291;
      }

      else
      {
        v12 = 0;
      }

      v13 = 1;
      if (*(v32 + 520) & 1) != 0 || (v9)
      {
        goto LABEL_39;
      }

LABEL_23:
      sub_1000EA830(a3, a4, *(a1 + 28), *(a1 + 26), v11 / *(a1 + 88) * *(a1 + 88), *(a1 + 88) + v11 / *(a1 + 88) * *(a1 + 88), &v19);
      while (v19 != v26 || *(&v19 + 1) != v27 || v20 != v28 || v20 != v19 + 16 * *(&v19 + 1) && (v23 != v29 || v24 != v30 || v25 != v31))
      {
        v23 += v25 * v22;
        v21 = sub_1000E7FF0(&v19);
        v22 = v15;
      }

      v35 = v20;
      v38 = v23;
      if (v34 != (v20 - v10) >> 4)
      {
        v36 = sub_1000E7FF0(&v33);
        v37 = v16;
      }

      v13 = 2;
LABEL_38:
      v12 = v4;
      goto LABEL_39;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_23;
    }

    v12 = 0;
    v13 = 1;
LABEL_39:
    sub_1000E6B5C(&v32);
    v4 = v12;
    if ((v13 | 2) != 2)
    {
      return v12;
    }
  }
}

uint64_t sub_1000F62A8(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  std::mutex::lock((a1 + 3536));
  sub_1000F4A90(a1 + 2088);
  sub_1000F4B24(a1 + 288);
  v8 = atomic_exchange((a1 + 3600), 0);
  LODWORD(v9) = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
  if (!v9)
  {
    v9 = sub_1000F3CD8(a1, a2);
    if (v9)
    {
      v11 = v8;
      goto LABEL_9;
    }

    v12 = *(a1 + 136);
    v13 = *(a1 + 144);
    if (v12 == v13)
    {
      v9 = 0;
      if (v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
      v9 = 0;
      do
      {
        sub_1000F3964(v12, v14 / *(a1 + 88), &v18);
        if (v18 && (*(v18 + 520) & 1) == 0)
        {
          if (*(v18 + 400))
          {
            v15 = v18 + 40;
          }

          else
          {
            v15 = 0;
          }

          v16 = sub_1000EDEC0(v15, a2);
          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = v16;
          }
        }

        v14 += *(a1 + 88);
        sub_1000E6B5C(&v18);
        ++v12;
      }

      while (v12 != v13);
      if (v8)
      {
LABEL_23:
        v17 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
        if (v17)
        {
          *&v19 = "di_asif::details::dir::flush(ContextASIF &, uint64_t, BOOL)";
          *(&v19 + 1) = 28;
          v20 = 16;
          sub_1000F6958(v21, &v19);
          sub_1000026BC(v22, "Backend barrier failed during dir flush, error ", 47);
          std::ostream::operator<<();
          std::ostream::~ostream();
          sub_10010EE14(v21);
          std::ios::~ios();
          if (v17 < 0)
          {
            v9 = v17;
          }

          else
          {
            v9 = -v17;
          }

          goto LABEL_5;
        }

        goto LABEL_29;
      }
    }

    if (!a4)
    {
      v11 = 0;
LABEL_32:
      if ((v9 & 0x80000000) == 0)
      {
        v9 = 0;
        goto LABEL_6;
      }

LABEL_9:
      v8 = v11;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_29:
    v9 = sub_1000F42D0(a1, a2, a3);
    v11 = v8;
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  *&v19 = "di_asif::details::dir::flush(ContextASIF &, uint64_t, BOOL)";
  *(&v19 + 1) = 28;
  v20 = 16;
  sub_1000F6680(v21, &v19);
  sub_1000026BC(v22, "Failed barrier at start of dir flush, error", 43);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10010DEE4(v21);
  std::ios::~ios();
  if (v9 < 0)
  {
    v9 = v9;
  }

  else
  {
    v9 = -v9;
  }

LABEL_5:
  atomic_fetch_or((a1 + 3600), v8);
LABEL_6:
  std::mutex::unlock((a1 + 3536));
  return v9;
}

void sub_1000F660C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000F6914(va);
  __cxa_end_catch();
  JUMPOUT(0x1000F6624);
}

void *sub_1000F6680(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011DE94(a1, a2);
  *a1 = off_1002210E8;
  a1[45] = &off_1002211E8;
  a1[46] = &off_100221210;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002210E8;
  a1[45] = off_100221170;
  a1[46] = off_100221198;
  return a1;
}

void sub_1000F6784(_Unwind_Exception *a1)
{
  sub_10010DEE4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F67A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010DEE4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F67EC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011DF5C(a1, a2);
  *a1 = off_100221308;
  a1[45] = &off_100221408;
  a1[46] = &off_100221430;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221308;
  a1[45] = off_100221390;
  a1[46] = off_1002213B8;
  return a1;
}

void sub_1000F68F0(_Unwind_Exception *a1)
{
  sub_10010E67C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F6914(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010E67C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F6958(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10011E024(a1, a2);
  *a1 = off_100221528;
  a1[45] = &off_100221628;
  a1[46] = &off_100221650;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221528;
  a1[45] = off_1002215B0;
  a1[46] = off_1002215D8;
  return a1;
}

void sub_1000F6A5C(_Unwind_Exception *a1)
{
  sub_10010EE14(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F6A80(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10010EE14(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000F6AC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_1000F70E4(a1, a2, a4, a5, a10);
  *v15 = off_10021D3C8;
  v15[12] = off_100223DE0;
  v15[13] = v15;
  v15[15] = v15 + 12;
  v15[16] = a3;
  sub_10010F314(v15 + 17, (v15[11] + a3 - 1) / v15[11]);
  sub_10010F38C((a1 + 160), (*(a1 + 88) + a3 - 1) / *(a1 + 88));
  *(a1 + 184) = a4;
  v16 = (a4 - 1 + (a5 - 1 + a6) / a5 * a5 + (a5 + 7 + 8 * ((*(a1 + 128) + *(a1 + 88) - 1) / *(a1 + 88))) / a5 * a5 * a7) / a4;
  *(a1 + 192) = 850045863;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 272) = 0;
  *(a1 + 280) = v16 * a4;
  v18[3] = 0;
  sub_10011E16C(a1 + 288, 4, 0, v18);
}

uint64_t sub_1000F70E4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  *a1 = off_100221740;
  *(a1 + 8) = 0;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 26) = a4;
  *(a1 + 28) = a3;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3 >> 3;
  v6 = a3 / a4;
  v7 = 4 * a3;
  if (v7 < v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 / v6;
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = v8;
  v9 = sub_1000E7F90(a1);
  v10 = (*(a1 + 56) + v9) / (*(a1 + 56) + 1);
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  v11 = v9 - v10;
  v12 = v11 * *(a1 + 28);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  return a1;
}

unint64_t sub_1000F717C(uint64_t a1, uint64_t (***a2)(), unint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = a3 + 8 * a4 + 7;
  v10 = v9 / a3 * a3;
  if (v9 == v9 % a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_valloc(v9 / a3 * a3, 0x8B7C732DuLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v24 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v25 = off_10021E1A0;
  v28 = &v25;
  v33 = v11;
  sub_1000DF1F8(v34, &v25);
  sub_1000298F0(&v25);
  v12 = v33;
  v13 = *(sub_10019E2E8() + 1);
  v25 = v12;
  v26 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = v10;
  v28 = a2;
  v29 = v10;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v14 = (*(*a1 + 128))(a1, &v25);
  if (v10 != v14)
  {
    v19 = __cxa_allocate_exception(0x40uLL);
    v20 = v19;
    if (v14 >= 0)
    {
      v21 = 4294967291;
    }

    else
    {
      v21 = v14;
    }

    *v19 = &off_100233158;
    v22 = std::generic_category();
    v20[1] = v21;
    v20[2] = v22;
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    v20[7] = "Can't load asif dir table";
  }

  v15 = *v12;
  if (v6)
  {
    v16 = v12 + 1;
    do
    {
      v17 = *v16++;
      *a5++ = bswap64(v17);
      --v6;
    }

    while (v6);
  }

  if (v26)
  {
    sub_10000367C(v26);
  }

  sub_10002986C(&v33, 0);
  sub_1000298F0(v34);
  return bswap64(v15);
}

void sub_1000F73B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10002986C(va, 0);
  sub_1000298F0(v15 + 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1000F73EC(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_10019E2E8() + 1);
  v10 = &v18;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v12 = 8;
  v13 = a2;
  v14 = 8;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  LODWORD(a1) = (*(*a1 + 128))(a1, &v10);
  if (a1 != 8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v8 = exception;
    if (a1 >= 0)
    {
      a1 = 4294967291;
    }

    else
    {
      a1 = a1;
    }

    *exception = &off_100233158;
    v9 = std::generic_category();
    v8[1] = a1;
    v8[2] = v9;
    *(v8 + 24) = 0;
    *(v8 + 48) = 0;
    v8[7] = "Can't load asif dir version";
  }

  v5 = bswap64(v18);
  v18 = v5;
  if (v11)
  {
    sub_10000367C(v11);
  }

  return v5;
}

void sub_1000F751C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000367C(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000F7534(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_10021D0C0;
  a1[1] = a2;
  (*(**(a2 + 16) + 80))(*(a2 + 16));
  *a1 = off_10021D408;
  LODWORD(v13) = *(a2 + 136);
  v6 = sub_1000F76A0("metadata_read_only_flags", &v13, sub_1000F76DC);
  v7 = v6;
  if (!v6)
  {
    sub_1000D7C64();
  }

  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = 0;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = 1;
  }

  v11 = a1[3];
  a1[2] = v8;
  a1[3] = v9;
  if (v11)
  {
    sub_10000367C(v11);
  }

  if ((v10 & 1) == 0)
  {
    sub_10000367C(v9);
  }

  if ((v7 & 1) == 0 && v14)
  {
    sub_10000367C(v14);
  }

  return a1;
}

void sub_1000F7680(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_10000367C(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F76CC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1000F76C4);
}

uint64_t sub_1000F76DC(uint64_t result, int a2, int *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = 4 * a4;
    do
    {
      v5 = *a3++;
      a2 &= ~v5;
      v4 -= 4;
    }

    while (v4);
  }

  if (a2)
  {
    v6 = result;
    v7 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = v6;
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_100209F68;
    *(exception + 8) = v7;
  }

  return result;
}

void *sub_1000F7778(void *result, int *a2)
{
  v2 = *a2;
  if (*a2 > 1)
  {
    if (v2 == 2)
    {
      v3 = "unmapped";
      v4 = 8;
      return sub_1000026BC(result, v3, v4);
    }

    if (v2 == 3)
    {
      v3 = "has_bitmap";
      v4 = 10;
      return sub_1000026BC(result, v3, v4);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = "uninit";
      v4 = 6;
      return sub_1000026BC(result, v3, v4);
    }

    if (v2 == 1)
    {
      v3 = "fully";
      v4 = 5;
      return sub_1000026BC(result, v3, v4);
    }
  }

  return result;
}

uint64_t sub_1000F780C(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 16))(a1);
  v5[0] = off_10021D680;
  v5[1] = a2;
  v5[3] = v5;
  sub_1000F78CC(v3, v5);
  return sub_100118264(v5);
}

void sub_1000F78B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100118264(va);
  _Unwind_Resume(a1);
}

void sub_1000F78CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    v4 = 0;
    v5 = (a1 + 80);
    do
    {
      v6 = *v5;
      v7 = *v5;
      v8 = v5;
      if (*v5)
      {
        do
        {
          v9 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (v10);
      }

      if ((v9[4] + *a1) != *(a1 + 96))
      {
        break;
      }

      v11 = v5;
      if (v6)
      {
        do
        {
          v12 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v12 = v11[2];
          v10 = *v12 == v11;
          v11 = v12;
        }

        while (v10);
      }

      sub_10000C140((a1 + 72), v12);
      operator delete(v12);
      v13 = *(a1 + 88);
      *(a1 + 96) -= *a1;
      v4 = 1;
    }

    while (v13);
    if ((v4 & 1) != 0 && *(a2 + 24))
    {
      if (sub_1000FE96C(a2, *(a1 + 96)))
      {
        *&v14 = "space_allocators::FixedSize::trim_largest(const size_changed_fn_t &)";
        *(&v14 + 1) = 41;
        v15 = 16;
        sub_10010F488(v16, &v14);
        sub_1000026BC(v17, "trim largest: size change callback failed with ", 47);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10010F6BC(v16);
        std::ios::~ios();
      }
    }
  }
}

void sub_1000F7A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10010F5B0(va);
  _Unwind_Resume(a1);
}

void sub_1000F7A5C(_OWORD *a1, uint64_t a2)
{
  *(a1 + 92) = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  if ((*(*a2 + 40))(a2) > 0x1FF)
  {
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = (*(*a2 + 40))(a2);
  *exception = &off_1002219A0;
  exception[1] = "asif_header";
  exception[2] = 512;
  exception[3] = v4;
}

uint64_t sub_1000F7F2C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  LODWORD(v18[0]) = 2003069043;
  sub_10009C144("header_signature", v4, v18, 1);
  *a1 = 2003069043;
  *(a1 + 4) = bswap32(*(a2 + 4));
  *(a1 + 8) = bswap32(*(a2 + 8));
  v5 = bswap32(*(a2 + 12));
  LODWORD(v18[0]) = 1;
  sub_1000F76DC("header_flags", v5, v18, 1);
  *(a1 + 12) = v5;
  *(a1 + 16) = bswap64(*(a2 + 16));
  *(a1 + 24) = bswap64(*(a2 + 24));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = bswap64(*(a2 + 48));
  *(a1 + 56) = bswap64(*(a2 + 56));
  *(a1 + 64) = bswap32(*(a2 + 64));
  *(a1 + 68) = bswap32(*(a2 + 68)) >> 16;
  sub_100120E9C(v18, *(a2 + 70));
  *(a1 + 70) = v18[0];
  *(a1 + 72) = bswap64(*(a2 + 72));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = bswap32(*(a2 + 96));
  v6 = bswap32(*(a2 + 100));
  result = sub_1000F76DC("metadata_flags_t", v6, 0, 0);
  *(a1 + 100) = v6;
  *(a1 + 104) = bswap32(*(a2 + 104));
  v8 = *(a1 + 4);
  if (v8 >= 2)
  {
    if (v8 <= 4)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v13 = "Legacy shadow file format is not supported by DiskImages2 framework";
      v14 = 161;
      goto LABEL_24;
    }

LABEL_15:
    v15 = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v18);
    sub_1000026BC(v18, "Unsupported ASIF version ", 25);
    v16 = *(a1 + 4);
    std::ostream::operator<<();
    sub_100004290(v15, v18, 0xA1u);
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  if ((*(a1 + 8) - 1048577) <= 0xFFF0004E)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Invalid ASIF header size";
LABEL_20:
    v14 = 152;
    goto LABEL_24;
  }

  v9 = *(a1 + 68);
  if (!*(a1 + 68))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Shadow block size is invalid (0)";
    goto LABEL_20;
  }

  v10 = *(a1 + 64);
  if (v10 < v9 || v10 % v9)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF max_write size in header exceed the limit";
LABEL_23:
    v14 = 22;
LABEL_24:
    v17 = sub_100001860(exception, v13, v14);
  }

  if (v10 >= 0x4000001)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF max chunk size in header exceeds the limit";
    goto LABEL_23;
  }

  if ((v9 & 0x1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF block size isn't multiple of 512";
    goto LABEL_20;
  }

  v11 = *(a1 + 56);
  if (v11 >= 0xFFFFFFFFFFFFFFFFLL / v9)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Max sector count is too large";
    goto LABEL_23;
  }

  if (v11 < *(a1 + 48))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Sector count is too large";
    goto LABEL_23;
  }

  return result;
}

void sub_1000F8248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

void sub_1000F8258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

__n128 sub_1000F84F4(_OWORD *a1, __int128 *a2)
{
  *(a1 + 92) = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v2 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  a1[4] = v5;
  a1[5] = v6;
  a1[3] = result;
  return result;
}

uint64_t sub_1000F8534(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  *(a2 + 16) = bswap64(*(a1 + 16));
  *(a2 + 24) = bswap64(*(a1 + 24));
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = bswap64(*(a1 + 48));
  *(a2 + 56) = bswap64(*(a1 + 56));
  *(a2 + 64) = bswap32(*(a1 + 64));
  *(a2 + 68) = bswap32(*(a1 + 68)) >> 16;
  *(a2 + 70) = *(a1 + 70);
  *(a2 + 72) = bswap64(*(a1 + 72));
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = bswap32(*(a1 + 96));
  *(a2 + 100) = bswap32(*(a1 + 100));
  *(a2 + 104) = bswap32(*(a1 + 104));
  return a2 + 108;
}

uint64_t sub_1000F85FC(uint64_t a1, _DWORD *a2, _OWORD *a3, unint64_t a4, unint64_t a5, unsigned int a6, unsigned int a7)
{
  *a1 = 2003069043;
  LODWORD(v28) = 2003069043;
  sub_10009C144("header_signature", 2003069043, &v28, 1);
  *(a1 + 4) = 1;
  *(a1 + 8) = (a7 + 511) / a7 * a7;
  *(a1 + 12) = *a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  v14 = a7;
  *(a1 + 64) = a6;
  *(a1 + 68) = a7;
  sub_100120E9C((a1 + 70), 0);
  *(a1 + 100) = 0;
  *(a1 + 86) = 0u;
  *(a1 + 70) = 0u;
  v15 = !is_mul_ok(a5, a7);
  v16 = a5 * a7;
  if (!is_mul_ok(a5, a7))
  {
    v16 = -1;
  }

  v28 = v16;
  v29 = v15;
  v17 = sub_1000F8770(&v28);
  v18 = !is_mul_ok(a4, v14);
  v19 = a4 * v14;
  if (!is_mul_ok(a4, v14))
  {
    v19 = -1;
  }

  v28 = v19;
  v29 = v18;
  v20 = sub_1000F8770(&v28);
  v28 = 2 * a6;
  v29 = 0;
  v21 = sub_1000F8770(&v28);
  v22 = v20 + v21;
  v23 = __CFADD__(v20, v21);
  if (__CFADD__(v20, v21))
  {
    v24 = -1;
  }

  else
  {
    v24 = v20 + v21;
  }

  if (__CFADD__(v20, v21))
  {
    v22 = v24;
  }

  v28 = v22;
  v29 = v23;
  v25 = sub_1000F8770(&v28);
  if (v25 <= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = v25;
  }

  *(a1 + 56) = v26 / v14;
  *(a1 + 32) = *a3;
  return a1;
}

uint64_t sub_1000F8770(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v3 = sub_100001860(exception, "Overflow detected", 0x54u);
  }

  return *a1;
}

void sub_1000F87C4(uint64_t a1)
{
  if (*(a1 + 8) >= *(a1 + 68))
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = *(a1 + 68);
  }

  operator new[]();
}

void *sub_1000F899C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100121104(a1, a2);
  *a1 = off_1002219D8;
  a1[45] = &off_100221AD8;
  a1[46] = &off_100221B00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002219D8;
  a1[45] = off_100221A60;
  a1[46] = off_100221A88;
  return a1;
}

void sub_1000F8AA0(_Unwind_Exception *a1)
{
  sub_10011034C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F8AC4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011034C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F8B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1635018093;
  LODWORD(v7) = 1635018093;
  sub_10009C144("header_signature", 1635018093, &v7, 1);
  *(a1 + 4) = 1;
  LODWORD(v7) = 1;
  sub_10009C144("version_t", 1, &v7, 1);
  *(a1 + 8) = 512;
  v7 = 0x100000000200;
  sub_10009C144("header_size_t", 512, &v7, 2);
  *(a1 + 12) = a2;
  *(a1 + 20) = a3;
  return a1;
}

uint64_t sub_1000F8BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[0] = 0x100000000200;
  sub_10009C144("header_size_t", 512, v35, 2);
  v8 = *(a3 + 26);
  v9 = v8 + 511;
  v10 = (v8 + 511) / v8 * v8;
  v35[0] = 0x100000000200;
  sub_10009C144("header_size_t", (v8 + 511) / v8 * v8, v35, 2);
  *(a1 + 8) = v10;
  if (v9 == v9 - v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_valloc(v10, 0x8B7C732DuLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v23 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v35[0] = off_10021E1A0;
  v35[3] = v35;
  v37 = v11;
  sub_1000DF1F8(v38, v35);
  sub_1000298F0(v35);
  v12 = v37;
  *v37 = *a1;
  v12[1] = bswap32(*(a1 + 4));
  v12[2] = bswap32(*(a1 + 8));
  *(v12 + 3) = bswap64(*(a1 + 12));
  *(v12 + 5) = bswap64(*(a1 + 20));
  v13 = v37;
  v14 = *(a1 + 8);
  v15 = v37 + v14 - (v12 + 7);
  if (v15 >= 1)
  {
    bzero(v12 + 7, v15);
    v14 = *(a1 + 8);
  }

  v16 = *(sub_10019E2E8() + 1);
  *&v27 = v13;
  *(&v27 + 1) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = v14;
  v29 = a4;
  v30 = v14;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_10006AA50(v35, &v27);
  if (*(&v27 + 1))
  {
    sub_10000367C(*(&v27 + 1));
  }

  sub_1000246F4(v36, &v27);
  sub_100024448(v36, &v24);
  v17 = sub_1000F4E90(a3, a2, &v27, &v24, 0);
  if (v26)
  {
    sub_10000367C(v26);
  }

  if (v25)
  {
    sub_10000367C(v25);
  }

  if (v34)
  {
    sub_10000367C(v34);
  }

  if (*(&v27 + 1))
  {
    sub_10000367C(*(&v27 + 1));
  }

  if (v17 < 0)
  {
    v18 = v17;
    if (v17)
    {
      v20 = __cxa_allocate_exception(0x40uLL);
      *v20 = &off_100233158;
      v21 = std::generic_category();
      v20[1] = v18;
      v20[2] = v21;
      *(v20 + 24) = 0;
      *(v20 + 48) = 0;
      v20[7] = "Failed to write metadata header";
    }
  }

  sub_1000036E8(v35);
  sub_10002986C(&v37, 0);
  return sub_1000298F0(v38);
}

void sub_1000F8EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000036E8(&a65);
  sub_10002986C((v66 - 128), 0);
  sub_1000298F0(v65 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F8F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  v9 = *(a3 + 26);
  v10 = v9 + 511;
  v11 = (v9 + 511) % v9;
  v12 = v10 - v11;
  if (v10 != v11)
  {
    v8 = malloc_type_valloc(v10 - v11, 0x8B7C732DuLL);
    if (!v8)
    {
      exception = __cxa_allocate_exception(8uLL);
      v27 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v40[0] = off_10021E1A0;
  v40[3] = v40;
  v42 = v8;
  sub_1000DF1F8(v43, v40);
  sub_1000298F0(v40);
  v13 = v42;
  v14 = *(sub_10019E2E8() + 1);
  *&v31 = v13;
  *(&v31 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = v12;
  v33 = a4;
  v34 = v12;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  sub_10006AA50(v40, &v31);
  if (*(&v31 + 1))
  {
    sub_10000367C(*(&v31 + 1));
  }

  sub_100024448(v41, &v31);
  v15 = *(a3 + 128);
  v16 = v39;
  if (v38)
  {
    sub_10000367C(v38);
  }

  if (*(&v31 + 1))
  {
    sub_10000367C(*(&v31 + 1));
  }

  if (v16 > v15)
  {
    v22 = __cxa_allocate_exception(0x40uLL);
    *v22 = &off_100233158;
    v23 = std::generic_category();
    v22[1] = 152;
    v22[2] = v23;
    *(v22 + 24) = 0;
    *(v22 + 48) = 0;
    v22[7] = "Metadata offset is invalid";
  }

  sub_1000246F4(v41, &v31);
  sub_100024448(v41, &v28);
  v17 = sub_1000F4E90(a3, a2, &v31, &v28, 1);
  if (v30)
  {
    sub_10000367C(v30);
  }

  if (v29)
  {
    sub_10000367C(v29);
  }

  if (v38)
  {
    sub_10000367C(v38);
  }

  if (*(&v31 + 1))
  {
    sub_10000367C(*(&v31 + 1));
  }

  if (v17 < 0 && v17)
  {
    v24 = __cxa_allocate_exception(0x40uLL);
    *v24 = &off_100233158;
    v25 = std::generic_category();
    v24[1] = v17;
    v24[2] = v25;
    *(v24 + 24) = 0;
    *(v24 + 48) = 0;
    v24[7] = "ASIF meta header failed to read";
  }

  sub_1000F9390(a1, v42, a3);
  if (v12 != 28)
  {
    v18 = v42 + 28;
    do
    {
      if (*v18)
      {
        v20 = __cxa_allocate_exception(0x40uLL);
        *v20 = &off_100233158;
        v21 = std::generic_category();
        v20[1] = 152;
        v20[2] = v21;
        *(v20 + 24) = 0;
        *(v20 + 48) = 0;
        v20[7] = "ASIF meta header trailer isn't equal to zero";
      }

      ++v18;
    }

    while (v18 != &v42[v12]);
  }

  sub_1000036E8(v40);
  sub_10002986C(&v42, 0);
  sub_1000298F0(v43);
  return a1;
}

void sub_1000F931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&a9);
  sub_100002440(&a37);
  sub_1000036E8(&a65);
  sub_10002986C((v66 - 128), 0);
  sub_1000298F0(v65 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F9390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  LODWORD(v18) = 1635018093;
  sub_10009C144("header_signature", v6, &v18, 1);
  *a1 = 1635018093;
  v7 = bswap32(*(a2 + 4));
  LODWORD(v18) = 1;
  sub_10009C144("version_t", v7, &v18, 1);
  *(a1 + 4) = 1;
  v8 = bswap32(*(a2 + 8));
  v18 = 0x100000000200;
  result = sub_10009C144("header_size_t", v8, &v18, 2);
  *(a1 + 8) = v8;
  v10 = bswap64(*(a2 + 12));
  *(a1 + 12) = v10;
  *(a1 + 20) = bswap64(*(a2 + 20));
  v11 = *(a3 + 26);
  if (v10 > *(a3 + 28) - v11 + (v11 + 511) % v11 - 511)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = sub_100001860(exception, "ASIF meta header size exceeds its maximum", 0x98u);
  }

  if (v8 % v11)
  {
    v14 = __cxa_allocate_exception(0x40uLL);
    v15 = sub_100001860(v14, "ASIF meta header is unaligned", 0x98u);
  }

  if (v10 % v11)
  {
    v16 = __cxa_allocate_exception(0x40uLL);
    v17 = sub_100001860(v16, "ASIF meta header data is unaligned", 0x98u);
  }

  return result;
}

uint64_t sub_1000F9760(void *a1, uint64_t a2)
{
  if (!*(*a1 + 72))
  {
    return 0;
  }

  sub_1000F9984(a1, a2, &v4);
  v2 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 2);
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v2;
}

void sub_1000F993C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000F9C20(va);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1000F995C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000F9D8C(va);
  __cxa_end_catch();
  JUMPOUT(0x1000F9978);
}

uint64_t sub_1000F9984@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = a1[1];
  v16 = *(*a1 + 72) * *(v6 + 28);
  result = sub_100112B78(a3, a2, v6, &v16);
LABEL_2:
  for (i = result; ; i += 28)
  {
    a3[1] = i;
    v9 = *(i - 8);
    if (!v9)
    {
      break;
    }

    v11 = *a1;
    v10 = a1[1];
    v12 = v9 * *(v10 + 28);
    v16 = v12;
    v13 = *(v10 + 26);
    if (v12 < *(v11 + 48) * v13 || *(v11 + 56) * v13 <= v12)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v15 = std::generic_category();
      exception[1] = 152;
      exception[2] = v15;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "ASIF: metadata header out of range";
    }

    if (i >= a3[2])
    {
      result = sub_100112E1C(a3, a2, v10, &v16);
      goto LABEL_2;
    }

    result = sub_1000F8F6C(i, a2, v10, v12);
  }

  return result;
}

void sub_1000F9AC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000F9AF8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012169C(a1, a2);
  *a1 = off_100221BF8;
  a1[45] = &off_100221CF8;
  a1[46] = &off_100221D20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221BF8;
  a1[45] = off_100221C80;
  a1[46] = off_100221CA8;
  return a1;
}

void sub_1000F9BFC(_Unwind_Exception *a1)
{
  sub_100110AE4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F9C20(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100110AE4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000F9C64(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001215D4(a1, a2);
  *a1 = off_100221E18;
  a1[45] = &off_100221F18;
  a1[46] = &off_100221F40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221E18;
  a1[45] = off_100221EA0;
  a1[46] = off_100221EC8;
  return a1;
}

void sub_1000F9D68(_Unwind_Exception *a1)
{
  sub_10011127C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F9D8C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011127C(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000F9DD0(void *a1@<X0>, uint64_t a2@<X1>, CFMutableDictionaryRef *a3@<X8>)
{
  if (*(*a1 + 72))
  {
    sub_1000FA410(a1, a2, &v23);
    v6 = v23;
    v7 = v24;
    if (v23 != v24)
    {
      do
      {
        sub_100039940(&keys, v6);
        v8 = a1[1];
        sub_1000246F4(v31, &values);
        sub_100024448(v31, &v20);
        v9 = sub_1000F4E90(v8, a2, &values, &v20, 1);
        if (v22)
        {
          sub_10000367C(v22);
        }

        if (v21)
        {
          sub_10000367C(v21);
        }

        if (v28)
        {
          sub_10000367C(v28);
        }

        if (v26)
        {
          sub_10000367C(v26);
        }

        if (v9 < 0 && v9)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          *exception = &off_100233158;
          v19 = std::generic_category();
          exception[1] = v9;
          exception[2] = v19;
          *(exception + 24) = 0;
          *(exception + 48) = 0;
          exception[7] = "ASIF: failed to deserialize metadata";
        }

        sub_1000036E8(&keys);
        v6 += 14;
      }

      while (v6 != v7);
      v6 = v23;
      v7 = v24;
    }

    if (v6 == v7)
    {
      goto LABEL_21;
    }

    v10 = 0;
    do
    {
      v10 += *(v6 + 4);
      v6 += 14;
    }

    while (v6 != v7);
    if (!v10)
    {
LABEL_21:
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = v10;
      v12 = malloc_type_valloc(v10, 0x8B7C732DuLL);
      if (!v12)
      {
        v13 = __cxa_allocate_exception(8uLL);
        v14 = std::bad_alloc::bad_alloc(v13);
      }
    }

    values = off_10021E1A0;
    p_values = &values;
    keys = v12;
    sub_1000DF1F8(v30, &values);
    sub_1000298F0(&values);
    v15 = v23;
    v16 = v24;
    if (v23 != v24)
    {
      v17 = 0;
      do
      {
        memcpy(keys + v17, v15->__vftable, v15->__shared_weak_owners_);
        v17 += LODWORD(v15->__shared_weak_owners_);
        v15 = (v15 + 112);
      }

      while (v15 != v16);
    }

    sub_10014CF98(keys, v11, a3);
    sub_10002986C(&keys, 0);
    sub_1000298F0(v30);
    keys = &v23;
    sub_10011177C(&keys);
  }

  else
  {
    keys = @"internal metadata";
    v30[0] = @"user metadata";
    sub_10014CDD0(&v20);
    sub_10014CDD0(&v23);
    values = v20;
    v26 = v23;
    sub_10014CD30(&keys, &values, 2, a3);
    sub_1000043E8(&v23);
    sub_1000043E8(&v20);
  }
}

void sub_1000FA0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, const void *a37)
{
  sub_1000043E8(&a37);
  sub_1000043E8(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1000FA340@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  keys[0] = @"internal metadata";
  keys[1] = @"user metadata";
  sub_10014CDD0(&v4);
  sub_10014CDD0(&v3);
  values[0] = v4;
  values[1] = v3;
  sub_10014CD30(keys, values, 2, a1);
  sub_1000043E8(&v3);
  return sub_1000043E8(&v4);
}

void sub_1000FA3E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_1000043E8(va);
  sub_1000043E8(va1);
  _Unwind_Resume(a1);
}

void sub_1000FA410(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1000F9984(a1, a2, &v9);
  if (v10 != v9)
  {
    v4 = *(v9 + 12);
    if (!(v4 % *(a1[1] + 26)))
    {
      if (v4)
      {
        if (!malloc_type_valloc(v4, 0x4DC0432DuLL))
        {
          exception = __cxa_allocate_exception(8uLL);
          v8 = std::bad_alloc::bad_alloc(exception);
        }
      }

      operator new();
    }

    v5 = __cxa_allocate_exception(0x40uLL);
    *v5 = &off_100233158;
    v6 = std::generic_category();
    v5[1] = 152;
    v5[2] = v6;
    *(v5 + 24) = 0;
    *(v5 + 48) = 0;
    v5[7] = "Unaligned metadata entry size";
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void sub_1000FA668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10011177C(va);
  _Unwind_Resume(a1);
}

void sub_1000FA670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (a12)
  {
    sub_10000367C(a12);
  }

  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  sub_10011177C(&__p);
  _Unwind_Resume(a1);
}

void sub_1000FA68C(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

void sub_1000FA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_end_catch();
  if (a14)
  {
    operator delete(a14);
  }

  JUMPOUT(0x1000FA6C4);
}

void *sub_1000FA6D8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10012182C(a1, a2);
  *a1 = off_100222038;
  a1[45] = &off_100222138;
  a1[46] = &off_100222160;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222038;
  a1[45] = off_1002220C0;
  a1[46] = off_1002220E8;
  return a1;
}

void sub_1000FA7DC(_Unwind_Exception *a1)
{
  sub_100111AB4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FA800(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100111AB4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FA844(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100121764(a1, a2);
  *a1 = off_100222258;
  a1[45] = &off_100222358;
  a1[46] = &off_100222380;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222258;
  a1[45] = off_1002222E0;
  a1[46] = off_100222308;
  return a1;
}

void sub_1000FA948(_Unwind_Exception *a1)
{
  sub_10011224C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FA96C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011224C(a1);
  std::ios::~ios();
  return a1;
}

const void **sub_1000FA9B0(const void **result, uint64_t a2, CFPropertyListRef propertyList)
{
  if (propertyList)
  {
    v4 = result;
    v5 = *result;
    v6 = result[1];
    v7 = v6[7];
    v8 = *(*result + 9) * v7;
    v9 = *(v6 + 13);
    if (!v8)
    {
      v8 = (v5[7] * v9 - v7) / v7 * v7;
    }

    if (v8 < v5[6] * v9)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v43 = sub_100001860(exception, "Not enough space for metadata", 0x1Cu);
    }

    sub_10014CE18(propertyList, v64);
    v10 = v64[1];
    cf = v64[0];
    v64[0] = 0;
    sub_10008943C(v64);
    v11 = *v4;
    v12 = v4[1];
    v13 = *(v12 + 28);
    v14 = *(v12 + 26);
    v15 = v13 - (v14 + 511) + (v14 + 511) % v14;
    v16 = v10 + v15 - 1;
    v49 = v16 / v15;
    v50 = v10;
    if (v16 / v15 * v13 > v8 + v13 - *(*v4 + 48) * v14)
    {
      v44 = __cxa_allocate_exception(0x40uLL);
      *v44 = &off_100233158;
      v45 = std::generic_category();
      v44[1] = 28;
      v44[2] = v45;
      *(v44 + 24) = 0;
      *(v44 + 48) = 0;
      v44[7] = "Not enough space for metadata";
    }

    if (v15 <= v16)
    {
      v17 = 0;
      v18 = v49 - 1;
      v46 = v10 % v15;
      v47 = v8;
      v48 = a2;
      do
      {
        if (v18 == v17)
        {
          v19 = 0;
          v20 = v4[1];
          v21 = v8 - v18 * *(v20 + 28);
          v22 = v46;
        }

        else
        {
          v20 = v4[1];
          v23 = *(v20 + 28);
          v21 = v8 - v17 * v23;
          v19 = (v21 - v23) / v23;
          v22 = v15;
        }

        v24 = v22 - 1;
        sub_1000F8B08(v62, (v22 - 1 + *(v20 + 26)) / *(v20 + 26) * *(v20 + 26), v19);
        sub_1000F8BF4(v62, a2, v4[1], v21);
        if (v50 - v22 >= v17 * v15)
        {
          v25 = v17 * v15;
        }

        else
        {
          v25 = v50 - v22;
        }

        v26 = *(v4[1] + 26);
        v27 = v24 + v26;
        v28 = (v24 + v26) % v26;
        v29 = (v27 - v28);
        if (v27 != v28)
        {
          v29 = malloc_type_valloc(v29, 0x8B7C732DuLL);
          if (!v29)
          {
            v40 = __cxa_allocate_exception(8uLL);
            v41 = std::bad_alloc::bad_alloc(v40);
          }
        }

        v64[0] = off_10021E1A0;
        v64[3] = v64;
        v66 = v29;
        sub_1000DF1F8(v67, v64);
        sub_1000298F0(v64);
        v30 = v66;
        BytePtr = CFDataGetBytePtr(cf);
        memcpy(v30, &BytePtr[v25], v22);
        v32 = *(v4[1] + 26);
        if (v22 % v32)
        {
          bzero(&v66[v22], v32 - v22 % v32);
          v32 = *(v4[1] + 26);
        }

        v33 = v66;
        v34 = *(sub_10019E2E8() + 1);
        *&v54 = v33;
        *(&v54 + 1) = v34;
        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
        }

        v55 = (v24 + v32) / v32 * v32;
        v56 = v32 + 511 + v21 - (v32 + 511) % v32;
        v57 = v55;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        sub_10006AA50(v64, &v54);
        if (*(&v54 + 1))
        {
          sub_10000367C(*(&v54 + 1));
        }

        v35 = v4[1];
        sub_1000246F4(v65, &v54);
        a2 = v48;
        sub_100024448(v65, v51);
        v36 = sub_1000F4E90(v35, v48, &v54, v51, 0);
        if (v53)
        {
          sub_10000367C(v53);
        }

        if (v52)
        {
          sub_10000367C(v52);
        }

        if (v61)
        {
          sub_10000367C(v61);
        }

        if (*(&v54 + 1))
        {
          sub_10000367C(*(&v54 + 1));
        }

        if (v36 < 0 && v36)
        {
          v38 = __cxa_allocate_exception(0x40uLL);
          *v38 = &off_100233158;
          v39 = std::generic_category();
          v38[1] = v36;
          v38[2] = v39;
          *(v38 + 24) = 0;
          *(v38 + 48) = 0;
          v38[7] = "Failed to write metadata";
        }

        sub_1000036E8(v64);
        sub_10002986C(&v66, 0);
        sub_1000298F0(v67);
        ++v17;
        v18 = v49 - 1;
        v8 = v47;
      }

      while (v17 < v49);
      v11 = *v4;
    }

    if (!*(v11 + 72))
    {
      *(v11 + 72) = v8 / *(v4[1] + 28);
      v37 = *(a2 + 16);
      sub_1000F87C4(v11);
    }

    return sub_10008943C(&cf);
  }

  return result;
}

void sub_1000FAF34(_Unwind_Exception *a1)
{
  sub_10008943C(&STACK[0x218]);
  sub_10008943C(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_1000FAFE0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = 0;
  v19 = 0;
  v17 = &v18;
  if (*sub_1000E6A90(a1 + 32, *(a1 + 208)))
  {
    v4 = (*(*a1 + 144))(a1);
    v5 = *(a1 + 664);
    v6 = *(a1 + 672);
    if (v5 == v6)
    {
      v9 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(v5 + 8 * v8) * *(a1 + 96);
        v16 = v10;
        if (v10)
        {
          sub_1000FB2E8((a1 + 504), v4, v8, v10, &v17, v17);
          sub_1000FEEB8(&v17, &v16);
          ++v9;
        }

        else if (*(a1 + 392) == 1)
        {
          v14 = 0;
          v15 = *(a1 + 584);
          sub_1000FB208((a1 + 232), &v14);
        }

        v8 = (v8 + 1);
        v7 += 8;
      }

      while (v5 + v7 != v6);
    }

    if (*(a1 + 392))
    {
      sub_1000E895C(a1 + 232, v9);
    }

    v11 = v18;
    *a2 = v17;
    a2[1] = v11;
    v12 = a2 + 1;
    v13 = v19;
    a2[2] = v19;
    if (!v13)
    {
      *a2 = v12;
      if (!v4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v11[2] = v12;
    v17 = &v18;
    v18 = 0;
    v19 = 0;
    if (v4)
    {
LABEL_16:
      (*(*v4 + 40))(v4);
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }

LABEL_17:
  sub_1000085B4(&v17, v18);
}

void sub_1000FB1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  sub_1000085B4(&a12, a13);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_1000FB208(atomic_ullong *result, uint64_t a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, &_mh_execute_header + (v2 & 0xFFFFFFFF00000000 | (v2 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = *a2;
  v7 = result + 11;
  v8 = result + 13;
  if (*a2 != 2)
  {
    v8 = result + 14;
  }

  if (v6)
  {
    v7 = result + 12;
  }

  if (v6 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  atomic_fetch_add_explicit(v9, *(a2 + 8), memory_order_relaxed);
  v10 = result[10];
  v11 = v10;
  atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v11 != v10)
  {
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v12, (v11 & 0xFFFFFFFF00000000 | (v11 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v12 == v11;
      v11 = v12;
    }

    while (!v5);
  }

  return result;
}

atomic_ullong *sub_1000FB2E8(atomic_ullong *a1, uint64_t a2, std::unique_lock<std::mutex>::mutex_type *a3, unint64_t a4, void *a5, void *a6)
{
  sub_1000F3458(a1, a2, a3, a4, 0, 1, &v11);
  if (v11 && (*(v11 + 520) & 1) == 0)
  {
    if (*(v11 + 400))
    {
      v9 = v11 + 40;
    }

    else
    {
      v9 = 0;
    }

    sub_1001218F4(v9, a2, a5, a6);
  }

  return sub_1000E6B5C(&v11);
}

void sub_1000FB378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000E6B5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FB394(uint64_t result, void *a2, unint64_t a3, unsigned int a4)
{
  v7 = result;
  if (a2[2])
  {
    v8 = a2 + 1;
    v9 = a2[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (v11);
    }

    v12 = v10[4] + a4;
    result = (*(*(result + 504) + 16))();
    if (*(result + 96) <= v12)
    {
      *(result + 96) = v12;
    }
  }

  v15 = *a2;
  v13 = a2 + 1;
  v14 = v15;
  if (v15 != v13)
  {
    do
    {
      v16 = v14[4];
      atomic_fetch_add((v7 + 512), 1uLL);
      v21 = a3;
      v22 = a4;
      if ((v16 - a3) % a4)
      {
        v17 = (v16 - a3) / a4 + 1;
      }

      else
      {
        v17 = (v16 - a3) / a4;
      }

      v20[0] = a3;
      v20[1] = v17;
      v20[2] = a4;
      result = sub_1000FB4E8(v7 + 504, &v21, v20);
      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v14[2];
          v11 = *v19 == v14;
          v14 = v19;
        }

        while (!v11);
      }

      a3 = v16 + a4;
      v14 = v19;
    }

    while (v19 != v13);
  }

  return result;
}

uint64_t sub_1000FB4E8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = (*(*a1 + 16))(a1);
  v9 = *a2;
  v10 = *(a2 + 2);
  v7 = *a3;
  v8 = *(a3 + 16);
  v12 = 0;
  sub_100121BE4(v5, &v9, &v7, v11);
  return sub_100118264(v11);
}

void sub_1000FB5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100118264(va);
  _Unwind_Resume(a1);
}

void sub_1000FB5B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6)
{
  *(a1 + 8) = 0;
  *a1 = off_10021D448;
  LODWORD(v22[0]) = *(a3 + 96);
  if (sub_1000FB9F8("header read-only flags", v22, sub_1000F76DC))
  {
    v12 = *a2;
    *(a1 + 16) = *a2;
    v13 = a2[1];
    *(a1 + 24) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = *(a1 + 16);
    }

    *(a1 + 32) = 2003069043;
    *(a1 + 36) = *(a3 + 4);
    *(a1 + 44) = *(a3 + 12);
    v14 = *(a3 + 16);
    v15 = *(a3 + 32);
    v16 = *(a3 + 48);
    *(a1 + 94) = *(a3 + 62);
    *(a1 + 64) = v15;
    *(a1 + 80) = v16;
    *(a1 + 48) = v14;
    *(a1 + 102) = 0;
    v17 = *(a3 + 72);
    *(a1 + 120) = *(a3 + 88);
    *(a1 + 104) = v17;
    *(a1 + 128) = *(a3 + 96);
    *(a1 + 132) = *(a3 + 100);
    *(a1 + 136) = *(a3 + 104);
    *(a1 + 144) = 850045863;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0;
    *(a1 + 208) = a4;
    v18 = *a6;
    *(a1 + 224) = *(a6 + 2);
    *(a1 + 216) = v18;
    *(a1 + 232) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 496) = 0;
    v19 = *(a3 + 56);
    v20 = *(a3 + 68);
    v21 = *(a3 + 64);
    v22[0] = off_1002224D0;
    v22[1] = a1;
    v22[3] = v22;
    sub_1000F6AC4(a1 + 504, a1, v19 * v20, v21, v20, a5, 2, v12, v22, a1 + 232);
  }

  sub_1000D7C64();
}

void sub_1000FB94C(_Unwind_Exception *a1)
{
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  sub_1000EC454(v4);
  if (*(v1 + 496) == 1)
  {
    sub_1000FC37C(v1 + 400);
  }

  sub_1000FBA90(v3);
  std::mutex::~mutex(v2);
  v7 = *(v1 + 24);
  if (v7)
  {
    sub_10000367C(v7);
  }

  _Unwind_Resume(a1);
}

void sub_1000FBA24(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1000FBA1CLL);
}

void sub_1000FBA34(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, sub_100121D88);
  }
}

uint64_t sub_1000FBA90(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    *a1 = off_100210120;
    sub_100087F1C((a1 + 24), 0);
    sub_1000880A8(a1 + 32);
  }

  return a1;
}

void sub_1000FBAF8(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4, unint64_t a5, void *a6, uint64_t *a7, _OWORD *a8)
{
  *(a1 + 8) = 0;
  *a1 = off_10021D448;
  *(a1 + 16) = *a6;
  v15 = a6[1];
  *(a1 + 24) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a7 + 1);
  LODWORD(v18) = v16;
  LODWORD(v19[0]) = 1;
  sub_1000F76DC("header_flags", v16, v19, 1);
  sub_1000F85FC(a1 + 32, &v18, a8, a4, a5, a3, a2);
  *(a1 + 144) = 850045863;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  v17 = *a7;
  *(a1 + 224) = *(a7 + 2);
  *(a1 + 216) = v17;
  *(a1 + 232) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 496) = 0;
  v19[0] = off_1002224D0;
  v19[1] = a1;
  v19[3] = v19;
  sub_1000F6AC4(a1 + 504, a1, a2 * a5, a3, a2, a2 + 511 - (a2 + 511) % a2, 2, 0, v19, a1 + 232);
}

void sub_1000FBE6C(_Unwind_Exception *a1)
{
  sub_1000EC454(v4);
  if (*(v1 + 496) == 1)
  {
    sub_1000FC37C(v1 + 400);
  }

  sub_1000FBA90(v3);
  std::mutex::~mutex(v2);
  v6 = *(v1 + 24);
  if (v6)
  {
    sub_10000367C(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1000FC2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, uint64_t a18)
{
  __cxa_free_exception(v18);
  sub_10000C8E0(&a17);
  v20 = a18;
  a18 = 0;
  if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000FC37C(uint64_t a1)
{
  sub_100157EB0((a1 + 40), (a1 + 48));
  sub_1001580AC(a1 + 56);
  sub_100158000(a1 + 48);
  sub_100157D44((a1 + 40));
  return a1;
}

uint64_t sub_1000FC3D0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v10[20] = _NSConcreteStackBlock;
  v10[21] = 0x40000000;
  v10[22] = sub_1001130F4;
  v10[23] = &unk_100222550;
  v10[24] = a2;
  analytics_send_event_lazy();
  *&v7 = "void DIAnalytics::sendEvent(const std::string_view &, const std::map<std::string, data_t> &)";
  *(&v7 + 1) = 27;
  v8 = 0;
  sub_1001131D4(v9, &v7);
  sub_1000026BC(v10, "sendEvent of type ", 18);
  sub_1000026BC(v10, *a1, a1[1]);
  sub_1000026BC(v10, " with ", 6);
  v5 = *(a2 + 16);
  std::ostream::operator<<();
  sub_1000026BC(v10, " elements returned ", 19);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100113408(v9);
  return std::ios::~ios();
}

void sub_1000FC50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001132FC(va);
  _Unwind_Resume(a1);
}

void sub_1000FC5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1001220E8(&a9, a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000FC62C(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v2[0] = a1;
  v2[1] = a2;
  v4 = v2;
  sub_100122144(&unk_1001D03E5, &v3, &v4);
}

uint64_t sub_1000FC698(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(a2 + 68) + 511 - (*(a2 + 68) + 511) % *(a2 + 68);
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = *sub_1000E6A90(a2, v4);
    if (v11)
    {
      v12 = sub_1000F73EC(a1, v11);
      if ((v5 & (v6 >= v12)) != 0)
      {
        v5 = 1;
      }

      else
      {
        v5 = 1;
        v7 = v4;
        v6 = v12;
      }
    }

    v9 = 0;
    v4 = 1;
  }

  while ((v10 & 1) != 0);
  return v7;
}

uint64_t sub_1000FC76C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = (a1 + 4384);
  v5[0] = a1;
  v5[1] = &v6;
  v5[2] = a2;
  if (atomic_load_explicit(v3, memory_order_acquire) != -1)
  {
    v8 = v5;
    v7 = &v8;
    std::__call_once(v3, &v7, sub_10012236C);
  }

  if (v6 < 0)
  {
    return v6;
  }

  else
  {
    return -v6;
  }
}

uint64_t sub_1000FC7E4(uint64_t a1, uint64_t a2, int a3)
{
  std::mutex::lock((a1 + 144));
  v6 = *sub_1000E6A90(a1 + 32, *(a1 + 208));
  v7 = v6;
  if (!v6)
  {
    v8 = *(a1 + 100);
    v9 = *(a1 + 208);
    v10 = *(a1 + 632);
    v11 = *(a1 + 592);
    v12 = sub_1000E6A90(a1 + 32, v9);
    v7 = (v8 + 511 - (v8 + 511) % v8 + (8 * ((v10 + v11 - 1) / v11) + v8 + 7) / v8 * v8 * v9);
    *v12 = v7;
  }

  v13 = sub_1000F62A8(a1 + 504, a2, v7, v6 == 0);
  v14 = v13;
  if ((v13 & 0x80000000) != 0)
  {
    *&v21 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&v21 + 1) = 24;
    v22 = 16;
    sub_1000FCC80(v23, &v21);
    sub_1000026BC(v24, "Root dir flush failed, error ", 29);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100113E38(v23);
LABEL_22:
    std::ios::~ios();
    goto LABEL_23;
  }

  if (v13 == 1)
  {
    v15 = *(a1 + 208);
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    *(a1 + 208) = v16;
  }

  if (!v6)
  {
    v14 = (*(**(a2 + 16) + 16))(*(a2 + 16), 0);
    if (!v14)
    {
      v19 = *(a2 + 16);
      sub_1000F87C4(a1 + 32);
    }

    *&v21 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&v21 + 1) = 24;
    v22 = 16;
    sub_1000FCDEC(v23, &v21);
    sub_1000026BC(v24, "Backend barrier failed after dir offset changed, error ", 55);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001145D0(v23);
    goto LABEL_22;
  }

  v14 = (*(**(a2 + 16) + 16))(*(a2 + 16), 2 * (a3 == 2));
  if ((v14 & 0x80000000) != 0)
  {
    *&v21 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&v21 + 1) = 24;
    v22 = 16;
    sub_1000FD0C4(v23, &v21);
    sub_1000026BC(v24, "Final asif ", 11);
    if (a3 == 2)
    {
      v17 = "flush";
    }

    else
    {
      v17 = "barrier";
    }

    if (a3 == 2)
    {
      v18 = 5;
    }

    else
    {
      v18 = 7;
    }

    sub_1000026BC(v24, v17, v18);
    sub_1000026BC(v24, " failed, error ", 15);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100115500(v23);
    goto LABEL_22;
  }

LABEL_23:
  std::mutex::unlock((a1 + 144));
  return v14;
}

void sub_1000FCB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a2 == 1)
  {
    v59 = __cxa_begin_catch(a1);
    *&a9 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&a9 + 1) = 24;
    a10 = 16;
    sub_1000FD230(&a12, &a9);
    sub_1000026BC(&a57, "Error during ASIF flush: ", 25);
    sub_10019E1D0(&a57, v59);
    sub_1000FD358(&a12);
    LODWORD(v59) = v59[2];
    __cxa_end_catch();
    JUMPOUT(0x1000FCB34);
  }

  std::mutex::unlock((v57 + 144));
  _Unwind_Resume(a1);
}

void *sub_1000FCC80(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001223E8(a1, a2);
  *a1 = off_1002227A8;
  a1[45] = &off_1002228A8;
  a1[46] = &off_1002228D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002227A8;
  a1[45] = off_100222830;
  a1[46] = off_100222858;
  return a1;
}

void sub_1000FCD84(_Unwind_Exception *a1)
{
  sub_100113E38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FCDA8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100113E38(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FCDEC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001224B0(a1, a2);
  *a1 = off_1002229C8;
  a1[45] = &off_100222AC8;
  a1[46] = &off_100222AF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002229C8;
  a1[45] = off_100222A50;
  a1[46] = off_100222A78;
  return a1;
}

void sub_1000FCEF0(_Unwind_Exception *a1)
{
  sub_1001145D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FCF14(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001145D0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FCF58(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100122578(a1, a2);
  *a1 = off_100222BE8;
  a1[45] = &off_100222CE8;
  a1[46] = &off_100222D10;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222BE8;
  a1[45] = off_100222C70;
  a1[46] = off_100222C98;
  return a1;
}

void sub_1000FD05C(_Unwind_Exception *a1)
{
  sub_100114D68(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD080(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100114D68(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FD0C4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100122640(a1, a2);
  *a1 = off_100222E08;
  a1[45] = &off_100222F08;
  a1[46] = &off_100222F30;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222E08;
  a1[45] = off_100222E90;
  a1[46] = off_100222EB8;
  return a1;
}

void sub_1000FD1C8(_Unwind_Exception *a1)
{
  sub_100115500(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD1EC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100115500(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000FD230(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100122708(a1, a2);
  *a1 = off_100223028;
  a1[45] = &off_100223128;
  a1[46] = &off_100223150;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100223028;
  a1[45] = off_1002230B0;
  a1[46] = off_1002230D8;
  return a1;
}

void sub_1000FD334(_Unwind_Exception *a1)
{
  sub_100115C98(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD358(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100115C98(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000FD5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_10000C8E0(&a11);
  v14 = a12;
  a12 = 0;
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  _Unwind_Resume(a1);
}

void sub_1000FD98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  sub_10000C8E0(&a11);
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1000FDC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, uint64_t a17)
{
  __cxa_free_exception(v17);
  sub_10000C8E0(&a16);
  v19 = a17;
  a17 = 0;
  if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  _Unwind_Resume(a1);
}

void sub_1000FDCAC(uint64_t a1, _OWORD *a2)
{
  *(a1 + 112) = *a2;
  v2 = *(a1 + 16);
  sub_1000F87C4(a1 + 32);
}

uint64_t sub_1000FDD24(uint64_t a1)
{
  if (*(a1 + 112) == 0)
  {
    sub_1000FD9F0(a1);
  }

  v2 = *(a1 + 120);
  return *(a1 + 112);
}

void sub_1000FDDA0(uint64_t a1, _OWORD *a2)
{
  *(a1 + 64) = *a2;
  v2 = *(a1 + 16);
  sub_1000F87C4(a1 + 32);
}

uint64_t sub_1000FDE2C(uint64_t a1)
{
  *a1 = off_10021D448;
  sub_1000EC454(a1 + 504);
  if (*(a1 + 496) == 1)
  {
    sub_1000FC37C(a1 + 400);
  }

  if (*(a1 + 392) == 1)
  {
    *(a1 + 232) = off_100210120;
    sub_100087F1C((a1 + 256), 0);
    sub_1000880A8(a1 + 264);
  }

  std::mutex::~mutex((a1 + 144));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_1000FDEDC(uint64_t a1)
{
  *a1 = off_10021D448;
  sub_1000EC454(a1 + 504);
  if (*(a1 + 496) == 1)
  {
    sub_1000FC37C(a1 + 400);
  }

  if (*(a1 + 392) == 1)
  {
    *(a1 + 232) = off_100210120;
    sub_100087F1C((a1 + 256), 0);
    sub_1000880A8(a1 + 264);
  }

  std::mutex::~mutex((a1 + 144));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000367C(v2);
  }

  operator delete();
}

uint64_t sub_1000FE07C(void *a1, uint64_t a2)
{
  v4 = sub_1000C1D54(a1, a2);
  if (!v4)
  {
    v5 = (*(*a1 + 24))(a1);
    v6 = (a2 + v5 - 1) / v5;
    if (v6 <= a1[11])
    {
      v7 = (*(*a1 + 144))(a1);
      sub_1000F7534(v11, a1, v7);
      v8 = a1[11];
      if (v8 - v6 >= sub_1000F9760(a1 + 546, v11))
      {
        a1[10] = v6;
        v9 = a1[2];
        sub_1000F87C4((a1 + 4));
      }

      v4 = 4294967269;
      v11[0] = off_10021D0C0;
      if (v12)
      {
        sub_10000367C(v12);
      }

      (*(*v7 + 40))(v7);
    }

    else
    {
      return 4294967269;
    }
  }

  return v4;
}

void sub_1000FE210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FE334(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ((*(a4 + 208) - *(a3 + 208)) & ~((*(a4 + 208) - *(a3 + 208)) >> 63)) + *(a3 + 24);
  v9 = a1[10];
  if (v8 > (*(*a1 + 24))(a1) * v9)
  {
    return -34;
  }

  else
  {
    return sub_1000F4E90((a1 + 63), a2, a3, a4, 1);
  }
}

uint64_t sub_1000FE40C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ((*(a4 + 208) - *(a3 + 208)) & ~((*(a4 + 208) - *(a3 + 208)) >> 63)) + *(a3 + 24);
  v9 = a1[10];
  if (v8 > (*(*a1 + 24))(a1) * v9)
  {
    return -34;
  }

  v10 = sub_1000FC76C(a1, a2 + 16);
  if (v10)
  {
    return v10;
  }

  else
  {
    return sub_1000F4E90((a1 + 63), a2, a3, a4, 0);
  }
}

uint64_t sub_1000FE4FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = (a3 + 8);
    v9 = a4;
    while (1)
    {
      v10 = *v8 + *(v8 - 1);
      v11 = (*(*a1 + 24))(a1) * v10;
      v12 = a1[10];
      if (v11 > (*(*a1 + 24))(a1) * v12)
      {
        return 4294967262;
      }

      v8 += 2;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = sub_1000FC76C(a1, a2 + 16);
    if (!result)
    {
      return sub_1000F5FB4((a1 + 63), a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1000FE618(uint64_t result)
{
  *(result + 1704) |= 2u;
  *(result + 3328) |= 2u;
  return result;
}

void *sub_1000FE6D8(void *a1)
{
  *a1 = off_10021D0C0;
  v2 = a1[3];
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

void sub_1000FE724(void *a1)
{
  *a1 = off_10021D0C0;
  v1 = a1[3];
  if (v1)
  {
    sub_10000367C(v1);
  }

  operator delete();
}

void *sub_1000FE790(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000FE808(result, a2);
  }

  return result;
}

void sub_1000FE7EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FE808(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100046D30(a1, a2);
  }

  sub_100036CAC();
}

uint64_t sub_1000FE844(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  if (*(a1 + 88))
  {
    v4 = *(a1 + 72);
    v5 = v4[4];
    sub_10000C140((a1 + 72), v4);
    operator delete(v4);
    std::mutex::unlock((a1 + 8));
  }

  else
  {
    v5 = *(a1 + 96);
    *(a1 + 96) = *a1 + v5;
    std::mutex::unlock((a1 + 8));
    if (*(a2 + 24) && sub_1000FE96C(a2, *a1 + v5))
    {
      *&v7 = "space_allocators::FixedSize::allocate(const size_changed_fn_t &)";
      *(&v7 + 1) = 37;
      v8 = 16;
      sub_10003C4BC(v9, &v7);
      sub_1000026BC(v10, "allocated: size change callback failed with ", 44);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10003F284(v9);
      std::ios::~ios();
    }
  }

  return v5;
}

void sub_1000FE958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003C5E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FE96C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 sub_1000FEA34(uint64_t a1, uint64_t a2)
{
  *a2 = off_10021D5F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000FEA70(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10021D660))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FEABC(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(v5 + 16);
  if (v4)
  {
    v4 = malloc_type_valloc(v4, 0x8B7C732DuLL);
    if (!v4)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(exception);
    }
  }

  v13 = off_10021E1A0;
  v16 = &v13;
  v21 = v4;
  sub_1000DF1F8(v22, &v13);
  sub_1000298F0(&v13);
  bzero(v21, *(a1 + 8));
  v7 = v21;
  v8 = *(a1 + 8);
  v9 = *(sub_10019E2E8() + 1);
  v13 = v7;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v8;
  v16 = (a2 - v8);
  v17 = v8;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LODWORD(v6) = (*(*v6 + 120))(v6, &v13);
  if (v14)
  {
    sub_10000367C(v14);
  }

  if (*(a1 + 8) == v6)
  {
    v6 = 0;
  }

  else
  {
    if (v6 >= 0)
    {
      v6 = 4294967291;
    }

    else
    {
      v6 = v6;
    }

    sub_1000EB7EC(*a1);
  }

  sub_10002986C(&v21, 0);
  sub_1000298F0(v22);
  return v6;
}

void sub_1000FEC6C(_Unwind_Exception *a1)
{
  sub_10002986C((v2 - 96), 0);
  sub_1000298F0(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FED14(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10021D680;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000FED40(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 8) + 16);
  if ((*(*v4 + 40))(v4) > v3 && (*(*v4 + 56))(v4, v3))
  {
    sub_1000EB7EC(*(a1 + 8));
  }

  return 0;
}

uint64_t sub_1000FEDE0(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10021D6E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000FEE2C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2;
  std::mutex::lock((a1 + 8));
  sub_1000FEEB8(a1 + 72, &v6);
  v5 = *a1 + v6;
  if (*(a1 + 96) <= v5)
  {
    *(a1 + 96) = v5;
  }

  sub_1000F78CC(a1, a3);
  std::mutex::unlock((a1 + 8));
}

void *sub_1000FEEB8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000FEF84(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000FF21C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000FEFD0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000FF21C(v1);

  return std::ios::~ios();
}

void sub_1000FF030(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000FF21C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000FF098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000FF0D4(_BYTE *a1, int a2)
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

void sub_1000FF140(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000FF21C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000FF1A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000FF21C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000FF21C(uint64_t a1)
{
  *a1 = off_10021D8A0;
  sub_1000FF388(a1);
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

uint64_t sub_1000FF388(uint64_t a1)
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
        sub_1000FF538((a1 + 72), __p);
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

void sub_1000FF4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FF500(uint64_t a1)
{
  sub_1000FF21C(a1);

  operator delete();
}

int *sub_1000FF538(uint64_t *a1, uint64_t *a2)
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
    v21 = 497;
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
      v21 = 497;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000FF71C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000FF9B4(v1);

  return std::ios::~ios();
}

uint64_t sub_1000FF768(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000FF9B4(v1);

  return std::ios::~ios();
}

void sub_1000FF7C8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000FF9B4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000FF830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000FF86C(_BYTE *a1, int a2)
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

void sub_1000FF8D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000FF9B4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000FF93C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000FF9B4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000FF9B4(uint64_t a1)
{
  *a1 = off_10021DAC0;
  sub_1000FFB20(a1);
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

uint64_t sub_1000FFB20(uint64_t a1)
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
        sub_1000FFCD0((a1 + 72), __p);
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

void sub_1000FFC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FFC98(uint64_t a1)
{
  sub_1000FF9B4(a1);

  operator delete();
}

int *sub_1000FFCD0(uint64_t *a1, uint64_t *a2)
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
    v21 = 528;
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
      v21 = 528;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000FFEB4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  atomic_load((*(a2 + 56) + 16 * a3 + 8));
  v3 = atomic_load((*(a2 + 56) + 16 * a3 + 8));
  if ((v3 & 0x3F80000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001860(exception, "ASIF: data entry - invalid reserved bits", 0x16u);
  }

  return result;
}

void *sub_1000FFF2C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  v3 = atomic_load((*(a2 + 56) + 16 * a3 + 8));
  if ((v3 & 0x3F80000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001860(exception, "ASIF: data entry - invalid reserved bits", 0x16u);
  }

  return result;
}

uint64_t sub_1000FFF8C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100100224(v1);

  return std::ios::~ios();
}

uint64_t sub_1000FFFD8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100100224(v1);

  return std::ios::~ios();
}

void sub_100100038(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100100224(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001000A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001000DC(_BYTE *a1, int a2)
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

void sub_100100148(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100100224(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001001AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100100224(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100100224(uint64_t a1)
{
  *a1 = off_10021DCE0;
  sub_100100390(a1);
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

uint64_t sub_100100390(uint64_t a1)
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
        sub_100100540((a1 + 72), __p);
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

void sub_1001004DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100100508(uint64_t a1)
{
  sub_100100224(a1);

  operator delete();
}

int *sub_100100540(uint64_t *a1, uint64_t *a2)
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
    v21 = 637;
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
      v21 = 637;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100100724(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001009BC(v1);

  return std::ios::~ios();
}

uint64_t sub_100100770(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001009BC(v1);

  return std::ios::~ios();
}

void sub_1001007D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001009BC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100100838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100100874(_BYTE *a1, int a2)
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

void sub_1001008E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001009BC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100100944(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001009BC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001009BC(uint64_t a1)
{
  *a1 = off_10021DF00;
  sub_100100B28(a1);
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

uint64_t sub_100100B28(uint64_t a1)
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
        sub_100100CD8((a1 + 72), __p);
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

void sub_100100C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100100CA0(uint64_t a1)
{
  sub_1001009BC(a1);

  operator delete();
}

int *sub_100100CD8(uint64_t *a1, uint64_t *a2)
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
    v21 = 644;
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
      v21 = 644;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100100EBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100101154(v1);

  return std::ios::~ios();
}

uint64_t sub_100100F08(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100101154(v1);

  return std::ios::~ios();
}

void sub_100100F68(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100101154(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100100FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10010100C(_BYTE *a1, int a2)
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

void sub_100101078(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100101154(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001010DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100101154(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100101154(uint64_t a1)
{
  *a1 = off_10021E120;
  sub_1001012C0(a1);
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

uint64_t sub_1001012C0(uint64_t a1)
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
        sub_100101470((a1 + 72), __p);
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

void sub_10010140C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100101438(uint64_t a1)
{
  sub_100101154(a1);

  operator delete();
}

int *sub_100101470(uint64_t *a1, uint64_t *a2)
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
    v21 = 656;
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
      v21 = 656;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}