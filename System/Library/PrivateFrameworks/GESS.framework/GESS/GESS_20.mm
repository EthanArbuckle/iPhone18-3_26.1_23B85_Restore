void sub_24BDFAE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDFAE60(uint64_t a1, unsigned int **a2, float *a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = v5 - *a2;
  v8 = *(a1 + 40);
  v10 = *(v8 + 104);
  v9 = *(v8 + 112);
  v11 = (v9 - v10) >> 2;
  sub_24BC95764(v50, v11);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  __p = 0;
  v45 = 0;
  v46 = 0;
  if (*(a1 + 64) == 1)
  {
    sub_24BC8CAB0(&v47, (v9 - v10) >> 2);
    sub_24BC8CAB0(&__p, v11 * v7);
  }

  v39 = v6;
  v40 = v5;
  v41 = v5 - v6;
  v42 = (v9 - v10) >> 2;
  if (v5 == v6)
  {
    if (*(a1 + 64))
    {
LABEL_24:
      sub_24BDFB66C(a3, &__p, v42 * v41);
LABEL_25:
      if (v40 != v39)
      {
        v28 = 0;
        v29 = *a2;
        v30 = v41;
        if (v41 <= 1)
        {
          v30 = 1;
        }

        do
        {
          v31 = &a3[v28 * v42];
          v32 = &a3[v29[v28]];
          v33 = v29;
          v34 = v30;
          do
          {
            v36 = *v33++;
            v35 = v36;
            v37 = *v32;
            v38 = v31[v36];
            if (*v32 >= v38)
            {
              v37 = v38;
            }

            *v32 = v37;
            v31[v35] = v37;
            v32 += v42;
            --v34;
          }

          while (v34);
          ++v28;
        }

        while (v28 != v30);
      }
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (v11 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = (v9 - v10) >> 2;
    }

    if (v7 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v7;
    }

    v16 = 4 * v11;
    v17 = a3;
    while (1)
    {
      v18 = *(a1 + 32);
      if (v18)
      {
        if ((*(*v18 + 48))(v18))
        {
          break;
        }
      }

      sub_24BDFB700(a1, &(*a2)[v13], v50, &v47);
      if (v9 != v10)
      {
        v19 = v50[0];
        v20 = v17;
        v21 = v14;
        do
        {
          v22 = *v19++;
          *v20++ = v22;
          --v21;
        }

        while (v21);
      }

      v23 = *(a1 + 64);
      if (v9 != v10 && *(a1 + 64))
      {
        v24 = v47;
        v25 = __p + v12;
        v26 = v14;
        do
        {
          v27 = *v24++;
          *v25++ = v27;
          --v26;
        }

        while (v26);
      }

      ++v13;
      v17 = (v17 + v16);
      v12 += v16;
      if (v13 == v15)
      {
        if (v23)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }
}

void sub_24BDFB0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDFB0FC(void *result, void *a2)
{
  v2 = result[9];
  v3 = result[10];
  v4 = v3 - v2;
  if (v3 != v2)
  {
    v5 = 0;
    v6 = v4 >> 2;
    v7 = (*(result[5] + 112) - *(result[5] + 104)) >> 2;
    v8 = result[39];
    v9 = *a2;
    if (v6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    v11 = 4 * v6;
    do
    {
      v12 = v9;
      v13 = v2;
      result = v10;
      do
      {
        v14 = *v13++;
        *v12++ = *(v8 + 4 * v5 * v7 + 4 * v14);
        result = (result - 1);
      }

      while (result);
      ++v5;
      v9 = (v9 + v11);
    }

    while (v5 != v10);
  }

  return result;
}

float *sub_24BDFB170(uint64_t a1)
{
  v2 = *(a1 + 40);
  v77 = v2[13];
  v78 = v2[14];
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = (v3 - v4) >> 2;
  v6 = (v2[10] + 16 * *(a1 + 192));
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
  }

  (*(*v8 + 32))(v8, (v78 - v77) >> 2);
  v9 = *(a1 + 184);
  if ((v9 * v5) >> 62)
  {
    v10 = -1;
  }

  else
  {
    v10 = 4 * v9 * v5;
  }

  result = operator new[](v10, MEMORY[0x277D826F0]);
  if (result)
  {
    v76 = result;
    sub_24BDDF618((a1 + 120), v9, result);
    v75 = (v78 - v77) >> 2;
    sub_24BC95764(v83, *(a1 + 184));
    if (v3 != v4)
    {
      v12 = 0;
      if (v5 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = (v3 - v4) >> 2;
      }

      v14 = *(a1 + 184);
      v15 = v76;
      do
      {
        v16 = *(*(a1 + 72) + 4 * v12);
        if (v14)
        {
          v17 = 0;
          v18 = *(a1 + 336);
          v19 = v15;
          do
          {
            v20 = *v19++;
            *(v18 + 4 * (v16 * v14 + v17++)) = v20;
          }

          while (v14 > v17);
        }

        v21 = *v15;
        v22 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
        v24 = *v22;
        v23 = v22[1];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v23);
          v14 = *(a1 + 184);
        }

        *(*(v24 + 40) + 8 * v16) = v21;
        v15 += v14;
        ++v12;
      }

      while (v12 != v13);
    }

    v79 = *(a1 + 168);
    sub_24BC95764(v82, (v3 - v4) >> 2);
    if (v78 != v77)
    {
      v25 = 0;
      v26 = 0;
      if (v5 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = (v3 - v4) >> 2;
      }

      if (v75 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = (v78 - v77) >> 2;
      }

      v29 = 4 * v5;
      do
      {
        if (((*(*(a1 + 208) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          if (v3 != v4)
          {
            v30 = v82[0];
            v31 = (*(a1 + 312) + v25);
            v32 = v79;
            v33 = v27;
            do
            {
              v34 = *v32++;
              *v30++ = v34 - (*v31 * *v31);
              v31 += v75;
              --v33;
            }

            while (v33);
          }

          v35 = *(a1 + 184);
          v36 = (*(a1 + 336) + 4 * v35 * v26);
          if (v35)
          {
            v37 = 0;
            v38 = v82[0];
            v40 = *(a1 + 152);
            v39 = *(a1 + 160);
            do
            {
              *(v36 + v37) = 0;
              v41 = 0.0;
              v42 = 0.0;
              if (v3 != v4)
              {
                v43 = v38;
                v44 = v39;
                v45 = v27;
                do
                {
                  v46 = *v43++;
                  v47 = v46;
                  v48 = *v44++;
                  v42 = v42 + (v47 * v48);
                  *(v36 + v37) = v42;
                  --v45;
                }

                while (v45);
              }

              v49 = *(v40 + 4 * v37);
              if (v49 > 0.0)
              {
                v50 = sqrtf(v49);
                v41 = v42 / (v50 + v50);
              }

              *(v36 + v37++) = v41;
              v39 = (v39 + v29);
            }

            while (v37 != v35);
          }

          v51 = *v36;
          v52 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
          v54 = *v52;
          v53 = v52[1];
          if (v53)
          {
            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v53);
          }

          *(*(v54 + 40) + 8 * v26) = v51;
        }

        ++v26;
        v25 += 4;
      }

      while (v26 != v28);
    }

    v55 = *(a1 + 40);
    v57 = *(v55 + 152);
    v56 = *(v55 + 160);
    sub_24BCB2008(__p, 3uLL);
    v59 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
    v61 = *v59;
    v60 = v59[1];
    if (v60)
    {
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v60);
    }

    v62 = (v56 - v57) >> 2;
    if (v56 == v57)
    {
      v64 = 0;
    }

    else
    {
      v63 = 0;
      v64 = 0;
      if (v62 <= 1)
      {
        v65 = 1;
      }

      else
      {
        v65 = v62;
      }

      do
      {
        v66 = *(a1 + 40);
        v80 = v63;
        sub_24BCD567C(v66, &v80, __p);
        v67 = *(v61 + 40);
        v68 = *(v67 + 8 * *__p[0]);
        *v69.i8 = vsub_f32(*(v67 + 8 * *(__p[0] + 1)), v68);
        *v70.i8 = vsub_f32(*(v67 + 8 * *(__p[0] + 2)), v68);
        v71 = vuzp2q_s32(vextq_s8(v70, v70, 4uLL), v70);
        v58 = vzip2q_s32(vzip1q_s32(v70, vextq_s8(v70, v70, 0xCuLL)), v70);
        v58.n128_f32[0] = COERCE_FLOAT(vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v69, vextq_s8(*&v69, *&v69, 0xCuLL)), v69), v71), *&v58, vuzp2q_s32(vextq_s8(*&v69, *&v69, 4uLL), v69)).i32[2]);
        if (v58.n128_f32[0] >= 0.0)
        {
          ++v64;
        }

        ++v63;
      }

      while (v65 != v63);
    }

    if (v64 < v62 - v64 && v78 != v77)
    {
      v73 = (v78 - v77) >> 2;
      if (v75 <= 1)
      {
        v73 = 1;
      }

      v74 = (*(v61 + 40) + 4);
      do
      {
        v58.n128_f32[0] = -*v74;
        *v74 = v58.n128_f32[0];
        v74 += 2;
        --v73;
      }

      while (v73);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v82[0])
    {
      v82[1] = v82[0];
      operator delete(v82[0]);
    }

    if (v83[0])
    {
      v83[1] = v83[0];
      operator delete(v83[0]);
    }

    return MEMORY[0x24C254890](v76, 0x1000C8052888210, v58);
  }

  return result;
}

void sub_24BDFB5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  MEMORY[0x24C254890](a11, 0x1000C8052888210);
  _Unwind_Resume(a1);
}

float *sub_24BDFB66C(float *result, float **a2, unint64_t a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = 0.0;
    v5 = 0.0;
    do
    {
      v4 = v4 + (*a2)[v3];
      v5 = v5 + result[v3++];
    }

    while (a3 != v3);
    v6 = v4 / a3;
    if (v6 > 0.00000001)
    {
      v7 = (v5 / a3) / v6;
      v8 = *a2;
      do
      {
        v9 = *v8++;
        v10 = ((v7 * v9) * 0.3) + *result * 0.699999988;
        *result++ = v10;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

void sub_24BDFB700(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v9 = *(v7 + 104);
  v8 = *(v7 + 112);
  v10 = (v8 - v9) >> 2;
  LOBYTE(v42[0]) = 0;
  sub_24BC9FEFC(v46, v10);
  sub_24BDF9184(v45, v10);
  if (v8 != v9)
  {
    operator new();
  }

  v44 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  sub_24BDF63C0(v42, (v8 - v9) >> 2);
  v11 = *a3;
  v12 = *(a3 + 8) - *a3;
  if (v12 >= 1)
  {
    memset_pattern16(*a3, &unk_24BFED000, v12);
  }

  v13 = *(a1 + 64);
  if (v13 == 1)
  {
    v14 = *(a4 + 8) - *a4;
    if (v14 >= 1)
    {
      memset_pattern16(*a4, &unk_24BFED000, v14);
    }
  }

  v15 = *a2;
  *(v46[0] + ((v15 >> 3) & 0x1FFFFFF8)) |= 1 << v15;
  v11[v15] = 0;
  if (v13)
  {
    *(*a4 + 4 * v15) = 0;
  }

  v16 = *(v45[0] + 16 * v15);
  v17 = *(v45[0] + 16 * v15);
  *v17 = 0;
  v17[1] = v15;
  v41 = v16;
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_24BDF6494(v42, &v41);
  if (*(&v41 + 1))
  {
    sub_24BC9EC78(*(&v41 + 1));
  }

  if (v8 != v9)
  {
    v19 = 0;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      sub_24BDB9EE0(v42, 0, &v39, v18);
      v38 = *(v39 + 4);
      *(v46[0] + ((v38 >> 3) & 0x1FFFFFF8)) |= 1 << v38;
      sub_24BCB9454(v37, (*(a1 + 40) + 104), &v38);
      v36 = -1;
      while (1)
      {
        v36 = sub_24BCB947C(v37);
        if (v36 == -1)
        {
          break;
        }

        v20 = *(a1 + 40);
        v21 = sub_24BCB9024(v20 + 104, &v36);
        v35[0] = *(sub_24BCB9024(v20 + 104, v21) + 12);
        if (((*(v46[0] + ((v35[0] >> 3) & 0x1FFFFFF8)) >> SLOBYTE(v35[0])) & 1) == 0)
        {
          sub_24BDFBBA0(a1, &v38, v35, &v36, v46, a3, a4);
        }
      }

      sub_24BCB9454(v35, (*(a1 + 40) + 104), &v38);
      while (1)
      {
        v36 = sub_24BCB947C(v35);
        if (v36 == -1)
        {
          break;
        }

        v22 = *(a1 + 40);
        v23 = sub_24BCB9024(v22 + 104, &v36);
        v24 = *(sub_24BCB9024(v22 + 104, v23) + 12);
        if (((*(v46[0] + ((v24 >> 3) & 0x1FFFFFF8)) >> v24) & 1) == 0)
        {
          v26 = (v45[0] + 16 * v24);
          v27 = *v26;
          if (*(*v26 + 8) == -1)
          {
            *(v27 + 4) = v24;
            *v27 = -*(*a3 + 4 * v24);
            *&v32 = v27;
            v30 = v26[1];
            *(&v32 + 1) = v30;
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
            }

            sub_24BDF6494(v42, &v32);
            v29 = *(&v32 + 1);
            if (*(&v32 + 1))
            {
LABEL_32:
              sub_24BC9EC78(v29);
            }
          }

          else
          {
            v33 = *v26;
            v28 = v26[1];
            v34 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v25.n128_f32[0] = -*(*a3 + 4 * v24);
            sub_24BDFBE18(v42, &v33, v25);
            v29 = v34;
            if (v34)
            {
              goto LABEL_32;
            }
          }
        }
      }

      if (v40)
      {
        sub_24BC9EC78(v40);
      }

      ++v19;
    }

    while (v19 != v10);
  }

  sub_24BDF90D4(v42, v18);
  v42[0] = v45;
  sub_24BCB7FC8(v42);
  if (v46[0])
  {
    operator delete(v46[0]);
  }
}

void sub_24BDFBB00(_Unwind_Exception *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void **a26)
{
  if (a25)
  {
    sub_24BC9EC78(a25);
  }

  sub_24BDF90D4(&a26, a2);
  a26 = (v26 - 136);
  sub_24BCB7FC8(&a26);
  v28 = *(v26 - 112);
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void sub_24BDFBBA0(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, void *a5, void *a6, void *a7)
{
  v14 = *(*(a1 + 40) + 32);
  v15 = (v14 + 16 * *(a1 + 200));
  v17 = *v15;
  v16 = v15[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v16);
    v14 = *(*(a1 + 40) + 32);
  }

  v18 = *a4;
  v19 = *(v17 + 40);
  v20 = (v14 + 16 * *(a1 + 204));
  v22 = *v20;
  v21 = v20[1];
  v23 = v18;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v21);
    v23 = *a4;
  }

  v24 = *a3;
  v25 = *a2;
  v26 = *(*a6 + 4 * v25) + *(v19 + 4 * v18);
  if (*(*a6 + 4 * v24) > v26)
  {
    v27 = *(v22 + 40);
    *(*a6 + 4 * v24) = v26;
    if (*(a1 + 64) == 1)
    {
      *(*a7 + 4 * v24) = *(*a7 + 4 * v25) + *(v27 + 4 * v23);
    }
  }

  v28 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), *a4);
  if ((v29 & *v28) == 0)
  {
    v30 = *(a1 + 40);
    v31 = sub_24BCB9024(v30 + 104, a4);
    v32 = sub_24BCB9024(v30 + 104, (v31 + 8));
    v47 = *(sub_24BCB9024(v30 + 104, v32) + 12);
    if ((*(*a5 + ((v47 >> 3) & 0x1FFFFFF8)) >> v47))
    {
      if (*(*a6 + 4 * v47) <= *(*a6 + 4 * *a2))
      {
        v35 = &v47;
        v34 = a1;
        v33 = a2;
      }

      else
      {
        v33 = &v47;
        v34 = a1;
        v35 = a2;
      }

      sub_24BDFBE4C(v34, v35, v33, a3, a6);
    }
  }

  v36 = *(a1 + 40);
  v37 = sub_24BCB9024(v36 + 104, a4);
  v38 = sub_24BC9ECE4(v36, *(v36 + 180), *v37);
  if ((v39 & *v38) == 0)
  {
    v40 = *(a1 + 40);
    v41 = sub_24BCB9024(v40 + 104, a4);
    v42 = sub_24BCB9024(v40 + 104, v41);
    v43 = sub_24BCB9024(v40 + 104, (v42 + 8));
    v47 = *(sub_24BCB9024(v40 + 104, v43) + 12);
    if ((*(*a5 + ((v47 >> 3) & 0x1FFFFFF8)) >> v47))
    {
      if (*(*a6 + 4 * v47) <= *(*a6 + 4 * *a2))
      {
        v46 = &v47;
        v45 = a1;
        v44 = a2;
      }

      else
      {
        v44 = &v47;
        v45 = a1;
        v46 = a2;
      }

      sub_24BDFBE4C(v45, v46, v44, a3, a6);
    }
  }
}

void sub_24BDFBE18(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 8);
    if (v4 < a1[4])
    {
      v5 = *v3;
      *v3 = a3.n128_u32[0];
      if (v5 <= a3.n128_f32[0])
      {
        sub_24BDBA07C(a1, v4);
      }

      else
      {
        sub_24BDB9FB4(a1, v4, a3);
      }
    }
  }
}

void sub_24BDFBE4C(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, void *a5)
{
  v9 = *a3;
  v10 = *(*a5 + 4 * v9);
  v11 = *(*a5 + 4 * *a2);
  v12 = (*(*(a1 + 40) + 8) + 16 * *(*(a1 + 40) + 176));
  v14 = *v12;
  v13 = v12[1];
  if (!v13)
  {
    v18 = *(*(v14 + 40) + 16 * v9);
    v19 = *a4;
LABEL_9:
    v22 = vsubq_f32(v18, *(*(v14 + 40) + 16 * v19));
    v23 = *a2;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_24BC9EC78(v13);
  v15 = (*(*(a1 + 40) + 8) + 16 * *(*(a1 + 40) + 176));
  v17 = *v15;
  v16 = v15[1];
  v18 = *(*(v14 + 40) + 16 * v9);
  v19 = *a4;
  if (!v16)
  {
    v14 = *v15;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v50 = v18;
  sub_24BC9EC78(v16);
  v20 = (*(*(a1 + 40) + 8) + 16 * *(*(a1 + 40) + 176));
  v14 = *v20;
  v21 = v20[1];
  v22 = vsubq_f32(v50, *(*(v17 + 40) + 16 * v19));
  v23 = *a2;
  if (!v21)
  {
LABEL_10:
    v27 = *(*(v14 + 40) + 16 * v23);
    v28 = *a4;
    v26 = v14;
    goto LABEL_11;
  }

  v51 = v22;
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_24BC9EC78(v21);
  v24 = (*(*(a1 + 40) + 8) + 16 * *(*(a1 + 40) + 176));
  v26 = *v24;
  v25 = v24[1];
  v27 = *(*(v14 + 40) + 16 * v23);
  v28 = *a4;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    v49 = v27;
    sub_24BC9EC78(v25);
    v27 = v49;
  }

  v22 = v51;
LABEL_11:
  v29 = vsubq_f32(v27, *(*(v26 + 40) + 16 * v28));
  v30 = vmulq_f32(v22, v22);
  v30.i32[3] = 0;
  v31 = sqrtf(vaddv_f32(*&vpaddq_f32(v30, v30)));
  v32 = vmulq_f32(v29, v29);
  v32.i32[3] = 0;
  v33 = sqrtf(vaddv_f32(*&vpaddq_f32(v32, v32)));
  v34 = v31 * v33;
  if (fabsf(v31 * v33) >= 0.00000001)
  {
    v35 = v10 - v11;
    v36 = vmulq_f32(v29, v22);
    v36.i32[3] = 0;
    v37 = vaddv_f32(*&vpaddq_f32(v36, v36)) / v34;
    v38 = vmlsq_f32(vmulq_f32(vuzp2q_s32(vextq_s8(v29, v29, 4uLL), v29), vzip2q_s32(vzip1q_s32(v22, vextq_s8(v22, v22, 0xCuLL)), v22)), vzip2q_s32(vzip1q_s32(v29, vextq_s8(v29, v29, 0xCuLL)), v29), vuzp2q_s32(vextq_s8(v22, v22, 4uLL), v22));
    v39 = vmulq_f32(v38, v38);
    v39.i32[3] = 0;
    v38.f32[0] = sqrtf(vaddv_f32(*&vpaddq_f32(v39, v39))) / v34;
    v40 = ((v33 * v33) + (v31 * v31)) + (((v31 * -2.0) * v33) * v37);
    v41 = ((v10 - v11) * (v33 + v33)) * -(v33 - (v31 * v37));
    v42 = ((v40 * -4.0) * ((v33 * v33) * ((v38.f32[0] * (-(v31 * v31) * v38.f32[0])) + (v35 * v35)))) + (v41 * v41);
    if (v42 >= 0.0 && fabsf(v40) >= 0.00000001)
    {
      v43 = (sqrtf(v42) - v41) / (v40 + v40);
      if (v43 >= v35 && fabsf(v43) >= 0.00000001)
      {
        v44 = (v33 * (v43 - v35)) / v43;
        v46 = v44 > (v31 / v37) && v37 > 0.00000001;
        if (!v46 && v44 >= (v31 * v37))
        {
          v47 = *a4;
          v48 = v43 + *(*a5 + 4 * *a2);
          if (*(*a5 + 4 * v47) > v48)
          {
            *(*a5 + 4 * v47) = v48;
          }
        }
      }
    }
  }
}

void sub_24BDFC150(uint64_t a1, uint64_t *a2, void *a3, _DWORD *a4, int a5)
{
  sub_24BDFC548(a1);
  v10 = *(a1 + 32);
  if (!v10 || ((*(*v10 + 48))(v10) & 1) == 0)
  {
    v31 = 0;
    LODWORD(__p) = a5;
    sub_24BDFF0CC(a1, a2, &__p, *a4 != 0, &v31);
    v11 = *(a1 + 32);
    if (!v11 || ((*(*v11 + 48))(v11) & 1) == 0)
    {
      if (!v31)
      {
        v12 = *a2;
        v13 = a2[1];
        if (*a2 != v13)
        {
          do
          {
            v15 = *v12;
            v14 = v12[1];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (!sub_24BDEFB3C(v15))
            {
              sub_24BE3E850(v15);
            }

            if (v14)
            {
              sub_24BC9EC78(v14);
            }

            v12 += 2;
          }

          while (v12 != v13);
        }
      }

      v16 = *(a1 + 32);
      if (!v16 || ((*(*v16 + 48))(v16) & 1) == 0)
      {
        __p = 0;
        v36 = 0;
        v37 = 0;
        sub_24BDF8C50(&__p, *a2, a2[1], (a2[1] - *a2) >> 4);
        if (v36 != __p)
        {
          v17 = (v36 - __p) >> 4;
          do
          {
            p_p = 0;
            v33 = 0;
            v34 = 0;
            v18 = v17 - 1;
            sub_24BDED184(*(__p + 2 * v17 - 2));
            if (p_p != v33)
            {
              sub_24BDFEB14(&v38, (*a2 + 16 * v17), a2[1], *a2 + 16 * v17 - 16);
              v20 = v19;
              for (i = a2[1]; i != v20; i -= 16)
              {
                v22 = *(i - 8);
                if (v22)
                {
                  sub_24BC9EC78(v22);
                }
              }

              a2[1] = v20;
              v23 = p_p;
              v24 = v33;
              while (v23 != v24)
              {
                sub_24BCB820C(a2, v23++);
              }
            }

            v39 = &p_p;
            sub_24BCB7FC8(&v39);
            v17 = v18;
          }

          while (v18);
        }

        p_p = &__p;
        sub_24BCB7FC8(&p_p);
        v25 = *(a1 + 32);
        if (!v25 || ((*(*v25 + 48))(v25) & 1) == 0)
        {
          a3[1] = 0;
          sub_24BCB29DC(a3, (a2[1] - *a2) >> 4, 0);
          sub_24BCA123C(&__p, (a2[1] - *a2) >> 4);
          v26 = *a2;
          if (a2[1] != *a2)
          {
            v27 = 0;
            v28 = 0;
            do
            {
              v29 = sub_24BDEEFC8(*(v26 + v27));
              *(__p + v28) = v29;
              if (sub_24BDEF188(*(*a2 + v27), 1, v29) >= 1)
              {
                *(*a3 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
              }

              if (*(__p + v28) >= 2u)
              {
                sub_24BDFC658(a2, v28, a5, **(a1 + 48), 0.0005);
                v30 = a2[1] - *a2;
                if (a3[1] != v30 >> 4)
                {
                  sub_24BCB29DC(a3, v30 >> 4, 0);
                }
              }

              ++v28;
              v26 = *a2;
              v27 += 16;
            }

            while (v28 < (a2[1] - *a2) >> 4);
          }

          if (__p)
          {
            v36 = __p;
            operator delete(__p);
          }
        }
      }
    }
  }
}

void sub_24BDFC4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **p_p, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18)
{
  a18 = &p_p;
  sub_24BCB7FC8(&a18);
  p_p = &__p;
  sub_24BCB7FC8(&p_p);
  _Unwind_Resume(a1);
}

void sub_24BDFC548(uint64_t a1)
{
  v2 = (a1 + 104);
  v3 = a1 + 96;
  sub_24BCC8A84(a1 + 96, *(a1 + 104));
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  v4 = v2[10];
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v16 = -1;
      v17 = -1;
      v6 = *(a1 + 72);
      v7 = *(a1 + 80);
      if (v6 != v7)
      {
        v8 = *(a1 + 336) + 4 * i;
        v9 = -1;
        v10 = 3.4028e38;
        v11 = -3.4028e38;
        v12 = -1;
        do
        {
          v13 = *v6;
          v14 = v4 * v13;
          v15 = *(v8 + 4 * v4 * v13);
          if (v15 > v11)
          {
            v17 = *v6;
            v15 = *(v8 + 4 * v14);
            v12 = v13;
            v11 = v15;
          }

          if (v15 < v10)
          {
            v9 = *v6;
            v16 = *v6;
            v10 = *(v8 + 4 * v14);
          }

          ++v6;
        }

        while (v6 != v7);
        if (v12 != -1 && v9 != -1)
        {
          sub_24BD87EB8(v3, &v17);
          sub_24BD87EB8(v3, &v16);
          v4 = *(a1 + 184);
        }
      }
    }
  }
}

uint64_t sub_24BDFC658(void **a1, unsigned int a2, char a3, float a4, float a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = a5;
  v28 = a4;
  v7 = a2;
  v26 = 0;
  v8 = 16 * a2;
  do
  {
    sub_24BDFA780(v29, *(*a1 + v8), &v28, &v27, a3);
    if (sub_24BDFC8E4(v29, &v26))
    {
      v9 = v26;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      sub_24BDED184(*(*a1 + v8));
      if (v24 == v23 || (v24 - v23) < 0x11)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unexpected boundary status.");
        __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
      }

      v10 = *a1;
      v12 = *v23;
      v11 = *(v23 + 1);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = &v10[16 * v7];
      v14 = *(v13 + 1);
      *v13 = v12;
      *(v13 + 1) = v11;
      if (v14)
      {
        sub_24BC9EC78(v14);
      }

      v15 = v23;
      if ((v24 - v23) >= 0x11)
      {
        v16 = 2;
        v17 = 1;
        do
        {
          sub_24BCB820C(a1, &v15[16 * v17]);
          v17 = v16;
          v15 = v23;
          ++v16;
        }

        while (v17 < (v24 - v23) >> 4);
      }

      memset(v22, 0, sizeof(v22));
      sub_24BCA123C(__p, (*(*(*a1 + v8) + 112) - *(*(*a1 + v8) + 104)) >> 2);
      v9 = sub_24BDEE468(*(*a1 + v8), v22, __p);
      v26 = v9;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      __p[0] = v22;
      sub_24BC8EE84(__p);
      v22[0] = &v23;
      sub_24BCB7FC8(v22);
    }

    sub_24BDBA0F0(v29);
  }

  while (v9 > 1);
  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BDFC868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a13 = &a16;
  sub_24BCB7FC8(&a13);
  sub_24BDBA0F0(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDFC8E4(uint64_t a1, unsigned int *a2)
{
  *a2 = 0;
  v4 = (*(*(a1 + 40) + 112) - *(*(a1 + 40) + 104)) >> 2;
  memset(v9, 0, sizeof(v9));
  sub_24BCA1128(__p, v4);
  v5 = sub_24BDEE468(*(a1 + 40), v9, __p);
  *a2 = v5;
  if (v5 < 2)
  {
    goto LABEL_4;
  }

  if (sub_24BDFC9DC(a1, v9, __p))
  {
    --*a2;
LABEL_4:
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[0] = v9;
  sub_24BC8EE84(__p);
  return v6;
}

void sub_24BDFC9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, char a12)
{
  __p = &a12;
  sub_24BC8EE84(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDFC9DC(uint64_t a1, void *a2, void *a3)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) < 2)
  {
    return 1;
  }

  __p = 0;
  v7 = 0;
  v8 = 0;
  v3 = sub_24BDFD1E4(a1, a2, a3, &__p);
  if (v3)
  {
    sub_24BDFD358(a1, &__p);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_24BDFCA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDFCA80(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v10 = *(a1 + 40);
  v12 = *(v10 + 104);
  v11 = *(v10 + 112);
  LOBYTE(v67[0]) = 0;
  sub_24BC9FEFC(&v71, (v11 - v12) >> 2);
  sub_24BDF9184(v70, (v11 - v12) >> 2);
  if (v11 != v12)
  {
    operator new();
  }

  v69 = 0;
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  sub_24BDF63C0(v67, (v11 - v12) >> 2);
  LODWORD(v57) = 2139095039;
  sub_24BCDEA88(__p, (v11 - v12) >> 2);
  v13 = *(a5 + 8) - *a5;
  if (v13 >= 1)
  {
    memset(*a5, 255, v13);
  }

  v14 = *a2 + 24 * a3;
  v15 = *v14;
  if (*(v14 + 8) != *v14)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(sub_24BCB9024(*(a1 + 40) + 104, &v15[v16]) + 12);
      *&v71[(v18 >> 3) & 0x1FFFFFF8] |= 1 << v18;
      *(__p[0] + v18) = 0;
      v19 = *(v70[0] + 16 * v18);
      v20 = *(v70[0] + 16 * v18);
      *v20 = 0x80000000;
      v20[1] = v18;
      v65 = v19;
      if (*(&v19 + 1))
      {
        atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      sub_24BDF6494(v67, &v65);
      if (*(&v65 + 1))
      {
        sub_24BC9EC78(*(&v65 + 1));
      }

      ++v17;
      v15 = *v14;
      ++v16;
    }

    while (v17 < (*(v14 + 8) - *v14) >> 2);
  }

  v21 = sub_24BCB9024(*(a1 + 40) + 104, v15);
  if (v11 != v12)
  {
    v23 = 0;
    v52 = *(*a4 + 4 * *(v21 + 12));
    if (((v11 - v12) >> 2) <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = (v11 - v12) >> 2;
    }

    while (1)
    {
      sub_24BDB9EE0(v67, 0, &v63, v22);
      if (!v63)
      {
        goto LABEL_53;
      }

      v62 = *(v63 + 4);
      *&v71[(v62 >> 3) & 0x1FFFFFF8] |= 1 << v62;
      if (sub_24BCD93B0(*(a1 + 40), &v62))
      {
        v25 = v62;
        if (*(*a4 + 4 * v62) != v52)
        {
          break;
        }
      }

      sub_24BCB9454(v61, (*(a1 + 40) + 104), &v62);
      v60 = -1;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      while (1)
      {
        v60 = sub_24BCB947C(v61);
        if (v60 == -1)
        {
          break;
        }

        sub_24BCB4670(&v57, &v60);
      }

      v27 = v57;
      v26 = v58;
      if (v58 != v57)
      {
        v28 = 0;
        v29 = 0;
        do
        {
          v30 = *(a1 + 40);
          v31 = sub_24BCB9024(v30 + 104, &v27[v28]);
          v32 = *(sub_24BCB9024(v30 + 104, v31) + 12);
          if (((*&v71[(v32 >> 3) & 0x1FFFFFF8] >> v32) & 1) == 0)
          {
            v33 = (*(*(a1 + 40) + 32) + 16 * *(a1 + 200));
            v35 = *v33;
            v34 = v33[1];
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v34);
            }

            v36 = *(*(v35 + 40) + 4 * *&v27[4 * v29]);
            v37 = v62;
            v38 = *(__p[0] + v62);
            if (v36 < (v38 * 0.0000001))
            {
              v36 = v38 * 0.0000001;
            }

            v22.n128_f32[0] = v38 + v36;
            if (*(__p[0] + v32) > v22.n128_f32[0])
            {
              *(__p[0] + v32) = v22.n128_u32[0];
              *(*a5 + 4 * v32) = v37;
            }
          }

          ++v29;
          v27 = v57;
          v26 = v58;
          v28 += 4;
        }

        while (v29 < (v58 - v57) >> 2);
      }

      if (v26 != v27)
      {
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = *(a1 + 40);
          v42 = sub_24BCB9024(v41 + 104, &v27[v39]);
          v43 = *(sub_24BCB9024(v41 + 104, v42) + 12);
          if (((*&v71[(v43 >> 3) & 0x1FFFFFF8] >> v43) & 1) == 0)
          {
            v44 = (v70[0] + 16 * v43);
            v45 = *v44;
            if (*(*v44 + 8) == -1)
            {
              *(v45 + 4) = v43;
              *v45 = -*(__p[0] + v43);
              *&v54 = v45;
              v48 = v44[1];
              *(&v54 + 1) = v48;
              if (v48)
              {
                atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
              }

              sub_24BDF6494(v67, &v54);
              v47 = *(&v54 + 1);
              if (!*(&v54 + 1))
              {
                goto LABEL_40;
              }
            }

            else
            {
              v55 = *v44;
              v46 = v44[1];
              v56 = v46;
              if (v46)
              {
                atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v22.n128_f32[0] = -*(__p[0] + v43);
              sub_24BDFBE18(v67, &v55, v22);
              v47 = v56;
              if (!v56)
              {
                goto LABEL_40;
              }
            }

            sub_24BC9EC78(v47);
          }

LABEL_40:
          ++v40;
          v27 = v57;
          v39 += 4;
        }

        while (v40 < (v58 - v57) >> 2);
      }

      if (v27)
      {
        v58 = v27;
        operator delete(v27);
      }

      if (v64)
      {
        sub_24BC9EC78(v64);
      }

      if (++v23 == v24)
      {
        goto LABEL_55;
      }
    }

    *a6 = v62;
    v22.n128_u32[0] = *(__p[0] + v25);
    *a7 = v22.n128_u32[0];
LABEL_53:
    if (v64)
    {
      sub_24BC9EC78(v64);
    }
  }

LABEL_55:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_24BDF90D4(v67, v22);
  v67[0] = v70;
  sub_24BCB7FC8(v67);
  if (v71)
  {
    operator delete(v71);
  }
}

void sub_24BDFCFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BDF90D4(&a34, a9);
  a34 = v34 - 152;
  sub_24BCB7FC8(&a34);
  v36 = *(v34 - 128);
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void sub_24BDFD0A8(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v6 = a3;
  v7 = *a4;
  a4[1] = *a4;
  do
  {
    v8 = a4[2];
    if (v7 >= v8)
    {
      v9 = *a4;
      v10 = v7 - *a4;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        sub_24BC8E01C();
      }

      v13 = v8 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        sub_24BC92E0C(a4, v14);
      }

      *(4 * v11) = v6;
      v7 = (4 * v11 + 4);
      memcpy(0, v9, v10);
      v15 = *a4;
      *a4 = 0;
      a4[1] = v7;
      a4[2] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v7++ = v6;
    }

    a4[1] = v7;
    LODWORD(v6) = *(*a2 + 4 * v6);
  }

  while (v6 != -1);
  v16 = *a4;
  v17 = ((v7 - *a4) >> 2) - 1;
  if ((v7 - *a4) >> 2 != 1)
  {
    v18 = 0;
    do
    {
      v19 = v16[v18];
      v16[v18] = v16[v17];
      v16[v17] = v19;
      ++v18;
      --v17;
    }

    while (v18 < v17);
  }
}

uint64_t sub_24BDFD1E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_24BCA123C(__p, (*(*(a1 + 40) + 112) - *(*(a1 + 40) + 104)) >> 2);
  if (a2[1] == *a2)
  {
    v14 = 0;
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 3.4028e38;
    while (1)
    {
      if (v8)
      {
        v10 = *(*(a1 + 40) + 160) - *(*(a1 + 40) + 152) >= 0x61A81uLL;
      }

      else
      {
        v10 = 0;
      }

      v11 = !v10;
      if (v11 != 1)
      {
LABEL_14:
        v14 = v11 ^ 1;
        goto LABEL_17;
      }

      v16 = -1;
      v17 = 0.0;
      sub_24BDFCA80(a1, a2, v8, a3, __p, &v16, &v17);
      if (v16 == -1)
      {
        break;
      }

      v13 = v17;
      if (v17 < v9)
      {
        sub_24BDFD0A8(v12, __p, v16, a4);
        v9 = v13;
      }

      if (++v8 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3))
      {
        goto LABEL_14;
      }
    }

    v11 = 0;
    v14 = 0;
  }

LABEL_17:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11 | v14;
}

void sub_24BDFD33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDFD358(uint64_t a1, uint64_t *a2)
{
  v59 = 0;
  v60 = 0;
  v61 = 0;
  sub_24BDFD954(a1, a2, &v59);
  v3 = *(a1 + 40);
  v5 = *(v3 + 104);
  v4 = *(v3 + 112);
  v6 = v59;
  if (v60 - v59 == 4)
  {
    v7 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v46[0] = *&v6[4 * v8++];
      v62[0] = *&v6[4 * v8];
      __p = 0;
      v57 = 0;
      v58 = 0;
      v44[0] = -1;
      sub_24BDFDB04(a1, v46, v62, &__p, v44);
      v9 = *(a1 + 40);
      v10 = v46[0];
      v11 = (*(v9 + 8) + 16 * *(v9 + 176));
      v13 = *v11;
      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v12);
      }

      *v47 = *(*(v13 + 40) + 16 * v10);
      v54 = -1;
      v55 = sub_24BCD869C(v9, v47, &v54);
      v14 = *(a1 + 40);
      LODWORD(v48) = -1;
      v47[0] = -1;
      v47[1] = -1;
      v54 = sub_24BCB45D0(v14, 1, v47);
      v15 = *(a1 + 40);
      LODWORD(v48) = -1;
      v47[0] = -1;
      v47[1] = -1;
      v53 = sub_24BCB45D0(v15, 1, v47);
      LODWORD(v47[0]) = *(v57 - 1);
      v52 = *(sub_24BCB9024(*(a1 + 40) + 104, v47) + 4);
      v16 = v44[0];
      v51 = *(__p + v44[0]);
      v50 = *sub_24BCB9024(*(a1 + 40) + 104, &v51);
      v17 = *(a1 + 40);
      v18 = sub_24BCB9024(v17 + 104, __p);
      v49 = *(sub_24BCB9024(v17 + 104, v18) + 12);
      sub_24BCB9048(*(a1 + 40) + 104, &v52, &v53);
      sub_24BCB9048(*(a1 + 40) + 104, &v53, &v54);
      sub_24BCB9048(*(a1 + 40) + 104, &v54, v47);
      sub_24BCB9074(*(a1 + 40) + 104, &v51, &v54);
      sub_24BCB9074(*(a1 + 40) + 104, &v50, &v53);
      v19 = __p;
      if (v16 < (v57 - __p) >> 2)
      {
        v20 = 4 * v16;
        do
        {
          sub_24BCB90C8((*(a1 + 40) + 104), &v19[v20], &v55);
          ++v16;
          v19 = __p;
          v20 += 4;
        }

        while (v16 < (v57 - __p) >> 2);
      }

      sub_24BCB90C8((*(a1 + 40) + 104), &v54, v62);
      sub_24BCB90C8((*(a1 + 40) + 104), &v53, v46);
      sub_24BCB90C8((*(a1 + 40) + 104), &v52, &v49);
      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      v6 = v59;
      v7 = ((v60 - v59) >> 2) - 1;
    }

    while (v8 < v7);
    v3 = *(a1 + 40);
  }

  v55 = *&v6[4 * v7];
  __p = 0;
  v57 = 0;
  v58 = 0;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  sub_24BCB9454(v46, (v3 + 104), &v55);
  v53 = sub_24BCB94C0(v46);
  v54 = v53;
  v21 = (v4 - v5) >> 2;
  v52 = *(sub_24BCB9024(*(a1 + 40) + 104, &v53) + 4);
  do
  {
    sub_24BCB4670(&__p, &v54);
    v54 = sub_24BCB94C0(v46);
    v22 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), v54);
  }

  while ((*v22 & v23) == 0 && v54 != -1);
  v51 = v54;
  v50 = *(sub_24BCB9024(*(a1 + 40) + 104, &v51) + 4);
  do
  {
    sub_24BCB4670(v47, &v54);
    v54 = sub_24BCB94C0(v46);
  }

  while (v54 != -1);
  v25 = *(a1 + 40);
  v26 = v55;
  v27 = (*(v25 + 8) + 16 * *(v25 + 176));
  v29 = *v27;
  v28 = v27[1];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v28);
  }

  *v44 = *(*(v29 + 40) + 16 * v26);
  v62[0] = -1;
  v49 = sub_24BCD869C(v25, v44, v62);
  sub_24BCB9048(*(a1 + 40) + 104, &v50, &v53);
  sub_24BCB9048(*(a1 + 40) + 104, &v52, &v51);
  v30 = v47[0];
  v31 = v47[1];
  while (v30 != v31)
  {
    sub_24BCB90C8((*(a1 + 40) + 104), v30++, &v49);
  }

  v32 = *(a1 + 40);
  sub_24BC836D4(v44, "v:index_in_root");
  v62[0] = -1;
  v33 = sub_24BDE2788((v32 + 8), v62, v44);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  v34 = v59;
  if (v60 != v59)
  {
    v35 = 0;
    v36 = 1;
    do
    {
      v37 = (*(*(a1 + 40) + 8) + 16 * v33);
      v39 = *v37;
      v38 = v37[1];
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v38);
        v40 = (*(*(a1 + 40) + 8) + 16 * v33);
        v42 = *v40;
        v41 = v40[1];
        v43 = (*(v39 + 40) + 4 * *&v59[4 * v35]);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v41);
        }

        v39 = v42;
      }

      else
      {
        v43 = (*(v39 + 40) + 4 * *&v34[4 * v35]);
      }

      *(*(v39 + 40) + 4 * v21) = *v43;
      v35 = v36;
      v34 = v59;
      LODWORD(v21) = v21 + 1;
      ++v36;
    }

    while (v35 < (v60 - v59) >> 2);
  }

  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }

  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }
}

void sub_24BDFD8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a26)
  {
    operator delete(a26);
  }

  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDFD954(uint64_t a1, uint64_t *a2, const void **a3)
{
  v7 = *a2;
  v6 = a2[1];
  if (v6 - *a2 == 4)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v9 = 0;
    LODWORD(v8) = 0;
    while (1)
    {
      v10 = *(a1 + 40);
      v25 = *(v7 + 4 * v9);
      if (!sub_24BCD93B0(v10, &v25))
      {
        break;
      }

      v8 = (v8 + 1);
      v7 = *a2;
      v6 = a2[1];
      v9 = v8;
      if (((v6 - *a2) >> 2) - 1 <= v8)
      {
        goto LABEL_8;
      }
    }

    v7 = *a2;
    v6 = a2[1];
  }

LABEL_8:
  v11 = (v8 - 1);
  if (v11 < (v6 - v7) >> 2)
  {
    v12 = 0;
    do
    {
      v14 = a3[1];
      v13 = a3[2];
      if (v14 >= v13)
      {
        v16 = *a3;
        v17 = v14 - *a3;
        v18 = (v17 >> 2) + 1;
        if (v18 >> 62)
        {
          sub_24BC8E01C();
        }

        v19 = v13 - v16;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v20 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          sub_24BC92E0C(a3, v20);
        }

        v21 = (4 * (v17 >> 2));
        *v21 = *(v7 + 4 * v11);
        v15 = v21 + 1;
        memcpy(0, v16, v17);
        v22 = *a3;
        *a3 = 0;
        a3[1] = v15;
        a3[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v14 = *(v7 + 4 * v11);
        v15 = v14 + 1;
      }

      a3[1] = v15;
      if (v12)
      {
        v23 = *(a1 + 40);
        v24 = *(*a2 + 4 * v11);
        if (sub_24BCD93B0(v23, &v24))
        {
          break;
        }
      }

      ++v11;
      v7 = *a2;
      --v12;
    }

    while (v11 < (a2[1] - *a2) >> 2);
  }
}

void sub_24BDFDB04(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t *a4, void *a5)
{
  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_24BCB9454(v24, (*(a1 + 40) + 104), a2);
  for (i = -1; ; sub_24BCB4670(a4, &i))
  {
    i = sub_24BCB947C(v24);
    if (i == -1)
    {
      break;
    }
  }

  v10 = *a4;
  v9 = a4[1];
  v11 = v9 - *a4;
  sub_24BC9A554(&__p, v11 >> 1);
  v12 = v11 >> 2;
  if (v9 != v10)
  {
    v13 = 0;
    if (v12 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 >> 2;
    }

    do
    {
      *(__p + v13) = *(*a4 + 4 * v13);
      *(__p + 4 * v13 + v11) = *(*a4 + 4 * v13);
      ++v13;
    }

    while (v14 != v13);
  }

  v15 = __p;
  if (v26 == __p)
  {
LABEL_13:
    v16 = -1;
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v17 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), v15[v16]);
      if ((*v17 & v18) != 0)
      {
        break;
      }

      ++v16;
      v15 = __p;
      if (v16 >= (v26 - __p) >> 2)
      {
        goto LABEL_13;
      }
    }
  }

  if (v9 != v10)
  {
    v19 = 0;
    if (v12 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v12;
    }

    do
    {
      *(*a4 + 4 * v19) = *(__p + v19 + v16 + 1);
      v21 = *(a1 + 40);
      v22 = sub_24BCB9024(v21 + 104, (*a4 + 4 * v19));
      if (*(sub_24BCB9024(v21 + 104, v22) + 12) == *a3)
      {
        *a5 = v19;
      }

      ++v19;
    }

    while (v19 != v20);
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_24BDFDCB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDFDCE0(uint64_t a1, char *a2)
{
  v218 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v2 = *(a1 + 40);
  v3 = v2[20] - v2[19];
  if ((v3 & 0x3FFFFFFFCLL) != 0)
  {
    v5 = 0;
    v6 = v2[14] - v2[13];
    v7 = (v3 >> 2);
    while (1)
    {
      v8 = (*(*(a1 + 40) + 56) + 16 * *(a1 + 196));
      v10 = *v8;
      v9 = v8[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v9);
      }

      if (*(*(v10 + 40) + 4 * v5) > 1.0e-16)
      {
        break;
      }

      if (v7 == ++v5)
      {
        goto LABEL_122;
      }
    }

    v216 = 0u;
    v217 = 0u;
    v215 = 0u;
    v210 = 0u;
    memset(v209, 0, sizeof(v209));
    sub_24BC9FEFC(&v208, (v6 >> 2));
    LOBYTE(__p[0]) = 0;
    sub_24BC9FEFC(&v207, v7);
    v213 = 0u;
    v214 = 0u;
    v212 = 0u;
    v206 = v5;
    sub_24BCB2008(v205, 3uLL);
    sub_24BCD567C(*(a1 + 40), &v206, v205);
    for (i = 0; i != 3; ++i)
    {
      v12 = *(v205[0] + i);
      v13 = (*(*(a1 + 40) + 8) + 16 * *(*(a1 + 40) + 176));
      v15 = *v13;
      v14 = v13[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v14);
      }

      *(&v212 + i) = *(*(v15 + 40) + 16 * v12);
    }

    v16 = 0;
    v17 = -1;
    v18 = 3.4028e38;
    do
    {
      if (v16 == 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 + 1;
      }

      v20 = *(&v212 + v16);
      v21 = vsubq_f32(*(&v212 + v19), v20);
      v22 = vmulq_f32(v21, v21);
      v22.i32[3] = 0;
      v23 = vpaddq_f32(v22, v22);
      v24 = vpaddq_f32(v23, v23);
      v25 = xmmword_24BFBD1C0;
      if (v24.f32[0] > 0.0)
      {
        v25 = vdivq_f32(v21, vsqrtq_f32(v24));
      }

      v26 = vsubq_f32(*(&v212 + (v16 + 2) % 3u), v20);
      v27 = vmulq_f32(v26, v26);
      v27.i32[3] = 0;
      v28 = vpaddq_f32(v27, v27);
      v29 = vpaddq_f32(v28, v28);
      v30 = xmmword_24BFBD1C0;
      if (v29.f32[0] > 0.0)
      {
        v30 = vdivq_f32(v26, vsqrtq_f32(v29));
      }

      v31 = vmulq_f32(v25, v30);
      v31.i32[3] = 0;
      v32 = fabsf(vaddv_f32(*&vpaddq_f32(v31, v31)));
      if (v18 > v32)
      {
        v17 = v16;
        v18 = v32;
      }

      ++v16;
    }

    while (v16 != 3);
    v33 = *(&v212 + v17);
    v34 = vsubq_f32(*(&v212 + (v17 + 1) % 3), v33);
    v173 = v33;
    v35 = vsubq_f32(*(&v212 + (v17 + 2) % 3), v33);
    v36 = vzip2q_s32(vzip1q_s32(v34, vextq_s8(v34, v34, 0xCuLL)), v34);
    v37 = vuzp2q_s32(vextq_s8(v34, v34, 4uLL), v34);
    v38 = vmlsq_f32(vmulq_f32(v36, vuzp2q_s32(vextq_s8(v35, v35, 4uLL), v35)), vzip2q_s32(vzip1q_s32(v35, vextq_s8(v35, v35, 0xCuLL)), v35), v37);
    v39 = vmulq_f32(v37, vzip2q_s32(vzip1q_s32(v38, vextq_s8(v38, v38, 0xCuLL)), v38));
    v40 = vmulq_f32(v34, v34);
    v40.i32[3] = 0;
    v41 = vmlsq_f32(v39, v36, vuzp2q_s32(vextq_s8(v38, v38, 4uLL), v38));
    v42 = vpaddq_f32(v40, v40);
    v43 = vpaddq_f32(v42, v42);
    v176 = xmmword_24BFBD1C0;
    v181 = xmmword_24BFBD1C0;
    if (v43.f32[0] > 0.0)
    {
      v176 = vdivq_f32(v34, vsqrtq_f32(v43));
    }

    v44 = vmulq_f32(v41, v41);
    v44.i32[3] = 0;
    v45 = vpaddq_f32(v44, v44);
    v46 = vpaddq_f32(v45, v45);
    if (v46.f32[0] > 0.0)
    {
      v181 = vdivq_f32(v41, vsqrtq_f32(v46));
    }

    v47 = 3;
    do
    {
      v48 = v17 % 3;
      v49 = *(&v212 + v17 % 3);
      v50 = *(*(a1 + 40) + 80);
      v51 = (v50 + 16 * *(a1 + 192));
      v53 = *v51;
      v52 = v51[1];
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        v184 = v49;
        sub_24BC9EC78(v52);
        v49 = v184;
        v50 = *(*(a1 + 40) + 80);
      }

      v54 = vsubq_f32(v49, v173);
      v55 = vmulq_f32(v176, v54);
      v55.i32[3] = 0;
      v56 = v205[0];
      v57 = *(v205[0] + v48);
      *(*(v53 + 40) + 8 * v57) = vaddv_f32(*&vpaddq_f32(v55, v55));
      v58 = (v50 + 16 * *(a1 + 192));
      v60 = *v58;
      v59 = v58[1];
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        v185 = v54;
        sub_24BC9EC78(v59);
        v54 = v185;
        v56 = v205[0];
        v57 = *(v205[0] + v48);
        v50 = *(*(a1 + 40) + 80);
      }

      v61 = vmulq_f32(v181, v54);
      v61.i32[3] = 0;
      v62 = vpaddq_f32(v61, v61);
      *(*(v60 + 40) + 8 * v57 + 4) = vaddv_f32(*v62.f32);
      v63 = (v50 + 16 * *(a1 + 192));
      v65 = *v63;
      v64 = v63[1];
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v64);
        v56 = v205[0];
        v57 = *(v205[0] + v48);
        v66 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
        v68 = *v66;
        v67 = v66[1];
        v69 = (*(v65 + 40) + 8 * v57);
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v67);
          v56 = v205[0];
          v57 = *(v205[0] + v48);
        }

        v65 = v68;
      }

      else
      {
        v69 = (*(v65 + 40) + 8 * v57);
      }

      v62.i32[0] = *v69;
      v62.i32[1] = *(*(v65 + 40) + 8 * v57 + 4);
      *(&v215 + v48) = v62;
      v70 = v56[v48];
      *(v208 + ((v70 >> 3) & 0x1FFFFFF8)) |= 1 << v70;
      ++v17;
      --v47;
    }

    while (v47);
    v182 = v216;
    v186 = v215;
    v177 = v217;
    LODWORD(__p[0]) = v206;
    sub_24BCA09A8(v209, __p);
    *(v207 + ((v206 >> 3) & 0x1FFFFFF8)) |= 1 << v206;
    sub_24BCB2008(v204, 3uLL);
    v71 = *(&v210 + 1);
    if (*(&v210 + 1))
    {
      v72 = vsubq_f32(v182, v186);
      v73 = vsubq_f32(v177, v186);
      LODWORD(v74) = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v72, vextq_s8(*&v72, *&v72, 0xCuLL)), v72), vuzp2q_s32(vextq_s8(*&v73, *&v73, 4uLL), v73)), vzip2q_s32(vzip1q_s32(v73, vextq_s8(*&v73, *&v73, 0xCuLL)), v73), vuzp2q_s32(vextq_s8(*&v72, *&v72, 4uLL), v72)).i32[2];
      while (2)
      {
        v75 = *(*(v209[1] + ((v210 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v210 & 0x3FF));
        *&v210 = v210 + 1;
        *(&v210 + 1) = v71 - 1;
        if (v210 >= 0x800)
        {
          operator delete(*v209[1]);
          v209[1] += 8;
          *&v210 = v210 - 1024;
        }

        LODWORD(v211) = v75;
        sub_24BCD567C(*(a1 + 40), &v211, v204);
        v79 = 0;
        while (1)
        {
          v80 = *(v204[0] + v79);
          if (((1 << v80) & v208[v80 >> 6]) == 0)
          {
            break;
          }

          if (++v79 == 3)
          {
            goto LABEL_97;
          }
        }

        v174 = (v79 + 1) % 3u;
        v81 = *(v204[0] + v174);
        v172 = (v79 + 2) % 3u;
        v187 = *(v204[0] + v172);
        v82 = *(a1 + 40);
        v83 = *(v82 + 176);
        v84 = (*(v82 + 8) + 16 * v83);
        v86 = *v84;
        v85 = v84[1];
        v183 = v81;
        if (v85)
        {
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v85);
          v82 = *(a1 + 40);
          v83 = *(v82 + 176);
          v87 = (*(v82 + 8) + 16 * v83);
          v88 = v81;
          v90 = *v87;
          v89 = v87[1];
          v91 = *(*(v86 + 40) + 16 * v88);
          v212 = v91;
          if (v89)
          {
            atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
            v178 = v91;
            sub_24BC9EC78(v89);
            v91 = v178;
            v82 = *(a1 + 40);
            v83 = *(v82 + 176);
          }

          v86 = v90;
        }

        else
        {
          v91 = *(*(v86 + 40) + 16 * v81);
          v212 = v91;
        }

        v92 = *(*(v86 + 40) + 16 * v187);
        v213 = v92;
        v93 = (*(v82 + 8) + 16 * v83);
        v95 = *v93;
        v94 = v93[1];
        if (v94)
        {
          atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          v179 = v91;
          v170 = v92;
          sub_24BC9EC78(v94);
          v92 = v170;
          v91 = v179;
        }

        v96 = *(*(v95 + 40) + 16 * v80);
        v97 = vsubq_f32(v92, v91);
        v98 = vmulq_f32(v97, v97);
        v98.i32[3] = 0;
        v214 = v96;
        v99 = sqrtf(vaddv_f32(*&vpaddq_f32(v98, v98)));
        if (fabsf(v99) < 0.00000001)
        {
          goto LABEL_113;
        }

        v100 = vsubq_f32(v96, v91);
        v101 = vmulq_f32(v100, v100);
        v101.i32[3] = 0;
        _S14 = sqrtf(vaddv_f32(*&vpaddq_f32(v101, v101)));
        if (fabsf(_S14) >= 0.00000001)
        {
          v110 = vmulq_f32(v100, v97);
          v110.i32[3] = 0;
          v111 = vaddv_f32(*&vpaddq_f32(v110, v110)) / (v99 * _S14);
          if (v111 < -1.0)
          {
            v111 = -1.0;
          }

          if (v111 <= 1.0)
          {
            v112 = v111;
          }

          else
          {
            v112 = 1.0;
          }

          v113 = 1.0 - (v112 * v112);
          v114 = sqrtf(v113);
          if (v113 >= 0.0)
          {
            *v76.i32 = v114;
          }

          else
          {
            *v76.i32 = 0.0;
          }

          v115 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
          v117 = *v115;
          v116 = v115[1];
          v180 = v112;
          v171 = v76;
          if (v116)
          {
            atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v116);
            v118 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
            v120 = *v118;
            v119 = v118[1];
            v121 = (*(v117 + 40) + 8 * v187);
            if (v119)
            {
              atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v119);
            }

            v117 = v120;
            v112 = v180;
            v76 = v171;
          }

          else
          {
            v121 = (*(v117 + 40) + 8 * v187);
          }

          v123 = vsub_f32(*v121, *(*(v117 + 40) + 8 * v183));
          v124 = vmul_f32(v123, v123);
          *v124.i32 = sqrtf(*&v124.i32[1] + (v123.f32[0] * v123.f32[0]));
          v125 = COERCE_DOUBLE(vdiv_f32(v123, vdup_lane_s32(v124, 0)));
          if (*v124.i32 > 0.0)
          {
            *&v77 = v125;
          }

          else
          {
            *&v77 = COERCE_DOUBLE(1065353216);
          }

          v126 = vdup_lane_s32(*&v77, 0);
          v126.f32[0] = -*(&v77 + 1);
          *&v78 = vmla_n_f32(vmul_n_f32(v126, *v76.i32), *&v77, v112);
          *(&v215 + v79) = v78;
          v127 = &v215 + v174;
          v127->i64[0] = 0;
          v127->i64[1] = 0;
          *(&v215 + v172) = v77;
          v128 = vsubq_f32(v216, v215);
          v129 = vsubq_f32(v217, v215);
          if (v74 < 0.0 != COERCE_FLOAT(vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v128, vextq_s8(*&v128, *&v128, 0xCuLL)), v128), vuzp2q_s32(vextq_s8(*&v129, *&v129, 4uLL), v129)), vzip2q_s32(vzip1q_s32(v129, vextq_s8(*&v129, *&v129, 0xCuLL)), v129), vuzp2q_s32(vextq_s8(*&v128, *&v128, 4uLL), v128)).i32[2]) >= 0.0)
          {
            v130 = -1;
          }

          else
          {
            v130 = 0;
          }

          v131 = *(*(a1 + 40) + 80);
          v132 = (v131 + 16 * *(a1 + 192));
          v134 = *v132;
          v133 = v132[1];
          if (v133)
          {
            v175 = v78;
            v188 = v77;
            atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v133);
            v131 = *(*(a1 + 40) + 80);
            v135 = (v131 + 16 * *(a1 + 192));
            v137 = *v135;
            v136 = v135[1];
            v138 = *(*(v134 + 40) + 8 * v183);
            if (v136)
            {
              atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v136);
              v131 = *(*(a1 + 40) + 80);
            }

            v134 = v137;
            *&v78 = v175;
            v112 = v180;
            v76 = v171;
            *&v77 = v188;
          }

          else
          {
            v138 = *(*(v134 + 40) + 8 * v183);
          }

          v139 = vdup_lane_s32(v76, 0);
          v139.f32[0] = -*v76.i32;
          _D1 = vbsl_s8(vdup_n_s32(v130), *&v78, vmla_n_f32(vrev64_s32(vmul_f32(*&v77, v139)), *&v77, v112));
          *(*(v134 + 40) + 8 * v80) = v138 + (_S14 * *_D1.i32);
          v141 = (v131 + 16 * *(a1 + 192));
          v143 = *v141;
          v142 = v141[1];
          if (v142)
          {
            v189 = _D1.i32[1];
            atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v142);
            v131 = *(*(a1 + 40) + 80);
            v144 = (v131 + 16 * *(a1 + 192));
            v146 = *v144;
            v145 = v144[1];
            v147 = *(*(v143 + 40) + 8 * v183 + 4);
            if (v145)
            {
              atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v145);
              v131 = *(*(a1 + 40) + 80);
            }

            v143 = v146;
            _D1.i32[1] = v189;
          }

          else
          {
            v148 = *(*(v143 + 40) + 8 * v183 + 4);
          }

          __asm { FMLA            S15, S14, V1.S[1] }

          *(*(v143 + 40) + 8 * v80 + 4) = _S15;
          v154 = (v131 + 16 * *(a1 + 192));
          v156 = *v154;
          v155 = v154[1];
          if (v155)
          {
            atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v155);
          }

          if (fabsf(*(*(v156 + 40) + 8 * v80)) == INFINITY)
          {
            goto LABEL_113;
          }

          v157 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
          v159 = *v157;
          v158 = v157[1];
          if (v158)
          {
            atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v158);
          }

          if (fabsf(*(*(v159 + 40) + 8 * v80 + 4)) == INFINITY)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v103 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
          v105 = *v103;
          v104 = v103[1];
          if (v104)
          {
            atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v104);
            v106 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
            v108 = *v106;
            v107 = v106[1];
            v109 = (*(v105 + 40) + 8 * v183);
            if (v107)
            {
              atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v107);
            }

            v105 = v108;
          }

          else
          {
            v109 = (*(v105 + 40) + 8 * v183);
          }

          v122 = (*(v105 + 40) + 8 * v80);
          *v122 = *v109;
          v122[1] = v109[1];
        }

        v208[v80 >> 6] |= 1 << v80;
LABEL_97:
        sub_24BCB7458(__p, 3uLL);
        sub_24BCD573C(*(a1 + 40), &v211, __p);
        for (j = 0; j != 12; j += 4)
        {
          HIDWORD(v203) = *sub_24BCB9024(*(a1 + 40) + 104, (__p[0] + j));
          v161 = sub_24BCB9024(*(a1 + 40) + 104, &v203 + 1);
          v162 = *(v161 + 16);
          if (v162 != -1)
          {
            v163 = v162 >> 6;
            v164 = 1 << v162;
            if ((v207[v162 >> 6] & (1 << v162)) == 0)
            {
              LODWORD(v203) = *(v161 + 16);
              sub_24BCA09A8(v209, &v203);
              v207[v163] |= v164;
            }
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v71 = *(&v210 + 1);
        if (*(&v210 + 1))
        {
          continue;
        }

        break;
      }
    }

    LOWORD(__p[0]) = 256;
    BYTE2(__p[0]) = 1;
    v192 = vdupq_n_s64(0xAuLL);
    v193 = 20;
    v194 = xmmword_24BFED210;
    v195 = -2.84809454e-306;
    v196 = -1;
    memset(v197, 0, sizeof(v197));
    v198 = 0;
    memset(v199, 0, sizeof(v199));
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0;
    v190 = 0;
    v211 = 0;
    v165 = sub_24BE01604(a1, __p, &v203 + 1, &v203, &v211, &v190, 0);
    if (v211)
    {
      v166 = v165;
    }

    else
    {
      v166 = 1;
    }

    *a2 = v166;
    if (*(&v201 + 1))
    {
      *&v202 = *(&v201 + 1);
      operator delete(*(&v201 + 1));
    }

    if (v200)
    {
      *(&v200 + 1) = v200;
      operator delete(v200);
    }

    v211 = v199 + 1;
    sub_24BCB7FC8(&v211);
    sub_24BDB9E30(v197, v167);
LABEL_113:
    if (v204[0])
    {
      v204[1] = v204[0];
      operator delete(v204[0]);
    }

    if (v205[0])
    {
      v205[1] = v205[0];
      operator delete(v205[0]);
    }

    if (v207)
    {
      operator delete(v207);
    }

    if (v208)
    {
      operator delete(v208);
    }

    sub_24BCA102C(v209);
  }

LABEL_122:
  v168 = *MEMORY[0x277D85DE8];
}

void sub_24BDFEA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_24BDB8814(&__p);
  v63 = v61[24];
  if (v63)
  {
    v61[25] = v63;
    operator delete(v63);
  }

  v64 = v61[27];
  if (v64)
  {
    v61[28] = v64;
    operator delete(v64);
  }

  v65 = v61[31];
  if (v65)
  {
    operator delete(v65);
  }

  v66 = v61[34];
  if (v66)
  {
    operator delete(v66);
  }

  sub_24BCA102C(&a61);
  _Unwind_Resume(a1);
}

__int128 *sub_24BDFEB14(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_24BC9EC78(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_24BDFEB80(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, char a5)
{
  v26 = a5;
  v8 = *(*(a1 + 40) + 160) - *(*(a1 + 40) + 152);
  sub_24BE00468(v25, *a3);
  if ((v8 & 0x3FFFFFFFCLL) != 0)
  {
    v9 = 0;
    v10 = (v8 >> 2);
    do
    {
      v11 = *(*a2 + 4 * v9);
      if (*a3 > v11)
      {
        v12 = v25[0] + 24 * v11;
        v14 = *(v12 + 8);
        v13 = *(v12 + 16);
        if (v14 >= v13)
        {
          v16 = (v14 - *v12) >> 2;
          if ((v16 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v17 = v13 - *v12;
          v18 = v17 >> 1;
          if (v17 >> 1 <= (v16 + 1))
          {
            v18 = v16 + 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            sub_24BC92E0C(v12, v19);
          }

          *(4 * v16) = v9;
          v15 = 4 * v16 + 4;
          v20 = *(v12 + 8) - *v12;
          v21 = (4 * v16 - v20);
          memcpy(v21, *v12, v20);
          v22 = *v12;
          *v12 = v21;
          *(v12 + 8) = v15;
          *(v12 + 16) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v14 = v9;
          v15 = (v14 + 1);
        }

        *(v12 + 8) = v15;
      }

      ++v9;
    }

    while (v10 != v9);
  }

  sub_24BCB801C((a1 + 256));
  for (i = v25[0]; i != v25[1]; i += 3)
  {
    if (i[1] != *i)
    {
      sub_24BD51FA4();
    }
  }

  v24 = v25;
  sub_24BC8EE84(&v24);
}

void sub_24BDFEDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12, uint64_t a13)
{
  __cxa_end_catch();
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  a11 = &a13;
  sub_24BC8EE84(&a11);
  _Unwind_Resume(a1);
}

void sub_24BDFEDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  if (a12)
  {
    sub_24BC9EC78();
  }

  a11 = &a13;
  sub_24BC8EE84(&a11);
  _Unwind_Resume(a1);
}

void sub_24BDFEE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, std::__shared_weak_count *a12, uint64_t a13)
{
  if (a10)
  {
    sub_24BC9EC78(a10);
  }

  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  a11 = &a13;
  sub_24BC8EE84(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_24BDFEE34(int **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 1;
  }

  v5 = *v2;
  v4 = v2 + 1;
  v3 = v5;
  do
  {
    v6 = *(v4 - 1);
    result = v6 == v3;
  }

  while (v6 == v3 && v4++ != v1);
  return result;
}

uint64_t sub_24BDFEE68(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v16 = a3;
  v17 = a2;
  v15 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  memset(v12, 0, sizeof(v12));
  sub_24BCA09A8(v14, &v17);
  sub_24BCA09A8(v12, &v16);
  v6 = *a4;
  v7 = *(a4 + 8) - *a4;
  if (v7 >= 1)
  {
    memset(*a4, 255, v7);
  }

  v6[v17] = 0;
  v6[v16] = 1;
  v11[0] = a1;
  v11[1] = a4;
  while (1)
  {
    while (*(&v15 + 1))
    {
      sub_24BDFEF94(v11, v14, 0);
      if (*(&v13 + 1))
      {
        goto LABEL_8;
      }
    }

    if (!*(&v13 + 1))
    {
      break;
    }

LABEL_8:
    sub_24BDFEF94(v11, v12, 1);
  }

  v8 = *a4;
  v9 = *(a4 + 8);
  while (v8 != v9)
  {
    if (*v8 == -1)
    {
      *v8 = 0;
    }

    ++v8;
  }

  sub_24BCA102C(v12);
  sub_24BCA102C(v14);
  return 1;
}

void sub_24BDFEF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_24BCA102C(va);
  sub_24BCA102C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDFEF94(uint64_t a1, int64x2_t *a2, int a3)
{
  v6 = *(*(a2->i64[1] + ((a2[2].i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (a2[2].i64[0] & 0x3FF));
  a2[2] = vaddq_s64(a2[2], xmmword_24BFED7D0);
  sub_24BD6FF8C(a2, 1);
  v7 = *a1;
  v18 = v6;
  v8 = *sub_24BCB9038(v7 + 104, &v18);
  v17 = v8;
  do
  {
    v17 = *(sub_24BCB9024(*a1 + 104, &v17) + 8);
    v9 = *a1;
    v10 = sub_24BCB9024(*a1 + 104, &v17);
    result = sub_24BC9ECE4(v9, *(v9 + 180), *v10);
    if ((v12 & *result) == 0)
    {
      v13 = *a1;
      v14 = sub_24BCB9024(*a1 + 104, &v17);
      result = sub_24BCB9024(v13 + 104, v14);
      v15 = *(result + 16);
      if (*(**(a1 + 8) + 4 * v15) == -1)
      {
        v16 = *(result + 16);
        result = sub_24BCA09A8(a2, &v16);
        *(**(a1 + 8) + 4 * v15) = a3;
      }
    }
  }

  while (v17 != v8);
  return result;
}

void sub_24BDFF0CC(void *a1, uint64_t *a2, unsigned int *a3, char a4, BOOL *a5)
{
  if (a1[14] >= 2uLL)
  {
    v8 = (*(a1[5] + 160) - *(a1[5] + 152)) >> 2;
    if (v8 <= 3)
    {
      sub_24BCA123C(&v36, v8);
      v9 = (*(a1[5] + 160) - *(a1[5] + 152)) >> 2;
      if (*(a1[5] + 160) != *(a1[5] + 152))
      {
        v10 = 0;
        v11 = v36;
        do
        {
          v11[v10] = v10;
          ++v10;
        }

        while (v9 > v10);
      }

      __p = v9;
      sub_24BDFEB80(a1, &v36, &__p, a2, a4);
      goto LABEL_44;
    }

    sub_24BCA123C(&v36, v8);
    sub_24BDFF4DC(a1, &v36);
    v14 = v36;
    if (v36 == v37)
    {
LABEL_11:
      sub_24BDE9898(a1[5]);
    }

    v15 = *v36;
    v16 = v36;
    while (*v16 == v15)
    {
      if (++v16 == v37)
      {
        goto LABEL_11;
      }
    }

    while (v14 != v37)
    {
      if (*v14 != v15)
      {
        v26 = a1[14];
        v32 = v26;
        if (*(a1[5] + 160) - *(a1[5] + 152) >= 0x4DuLL)
        {
          sub_24BDFF610(a1, &v32, &v36, a5);
        }

        __p = 0;
        v34 = 0;
        v35 = 0;
        sub_24BDFEB80(a1, &v36, &v32, &__p, a4);
        v27 = a1[4];
        if (!v27 || ((*(*v27 + 48))(v27) & 1) == 0)
        {
          LOBYTE(p_p) = 0;
          if (*a3 >= ((v37 - v36) >> 2))
          {
            sub_24BDE0B08(a1, a1 + 39, &v36, v26, &p_p);
            if (p_p)
            {
              v28 = __p;
              for (i = v34; i != v28; i -= 2)
              {
                v30 = *(i - 1);
                if (v30)
                {
                  sub_24BC9EC78(v30);
                }
              }

              v34 = v28;
              sub_24BDFEB80(a1, &v36, &v32, &__p, a4);
            }
          }

          sub_24BCB801C(a1 + 32);
          *a5 |= p_p;
          if (&__p != a2)
          {
            sub_24BE0050C(a2, __p, v34, (v34 - __p) >> 4);
          }
        }

        p_p = &__p;
        sub_24BCB7FC8(&p_p);
        goto LABEL_44;
      }

      v14 += 4;
    }

    sub_24BC95764(&__p, (*(a1[5] + 160) - *(a1[5] + 152)) >> 2);
    v17 = a1[5];
    if (*(v17 + 160) != *(v17 + 152))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = -1;
      while (1)
      {
        LODWORD(p_p) = v19;
        v22 = sub_24BC96B00(v17, &p_p);
        v23 = __p;
        *(__p + v18) = v22;
        if (!v19)
        {
          break;
        }

        v24 = *(v23 + v18);
        if (v24 <= *(v23 + v20))
        {
          if (v21 != -1 && v24 <= *(v23 + v21))
          {
            break;
          }

          v25 = v20;
          v21 = v19;
        }

        else
        {
          v25 = v19;
          v21 = v20;
        }

LABEL_24:
        v18 = (v19 + 1);
        v17 = a1[5];
        v19 = v18;
        v20 = v25;
        if (v18 >= (*(v17 + 160) - *(v17 + 152)) >> 2)
        {
          goto LABEL_38;
        }
      }

      v25 = v20;
      goto LABEL_24;
    }

    LODWORD(v25) = 0;
    v31 = 0;
    v23 = __p;
    v21 = -1;
    if (__p)
    {
LABEL_38:
      v34 = v23;
      operator delete(v23);
      v17 = a1[5];
      v31 = v25;
    }

    sub_24BDFEE68(v17, v31, v21, &v36);
    __p = 2;
    sub_24BDFEB80(a1, &v36, &__p, a2, a4);
    *a5 = 0;
LABEL_44:
    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }
}

void sub_24BDFF478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDFF4DC(void *a1, uint64_t *a2)
{
  v4 = a1[5];
  v5 = v4[20] - v4[19];
  v7 = v4[13];
  v6 = v4[14];
  sub_24BCB2008(&__p, 3uLL);
  if ((v5 & 0x3FFFFFFFCLL) != 0)
  {
    v8 = 0;
    v9 = (v6 - v7) >> 2;
    v10 = (v5 >> 2);
    do
    {
      v11 = a1[5];
      v21 = v8;
      sub_24BCD567C(v11, &v21, &__p);
      v12 = *a2;
      *(*a2 + 4 * v8) = -1;
      v13 = a1[14];
      if (v13)
      {
        LODWORD(v14) = 0;
        v15 = __p;
        v16 = v23;
        v17 = 3.4028e38;
        do
        {
          if (v15 == v16)
          {
            v18 = 0.0;
          }

          else
          {
            v18 = 0.0;
            v19 = v15;
            do
            {
              v20 = *v19++;
              v18 = v18 + *(a1[39] + 4 * (v20 + v14 * v9));
            }

            while (v19 != v16);
          }

          if (v18 < v17)
          {
            *(v12 + 4 * v8) = v14;
            v17 = v18;
          }

          v14 = (v14 + 1);
        }

        while (v13 > v14);
      }

      ++v8;
    }

    while (v8 != v10);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void sub_24BDFF5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDFF610(uint64_t a1, unint64_t *a2, uint64_t *a3, BOOL *a4)
{
  v34 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  sub_24BDFF9B8(v32, *a2);
  sub_24BE009B4(v31, *a2);
  if (*a2)
  {
    operator new();
  }

  v8 = *(*(a1 + 40) + 160) - *(*(a1 + 40) + 152);
  v9 = v8 >> 2;
  if ((v8 >> 2))
  {
    v10 = *a3;
    v11 = v31[0];
    v12 = (v8 >> 2);
    do
    {
      v13 = *v10++;
      --**(v11 + 16 * v13);
      --v12;
    }

    while (v12);
  }

  sub_24BCA0430(v30, 0);
  if (*a2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      sub_24BCB8D20(&v30[0][v15], -**(v31[0] + v14));
      ++v16;
      v15 += 3;
      v14 += 16;
    }

    while (v16 < *a2);
  }

  LODWORD(v28) = 0;
  if (v9)
  {
    v17 = 0;
    do
    {
      sub_24BC97D60(&v30[0][3 * *(*a3 + 4 * v17)], &v28);
      v17 = v28 + 1;
      LODWORD(v28) = v17;
    }

    while (v17 < v9);
  }

  while (v34)
  {
    sub_24BE007B4(v32, 0, &v28);
    v18 = v30[0][3 * *(v28 + 1)];
    v19 = v30[0][3 * *(v28 + 1) + 1];
    v20 = (v19 - v18) >> 2;
    if (v20 >= 5 && v19 != v18)
    {
      v22 = 0;
      do
      {
        v27 = *&v18[4 * v22];
        v23 = v27;
        sub_24BDFFA98(a1, &v27, a3);
        v24 = *(v28 + 1);
        if (*(*a3 + 4 * v23) != v24 && --v20 < 5)
        {
          break;
        }

        ++v22;
        v25 = &v30[0][3 * v24];
        v18 = *v25;
      }

      while (v22 < (v25[1] - *v25) >> 2);
    }

    if (v29)
    {
      sub_24BC9EC78(v29);
    }
  }

  sub_24BDFFDB8(a1, a2, a3, a4);
  v28 = v30;
  sub_24BC8EE84(&v28);
  v30[0] = v31;
  sub_24BCB7FC8(v30);
  return sub_24BE00704(v32);
}

void sub_24BDFF938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void **);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  va_copy(v3, va1);
  sub_24BC8EE84(va);
  va_copy(v6, va2);
  sub_24BCB7FC8(va1);
  sub_24BE00704(va3);
  _Unwind_Resume(a1);
}

void sub_24BDFF9D4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BDFF9CCLL);
}

uint64_t sub_24BDFF9E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (v5 >= (*(a1 + 8) - *a1) >> 4)
  {
    sub_24BCB820C(a1, a2);
  }

  else
  {
    v6 = (*a1 + 16 * v5);
    v7 = *(a2 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v6[1];
    *v6 = v2;
    v6[1] = v7;
    if (v8)
    {
      sub_24BC9EC78(v8);
    }
  }

  v10 = *(a1 + 32);
  *(*a2 + 8) = v10;
  *(a1 + 32) = v10 + 1;
  sub_24BE00940(a1, v10);
  return 1;
}

void sub_24BDFFA88(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BDFFA78);
}

void sub_24BDFFA98(uint64_t a1, unsigned int *a2, void *a3)
{
  __p[5] = *MEMORY[0x277D85DE8];
  v6 = *(*a3 + 4 * *a2);
  sub_24BCB7458(__p, 3uLL);
  sub_24BCD573C(*(a1 + 40), a2, __p);
  v7 = 0;
  v8 = 0;
  do
  {
    v38 = *(__p[0] + v7);
    v37 = *sub_24BCB9024(*(a1 + 40) + 104, &v38);
    v9 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), v37);
    if ((*v9 & v10) != 0)
    {
      *(&__p[3] + v7 + 4) = v6;
    }

    else
    {
      v11 = *(*a3 + 4 * *(sub_24BCB9024(*(a1 + 40) + 104, &v37) + 16));
      *(&__p[3] + v7 + 4) = v11;
      if (v11 != v6)
      {
        ++v8;
      }
    }

    v7 += 4;
  }

  while (v7 != 12);
  if (v8 == 3)
  {
    v17 = 0;
    for (i = 1; i != 3; ++i)
    {
      v28 = (*(*(a1 + 40) + 32) + 16 * *(a1 + 200));
      v30 = *v28;
      v29 = v28[1];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v29);
        v31 = (*(*(a1 + 40) + 32) + 16 * *(a1 + 200));
        v33 = *v31;
        v32 = v31[1];
        v34 = __p[0];
        v35 = *(*(v30 + 40) + 4 * *(__p[0] + v17));
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v32);
          v34 = __p[0];
        }

        v30 = v33;
      }

      else
      {
        v34 = __p[0];
        v35 = *(*(v30 + 40) + 4 * *(__p[0] + v17));
      }

      if (v35 < *(*(v30 + 40) + 4 * v34[i]))
      {
        v17 = i;
      }
    }

LABEL_38:
    v14 = *(&__p[3] + v17 + 1);
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_40;
    }

    v12 = 0;
    v13 = -1;
    while (1)
    {
      v14 = *(&__p[3] + v12 + 1);
      if (v14 != v6)
      {
        v15 = v12 == 2 ? 0 : v12 + 1;
        if (v14 == *(&__p[3] + v15 + 1))
        {
          break;
        }

        v16 = v13;
        if (!v12)
        {
          v16 = 2;
        }

        if (v14 == *(&__p[3] + v16 + 1))
        {
          break;
        }
      }

      ++v12;
      ++v13;
      if (v12 == 3)
      {
        v17 = 0;
        for (j = 1; j != 3; ++j)
        {
          v19 = (*(*(a1 + 40) + 32) + 16 * *(a1 + 200));
          v21 = *v19;
          v20 = v19[1];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v20);
            v22 = (*(*(a1 + 40) + 32) + 16 * *(a1 + 200));
            v24 = *v22;
            v23 = v22[1];
            v25 = __p[0];
            v26 = *(*(v21 + 40) + 4 * *(__p[0] + v17));
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v23);
              v25 = __p[0];
            }

            v21 = v24;
          }

          else
          {
            v25 = __p[0];
            v26 = *(*(v21 + 40) + 4 * *(__p[0] + v17));
          }

          if (v26 < *(*(v21 + 40) + 4 * v25[j]))
          {
            v17 = j;
          }
        }

        goto LABEL_38;
      }
    }
  }

  *(*a3 + 4 * *a2) = v14;
LABEL_40:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_24BDFFD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDFFDB8(uint64_t a1, unint64_t *a2, uint64_t *a3, BOOL *a4)
{
  v8 = 0;
  v9 = 0;
  v12 = 0;
  *a4 = 0;
  while (1)
  {
    v11 = 0;
    if (v8)
    {
      break;
    }

    sub_24BDFFE60(a1, a2, a3, &v11, &v12);
    v8 = v12;
    v10 = v11;
    *a4 = v12;
    if (v8)
    {
      if ((v10 & 1) == 0)
      {
        return;
      }
    }

    else if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 += 2;
    if (v9 >= *a2)
    {
LABEL_8:
      v8 = 0;
      break;
    }
  }

  *a4 = v8;
}

void sub_24BDFFE60(uint64_t a1, unint64_t *a2, uint64_t *a3, _BYTE *a4, BOOL *a5)
{
  v10 = 0;
  v11 = 0;
  *a4 = 0;
  do
  {
    v12 = *(*(a1 + 40) + 112) - *(*(a1 + 40) + 104);
    v13 = (v12 >> 2);
    if ((v12 >> 2))
    {
      v14 = 0;
      LOBYTE(v15) = 0;
      do
      {
        v18 = 0;
        v17 = v14;
        sub_24BDFFF50(a1, &v17, a3, &v18);
        v15 = (v18 | v15) != 0;
        ++v14;
      }

      while (v13 != v14);
      v10 = *a4;
    }

    else
    {
      v15 = 0;
    }

    ++v11;
    v10 |= v15;
    *a4 = v10;
    v16 = *a2;
  }

  while (v15 && v11 <= v16);
  *a5 = v11 <= v16;
}

void sub_24BDFFF50(uint64_t a1, unsigned int *a2, uint64_t *a3, _BYTE *a4)
{
  *a4 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  sub_24BCB9454(v38, (*(a1 + 40) + 104), a2);
  for (i = sub_24BCB947C(v38); ; i = sub_24BCB947C(v38))
  {
    v37 = i;
    if (i == -1)
    {
      break;
    }

    v8 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), i);
    if ((*v8 & v9) == 0)
    {
      v10 = sub_24BCB9024(*(a1 + 40) + 104, &v37);
      sub_24BCB4670(&v39, (v10 + 16));
    }
  }

  v11 = v39;
  v12 = v40;
  if (v40 == v39)
  {
    goto LABEL_39;
  }

  v13 = v40 - v39;
  if (v13 > 1)
  {
    v14 = *(*a3 + 4 * *v39);
    v15 = *(*a3 + 4 * v39[1]);
    if (v14 != v15)
    {
      goto LABEL_15;
    }

    v16 = 2;
    while (1)
    {
      v17 = v16;
      if (v13 == v16)
      {
        break;
      }

      v15 = *(*a3 + 4 * v39[v16++]);
      if (v14 != v15)
      {
        goto LABEL_14;
      }
    }

    v15 = *(*a3 + 4 * *v39);
LABEL_14:
    if (v17 < v13)
    {
LABEL_15:
      v18 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      __p = 0;
      v29 = 0;
      v30 = 0;
      while (2)
      {
        v27 = v11[v18];
        v19 = *(*a3 + 4 * v27);
        v26 = v19;
        for (j = v34; j != v35; ++j)
        {
          if (*j == v19)
          {
            ++v18;
            goto LABEL_31;
          }
        }

        sub_24BC97D60(&v34, &v26);
        v29 = __p;
        sub_24BCB4670(&__p, &v27);
        v32 = v31;
        ++v18;
        v22 = v39;
        v21 = v40;
        if (v18 < v40 - v39)
        {
          v23 = v18;
          do
          {
            v25 = v22[v23];
            if (*(*a3 + 4 * v25) == v26)
            {
              sub_24BCB4670(&v31, &v25);
              v22 = v39;
              v21 = v40;
            }

            ++v23;
          }

          while (v23 < v21 - v22);
          if (v31 != v32)
          {
            sub_24BE00254(a1, &v31, &__p);
            if (v31 != v32)
            {
              sub_24BE003F0(v24, a3, &v31, &__p, v26, v14, v15);
              *a4 = 1;
            }
          }
        }

        if (*a4)
        {
          break;
        }

        v11 = v39;
        v12 = v40;
LABEL_31:
        if (v18 < v12 - v11)
        {
          continue;
        }

        break;
      }

      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      v11 = v39;
    }

LABEL_39:
    if (!v11)
    {
      return;
    }
  }

  v40 = v11;
  operator delete(v11);
}

void sub_24BE001F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  v21 = *(v19 - 88);
  if (v21)
  {
    *(v19 - 80) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE00254(uint64_t a1, char **a2, uint64_t *a3)
{
  v3 = *a3;
  if (a3[1] != *a3)
  {
    v7 = 0;
    do
    {
      if (*a2 == a2[1])
      {
        break;
      }

      v22 = *(v3 + 4 * v7);
      sub_24BCB7458(__p, 3uLL);
      sub_24BCD573C(*(a1 + 40), &v22, __p);
      for (i = 0; i != 3; ++i)
      {
        v9 = *(a1 + 40);
        v10 = sub_24BCB9024(v9 + 104, __p[0] + i);
        v11 = sub_24BC9ECE4(v9, *(v9 + 180), *v10);
        if ((*v11 & v12) == 0)
        {
          v13 = *(a1 + 40);
          v14 = sub_24BCB9024(v13 + 104, __p[0] + i);
          v15 = *(sub_24BCB9024(v13 + 104, v14) + 16);
          v20 = v15;
          v17 = *a2;
          v16 = a2[1];
          if (*a2 != v16)
          {
            while (*v17 != v15)
            {
              v17 += 4;
              if (v17 == v16)
              {
                goto LABEL_14;
              }
            }
          }

          if (v17 != v16)
          {
            sub_24BCB4670(a3, &v20);
            v18 = a2[1];
            v19 = v18 - (v17 + 4);
            if (v18 != v17 + 4)
            {
              memmove(v17, v17 + 4, v18 - (v17 + 4));
            }

            a2[1] = &v17[v19];
          }
        }

LABEL_14:
        ;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v7;
      v3 = *a3;
    }

    while (v7 < (a3[1] - *a3) >> 2);
  }
}

void sub_24BE003C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE003F0(uint64_t a1, uint64_t *a2, unsigned int **a3, unsigned int **a4, int a5, int a6, int a7)
{
  if (a6 != a5)
  {
    a7 = a6;
  }

  v8 = *a3;
  v9 = a3[1];
  v10 = v9 - *a3;
  v11 = *a4;
  v12 = a4[1];
  v13 = v12 - *a4;
  if (v10 <= v13 >> 2)
  {
    if (v9 != v8)
    {
      v17 = *a2;
      if (v10 <= 1)
      {
        v10 = 1;
      }

      do
      {
        v18 = *v8++;
        *(v17 + 4 * v18) = a7;
        --v10;
      }

      while (v10);
    }
  }

  else if (v12 != v11)
  {
    v14 = v13 >> 2;
    v15 = *a2;
    if ((v13 >> 2) <= 1)
    {
      v14 = 1;
    }

    do
    {
      v16 = *v11++;
      *(v15 + 4 * v16) = a7;
      --v14;
    }

    while (v14);
  }
}

void *sub_24BE00468(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

void sub_24BE0050C(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_24BE0064C(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_24BCC95E0(a1, v11);
    }

    sub_24BC8E01C();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_24BE0068C(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_24BC9EC78(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_24BE0068C(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_24BDF8CD8(a1, (a2 + v12), a3, a1[1]);
  }
}

void sub_24BE0064C(uint64_t *a1)
{
  if (*a1)
  {
    sub_24BCB801C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_24BE0068C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_24BC9EC78(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_24BE00704(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    while (*(a1 + 32))
    {
      sub_24BE00760(a1);
    }
  }

  v3 = a1;
  sub_24BCB7FC8(&v3);
  return a1;
}

uint64_t sub_24BE00760(uint64_t *a1)
{
  sub_24BE007B4(a1, 0, &v3);
  if (v3)
  {
    v1 = *(v3 + 4);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    sub_24BC9EC78(v4);
  }

  return v1;
}

void sub_24BE007B4(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[4];
  if (v4 <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = v4 - 1;
    v7 = *a1;
    if (v6 == a2)
    {
      v8 = *(v7 + 16 * a2);
      v9 = v8;
    }

    else
    {
      v10 = *(v7 + 16 * a2);
      *(v7 + 16 * a2) = *(v7 + 16 * v6);
      *(v7 + 16 * v6) = v10;
      v11 = *a1;
      v8 = *(*a1 + 16 * a2);
      *(v8 + 8) = a2;
      v9 = *(v11 + 16 * v6);
      *(v9 + 8) = v6;
    }

    a1[4] = v6;
    *(v9 + 8) = -1;
    if (*v8 >= *v9)
    {
      sub_24BE00940(a1, a2);
    }

    else
    {
      sub_24BE00888(a1, a2);
    }

    v12 = *(*a1 + 16 * a1[4]);
    *a3 = v12;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }
}

__n128 sub_24BE00888(uint64_t *a1, unint64_t a2)
{
  v2 = a1[4];
  if (v2 > a2)
  {
    v3 = *a1;
    v4 = *(*a1 + 16 * a2);
    v5 = a2;
    do
    {
      v6 = (2 * a2) | 1;
      v7 = *v4;
      if (v6 < v2)
      {
        v8 = **(v3 + 16 * v6);
        v5 = v8 <= v7 ? a2 : (2 * a2) | 1;
        if (v8 > v7)
        {
          v7 = **(v3 + 16 * v6);
        }
      }

      v9 = 2 * a2 + 2;
      if (v9 < v2 && **(v3 + 16 * v9) > v7)
      {
        v5 = 2 * a2 + 2;
      }

      if (v5 == a2)
      {
        break;
      }

      v10 = (v3 + 16 * v5);
      v11 = *(v3 + 16 * a2 + 8);
      result = *v10;
      *(v3 + 16 * a2) = *v10;
      v10->n128_u64[0] = v4;
      v10->n128_u64[1] = v11;
      v3 = *a1;
      *(*(*a1 + 16 * a2) + 8) = a2;
      v4 = *(v3 + 16 * v5);
      *(v4 + 8) = v5;
      a2 = v5;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t *sub_24BE00940(uint64_t *result, unint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    do
    {
      v3 = a2 - 1;
      v4 = (a2 - 1) >> 1;
      v5 = (v2 + 16 * a2);
      v6 = *v5;
      v7 = v2 + 16 * v4;
      if (**v5 <= **v7)
      {
        break;
      }

      if (a2 != v4)
      {
        v8 = v5[1];
        v9 = *(v7 + 8);
        *v5 = *v7;
        v5[1] = v9;
        *v7 = v6;
        *(v7 + 8) = v8;
        v2 = *result;
        *(*(*result + 16 * a2) + 8) = a2;
        *(*(v2 + 16 * v4) + 8) = v4;
      }

      a2 = (a2 - 1) >> 1;
    }

    while (v3 > 1);
  }

  return result;
}

void *sub_24BE009B4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCC95E0(result, a2);
  }

  return result;
}

void sub_24BE00A54(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BE00AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = v6[14] - v6[13];
  v8 = (v6[10] + 16 * *(a1 + 192));
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v9);
  }

  if ((v7 & 0x3FFFFFFFCLL) != 0)
  {
    v11 = *(v10 + 40);
    v12 = *(a2 + 44);
    v13 = (v7 >> 2);
    v14 = *(a2 + 52);
    do
    {
      v12 = vbsl_s8(vcgt_f32(v12, *v11), *v11, v12);
      *(a2 + 44) = v12;
      v15 = *v11++;
      v14 = vbsl_s8(vcgt_f32(v15, v14), v15, v14);
      *(a2 + 52) = v14;
      --v13;
    }

    while (v13);
  }

  *(a2 + 168) = *(a2 + 160);
  *(a2 + 144) = *(a2 + 136);
  sub_24BCB801C((a2 + 112));
  sub_24BC8CAB0((a2 + 160), (*(*(a1 + 40) + 160) - *(*(a1 + 40) + 152)) >> 2);
  sub_24BC8CAB0((a2 + 136), (v7 >> 2));
  sub_24BDF6150(a2 + 112, (v7 >> 2));
  if ((v7 >> 2))
  {
    operator new();
  }

  sub_24BE243D0(*(a1 + 40));
  *(a2 + 4) = v16;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 8) = 953267991;
  v17 = **(a1 + 56) * 0.2;
  *(a2 + 40) = v17;
  v18 = *(a1 + 64);
  *a2 = v18;
  sub_24BE00CE4(*(a1 + 40), v10, (a2 + 160), v18, (a1 + 68));
}

void sub_24BE00CE4(uint64_t a1, uint64_t a2, void *a3, int a4, unsigned int *a5)
{
  v6 = ((*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BC8CAB0(a3, v6);
  v25 = 0;
  sub_24BC836D4(__p, "f:area");
  v26 = 0;
  v7 = sub_24BDBA62C((a1 + 56), &v26, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BCB2008(__p, 3uLL);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 4 * v6;
    do
    {
      v26 = v8;
      sub_24BCD567C(a1, &v26, __p);
      v11 = *(a2 + 40);
      v12 = *__p[0];
      v13 = *(__p[0] + 1);
      v14 = *(__p[0] + 2);
      v15 = (*(a1 + 56) + 16 * v7);
      v17 = *v15;
      v16 = v15[1];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v16);
      }

      sub_24BE01DA0(a1, &v26, (v11 + 8 * v12), (v11 + 8 * v13), (v11 + 8 * v14), (*(v17 + 40) + v9), &v25, a4, a5);
      *(*a3 + v9) = v18;
      v9 += 4;
      ++v8;
    }

    while (v10 != v9);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BE00E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BE00E80(uint64_t a1, unsigned int *a2, void *a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = *(a1 + 40);
  sub_24BCB9454(v18, (v4 + 104), a2);
  v5 = sub_24BCB947C(v18);
  v17 = v5;
  if (v5 == -1)
  {
    return 0.0;
  }

  do
  {
    v6 = sub_24BC9ECE4(v4, *(v4 + 180), v5);
    if ((*v6 & v7) == 0)
    {
      v8 = sub_24BCB9024(v4 + 104, &v17);
      sub_24BCB4670(&v14, (v8 + 16));
    }

    v5 = sub_24BCB947C(v18);
    v17 = v5;
  }

  while (v5 != -1);
  if (v15 == v14)
  {
    v10 = 0.0;
    if (!v14)
    {
      return v10;
    }

LABEL_12:
    v15 = v14;
    operator delete(v14);
    return v10;
  }

  v9 = 0;
  v10 = 0.0;
  v11 = 1;
  while (fabsf(v10 + -3.4028e38) >= 0.00000001)
  {
    v10 = v10 + *(*a3 + 4 * v14[v9]);
    v9 = v11;
    if (v15 - v14 <= v11++)
    {
      goto LABEL_12;
    }
  }

  v10 = 3.4028e38;
  if (v14)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_24BE00FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE00FD4(uint64_t a1, uint64_t a2, BOOL *a3, __n128 a4)
{
  v7 = *(*(a1 + 40) + 112) - *(*(a1 + 40) + 104);
  v8 = (v7 >> 2);
  v9 = v7 & 0x3FFFFFFFCLL;
  if ((v7 & 0x3FFFFFFFCLL) != 0)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      a4.n128_u32[0] = *(*(a2 + 136) + 4 * v11);
      v12 = *(*(a2 + 112) + v10);
      *v12 = a4.n128_u32[0];
      v12[1] = v11++;
      v10 += 16;
    }

    while (v8 != v11);
  }

  v13 = 0;
  v14 = *(a2 + 64);
  *(a2 + 1) = 0;
  while (1)
  {
    if (v9)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        a4.n128_u32[0] = *(*(a2 + 136) + 4 * v16);
        if (a4.n128_f32[0] >= 3.4028e38)
        {
          v17 = *(a2 + 112);
          v18 = *(v17 + v15);
          if (*(v18 + 8) == -1)
          {
            v19 = *(v17 + v15 + 8);
            *&v26 = v18;
            *(&v26 + 1) = v19;
            if (v19)
            {
              atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
            }

            sub_24BE011AC(a2 + 72, &v26);
            if (*(&v26 + 1))
            {
              sub_24BC9EC78(*(&v26 + 1));
            }
          }
        }

        ++v16;
        v15 += 16;
      }

      while (v8 != v16);
    }

    sub_24BE01260(a1, a2, a4);
    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 48))(result);
      if (result)
      {
        return result;
      }
    }

    v21 = 0;
    if (v9)
    {
      v22 = *(a2 + 136);
      v23 = v8;
      do
      {
        v24 = *v22++;
        a4.n128_f32[0] = v24;
        if (v24 >= 3.4028e38)
        {
          ++v21;
        }

        --v23;
      }

      while (v23);
    }

    if (*(a2 + 64) <= v21)
    {
      v21 = *(a2 + 64);
LABEL_29:
      *a3 = v21 < v14;
      return result;
    }

    *(a2 + 64) = v21;
    if (v21)
    {
      v25 = ++v13 >= *(a2 + 16);
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_29;
    }
  }
}

void sub_24BE01194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BC9EC78(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE011AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (v5 >= (*(a1 + 8) - *a1) >> 4)
  {
    sub_24BCB820C(a1, a2);
  }

  else
  {
    v6 = (*a1 + 16 * v5);
    v7 = *(a2 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v6[1];
    *v6 = v2;
    v6[1] = v7;
    if (v8)
    {
      sub_24BC9EC78(v8);
    }
  }

  v10 = *(a1 + 32);
  *(*a2 + 8) = v10;
  *(a1 + 32) = v10 + 1;
  sub_24BDBA07C(a1, v10);
  return 1;
}

void sub_24BE01250(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BE01240);
}

void sub_24BE01260(uint64_t a1, uint64_t a2, __n128 a3)
{
  while (*(a2 + 104))
  {
    v5 = *(a1 + 32);
    if (v5 && ((*(*v5 + 48))(v5) & 1) != 0)
    {
      break;
    }

    sub_24BDB9EE0((a2 + 72), 0, &v15, a3);
    a3.n128_u32[0] = *v15;
    if (*v15 >= *(a2 + 40))
    {
      v14 = v15[1];
      if ((*(a2 + 2) & 1) != 0 || !sub_24BCD93B0(*(a1 + 40), &v14))
      {
        v13 = 0;
        sub_24BE01E98(a1, &v14, a2, &v13);
        if (v13 == 1)
        {
          **(*(a2 + 112) + 16 * v14) = *(*(a2 + 136) + 4 * v14);
          sub_24BCB8F94(v12, (*(a1 + 40) + 104), &v14);
          for (i = sub_24BCB8FBC(v12); i != -1; i = sub_24BCB8FBC(v12))
          {
            v7 = (*(a2 + 112) + 16 * i);
            v8 = *v7;
            if (*(*v7 + 8) == -1)
            {
              *v8 = *(*(a2 + 136) + 4 * i);
            }

            else
            {
              v9 = v7[1];
              v10 = v8;
              v11 = v9;
              if (v9)
              {
                atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              a3.n128_u32[0] = *(*(a2 + 136) + 4 * i);
              sub_24BDFBE18((a2 + 72), &v10, a3);
              if (v11)
              {
                sub_24BC9EC78(v11);
              }
            }
          }
        }
      }
    }

    if (v16)
    {
      sub_24BC9EC78(v16);
    }
  }
}

void sub_24BE013F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_24BC9EC78(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE01434(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a1 + 40);
  v6 = v5[14] - v5[13];
  v7 = v5[20] - v5[19];
  v8 = (v6 >> 2);
  v9 = v6 & 0x3FFFFFFFCLL;
  if ((v6 & 0x3FFFFFFFCLL) != 0)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      a3.n128_u32[0] = *(*(a2 + 136) + 4 * v11);
      v12 = *(*(a2 + 112) + v10);
      *v12 = a3.n128_u32[0];
      v12[1] = v11++;
      v10 += 16;
    }

    while (v8 != v11);
  }

  v13 = 0;
  v14 = v7 & 0x3FFFFFFFCLL;
  v15 = (v7 >> 2);
  do
  {
    if (v9)
    {
      v16 = 0;
      do
      {
        v17 = *(*(a2 + 112) + 16 * v16);
        v25 = v17;
        if (*(&v17 + 1))
        {
          atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        sub_24BE011AC(a2 + 72, &v25);
        if (*(&v25 + 1))
        {
          sub_24BC9EC78(*(&v25 + 1));
        }

        ++v16;
      }

      while (v8 != v16);
    }

    sub_24BE01260(a1, a2, a3);
    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 48))(result);
      if (result)
      {
        break;
      }
    }

    v19 = 0;
    if (v14)
    {
      v20 = *(a2 + 160);
      a3.n128_u32[0] = -8388609;
      v21 = v15;
      do
      {
        v22 = *v20++;
        v23 = v22;
        if (a3.n128_f32[0] < v22)
        {
          a3.n128_f32[0] = v23;
        }

        if (v23 >= 3.4028e38)
        {
          ++v19;
        }

        --v21;
      }

      while (v21);
    }

    else
    {
      a3.n128_u32[0] = -8388609;
    }

    if ((*(a2 + 60) - a3.n128_f32[0]) < 0.00004 && *(a2 + 64) <= v19)
    {
      break;
    }

    *(a2 + 60) = a3.n128_u32[0];
    *(a2 + 64) = v19;
    ++v13;
  }

  while (v13 < *(a2 + 16));
  return result;
}

void sub_24BE015EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BC9EC78(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BE01604(uint64_t a1, uint64_t a2, float *a3, float *a4, unint64_t *a5, float *a6, int a7)
{
  sub_24BE00AB0(a1, a2, 10, 10);
  v14.n128_u32[0] = 1036831949;
  v15.n128_u32[0] = 1028443341;
  if (a7)
  {
    v16 = 0.05;
  }

  else
  {
    v16 = 0.1;
  }

  v17 = *(a2 + 160);
  v18 = *(a2 + 168);
  if (v17 == v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0;
    v14.n128_u32[0] = 2139095039;
    do
    {
      v20 = *v17++;
      v15.n128_f32[0] = v20;
      if (v20 >= 3.4028e38)
      {
        ++v19;
      }
    }

    while (v17 != v18);
  }

  *a5 = v19;
  v21 = *(a1 + 32);
  if (v21)
  {
    if ((*(*v21 + 48))(v21, v14, v15))
    {
      return 0;
    }

    v19 = *a5;
  }

  if (v19 > 0x1F3 || (v16 * ((*(*(a1 + 40) + 160) - *(*(a1 + 40) + 152)) >> 2)) <= v19)
  {
    result = 0;
    *a3 = 3.4028e38;
    return result;
  }

  *(a2 + 1) = 0;
  v14.n128_f32[0] = v19;
  sub_24BE00FD4(a1, a2, &v32, v14);
  v22 = *(a1 + 32);
  if (v22 && ((*(*v22 + 48))(v22) & 1) != 0)
  {
    return 0;
  }

  if (!*(a2 + 64))
  {
    sub_24BE00AB0(a1, a2, 10, 10);
    *(a2 + 1) = 1;
    sub_24BE01434(a1, a2, v28);
    v29 = *(a1 + 32);
    if (v29)
    {
      if ((*(*v29 + 48))(v29))
      {
        return 0;
      }
    }
  }

  v31 = 0;
  sub_24BDEF1D8(a2 + 160, a3, a4, &v31);
  v23 = *(a2 + 160);
  v24 = *(a2 + 168);
  if (v23 == v24)
  {
    *a5 = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v26 = *v23++;
      if (v26 >= 3.4028e38)
      {
        ++v25;
      }
    }

    while (v23 != v24);
    *a5 = v25;
    if (v25)
    {
      return 0;
    }
  }

  v30 = sub_24BDEF898(*(a1 + 40), (a2 + 160));
  *a6 = v30;
  if (v30 > (**(a1 + 48) * 1.0e-16))
  {
    return 0;
  }

  return *a3 <= **(a1 + 56);
}

BOOL sub_24BE01878(uint64_t a1)
{
  v6 = 256;
  v7 = 1;
  v8 = vdupq_n_s64(0xAuLL);
  v9 = 20;
  v10 = xmmword_24BFED210;
  v11 = -2.84809454e-306;
  v12 = -1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = 0;
  v19 = 0;
  v1 = sub_24BE01604(a1, &v6, &v5 + 1, &v5, &v19, &v4, 0);
  if (*(&v17 + 1))
  {
    *&v18 = *(&v17 + 1);
    operator delete(*(&v17 + 1));
  }

  if (v16)
  {
    *(&v16 + 1) = v16;
    operator delete(v16);
  }

  v19 = v15 + 1;
  sub_24BCB7FC8(&v19);
  sub_24BDB9E30(v13, v2);
  return v1;
}

void sub_24BE0196C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BDB8814(va);
  _Unwind_Resume(a1);
}

void sub_24BE01980(uint64_t a1, unsigned int *a2, float *a3, float *a4, float *a5, float *a6, float *a7)
{
  *a7 = (((*a4 - *a3) * (a5[1] - a3[1])) - ((a4[1] - a3[1]) * (*a5 - *a3))) * 0.5;
  v13 = sub_24BCB9038(a1 + 104, a2);
  v14 = sub_24BCB9024(a1 + 104, v13);
  v15 = sub_24BCB9024(a1 + 104, v14);
  v16 = sub_24BCB9038(a1 + 104, a2);
  v17 = sub_24BCB9024(a1 + 104, v16);
  v18 = sub_24BCB9024(a1 + 104, (v17 + 8));
  v19 = sub_24BCB9024(a1 + 104, v18);
  v20 = sub_24BCB9038(a1 + 104, a2);
  v21 = sub_24BCB9024(a1 + 104, v20);
  v22 = *(a1 + 176);
  v23 = *(v15 + 12);
  v24 = *(a1 + 8);
  v25 = (v24 + 16 * v22);
  v27 = *v25;
  v26 = v25[1];
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v26);
    v22 = *(a1 + 176);
    v24 = *(a1 + 8);
    v28 = (v24 + 16 * v22);
    v30 = *v28;
    v29 = v28[1];
    v39 = *(*(v27 + 40) + 16 * v23);
    v31 = *(v19 + 12);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v29);
      v22 = *(a1 + 176);
      v24 = *(a1 + 8);
    }

    v27 = v30;
  }

  else
  {
    v39 = *(*(v27 + 40) + 16 * v23);
    v31 = *(v19 + 12);
  }

  v38 = *(*(v27 + 40) + 16 * v31);
  v32 = *(v21 + 12);
  v33 = (v24 + 16 * v22);
  v35 = *v33;
  v34 = v33[1];
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v34);
  }

  v37 = *(*(v35 + 40) + 16 * v32);
  sub_24BDEFBF0(&v39, &v38, &v37, a3, a4, a5, a6, a7);
}

void sub_24BE01B60(uint64_t a1, unsigned int *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8)
{
  v47[1] = *MEMORY[0x277D85DE8];
  *a7 = (((*a4 - *a3) * (a5[1] - a3[1])) - ((a4[1] - a3[1]) * (*a5 - *a3))) * 0.5;
  v14 = sub_24BCB9038(a1 + 104, a2);
  v15 = sub_24BCB9024(a1 + 104, v14);
  v16 = sub_24BCB9024(a1 + 104, v15);
  v17 = sub_24BCB9038(a1 + 104, a2);
  v18 = sub_24BCB9024(a1 + 104, v17);
  v19 = sub_24BCB9024(a1 + 104, (v18 + 8));
  v20 = sub_24BCB9024(a1 + 104, v19);
  v21 = sub_24BCB9038(a1 + 104, a2);
  v22 = sub_24BCB9024(a1 + 104, v21);
  v45 = 0;
  v46 = 0;
  v47[0] = 0;
  v43 = 0u;
  v44 = 0u;
  v23 = *(a1 + 176);
  v24 = *(v16 + 12);
  v25 = *(a1 + 8);
  v26 = (v25 + 16 * v23);
  v28 = *v26;
  v27 = v26[1];
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v27);
    v23 = *(a1 + 176);
    v25 = *(a1 + 8);
    v29 = (v25 + 16 * v23);
    v31 = *v29;
    v30 = v29[1];
    v42 = *(*(v28 + 40) + 16 * v24);
    v32 = *(v20 + 12);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v30);
      v23 = *(a1 + 176);
      v25 = *(a1 + 8);
    }

    v28 = v31;
  }

  else
  {
    v42 = *(*(v28 + 40) + 16 * v24);
    v32 = *(v20 + 12);
  }

  v41 = *(*(v28 + 40) + 16 * v32);
  v33 = *(v22 + 12);
  v34 = (v25 + 16 * v23);
  v36 = *v34;
  v35 = v34[1];
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v35);
  }

  v40 = *(*(v36 + 40) + 16 * v33);
  sub_24BDF20F0(&v42, &v41, &v40, &v45, &v46, v47, &v44, &v43);
  sub_24BDEFF84(a3, a4, a5, a6, a7, &v45, a8);
  v37 = *MEMORY[0x277D85DE8];
}

void sub_24BE01DA0(uint64_t a1, unsigned int *a2, float *a3, float *a4, float *a5, float *a6, float *a7, int a8, unsigned int *a9)
{
  if (a8)
  {
    v16 = (*(a1 + 56) + 16 * *a9);
    v18 = *v16;
    v17 = v16[1];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v17);
    }

    v19 = (*(v18 + 40) + 16 * *a2);

    sub_24BE01B60(a1, a2, a3, a4, a5, a6, a7, v19);
  }

  else
  {

    sub_24BE01980(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_24BE01E98(uint64_t a1, unsigned int *a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  sub_24BCB9454(&v44, (*(a1 + 40) + 104), a2);
  for (i = sub_24BCB947C(&v44); i != -1; i = sub_24BCB947C(&v44))
  {
    v9 = v66;
    if (v66 >= v67)
    {
      v11 = (v66 - v65) >> 2;
      if ((v11 + 1) >> 62)
      {
        sub_24BC8E01C();
      }

      v12 = (v67 - v65) >> 1;
      if (v12 <= v11 + 1)
      {
        v12 = v11 + 1;
      }

      if (v67 - v65 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_24BC92E0C(&v65, v13);
      }

      v14 = (4 * v11);
      *v14 = i;
      v10 = (4 * v11 + 4);
      v15 = v14 - (v66 - v65);
      memcpy(v15, v65, v66 - v65);
      v16 = v65;
      v65 = v15;
      v66 = v10;
      v67 = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v66 = i;
      v10 = v9 + 4;
    }

    v66 = v10;
  }

  sub_24BCB2008(&v63, (v66 - v65) >> 2);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v17 = v65;
  if (v66 == v65)
  {
    v27 = 0;
    v26 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(a1 + 40);
      v21 = sub_24BCB9024(v20 + 104, &v17[4 * v18]);
      v22 = sub_24BCB9024(v20 + 104, v21);
      *&v63[4 * v18] = *(v22 + 12);
      v23 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), *&v65[4 * v18]);
      if ((*v23 & v24) == 0)
      {
        v25 = sub_24BCB9024(*(a1 + 40) + 104, &v65[4 * v18]);
        sub_24BCB4670(&v60, (v25 + 16));
      }

      v18 = ++v19;
      v17 = v65;
    }

    while (v19 < ((v66 - v65) >> 2));
    v26 = v60;
    v27 = v61;
  }

  v46 = 0;
  v45 = 0;
  v47 = 0;
  *v51 = 0u;
  *v52 = 0u;
  v53 = 0u;
  *v54 = 0u;
  *v55 = 0u;
  *v57 = 0u;
  *__p = 0u;
  v59 = 0u;
  v44 = *a2;
  v56 = 0u;
  sub_24BCA2A30(&v55[1], v26, v27, (v27 - v26) >> 2);
  sub_24BCA2A30(v57, v63, v64, (v64 - v63) >> 2);
  sub_24BCA2A30(&__p[1], v65, v66, (v66 - v65) >> 2);
  sub_24BC8CAB0(v51, (v61 - v60) >> 2);
  sub_24BC8CAB0(&v52[1], (v61 - v60) >> 2);
  sub_24BC8CAB0(v54, (v61 - v60) >> 2);
  v28 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
  v30 = *v28;
  v29 = v28[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v29);
  }

  v31 = *a2;
  v45 = *(*(v30 + 40) + 8 * v31);
  v48 = *(*(a3 + 136) + 4 * v31);
  v32 = v60;
  if (v61 != v60)
  {
    v33 = (v61 - v60) >> 2;
    v34 = *(a3 + 160);
    v35 = v51[0];
    if (v33 <= 1)
    {
      v33 = 1;
    }

    do
    {
      v36 = *v32;
      v32 += 4;
      *v35++ = *(v34 + 4 * v36);
      --v33;
    }

    while (v33);
  }

  if (sub_24BCD93B0(*(a1 + 40), a2))
  {
    sub_24BE023A4(a1, a3, &v44);
  }

  else
  {
    sub_24BE026CC(a1, &v44, v37, v38);
  }

  if (fabsf(v50) <= 1.0e-16)
  {
    *a4 = 0;
  }

  else
  {
    *a4 = sub_24BE028E4(a1, a3, &v44);
    v39 = v49;
    if (v49 >= 3.4028e38)
    {
      v40 = 9;
      do
      {
        v41 = v40;
        v50 = v50 * 1.1;
        *a4 = sub_24BE028E4(a1, a3, &v44);
        if (v49 >= v39 && v49 < 3.4028e38)
        {
          break;
        }

        v40 = v41 - 1;
      }

      while (v41);
    }
  }

  if (__p[1])
  {
    *&v59 = __p[1];
    operator delete(__p[1]);
  }

  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (v55[1])
  {
    *&v56 = v55[1];
    operator delete(v55[1]);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  if (v52[1])
  {
    *&v53 = v52[1];
    operator delete(v52[1]);
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }
}

void sub_24BE02344(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE023A4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *a3;
  v7 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v8);
  }

  v10 = *(a3 + 17);
  v11 = *(a3 + 18);
  v12 = *(v9 + 40);
  v13 = (v12 + 8 * v6);
  a3[5] = *v13;
  a3[6] = *(v13 + 1);
  a3[3] = *v13;
  a3[4] = *(v13 + 1);
  a3[8] = *(*(a2 + 136) + 4 * v6);
  a3[9] = 2139095039;
  v14 = v11 - v10;
  if (v14)
  {
    v15 = v14 >> 2;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = 3.4028e38;
    do
    {
      v17 = *v10++;
      v18 = ((v13[1] - *(v12 + 8 * v17 + 4)) * (v13[1] - *(v12 + 8 * v17 + 4))) + ((*v13 - *(v12 + 8 * v17)) * (*v13 - *(v12 + 8 * v17)));
      if (v18 < v16)
      {
        *(a3 + 9) = v18;
        v16 = v18;
      }

      --v15;
    }

    while (v15);
  }

  v56 = -1;
  v19 = *(a3 + 20);
  v20 = *(a3 + 21);
  while (v19 != v20)
  {
    v21 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), *v19);
    if ((v22 & *v21) != 0)
    {
      v56 = *v19;
      break;
    }

    ++v19;
  }

  v23 = *(a1 + 40) + 104;
  for (i = &v56; ; i = &v55)
  {
    result = sub_24BCB9024(v23, i);
    v55 = *(result + 8);
    if (v55 == v56)
    {
      break;
    }

    v26 = *(sub_24BCB9024(*(a1 + 40) + 104, &v55) + 12);
    v27 = *(a1 + 40);
    v28 = sub_24BCB9024(v27 + 104, &v55);
    v29 = *(sub_24BCB9024(v27 + 104, v28) + 12);
    if (v29 != v6)
    {
      v30 = sub_24BE02F7C((*(v9 + 40) + 8 * v6), (*(v9 + 40) + 8 * v26), (*(v9 + 40) + 8 * v29));
      if (*(a3 + 9) > v30)
      {
        *(a3 + 9) = v30;
      }
    }

    v23 = *(a1 + 40) + 104;
  }

  v31 = *(a3 + 20);
  v32 = *(a3 + 21);
  while (v31 != v32)
  {
    v33 = *(a1 + 40);
    v34 = sub_24BC9ECE4(v33, *(v33 + 180), *v31);
    if ((v35 & *v34) != 0 || (v36 = sub_24BCB9024(v33 + 104, v31), result = sub_24BC9ECE4(v33, *(v33 + 180), *v36), (v37 & *result) != 0))
    {
      v38 = *(a1 + 40);
      v39 = sub_24BCB9024(v38 + 104, v31);
      v40 = *(sub_24BCB9024(v38 + 104, v39) + 12);
      v41 = *sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), *v31);
      v42 = v31;
      if ((v43 & v41) == 0)
      {
        v42 = sub_24BCB9024(*(a1 + 40) + 104, v31);
      }

      v54 = *v42;
      v44 = *(a1 + 40) + 104;
      for (j = &v54; ; j = &v53)
      {
        result = sub_24BCB9024(v44, j);
        v53 = *(result + 8);
        if (v53 == v54)
        {
          break;
        }

        v46 = *(sub_24BCB9024(*(a1 + 40) + 104, &v53) + 12);
        if (v46 != v6 && v46 != v40)
        {
          v48 = sub_24BE02F7C((*(v9 + 40) + 8 * v46), (*(v9 + 40) + 8 * v6), (*(v9 + 40) + 8 * v40));
          if (*(a3 + 9) > v48)
          {
            *(a3 + 9) = v48;
          }
        }

        v44 = *(a1 + 40) + 104;
      }
    }

    ++v31;
  }

  v49 = *(a3 + 9);
  v50 = sqrtf(v49) * 0.8;
  v51 = v49 < 0.0;
  v52 = 0.0;
  if (!v51)
  {
    v52 = v50;
  }

  *(a3 + 9) = v52;
  return result;
}

void sub_24BE026CC(uint64_t a1, int *a2, double a3, double a4)
{
  v34 = *a2;
  v6 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
  }

  v9.i64[0] = 0;
  *(a2 + 3) = 0;
  v10 = (a2 + 3);
  v11 = *(a2 + 18);
  v12 = *(a2 + 17);
  v13 = (v11 - v12) >> 2;
  if (v11 != v12)
  {
    v14 = *(v8 + 40);
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (v11 - v12) >> 2;
    }

    v9.i64[0] = 0;
    v16 = *(a2 + 17);
    do
    {
      v17 = *v16++;
      a4 = *(v14 + 8 * v17);
      *v9.f32 = vadd_f32(*v9.f32, *&a4);
      *v10 = v9.i64[0];
      --v15;
    }

    while (v15);
  }

  *&a4 = v13;
  v9.i64[1] = v9.i64[0];
  *(a2 + 3) = vdivq_f32(v9, vdupq_lane_s32(*&a4, 0));
  sub_24BE03074(a1, &v34, v10, a2 + 8, a2 + 8, a2 + 14);
  v33 = 0;
  if (v11 == v12)
  {
    v21 = a2 + 9;
    v26 = 3.4028e38;
  }

  else
  {
    v18 = 0;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v19 = vdup_n_s32(0x3F4CCCCDu);
    v20 = vdup_n_s32(0x3E4CCCCCu);
    do
    {
      v33 = vadd_f32(vmul_f32(*(*(v8 + 40) + 8 * *(*(a2 + 17) + 4 * v18)), v19), vmul_f32(*(a2 + 5), v20));
      v32 = 0.0;
      sub_24BE03074(a1, &v34, &v33, &v32, a2 + 11, a2 + 14);
      if (v32 < *(a2 + 8))
      {
        *(a2 + 8) = v32;
        sub_24BCA2A30(a2 + 8, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 2);
        *(a2 + 3) = v33;
      }

      ++v18;
    }

    while (v13 != v18);
    a2[9] = 2139095039;
    v21 = a2 + 9;
    v22 = *(v21 + 25);
    v23 = *(v8 + 40);
    v24 = *(v21 - 4);
    v25 = *(v21 - 3);
    v26 = 3.4028e38;
    do
    {
      v27 = *v22++;
      v28 = ((*(v23 + 8 * v27 + 4) - v25) * (*(v23 + 8 * v27 + 4) - v25)) + ((*(v23 + 8 * v27) - v24) * (*(v23 + 8 * v27) - v24));
      if (v28 < v26)
      {
        *v21 = v28;
        v26 = v28;
      }

      --v13;
    }

    while (v13);
  }

  v29 = sqrtf(v26) * 0.8;
  v30 = v26 < 0.0;
  v31 = 0.0;
  if (!v30)
  {
    v31 = v29;
  }

  *v21 = v31;
}

uint64_t sub_24BE028E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = *a3;
  v64 = *(a3 + 28);
  v6 = (a3 + 12);
  v77 = *(a3 + 12);
  v7 = (a3 + 32);
  v8 = *(a3 + 32);
  v9 = *(a2 + 8) * ((*(a2 + 4) * *(a2 + 4)) * *(a2 + 8));
  v76 = 0.0;
  v75 = 0;
  v10 = 2;
  v73[0] = 2;
  for (i = 1; i != 624; ++i)
  {
    v10 = i + 1812433253 * (v10 ^ (v10 >> 30));
    v73[i] = v10;
  }

  v74 = 0;
  v12 = *(a1 + 40);
  sub_24BC836D4(__p, off_27F078FB8[0]);
  v80 = 0;
  v79 = 0;
  sub_24BCCAA0C((v12 + 56), &v79, __p);
  v65 = v8;
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 0.0;
  if (*(a3 + 28) >= 3.4028e38)
  {
    v13 = sub_24BE032A4(*(a1 + 40), &v77, (a3 + 160), *(a1 + 192));
  }

  if (*(a2 + 24))
  {
    v14 = 0;
    v67 = v7;
    v68 = v6;
    v66 = v13;
    do
    {
      if (*(a3 + 28) < 3.4028e38)
      {
        goto LABEL_26;
      }

      sub_24BCB9454(__p, (*(a1 + 40) + 104), a3);
      v79 = -1;
      v15 = sub_24BCB947C(__p);
      v70 = v15;
      if (v15 == -1)
      {
        goto LABEL_26;
      }

      v16 = 0;
      do
      {
        v17 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), v15);
        if ((v18 & *v17) == 0 && *(*(a2 + 160) + 4 * *(sub_24BCB9024(*(a1 + 40) + 104, &v70) + 16)) >= 3.4028e38)
        {
          ++v16;
          v79 = v70;
        }

        v15 = sub_24BCB947C(__p);
        v70 = v15;
      }

      while (v15 != -1);
      if (v16 != 1)
      {
LABEL_26:
        v43 = sub_24BCCE728(v73);
        v44 = (v43 + v43) * 3.14159265 * 2.32830644e-10;
      }

      else
      {
        v19 = *(a1 + 40);
        v20 = (*(v19 + 80) + 16 * *(a1 + 192));
        v22 = *v20;
        v21 = v20[1];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v21);
          v19 = *(a1 + 40);
        }

        v69 = *(sub_24BCB9024(v19 + 104, &v79) + 12);
        v23 = *(v22 + 40);
        v24 = *(a1 + 40);
        v25 = (*(v24 + 80) + 16 * *(a1 + 192));
        v27 = *v25;
        v26 = v25[1];
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v26);
          v24 = *(a1 + 40);
        }

        v28 = sub_24BCB9024(v24 + 104, &v79);
        v29 = *(sub_24BCB9024(v24 + 104, v28) + 12);
        v30 = *(v27 + 40);
        v31 = *(a1 + 40);
        v32 = (*(v31 + 80) + 16 * *(a1 + 192));
        v34 = *v32;
        v33 = v32[1];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v33);
          v31 = *(a1 + 40);
        }

        v35 = (v23 + 8 * v69);
        v36 = sub_24BCB9024(v31 + 104, &v79);
        v37 = (*(v34 + 40) + 8 * *(sub_24BCB9024(v31 + 104, (v36 + 4)) + 12));
        v38 = v35[1];
        v39 = *v37 - *v35;
        v40 = v37[1] - v38;
        v41 = atan2f(*(v30 + 8 * v29 + 4) - v38, *(v30 + 8 * v29) - *v35);
        v42 = atan2f(v40, v39);
        if (vabds_f32(v42, v41) <= 3.14159265)
        {
          v7 = v67;
          v6 = v68;
          v13 = v66;
        }

        else
        {
          v7 = v67;
          v6 = v68;
          v13 = v66;
          if (v42 >= v41)
          {
            v41 = v41 + 6.28318531;
          }

          else
          {
            v42 = v42 + 6.28318531;
          }
        }

        v44 = v41 + (vcvts_n_f32_u32(sub_24BCCE728(v73), 0x20uLL) * (v42 - v41));
      }

      v45 = *(a3 + 20);
      v46 = *(a3 + 36);
      v47 = __sincosf_stret(v44);
      v48 = *(a3 + 24) + (v46 * v47.__sinval);
      *(a3 + 12) = v45 + (v46 * v47.__cosval);
      *(a3 + 16) = v48;
      if (*(a2 + 1) == 1 && sub_24BCD93B0(*(a1 + 40), &v78))
      {
        v49 = *(a2 + 52);
        v50 = *(a3 + 16);
        if (*(a3 + 12) < v49)
        {
          v49 = *(a3 + 12);
        }

        *(a3 + 12) = v49;
        if (*(a2 + 44) >= v49)
        {
          v49 = *(a2 + 44);
        }

        *(a3 + 12) = v49;
        v51 = *(a2 + 56);
        if (v50 < v51)
        {
          v51 = v50;
        }

        *(a3 + 16) = v51;
        if (*(a2 + 48) >= v51)
        {
          v51 = *(a2 + 48);
        }

        *(a3 + 16) = v51;
      }

      sub_24BE03074(a1, &v78, v6, v7, (a3 + 64), (a3 + 112));
      v52 = *(a3 + 4);
      v53 = *(a3 + 8);
      v55 = *(a3 + 12);
      v54 = *(a3 + 16);
      v56 = (((v53 - v54) * (v53 - v54)) + ((v52 - v55) * (v52 - v55)));
      while (v56 > v9)
      {
        *&v75 = (v52 + v55) * 0.5;
        *(&v75 + 1) = (v53 + v54) * 0.5;
        sub_24BE03074(a1, &v78, &v75, &v76, (a3 + 88), (a3 + 112));
        v58 = *(a3 + 28);
        v57 = *(a3 + 32);
        v59 = v76;
        if (v58 >= v57)
        {
          *(a3 + 28) = v76;
          v53 = *(&v75 + 1);
          v52 = *&v75;
          *(a3 + 4) = v75;
          *(a3 + 8) = v53;
          v55 = *(a3 + 12);
          v54 = *(a3 + 16);
          v58 = v59;
        }

        else
        {
          *(a3 + 32) = v76;
          v54 = *(&v75 + 1);
          v55 = *&v75;
          *(a3 + 12) = v75;
          *(a3 + 16) = v54;
          v52 = *(a3 + 4);
          v53 = *(a3 + 8);
          v57 = v59;
        }

        v60 = (((v53 - v54) * (v53 - v54)) + ((v52 - v55) * (v52 - v55)));
        v61 = vabdd_f64(v56, v60) < 1.00000002e-16 || v56 < v60;
        v56 = (((v53 - v54) * (v53 - v54)) + ((v52 - v55) * (v52 - v55)));
        if (v61)
        {
          goto LABEL_50;
        }
      }

      v58 = *(a3 + 28);
      v57 = *(a3 + 32);
LABEL_50:
      if (v58 <= v57)
      {
        if (v58 < 3.4028e38 || sub_24BE032A4(*(a1 + 40), (a3 + 4), (a3 + 160), *(a1 + 192)) <= v13)
        {
          goto LABEL_56;
        }

        *(a3 + 4) = *v6;
        v57 = *v7;
      }

      else
      {
        *(a3 + 4) = v55;
        *(a3 + 8) = v54;
      }

      *(a3 + 28) = v57;
LABEL_56:
      ++v14;
    }

    while (v14 < *(a2 + 24));
  }

  v62 = *(a3 + 28);
  if (v62 >= v65)
  {
    if (v62 >= 3.4028e38)
    {
      if (sub_24BE032A4(*(a1 + 40), (a3 + 4), (a3 + 160), *(a1 + 192)) < v13)
      {
        *(a3 + 32) = *(a3 + 28);
        *(a3 + 12) = *(a3 + 4);
LABEL_69:
        sub_24BE03074(a1, &v78, v6, v7, (a3 + 64), (a3 + 112));
        sub_24BE03404(a1, a2, a3);
        return 1;
      }

      v62 = *v7;
    }

    else
    {
      *v7 = v65;
      *v6 = v77;
      v62 = v65;
    }
  }

  else
  {
    *(a3 + 32) = v62;
    *(a3 + 12) = *(a3 + 4);
  }

  if (v62 < v64)
  {
    goto LABEL_69;
  }

  return 0;
}

void sub_24BE02F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BE02F7C(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  sub_24BDB7474(__p, 2uLL);
  v6 = __p[0];
  v7 = vsub_f32(*a1, *a2);
  *__p[0] = v7;
  v8 = vsub_f32(*a3, *a2);
  v9 = vmuls_lane_f32(v8.f32[1], v8, 1) + (v8.f32[0] * v8.f32[0]);
  if (fabsf(v9) >= 0.00000001)
  {
    v11 = (COERCE_FLOAT(vmul_f32(v7, v8).i32[1]) + (v7.f32[0] * v8.f32[0])) / v9;
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    if (v11 > 1.0)
    {
      v11 = 1.0;
    }

    v12 = vadd_f32(*a2, vmul_n_f32(v8, v11));
    v6[1] = v12;
    v10 = ((v12.f32[1] - a1->f32[1]) * (v12.f32[1] - a1->f32[1])) + ((v12.f32[0] - a1->f32[0]) * (v12.f32[0] - a1->f32[0]));
  }

  else
  {
    v10 = COERCE_FLOAT(vmul_f32(v7, v7).i32[1]) + (v7.f32[0] * v7.f32[0]);
  }

  __p[1] = v6;
  operator delete(v6);
  return v10;
}

void sub_24BE03074(uint64_t a1, _DWORD *a2, float *a3, float *a4, float **a5, uint64_t *a6)
{
  v8 = a4;
  *a4 = 0.0;
  v12 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
  v14 = *v12;
  v13 = v12[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v13);
  }

  v36 = 0;
  a5[1] = *a5;
  sub_24BC8CAB0(a5, (a6[1] - *a6) >> 2);
  sub_24BCB2008(__p, 3uLL);
  v15 = *a6;
  if (a6[1] == *a6)
  {
    v29 = *a5;
  }

  else
  {
    v34 = v8;
    v16 = 0;
    v17 = 0;
    do
    {
      sub_24BCD567C(*(a1 + 40), (v15 + 4 * v16), __p);
      v18 = (*(*(a1 + 40) + 56) + 16 * *(a1 + 196));
      v20 = *v18;
      v19 = v18[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v19);
      }

      v21 = *__p[0];
      if (v21 == *a2)
      {
        v22 = *(a1 + 40);
        v23 = *(v14 + 40);
        v24 = (v23 + 8 * *(__p[0] + 1));
        v25 = (v23 + 8 * *(__p[0] + 2));
        v26 = a3;
      }

      else
      {
        v27 = *(__p[0] + 1);
        v22 = *(a1 + 40);
        v28 = *(v14 + 40);
        v26 = (v28 + 8 * v21);
        if (v27 == *a2)
        {
          v25 = (v28 + 8 * *(__p[0] + 2));
          v24 = a3;
        }

        else
        {
          v24 = (v28 + 8 * v27);
          v25 = a3;
        }
      }

      sub_24BE01980(v22, (*a6 + 4 * v16), v26, v24, v25, (*(v20 + 40) + 4 * *(*a6 + 4 * v16)), &v36);
      v29 = *a5;
      (*a5)[v16] = v30;
      v16 = ++v17;
      v15 = *a6;
    }

    while (v17 < ((a6[1] - *a6) >> 2));
    v8 = v34;
  }

  v31 = a5[1] - v29;
  if (v31)
  {
    v32 = v31 >> 2;
    if (v32 <= 1)
    {
      v32 = 1;
    }

    v33 = 0.0;
    while (*v29 < 3.4028e38)
    {
      v33 = v33 + *v29++;
      if (!--v32)
      {
        goto LABEL_24;
      }
    }

    v33 = 3.4028e38;
  }

  else
  {
    v33 = 0.0;
  }

LABEL_24:
  *v8 = v33;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BE03284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BE032A4(uint64_t a1, float *a2, unsigned int **a3, unsigned int a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    return 0.0;
  }

  v8 = a4;
  v9 = 0.0;
  do
  {
    v10 = sub_24BCB9024(a1 + 104, v4);
    v11 = sub_24BCB9024(a1 + 104, v10);
    v12 = sub_24BCB9024(a1 + 104, v4);
    v13 = sub_24BCB9024(a1 + 104, (v12 + 8));
    v14 = sub_24BCB9024(a1 + 104, v13);
    v15 = (*(a1 + 80) + 16 * v8);
    v17 = *v15;
    v16 = v15[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v16);
      v18 = (*(a1 + 80) + 16 * v8);
      v20 = *v18;
      v19 = v18[1];
      v21 = (*(v17 + 40) + 8 * *(v11 + 12));
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v19);
      }

      v17 = v20;
    }

    else
    {
      v21 = (*(v17 + 40) + 8 * *(v11 + 12));
    }

    v22 = (*(v17 + 40) + 8 * *(v14 + 12));
    v23 = (((*v21 - *a2) * (v22[1] - a2[1])) - ((v21[1] - a2[1]) * (*v22 - *a2))) * 0.5;
    if (v23 < 0.0)
    {
      v9 = v9 - v23;
    }

    ++v4;
  }

  while (v4 != v5);
  return v9;
}

void sub_24BE03404(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v7 = *(a3 + 14);
  v6 = *(a3 + 15);
  v9 = *(a3 + 17);
  v8 = *(a3 + 18);
  v10 = (*(*(a1 + 40) + 80) + 16 * *(a1 + 192));
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
  }

  v13 = *a3;
  v14 = (*(v12 + 40) + 8 * v13);
  *v14 = a3[3];
  v14[1] = a3[4];
  *(*(a2 + 136) + 4 * v13) = a3[8];
  if (v6 != v7)
  {
    v15 = (v6 - v7) >> 2;
    v16 = *(a3 + 8);
    v17 = *(a3 + 14);
    v18 = *(a2 + 160);
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v19 = *v16++;
      v20 = v19;
      v21 = *v17++;
      *(v18 + 4 * v21) = v20;
      --v15;
    }

    while (v15);
  }

  if (v8 != v9)
  {
    v22 = 0;
    if (((v8 - v9) >> 2) <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v8 - v9) >> 2;
    }

    v24 = *(a3 + 17);
    do
    {
      v25 = sub_24BE00E80(a1, (v24 + v22), (a2 + 160));
      v24 = *(a3 + 17);
      *(*(a2 + 136) + 4 * *(v24 + v22)) = v25;
      v22 += 4;
      --v23;
    }

    while (v23);
  }
}

float sub_24BE03520(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3 >> 2;
  if (v4 <= 1)
  {
    v4 = 1;
  }

  result = 0.0;
  while (*v2 < 3.4028e38)
  {
    result = result + *v2++;
    if (!--v4)
    {
      return result;
    }
  }

  return 3.4028e38;
}

void *sub_24BE03574(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    a1[18] = v3;
    operator delete(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    a1[12] = v5;
    operator delete(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    a1[9] = v6;
    operator delete(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    a1[6] = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_24BE03618(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE03674(double *a1, double *a2, double *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = fabs(v3) < 0.999;
  v6 = 1.0;
  v7 = 0.0;
  if (v5)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (v5)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = v3 * 0.0 - v9 * v4;
  v11 = v9 * *a1 - v8 * v3;
  v12 = *a1 * -0.0 + v8 * v4;
  v13 = sqrt(v11 * v11 + v10 * v10 + v12 * v12);
  v14 = 0.0;
  if (v13 > 0.0)
  {
    v6 = v10 / v13;
    v7 = v11 / v13;
    v14 = v12 / v13;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v14;
  v16 = a1[1];
  v15 = a1[2];
  v17 = v16 * v14 - v15 * v7;
  v18 = v15 * v6 - *a1 * v14;
  v19 = *a1 * v7 - v16 * v6;
  *a3 = v17;
  a3[1] = v18;
  a3[2] = v19;
  return 1;
}

uint64_t sub_24BE0371C(uint64_t a1, int32x4_t *a2, float32x4_t *a3, float64x2_t a4, float64x2_t a5)
{
  a4.f64[0] = fabsf(*(a1 + 8));
  a5.f64[0] = 0.999;
  v5 = vdupq_lane_s64(vcgtq_f64(a5, a4).i64[0], 0);
  v6 = xmmword_24BFBD1C0;
  v7 = vbslq_s8(v5, xmmword_24BFBD200, xmmword_24BFBD1C0);
  v8 = vmlsq_f32(vmulq_f32(vuzp2q_s32(vextq_s8(*a1, *a1, 4uLL), *a1), vzip2q_s32(vzip1q_s32(v7, vextq_s8(v7, v7, 0xCuLL)), v7)), vzip2q_s32(vzip1q_s32(*a1, vextq_s8(*a1, *a1, 0xCuLL)), *a1), vuzp2q_s32(vextq_s8(v7, v7, 4uLL), v7));
  v9 = vmulq_f32(v8, v8);
  v9.i32[3] = 0;
  v10 = vpaddq_f32(v9, v9);
  v11 = vpaddq_f32(v10, v10);
  if (v11.f32[0] > 0.0)
  {
    v6 = vdivq_f32(v8, vsqrtq_f32(v11));
  }

  *a2 = v6;
  *a3 = vmlsq_f32(vmulq_f32(vuzp2q_s32(vextq_s8(v6, v6, 4uLL), v6), vzip2q_s32(vzip1q_s32(*a1, vextq_s8(*a1, *a1, 0xCuLL)), *a1)), vzip2q_s32(vzip1q_s32(v6, vextq_s8(v6, v6, 0xCuLL)), v6), vuzp2q_s32(vextq_s8(*a1, *a1, 4uLL), *a1));
  return 1;
}

uint64_t sub_24BE037E4(const std::__fs::filesystem::path *a1, uint64_t a2)
{
  sub_24BCC0E30(a1, __p);
  if (SHIBYTE(v12) < 0)
  {
    sub_24BC8DE9C(__dst, __p[0], __p[1]);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *__dst = *__p;
    v14 = v12;
  }

  v4 = HIBYTE(v14);
  if (v14 >= 0)
  {
    v5 = (__dst + HIBYTE(v14));
  }

  else
  {
    v5 = (__dst[0] + __dst[1]);
  }

  if (v14 >= 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if (v6 != v5)
  {
    do
    {
      *v6 = __tolower(*v6);
      v6 = (v6 + 1);
    }

    while (v6 != v5);
    v4 = HIBYTE(v14);
  }

  if ((v4 & 0x80) != 0)
  {
    if (__dst[1] == 4)
    {
      v7 = __dst[0];
      if (*__dst[0] != 1920492846)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

LABEL_21:
    v8 = sub_24BD23084(a1, a2);
    goto LABEL_23;
  }

  if (v4 != 4)
  {
    goto LABEL_21;
  }

  if (LODWORD(__dst[0]) != 1920492846)
  {
    v7 = __dst;
LABEL_20:
    *v7;
    goto LABEL_21;
  }

LABEL_22:
  v8 = sub_24BD232F0(a1, a2);
LABEL_23:
  v9 = v8;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  return v9;
}

void sub_24BE03940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE03974(char *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5)
{
  v7 = *(a4 + 24);
  if (v7)
  {
    v8 = *(*v7 + 48);

    return v8();
  }

  if (*(a3 + 31) < 0)
  {
    sub_24BC8DE9C(__p, *(a3 + 1), *(a3 + 2));
  }

  else
  {
    *__p = *(a3 + 4);
    v20 = *(a3 + 3);
  }

  v12 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v13 = (__p + HIBYTE(v20));
  }

  else
  {
    v13 = (__p[0] + __p[1]);
  }

  if (v20 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v14 != v13)
  {
    do
    {
      *v14 = __tolower(*v14);
      v14 = (v14 + 1);
    }

    while (v14 != v13);
    v12 = HIBYTE(v20);
  }

  if ((v12 & 0x80) != 0)
  {
    if (__p[1] != 4)
    {
      goto LABEL_24;
    }

    v15 = __p[0];
    if (*__p[0] != 1920492846)
    {
LABEL_23:
      if (*v15 == 1735290926)
      {
        sub_24BD23168();
      }

LABEL_24:
      v16 = *a3;
      sub_24BD23088();
    }
  }

  else
  {
    if (v12 != 4)
    {
      goto LABEL_24;
    }

    if (LODWORD(__p[0]) != 1920492846)
    {
      v15 = __p;
      goto LABEL_23;
    }
  }

  v17 = sub_24BD233C4(a1, a2, a5);
  v18 = v17;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  return v18;
}

void sub_24BE03B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE03B48(uint64_t a1, void *a2)
{
  sub_24BC836D4(__p, off_27F078FB8[0]);
  v55.i32[2] = 0;
  v55.i64[0] = 0;
  v4 = sub_24BCCAA0C((a1 + 56), &v55, __p);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == -1)
  {
    return 0;
  }

  v5 = (*(a1 + 56) + 16 * v4);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v6);
  }

  sub_24BC836D4(__p, off_27F078F78[0]);
  v55.i64[0] = 0;
  v8 = sub_24BCB74D4((a1 + 80), &v55, __p);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 == -1)
  {
    return 0;
  }

  v9 = (*(a1 + 80) + 16 * v8);
  v11 = *v9;
  v10 = v9[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v10);
  }

  sub_24BE03FA4(a2, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BCB2008(__p, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v13 = 0;
    v12.i32[0] = 897988541;
    v50 = v12;
    while (1)
    {
      v56 = v13;
      sub_24BCD567C(a1, &v56, __p);
      v14 = __p[0];
      v15 = *(__p[0] + 1);
      v16 = (*(a1 + 8) + 16 * *(a1 + 176));
      v18 = *v16;
      v17 = v16[1];
      if (!v17)
      {
        break;
      }

      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v17);
      v14 = __p[0];
      v19 = (*(a1 + 8) + 16 * *(a1 + 176));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(*(v18 + 40) + 16 * v15);
      v23 = *__p[0];
      if (!v20)
      {
        v18 = *v19;
        goto LABEL_20;
      }

      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v53 = v22;
      sub_24BC9EC78(v20);
      v14 = __p[0];
      v24 = (*(a1 + 8) + 16 * *(a1 + 176));
      v18 = *v24;
      v25 = v24[1];
      v54 = vsubq_f32(v53, *(*(v21 + 40) + 16 * v23));
      v26 = *(__p[0] + 2);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v25);
        v27 = (*(a1 + 8) + 16 * *(a1 + 176));
        v29 = *v27;
        v28 = v27[1];
        v52 = *(*(v18 + 40) + 16 * v26);
        v30 = *__p[0];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v28);
        }

        goto LABEL_22;
      }

LABEL_21:
      v52 = *(*(v18 + 40) + 16 * v26);
      v30 = *v14;
      v29 = v18;
LABEL_22:
      v51 = *(*(v29 + 40) + 16 * v30);
      v31 = v56;
      v32 = *(v7 + 40);
      sub_24BD3FD60(a1, v56, &v55);
      v33 = (v32 + 12 * v31);
      v34 = *(v11 + 40);
      v35 = (v34 + 8 * v33[1]);
      v36 = (v34 + 8 * *v33);
      v37 = v36[1];
      v38 = (v34 + 8 * v33[2]);
      v39.f32[0] = v35[1] - v37;
      v40 = v38[1] - v37;
      v41 = ((*v35 - *v36) * v40) - (v39.f32[0] * (*v38 - *v36));
      if (fabsf(v41) >= v50.f32[0])
      {
        v47 = vmulq_n_f32(vsubq_f32(vmulq_n_f32(v54, v40), vmulq_n_f32(vsubq_f32(v52, v51), v39.f32[0])), 1.0 / v41);
        v43 = v55;
        v46 = vmlsq_f32(vmulq_f32(vuzp2q_s32(vextq_s8(v47, v47, 4uLL), v47), vzip2q_s32(vzip1q_s32(v55, vextq_s8(v43, v43, 0xCuLL)), v55)), vzip2q_s32(vzip1q_s32(v47, vextq_s8(v47, v47, 0xCuLL)), v47), vuzp2q_s32(vextq_s8(v43, v43, 4uLL), v55));
      }

      else
      {
        v39.f32[0] = fabsf(*v55.i32 + -1.0);
        v42 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v50, v39), 0), xmmword_24BFD2970, xmmword_24BFBD1C0);
        v43 = v55;
        v44 = vzip2q_s32(vzip1q_s32(v55, vextq_s8(v43, v43, 0xCuLL)), v55);
        v45 = vuzp2q_s32(vextq_s8(v43, v43, 4uLL), v55);
        v46 = vmlsq_f32(vmulq_f32(v44, vuzp2q_s32(vextq_s8(v42, v42, 4uLL), v42)), vzip2q_s32(vzip1q_s32(v42, vextq_s8(v42, v42, 0xCuLL)), v42), v45);
        v47 = vmlsq_f32(vmulq_f32(v44, vuzp2q_s32(vextq_s8(v46, v46, 4uLL), v46)), vzip2q_s32(vzip1q_s32(v46, vextq_s8(v46, v46, 0xCuLL)), v46), v45);
      }

      v48 = (*a2 + 48 * v56);
      *v48 = v43;
      v48[1] = v47;
      v48[2] = v46;
      if (++v13 >= ((*(a1 + 160) - *(a1 + 152)) >> 2))
      {
        goto LABEL_26;
      }
    }

    v22 = *(*(v18 + 40) + 16 * v15);
    v23 = *__p[0];
LABEL_20:
    v54 = vsubq_f32(v22, *(*(v18 + 40) + 16 * v23));
    v26 = v14[2];
    goto LABEL_21;
  }

LABEL_26:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 1;
}

void sub_24BE03F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE03FA4(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BE0721C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

uint64_t sub_24BE03FE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        v3 = 1;
      }

      else
      {
        v3 = *(v1 + 4) ^ 1;
      }

      v1 += 48;
    }

    while (v1 != v2);
  }

  return v3 & 1;
}

uint64_t sub_24BE04020(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4, uint64_t a5, int a6, int a7)
{
  v139 = *MEMORY[0x277D85DE8];
  v134 = a6;
  sub_24BC836D4(__p, off_27F078FC8[0]);
  v127 = a2;
  LOWORD(v135) = 0;
  v12 = sub_24BD274E4((a1 + 56), &v135, __p);
  if (SHIBYTE(v138) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = (*(a1 + 56) + 16 * v12);
  v15 = *v13;
  v14 = v13[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v14);
  }

  v16 = 0xFFFFFFFFLL;
  v133 = -1;
  v128 = v15;
  if (v12 == -1)
  {
    v17 = 0;
  }

  else
  {
    sub_24BC836D4(__p, off_27F078FF8);
    v17 = sub_24BD26644(a1, &v133, __p);
    if (SHIBYTE(v138) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = v133;
  }

  v18 = (a1 + 80);
  v19 = (*(a1 + 80) + 16 * v16);
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v20);
  }

  v124 = *(v21 + 40);
  if (v17)
  {
    sub_24BC836D4(__p, off_27F078FB8[0]);
    v136 = 0;
    v135 = 0;
    v22 = sub_24BCCAA0C((a1 + 56), &v135, __p);
    v23 = v22 != -1;
    if (SHIBYTE(v138) < 0)
    {
      operator delete(__p[0]);
    }

    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = 0xFFFFFFFFLL;
  }

  v25 = (*(a1 + 56) + 16 * v24);
  v26 = v25[1];
  v130 = *v25;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v26);
  }

  if (v23)
  {
    sub_24BC836D4(__p, off_27F078F78[0]);
    v135 = 0;
    v27 = sub_24BCB74D4((a1 + 80), &v135, __p);
    LODWORD(v28) = v27 != -1;
    if (SHIBYTE(v138) < 0)
    {
      operator delete(__p[0]);
    }

    v29 = v27;
  }

  else
  {
    LODWORD(v28) = 0;
    v29 = 0xFFFFFFFFLL;
  }

  v30 = (*v18 + 16 * v29);
  v31 = v30[1];
  v129 = *v30;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v31);
  }

  v32 = v127[3];
  v33 = v127[4];
  if (v32 == v33)
  {
LABEL_33:
    v36 = a4[1];
    if (v36)
    {
      v37 = 0;
      v38 = *a4;
      v39 = *a4;
      do
      {
        if (v39)
        {
          v40 = 0;
          v125 = v37;
          do
          {
            if (*(*(a4 + 2) + a4[2] * (v40 + v39 * v37)) == 1)
            {
              v41 = v15;
              v42 = *(a5 + 16) + 16 * (v40 + *a5 * v37) * *(a5 + 8);
              v43 = *(v42 + 4);
              LOWORD(v135) = *(*(v41 + 40) + 2 * v43);
              LODWORD(__p[1]) = 0;
              __p[0] = 0;
              v44 = sub_24BD266BC(v124, &v135);
              v45 = sub_24BD26714((v127 + 6), v44);
              v46 = v127[3] + 48 * *sub_24BD250F8(*v127 + 48 * *v45 + 24, &v134);
              v48 = *(v46 + 8);
              v47 = *(v46 + 16);
              if (v47)
              {
                atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v28)
              {
                v49 = *(v129 + 40);
                v50 = (*(v130 + 40) + 12 * v43);
                v51 = *(v42 + 8);
                v52 = *(v42 + 12);
                v53 = (v49 + 8 * *v50);
                v54 = *v53;
                v55 = v51 * v53[1];
                v56 = (v49 + 8 * v50[1]);
                v57 = (1.0 - v51) - v52;
                v58 = (v49 + 8 * v50[2]);
                v59 = *v58;
                v60 = (v55 + (v52 * v56[1])) + (v57 * v58[1]);
                v62 = *v48;
                v61 = v48[1];
                v63 = ((1.0 - v60) * v61) + -0.5;
                if (v63 < 0.0)
                {
                  v63 = 0.0;
                }

                v64 = v61 - 1;
                if (v63 > v64)
                {
                  v63 = v64;
                }

                v65 = ((((v51 * v54) + (v52 * *v56)) + (v57 * v59)) * v62) + -0.5;
                if (v65 < 0.0)
                {
                  v65 = 0.0;
                }

                if (v65 > (v62 - 1))
                {
                  v65 = (v62 - 1);
                }

                v66 = v65;
                v67 = v63;
                LOBYTE(v28) = sub_24BE04A30(v48, __p, v66, v67);
              }

              else
              {
                LOBYTE(v28) = 0;
              }

              v15 = v128;
              if (v48[2] == 1)
              {
                HIDWORD(__p[0]) = __p[0];
                LODWORD(__p[1]) = __p[0];
              }

              v37 = v125;
              if (a7)
              {
                v68 = 0;
                v69 = *(a3 + 16) + 4 * (v40 + *a3 * v125) * *(a3 + 8);
                do
                {
                  *(v69 + 4 * v68) = *(__p + v68);
                  ++v68;
                }

                while (a7 > v68);
              }

              if (v47)
              {
                sub_24BC9EC78(v47);
              }

              v38 = *a4;
            }

            ++v40;
            v39 = v38;
          }

          while (v40 < v38);
          v36 = a4[1];
          v39 = v38;
        }

        ++v37;
      }

      while (v37 < v36);
    }
  }

  else
  {
    v34 = 0;
    do
    {
      while ((v34 & 1) != 0)
      {
        v32 += 48;
        v34 = 1;
        if (v32 == v33)
        {
          goto LABEL_63;
        }
      }

      v35 = *(v32 + 4);
      v34 = v35 ^ 1;
      v32 += 48;
    }

    while (v32 != v33);
    if (v35)
    {
      goto LABEL_33;
    }

LABEL_63:
    v70 = 0xFFFFFFFFLL;
    LODWORD(v135) = -1;
    if (v28)
    {
      sub_24BC836D4(__p, off_27F078FE8[0]);
      v71 = sub_24BD265CC(a1, &v135, __p);
      if (SHIBYTE(v138) < 0)
      {
        operator delete(__p[0]);
      }

      v70 = v135;
    }

    else
    {
      v71 = 0;
    }

    v72 = (*v18 + 16 * v70);
    v74 = *v72;
    v73 = v72[1];
    if (v73)
    {
      atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v73);
    }

    v123 = (*(*v74 + 16))(v74);
    v132 = 0;
    if (v123)
    {
      v75 = 0;
      do
      {
        v76 = a4[1];
        if (v76)
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = a4[2];
          v81 = *(a5 + 8);
          while (!*a4)
          {
LABEL_79:
            ++v79;
            v78 += v81 * *a5;
            v77 += v80 * *a4;
            if (v79 == v76)
            {
              goto LABEL_80;
            }
          }

          v82 = *a4;
          v83 = v77;
          v84 = v78;
          while (*(*(a4 + 2) + v83) != 1 || *(*(v15 + 40) + 2 * *(*(a5 + 16) + 16 * v84 + 4)) != v75)
          {
            v84 += v81;
            v83 += v80;
            if (!--v82)
            {
              goto LABEL_79;
            }
          }

          v85 = sub_24BD266BC(v124, &v132);
          v86 = sub_24BD26714((v127 + 6), v85);
          v87 = v127[3] + 48 * *sub_24BD250F8(*v127 + 48 * *v86 + 24, &v134);
          if ((*(v87 + 4) & 1) == 0)
          {
            if (*(v87 + 47) < 0)
            {
              sub_24BC8DE9C(__p, *(v87 + 24), *(v87 + 32));
            }

            else
            {
              v90 = *(v87 + 24);
              v138 = *(v87 + 40);
              *__p = v90;
            }

            operator new();
          }

          v28 = v71;
          v89 = *(v87 + 8);
          v88 = *(v87 + 16);
          v15 = v128;
          if (v88)
          {
            atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v126 = v88;
          v91 = a4[1];
          if (v91)
          {
            v92 = 0;
            v93 = *a4;
            v94 = *a4;
            do
            {
              if (v94)
              {
                v95 = 0;
                do
                {
                  if (*(*(a4 + 2) + a4[2] * (v95 + v94 * v92)) == 1)
                  {
                    v96 = *(a5 + 16) + 16 * (v95 + *a5 * v92) * *(a5 + 8);
                    v97 = *(v96 + 4);
                    if (*(*(v128 + 40) + 2 * v97) == v132)
                    {
                      v98 = 0;
                      LODWORD(__p[1]) = 0;
                      __p[0] = 0;
                      if (v28)
                      {
                        v99 = *(v129 + 40);
                        v100 = (*(v130 + 40) + 12 * v97);
                        v101 = *(v96 + 8);
                        v102 = *(v96 + 12);
                        v103 = (v99 + 8 * *v100);
                        v104 = *v103;
                        v105 = v101 * v103[1];
                        v106 = (v99 + 8 * v100[1]);
                        v107 = *v106;
                        v108 = (1.0 - v101) - v102;
                        v109 = (v99 + 8 * v100[2]);
                        v110 = *v109;
                        v111 = (v105 + (v102 * v106[1])) + (v108 * v109[1]);
                        v113 = *v89;
                        v112 = v89[1];
                        v114 = ((1.0 - v111) * v112) + -0.5;
                        if (v114 < 0.0)
                        {
                          v114 = 0.0;
                        }

                        v115 = v112 - 1;
                        if (v114 > v115)
                        {
                          v114 = v115;
                        }

                        v116 = ((((v101 * v104) + (v102 * v107)) + (v108 * v110)) * v113) + -0.5;
                        if (v116 < 0.0)
                        {
                          v116 = 0.0;
                        }

                        if (v116 > (v113 - 1))
                        {
                          v116 = (v113 - 1);
                        }

                        v117 = v116;
                        v118 = v114;
                        v98 = sub_24BE04A30(v89, __p, v117, v118);
                      }

                      if (v89[2] == 1)
                      {
                        HIDWORD(__p[0]) = __p[0];
                        LODWORD(__p[1]) = __p[0];
                      }

                      if (a7)
                      {
                        v119 = 0;
                        v120 = *(a3 + 16) + 4 * (v95 + *a3 * v92) * *(a3 + 8);
                        do
                        {
                          *(v120 + 4 * v119) = *(__p + v119);
                          ++v119;
                        }

                        while (a7 > v119);
                      }

                      v93 = *a4;
                      v28 = v98;
                    }
                  }

                  ++v95;
                  v94 = v93;
                }

                while (v95 < v93);
                v91 = a4[1];
                v94 = v93;
              }

              ++v92;
            }

            while (v92 < v91);
          }

          if (v126)
          {
            sub_24BC9EC78(v126);
          }
        }

        else
        {
LABEL_80:
          v28 = v71;
        }

        v75 = ++v132;
        v71 = v28;
      }

      while (v132 < v123);
    }

    else
    {
      LOBYTE(v28) = v71;
    }
  }

  v121 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

void sub_24BE049AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE04A30(uint64_t a1, float *a2, float a3, float a4)
{
  v4 = *(a1 + 8);
  if (v4 >= 1)
  {
    v5 = *(a1 + 4);
    v6 = vcvtms_s32_f32(a3) % *a1;
    v7 = vcvtms_s32_f32(a4) % v5;
    v8 = a3 - v6;
    v9 = a4 - v7;
    v10 = vcvtps_s32_f32(a4) % v5;
    v11 = vcvtps_s32_f32(a3) % *a1;
    v12 = *(a1 + 16);
    v13 = v7 * *a1;
    v14 = (v12 + 4 * ((v13 + v6) * v4));
    v15 = v10 * *a1;
    v16 = (v12 + 4 * ((v15 + v6) * v4));
    v17 = (v12 + 4 * ((v13 + v11) * v4));
    v18 = (v12 + 4 * ((v15 + v11) * v4));
    do
    {
      v19 = *v14++;
      v20 = v19;
      v21 = *v16++;
      v22 = v21;
      v23 = *v17++;
      v24 = v23;
      v25 = *v18++;
      *a2++ = (v8 * ((v9 * v25) + ((1.0 - v9) * v24))) + ((1.0 - v8) * ((v9 * v22) + ((1.0 - v9) * v20)));
      --v4;
    }

    while (v4);
  }

  return 1;
}

uint64_t sub_24BE04B04(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  if (*(a3 + 8) >= 3u)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(a3 + 8);
  }

  return sub_24BE04020(a1, a2, a3, a4, a5, 1, v5);
}

BOOL sub_24BE04B1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_24BC836D4(__p, off_27F078F98[0]);
  v52[0] = 0;
  v52[1] = 0;
  v14 = sub_24BCB6470((a1 + 8), v52, __p);
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  v47 = v14;
  v15 = (*(a1 + 8) + 16 * v14);
  v17 = *v15;
  v16 = v15[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v16);
  }

  sub_24BCB2008(__p, 3uLL);
  v18 = a4[1];
  if (v18)
  {
    v19 = 0;
    v20 = *a4;
    __asm { FMOV            V0.4S, #1.0 }

    v48 = _Q0;
    v26 = *a4;
    do
    {
      if (v26)
      {
        v27 = 0;
        do
        {
          if (*(*(a4 + 2) + a4[2] * (v27 + v19 * v26)) == 1)
          {
            v28 = *(a5 + 16) + 16 * (v27 + v19 * *a5) * *(a5 + 8);
            LODWORD(v52[0]) = *(v28 + 4);
            sub_24BCD567C(a1, v52, __p);
            v29 = *(*a8 + 48 * *(*(a7 + 16) + 4 * (v27 + v19 * *a7) * *(a7 + 8)) + 32);
            v30 = *(*(a6 + 16) + 16 * (v27 + v19 * *a6) * *(a6 + 8));
            v31 = vmulq_f32(v29, v30);
            v31.i32[3] = 0;
            v32 = vsubq_f32(v29, vmulq_n_f32(v30, vaddv_f32(*&vpaddq_f32(v31, v31))));
            v33 = vmulq_f32(v32, v32);
            v33.i32[3] = 0;
            v34 = vpaddq_f32(v33, v33);
            v35 = vpaddq_f32(v34, v34);
            v36 = xmmword_24BFBD1C0;
            if (v35.f32[0] > 0.0)
            {
              v36 = vdivq_f32(v32, vsqrtq_f32(v35));
            }

            v37 = vaddq_f32(vmulq_n_f32(*(*(v17 + 40) + 16 * *(__p[0] + 2)), (1.0 - *(v28 + 8)) - *(v28 + 12)), vaddq_f32(vmulq_n_f32(*(*(v17 + 40) + 16 * *__p[0]), *(v28 + 8)), vmulq_n_f32(*(*(v17 + 40) + 16 * *(__p[0] + 1)), *(v28 + 12))));
            v38 = vmulq_f32(v37, v37);
            v38.i32[3] = 0;
            v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
            v38.f32[0] = sqrtf(vaddv_f32(*v38.f32));
            v39 = vdivq_f32(v37, vdupq_lane_s32(*v38.f32, 0));
            v40 = vmulq_f32(v39, vmlsq_f32(vmulq_f32(vuzp2q_s32(vextq_s8(v30, v30, 4uLL), v30), vzip2q_s32(vzip1q_s32(v36, vextq_s8(v36, v36, 0xCuLL)), v36)), vzip2q_s32(vzip1q_s32(v30, vextq_s8(v30, v30, 0xCuLL)), v30), vuzp2q_s32(vextq_s8(v36, v36, 4uLL), v36)));
            v40.i32[3] = 0;
            v41 = vmulq_f32(v39, v36);
            v41.i32[3] = 0;
            v42 = vmulq_f32(v39, v30);
            v42.i32[3] = 0;
            v39.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(vaddv_f32(*&vpaddq_f32(v41, v41))), COERCE_UNSIGNED_INT(vaddv_f32(*&vpaddq_f32(v40, v40))));
            v39.i64[1] = COERCE_UNSIGNED_INT(vaddv_f32(*&vpaddq_f32(v42, v42)));
            v43 = vmulq_f32(v39, v39);
            v43.i32[3] = 0;
            v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
            v43.f32[0] = sqrtf(vaddv_f32(*v43.f32));
            v41.i64[0] = 0x3F0000003F000000;
            v41.i64[1] = 0x3F0000003F000000;
            v44 = vmulq_f32(vaddq_f32(vdivq_f32(v39, vdupq_lane_s32(*v43.f32, 0)), v48), v41);
            v45 = *(a3 + 16) + 4 * (v27 + v19 * *a3) * *(a3 + 8);
            *(v45 + 8) = v44.i32[2];
            *v45 = v44.i64[0];
            v20 = *a4;
          }

          ++v27;
          v26 = v20;
        }

        while (v27 < v20);
        v18 = a4[1];
        v26 = v20;
      }

      ++v19;
    }

    while (v19 < v18);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v47 != -1;
}

void sub_24BE04E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BE04E78(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  sub_24BC836D4(__p, off_27F078F98[0]);
  v52[0] = 0;
  v52[1] = 0;
  v10 = sub_24BCB6470((a1 + 8), v52, __p);
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = (*(a1 + 8) + 16 * v10);
  v13 = *v11;
  v12 = v11[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v12);
  }

  sub_24BCB2008(__p, 3uLL);
  v15 = a3[1];
  if (v15)
  {
    v16 = 0;
    v17 = *a3;
    v14.f64[0] = 0.999;
    v48 = v14;
    __asm { FMOV            V0.4S, #1.0 }

    v49 = _Q0;
    v23 = *a3;
    do
    {
      if (v23)
      {
        v24 = 0;
        do
        {
          if (*(*(a3 + 2) + a3[2] * (v24 + v16 * v23)) == 1)
          {
            v25 = *(a4 + 16) + 16 * (v24 + v16 * *a4) * *(a4 + 8);
            LODWORD(v52[0]) = *(v25 + 4);
            sub_24BCD567C(a1, v52, __p);
            v27 = *(a5 + 16) + 16 * (v24 + v16 * *a5) * *(a5 + 8);
            if (v10 == -1)
            {
              v29 = *v27;
              v37 = 0uLL;
              v36 = 0uLL;
            }

            else
            {
              v26.f64[0] = fabsf(*(v27 + 8));
              v28 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v48, v26).i64[0], 0), xmmword_24BFBD200, xmmword_24BFBD1C0);
              v29 = *v27;
              v30 = vuzp2q_s32(vextq_s8(v29, v29, 4uLL), *v27);
              v31 = vzip2q_s32(vzip1q_s32(*v27, vextq_s8(v29, v29, 0xCuLL)), *v27);
              v32 = vmlsq_f32(vmulq_f32(v30, vzip2q_s32(vzip1q_s32(v28, vextq_s8(v28, v28, 0xCuLL)), v28)), v31, vuzp2q_s32(vextq_s8(v28, v28, 4uLL), v28));
              v33 = vmulq_f32(v32, v32);
              v33.i32[3] = 0;
              v34 = vpaddq_f32(v33, v33);
              v35 = vpaddq_f32(v34, v34);
              v36 = xmmword_24BFBD1C0;
              if (v35.f32[0] > 0.0)
              {
                v36 = vdivq_f32(v32, vsqrtq_f32(v35));
              }

              v37 = vmlsq_f32(vmulq_f32(v31, vuzp2q_s32(vextq_s8(v36, v36, 4uLL), v36)), vzip2q_s32(vzip1q_s32(v36, vextq_s8(v36, v36, 0xCuLL)), v36), v30);
            }

            v38 = vaddq_f32(vmulq_n_f32(*(*(v13 + 40) + 16 * *(__p[0] + 2)), (1.0 - *(v25 + 8)) - *(v25 + 12)), vaddq_f32(vmulq_n_f32(*(*(v13 + 40) + 16 * *__p[0]), *(v25 + 8)), vmulq_n_f32(*(*(v13 + 40) + 16 * *(__p[0] + 1)), *(v25 + 12))));
            v39 = vmulq_f32(v38, v38);
            v39.i32[3] = 0;
            v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
            v39.f32[0] = sqrtf(vaddv_f32(*v39.f32));
            v40 = vdivq_f32(v38, vdupq_lane_s32(*v39.f32, 0));
            v41 = vmulq_f32(v40, v36);
            v41.i32[3] = 0;
            v42 = vmulq_f32(v40, v37);
            v42.i32[3] = 0;
            v43 = vmulq_f32(v40, v29);
            v43.i32[3] = 0;
            v40.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(vaddv_f32(*&vpaddq_f32(v42, v42))), COERCE_UNSIGNED_INT(vaddv_f32(*&vpaddq_f32(v41, v41))));
            v40.i64[1] = COERCE_UNSIGNED_INT(vaddv_f32(*&vpaddq_f32(v43, v43)));
            v44 = vmulq_f32(v40, v40);
            v44.i32[3] = 0;
            v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
            v44.f32[0] = sqrtf(vaddv_f32(*v44.f32));
            v41.i64[0] = 0x3F0000003F000000;
            v41.i64[1] = 0x3F0000003F000000;
            v45 = vmulq_f32(vaddq_f32(vdivq_f32(v40, vdupq_lane_s32(*v44.f32, 0)), v49), v41);
            v46 = *(a2 + 16) + 4 * (v24 + v16 * *a2) * *(a2 + 8);
            *(v46 + 8) = v45.i32[2];
            *v46 = v45.i64[0];
            v17 = *a3;
          }

          ++v24;
          v23 = v17;
        }

        while (v24 < v17);
        v15 = a3[1];
        v23 = v17;
      }

      ++v16;
    }

    while (v16 < v15);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v10 != -1;
}

void sub_24BE051C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BE051F4(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  sub_24BC836D4(__p, off_27F078F98[0]);
  v27 = 0uLL;
  v8 = sub_24BCB6470((a1 + 8), &v27, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(a1 + 8) + 16 * v8);
  v11 = *v9;
  v10 = v9[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v10);
  }

  sub_24BCB2008(__p, 3uLL);
  v12 = a3[1];
  if (v12)
  {
    v13 = 0;
    v14 = *a3;
    v15 = *a3;
    do
    {
      if (v15)
      {
        v16 = 0;
        do
        {
          if (*(*(a3 + 2) + a3[2] * (v16 + v15 * v13)) == 1)
          {
            v17 = *(a4 + 16) + 16 * (v16 + *a4 * v13) * *(a4 + 8);
            v24 = *(v17 + 4);
            sub_24BCD567C(a1, &v24, __p);
            v18 = 0;
            v19 = vaddq_f32(vmulq_n_f32(*(*(v11 + 40) + 16 * *(__p[0] + 2)), (1.0 - *(v17 + 8)) - *(v17 + 12)), vaddq_f32(vmulq_n_f32(*(*(v11 + 40) + 16 * *__p[0]), *(v17 + 8)), vmulq_n_f32(*(*(v11 + 40) + 16 * *(__p[0] + 1)), *(v17 + 12))));
            v20 = vmulq_f32(v19, v19);
            v20.i32[3] = 0;
            v20.i64[0] = vpaddq_f32(v20, v20).u64[0];
            v20.f32[0] = sqrtf(vaddv_f32(*v20.f32));
            v27 = vdivq_f32(v19, vdupq_lane_s32(*v20.f32, 0));
            v21 = *(a2 + 16) + 4 * *(a2 + 8) * (v16 + v13 * *a2);
            do
            {
              v22 = (v27.f32[v18] + 1.0) * 0.5;
              *(v21 + v18 * 4) = v22;
              ++v18;
            }

            while (v18 != 3);
            v14 = *a3;
          }

          ++v16;
          v15 = v14;
        }

        while (v16 < v14);
        v12 = a3[1];
        v15 = v14;
      }

      ++v13;
    }

    while (v13 < v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v8 != -1;
}

void sub_24BE05414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BE05444(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v6 = a2[1];
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = 0;
  v8 = *a2;
  v9 = *(a2 + 2);
  LODWORD(a6) = -8388609;
  v10 = 3.4028e38;
  v11 = vdupq_n_s64(4uLL);
  v12 = 1;
  v13 = a2[2];
  do
  {
    if (v8)
    {
      v14 = 0;
      v15 = *(a3 + 16);
      v16 = *a3 * v7;
      v17 = *(a3 + 8);
      v18 = *(a1 + 8);
      v19 = vdupq_n_s64(v18 - 1);
      v20 = *(a1 + 16) + 8;
      v21 = v18 * *a1 * v7;
      do
      {
        if (*(v9 + v13 * (v8 * v7 + v14)) == 1)
        {
          v22 = (v15 + 16 * ((v16 + v14) * v17));
          if (v18)
          {
            v23 = *v22;
            v24 = (v18 + 3) & 0x1FFFFFFFCLL;
            v25 = xmmword_24BFBC5B0;
            v26 = xmmword_24BFBC5E0;
            v27 = (v20 + 4 * v21);
            do
            {
              v28 = vmovn_s64(vcgeq_u64(v19, v25));
              if (vuzp1_s16(v28, *&a6).u8[0])
              {
                *(v27 - 2) = v23;
              }

              if (vuzp1_s16(v28, *&a6).i8[2])
              {
                *(v27 - 1) = v23;
              }

              if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v19, *&v26))).i32[1])
              {
                *v27 = v23;
                v27[1] = v23;
              }

              v26 = vaddq_s64(v26, v11);
              v25 = vaddq_s64(v25, v11);
              v27 += 4;
              v24 -= 4;
            }

            while (v24);
          }

          if (*v22 >= *&a6)
          {
            *&a6 = *v22;
          }

          if (v10 >= *v22)
          {
            v10 = *v22;
          }

          v29 = (v12 & 1) == 0;
          v12 = 0;
          if (!v29)
          {
            v10 = *v22;
            *&a6 = *v22;
          }
        }

        ++v14;
        v21 += v18;
      }

      while (v14 != v8);
    }

    ++v7;
  }

  while (v7 != v6);
  if ((v12 & 1) == 0)
  {
    v33 = -v10;
    if (*&a6 >= -v10)
    {
      v33 = *&a6;
    }

    if (v33 > 0.0)
    {
      v34 = (*(a1 + 4) * *a1 * *(a1 + 8));
      if (v34)
      {
        v35 = *(a1 + 16);
        do
        {
          *v35 = *v35 + 0.5;
          ++v35;
          --v34;
        }

        while (v34);
      }
    }

    if (a5)
    {
      v36 = v10;
      if (*(a4 + 352) < v36)
      {
        v36 = *(a4 + 352);
      }

      v37 = *&a6;
      if (*(a4 + 360) > v37)
      {
        v37 = *(a4 + 360);
      }

      *(a4 + 352) = v36;
      *(a4 + 360) = v37;
    }
  }

  else
  {
LABEL_24:
    v30 = (*(a1 + 4) * *a1 * *(a1 + 8));
    if (v30)
    {
      v31 = *(a1 + 16);
      do
      {
        *v31 = *v31 + 0.5;
        ++v31;
        --v30;
      }

      while (v30);
    }

    v12 = 1;
  }

  return (v12 & 1) == 0;
}

BOOL sub_24BE05670(uint64_t a1, unsigned int *a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, float32_t a8)
{
  sub_24BC836D4(v113, off_27F078F98[0]);
  v111 = 0;
  v112 = 0;
  v14 = sub_24BCB6470((a1 + 8), &v111, v113);
  if (v114 < 0)
  {
    operator delete(v113[0]);
  }

  v15 = (*(a1 + 8) + 16 * v14);
  v16 = v15[1];
  v92 = *v15;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v16);
  }

  sub_24BCB2008(v113, 3uLL);
  sub_24BE07478(&v111, 0x40000uLL);
  sub_24BE07478(&v109, 0x40000uLL);
  sub_24BE075AC(v108, 0xAAAAAAAAAAAAAAABLL * ((v112 - v111) >> 4));
  sub_24BE075AC(v107, 0xAAAAAAAAAAAAAAABLL * ((v110 - v109) >> 4));
  v106 = 0;
  sub_24BE47938(a3, &v106);
  v105 = 0;
  sub_24BCA123C(__p, 0x80000uLL);
  v19 = a2[1];
  if (!v19)
  {
    v71 = 1;
    goto LABEL_88;
  }

  v90 = a3;
  v20 = 0;
  v21 = 0;
  v22 = *a2;
  v23 = *a2;
  v95 = 1;
  do
  {
    if (v23)
    {
      v24 = 0;
      v91 = v21;
      do
      {
        if (*(*(a2 + 2) + a2[2] * (v24 + v23 * v21)) == 1)
        {
          v103 = *(*(a7 + 16) + 4 * (v24 + *a7 * v21) * *(a7 + 8));
          sub_24BCD567C(a1, &v103, v113);
          v100 = v20;
          v25 = (*(a6 + 16) + 16 * (v24 + *a6 * v21) * *(a6 + 8));
          v26.i32[0] = *v25;
          v27 = v25[1];
          v28 = v25[2];
          v29 = v113[0];
          v30 = *v113[0];
          v31 = (*(a1 + 8) + 16 * *(a1 + 176));
          v33 = *v31;
          v32 = v31[1];
          v101 = v27;
          v102 = v28;
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            v98 = v26;
            sub_24BC9EC78(v32);
            v29 = v113[0];
            v34 = (*(a1 + 8) + 16 * *(a1 + 176));
            v35 = *v34;
            v32 = v34[1];
            v97 = vdupq_lane_s32(v98, 0);
            v99 = vmulq_n_f32(*(*(v33 + 40) + 16 * v30), *v98.i32);
            v36 = *(v113[0] + 1);
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v32);
              v29 = v113[0];
              v37 = (*(a1 + 8) + 16 * *(a1 + 176));
              v33 = v35;
              v35 = *v37;
              v32 = v37[1];
            }

            else
            {
              v33 = *v34;
            }

            v21 = v91;
            v27 = v101;
            v28 = v102;
          }

          else
          {
            v97 = vdupq_lane_s32(v26, 0);
            v99 = vmulq_n_f32(*(*(v33 + 40) + 16 * v30), *v26.i32);
            v36 = *(v113[0] + 1);
            v35 = *v31;
          }

          v38 = *(*(v33 + 40) + 16 * v36);
          v39 = v29[2];
          v40 = v39;
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            v96 = v38;
            sub_24BC9EC78(v32);
            v38 = v96;
            v27 = v101;
            v28 = v102;
            v29 = v113[0];
            v40 = *(v113[0] + 2);
          }

          v41 = vaddq_f32(vaddq_f32(vmulq_f32(v97, *(*(v92 + 40) + 16 * *v29)), vmulq_n_f32(*(*(v92 + 40) + 16 * v29[1]), v27)), vmulq_n_f32(*(*(v92 + 40) + 16 * v40), v28));
          v42 = vmulq_f32(v41, v41);
          v42.i32[3] = 0;
          v43 = vpaddq_f32(v42, v42);
          v44 = vpaddq_f32(v43, v43);
          v45 = xmmword_24BFBD1C0;
          if (v44.f32[0] > 0.0)
          {
            v45 = vdivq_f32(v41, vsqrtq_f32(v44));
          }

          v46 = vaddq_f32(vaddq_f32(v99, vmulq_n_f32(v38, v27)), vmulq_n_f32(*(*(v35 + 40) + 16 * v39), v28));
          v47 = &v111[48 * v100];
          *v47 = v46;
          v47[1] = v45;
          v47[2].i32[0] = 0;
          v47[2].f32[1] = a8;
          v48 = &v109[48 * v100];
          *v48 = v46;
          v48[1] = vnegq_f32(v45);
          v48[2].i32[0] = 0;
          v48[2].f32[1] = a8;
          v49 = (__p[0] + 8 * v100);
          *v49 = v24;
          v49[1] = v21;
          v20 = v100 + 1;
          if (v100 == 0x3FFFF)
          {
            v105 = 2;
            sub_24BE46DA0(v90, &v105, v17, v18);
            v52 = v95 && sub_24BE4794C(v90, &v111, v108);
            LODWORD(v105) = 1;
            sub_24BE46DA0(v90, &v105, v50, v51);
            v95 = v52 && sub_24BE4794C(v90, &v109, v107);
            v53 = 0;
            v54 = 0;
            v55 = 4;
            while (1)
            {
              v56 = *(__p[0] + v55 - 4);
              v57 = *(__p[0] + v55);
              v58 = *(v108[0] + v53);
              if (v58 == -1.0)
              {
                v64 = v107[0] + v53;
                v61 = *(v107[0] + v53);
                if (v61 != -1.0 && *(v64 + 1) < a4)
                {
                  goto LABEL_40;
                }
              }

              else
              {
                v59 = *(v108[0] + v53 + 4);
                v60 = v107[0] + v53;
                v61 = *(v107[0] + v53);
                if (v61 == -1.0)
                {
                  if (v59 < a4)
                  {
LABEL_43:
                    v65 = *(a5 + 16) + 16 * ((v56 + *a5 * v57) * *(a5 + 8));
                    v67 = v108[0] + v53;
                    *v65 = *(v108[0] + v53);
                    *(v65 + 8) = *(v67 + 2);
                    v66 = *(v67 + 3);
                    goto LABEL_48;
                  }
                }

                else
                {
                  v62 = *(v60 + 1);
                  if (v59 < a4 && v62 < a4)
                  {
                    if (v58 >= v61)
                    {
                      *v60 = -v61;
                    }

                    else
                    {
                      v60 = v108[0] + 16 * v54;
                    }

                    v65 = *(a5 + 16) + 16 * ((v56 + *a5 * v57) * *(a5 + 8));
                    *v65 = *v60;
                    *(v65 + 8) = *(v60 + 2);
                    v66 = *(v60 + 3);
                    goto LABEL_48;
                  }

                  if (v59 < a4)
                  {
                    goto LABEL_43;
                  }

                  if (v62 < a4)
                  {
                    v64 = v107[0] + 16 * v54;
LABEL_40:
                    *v64 = -v61;
                    v65 = *(a5 + 16) + 16 * ((v56 + *a5 * v57) * *(a5 + 8));
                    *v65 = *v64;
                    *(v65 + 8) = *(v64 + 2);
                    v66 = *(v64 + 3);
LABEL_48:
                    *(v65 + 12) = v66;
                    goto LABEL_49;
                  }
                }
              }

              *(*(a2 + 2) + (v56 + *a2 * v57) * a2[2]) = 0;
LABEL_49:
              ++v54;
              v53 += 16;
              v55 += 8;
              if (v53 == 0x400000)
              {
                v20 = 0;
                break;
              }
            }
          }

          v22 = *a2;
        }

        ++v24;
        v23 = v22;
      }

      while (v24 < v22);
      v19 = a2[1];
      v23 = v22;
    }

    ++v21;
  }

  while (v21 < v19);
  if (!v20)
  {
    a3 = v90;
    v71 = v95;
    goto LABEL_88;
  }

  v105 = 2;
  sub_24BE46DA0(v90, &v105, v17, v18);
  v70 = v95 && sub_24BE4794C(v90, &v111, v108);
  LODWORD(v105) = 1;
  sub_24BE46DA0(v90, &v105, v68, v69);
  v71 = v70 && sub_24BE4794C(v90, &v109, v107);
  v72 = 0;
  v73 = 0;
  v74 = 1;
  v75 = 1;
  do
  {
    v76 = *(__p[0] + v74 - 1);
    v77 = *(__p[0] + v74);
    v78 = v108[0];
    v79 = v108[0] + v72;
    v80 = *(v108[0] + v72);
    if (v80 == -1.0)
    {
      v83 = *(v107[0] + v72);
      if (v83 == -1.0 || *(v107[0] + v72 + 4) >= a4)
      {
LABEL_80:
        *(*(a2 + 2) + (v76 + *a2 * v77) * a2[2]) = 0;
        goto LABEL_86;
      }

      v82 = v107[0] + 16 * v73;
    }

    else
    {
      v81 = *(v79 + 1);
      v82 = v107[0] + v72;
      v83 = *(v107[0] + v72);
      if (v83 == -1.0)
      {
        if (v81 >= a4)
        {
          goto LABEL_80;
        }

LABEL_81:
        v86 = *(a5 + 16) + 16 * ((v76 + *a5 * v77) * *(a5 + 8));
        *v86 = *(v108[0] + v72);
        *(v86 + 8) = *&v78[v72 + 8];
        v87 = *&v78[v72 + 12];
        goto LABEL_85;
      }

      v84 = *(v82 + 1);
      if (v81 < a4 && v84 < a4)
      {
        if (v80 >= v83)
        {
          v79 = v107[0] + 16 * v73;
          *v82 = -v83;
        }

        v86 = *(a5 + 16) + 16 * ((v76 + *a5 * v77) * *(a5 + 8));
        *v86 = *v79;
        *(v86 + 8) = *(v79 + 2);
        v87 = *(v79 + 3);
        goto LABEL_85;
      }

      if (v81 < a4)
      {
        goto LABEL_81;
      }

      if (v84 >= a4)
      {
        goto LABEL_80;
      }
    }

    *v82 = -v83;
    v86 = *(a5 + 16) + 16 * ((v76 + *a5 * v77) * *(a5 + 8));
    *v86 = *v82;
    *(v86 + 8) = *(v82 + 2);
    v87 = *(v82 + 3);
LABEL_85:
    *(v86 + 12) = v87;
LABEL_86:
    v73 = v75;
    v72 += 16;
    v88 = v20 > v75++;
    v74 += 2;
  }

  while (v88);
  a3 = v90;
LABEL_88:
  sub_24BE46DA0(a3, &v106, v17, v18);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v107[0])
  {
    v107[1] = v107[0];
    operator delete(v107[0]);
  }

  if (v108[0])
  {
    v108[1] = v108[0];
    operator delete(v108[0]);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (v113[0])
  {
    v113[1] = v113[0];
    operator delete(v113[0]);
  }

  return v71;
}

void sub_24BE05EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  v40 = *(v38 - 224);
  if (v40)
  {
    *(v38 - 216) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 200);
  if (v41)
  {
    *(v38 - 192) = v41;
    operator delete(v41);
  }

  v42 = *(v38 - 176);
  if (v42)
  {
    *(v38 - 168) = v42;
    operator delete(v42);
  }

  v43 = *v37;
  if (*v37)
  {
    *(v37 + 8) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE05F70(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  v4 = v2;
  v5 = 0;
  sub_24BCBF640(&v3);
}

void sub_24BE06814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  v40 = *(v38 - 216);
  if (v40)
  {
    *(v38 - 208) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 192);
  if (v41)
  {
    *(v38 - 184) = v41;
    operator delete(v41);
  }

  v42 = *(v38 - 168);
  if (v42)
  {
    *(v38 - 160) = v42;
    operator delete(v42);
  }

  v43 = *(v38 - 128);
  if (v43)
  {
    MEMORY[0x24C254890](v43, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE068E4(unsigned int *a1)
{
  v2 = *a1;
  v1 = a1[1];
  operator new[]();
}

void sub_24BE06BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  MEMORY[0x24C254890](v17, 0x1000C8077774924);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE06C04(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, int a6)
{
  v8 = (a1 + 104);
  v9 = (*(a1 + 112) - *(a1 + 104)) >> 2;
  LODWORD(v77[0]) = 0;
  sub_24BCDEA88(&v78, v9);
  v73 = v8;
  if (v8[1] == *v8)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    do
    {
      LODWORD(v77[0]) = v11 - 1;
      if (sub_24BCD93B0(a1, v77))
      {
        v78[v10] = 1.0;
      }

      v10 = v11;
      v12 = (*(a1 + 112) - *(a1 + 104)) >> 2;
    }

    while (v12 > v11++);
  }

  if (v79 - v78 >= 1)
  {
    memset_pattern16(v78, &unk_24BFED810, v79 - v78);
  }

  v14 = v12;
  if (v12)
  {
    operator new();
  }

  if (a6)
  {
    v15 = 0;
    while (1)
    {
      v72 = v15;
      if (v14)
      {
        break;
      }

LABEL_38:
      v15 = v72 + 1;
      if (v72 + 1 == a6)
      {
        goto LABEL_39;
      }
    }

    v16 = 0;
    do
    {
      if (*(4 * v16) == 3)
      {
        LODWORD(__p[0]) = v16;
        sub_24BCB8F94(v77, v73, __p);
        for (i = sub_24BCB8FBC(v77); i != -1; i = sub_24BCB8FBC(v77))
        {
          v18 = (*(a1 + 8) + 16 * *(a1 + 176));
          v20 = *v18;
          v19 = v18[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v19);
            v21 = (*(a1 + 8) + 16 * *(a1 + 176));
            v23 = *v21;
            v22 = v21[1];
            v24 = *(*(v20 + 40) + 16 * i);
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              v74 = v24;
              sub_24BC9EC78(v22);
              v24 = v74;
            }

            v20 = v23;
          }

          else
          {
            v24 = *(*(v20 + 40) + 16 * i);
          }

          v25 = vsubq_f32(v24, *(*(v20 + 40) + 16 * v16));
          v26 = vmulq_f32(v25, v25);
          v26.i32[3] = 0;
          v27 = sqrtf(vaddv_f32(*&vpaddq_f32(v26, v26)));
          v28 = *(4 * i);
          if (v28 == 2)
          {
            v29 = v27 + v78[v16];
            if (v78[i] > v29)
            {
              v78[i] = v29;
            }
          }

          else if (v28 == 1)
          {
            v78[i] = v27 + v78[v16];
            *(4 * i) = 2;
          }
        }
      }

      ++v16;
    }

    while (v16 != v12);
    v14 = v12;
    v30 = v12;
    v31 = 0;
    while (*v31 != 3)
    {
      if (*v31 == 2)
      {
        v32 = 3;
LABEL_36:
        *v31 = v32;
      }

      ++v31;
      if (!--v30)
      {
        goto LABEL_38;
      }
    }

    v32 = 4;
    goto LABEL_36;
  }

LABEL_39:
  if (v14)
  {
    v33 = -1.0;
    v34 = v78;
    v35 = v14;
    do
    {
      v36 = *v34++;
      v37 = v36;
      if (v36 > v33)
      {
        v33 = v37;
      }

      --v35;
    }

    while (v35);
    if (v33 < 0.00000001)
    {
      v33 = 0.00000001;
    }

    v38 = v78;
    do
    {
      v39 = 0.0;
      if (*v38 >= -0.001)
      {
        v39 = (v33 - *v38) / v33;
      }

      *v38++ = v39;
      --v14;
    }

    while (v14);
  }

  v40 = (*(a1 + 112) - *(a1 + 104)) >> 2;
  LODWORD(__p[0]) = 1056964608;
  sub_24BCDEA88(v77, v40);
  sub_24BE400E0(a1, v77, &v78);
  v41 = v78;
  v42 = v79;
  if (v78 != v79)
  {
    while (1)
    {
      v43 = *v41;
      if (*v41 > 1.0)
      {
        break;
      }

      v44 = 0.0;
      if (v43 >= 0.0)
      {
        goto LABEL_54;
      }

LABEL_55:
      *v41++ = v44;
      if (v41 == v42)
      {
        goto LABEL_56;
      }
    }

    *v41 = 1.0;
    v43 = 1.0;
LABEL_54:
    v44 = v43;
    goto LABEL_55;
  }

LABEL_56:
  sub_24BCB2008(__p, 3uLL);
  v46 = *a2;
  v45 = a2[1];
  if (v45 != *a2)
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = (v46 + 24 * v47);
      v50 = v49[1];
      if (v50)
      {
        v51 = 0;
        v52 = *a3 + 24 * v47;
        v53 = *a4 + 24 * v47;
        v54 = *v49;
        v55 = *v49;
        do
        {
          if (v55)
          {
            v56 = 0;
            do
            {
              if (*(*(v49 + 2) + v49[2] * (v56 + v51 * v55)) == 1)
              {
                v75 = *(*(v53 + 16) + 4 * (v56 + v51 * *v53) * *(v53 + 8));
                sub_24BCD567C(a1, &v75, __p);
                _Q0 = *(*(v52 + 16) + 16 * (v56 + v51 * *v52) * *(v52 + 8));
                v58 = v78[*__p[0]];
                v59 = v78[*(__p[0] + 1)];
                _S2 = v78[*(__p[0] + 2)];
                __asm { FMLA            S1, S2, V0.S[2] }

                v66 = (*(*(*a5 + 16 * v47) + 16) + 4 * (v56 + v51 * **(*a5 + 16 * v47)) * *(*(*a5 + 16 * v47) + 8));
                *v66 = _S1;
                v66[1] = _S1;
                v66[2] = _S1;
                v54 = *v49;
              }

              ++v56;
              v55 = v54;
            }

            while (v56 < v54);
            v50 = v49[1];
            v55 = v54;
          }

          ++v51;
        }

        while (v51 < v50);
        v46 = *a2;
        v45 = a2[1];
      }

      v47 = ++v48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v45 - v46) >> 3) > v48);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v77[0])
  {
    v77[1] = v77[0];
    operator delete(v77[0]);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  return 1;
}

void sub_24BE071A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE0721C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      sub_24BCA4268(a1, v9);
    }

    __p = 0;
    v13 = 48 * v6;
    v15 = 0;
    v11 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero((48 * v6), v11);
    v14 = 48 * v6 + v11;
    sub_24BE073F8(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 48) % 0x30 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BE073A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE073F8(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = *v2;
      v5[1] = v2[1];
      v5[2] = v2[2];
      v2 += 3;
      v5 += 3;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void *sub_24BE07478(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BE07508(result, a2);
  }

  return result;
}

void sub_24BE074EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE07508(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_24BE07554(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BE07554(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void *sub_24BE075AC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA182C(result, a2);
  }

  return result;
}

void sub_24BE07608(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE07624(int32x2_t **a1, uint64_t a2, uint64_t a3, float32x2_t a4, float a5)
{
  v7 = a1;
  v8 = 0;
  v9 = **a1;
  a4.f32[1] = 1.0 - a5;
  __asm { FMOV            V1.2D, #-0.5 }

  v15 = vaddq_f64(vcvtq_f64_f32(vmul_f32(a4, vcvt_f32_u32(v9))), _Q1);
  v16 = vadd_s32(v9, -1);
  v17.i64[0] = v16.u32[0];
  v17.i64[1] = v16.u32[1];
  v18 = vcvtq_f64_u64(v17);
  v19 = vbicq_s8(v15, vcltzq_f64(v15));
  v20 = vcvt_f32_f64(vbslq_s8(vcgtq_f64(v19, v18), v18, v19));
  LOBYTE(a1) = 1;
  do
  {
    while ((a1 & 1) == 0)
    {
      LOBYTE(a1) = 0;
      if (++v8 == 9)
      {
        return;
      }
    }

    v21 = vcvtq_f64_f32(vadd_f32(v20, vcvt_f32_s32(*(a3 + 8 * v8))));
    v22 = vbicq_s8(v21, vcltzq_f64(v21));
    v23 = vadd_s32(**v7, -1);
    v24.i64[0] = v23.u32[0];
    v24.i64[1] = v23.u32[1];
    v25 = vcvtq_f64_u64(v24);
    v26 = vmovn_s64(vcgtq_f64(v22, v25));
    v27 = v22.f64[1];
    if (v26.i8[4])
    {
      v27 = v25.f64[1];
    }

    if (v26.i8[0])
    {
      v22.f64[0] = v25.f64[0];
    }

    v28 = v27;
    v29 = v22.f64[0];
    LODWORD(a1) = sub_24BE04A30(*v7, (a2 + 12 * v8++), v29, v28);
  }

  while (v8 != 9);
  if (a1)
  {
    v30 = 0;
    v31 = 0.0;
    do
    {
      v32 = 0;
      v33 = 0.0;
      v34 = 0.0;
      do
      {
        v35 = *(a2 + v32);
        v34 = v34 + v35;
        v33 = v33 + (v35 * v35);
        v32 += 12;
      }

      while (v32 != 108);
      v31 = v31 + fmaxf(((v33 / 9.0) - ((v34 / 9.0) * (v34 / 9.0))) / 6.5, 0.00001);
      ++v30;
      a2 += 4;
    }

    while (v30 != 3);
    v36 = v31 / (v31 + 0.001);
    pow(1.0 - v36, 0.454545445);
  }
}

uint64_t sub_24BE077F4(uint64_t result, uint64_t a2, uint64_t a3, float32x2_t a4, float a5)
{
  v7 = result;
  v8 = 0;
  v9 = **result;
  a4.f32[1] = 1.0 - a5;
  __asm { FMOV            V1.2D, #-0.5 }

  v15 = vaddq_f64(vcvtq_f64_f32(vmul_f32(a4, vcvt_f32_u32(v9))), _Q1);
  v16 = vadd_s32(v9, -1);
  v17.i64[0] = v16.u32[0];
  v17.i64[1] = v16.u32[1];
  v18 = vcvtq_f64_u64(v17);
  v19 = vbicq_s8(v15, vcltzq_f64(v15));
  v20 = vcvt_f32_f64(vbslq_s8(vcgtq_f64(v19, v18), v18, v19));
  LOBYTE(result) = 1;
  do
  {
    while ((result & 1) == 0)
    {
      result = 0;
      if (++v8 == 9)
      {
        return result;
      }
    }

    v21 = vcvtq_f64_f32(vadd_f32(v20, vcvt_f32_s32(*(a3 + 8 * v8))));
    v22 = vbicq_s8(v21, vcltzq_f64(v21));
    v23 = vadd_s32(**v7, -1);
    v24.i64[0] = v23.u32[0];
    v24.i64[1] = v23.u32[1];
    v25 = vcvtq_f64_u64(v24);
    v26 = vmovn_s64(vcgtq_f64(v22, v25));
    v27 = v22.f64[1];
    if (v26.i8[4])
    {
      v27 = v25.f64[1];
    }

    if (v26.i8[0])
    {
      v22.f64[0] = v25.f64[0];
    }

    v28 = v27;
    v29 = v22.f64[0];
    result = sub_24BE04A30(*v7, (a2 + 12 * v8++), v29, v28);
  }

  while (v8 != 9);
  if (result)
  {
    v30 = (a2 + 60);
    v31 = 0.0;
    v32 = 3;
    do
    {
      v33 = *(v30 - 15);
      v34 = *(v30 - 9);
      v35 = v30[3];
      v36 = (((v34 - v33) + (*(v30 - 6) * -2.0)) + (*v30 * 2.0)) - v35;
      v37 = ((v34 + (v33 + (*(v30 - 12) * 2.0))) - v35) + (v30[6] * -2.0);
      v31 = v31 + (((v37 - v30[9]) * (v37 - v30[9])) + ((v36 + v30[9]) * (v36 + v30[9])));
      ++v30;
      --v32;
    }

    while (v32);
  }

  return result;
}

uint64_t sub_24BE079A0(uint64_t a1, void *a2, void *a3)
{
  v3 = a3[1] - *a3;
  if (v3 >> 2 == ((*(a1 + 112) - *(a1 + 104)) >> 2))
  {
    v4 = a2[1] - *a2;
    if (v4 == 4 || v4 == v3)
    {
      sub_24BE0B630(&v7, v3 >> 2, v3 >> 2);
    }
  }

  return 0;
}

void sub_24BE08178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE0B78C(&a35);
  _Unwind_Resume(a1);
}

void sub_24BE08214(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  v14 = sub_24BE0B850;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_24BE0B888(v2, v3, &v14, v5, 1);
  if (*a1 != -1)
  {
    v6 = 0;
    v7 = a1[5];
    do
    {
      *(v7 + 8 * v6++) = 0;
    }

    while (v6 < *a1 + 1);
  }

  v8 = a1[2];
  v9 = a1[3] - v8;
  if (v9)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v11 = a1[5] + 8;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v12 = 1;
    do
    {
      v13 = *v8;
      v8 += 3;
      *(v11 + 8 * v13) = v12++;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_24BE08518(uint64_t a1, float **a2)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = v5 >> 2;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v7 = *v4 + -0.02;
      if (v7 < 0.0)
      {
        v7 = 0.0;
      }

      v8 = v7 * 0.75;
      if (v8 < 0.0)
      {
        v8 = 0.0;
      }

      if (v8 > 1.0)
      {
        v8 = 1.0;
      }

      *v4++ = (v8 * 0.99) + 0.01;
      --v6;
    }

    while (v6);
  }

  sub_24BCDEA88(__p, (*(a1 + 112) - *(a1 + 104)) >> 2);
  v9 = sub_24BE079A0(a1, __p, a2);
  v10 = *a2;
  v11 = a2[1] - *a2;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    do
    {
      v13 = (*v10 + -0.01) / 0.99;
      if (v13 > 1.0)
      {
        v13 = 1.0;
      }

      if (v13 < 0.0)
      {
        v13 = 0.0;
      }

      *v10++ = v13;
      --v12;
    }

    while (v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v9;
}

void sub_24BE08668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE08684(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24BCB2008(__p, 3uLL);
  v12 = a3[1];
  if (v12)
  {
    v13 = 0;
    v14 = *a3;
    v15 = *a3;
    do
    {
      if (v15)
      {
        v16 = 0;
        do
        {
          if (*(*(a3 + 2) + a3[2] * (v16 + v15 * v13)) == 1)
          {
            v23 = *(*(a5 + 16) + 4 * (v16 + *a5 * v13) * *(a5 + 8));
            sub_24BCD567C(a1, &v23, __p);
            v17 = *(a6 + 8);
            if (v17)
            {
              v18 = (*(a4 + 16) + 16 * (v16 + *a4 * v13) * *(a4 + 8));
              v19 = v18[1] * *(*a2 + 4 * *(__p[0] + 1)) + *(*a2 + 4 * *__p[0]) * *v18 + *(*a2 + 4 * *(__p[0] + 2)) * v18[2];
              v20 = (*(a6 + 16) + 4 * v17 * (v16 + v13 * *a6));
              do
              {
                v21 = 1.0 - v19 + (*v20 * v19);
                *v20++ = v21;
                --v17;
              }

              while (v17);
            }

            v14 = *a3;
          }

          ++v16;
          v15 = v14;
        }

        while (v16 < v14);
        v12 = a3[1];
        v15 = v14;
      }

      ++v13;
    }

    while (v13 < v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 1;
}

void sub_24BE08838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE08854(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  v115 = *MEMORY[0x277D85DE8];
  v16 = objc_autoreleasePoolPush();
  v17 = sub_24BE4857C(a3);
  v18 = *a1;
  *a1 = v17;

  v19 = *a1;
  v104 = 0;
  v20 = sub_24BD4C428(v19, &v104, a6, a8);
  v21 = v104;
  v22 = *(a1 + 8);
  *(a1 + 8) = v20;

  if (!v21)
  {
    v24 = sub_24BE485A4(a3);
    v25 = *(a1 + 24);
    *(a1 + 24) = v24;

    v26 = sub_24BE485C4(a3);
    v27 = *(a1 + 16);
    *(a1 + 16) = v26;

    v28 = 4 * a2;
    v30 = objc_msgSend_newBufferWithLength_options_(*a1, v29, v28, 0);
    v31 = *(a1 + 72);
    *(a1 + 72) = v30;

    v33 = objc_msgSend_newBufferWithLength_options_(*a1, v32, v28, 0);
    v34 = *(a1 + 80);
    *(a1 + 80) = v33;

    v35 = a2;
    v36 = 12 * a2;
    v38 = objc_msgSend_newBufferWithLength_options_(*a1, v37, v36, 0);
    v39 = *(a1 + 32);
    *(a1 + 32) = v38;

    v41 = objc_msgSend_newBufferWithLength_options_(*a1, v40, v36, 0);
    v42 = *(a1 + 40);
    *(a1 + 40) = v41;

    v44 = objc_msgSend_newBufferWithLength_options_(*a1, v43, v28, 0);
    v45 = *(a1 + 48);
    *(a1 + 48) = v44;

    v47 = objc_msgSend_newBufferWithLength_options_(*a1, v46, 32 * v35, 32);
    v48 = *(a1 + 56);
    *(a1 + 56) = v47;

    v50 = objc_msgSend_newBufferWithLength_options_(*a1, v49, 16 * v35, 32);
    v51 = *(a1 + 64);
    *(a1 + 64) = v50;

    v53 = objc_msgSend_newBufferWithLength_options_(*a1, v52, v28, 32);
    v54 = *(a1 + 88);
    *(a1 + 88) = v53;

    v56 = objc_msgSend_newBufferWithLength_options_(*a1, v55, v28, 32);
    v57 = *(a1 + 96);
    *(a1 + 96) = v56;

    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*(a1 + 32)), vceqzq_s64(*(a1 + 48))), vuzp1q_s32(vceqzq_s64(*(a1 + 64)), vceqzq_s64(*(a1 + 80)))))) & 1) != 0 || !*(a1 + 96))
    {
      if (a5)
      {
        sub_24BCA2D38(v112, a7);
        sub_24BC836D4(__p, &unk_24C0435AF);
        sub_24BD6B844(a4, v112, 2, __p);
        if (v103 < 0)
        {
          operator delete(__p[0]);
        }

        v93 = v112;
      }

      else
      {
        LODWORD(v100) = 0;
        v101 = std::system_category();
        sub_24BCA2D38(v111, a7);
        sub_24BC836D4(__p, &unk_24C0435AF);
        sub_24BD6B844(&v100, v111, 2, __p);
        if (v103 < 0)
        {
          operator delete(__p[0]);
        }

        v93 = v111;
      }

      sub_24BC9F08C(v93);
      goto LABEL_24;
    }

    v58 = objc_alloc_init(MEMORY[0x277CD6D30]);
    objc_msgSend_setThreadGroupSizeIsMultipleOfThreadExecutionWidth_(v58, v59, 1, v60);
    v63 = objc_msgSend_newFunctionWithName_(*(a1 + 8), v61, @"szPPfSnwed", v62);
    objc_msgSend_setComputeFunction_(v58, v64, v63, v65);

    v66 = *a1;
    v99 = 0;
    v68 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v66, v67, v58, 0, 0, &v99);
    v69 = v99;
    v70 = *(a1 + 104);
    *(a1 + 104) = v68;

    if (*(a1 + 104))
    {
      v73 = objc_msgSend_newFunctionWithName_(*(a1 + 8), v71, @"EDhdscza3Z", v72);
      objc_msgSend_setComputeFunction_(v58, v74, v73, v75);

      v76 = *a1;
      v98 = v69;
      v78 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v76, v77, v58, 0, 0, &v98);
      v79 = v98;

      v80 = *(a1 + 112);
      *(a1 + 112) = v78;

      v69 = v79;
      if (*(a1 + 112))
      {
        v83 = objc_msgSend_newFunctionWithName_(*(a1 + 8), v81, @"kKPMS8MNt0", v82);
        objc_msgSend_setComputeFunction_(v58, v84, v83, v85);

        v86 = *a1;
        v97 = v79;
        v88 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v86, v87, v58, 0, 0, &v97);
        v89 = v97;

        v91 = *(a1 + 120);
        v90 = (a1 + 120);
        *v90 = v88;

        v69 = v89;
        if (*v90)
        {
          v92 = 1;
LABEL_48:

          goto LABEL_25;
        }

        if (a5)
        {
          sub_24BCA2D38(v106, a7);
          sub_24BC836D4(__p, &unk_24C0435AF);
          sub_24BD6B844(a4, v106, 5, __p);
          if (v103 < 0)
          {
            operator delete(__p[0]);
          }

          v96 = v106;
        }

        else
        {
          LODWORD(v100) = 0;
          v101 = std::system_category();
          sub_24BCA2D38(v105, a7);
          sub_24BC836D4(__p, &unk_24C0435AF);
          sub_24BD6B844(&v100, v105, 5, __p);
          if (v103 < 0)
          {
            operator delete(__p[0]);
          }

          v96 = v105;
        }
      }

      else if (a5)
      {
        sub_24BCA2D38(v108, a7);
        sub_24BC836D4(__p, &unk_24C0435AF);
        sub_24BD6B844(a4, v108, 5, __p);
        if (v103 < 0)
        {
          operator delete(__p[0]);
        }

        v96 = v108;
      }

      else
      {
        LODWORD(v100) = 0;
        v101 = std::system_category();
        sub_24BCA2D38(v107, a7);
        sub_24BC836D4(__p, &unk_24C0435AF);
        sub_24BD6B844(&v100, v107, 5, __p);
        if (v103 < 0)
        {
          operator delete(__p[0]);
        }

        v96 = v107;
      }
    }

    else if (a5)
    {
      sub_24BCA2D38(v110, a7);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(a4, v110, 5, __p);
      if (v103 < 0)
      {
        operator delete(__p[0]);
      }

      v96 = v110;
    }

    else
    {
      LODWORD(v100) = 0;
      v101 = std::system_category();
      sub_24BCA2D38(v109, a7);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(&v100, v109, 5, __p);
      if (v103 < 0)
      {
        operator delete(__p[0]);
      }

      v96 = v109;
    }

    sub_24BC9F08C(v96);
    v92 = 0;
    goto LABEL_48;
  }

  if (a5)
  {
    sub_24BCA2D38(v114, a7);
    sub_24BC836D4(__p, &unk_24C0435AF);
    sub_24BD6B844(a4, v114, 5, __p);
    if (v103 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = v114;
  }

  else
  {
    LODWORD(v100) = 0;
    v101 = std::system_category();
    sub_24BCA2D38(v113, a7);
    sub_24BC836D4(__p, &unk_24C0435AF);
    sub_24BD6B844(&v100, v113, 5, __p);
    if (v103 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = v113;
  }

  sub_24BC9F08C(v23);

LABEL_24:
  v92 = 0;
LABEL_25:
  objc_autoreleasePoolPop(v16);
  v94 = *MEMORY[0x277D85DE8];
  return v92;
}