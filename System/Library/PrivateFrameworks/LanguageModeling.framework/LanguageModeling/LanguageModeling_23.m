void sub_1AE751FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AE75207C(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1AE7524D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5, std::string *a6)
{
  v10 = *(a1 + 88);
  if (*(a5 + 23) < 0)
  {
    sub_1AE5DBF1C(&__p, *a5, *(a5 + 1));
  }

  else
  {
    __p = *a5;
    v30 = *(a5 + 2);
  }

  v31 = v10;
  if (SHIBYTE(v30) < 0)
  {
    sub_1AE5DBF1C(&v32, __p, *(&__p + 1));
    v34 = a2;
    v35 = a3;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v32 = __p;
    v33 = v30;
    v34 = a2;
    v35 = a3;
    v37 = 0;
    v38 = 0;
    v36 = 0;
  }

  if (qword_1EB5E0F70 != -1)
  {
    dispatch_once(&qword_1EB5E0F70, &unk_1F2431010);
  }

  sub_1AE751B0C(&v26, a1, &v31);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v26;
  }

  else
  {
    v11 = v26.__r_.__value_.__r.__words[0];
  }

  sub_1AE693A80("Starting dynamic inline completion beam search , for context length %zu, seeded with empty completion: %s, with ", &v39, a3, v11);
  if ((v41 & 0x80u) == 0)
  {
    v12 = &v39;
  }

  else
  {
    v12 = v39;
  }

  if ((v41 & 0x80u) == 0)
  {
    v13 = v41;
  }

  else
  {
    v13 = v40;
  }

  std::string::append(a6, v12, v13);
  v14 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
  if (v14 < 0)
  {
    size = a6->__r_.__value_.__l.__size_;
    if (size)
    {
      v16 = a6->__r_.__value_.__r.__words[0];
      if (!*(a6->__r_.__value_.__r.__words[0] + size - 1))
      {
        v15 = size - 1;
        a6->__r_.__value_.__l.__size_ = v15;
        goto LABEL_26;
      }
    }
  }

  else if (*(&a6->__r_.__value_.__s + 23) && !a6->__r_.__value_.__s.__data_[v14 - 1])
  {
    v15 = v14 - 1;
    *(&a6->__r_.__value_.__s + 23) = v14 - 1;
    v16 = a6;
LABEL_26:
    v16->__r_.__value_.__s.__data_[v15] = 0;
  }

  std::string::push_back(a6, 10);
  if (v41 < 0)
  {
    operator delete(v39);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
LABEL_29:
  if (*(a1 + 88) >= a4)
  {
    if (*(a5 + 23) < 0)
    {
      sub_1AE5DBF1C(__dst, *a5, *(a5 + 1));
    }

    else
    {
      *__dst = *a5;
      v28 = *(a5 + 2);
    }

    operator new();
  }

  if (qword_1EB5E0F70 != -1)
  {
    dispatch_once(&qword_1EB5E0F70, &unk_1F2431010);
  }

  sub_1AE693A80("Abandoning dynamic inline completion beam search , minimum count threshold %zu not met for context of length %zu", &v39, a4, a3);
  if ((v41 & 0x80u) == 0)
  {
    v18 = &v39;
  }

  else
  {
    v18 = v39;
  }

  if ((v41 & 0x80u) == 0)
  {
    v19 = v41;
  }

  else
  {
    v19 = v40;
  }

  std::string::append(a6, v18, v19);
  v20 = SHIBYTE(a6->__r_.__value_.__r.__words[2]);
  if (v20 < 0)
  {
    v23 = a6->__r_.__value_.__l.__size_;
    if (v23)
    {
      v22 = a6->__r_.__value_.__r.__words[0];
      if (!*(a6->__r_.__value_.__r.__words[0] + v23 - 1))
      {
        v21 = v23 - 1;
        a6->__r_.__value_.__l.__size_ = v21;
        goto LABEL_51;
      }
    }
  }

  else if (*(&a6->__r_.__value_.__s + 23) && !a6->__r_.__value_.__s.__data_[v20 - 1])
  {
    v21 = v20 - 1;
    *(&a6->__r_.__value_.__s + 23) = v20 - 1;
    v22 = a6;
LABEL_51:
    v22->__r_.__value_.__s.__data_[v21] = 0;
  }

  std::string::push_back(a6, 10);
  if (v41 < 0)
  {
    operator delete(v39);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }
}

void sub_1AE753B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (*(v65 - 209) < 0)
  {
    operator delete(*(v65 - 232));
  }

  sub_1AE751794(v65 - 208);
  sub_1AE7540F0(&a34);
  v67 = v63;
  v68 = *v64;
  if (*v64)
  {
    v69 = *(a15 + 24);
    v70 = *v64;
    if (v69 != v68)
    {
      do
      {
        v71 = *(v69 - 3);
        if (v71)
        {
          *(v69 - 2) = v71;
          operator delete(v71);
        }

        if (*(v69 - 41) < 0)
        {
          operator delete(*(v69 - 8));
        }

        v69 -= 72;
      }

      while (v69 != v68);
      v70 = *v64;
    }

    *(a15 + 24) = v68;
    operator delete(v70);
    v67 = v63;
  }

  MEMORY[0x1B2706400](a15, 0x1020C402564D6C4);
  if (a24)
  {
    v72 = *(a24 + 16);
    if (v72)
    {
      v73 = v67;
      v74 = *(a24 + 24);
      v75 = *(a24 + 16);
      if (v74 != v72)
      {
        do
        {
          v76 = *(v74 - 24);
          if (v76)
          {
            *(v74 - 16) = v76;
            operator delete(v76);
          }

          if (*(v74 - 41) < 0)
          {
            operator delete(*(v74 - 64));
          }

          v74 -= 72;
        }

        while (v74 != v72);
        v75 = *(a24 + 16);
      }

      *(a24 + 24) = v72;
      operator delete(v75);
      v67 = v73;
    }

    MEMORY[0x1B2706400](a24, 0x1020C402564D6C4);
    if (!v67)
    {
LABEL_15:
      if ((a48 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if (!v67)
  {
    goto LABEL_15;
  }

  v77 = *(v67 + 16);
  if (v77)
  {
    v78 = v67;
    v79 = *(v67 + 24);
    v80 = v77;
    if (v79 != v77)
    {
      do
      {
        v81 = *(v79 - 3);
        if (v81)
        {
          *(v79 - 2) = v81;
          operator delete(v81);
        }

        if (*(v79 - 41) < 0)
        {
          operator delete(*(v79 - 8));
        }

        v79 -= 72;
      }

      while (v79 != v77);
      v80 = *(v78 + 16);
    }

    *(v78 + 24) = v77;
    operator delete(v80);
    v67 = v78;
  }

  MEMORY[0x1B2706400](v67, 0x1020C402564D6C4);
  if ((a48 & 0x80000000) == 0)
  {
LABEL_40:
    if (a62)
    {
      a63 = a62;
      operator delete(a62);
    }

    if (a59 < 0)
    {
      operator delete(a54);
    }

    _Unwind_Resume(a1);
  }

LABEL_39:
  operator delete(__p);
  goto LABEL_40;
}

void **sub_1AE7540F0(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        if (*(v3 - 41) < 0)
        {
          operator delete(*(v3 - 8));
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1AE754174(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

void sub_1AE7542F0(void *a1, uint64_t a2)
{
  v2 = a2;
  v5 = a1[2];
  v4 = a1[3];
  v6 = (a1 + 2);
  v7 = v4 - v5;
  v8 = 0x8E38E38E38E38E39 * ((v4 - v5) >> 3);
  if (v8 >= a1[1])
  {
    if (v5 == v4)
    {
      __assert_rtn("worst", "PriorityQueue.h", 55, "!m_predictions.empty()");
    }

    if (!sub_1AE754EFC(a2, v5))
    {
      v10 = a1[2];
      v11 = a1[3];
      if (v11 != v10)
      {
        v12 = 0x8E38E38E38E38E39 * ((v11 - v10) >> 3);
        do
        {
          if (sub_1AE754EFC(v2, &v10[18 * (v12 >> 1)]))
          {
            v12 >>= 1;
          }

          else
          {
            v10 += 18 * (v12 >> 1) + 18;
            v12 += ~(v12 >> 1);
          }
        }

        while (v12);
        v11 = v10;
        v10 = *v6;
      }

      v13 = v10 + 18;
      if (v10 + 18 != v11)
      {
        v14 = v10 + 18;
        while (1)
        {
          sub_1AE754B88(v10, v13);
          v10 += 18;
          v13 += 18;
          if (v13 == v11)
          {
            break;
          }

          if (v10 == v14)
          {
            v14 = v13;
          }
        }

        if (v10 != v14)
        {
          v32 = v14;
          while (1)
          {
            sub_1AE754B88(v10, v14);
            v14 += 18;
            v33 = v10 + 18 == v32;
            if (v14 == v11)
            {
              if (v10 + 18 == v32)
              {
                break;
              }

              v14 = v32 + 18;
              v10 += 36;
              while (1)
              {
                sub_1AE754B88(v10 - 18, v32);
                v33 = v10 == v32;
                if (v14 != v11)
                {
                  break;
                }

                v34 = v10 == v32;
                v10 += 18;
                if (v34)
                {
                  goto LABEL_56;
                }
              }
            }

            else
            {
              v10 += 18;
            }

            if (v33)
            {
              v32 = v14;
            }
          }
        }
      }

LABEL_56:
      *(v11 - 18) = *v2;
      v15 = (v11 - 18);
      if (v15 != v2)
      {
        v35 = *(v2 + 31);
        if (*(v15 + 31) < 0)
        {
          if (v35 >= 0)
          {
            v43 = (v2 + 8);
          }

          else
          {
            v43 = *(v2 + 8);
          }

          if (v35 >= 0)
          {
            v44 = *(v2 + 31);
          }

          else
          {
            v44 = *(v2 + 16);
          }

          sub_1AE621B84(v15 + 8, v43, v44);
          goto LABEL_121;
        }

        if ((*(v2 + 31) & 0x80) == 0)
        {
          v36 = *(v2 + 8);
          *(v15 + 24) = *(v2 + 24);
          *(v15 + 8) = v36;
LABEL_121:
          *(v15 + 32) = *(v2 + 32);
          v64 = *(v2 + 48);
          v65 = *(v2 + 56);

          sub_1AE755040((v15 + 48), v64, v65, (v65 - v64) >> 3);
          return;
        }

        v62 = *(v2 + 8);
        v63 = *(v2 + 16);
        v39 = (v15 + 8);
LABEL_120:
        sub_1AE621AB4(v39, v62, v63);
        goto LABEL_121;
      }

LABEL_71:
      *(v15 + 32) = *(v2 + 32);
    }
  }

  else
  {
    if (v4 == v5)
    {
      v9 = a1[3];
    }

    else
    {
      do
      {
        if (sub_1AE754EFC(v2, v5 + 72 * (v8 >> 1)))
        {
          v8 >>= 1;
        }

        else
        {
          v5 += 72 * (v8 >> 1) + 72;
          v8 += ~(v8 >> 1);
        }
      }

      while (v8);
      v9 = v5;
      v4 = a1[3];
      v7 = v5 - a1[2];
      v5 = a1[2];
    }

    v15 = v5 + v7;
    v16 = a1[4];
    if (v4 < v16)
    {
      if (v15 == v4)
      {
        sub_1AE754CE0(v4, v2);
        a1[3] = v4 + 72;
        return;
      }

      v17 = v4;
      if (v4 >= 0x48)
      {
        *v4 = *(v4 - 72);
        v18 = *(v4 - 64);
        *(v4 + 24) = *(v4 - 48);
        *(v4 + 8) = v18;
        *(v4 - 56) = 0;
        *(v4 - 48) = 0;
        *(v4 - 64) = 0;
        *(v4 + 32) = *(v4 - 40);
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
        *(v4 + 48) = 0;
        *(v4 + 48) = *(v4 - 24);
        *(v4 + 64) = *(v4 - 8);
        *(v4 - 24) = 0;
        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        v17 = v4 + 72;
      }

      a1[3] = v17;
      if (v4 != v15 + 72)
      {
        v19 = 0;
        v20 = v7 + v5 - v4 + 72;
        do
        {
          v22 = v4 + v19;
          *(v4 + v19 - 72) = *(v4 + v19 - 144);
          v23 = (v4 + v19 - 64);
          if (*(v4 + v19 - 41) < 0)
          {
            operator delete(*v23);
          }

          v24 = *(v22 - 136);
          *(v4 + v19 - 48) = *(v22 - 120);
          *v23 = v24;
          *(v22 - 113) = 0;
          *(v22 - 136) = 0;
          v25 = *(v22 - 112);
          v28 = *(v22 - 24);
          v27 = (v22 - 24);
          v26 = v28;
          *(v27 - 1) = v25;
          if (v28)
          {
            *(v4 + v19 - 16) = v26;
            operator delete(v26);
            *v27 = 0;
            v27[1] = 0;
            v27[2] = 0;
          }

          v21 = v4 + v19;
          *v27 = *(v4 + v19 - 96);
          *(v21 - 8) = *(v4 + v19 - 80);
          *(v21 - 96) = 0;
          *(v21 - 88) = 0;
          *(v21 - 80) = 0;
          v19 -= 72;
        }

        while (v20 != v19);
        v17 = a1[3];
      }

      v37 = v17 <= v2 || v15 > v2;
      v38 = 72;
      if (v37)
      {
        v38 = 0;
      }

      v2 += v38;
      *v15 = *v2;
      v39 = (v15 + 8);
      if (v15 != v2)
      {
        v40 = *(v2 + 31);
        if (*(v15 + 31) < 0)
        {
          if (v40 >= 0)
          {
            v60 = (v2 + 8);
          }

          else
          {
            v60 = *(v2 + 8);
          }

          if (v40 >= 0)
          {
            v61 = *(v2 + 31);
          }

          else
          {
            v61 = *(v2 + 16);
          }

          sub_1AE621B84(v39, v60, v61);
          goto LABEL_121;
        }

        if ((*(v2 + 31) & 0x80) == 0)
        {
          v41 = *(v2 + 8);
          *(v15 + 24) = *(v2 + 24);
          *v39 = v41;
          goto LABEL_121;
        }

        v62 = *(v2 + 8);
        v63 = *(v2 + 16);
        goto LABEL_120;
      }

      goto LABEL_71;
    }

    v29 = 0x8E38E38E38E38E39 * ((v4 - v5) >> 3) + 1;
    if (v29 > 0x38E38E38E38E38ELL)
    {
      sub_1AE5CBB70();
    }

    v30 = 0x8E38E38E38E38E39 * ((v16 - v5) >> 3);
    if (2 * v30 > v29)
    {
      v29 = 2 * v30;
    }

    if (v30 >= 0x1C71C71C71C71C7)
    {
      v31 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v31 = v29;
    }

    if (v31)
    {
      if (v31 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v42 = 8 * (v7 >> 3);
    v66 = v42;
    v67 = v42;
    if (!(0x8E38E38E38E38E39 * (v7 >> 3)))
    {
      if (v7 < 1)
      {
        if (v7)
        {
          v45 = 0x1C71C71C71C71C72 * (v7 >> 3);
        }

        else
        {
          v45 = 1;
        }

        if (v45 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v42 -= 72 * ((0x8E38E38E38E38E39 * (v7 >> 3) + 1) >> 1);
      v66 = v42;
      v67 = v42;
    }

    sub_1AE754CE0(v42, v2);
    v46 = a1[3];
    v47 = v15;
    if (v46 != v15)
    {
      v48 = v15;
      v49 = v67 + 72;
      do
      {
        *v49 = *v48;
        v50 = *(v48 + 8);
        *(v49 + 24) = *(v48 + 24);
        *(v49 + 8) = v50;
        *(v48 + 16) = 0;
        *(v48 + 24) = 0;
        *(v48 + 8) = 0;
        *(v49 + 32) = *(v48 + 32);
        *(v49 + 56) = 0;
        *(v49 + 64) = 0;
        *(v49 + 48) = 0;
        *(v49 + 48) = *(v48 + 48);
        *(v49 + 64) = *(v48 + 64);
        *(v48 + 48) = 0;
        *(v48 + 56) = 0;
        *(v48 + 64) = 0;
        v48 += 72;
        v49 += 72;
      }

      while (v48 != v46);
      v51 = v15;
      do
      {
        v52 = *(v51 + 48);
        if (v52)
        {
          *(v51 + 56) = v52;
          operator delete(v52);
        }

        if (*(v51 + 31) < 0)
        {
          operator delete(*(v51 + 8));
        }

        v51 += 72;
      }

      while (v51 != v46);
      v47 = a1[3];
    }

    v53 = v67 + 72 + v47 - v9;
    a1[3] = v15;
    v54 = a1[2];
    v55 = v54 + v66 - v9;
    if (v54 != v15)
    {
      v56 = a1[2];
      v57 = v54 + v66 - v9;
      do
      {
        *v57 = *v56;
        v58 = *(v56 + 8);
        *(v57 + 3) = *(v56 + 24);
        *(v57 + 8) = v58;
        *(v56 + 16) = 0;
        *(v56 + 24) = 0;
        *(v56 + 8) = 0;
        *(v57 + 2) = *(v56 + 32);
        *(v57 + 7) = 0;
        *(v57 + 8) = 0;
        *(v57 + 6) = 0;
        *(v57 + 3) = *(v56 + 48);
        *(v57 + 8) = *(v56 + 64);
        *(v56 + 48) = 0;
        *(v56 + 56) = 0;
        *(v56 + 64) = 0;
        v56 += 72;
        v57 += 72;
      }

      while (v56 != v15);
      do
      {
        v59 = *(v54 + 6);
        if (v59)
        {
          *(v54 + 7) = v59;
          operator delete(v59);
        }

        if (*(v54 + 31) < 0)
        {
          operator delete(*(v54 + 1));
        }

        v54 += 18;
      }

      while (v54 != v15);
      v54 = *v6;
    }

    a1[2] = v55;
    a1[3] = v53;
    a1[4] = 0;
    if (v54)
    {
      operator delete(v54);
    }
  }
}

void sub_1AE754A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE755368(va);
  _Unwind_Resume(a1);
}

void sub_1AE754A70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }
}

void sub_1AE754B88(int *a1, int *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  *v14 = *(a1 + 2);
  *&v14[7] = *(a1 + 23);
  v6 = *(a1 + 31);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 1) = 0;
  v7 = a1 + 12;
  v12 = *(a1 + 3);
  v13 = *(a1 + 2);
  v8 = *(a1 + 8);
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  *(a1 + 6) = 0;
  *a1 = *a2;
  v9 = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 2) = v9;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 2) = *(a2 + 2);
  v10 = *(a1 + 6);
  if (v10)
  {
    *(a1 + 7) = v10;
    operator delete(v10);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  v11 = 0;
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *a2 = v4;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 1));
    v11 = *(a2 + 6);
  }

  *(a2 + 1) = v5;
  *(a2 + 2) = *v14;
  *(a2 + 23) = *&v14[7];
  *(a2 + 31) = v6;
  *(a2 + 2) = v13;
  if (v11)
  {
    *(a2 + 7) = v11;
    operator delete(v11);
  }

  *(a2 + 3) = v12;
  *(a2 + 8) = v8;
}

uint64_t sub_1AE754CE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_1AE5DBF1C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 32) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return a1;
}

void sub_1AE754DB8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE754DF4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      if (*(v3 - 41) < 0)
      {
        operator delete(*(v3 - 64));
      }

      v3 -= 72;
    }
  }

  return a1;
}

void ***sub_1AE754E68(void ***a1)
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
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          if (*(v4 - 41) < 0)
          {
            operator delete(*(v4 - 8));
          }

          v4 -= 72;
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

BOOL sub_1AE754EFC(uint64_t a1, uint64_t a2)
{
  v2 = -10.0;
  v3 = -10.0;
  if (*a1 > 0.0)
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = v4 - v5;
    if (v4 != v5)
    {
      v7 = a2;
      v8 = log10f(*(v4 - 4) / *a1);
      v9 = v6 >> 3;
      v10 = 1.0;
      if (v6 >> 3 != 1)
      {
        if (!v9)
        {
          goto LABEL_14;
        }

        v11 = 1.15368974 / (sqrtf(v9 + 0.1) * (v9 + 0.1));
        v10 = v11;
      }

      v3 = v10 * v8;
      a2 = v7;
    }
  }

  if (*a2 > 0.0)
  {
    v13 = *(a2 + 48);
    v12 = *(a2 + 56);
    v14 = v12 - v13;
    if (v12 != v13)
    {
      v15 = log10f(*(v12 - 4) / *a2);
      v16 = v14 >> 3;
      v17 = 1.0;
      if (v14 >> 3 == 1)
      {
LABEL_12:
        v2 = v17 * v15;
        return v3 < v2;
      }

      if (v16)
      {
        v18 = 1.15368974 / (sqrtf(v16 + 0.1) * (v16 + 0.1));
        v17 = v18;
        goto LABEL_12;
      }

LABEL_14:
      __assert_rtn("normalizationFactor", "LMDynamicInlineCompletionEnumerator.hpp", 78, "numWords >= 1");
    }
  }

  return v3 < v2;
}

char *sub_1AE755040(char **a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (a4 > (v6 - v7) >> 3)
  {
    if (v7)
    {
      a1[1] = v7;
      v9 = a4;
      operator delete(v7);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v10 = a4;
      }

      v30 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v30)
      {
        v11 = v10;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1AE5CBB70();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v7) >> 3)
  {
    if (a2 != a3)
    {
      v25 = a3 - a2 - 8;
      if (v25 >= 0x78)
      {
        v42 = v25 & 0xFFFFFFFFFFFFFFF8 | 4;
        v43 = &v7[v42];
        v44 = a2 + v42;
        v45 = (v25 & 0xFFFFFFFFFFFFFFF8) + 8;
        v46 = (v7 + 4) >= a2 + v45 || a2 + 4 >= &v7[v45];
        v47 = !v46;
        v48 = v43 <= a2 || v7 >= v44;
        if (v48 && !v47)
        {
          v49 = (v25 >> 3) + 1;
          v50 = 8 * (v49 & 0x3FFFFFFFFFFFFFF8);
          result = &v7[v50];
          v51 = (a2 + 32);
          v52 = v7 + 32;
          v53 = v49 & 0x3FFFFFFFFFFFFFF8;
          do
          {
            v55 = *(v51 - 2);
            v54 = *(v51 - 1);
            v57 = *v51;
            v56 = v51[1];
            v51 += 4;
            *(v52 - 2) = v55;
            *(v52 - 1) = v54;
            *v52 = v57;
            v52[1] = v56;
            v52 += 4;
            v53 -= 8;
          }

          while (v53);
          if (v49 == (v49 & 0x3FFFFFFFFFFFFFF8))
          {
            goto LABEL_27;
          }

          v4 = (a2 + v50);
        }
      }

      do
      {
        *result = *v4;
        *(result + 1) = *(v4++ + 1);
        result += 8;
      }

      while (v4 != a3);
    }

LABEL_27:
    a1[1] = result;
    return result;
  }

  v13 = (a2 + v12 - v7);
  v14 = v12 - v7;
  if (v12 != v7)
  {
    v15 = v14 - 8;
    if ((v14 - 8) >= 0x78)
    {
      v26 = v15 & 0xFFFFFFFFFFFFFFF8 | 4;
      v27 = &v7[v26];
      v28 = a2 + v26;
      v29 = (v15 & 0xFFFFFFFFFFFFFFF8) + 8;
      v30 = (v7 + 4) >= a2 + v29 || a2 + 4 >= &v7[v29];
      v31 = !v30;
      v16 = a2;
      v32 = v27 <= a2 || v7 >= v28;
      if (v32 && (v31 & 1) == 0)
      {
        v33 = (v15 >> 3) + 1;
        v34 = 8 * (v33 & 0x3FFFFFFFFFFFFFF8);
        result = &v7[v34];
        v35 = (a2 + 32);
        v36 = v7 + 32;
        v37 = v33 & 0x3FFFFFFFFFFFFFF8;
        do
        {
          v39 = *(v35 - 2);
          v38 = *(v35 - 1);
          v41 = *v35;
          v40 = v35[1];
          v35 += 4;
          *(v36 - 2) = v39;
          *(v36 - 1) = v38;
          *v36 = v41;
          v36[1] = v40;
          v36 += 4;
          v37 -= 8;
        }

        while (v37);
        if (v33 == (v33 & 0x3FFFFFFFFFFFFFF8))
        {
          goto LABEL_16;
        }

        v16 = (a2 + v34);
      }
    }

    else
    {
      v16 = a2;
    }

    do
    {
      *result = *v16;
      *(result + 1) = *(v16++ + 1);
      result += 8;
    }

    while (v16 != v13);
  }

LABEL_16:
  if (v13 != a3)
  {
    v17 = a3 + v7 - &v12[a2] - 8;
    if (v17 < 0x18)
    {
      goto LABEL_63;
    }

    if (&v7[-a2] < 0x20)
    {
      goto LABEL_63;
    }

    v18 = (v17 >> 3) + 1;
    v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
    v13 = (v13 + v19);
    v20 = v12 + 16;
    v21 = (a2 + v12 + 16 - v7);
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v21;
      *(v20 - 1) = *(v21 - 1);
      *v20 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    v12 += v19;
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_63:
      do
      {
        v24 = *v13++;
        *v12 = v24;
        v12 += 8;
      }

      while (v13 != a3);
    }
  }

  a1[1] = v12;
  return result;
}

uint64_t sub_1AE755368(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

os_log_t sub_1AE7553E0()
{
  result = os_log_create("com.apple.LanguageModeling", "DynamicInlineCompletion");
  qword_1EB5E0F68 = result;
  return result;
}

const __CFString *sub_1AE755410(const __CFString *result)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (CFStringGetLength(result))
    {
      Length = CFStringGetLength(v1);
      v39[0] = v39;
      v4 = MEMORY[0x1EEE9AC00](Length, v3);
      v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (v4 < 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        do
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v1, v8);
          v10 = CharacterAtIndex + 21504;
          if (((CharacterAtIndex + 21504) >> 2) > 0xAE8u)
          {
            v6[v7] = CharacterAtIndex;
LABEL_6:
            ++v7;
          }

          else
          {
            v11 = 0;
            v12 = v10 % 0x24Cu;
            v13 = v10 % 0x24Cu / 0x1C;
            v14 = v13 + 4449;
            v15 = (CharacterAtIndex + 21504) % 0x1Cu;
            v16 = v15 + 4519;
            if (!v15)
            {
              v16 = 0;
            }

            v17 = v7 + 1;
            v18 = &v6[v7];
            *v18 = word_1AE79D144[(CharacterAtIndex + 21504) / 0x24Cu];
            v19 = 22;
            while (1)
            {
              v20 = (v19 + v11) / 2;
              v21 = (&unk_1AE79D226 + 6 * v20);
              v22 = v21[2];
              if (v22 == v14)
              {
                break;
              }

              if (v22 >= v14)
              {
                v19 = v20 - 1;
              }

              else
              {
                v11 = v20 + 1;
              }

              if (v11 > v19)
              {
                if (v12 > 0x24Bu)
                {
                  if (v13 == 65)
                  {
                    v23 = 4514;
                  }

                  else
                  {
                    v23 = 0;
                  }

                  if (v13 == 61)
                  {
                    v23 = 12685;
                  }
                }

                else
                {
                  v23 = word_1AE79D16A[v13];
                }

                v7 += 2;
                v6[v17] = v23;
                if (!v15)
                {
                  goto LABEL_7;
                }

                goto LABEL_41;
              }
            }

            v24 = *v21;
            if ((v24 - 4449) > 0x14)
            {
              if (v24 == 4514)
              {
                v25 = 4514;
              }

              else
              {
                v25 = 0;
              }

              if (v24 == 4510)
              {
                v25 = 12685;
              }
            }

            else
            {
              v25 = word_1AE79D16A[v24 - 4449];
            }

            v26 = v21[1];
            v6[v17] = v25;
            if ((v26 - 4449) > 0x14)
            {
              if (v26 == 4514)
              {
                v27 = 4514;
              }

              else
              {
                v27 = 0;
              }

              if (v26 == 4510)
              {
                v27 = 12685;
              }
            }

            else
            {
              v27 = word_1AE79D16A[v26 - 4449];
            }

            v7 += 3;
            v18[2] = v27;
            if (!v15)
            {
              goto LABEL_7;
            }

LABEL_41:
            v28 = 0;
            v29 = 22;
            while (1)
            {
              v30 = (v29 + v28) / 2;
              v31 = (&unk_1AE79D226 + 6 * v30);
              v32 = v31[2];
              if (v32 == v16)
              {
                break;
              }

              if (v32 >= v16)
              {
                v29 = v30 - 1;
              }

              else
              {
                v28 = v30 + 1;
              }

              if (v28 > v29)
              {
                v33 = v16 - 4520;
                if (v33 > 0x1A)
                {
                  v6[v7] = 0;
                }

                else
                {
                  v6[v7] = word_1AE79D194[v33];
                }

                goto LABEL_6;
              }
            }

            v34 = *v31 - 4520;
            if (v34 > 0x1A)
            {
              v35 = 0;
            }

            else
            {
              v35 = word_1AE79D194[v34];
            }

            v36 = v31[1];
            v37 = &v6[v7];
            *v37 = v35;
            if ((v36 - 4520) > 0x1A)
            {
              v38 = 0;
            }

            else
            {
              v38 = word_1AE79D194[v36 - 4520];
            }

            v7 += 2;
            v37[1] = v38;
          }

LABEL_7:
          ++v8;
        }

        while (v8 != Length);
      }

      return CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v6, v7);
    }

    else
    {
      return &stru_1F24332A0;
    }
  }

  return result;
}

os_log_t sub_1AE7557A4()
{
  result = os_log_create("com.apple.LanguageModeling", "NeuralNetwork");
  qword_1EB5E0B40 = result;
  return result;
}

void sub_1AE7557D4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a2(a3);
  v59 = v4;
  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = v59;
    if (v59)
    {
      CFRetain(v59);
      CFRelease(v59);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1AE756494(&v53, v6);
  sub_1AE756494(&v47, v6);
  v48 = (v50 - v49) >> 3;
  while (1)
  {
    if (v53 && (v7 = v54, v54 != (v56 - v55) >> 3))
    {
      v8 = v47;
    }

    else
    {
      v8 = v47;
      if (!v47 || v48 == (v50 - v49) >> 3)
      {
        break;
      }

      v7 = v54;
    }

    if (v53 == v8 && v7 == v48)
    {
      break;
    }

    if ((v7 & 0x8000000000000000) != 0 || v7 >= (v56 - v55) >> 3)
    {
      v43 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v43, "DictionaryRef_iterator iterator out of range.");
      v43->__vftable = (MEMORY[0x1E69E55B8] + 16);
      __cxa_throw(v43, off_1E7A2D6D0, MEMORY[0x1E69E5280]);
    }

    v10 = *(v55 + v7);
    if (!v10 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v10)))
    {
      v42 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v42, "Could not convert");
      __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_1AE5CAD24(&v61, v10);
    v12 = *(v57 + v54);
    if (!v12 || (v13 = CFArrayGetTypeID(), v13 != CFGetTypeID(v12)))
    {
      v41 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v41, "Could not convert");
      __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Count = CFArrayGetCount(v12);
    if (Count << 32)
    {
      if (!(Count >> 62))
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
      if (ValueAtIndex)
      {
        v16 = CFNumberGetTypeID();
        if (v16 == CFGetTypeID(ValueAtIndex))
        {
          switch(CFNumberGetType(ValueAtIndex))
          {
            case kCFNumberSInt8Type:
              LOBYTE(valuePtr) = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberSInt8Type, &valuePtr);
              goto LABEL_53;
            case kCFNumberSInt16Type:
              LOWORD(valuePtr) = 0;
              v22 = CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, &valuePtr);
              goto LABEL_46;
            case kCFNumberSInt32Type:
              LODWORD(valuePtr) = 0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
              goto LABEL_61;
            case kCFNumberSInt64Type:
              valuePtr = 0.0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
              goto LABEL_61;
            case kCFNumberFloat32Type:
              LODWORD(valuePtr) = 0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, &valuePtr);
              goto LABEL_38;
            case kCFNumberFloat64Type:
              valuePtr = 0.0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberFloat64Type, &valuePtr);
              goto LABEL_50;
            case kCFNumberCharType:
              LOBYTE(valuePtr) = 0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberCharType, &valuePtr);
LABEL_53:
              LOBYTE(v23) = LOBYTE(valuePtr);
              if (!Value)
              {
                LOBYTE(v23) = 0;
              }

              v24 = SLOBYTE(valuePtr) < 0 && Value != 0;
              v25.i64[0] = Value != 0;
              v25.i64[1] = v24 << 63 >> 63;
              break;
            case kCFNumberShortType:
              LOWORD(valuePtr) = 0;
              v22 = CFNumberGetValue(ValueAtIndex, kCFNumberShortType, &valuePtr);
LABEL_46:
              if (v22)
              {
                v23 = SLOWORD(valuePtr) | 0x100000000;
              }

              else
              {
                v23 = 0;
              }

              goto LABEL_64;
            case kCFNumberIntType:
              LODWORD(valuePtr) = 0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
              goto LABEL_61;
            case kCFNumberLongType:
              valuePtr = 0.0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr);
              goto LABEL_61;
            case kCFNumberLongLongType:
              valuePtr = 0.0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, &valuePtr);
              goto LABEL_61;
            case kCFNumberFloatType:
              LODWORD(valuePtr) = 0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr);
LABEL_38:
              v21 = *&valuePtr;
              goto LABEL_62;
            case kCFNumberDoubleType:
              valuePtr = 0.0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
              goto LABEL_50;
            case kCFNumberCFIndexType:
              valuePtr = 0.0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
              goto LABEL_61;
            case kCFNumberNSIntegerType:
              valuePtr = 0.0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberNSIntegerType, &valuePtr);
LABEL_61:
              v21 = LODWORD(valuePtr);
              goto LABEL_62;
            case kCFNumberCGFloatType:
              valuePtr = 0.0;
              v20 = CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
LABEL_50:
              v21 = valuePtr;
LABEL_62:
              v23 = v21 | 0x100000000;
              if (!v20)
              {
                v23 = 0;
              }

LABEL_64:
              v25 = vshlq_u64(vdupq_n_s64(v23), xmmword_1AE79A770);
              break;
            default:
              LOBYTE(v23) = 0;
              v25 = 0uLL;
              break;
          }

          v26 = vandq_s8(vshlq_u64(v25, xmmword_1AE79A780), xmmword_1AE79A790);
          v19 = v26.i64[0] | v23 | v26.i64[1];
        }

        else
        {
          v18 = CFBooleanGetTypeID();
          if (v18 == CFGetTypeID(ValueAtIndex))
          {
            v19 = CFBooleanGetValue(ValueAtIndex) | 0x100000000;
          }

          else
          {
            v19 = 0;
          }
        }

        if ((v19 & 0x100000000) != 0)
        {
          operator new();
        }
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v40, "Could not convert");
      __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *__p = v61;
    v46 = v62;
    v28 = *(a1 + 8);
    v27 = *(a1 + 16);
    if (v28 >= v27)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *a1) >> 3);
      v31 = v30 + 1;
      if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1AE5CBB70();
      }

      v32 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *a1) >> 3);
      if (2 * v32 > v31)
      {
        v31 = 2 * v32;
      }

      if (v32 >= 0x555555555555555)
      {
        v33 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v33 = v31;
      }

      v64 = a1;
      if (v33)
      {
        if (v33 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v34 = 24 * v30;
      *&v61 = 0;
      *(&v61 + 1) = v34;
      v35 = 0;
      v62 = v34;
      v63 = 0;
      if (SHIBYTE(v46) < 0)
      {
        sub_1AE5DBF1C(v34, __p[0], __p[1]);
        v34 = *(&v61 + 1);
        v36 = v62;
        v35 = v63;
      }

      else
      {
        *v34 = *__p;
        *(v34 + 16) = v46;
        v36 = v34;
      }

      v29 = v36 + 24;
      v37 = *(a1 + 8) - *a1;
      v38 = v34 - v37;
      memcpy((v34 - v37), *a1, v37);
      v39 = *a1;
      *a1 = v38;
      *(a1 + 8) = v29;
      *(a1 + 16) = v35;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      if (SHIBYTE(v62) < 0)
      {
        sub_1AE5DBF1C(*(a1 + 8), v61, *(&v61 + 1));
      }

      else
      {
        *(v28 + 16) = v62;
        *v28 = *__p;
      }

      v29 = v28 + 24;
    }

    *(a1 + 8) = v29;
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }

    ++v54;
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v59)
  {
    CFRelease(v59);
  }
}

void sub_1AE7560AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  sub_1AE621528((v33 - 144));
  sub_1AE645234(v31);
  _Unwind_Resume(a1);
}

const void **sub_1AE7561B8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE7561F0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_1ED9AC820;
  v9 = off_1ED9AC820;
  if (!off_1ED9AC820)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE7562D8;
    v5[3] = &unk_1E7A2FC48;
    v5[4] = &v6;
    sub_1AE7562D8(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(a1);
}

void *sub_1AE7562D8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkCopyOutputNamesAndDimensions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC820 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE756420()
{
  result = _sl_dlopen();
  qword_1EB5E0B48 = result;
  return result;
}

uint64_t sub_1AE756494(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v5 = Count;
    v6 = *(a1 + 16);
    v7 = (*(a1 + 24) - v6) >> 3;
    if (Count <= v7)
    {
      if (Count < v7)
      {
        *(a1 + 24) = v6 + 8 * Count;
      }
    }

    else
    {
      sub_1AE621E88(a1 + 16, Count - v7);
    }

    v8 = *(a1 + 40);
    v9 = (*(a1 + 48) - v8) >> 3;
    if (v5 <= v9)
    {
      if (v5 < v9)
      {
        *(a1 + 48) = &v8[v5];
      }
    }

    else
    {
      sub_1AE621E88(v3, v5 - v9);
      v8 = *v3;
    }

    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), v8);
  }

  return a1;
}

uint64_t sub_1AE756558(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AE75659C(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_1ED9AC828;
  v9 = off_1ED9AC828;
  if (!off_1ED9AC828)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE756684;
    v5[3] = &unk_1E7A2FC20;
    v5[4] = &v6;
    sub_1AE756684(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(a1);
}

void *sub_1AE756684(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkCopyInputNamesAndDimensions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC828 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE7567CC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC848 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE756914(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "kMRLNeuralNetworkOptionModelURLKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED9AC830 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE756A5C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "kMRLNeuralNetworkOptionEngineKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED9AC840 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE756BA4(uint64_t a1, const UInt8 *a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v6 = qword_1ED9AC830;
  v43 = qword_1ED9AC830;
  if (!qword_1ED9AC830)
  {
    *v44 = MEMORY[0x1E69E9820];
    *&v44[8] = 0x40000000;
    *&v44[16] = sub_1AE756914;
    v45 = &unk_1E7A2FB50;
    v46 = &v40;
    sub_1AE756914(v44);
    v6 = *(v41 + 24);
  }

  _Block_object_dispose(&v40, 8);
  if (!v6)
  {
    dlerror();
    abort_report_np();
LABEL_87:
    __break(1u);
LABEL_88:
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
LABEL_83:
    v33 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
    {
      *v44 = 0;
      _os_log_error_impl(&dword_1AE5C8000, v33, OS_LOG_TYPE_ERROR, "Unable to load network model", v44, 2u);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(v44, "MRLNeuralNetworkCreate returned nullptr");
    sub_1AE64FB94(exception, v44);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  sub_1AE66A174(&cf, *v6);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = a2[23];
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v38 = CFURLCreateWithBytes(0, v8, v9, 0, 0);
  if (!v38)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v32, "Could not construct");
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v10 = qword_1ED9AC840;
  v43 = qword_1ED9AC840;
  if (!qword_1ED9AC840)
  {
    *v44 = MEMORY[0x1E69E9820];
    *&v44[8] = 0x40000000;
    *&v44[16] = sub_1AE756A5C;
    v45 = &unk_1E7A2FBB0;
    v46 = &v40;
    sub_1AE756A5C(v44);
    v10 = *(v41 + 24);
  }

  _Block_object_dispose(&v40, 8);
  if (!v10)
  {
    dlerror();
    abort_report_np();
    goto LABEL_87;
  }

  sub_1AE66A174(&v37, *v10);
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (!v12)
  {
    v36 = 0;
    v14 = cf;
    if (!cf)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 8);
  }

  v36 = CFStringCreateWithBytes(0, v12, v13, 0x8000100u, 0);
  if (!v36)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v35, "Could not construct");
    __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v14 = cf;
  if (cf)
  {
LABEL_25:
    CFRetain(v14);
  }

LABEL_26:
  *v44 = v14;
  v15 = v38;
  if (v38)
  {
    CFRetain(v38);
  }

  *&v44[8] = v15;
  v16 = v37;
  if (v37)
  {
    CFRetain(v37);
  }

  *&v44[16] = v16;
  if (v36)
  {
    CFRetain(v36);
  }

  v45 = v36;
  v40 = v44;
  v41 = 2;
  v17 = sub_1AE66A370(&v40);
  if (v45)
  {
    CFRelease(v45);
  }

  if (*&v44[16])
  {
    CFRelease(*&v44[16]);
  }

  if (*&v44[8])
  {
    CFRelease(*&v44[8]);
  }

  if (*v44)
  {
    CFRelease(*v44);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v18 = off_1ED9AC848;
  v43 = off_1ED9AC848;
  if (!off_1ED9AC848)
  {
    *v44 = MEMORY[0x1E69E9820];
    *&v44[8] = 0x40000000;
    *&v44[16] = sub_1AE7567CC;
    v45 = &unk_1E7A2FBF8;
    v46 = &v40;
    sub_1AE7567CC(v44);
    v18 = *(v41 + 24);
  }

  _Block_object_dispose(&v40, 8);
  if (!v18)
  {
    dlerror();
    abort_report_np();
    goto LABEL_87;
  }

  v19 = v18(v17, 0);
  *(a1 + 8) = 0u;
  v20 = (a1 + 8);
  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = a1 + 64;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *a1 = v19;
  if (!v19)
  {
    if (qword_1ED9ACA10 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_88;
  }

  sub_1AE7557D4(v44, sub_1AE75659C, v19);
  v21 = *v20;
  if (*v20)
  {
    v22 = *(a1 + 16);
    v23 = *v20;
    if (v22 != v21)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = *v20;
    }

    *(a1 + 16) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  *(a1 + 8) = *v44;
  *(a1 + 24) = *&v44[16];
  sub_1AE7557D4(v44, sub_1AE7561F0, *a1);
  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = *(a1 + 40);
    v27 = *(a1 + 32);
    if (v26 != v25)
    {
      do
      {
        v28 = *(v26 - 1);
        v26 -= 3;
        if (v28 < 0)
        {
          operator delete(*v26);
        }
      }

      while (v26 != v25);
      v27 = *(a1 + 32);
    }

    *(a1 + 40) = v25;
    operator delete(v27);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = *v44;
  *(a1 + 48) = *&v44[16];
  if (v17)
  {
    CFRelease(v17);
  }

  if (qword_1EB5E0B38 != -1)
  {
    dispatch_once(&qword_1EB5E0B38, &unk_1F2431030);
  }

  v29 = qword_1EB5E0B40;
  if (os_log_type_enabled(qword_1EB5E0B40, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    *v44 = 136315394;
    *&v44[4] = "NeuralNetwork";
    *&v44[12] = 2080;
    *&v44[14] = v30;
    _os_log_impl(&dword_1AE5C8000, v29, OS_LOG_TYPE_DEFAULT, "%s: Loaded neural language model: %s", v44, 0x16u);
  }

  return a1;
}

void sub_1AE757278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, const void *a13, const void *a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_1AE621E54(&a12);
  sub_1AE63109C(&a13);
  sub_1AE66A2A0(&a14);
  sub_1AE63109C(&a15);
  _Unwind_Resume(a1);
}

void sub_1AE757424(uint64_t *a1, uint64_t a2)
{
  err = 0;
  v3 = *a1;
  if (a2)
  {
    sub_1AE757574(v3, a2, &err);
  }

  else
  {
    sub_1AE757574(v3, 0, &err);
  }

  sub_1AE69B5AC(a1);
  if (err)
  {
    operator new();
  }
}

void sub_1AE7574DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v15 = qword_1ED9AC9E0;
  if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_1AE5C8000, v15, OS_LOG_TYPE_DEFAULT, "Unable to run inference on the NN Model", &__p, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x1AE7574CCLL);
}

uint64_t sub_1AE757574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v6 = off_1ED9AC7B8;
  v13 = off_1ED9AC7B8;
  if (!off_1ED9AC7B8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = sub_1AE7577BC;
    v9[3] = &unk_1E7A2FC70;
    v9[4] = &v10;
    sub_1AE7577BC(v9);
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    dlerror();
    v8 = abort_report_np();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v8);
  }

  return v6(a1, a2, a3);
}

void sub_1AE757674(uint64_t *a1, CFErrorRef err)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = CFErrorCopyDescription(err);
  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v5 = qword_1ED9AC9E0;
  if (!os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  *buf = 136315394;
  v8 = v6;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&dword_1AE5C8000, v5, OS_LOG_TYPE_ERROR, "%s() failed: %@", buf, 0x16u);
  if (v4)
  {
LABEL_5:
    CFRelease(v4);
  }

LABEL_6:
  if (err)
  {
    CFRelease(err);
  }
}

void sub_1AE757794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AE7577BC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkPredict");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC7B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AE757904(uint64_t *a1)
{
  v2 = *a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v3 = off_1ED9AC5A0;
  v9 = off_1ED9AC5A0;
  if (!off_1ED9AC5A0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE757A04;
    v5[3] = &unk_1E7A2FC98;
    v5[4] = &v6;
    sub_1AE757A04(v5);
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  v3(v2, 0);
  sub_1AE69B5AC(a1);
}

void *sub_1AE757A04(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkClear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC5A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE757B4C(uint64_t a1, const UInt8 *a2)
{
  v2 = a2;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    cf = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    cf = 0;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v9 = off_1ED9AC838;
  v17 = off_1ED9AC838;
  if (!off_1ED9AC838)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = sub_1AE757D20;
    v13[3] = &unk_1E7A2FCC0;
    v13[4] = &v14;
    sub_1AE757D20(v13);
    v9 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v9)
  {
    v10 = v9(a1, v7);
    if (cf)
    {
      CFRelease(cf);
    }

    return v10;
  }

  else
  {
    dlerror();
    result = abort_report_np();
    __break(1u);
  }

  return result;
}

void sub_1AE757CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE621E54(va);
  _Unwind_Resume(a1);
}

void sub_1AE757CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  sub_1AE63109C(va);
  _Unwind_Resume(a1);
}

void *sub_1AE757D20(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkGetOutputDimension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC838 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE757E68(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkCopyStates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC7A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE757FB0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0B48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE756420;
    v6[4] = &unk_1E7A2FB88;
    v6[5] = v6;
    v7 = xmmword_1E7A2FB70;
    v8 = 0;
    qword_1EB5E0B48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0B48;
    if (qword_1EB5E0B48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0B48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkCopyIncrementalStates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC570 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE7580F8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v8 = 0;
  if (a2)
  {
    *a2 = (*(**(a1 + 16) + 8))(*(a1 + 16), &v8);
  }

  if (a3)
  {
    *a3 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = xmmword_1AE79A550;
    *(a3 + 64) = xmmword_1AE79A550;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0xFFEFFFFFFFFFFFFFLL;
    v5 = *(a1 + 16);
    v6 = *(**(*(a1 + 8) + 24) + 8 * v8);
    *(a3 + 56) = 0;
    *a3 = v6;
    *(a3 + 104) = (*(*v5 + 32))(v5);
    *(a3 + 116) = 9;
    *(a3 + 112) = 0;
  }

  return 1;
}

uint64_t sub_1AE7581F4(uint64_t a1)
{
  result = (***(a1 + 16))(*(a1 + 16));
  v5 = 0;
  if (result)
  {
    v3 = *(a1 + 16);
    v4 = result;
    (*(*v3 + 8))(v3, &v5);
    result = v4;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

void sub_1AE758290(void *a1)
{
  *a1 = &unk_1F2431060;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 24))(a1[2]);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE758320(void *result)
{
  *result = &unk_1F2431060;
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 24))(result[2]);
    return v2;
  }

  return result;
}

void sub_1AE758700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v31 & 1) == 0)
    {
LABEL_8:
      sub_1AE644C5C(&a22);
      sub_1AE749810(v28);
      sub_1AE7498D0(v29);
      sub_1AE6FCC0C(v27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v30);
  goto LABEL_8;
}

void sub_1AE758848(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  for (i = *(a1 + 112); i; i = *i)
  {
    v6 = LXLexiconCopyEntryForTokenID();
    if (v6)
    {
      if ((LXEntryGetMetaFlags() & 0x4000000) != 0)
      {
        if (LXEntryGetUsageCount() > 3)
        {
          v7 = LXEntryCopyString();
          LXLexiconUpdateMetaFlags();
          LXLexiconIncrementUsageCount();
          if (v7)
          {
            CFRelease(v7);
          }
        }

        else
        {
          LXEntryGetTokenID();
          LXLexiconRemoveEntry();
        }
      }

      CFRelease(v6);
    }
  }

  if (*(a1 + 120))
  {
    v3 = *(a1 + 112);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    *(a1 + 112) = 0;
    v5 = *(a1 + 104);
    if (v5)
    {
      bzero(*(a1 + 96), 8 * v5);
    }

    *(a1 + 120) = 0;
  }

  std::mutex::unlock((a1 + 32));
}

void sub_1AE758984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE7589C4(va);
  std::mutex::unlock((v2 + 32));
  _Unwind_Resume(a1);
}

const void **sub_1AE7589C4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void sub_1AE7589FC(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  std::mutex::lock((a1 + 32));
  if (a3 >= 0x1F4)
  {
    v6 = *(a2 + 23);
    if (v6 < 0)
    {
      v6 = a2[1];
      if (!v6)
      {
        goto LABEL_17;
      }

      a2 = *a2;
    }

    else if (!*(a2 + 23))
    {
      goto LABEL_17;
    }

    v7 = sub_1AE61D700(a2, v6);
    v8 = LXLexiconCopyEntryForTokenID();
    if (v8 || (sub_1AE758B78() & 1) != 0)
    {
      v9 = LXLexiconCopyEntryForTokenID();
      if (v8)
      {
        CFRelease(v8);
      }

      if ((LXEntryGetMetaFlags() & 0x4000000) == 0)
      {
        LXLexiconUpdateMetaFlags();
        LXLexiconIncrementUsageCount();
        sub_1AE69DDF4((a1 + 96), a3);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

LABEL_17:

  std::mutex::unlock((a1 + 32));
}

void sub_1AE758B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE636D70(va);
  std::mutex::unlock((v3 + 32));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE758B78()
{
  v4 = *MEMORY[0x1E69E9840];
  CEMStringContainsEmoji();
  Mutable = LXEntryCreateMutable();
  v3 = Mutable;
  v1 = LXLexiconAddEntryWithTokenID();
  if ((v1 & 1) == 0)
  {
    operator new();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

void sub_1AE758D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  operator delete(v20);
  sub_1AE758D90(&a14);
  _Unwind_Resume(a1);
}

const void **sub_1AE758D90(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

os_log_t sub_1AE758DC8()
{
  result = os_log_create("com.apple.LanguageModeling", "DynamicLexiconImpl");
  qword_1EB5E0F78 = result;
  return result;
}

uint64_t sub_1AE758DF8()
{
  result = LXLexiconCopyEntryForTokenID();
  if (result)
  {
    v1 = result;
    UserBitfield = LXEntryGetUserBitfield();
    CFRelease(v1);
    return (UserBitfield >> 1) & 1;
  }

  return result;
}

void sub_1AE758E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE7589C4(va);
  _Unwind_Resume(a1);
}

void sub_1AE758E5C()
{
  v0 = LXLexiconCopyEntryForTokenID();
  if (!v0)
  {
    __assert_rtn("blocklistToken", "LMDynamicLexiconImpl.cpp", 474, "entry");
  }

  v1 = v0;
  v2 = LXEntryCopyString();
  if (v2)
  {
    LXEntryGetUserBitfield();
    LXLexiconSetUserBitfield();
    CFRelease(v2);
  }

  CFRelease(v1);
}

void sub_1AE758F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE7589C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE758F30()
{
  v0 = LXLexiconCopyEntryForTokenID();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  UsageCount = LXEntryGetUsageCount();
  CFRelease(v1);
  return UsageCount;
}

void sub_1AE758F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE7589C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE758F9C()
{
  v0 = LXLexiconCopyEntryForTokenID();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  PenaltyCount = LXEntryGetPenaltyCount();
  CFRelease(v1);
  return PenaltyCount;
}

void sub_1AE758FF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE7589C4(va);
  _Unwind_Resume(a1);
}

void sub_1AE759008(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 0x1F4)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (v3 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = *(a2 + 8);
    }

    v6 = sub_1AE61D700(v4, v5);
    v7 = LXLexiconCopyEntryForTokenID();
    if (v7 || (sub_1AE758B78() & 1) != 0)
    {
      LXLexiconIncrementPenaltyCount();
      if (v7)
      {
        CFRelease(v7);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void sub_1AE7590D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

void sub_1AE7590F4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 0x1F4)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (v3 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = *(a2 + 8);
    }

    v6 = sub_1AE61D700(v4, v5);
    v7 = LXLexiconCopyEntryForTokenID();
    if (v7 || (sub_1AE758B78() & 1) != 0)
    {
      LXLexiconIncrementUsageCount();
      if (v7)
      {
        CFRelease(v7);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void sub_1AE7591BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

void sub_1AE7591E0(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x4002000000;
  v27 = sub_1AE7595CC;
  v28 = sub_1AE7595F0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x4002000000;
  v19 = sub_1AE7595CC;
  v20 = sub_1AE7595F0;
  __p = 0;
  v22 = 0;
  v23 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v15[3] = a2;
  cf = LXLexiconCreateRootCursor();
  LXCursorEnumerateEntriesRecursively();
  v4 = v25;
  v5 = v25[5];
  v6 = v25[6];
  if (v5 != v6)
  {
    do
    {
      LXLexiconRemoveEntry();
      v5 += 4;
    }

    while (v5 != v6);
    v4 = v25;
  }

  (*(*a2 + 160))(a2, v4 + 5);
  v7 = v17[5];
  for (i = v17[6]; v7 != i; ++v7)
  {
    v9 = *v7;
    v10 = LXLexiconCopyEntryForTokenID();
    v32 = v10;
    if (v10)
    {
      LXEntryGetUserBitfield();
      v11 = LXEntryCopyString();
      *buf = v11;
      LXLexiconSetUserBitfield();
      if (v11)
      {
        CFRelease(v11);
      }

      CFRelease(v10);
    }

    else
    {
      if (qword_1EB5E0F80 != -1)
      {
        dispatch_once(&qword_1EB5E0F80, &unk_1F24311E0);
      }

      v12 = qword_1EB5E0F78;
      if (os_log_type_enabled(qword_1EB5E0F78, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 16);
        *buf = 67109378;
        *&buf[4] = v9;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_1AE5C8000, v12, OS_LOG_TYPE_DEFAULT, "Entry for tokenID=%u is missing from the '%@' lexicon", buf, 0x12u);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v24, 8);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_1AE759528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1AE7595CC(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_1AE7595F0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1AE759608(uint64_t a1)
{
  if (LXEntryGetUserBitfield())
  {
    *&v6[8] = 0;
    Timestamp = LXEntryGetTimestamp();
    *v6 = LXEntryGetTokenID();
    if (Timestamp)
    {
      if (*&v6[4] >= *(a1 + 56))
      {
        return;
      }

      v3 = *(*(*(a1 + 40) + 8) + 24);
      v4 = (*(*v3 + 80))(v3, v6, 1, *&v6[4]);
      v5 = 48;
      if (v4 > 1.0)
      {
        v5 = 32;
      }
    }

    else
    {
      v5 = 32;
    }

    sub_1AE6369B4(*(*(a1 + v5) + 8) + 40, v6);
  }
}

uint64_t sub_1AE7596E4(uint64_t a1)
{
  sub_1AE758848(a1);

  return LXLexiconWrite();
}

uint64_t sub_1AE75974C()
{
  result = LXLexiconCopyEntryForTokenID();
  if (result)
  {
    v1 = result;
    MetaFlags = LXEntryGetMetaFlags();
    CFRelease(v1);
    return (MetaFlags >> 29) & 1;
  }

  return result;
}

void sub_1AE75979C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE7589C4(va);
  _Unwind_Resume(a1);
}

BOOL sub_1AE7597B8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = sub_1AE61D700(v6, v7);
  v13 = 0;
  v14 = &v13;
  v16 = 0;
  v15 = 0x2000000000;
  LXLexiconEnumerateEntriesForString();
  v9 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  if (v9 || (CEMStringContainsEmoji(), v11 = LXLexiconAdd(), (*a4 = v11) == 0))
  {
    v10 = 0;
    if (!v8)
    {
      return v10;
    }

    goto LABEL_12;
  }

  LXLexiconSetUserBitfield();
  v10 = *a4 != 0;
  if (v8)
  {
LABEL_12:
    CFRelease(v8);
  }

  return v10;
}

uint64_t sub_1AE759954()
{
  v3 = 0;
  v4 = &v3;
  v6 = 0;
  v5 = 0x2000000000;
  RootCursor = LXLexiconCreateRootCursor();
  LXCursorEnumerateEntriesRecursivelyWithPolicy();
  v1 = *(v4 + 6);
  if (RootCursor)
  {
    CFRelease(RootCursor);
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1AE759A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  sub_1AE720AD0(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AE759A54()
{
  RootCursor = LXLexiconCreateRootCursor();
  LXCursorEnumerateEntriesRecursively();
  if (RootCursor)
  {
    CFRelease(RootCursor);
  }
}

uint64_t sub_1AE759B00(uint64_t a1)
{
  LXEntryGetTokenID();
  LXEntryGetProbability();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_1AE759BDC()
{
  v0[4] = *MEMORY[0x1E69E9840];
  v0[0] = &unk_1F24313C0;
  v0[3] = v0;
  sub_1AE75ED9C();
}

void sub_1AE759CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6B35B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE759CF4()
{
  v2 = 0;
  v3 = &v2;
  v5 = 0;
  v4 = 0x2000000000;
  LXLexiconEnumerateEntriesForString();
  v0 = *(v3 + 6);
  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1AE759DB4(uint64_t a1)
{
  sub_1AE759DEC(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE759DEC(uint64_t a1)
{
  *a1 = &unk_1F24310C0;
  v2 = *(a1 + 112);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 32));
  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 24) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 16) = 0;
  v7 = *(a1 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_1AE759E9C(uint64_t a1, uint64_t a2, const void *a3, CFStringRef theString, const void *a5)
{
  *a1 = &unk_1F24310C0;
  *(a1 + 8) = 0;
  v10 = (a1 + 8);
  v11 = MEMORY[0x1E695E480];
  if (theString)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
  }

  else
  {
    Copy = CFStringCreateMutable(0, 0);
    CFStringAppend(Copy, @"Dynamic");
    CFStringAppend(Copy, @".");
    v13 = MEMORY[0x1B2705500](a3);
    CFStringAppend(Copy, v13);
  }

  *(a1 + 16) = Copy;
  if (a5 && (v14 = __dynamic_cast(a5, &unk_1F2431330, &unk_1F2431098, 0)) != 0)
  {
    v15 = v14[3];
  }

  else
  {
    v15 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v28 = Mutable;
  v17 = *(a2 + 23);
  if (v17 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  if (v17 >= 0)
  {
    v19 = *(a2 + 23);
  }

  else
  {
    v19 = *(a2 + 8);
  }

  v20 = sub_1AE61D700(v18, v19);
  v27 = v20;
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFF8], Copy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFC8], v20);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFE8], a3);
  v21 = MEMORY[0x1B2705500](a3);
  if (CFStringCompare(v21, @"mul", 0) == kCFCompareEqualTo)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E69AC000], *MEMORY[0x1E695E4D0]);
  }

  if (v15)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFC0], v15);
  }

  v26 = 0;
  v22 = LXLexiconCreateMutable();
  if (!v22)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&v25, "Failed to create the lexicon: (null)");
    sub_1AE64FB94(exception, &v25);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  *(a1 + 32) = 850045863;
  *(a1 + 24) = v22;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1065353216;
  if (*(a1 + 8) != a3)
  {
    CFRetain(a3);
    if (*v10)
    {
      CFRelease(*v10);
    }

    *v10 = a3;
  }

  if (theString)
  {
    LXLexiconRepositoryAddOrUpdate();
  }

  return a1;
}

void sub_1AE75A210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, uint64_t a17, const void *a18, const void *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      sub_1AE69A434(&a16);
      sub_1AE636D70(&a18);
      sub_1AE622220(&a19);
      sub_1AE636D70((v20 + 16));
      sub_1AE622258(v19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t sub_1AE75A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 16));
  v6 = (*(**(a1 + 8) + 280))(*(a1 + 8), a2, a3);
  std::mutex::unlock((a1 + 16));
  return v6;
}

uint64_t sub_1AE75A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 16));
  v8 = (*(**(a1 + 8) + 272))(*(a1 + 8), a2, a3, a4);
  std::mutex::unlock((a1 + 16));
  return v8;
}

uint64_t sub_1AE75A428(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  v4 = (*(**(a1 + 8) + 264))(*(a1 + 8), a2);
  std::mutex::unlock((a1 + 16));
  return v4;
}

uint64_t sub_1AE75A4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 16));
  v6 = (*(**(a1 + 8) + 256))(*(a1 + 8), a2, a3);
  std::mutex::unlock((a1 + 16));
  return v6;
}

uint64_t sub_1AE75A540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 16));
  v6 = (*(**(a1 + 8) + 248))(*(a1 + 8), a2, a3);
  std::mutex::unlock((a1 + 16));
  return v6;
}

void sub_1AE75A5CC(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 240))(*(a1 + 8));

  std::mutex::unlock((a1 + 16));
}

void sub_1AE75A644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 232))(*(a1 + 8), a2, a3);

  std::mutex::unlock((a1 + 16));
}

void sub_1AE75A78C(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 184))(*(a1 + 8), a2, a3, a4);

  std::mutex::unlock((a1 + 16));
}

void sub_1AE75A82C(uint64_t a1, uint64_t a2, double a3)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 176))(*(a1 + 8), a2, a3);

  std::mutex::unlock((a1 + 16));
}

void sub_1AE75A8BC(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 168))(*(a1 + 8));

  std::mutex::unlock((a1 + 16));
}

uint64_t sub_1AE75A93C(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 216))(&v13, a2);
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 160))(&v12);
  v4 = v12;
  v12 = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v6 = v12;
    v12 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  std::mutex::unlock((a1 + 16));
  v7 = v13;
  v13 = 0;
  v11 = v7;
  result = (*(*a2 + 224))(a2, &v11);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    if (*v9)
    {
      sub_1AE774A30(v9);
      if (*v9)
      {
        MEMORY[0x1B2706400](*v9, 0x1010C4006136809);
      }
    }

    result = MEMORY[0x1B2706400](v9, 0x20C4093837F09);
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
    if (*v10)
    {
      sub_1AE774A30(v10);
      if (*v10)
      {
        MEMORY[0x1B2706400](*v10, 0x1010C4006136809);
      }
    }

    return MEMORY[0x1B2706400](v10, 0x20C4093837F09);
  }

  return result;
}

void sub_1AE75AB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, uint64_t *);
  v5 = va_arg(va1, void);
  sub_1AE688744(va);
  sub_1AE688744(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE75AB50(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  v4 = (*(**(a1 + 8) + 144))(*(a1 + 8), a2);
  std::mutex::unlock((a1 + 16));
  return v4;
}

uint64_t sub_1AE75ABCC(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  v4 = (*(**(a1 + 8) + 136))(*(a1 + 8), a2);
  std::mutex::unlock((a1 + 16));
  return v4;
}

uint64_t sub_1AE75AC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 16));
  v8 = (*(**(a1 + 8) + 128))(*(a1 + 8), a2, a3, a4);
  std::mutex::unlock((a1 + 16));
  return v8;
}

void sub_1AE75ACDC(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 120))(*(a1 + 8), a2);

  std::mutex::unlock((a1 + 16));
}

void sub_1AE75AD5C(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 112))(*(a1 + 8));

  std::mutex::unlock((a1 + 16));
}

uint64_t sub_1AE75ADD4(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v2 = (*(**(a1 + 8) + 104))(*(a1 + 8));
  std::mutex::unlock((a1 + 16));
  return v2;
}

uint64_t sub_1AE75AE48(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v2 = (*(**(a1 + 8) + 96))(*(a1 + 8));
  std::mutex::unlock((a1 + 16));
  return v2;
}

void sub_1AE75AEBC(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4002000000;
  v13 = sub_1AE75B0FC;
  v14 = sub_1AE75B120;
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::mutex::lock((a1 + 16));
  v4 = v11;
  if ((*(**(a1 + 8) + 96))(*(a1 + 8)) > ((v4[7] - v4[5]) >> 4))
  {
    operator new();
  }

  v5 = *(a1 + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = sub_1AE75B138;
  v9[3] = &unk_1E7A2FDD0;
  v9[4] = &v10;
  (*(*v5 + 88))(v5, v9);
  std::mutex::unlock((a1 + 16));
  v8 = 0;
  v6 = v11[5];
  for (i = v11[6]; v6 != i; v6 += 2)
  {
    (*(a2 + 16))(a2, *v6, &v8, v6[1]);
    if (v8)
    {
      break;
    }
  }

  _Block_object_dispose(&v10, 8);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_1AE75B0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1AE75B0FC(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_1AE75B120(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1AE75B138(uint64_t a1, int a2, double a3)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[6];
  v4 = v3[7];
  if (v5 >= v4)
  {
    v7 = v3[5];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_1AE5CBB70();
    }

    v11 = v4 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v13 = 16 * v9;
    *v13 = a2;
    *(v13 + 8) = a3;
    v6 = 16 * v9 + 16;
    memcpy(0, v7, v8);
    v3[5] = 0;
    v3[6] = v6;
    v3[7] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    *(v5 + 8) = a3;
    v6 = v5 + 16;
  }

  v3[6] = v6;
}

void sub_1AE75B280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 48))(*(a1 + 8), a2, a3);

  std::mutex::unlock((a1 + 16));
}

void sub_1AE75B310(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 40))(*(a1 + 8), a2);

  std::mutex::unlock((a1 + 16));
}

void sub_1AE75B3A0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  (*(**(a1 + 8) + 32))(*(a1 + 8), a2);

  std::mutex::unlock((a1 + 16));
}

uint64_t sub_1AE75B430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 16));
  v6 = (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3);
  std::mutex::unlock((a1 + 16));
  return v6;
}

uint64_t sub_1AE75B4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 16));
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), a2, a3);
  std::mutex::unlock((a1 + 16));
  return v6;
}

void sub_1AE75B548(uint64_t a1)
{
  *a1 = &unk_1F2431210;
  std::mutex::~mutex((a1 + 16));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE75B5DC(uint64_t a1)
{
  *a1 = &unk_1F2431210;
  std::mutex::~mutex((a1 + 16));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1AE75B650(uint64_t a1, CFStringRef theString)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!theString)
  {
    goto LABEL_20;
  }

  Length = CFStringGetLength(theString);
  maxBufLen = 0;
  usedBufLen = 0;
  if (Length > 165)
  {
    v23.location = 0;
    v23.length = Length;
    if (Length != CFStringGetBytes(theString, v23, 0x8000100u, 0, 0, 0, 0, &maxBufLen))
    {
      goto LABEL_20;
    }

    v8 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
    if (!v8)
    {
      goto LABEL_20;
    }

    *(a1 + 16) = 0;
    v24.location = 0;
    v24.length = Length;
    if (Length == CFStringGetBytes(theString, v24, 0x8000100u, 0, 0, v8, maxBufLen, &usedBufLen))
    {
      v8[usedBufLen] = 0;
      *buffer = 0x100000;
      *&buffer[4] = 0;
      v18 = 1;
      v19 = 0;
      v9 = strlen(v8);
      v10 = v9;
      v20 = 0uLL;
      if (v9)
      {
        sub_1AE75B958(buffer, v9);
        if (*&buffer[2] < v10)
        {
          __assert_rtn("initialize", "LMTIString.cpp", 269, "len <= m_capacity");
        }

        if (v19)
        {
          v11 = v19;
        }

        else
        {
          v11 = &v20;
        }

        memcpy(v11, v8, v10);
        v12 = *&buffer[2];
        v13 = v18;
        v14 = v19;
        *a1 = v10;
        *(a1 + 2) = v12;
        *(a1 + 6) = v13;
        *(a1 + 8) = v14;
        if (!v14)
        {
          *(a1 + 16) = v20;
        }

        goto LABEL_25;
      }

      *a1 = v9;
      *(a1 + 2) = 16;
      *(a1 + 6) = 1;
    }

    else
    {
      *a1 = 0x100000;
      *(a1 + 4) = 0;
      *(a1 + 6) = 0;
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
LABEL_25:
    free(v8);
    return;
  }

  v22.location = 0;
  v22.length = Length;
  if (Length != CFStringGetBytes(theString, v22, 0x8000100u, 0, 0, buffer, 1000, &usedBufLen))
  {
LABEL_20:
    *a1 = 0x100000;
    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  buffer[usedBufLen] = 0;
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 1;
  *(a1 + 8) = 0;
  v5 = strlen(buffer);
  v6 = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v5)
  {
    sub_1AE75B958(a1, v5);
    if (*(a1 + 2) < v6)
    {
      __assert_rtn("initialize", "LMTIString.cpp", 269, "len <= m_capacity");
    }

    if (*(a1 + 8))
    {
      v7 = *(a1 + 8);
    }

    else
    {
      v7 = (a1 + 16);
    }

    memcpy(v7, buffer, v6);
    *a1 = v6;
  }
}

void sub_1AE75B958(unsigned __int16 *a1, __int16 a2)
{
  v2 = a1[1];
  if (v2 <= 0xF)
  {
    __assert_rtn("ensure_capacity", "LMTIString.cpp", 303, "m_capacity >= InitialCapacity");
  }

  v3 = a2 + 1;
  if (v2 <= (a2 + 1))
  {
    if (!*(a1 + 6))
    {
      *(a1 + 6) = 1;
      v5 = *(a1 + 1);
      *(a1 + 1) = 0;
      v6 = *a1;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      if (v5)
      {
        if (v6)
        {
          sub_1AE75B958(a1, v6);
          if (a1[1] < v6)
          {
            __assert_rtn("initialize", "LMTIString.cpp", 269, "len <= m_capacity");
          }

          if (*(a1 + 1))
          {
            v7 = *(a1 + 1);
          }

          else
          {
            v7 = a1 + 8;
          }

          memcpy(v7, v5, v6);
          *a1 = v6;
          v2 = a1[1];
        }
      }
    }

    v8 = v2;
    if (v2 < v3)
    {
      v8 = v2;
      do
      {
        v8 = 2 * v8 + 16;
      }

      while ((v8 & 0xFFFEu) < v3);
      a1[1] = v8;
    }

    if (v8 >= 0x11u)
    {
      if (*(a1 + 6) == 1 && (v9 = *(a1 + 1)) != 0)
      {
        v10 = v2;
        v11 = malloc_type_realloc(v9, v8 + 1, 0x100004077774924uLL);
        *(a1 + 1) = v11;
        bzero(&v11[v10], a1[1] - v10 + 1);
      }

      else
      {
        v12 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
        *(a1 + 1) = v12;
        bzero(v12, a1[1] + 1);
        if (*a1)
        {
          strlcpy(*(a1 + 1), a1 + 16, a1[1] + 1);
          *(a1 + 2) = 0;
          *(a1 + 3) = 0;
        }
      }

      if (*(a1 + 6) != 1 || !*(a1 + 1))
      {
        __assert_rtn("ensure_capacity", "LMTIString.cpp", 329, "data_in_allocated_internal_buffer()");
      }
    }
  }
}

void sub_1AE75BB40(uint64_t a1, unsigned __int16 *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (a2[2])
  {
    if (v4 == a2[2])
    {
LABEL_3:
      v5 = *a2;
      MEMORY[0x1EEE9AC00]();
      v7 = v21 - v6;
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          v9 = *a2;
          v10 = v9 - 1;
          if (!*a2)
          {
            v10 = 0;
          }

          if (i >= v9)
          {
            v11 = v10;
          }

          else
          {
            v11 = i;
          }

          v12 = *(a2 + 1);
          if (!v12)
          {
            v12 = a2 + 8;
          }

          v7[i] = __tolower(*(v12 + v11));
        }
      }

      v7[v5] = 0;
      if (*(a2 + 1))
      {
        v13 = *(a2 + 1);
      }

      else
      {
        v13 = (a2 + 8);
      }

      if (!strcmp(v13, v7))
      {
        sub_1AE75BEBC(a1, a2);
      }

      else
      {
        *a1 = 0x100000;
        *(a1 + 4) = 0;
        *(a1 + 6) = 1;
        *(a1 + 8) = 0;
        v14 = strlen(v7);
        v15 = v14;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        if (v14)
        {
          v16 = v14;
          sub_1AE75B958(a1, v14);
          if (*(a1 + 2) < v16)
          {
            __assert_rtn("initialize", "LMTIString.cpp", 269, "len <= m_capacity");
          }

          if (*(a1 + 8))
          {
            v17 = *(a1 + 8);
          }

          else
          {
            v17 = (a1 + 16);
          }

          memcpy(v17, v7, v15);
          *a1 = v15;
        }
      }

      return;
    }
  }

  else
  {
    sub_1AE75BDA0(a2);
    if (v4 == a2[2])
    {
      goto LABEL_3;
    }
  }

  Mutable = CFStringCreateMutable(0, 0);
  v19 = Mutable;
  if (*(a2 + 1))
  {
    v20 = *(a2 + 1);
  }

  else
  {
    v20 = (a2 + 8);
  }

  CFStringAppendCString(Mutable, v20, 0x8000100u);
  CFStringLowercase(v19, 0);
  sub_1AE75B650(a1, v19);
  if (v19)
  {
    CFRelease(v19);
  }
}

void sub_1AE75BD7C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_1AE75BDA0(unsigned __int16 *result)
{
  result[2] = 0;
  v1 = *result;
  if (*result)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(result + 1);
    if (!v4)
    {
      v4 = result + 8;
    }

    do
    {
      v7 = v2 + 1;
      if (v1 == (v2 + 1))
      {
        goto LABEL_8;
      }

      v8 = *(v4 + v2);
      if (v8 - 245 < 0xFFFFFFCD)
      {
        goto LABEL_8;
      }

      v9 = *(v4 + v7);
      if ((v8 & 0xF0) == 0xE0)
      {
        if ((a00000000000000[v8 & 0xF] >> (*(v4 + v7) >> 5)))
        {
          LODWORD(v7) = v2 + 2;
          if (v1 == (v2 + 2))
          {
            goto LABEL_21;
          }

          v5 = *(v4 + (v2 + 2));
          v6 = v2 + 3;
          goto LABEL_6;
        }
      }

      else
      {
        if (v8 <= 0xDF)
        {
          v5 = v9;
          v6 = v2 + 2;
LABEL_6:
          if (v5 < -64)
          {
            LODWORD(v7) = v6;
          }

          goto LABEL_8;
        }

        if ((byte_1AE7A3ED1[v9 >> 4] >> (v8 & 7)))
        {
          LODWORD(v7) = v2 + 2;
          if (v1 == (v2 + 2))
          {
            goto LABEL_21;
          }

          if (*(v4 + (v2 + 2)) <= -65)
          {
            LODWORD(v7) = v2 + 3;
            if (v1 == (v2 + 3))
            {
LABEL_21:
              result[2] = v3 + 1;
              return result;
            }

            v5 = *(v4 + (v2 + 3));
            v6 = v2 + 4;
            goto LABEL_6;
          }
        }
      }

LABEL_8:
      result[2] = ++v3;
      v2 = v7;
    }

    while (v1 > v7);
  }

  return result;
}

uint64_t sub_1AE75BEBC(uint64_t result, unsigned __int16 *a2)
{
  *result = 0x100000;
  *(result + 4) = 0;
  v2 = *(a2 + 6);
  *(result + 6) = v2;
  *(result + 8) = 0;
  if (v2 == 1)
  {
    if (*(a2 + 1))
    {
      v6 = *(a2 + 1);
    }

    else
    {
      v6 = a2 + 8;
    }

    v7 = *a2;
    *(result + 16) = 0;
    *(result + 24) = 0;
    v8 = (result + 16);
    if (v7)
    {
      v9 = result;
      sub_1AE75B958(result, v7);
      if (*(v9 + 2) < v7)
      {
        __assert_rtn("initialize", "LMTIString.cpp", 269, "len <= m_capacity");
      }

      if (*(v9 + 8))
      {
        v10 = *(v9 + 8);
      }

      else
      {
        v10 = v8;
      }

      memcpy(v10, v6, v7);
      result = v9;
      *v9 = v7;
    }
  }

  else if (!v2)
  {
    *(result + 8) = *(a2 + 1);
    *result = *a2;
    v3 = a2[2];
    if (!v3)
    {
      v4 = result;
      sub_1AE75BDA0(a2);
      result = v4;
      v3 = a2[2];
    }

    *(result + 4) = v3;
    *(result + 17) = 0;
  }

  return result;
}

void sub_1AE75BFB8(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED9AC958 != -1)
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
  }

  v3 = os_signpost_id_generate(qword_1ED9AC960);
  if (qword_1ED9AC958 != -1)
  {
    v5 = v3;
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
    v3 = v5;
  }

  spid = v3;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_1ED9AC960;
    if (os_signpost_enabled(qword_1ED9AC960))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AE5C8000, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ToucanGenerateCompletions", &unk_1AE7CF046, buf, 2u);
    }
  }

  if (*a2 != a2[1])
  {
    operator new();
  }

  __assert_rtn("generateCompletions", "SingleWordBeamSearchPredictor.cpp", 199, "!stems.empty()");
}

void sub_1AE75D984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  v41 = STACK[0x2F8];
  if (STACK[0x2F8])
  {
    STACK[0x300] = v41;
    operator delete(v41);
  }

  v42 = a32;
  a32 = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  sub_1AE6A7188(&a39);
  sub_1AE69F1DC(&STACK[0x310]);
  sub_1AE75E7D8(v39 - 176);
  sub_1AE6A3A5C(&a20);
  sub_1AE6A3A5C(&a24);
  _Unwind_Resume(a1);
}

void sub_1AE75DE48(void *a1, __int128 *a2)
{
  v2 = a2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1 + 2);
  v6 = 0x84BDA12F684BDA13 * ((v4 - v3) >> 3);
  if (v6 >= a1[1])
  {
    if (v3 == v4)
    {
      __assert_rtn("worst", "PriorityQueue.h", 55, "!m_predictions.empty()");
    }

    v15 = *(a2 + 20) + *(a2 + 6);
    if (v15 >= *(v3 + 160) + *(v3 + 24))
    {
      v16 = a1[2];
      do
      {
        v17 = v6 >> 1;
        v18 = v16 + 216 * (v6 >> 1);
        v19 = *(v18 + 20) + *(v18 + 6);
        v20 = (v18 + 216);
        v6 += ~(v6 >> 1);
        if (v15 < v19)
        {
          v6 = v17;
        }

        else
        {
          v16 = v20;
        }
      }

      while (v6);
      v21 = (v3 + 216);
      if ((v3 + 216) != v16)
      {
        v22 = (v3 + 216);
        while (1)
        {
          sub_1AE75E658(v3, v22);
          v3 += 216;
          v22 = (v22 + 216);
          if (v22 == v16)
          {
            break;
          }

          if (v3 == v21)
          {
            v21 = v22;
          }
        }

        if (v3 != v21)
        {
          v30 = v21;
          while (1)
          {
            sub_1AE75E658(v3, v30);
            v30 = (v30 + 216);
            v31 = v3 + 216 == v21;
            if (v30 == v16)
            {
              if ((v3 + 216) == v21)
              {
                break;
              }

              v30 = (v21 + 216);
              v3 += 432;
              while (1)
              {
                sub_1AE75E658(v3 - 216, v21);
                v31 = v3 == v21;
                if (v30 != v16)
                {
                  break;
                }

                v32 = v3 == v21;
                v3 += 216;
                if (v32)
                {
                  goto LABEL_48;
                }
              }
            }

            else
            {
              v3 += 216;
            }

            if (v31)
            {
              v21 = v30;
            }
          }
        }
      }

LABEL_48:
      v33 = v16 - 216;
      if ((v16 - 216) != v2)
      {
        v34 = *(v2 + 23);
        if (*(v16 - 193) < 0)
        {
          if (v34 >= 0)
          {
            v48 = v2;
          }

          else
          {
            v48 = *v2;
          }

          if (v34 >= 0)
          {
            v49 = *(v2 + 23);
          }

          else
          {
            v49 = v2[1];
          }

          v33 = sub_1AE621B84(v33, v48, v49);
        }

        else if ((*(v2 + 23) & 0x80) != 0)
        {
          v33 = sub_1AE621AB4(v33, *v2, v2[1]);
        }

        else
        {
          v35 = *v2;
          *(v16 - 25) = v2[2];
          *v33 = v35;
        }
      }

      *(v33 + 24) = *(v2 + 6);
      v56 = v33 + 32;
      goto LABEL_105;
    }
  }

  else
  {
    if (v4 == v3)
    {
      v14 = v4 - v3;
      v9 = a1[3];
    }

    else
    {
      v8 = 0x84BDA12F684BDA13 * ((v4 - v3) >> 3);
      v9 = a1[2];
      do
      {
        v10 = v8 >> 1;
        v11 = v9 + 216 * (v8 >> 1);
        v12 = *(v11 + 160) + *(v11 + 24);
        v13 = v11 + 216;
        v8 += ~(v8 >> 1);
        if (*(a2 + 20) + *(a2 + 6) < v12)
        {
          v8 = v10;
        }

        else
        {
          v9 = v13;
        }
      }

      while (v8);
      v14 = v9 - v3;
    }

    v23 = v3 + v14;
    v24 = a1[4];
    if (v4 >= v24)
    {
      v28 = v6 + 1;
      if (v6 + 1 > 0x12F684BDA12F684)
      {
        sub_1AE5CBB70();
      }

      if (0x97B425ED097B426 * ((v24 - v3) >> 3) > v28)
      {
        v28 = 0x97B425ED097B426 * ((v24 - v3) >> 3);
      }

      if (0x84BDA12F684BDA13 * ((v24 - v3) >> 3) >= 0x97B425ED097B42)
      {
        v29 = 0x12F684BDA12F684;
      }

      else
      {
        v29 = v28;
      }

      if (v29)
      {
        if (v29 <= 0x12F684BDA12F684)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v37 = 8 * (v14 >> 3);
      v57 = v37;
      v58 = v37;
      if (!(0x84BDA12F684BDA13 * (v14 >> 3)))
      {
        if (v14 < 1)
        {
          if (v14)
          {
            v50 = 0x97B425ED097B426 * (v14 >> 3);
          }

          else
          {
            v50 = 1;
          }

          if (v50 <= 0x12F684BDA12F684)
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v37 -= 216 * ((0x84BDA12F684BDA13 * (v14 >> 3) + 1) >> 1);
        v57 = v37;
        *&v58 = v37;
      }

      if (*(a2 + 23) < 0)
      {
        sub_1AE5DBF1C(v37, *a2, *(a2 + 1));
      }

      else
      {
        *v37 = *a2;
        *(v37 + 16) = *(a2 + 2);
      }

      *(v37 + 24) = *(v2 + 6);
      sub_1AE61E1B4(v37 + 32, (v2 + 4));
      sub_1AE6A83A0(v5, v23, a1[3], v58 + 216);
      v51 = a1[2];
      *&v58 = v58 + 216 + a1[3] - v9;
      a1[3] = v23;
      v52 = v51 + v57 - v9;
      sub_1AE6A83A0(v5, v51, v23, v52);
      v53 = a1[2];
      a1[2] = v52;
      *(a1 + 3) = v58;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      if (v23 != v4)
      {
        v25 = (v4 - 216);
        if (v4 < 0xD8)
        {
          v27 = a1[3];
        }

        else
        {
          v26 = *v25;
          *(v4 + 16) = *(v4 - 200);
          *v4 = v26;
          *(v4 - 208) = 0;
          *(v4 - 200) = 0;
          *v25 = 0;
          *(v4 + 24) = *(v4 - 192);
          *(v4 + 40) = 0;
          *(v4 + 48) = 0;
          *(v4 + 32) = 0;
          *(v4 + 32) = *(v4 - 184);
          *(v4 + 48) = *(v4 - 168);
          *(v4 - 184) = 0;
          *(v4 - 176) = 0;
          *(v4 - 168) = 0;
          *(v4 + 56) = 0;
          *(v4 + 64) = 0;
          *(v4 + 72) = 0;
          *(v4 + 56) = *(v4 - 160);
          *(v4 + 72) = *(v4 - 144);
          *(v4 - 160) = 0;
          *(v4 - 152) = 0;
          *(v4 - 144) = 0;
          *(v4 + 80) = 0;
          *(v4 + 88) = 0;
          *(v4 + 96) = 0;
          *(v4 + 80) = *(v4 - 136);
          *(v4 + 96) = *(v4 - 120);
          *(v4 - 136) = 0;
          *(v4 - 128) = 0;
          *(v4 - 120) = 0;
          *(v4 + 104) = 0;
          *(v4 + 112) = 0;
          *(v4 + 120) = 0;
          *(v4 + 104) = *(v4 - 112);
          *(v4 + 120) = *(v4 - 96);
          *(v4 - 112) = 0;
          *(v4 - 104) = 0;
          *(v4 - 96) = 0;
          *(v4 + 128) = 0;
          *(v4 + 136) = 0;
          *(v4 + 144) = 0;
          *(v4 + 128) = *(v4 - 88);
          *(v4 + 144) = *(v4 - 72);
          *(v4 - 80) = 0;
          *(v4 - 72) = 0;
          *(v4 - 88) = 0;
          *(v4 + 152) = *(v4 - 64);
          *(v4 + 176) = 0;
          *(v4 + 184) = 0;
          *(v4 + 168) = 0;
          *(v4 + 168) = *(v4 - 48);
          *(v4 + 184) = *(v4 - 32);
          *(v4 - 48) = 0;
          *(v4 - 40) = 0;
          *(v4 - 32) = 0;
          *(v4 + 192) = 0;
          *(v4 + 200) = 0;
          *(v4 + 208) = 0;
          *(v4 + 192) = *(v4 - 24);
          *(v4 + 208) = *(v4 - 8);
          *(v4 - 24) = 0;
          *(v4 - 16) = 0;
          *(v4 - 8) = 0;
          v27 = v4 + 216;
        }

        a1[3] = v27;
        if (v4 != v23 + 216)
        {
          v38 = 0;
          v39 = v14 + v3 - v4 + 216;
          do
          {
            v42 = v4 + v38;
            v43 = (v4 + v38 - 216);
            if (*(v4 + v38 - 193) < 0)
            {
              operator delete(*v43);
            }

            v40 = (v4 + v38 - 432);
            v41 = *v40;
            *(v4 + v38 - 200) = *(v4 + v38 - 416);
            *v43 = v41;
            *(v4 + v38 - 409) = 0;
            *v40 = 0;
            *(v42 - 192) = *(v4 + v38 - 408);
            sub_1AE6A3C74(v42 - 184, v4 + v38 - 400);
            v38 -= 216;
          }

          while (v39 != v38);
          v27 = a1[3];
        }

        v44 = v27 <= v2 || v23 > v2;
        v45 = 216;
        if (v44)
        {
          v45 = 0;
        }

        v2 = (v2 + v45);
        if (v23 != v2)
        {
          v46 = *(v2 + 23);
          if (*(v23 + 23) < 0)
          {
            if (v46 >= 0)
            {
              v54 = v2;
            }

            else
            {
              v54 = *v2;
            }

            if (v46 >= 0)
            {
              v55 = *(v2 + 23);
            }

            else
            {
              v55 = v2[1];
            }

            sub_1AE621B84(v23, v54, v55);
          }

          else if ((*(v2 + 23) & 0x80) != 0)
          {
            sub_1AE621AB4(v23, *v2, v2[1]);
          }

          else
          {
            v47 = *v2;
            *(v23 + 16) = v2[2];
            *v23 = v47;
          }
        }

        *(v23 + 24) = *(v2 + 6);
        v56 = v23 + 32;
LABEL_105:

        sub_1AE6A50F8(v56, (v2 + 4));
        return;
      }

      if (*(a2 + 23) < 0)
      {
        sub_1AE5DBF1C(a1[3], *a2, *(a2 + 1));
      }

      else
      {
        v36 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v36;
      }

      *(v4 + 24) = *(v2 + 6);
      sub_1AE61E1B4(v4 + 32, (v2 + 4));
      a1[3] = v4 + 216;
    }
  }
}

void sub_1AE75E590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE75E8C4(va);
  _Unwind_Resume(a1);
}

void ***sub_1AE75E5BC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = v4;
          v4 -= 27;
          sub_1AE61E5C8(v6 - 23);
          if (*(v6 - 193) < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_1AE75E658(uint64_t a1, __int128 *a2)
{
  *__p = *a1;
  v8 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v3 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v15 = *(a1 + 104);
  v16 = *(a1 + 120);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v17 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v19 = *(a1 + 152);
  v20 = *(a1 + 168);
  v5 = *(a1 + 184);
  v18 = v4;
  v21 = v5;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v22 = *(a1 + 192);
  v23 = *(a1 + 208);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 6);
  sub_1AE6A3C74(a1 + 32, (a2 + 2));
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *__p;
  *(a2 + 2) = v8;
  *(a2 + 6) = v3;
  sub_1AE6A3C74((a2 + 2), &v9);
  sub_1AE61E5C8(&v9);
}

uint64_t sub_1AE75E7D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = v3;
        v3 -= 27;
        sub_1AE61E5C8(v5 - 23);
        if (*(v5 - 193) < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE75E858(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = v3;
      v3 -= 27;
      sub_1AE61E5C8(v5 - 23);
      if (*(v5 - 193) < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t sub_1AE75E8C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    sub_1AE61E5C8((i - 184));
    if (*(i - 193) < 0)
    {
      operator delete(*(i - 216));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE75E934(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  sub_1AE6A8898(a1 + 5);
  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[3] = 0;
  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE75E9EC(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  sub_1AE6A8898(a1 + 5);
  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[3] = 0;
  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1AE75EA84(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = LXEntryCopyString();
  if (CFStringCompare(*(a1 + 40), v6, 0) == kCFCompareEqualTo)
  {
    if (a2)
    {
      TokenID = LXEntryGetTokenID();
      if (TokenID)
      {
        v8 = TokenID;
      }

      else
      {
        v8 = 500;
      }
    }

    else
    {
      v8 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v8;
    if (*(a1 + 48))
    {
      LXEntryGetProbability();
      **(a1 + 48) = v9;
    }

    if (a3)
    {
      *a3 = 1;
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_1AE75EB40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE75EB54(uint64_t a1, const UInt8 *a2)
{
  v2 = a2;
  v3 = a2[23];
  if ((v3 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v4 = *(v2 + 1);
    if ((v3 & 0x80u) == 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    cf = CFStringCreateWithBytes(0, a2, v5, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  v10 = 0;
  v11 = &v10;
  v13 = 0;
  v12 = 0x2000000000;
  LXLexiconEnumerateEntriesForString();
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_1AE75ECC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  _Block_object_dispose((v9 - 48), 8);
  sub_1AE621E20(&a9);
  _Unwind_Resume(a1);
}

void sub_1AE75ECE4(uint64_t a1)
{
  *(a1 + 23) = 0;
  *a1 = 0;
  v2 = LXLexiconCopyEntryForTokenID();
  v9 = v2;
  if (v2)
  {
    v3 = v2;
    v4 = LXEntryCopyString();
    v5 = v4;
    v8 = v4;
    if (v4)
    {
      sub_1AE5CC874(v4, &v6);
      *a1 = v6;
      *(a1 + 16) = v7;
      CFRelease(v5);
    }

    CFRelease(v3);
  }
}

void sub_1AE75ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_1AE636D70(va);
  sub_1AE67C310(va1);
  _Unwind_Resume(a1);
}

void sub_1AE75ED9C()
{
  LXLexiconCreateRootCursor();
  LXCursorCreateByAdvancing();
  operator new();
}

void sub_1AE75EF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE75EFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LM12LexiconUtils19makeTokenEnumeratorEPK10_LXLexiconPK10__CFStringNS_11TokenSourceEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LM12LexiconUtils19makeTokenEnumeratorEPK10_LXLexiconPK10__CFStringNS_11TokenSourceEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LM12LexiconUtils19makeTokenEnumeratorEPK10_LXLexiconPK10__CFStringNS_11TokenSourceEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LM12LexiconUtils19makeTokenEnumeratorEPK10_LXLexiconPK10__CFStringNS_11TokenSourceEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE75F0CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LM12LexiconUtils25makePoliteTokenEnumeratorEPK10_LXLexiconPK10__CFStringNS_11TokenSourceEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LM12LexiconUtils25makePoliteTokenEnumeratorEPK10_LXLexiconPK10__CFStringNS_11TokenSourceEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LM12LexiconUtils25makePoliteTokenEnumeratorEPK10_LXLexiconPK10__CFStringNS_11TokenSourceEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LM12LexiconUtils25makePoliteTokenEnumeratorEPK10_LXLexiconPK10__CFStringNS_11TokenSourceEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE75F1E8()
{
  RootCursor = LXLexiconCreateRootCursor();
  v1 = LXCursorCreateByAdvancingWithUTF8();
  if (v1)
  {
    LXCursorEnumerateEntries();
    CFRelease(v1);
  }

  if (RootCursor)
  {
    CFRelease(RootCursor);
  }
}

void sub_1AE75F2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AE720AD0(va);
  sub_1AE720AD0((v7 - 40));
  _Unwind_Resume(a1);
}

void sub_1AE75F2E4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = 0;
  v6 = LXEntryCopyString();
  v7 = *(a1 + 32);
  if (a2)
  {
    TokenID = LXEntryGetTokenID();
    if (TokenID)
    {
      v9 = TokenID;
    }

    else
    {
      v9 = 500;
    }
  }

  else
  {
    v9 = 0;
  }

  LXEntryGetProbability();
  v15 = v6;
  v14 = v9;
  v13 = v10;
  v11 = *(v7 + 24);
  if (!v11)
  {
    sub_1AE60819C();
  }

  (*(*v11 + 48))(v11, &v15, &v14, &v13, &v12);
  *a3 = v12;
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_1AE75F3CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

void sub_1AE75F3E8(uint64_t a1)
{
  v1 = MEMORY[0x1B2705500](*(a1 + 40));
  if (CFStringCompare(v1, @"zh-Hans", 0) == kCFCompareEqualTo)
  {
    operator new();
  }

  __assert_rtn("createLXCursorRoot", "LMCompositeLexicon.cpp", 655, "false && not implemented");
}

CFComparisonResult sub_1AE75F47C(uint64_t a1)
{
  v1 = MEMORY[0x1B2705500](*(a1 + 40));
  result = CFStringCompare(v1, @"zh-Hans", 0);
  if (result)
  {
    __assert_rtn("enumerateSortkeyEquivalentEntries", "LMCompositeLexicon.cpp", 648, "false && not implemented");
  }

  return result;
}

uint64_t sub_1AE75F4CC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 != *(result + 16))
  {
    return (*(**v2 + 136))();
  }

  *a2 = 0;
  return result;
}

void sub_1AE75F508(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = a3;
    while (1)
    {
      v7 = (*(**v3 + 128))(*v3, a2);
      if (v7)
      {
        break;
      }

      if (++v3 == v4)
      {
        v7 = 0;
        break;
      }
    }

    a3 = v6;
  }

  cf = v7;
  sub_1AE5CC874(v7, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1AE75F5AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE75F5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = sub_1AE61D700(v6, v7);
  v9 = (*(*(a1 - 16) + 16))(a1 - 16, v8, a3);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void sub_1AE75F660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE75F67C(int a1, CFStringRef theString)
{
  v5 = 0;
  v6 = &v5;
  v8 = 0;
  v7 = 0x2000000000;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v4[3] = 0;
  if (CFStringGetLength(theString) >= 1)
  {
    operator new[]();
  }

  v2 = *(v6 + 6);
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1AE75FB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  MEMORY[0x1B27063D0](v10, 0x1000C80BDFB0063);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE75FC00(void *a1)
{
  result = a1[4];
  if (result - a1[3] == a1[6])
  {
    operator new[]();
  }

  ++a1[7];
  a1[4] = result + a1[5];
  return result;
}

void sub_1AE75FCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1B27063D0](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE75FCCC(uint64_t a1, int a2, char *cStr, double a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (cStr)
  {
    v11 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, *MEMORY[0x1E695E498]);
    if (v11)
    {
      v12 = v11;
      if (CFStringCompare(*(a1 + 48), v11, 0) == kCFCompareEqualTo)
      {
        *(*(*(a1 + 32) + 8) + 24) = a2;
        *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) * a4;
        *a7 = 1;
      }

      CFRelease(v12);
    }
  }

  else if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) * a4;
    *a7 = 1;
  }
}

uint64_t sub_1AE75FDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a6 = 1;
  }

  return result;
}

void sub_1AE75FE1C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_1AE5CBB70();
    }

    v11 = v3 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v13 = *a2;
    *a2 = 0;
    *(8 * v9) = v13;
    v6 = 8 * v9 + 8;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1AE75FF28(uint64_t a1)
{
  sub_1AE75FF64((a1 - 16));

  JUMPOUT(0x1B2706400);
}

void *sub_1AE75FF64(void *a1)
{
  *a1 = &unk_1F24314C0;
  a1[2] = &unk_1F2431518;
  if (a1[6])
  {
    v2 = a1[3];
    if (a1[4] != v2)
    {
      v3 = 0;
      do
      {
        if ((*(**(v2 + 8 * v3) + 144))(*(v2 + 8 * v3)))
        {
          v4 = a1[6];
          if (v4[7])
          {
            v5 = 0;
            do
            {
              v6 = *(a1[3] + 8 * v3);
              (*(*v6 + 152))(v6, *(*v4 + ((v5 >> 4) & 0xFFFFFFFFFFFFFF8)) + v4[5] * (v5 & 0x7F) + ((0x5000000000 * v3 + 0x5000000000) >> 32));
              ++v5;
              v4 = a1[6];
            }

            while (v5 < v4[7]);
          }
        }

        ++v3;
        v2 = a1[3];
      }

      while (v3 < (a1[4] - v2) >> 3);
    }
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[6];
  a1[6] = 0;
  a1[7] = 0;
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      v10 = v8[1];
      v11 = *v8;
      if (v10 != v9)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1B27063D0](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = *v8;
      }

      v8[1] = v9;
      operator delete(v11);
    }

    MEMORY[0x1B2706400](v8, 0x1030C404F540F20);
  }

  v14 = a1[3];
  if (v14)
  {
    v15 = a1[4];
    v16 = a1[3];
    if (v15 != v14)
    {
      do
      {
        v18 = *--v15;
        v17 = v18;
        *v15 = 0;
        if (v18)
        {
          (*(*v17 + 8))(v17);
        }
      }

      while (v15 != v14);
      v16 = a1[3];
    }

    a1[4] = v14;
    operator delete(v16);
  }

  return a1;
}

void sub_1AE7601B8(uint64_t a1)
{
  v1 = MEMORY[0x1B2705500](*(a1 + 56));
  if (CFStringCompare(v1, @"zh-Hans", 0) == kCFCompareEqualTo)
  {
    operator new();
  }

  __assert_rtn("createLXCursorRoot", "LMCompositeLexicon.cpp", 655, "false && not implemented");
}

CFComparisonResult sub_1AE76024C(uint64_t a1)
{
  v1 = MEMORY[0x1B2705500](*(a1 + 56));
  result = CFStringCompare(v1, @"zh-Hans", 0);
  if (result)
  {
    __assert_rtn("enumerateSortkeyEquivalentEntries", "LMCompositeLexicon.cpp", 648, "false && not implemented");
  }

  return result;
}

uint64_t sub_1AE76029C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  if (v2 != *(result + 32))
  {
    return (*(**v2 + 136))();
  }

  *a2 = 0;
  return result;
}

void sub_1AE7602D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = a3;
    while (1)
    {
      v7 = (*(**v3 + 128))(*v3, a2);
      if (v7)
      {
        break;
      }

      if (++v3 == v4)
      {
        v7 = 0;
        break;
      }
    }

    a3 = v6;
  }

  cf = v7;
  sub_1AE5CC874(v7, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1AE76037C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE760390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = sub_1AE61D700(v6, v7);
  v9 = (*(*a1 + 16))(a1, v8, a3);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void sub_1AE760430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

void sub_1AE760444(void *a1)
{
  sub_1AE75FF64(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE760480(const __CFLocale *a1, int a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  Value = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0]);
  v4 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F8]);
  if (CFStringCompare(Value, @"zh", 0) == kCFCompareEqualTo)
  {
    return v4 && CFStringCompare(v4, @"Hant", 0) == kCFCompareEqualTo;
  }

  if (CFStringCompare(Value, @"yue", 0))
  {
    if (CFStringCompare(Value, @"ja", 0))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 2;
    }
  }

  else if (v4)
  {
    if (CFStringCompare(v4, @"Hant", 0))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1AE760588(const __CFDictionary *a1, const __CFLocale *a2, uint64_t a3, uint64_t a4)
{
  v133 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v6 = a2;
  v7 = a1;
  v122[0] = 0;
  v122[1] = 0;
  v123 = 0;
  Value = CFDictionaryGetValue(a1, kLMLanguageModelIsSiriModelKey);
  v9 = sub_1AE5CF094(Value, 0);
  v10 = CFDictionaryContainsKey(v7, kLMLanguageModelEnableSearchQueryModelLoadingKey) == 0;
  v111 = sub_1AE760480(v6, v10);
  if (!v7)
  {
    LOBYTE(v124) = 0;
    LOBYTE(v126) = 0;
LABEL_15:
    if (v126 == 1)
    {
      v15 = v124;
      if (v124)
      {
        for (i = *(&v124 + 1); i != v15; i -= 8)
        {
          v18 = *(i - 1);
          v17 = v18;
          if (v18)
          {
            CFRelease(v17);
          }
        }

        operator delete(v15);
      }
    }

    goto LABEL_37;
  }

  if (!kLMLanguageModelCustomResourceDirectoryKey || (v11 = CFDictionaryGetValue(v7, kLMLanguageModelCustomResourceDirectoryKey)) == 0 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v11)))
  {
    LOBYTE(v124) = 0;
    LOBYTE(v126) = 0;
    goto LABEL_11;
  }

  sub_1AE68C1FC(&v124, v11);
  if ((v126 & 1) == 0)
  {
LABEL_11:
    if (kLMLanguageModelCustomResourceDirectoryKey)
    {
      v13 = CFDictionaryGetValue(v7, kLMLanguageModelCustomResourceDirectoryKey);
      v14 = v13;
      if (v13)
      {
        CFRetain(v13);
        cf = v14;
        v118 = 1;
        CFRetain(v14);
        v132 = v14;
        memset(__p, 0, sizeof(__p));
        v113 = __p;
        LOBYTE(v114) = 0;
        operator new();
      }
    }

    goto LABEL_15;
  }

  v120 = 0;
  v121 = 0;
  v119 = 0;
  v113 = &v119;
  LOBYTE(v114) = 0;
  if (*(&v124 + 1) != v124)
  {
    if (((*(&v124 + 1) - v124) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  sub_1AE7617A8(&v129, 0, 0);
  v19 = v119;
  *v122 = v129;
  v123 = v130;
  v130 = 0;
  v129 = 0uLL;
  if (!v119)
  {
    goto LABEL_30;
  }

  v20 = v120;
  v21 = v119;
  if (v120 != v119)
  {
    do
    {
      v23 = *(v20 - 1);
      v20 -= 8;
      v22 = v23;
      if (v23)
      {
        CFRelease(v22);
      }
    }

    while (v20 != v19);
    v21 = v119;
  }

  v120 = v19;
  operator delete(v21);
  if (v126)
  {
LABEL_30:
    v24 = v124;
    if (v124)
    {
      for (j = *(&v124 + 1); j != v24; j -= 8)
      {
        v27 = *(j - 1);
        v26 = v27;
        if (v27)
        {
          CFRelease(v26);
        }
      }

      operator delete(v24);
    }
  }

  v28 = CFDictionaryGetValue(v7, kLMLanguageModelAddSystemToCustomResourcesKey);
  if (!sub_1AE5CF094(v28, 0))
  {
    theArray = 0;
    Mutable = 0;
    goto LABEL_131;
  }

LABEL_37:
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v30 = sub_1AE5D24A0(v6);
  cf = v30;
  if (!v30)
  {
    goto LABEL_195;
  }

  v31 = CFGetTypeID(v30);
  if (v31 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v32 = cf;
  if (!cf)
  {
LABEL_195:
    v103 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v103, "Could not construct");
    goto LABEL_198;
  }

  v33 = CFArrayGetTypeID();
  if (v33 != CFGetTypeID(cf))
  {
    v103 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v103, "Could not convert");
LABEL_198:
    __cxa_throw(v103, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(cf);
  v113 = 0;
  v114 = 0;
  v115 = 0;
  if (Count << 32)
  {
    if (!(Count >> 61))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v35 = 0;
  v109 = v6;
  v110 = v9;
  if (Count < 1)
  {
    v41 = 0;
  }

  else
  {
    v36 = 0;
    v37 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v32, v36);
      v39 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
        *&v124 = v39;
        v40 = CFGetTypeID(v39);
        if (v40 != CFURLGetTypeID())
        {
          v102 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1B2705EB0](v102, "Could not construct");
          __cxa_throw(v102, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        *&v124 = 0;
      }

      if (v35 < v115)
      {
        *v35++ = v124;
        v114 = v35;
      }

      else
      {
        v35 = sub_1AE68C3C0(&v113, &v124);
        v114 = v35;
        if (v124)
        {
          CFRelease(v124);
        }
      }

      ++v36;
    }

    while (v37 != v36);
    v41 = v113;
    v35 = v114;
  }

  v42 = v35 - v41;
  v43 = v35 - v41;
  if (v43 < 1)
  {
    goto LABEL_93;
  }

  v44 = v122[1];
  if ((v123 - v122[1]) >= v42)
  {
    while (v41 != v35)
    {
      v51 = *v41;
      if (*v41)
      {
        CFRetain(*v41);
      }

      *v44++ = v51;
      ++v41;
    }

    v122[1] = v44;
    goto LABEL_93;
  }

  v108 = v7;
  v45 = v122[0];
  v105 = v122[1] - v122[0];
  v46 = (v122[1] - v122[0]) >> 3;
  v47 = v46 + v43;
  if (v47 >> 61)
  {
    sub_1AE5CBB70();
  }

  v48 = Mutable;
  v49 = v123 - v122[0];
  if ((v123 - v122[0]) >> 2 > v47)
  {
    v47 = v49 >> 2;
  }

  if (v49 >= 0x7FFFFFFFFFFFFFF8)
  {
    v50 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v50 = v47;
  }

  v107 = a3;
  if (v50)
  {
    if (!(v50 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v52 = (8 * v46);
  v53 = 8 * v46;
  v106 = (8 * v46 + v42);
  Mutable = v48;
  v7 = v108;
  do
  {
    v54 = *v41;
    if (*v41)
    {
      CFRetain(*v41);
    }

    *v52 = v54;
    ++v41;
    ++v52;
    v42 -= 8;
  }

  while (v42);
  v122[1] = v44;
  if (v45 != v44)
  {
    v55 = v45;
    v56 = 0;
    if ((v105 - 8) >= 0x78)
    {
      if (!(v45 + v105) || (v55 = v45, v56 = 0, v45 >= v53))
      {
        v57 = ((v105 - 8) >> 3) + 1;
        v55 = &v45[v57 & 0x3FFFFFFFFFFFFFFCLL];
        v58 = 16;
        v59 = v45;
        v60 = v57 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v61 = *(v59 + 1);
          *(v58 - 16) = *v59;
          *v58 = v61;
          *v59 = 0uLL;
          *(v59 + 1) = 0uLL;
          v59 += 4;
          v58 += 32;
          v60 -= 4;
        }

        while (v60);
        if (v57 == (v57 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_87:
          v62 = v45;
          do
          {
            if (*v62)
            {
              CFRelease(*v62);
            }

            ++v62;
          }

          while (v62 != v44);
          goto LABEL_91;
        }

        v56 = (8 * (v57 & 0x3FFFFFFFFFFFFFFCLL));
      }
    }

    do
    {
      *v56++ = *v55;
      *v55++ = 0;
    }

    while (v55 != v44);
    goto LABEL_87;
  }

LABEL_91:
  v122[0] = 0;
  v122[1] = v106;
  v123 = 0;
  a3 = v107;
  if (v45)
  {
    operator delete(v45);
  }

LABEL_93:
  v132 = 0;
  v9 = v110;
  if (v110)
  {
    v6 = v109;
    if (v7)
    {
      if (CFDictionaryContainsKey(v7, kLMLanguageModelShouldExcludeMobileAssetsKey))
      {
        v63 = CFDictionaryGetValue(v7, kLMLanguageModelShouldExcludeMobileAssetsKey);
        v64 = CFGetTypeID(v63);
        if (v64 == CFBooleanGetTypeID())
        {
          CFBooleanGetValue(v63);
        }
      }
    }

    v65 = sub_1AE650994(v109);
    v132 = v65;
    if (v7)
    {
      if (CFDictionaryContainsKey(v7, kLMLanguageModelShouldExcludeMobileAssetsKey))
      {
        v66 = CFDictionaryGetValue(v7, kLMLanguageModelShouldExcludeMobileAssetsKey);
        v67 = CFGetTypeID(v66);
        if (v67 == CFBooleanGetTypeID())
        {
          CFBooleanGetValue(v66);
        }
      }
    }

    v68 = *MEMORY[0x1E69AC0A0];
    *&v129 = 0;
    *(&v129 + 1) = &v129;
    v130 = 0x2000000000;
    v131 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *&v124 = MEMORY[0x1E69E9820];
    *(&v124 + 1) = 0x40000000;
    v125 = sub_1AE5D2F0C;
    v126 = &unk_1E7A2D8E8;
    v127 = &v129;
    v128 = v68;
    LDEnumerateAssetDataItems();
  }

  else
  {
    v6 = v109;
    if (v7)
    {
      if (CFDictionaryContainsKey(v7, kLMLanguageModelShouldExcludeMobileAssetsKey))
      {
        v69 = CFDictionaryGetValue(v7, kLMLanguageModelShouldExcludeMobileAssetsKey);
        v70 = CFGetTypeID(v69);
        if (v70 == CFBooleanGetTypeID())
        {
          CFBooleanGetValue(v69);
        }
      }
    }

    v65 = sub_1AE650994(v109);
    v132 = v65;
    if (v7)
    {
      if (CFDictionaryContainsKey(v7, kLMLanguageModelShouldExcludeMobileAssetsKey))
      {
        v71 = CFDictionaryGetValue(v7, kLMLanguageModelShouldExcludeMobileAssetsKey);
        v72 = CFGetTypeID(v71);
        if (v72 == CFBooleanGetTypeID())
        {
          CFBooleanGetValue(v71);
        }
      }
    }

    v73 = *MEMORY[0x1E69AC050];
    *&v129 = 0;
    *(&v129 + 1) = &v129;
    v130 = 0x2000000000;
    v131 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *&v124 = MEMORY[0x1E69E9820];
    *(&v124 + 1) = 0x40000000;
    v125 = sub_1AE5D2F0C;
    v126 = &unk_1E7A2D8E8;
    v127 = &v129;
    v128 = v73;
    LDEnumerateAssetDataItems();
  }

  v74 = *(*(&v129 + 1) + 24);
  _Block_object_dispose(&v129, 8);
  if (v65 && CFArrayGetCount(v65) >= 1)
  {
    v134.length = CFArrayGetCount(v65);
    v134.location = 0;
    CFArrayAppendArray(Mutable, v65, v134);
  }

  if (v74)
  {
    if (CFArrayGetCount(v74) >= 1)
    {
      v135.length = CFArrayGetCount(v74);
      v135.location = 0;
      CFArrayAppendArray(theArray, v74, v135);
    }

    CFRelease(v74);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  v75 = v113;
  if (v113)
  {
    v76 = v114;
    v77 = v113;
    if (v114 != v113)
    {
      do
      {
        v79 = *--v76;
        v78 = v79;
        if (v79)
        {
          CFRelease(v78);
        }
      }

      while (v76 != v75);
      v77 = v113;
    }

    v114 = v75;
    operator delete(v77);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_131:
  v80 = sub_1AE5D28BC(v122);
  if (CFDictionaryContainsKey(v7, kLMLanguageModelCustomLexiconNameKey))
  {
    v81 = CFDictionaryGetValue(v7, kLMLanguageModelCustomLexiconNameKey);
  }

  else
  {
    v81 = 0;
  }

  if (CFDictionaryContainsKey(v7, kLMLanguageModelCustomLexiconDeltaNameKey))
  {
    v82 = CFDictionaryGetValue(v7, kLMLanguageModelCustomLexiconDeltaNameKey);
  }

  else
  {
    v82 = 0;
  }

  if (v111 != -1)
  {
    if (v81)
    {
      v83 = v81;
    }

    else
    {
      v83 = @"lexicon";
    }

    sub_1AE7619CC(&v124, Mutable, v80, v83, 18);
    if (v124)
    {
      sub_1AE66BAE4(a3, &v124);
    }

    goto LABEL_178;
  }

  if (v81)
  {
    sub_1AE7619CC(&v124, Mutable, v80, v81, 20);
    goto LABEL_165;
  }

  v84 = *MEMORY[0x1E695E6F0];
  v85 = CFLocaleGetValue(v6, *MEMORY[0x1E695E6F0]);
  v86 = CFStringCompare(v85, @"ko", 0);
  v87 = _os_feature_enabled_impl();
  if (v86)
  {
    v88 = v87;
  }

  else
  {
    v88 = 0;
  }

  if (v88 == 1)
  {
    sub_1AE7619CC(&v124, Mutable, v80, @"morpheme", 20);
    if (v124)
    {
      goto LABEL_165;
    }

    v89 = *(&v124 + 1);
    if (*(&v124 + 1) && !atomic_fetch_add((*(&v124 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v89->__on_zero_shared)(v89);
      std::__shared_weak_count::__release_weak(v89);
    }
  }

  if (v9)
  {
    v90 = @"Siri-Unigrams";
  }

  else
  {
    v91 = CFLocaleGetValue(v6, v84);
    v92 = CFLocaleGetValue(v6, *MEMORY[0x1E695E6F8]);
    if (!v91 || (v93 = v92, CFStringCompare(v91, @"hi", 0)) || !v93 || CFStringCompare(v93, @"Latn", 0))
    {
      sub_1AE761CF8(&v124, Mutable, v80, v6, @"UnifiedTransliteration", 20);
      if (v124)
      {
        goto LABEL_165;
      }

      v94 = *(&v124 + 1);
      if (*(&v124 + 1) && !atomic_fetch_add((*(&v124 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v94->__on_zero_shared)(v94);
        std::__shared_weak_count::__release_weak(v94);
      }
    }

    v90 = @"Unigrams";
  }

  sub_1AE761CF8(&v124, Mutable, v80, v6, v90, 20);
LABEL_165:
  if (v82)
  {
    sub_1AE7619CC(&v129, theArray, v80, v82, 26);
  }

  else
  {
    if (v9)
    {
      v95 = @"Siri-Delta";
    }

    else
    {
      v95 = @"Delta";
    }

    sub_1AE761CF8(&v129, theArray, v80, v6, v95, 26);
  }

  if (v124)
  {
    sub_1AE66BAE4(a3, &v124);
  }

  if (v129 && !v9)
  {
    sub_1AE66BAE4(a4, &v129);
  }

  v96 = *(&v129 + 1);
  if (*(&v129 + 1) && !atomic_fetch_add((*(&v129 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v96->__on_zero_shared)(v96);
    std::__shared_weak_count::__release_weak(v96);
    v97 = *(&v124 + 1);
    if (!*(&v124 + 1))
    {
      goto LABEL_180;
    }

    goto LABEL_179;
  }

LABEL_178:
  v97 = *(&v124 + 1);
  if (!*(&v124 + 1))
  {
    goto LABEL_180;
  }

LABEL_179:
  if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v97->__on_zero_shared)(v97);
    std::__shared_weak_count::__release_weak(v97);
    if (!Mutable)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_180:
  if (Mutable)
  {
LABEL_181:
    CFRelease(Mutable);
  }

LABEL_182:
  if (theArray)
  {
    CFRelease(theArray);
  }

  CFRelease(v80);
  v98 = v122[0];
  if (v122[0])
  {
    for (k = v122[1]; k != v98; k -= 8)
    {
      v101 = *(k - 1);
      v100 = v101;
      if (v101)
      {
        CFRelease(v100);
      }
    }

    operator delete(v98);
  }
}

void sub_1AE761544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31)
{
  sub_1AE68B070(&a28);
  sub_1AE68C610((v31 - 192));
  sub_1AE76195C(&a31);
  _Unwind_Resume(a1);
}

void ***sub_1AE761728(void ***a1)
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
          v7 = *(v4 - 1);
          v4 -= 8;
          v6 = v7;
          if (v7)
          {
            CFRelease(v6);
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

void sub_1AE7617A8(unint64_t *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    v6 = 0;
    while (1)
    {
      v7 = *v4;
      if (!*v4)
      {
        break;
      }

      v8 = CFGetTypeID(*v4);
      if (v8 == CFStringGetTypeID())
      {
        v9 = CFURLCreateWithFileSystemPath(0, v7, kCFURLPOSIXPathStyle, 1u);
      }

      else
      {
        v10 = CFGetTypeID(v7);
        if (v10 != CFURLGetTypeID())
        {
          break;
        }

        v9 = CFURLCopyAbsoluteURL(v7);
      }

      v11 = v9;
      if (!v9)
      {
        break;
      }

      v12 = CFGetTypeID(v9);
      if (v12 == CFURLGetTypeID())
      {
        cf = v11;
        if (v6 >= a1[2])
        {
          v6 = sub_1AE7622C0(a1, &cf);
          a1[1] = v6;
        }

        else
        {
          CFRetain(v11);
          *v6++ = v11;
          v11 = cf;
          a1[1] = v6;
          if (!v11)
          {
            goto LABEL_4;
          }
        }

        CFRelease(v11);
      }

      else
      {
        cf = 0;
        CFRelease(v11);
      }

LABEL_4:
      if (++v4 == a3)
      {
        return;
      }
    }

    cf = 0;
    goto LABEL_4;
  }
}

void sub_1AE7618E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE68C59C(va);
  sub_1AE76195C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE76191C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void **sub_1AE76195C(void **a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
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

CFIndex sub_1AE7619CC(void *a1, const __CFArray *a2, CFArrayRef theArray, const __CFString *a4, int a5)
{
  valuePtr = a5;
  v23 = 0;
  cf = 0;
  if (a2)
  {
    v9 = CFStringCreateWithFormat(0, 0, @"%@.dat", a4);
    v10 = 0;
    v11 = 0;
    do
    {
      if (v11 >= CFArrayGetCount(a2))
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a2, v11);
      v13 = CFURLCopyAbsoluteURL(ValueAtIndex);
      v14 = CFURLCopyFileSystemPath(v13, kCFURLPOSIXPathStyle);
      if (CFStringHasSuffix(v14, v9))
      {
        cf = v13;
        v15 = v13 == 0;
        v10 = v13;
      }

      else
      {
        CFRelease(v13);
        v15 = 1;
      }

      CFRelease(v14);
      ++v11;
    }

    while (v15);
    CFRelease(v9);
    if (v10)
    {
LABEL_12:
      theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v21 = CFURLCopyAbsoluteURL(v10);
      v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      v19 = CFNumberCreate(0, kCFNumberCFIndexType, &v23);
      CFDictionarySetValue(theDict, @"URL", v21);
      CFDictionarySetValue(theDict, @"Name", a4);
      CFDictionarySetValue(theDict, @"Type", v20);
      CFDictionarySetValue(theDict, @"Priority", v19);
      operator new();
    }
  }

  v16 = 0;
  while (1)
  {
    result = CFArrayGetCount(theArray);
    if (v16 >= result)
    {
      break;
    }

    v18 = CFArrayGetValueAtIndex(theArray, v16);
    v10 = CFBundleCopyResourceURLInDirectory(v18, a4, @"dat", 0);
    cf = v10;
    ++v16;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

void sub_1AE761C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, const void *a13, uint64_t a14, const void *a15)
{
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  sub_1AE68C7C0(&a10);
  sub_1AE68C7C0(&a11);
  sub_1AE6883BC(&a12);
  sub_1AE622220(&a13);
  sub_1AE6883BC(&a15);
  _Unwind_Resume(a1);
}

void sub_1AE761CF8(void *a1, const __CFArray *a2, const __CFArray *a3, CFLocaleRef locale, const __CFString *a5, int a6)
{
  *a1 = 0;
  a1[1] = 0;
  Value = CFLocaleGetValue(locale, *MEMORY[0x1E695E6F0]);
  v12 = CFLocaleGetValue(locale, *MEMORY[0x1E695E6F8]);
  v13 = CFLocaleGetValue(locale, *MEMORY[0x1E695E6D0]);
  if (CFStringCompare(Value, @"ars", 0))
  {
    v14 = Value;
  }

  else
  {
    v14 = @"ar";
  }

  if (!v12)
  {
    if (v13)
    {
      v32 = CFStringCreateWithFormat(0, 0, @"%@-%@_%@", a5, v14, v13);
      sub_1AE7619CC(&v38, a2, a3, v32, a6);
      v34 = *(&v38 + 1);
      v33 = v38;
      *a1 = v38;
      a1[1] = v34;
      CFRelease(v32);
      if (v33)
      {
        return;
      }
    }

    else
    {
      v34 = 0;
    }

    v28 = CFStringCreateWithFormat(0, 0, @"%@-%@", a5, v14);
    sub_1AE7619CC(&v38, a2, a3, v28, a6);
    v35 = v38;
    v38 = 0uLL;
    *a1 = v35;
    if (!v34 || atomic_fetch_add(v34 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_40;
    }

    (*(*v34 + 16))(v34);
    v31 = v34;
    goto LABEL_39;
  }

  if (!v13)
  {
    goto LABEL_46;
  }

  v15 = CFStringCreateWithFormat(0, 0, @"%@-%@-%@_%@", a5, v14, v12, v13);
  sub_1AE7619CC(&v38, a2, a3, v15, a6);
  v16 = v38;
  *a1 = v38;
  CFRelease(v15);
  if (!v16)
  {
    v17 = CFStringCreateWithFormat(0, 0, @"%@-%@_%@_%@", a5, v14, v12, v13);
    sub_1AE7619CC(&v38, a2, a3, v17, a6);
    v18 = v38;
    v38 = 0uLL;
    *a1 = v18;
    if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v16 + 1) + 16))(*(&v16 + 1));
      std::__shared_weak_count::__release_weak(*(&v16 + 1));
    }

    v19 = *(&v38 + 1);
    if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    CFRelease(v17);
    if (!*a1)
    {
LABEL_46:
      v20 = CFStringCreateWithFormat(0, 0, @"%@-%@-%@", a5, v14, v12);
      sub_1AE7619CC(&v38, a2, a3, v20, a6);
      v21 = v38;
      v38 = 0uLL;
      v22 = a1[1];
      *a1 = v21;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }

      v23 = *(&v38 + 1);
      if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      CFRelease(v20);
      if (!*a1)
      {
        v24 = CFStringCreateWithFormat(0, 0, @"%@-%@_%@", a5, v14, v12);
        sub_1AE7619CC(&v38, a2, a3, v24, a6);
        v25 = v38;
        v38 = 0uLL;
        v26 = a1[1];
        *a1 = v25;
        if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        v27 = *(&v38 + 1);
        if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        CFRelease(v24);
        if (!*a1 && CFStringCompare(a5, @"UnifiedTransliteration", 0) == kCFCompareEqualTo)
        {
          v28 = CFStringCreateWithFormat(0, 0, @"%@-%@", a5, v14);
          sub_1AE7619CC(&v38, a2, a3, v28, a6);
          v29 = v38;
          v38 = 0uLL;
          v30 = a1[1];
          *a1 = v29;
          if (!v30 || atomic_fetch_add(v30 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_40;
          }

          (*(*v30 + 16))(v30);
          v31 = v30;
LABEL_39:
          std::__shared_weak_count::__release_weak(v31);
LABEL_40:
          v36 = *(&v38 + 1);
          if (*(&v38 + 1))
          {
            if (!atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v36->__on_zero_shared)(v36);
              std::__shared_weak_count::__release_weak(v36);
            }
          }

          CFRelease(v28);
        }
      }
    }
  }
}

uint64_t sub_1AE7622C0(unint64_t *a1, const void **a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_1AE5CBB70();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v8 = *a2;
  if (*a2)
  {
    CFRetain(v8);
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = 8 * v3 - (v10 - *a1);
  *(8 * v3) = v8;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v13 = v12 - 8;
    v14 = v9;
    v15 = v11;
    if ((v12 - 8) >= 0x98)
    {
      if (v11 >= v9 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8 || (v14 = v9, v15 = v11, v9 >= v2 + (v13 & 0xFFFFFFFFFFFFFFF8) - v12 + 8))
      {
        v16 = v12 >> 3;
        v17 = (v13 >> 3) + 1;
        v18 = v17 & 0x3FFFFFFFFFFFFFFCLL;
        v14 = &v9[v18];
        v19 = (-8 * v16 + 8 * v3 + 16);
        v20 = v9;
        v21 = v17 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v22 = *(v20 + 1);
          *(v19 - 1) = *v20;
          *v19 = v22;
          *v20 = 0uLL;
          *(v20 + 1) = 0uLL;
          v20 += 4;
          v19 += 2;
          v21 -= 4;
        }

        while (v21);
        if (v17 == (v17 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_23;
        }

        v15 = (v11 + v18 * 8);
      }
    }

    do
    {
      *v15++ = *v14;
      *v14++ = 0;
    }

    while (v14 != v10);
    do
    {
LABEL_23:
      if (*v9)
      {
        CFRelease(*v9);
      }

      ++v9;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = 8 * v3 + 8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 8 * v3 + 8;
}

uint64_t sub_1AE7624A4(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4)
{
  v7 = CFDictionaryContainsKey(theDict, kLMLanguageModelEnableSearchQueryModelLoadingKey) == 0;
  result = sub_1AE760480(*(a1 + 56), v7);
  v9 = *a3;
  if (*(a3 + 8) != *a3)
  {
    if (result != -1)
    {
      Value = CFDictionaryGetValue(**v9, @"URL");
      CFURLCopyFileSystemPath(Value, kCFURLPOSIXPathStyle);
      operator new();
    }

    v11 = CFDictionaryGetValue(**v9, @"URL");
    CFURLCopyFileSystemPath(v11, kCFURLPOSIXPathStyle);
    if ((*(a4 + 8) - *a4) >> 4)
    {
      v12 = CFDictionaryGetValue(***a4, @"URL");
      CFURLCopyFileSystemPath(v12, kCFURLPOSIXPathStyle);
      operator new();
    }

    operator new();
  }

  return result;
}

void sub_1AE762A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    JUMPOUT(0x1AE762A78);
  }

  JUMPOUT(0x1AE762A5CLL);
}

uint64_t **sub_1AE762AA0(uint64_t **result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if ((v3 - *result) < 9)
  {
    if (v2 == v3)
    {
      operator new[]();
    }
  }

  else
  {
    v4 = v2 + 1;
    while (v3 != v4)
    {
      v5 = *--v3;
      result = v5;
      *v3 = 0;
      if (v5)
      {
        result = MEMORY[0x1B27063D0](result, 0x1000C8077774924);
      }
    }

    v1[1] = v4;
  }

  v6 = **v1;
  v1[3] = v6;
  v1[4] = v6;
  v1[7] = 0;
  return result;
}

void sub_1AE762B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1B27063D0](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AE762BA8(void *a1)
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
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          MEMORY[0x1B27063D0](v5, 0x1000C8077774924);
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

uint64_t sub_1AE762C2C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[3];
    if (a1[4] != v3)
    {
      v4 = 0;
      do
      {
        if ((*(**(v3 + 8 * v4) + 144))(*(v3 + 8 * v4)))
        {
          v5 = a1[6];
          if (v5[7])
          {
            v6 = 0;
            do
            {
              v7 = *(a1[3] + 8 * v4);
              (*(*v7 + 152))(v7, *(*v5 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + v5[5] * (v6 & 0x7F) + ((0x5000000000 * v4 + 0x5000000000) >> 32));
              ++v6;
              v5 = a1[6];
            }

            while (v6 < v5[7]);
          }
        }

        ++v4;
        v3 = a1[3];
      }

      while (v4 < (a1[4] - v3) >> 3);
      v2 = a1[6];
    }
  }

  sub_1AE762AA0(v2);
  result = sub_1AE75FC00(a1[6]);
  v9 = a1[3];
  if (a1[4] != v9)
  {
    v10 = result;
    v11 = 0;
    v12 = 0x5000000000;
    do
    {
      (*(**(v9 + 8 * v11) + 120))(*(v9 + 8 * v11));
      v13 = *(a1[3] + 8 * v11);
      result = (*(*v13 + 16))(v13, v10 + (v12 >> 32));
      ++v11;
      v9 = a1[3];
      v12 += 0x5000000000;
    }

    while (v11 < (a1[4] - v9) >> 3);
  }

  return result;
}

void **sub_1AE762DD4(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      v4 = v1[1];
      v5 = *v1;
      if (v4 != v3)
      {
        do
        {
          v7 = *--v4;
          v6 = v7;
          *v4 = 0;
          if (v7)
          {
            MEMORY[0x1B27063D0](v6, 0x1000C8077774924);
          }
        }

        while (v4 != v3);
        v5 = *v1;
      }

      v1[1] = v3;
      operator delete(v5);
    }

    MEMORY[0x1B2706400](v1, 0x1030C404F540F20);
    return v2;
  }

  return result;
}

void *sub_1AE762E84(void *a1)
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
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
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

void sub_1AE762F14(uint64_t a1, CFDictionaryRef theDict)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F24314C0;
  *(a1 + 16) = &unk_1F2431518;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  Value = CFDictionaryGetValue(theDict, kLMLanguageModelLocaleKey);
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = CFLocaleCreate(0, v5);
LABEL_6:
      v5 = v7;
      goto LABEL_8;
    }

    v8 = CFGetTypeID(v5);
    if (v8 == CFLocaleGetTypeID())
    {
      v7 = CFRetain(v5);
      goto LABEL_6;
    }

    v5 = 0;
  }

LABEL_8:
  if (sub_1AE5CD624(v5, @"ars"))
  {
    v9 = sub_1AE61DD48(v5, @"ar");
    CFRelease(v5);
    v5 = v9;
  }

  *(a1 + 56) = v5;
  if (v5)
  {
    if (CFDictionaryGetValue(theDict, kLMLanguageModelCustomWordsKey))
    {
      v10 = CFDictionaryContainsKey(theDict, kLMLanguageModelEnableSearchQueryModelLoadingKey) == 0;
      sub_1AE760480(*(a1 + 56), v10);
      operator new();
    }

    __dst = 0uLL;
    v22 = 0;
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_1AE760588(theDict, *(a1 + 56), &__dst, &__p);
    sub_1AE7624A4(a1, theDict, &__dst, &__p);
    v11 = __p;
    if (__p)
    {
      v12 = v19;
      if (v19 != __p)
      {
        do
        {
          v13 = *(v12 - 1);
          if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v13->__on_zero_shared)(v13);
            std::__shared_weak_count::__release_weak(v13);
          }

          v12 -= 16;
        }

        while (v12 != v11);
        v11 = __p;
      }

      operator delete(v11);
    }

    v14 = __dst;
    if (__dst)
    {
      v15 = *(&__dst + 1);
      if (*(&__dst + 1) != __dst)
      {
        do
        {
          v16 = *(v15 - 1);
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }

          v15 -= 16;
        }

        while (v15 != v14);
        v14 = __dst;
      }

      operator delete(v14);
    }
  }

  if (*(a1 + 24) != *(a1 + 32))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  sub_1AE5CC990(&__dst, "Lexicon resources not found");
  sub_1AE660DB0(exception, &__dst);
  __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
}

void sub_1AE764138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  MEMORY[0x1B2706400](a11, 0x80C40B8603338);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AE645234(&a21);
  v30 = sub_1AE71B388(a16);
  MEMORY[0x1B2706400](v30, 0x10A1C40426DDB63);
  MEMORY[0x1B2706400](a17, 0xA1C40BD48D6D6);
  sub_1AE67BE08((a14 + 56));
  sub_1AE762DD4((a14 + 48));
  sub_1AE762E84(a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE764374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  v10 = sub_1AE75FC00(*(a1 + 48));
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  if (v12 == v11)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0.0;
  v16 = 0x5000000000;
  do
  {
    v17 = (*(**(v11 + 8 * v13) + 24))(*(v11 + 8 * v13), a2 + (v16 >> 32), v10 + (v16 >> 32), a3, a4);
    v18 = *(*(a1 + 24) + 8 * v13);
    if ((*(*v18 + 32))(v18, v10 + (v16 >> 32)))
    {
      v14 = 1;
      if (v15 == 0.0)
      {
        v15 = v17;
      }
    }

    ++v13;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v16 += 0x5000000000;
  }

  while (v13 < (v12 - v11) >> 3);
  if ((v14 & 1) == 0)
  {
LABEL_10:
    if (v12 != v11)
    {
      v19 = 0;
      v20 = 0x5000000000;
      do
      {
        if ((*(**(v11 + 8 * v19) + 144))(*(v11 + 8 * v19)))
        {
          v21 = *(*(a1 + 24) + 8 * v19);
          (*(*v21 + 152))(v21, v10 + (v20 >> 32));
        }

        ++v19;
        v11 = *(a1 + 24);
        v20 += 0x5000000000;
      }

      while (v19 < (*(a1 + 32) - v11) >> 3);
    }

    v22 = *(a1 + 48);
    v23 = v22[4];
    v10 = 0;
    if (v23 > v22[3])
    {
      v22[4] = v23 - v22[5];
      --v22[7];
    }
  }

  else if (a5)
  {
    *a5 = v15;
  }

  return v10;
}

void sub_1AE764584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0x5000000000;
  do
  {
    v12 = *(a1 + 24);
    if (v10 >= (*(a1 + 32) - v12) >> 3)
    {
      break;
    }

    v13 = *(v12 + 8 * v10);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = sub_1AE75FDC4;
    v14[3] = &unk_1E7A2FE40;
    v14[4] = a5;
    v14[5] = &v15;
    (*(*v13 + 56))(v13, a2 + (v11 >> 32), a3, a4, v14);
    ++v10;
    v11 += 0x5000000000;
  }

  while ((v16[3] & 1) == 0);
  _Block_object_dispose(&v15, 8);
}

void sub_1AE7646BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

std::string *sub_1AE7646D4(std::string *a1, uint64_t a2, const void ***a3)
{
  *(&v28.__r_.__value_.__s + 23) = 7;
  strcpy(&v28, "UPDATE ");
  v7 = *(a2 + 8);
  v5 = a2 + 8;
  v6 = v7;
  v8 = *(v5 + 8);
  if (*(v5 + 23) >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v5 = v6;
    v9 = v8;
  }

  v10 = std::string::append(&v28, v5, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v29, " SET ", 5uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
LABEL_6:
  v14 = *a3;
  v15 = a3[1];
  if (*a3 != v15)
  {
    v16 = *(v14 + 23);
    if (v16 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = v14[1];
    }

    if (v17 + 2 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_51;
    }

    if (v17 + 2 >= 0x17)
    {
      operator new();
    }

    memset(&v29, 0, sizeof(v29));
    *(&v29.__r_.__value_.__s + 23) = v17 + 2;
    if (v17)
    {
      if ((v16 & 0x80u) == 0)
      {
        v18 = v14;
      }

      else
      {
        v18 = *v14;
      }

      memmove(&v29, v18, v17);
    }

    strcpy(&v29 + v17, "=?");
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v29;
    }

    else
    {
      v19 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v19, size);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v21 = v14 + 3;
    if (v14 + 3 != v15)
    {
      while (1)
      {
        std::string::append(a1, ", ", 2uLL);
        v22 = *(v21 + 23);
        v23 = v22 >= 0 ? *(v21 + 23) : v21[1];
        if (v23 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          break;
        }

        if (v23 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v29, 0, sizeof(v29));
        *(&v29.__r_.__value_.__s + 23) = v23 + 2;
        if (v23)
        {
          if ((v22 & 0x80u) == 0)
          {
            v24 = v21;
          }

          else
          {
            v24 = *v21;
          }

          memmove(&v29, v24, v23);
        }

        strcpy(&v29 + v23, "=?");
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v29;
        }

        else
        {
          v25 = v29.__r_.__value_.__r.__words[0];
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v26 = v29.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v25, v26);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v21 += 3;
        if (v21 == v15)
        {
          return std::string::append(a1, " WHERE TokenID=?", 0x10uLL);
        }
      }

LABEL_51:
      sub_1AE5DB4F0();
    }
  }

  return std::string::append(a1, " WHERE TokenID=?", 0x10uLL);
}

void sub_1AE764A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE764A74(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(result + 8);
  *(result + 8) = v2;
  if (v3)
  {
    if (*v3)
    {
      sub_1AE774A30(v3);
      if (*v3)
      {
        MEMORY[0x1B2706400](*v3, 0x1010C4006136809);
      }
    }

    JUMPOUT(0x1B2706400);
  }

  return result;
}

void sub_1AE764B00(uint64_t a1)
{
  if (*(**(a1 + 8) + 12))
  {
    operator new();
  }

  operator new();
}

void sub_1AE765548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (*(v25 - 97) < 0)
  {
    operator delete(*(v25 - 120));
  }

  if (v23)
  {
    __cxa_free_exception(v24);
  }

  MEMORY[0x1B2706400](a23, 0x20C4093837F09);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE765628(uint64_t a1, CFErrorRef *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = sub_1AE71A420(*(a1 + 16));
  v5 = sub_1AE61DA04(v4, *v2, kCFPropertyListBinaryFormat_v1_0, 1, a2);
  CFRelease(v4);
  return v5;
}

void sub_1AE765690(uint64_t a1, const __CFURL *a2)
{
  v3 = CFURLCreateCopyAppendingPathComponent(0, a2, @"tags.plist", 0);
  v4 = sub_1AE71A420(*(a1 + 16));
  sub_1AE61DA04(v4, v3, kCFPropertyListXMLFormat_v1_0, 1, 0);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1AE765718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1AE6222FC(&a9);
  sub_1AE650E5C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE76573C(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = sub_1AE719B30(v4, v3, a2);
      v6 = *(v2 + 16);
      if (!v6)
      {
        return v5 | v6;
      }
    }

    else
    {
      v5 = 0;
      v6 = *(v2 + 16);
      if (!v6)
      {
        return v5 | v6;
      }
    }

    LODWORD(v6) = sub_1AE719B30(v6, v3, a2);
    return v5 | v6;
  }

  return 0;
}

void sub_1AE7657AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = sub_1AE765824;
  v2[3] = &unk_1E7A2FED0;
  v2[4] = a1;
  sub_1AE779EE0(*v1, 0, v2);
}

uint64_t sub_1AE765840(uint64_t a1, int __fd)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  if (!*v2)
  {
    return 1;
  }

  v5 = *(v3 + 16);
  v56 = *(v3 + 20);
  v6 = *(v3 + 7);
  v7 = *(v3 + 6);
  v8 = *(v3 + 5);
  v9 = *(v3 + 24);
  __buf = -1381269244;
  v64 = 0;
  v57 = v8;
  v65 = v8;
  v67 = 64;
  v59 = v7;
  v66 = v7;
  v69 = 0;
  v68 = *(v3 + 8);
  v71 = 0;
  v72 = 0;
  if (v9)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 1;
  }

  v70 = 0;
  if (!v10)
  {
    LODWORD(v69) = v5;
    HIDWORD(v69) = v5;
  }

  v11 = write(__fd, &__buf, 0x18uLL);
  v12 = v11 == 24;
  if (v11 == 24)
  {
    v13 = 24;
  }

  else
  {
    v13 = 0;
  }

  if (v9)
  {
    v14 = v11 == 24;
  }

  else
  {
    v14 = 0;
  }

  if (!v14 || v5 == 0)
  {
    v58 = v13;
    v55 = v2;
    goto LABEL_19;
  }

  v21 = (3 * v5) & 0x1FFFFFFF;
  result = malloc_type_calloc(v21, 1uLL, 0x100004077774924uLL);
  if (result)
  {
    v23 = result;
    v55 = v2;
    v24 = v6 + 24;
    v25 = v56;
    if (v56)
    {
      v26 = v6 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v43 = 0;
      v44 = 0;
      v45 = v56;
      do
      {
        v47 = ((v43 + 24) >> 3) + v9;
        v48 = v47 & 0xFFFFFFFFFFFFFFF8;
        v49 = v43 & 7 | (8 * (v47 & 7));
        v50 = *(v47 & 0xFFFFFFFFFFFFFFF8) >> v49;
        if ((v49 + v6) >= 0x41)
        {
          v50 |= *(v48 + 8) << -v49;
        }

        if ((v50 & (0xFFFFFFFFFFFFFFFFLL >> -v6)) != 0)
        {
          v51 = (v43 >> 3) + v9;
          v52 = v51 & 0xFFFFFFFFFFFFFFFCLL;
          v53 = v43 & 7 | (8 * (v51 & 3));
          v54 = *(v51 & 0xFFFFFFFFFFFFFFFCLL) >> v53;
          if (v53 >= 9)
          {
            v54 |= *(v52 + 4) << -v53;
          }

          v46 = (24 * v44) >> 3;
          *(result + v46) = v54;
          *(result + 2 + v46) = BYTE2(v54);
          ++v44;
        }

        v43 += v24;
        --v45;
      }

      while (v45);
    }

    v27 = write(__fd, result, v21);
    free(v23);
    v12 = v27 == v21;
    if (v27 == v21)
    {
      v28 = (3 * v5) & 0x1FFFFFFF;
    }

    else
    {
      v28 = 0;
    }

    v58 = v28 + v13;
    if (v27 == v21 && v56)
    {
      if (v6)
      {
        v29 = 0;
        v30 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
        v31 = 1;
        while (1)
        {
          v33 = ((v29 + 24) >> 3) + v9;
          v34 = v33 & 0xFFFFFFFFFFFFFFF8;
          v35 = v29 & 7 | (8 * (v33 & 7));
          v36 = *(v33 & 0xFFFFFFFFFFFFFFF8) >> v35;
          if ((v35 + v6) >= 0x41)
          {
            v36 |= *(v34 + 8) << -v35;
          }

          v37 = v36 & v30;
          if ((v36 & v30) != 0)
          {
            v38 = sub_1AE773764(v36 & v30, v57, v59, 0, v37 + ((6 * v57 + 4) >> 3) + 3, 1u) - v37 + 3;
            v60 = v38 >> 2;
            v61 = v38 >> 10;
            v62 = v38 >> 18;
            if (write(__fd, &v60, 3uLL) != 3)
            {
              v12 = 0;
              goto LABEL_19;
            }

            v39 = v38 & 0xFFFFFFFC;
            v40 = (v39 - 3);
            v41 = write(__fd, (v37 + 3), v40);
            v12 = v41 == v40;
            if (v41 == v40)
            {
              v42 = v39;
            }

            else
            {
              v42 = 0;
            }

            v25 = v56;
            v58 += v42;
            if (v41 != v40)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v12 = 1;
          }

          v29 += v24;
          if (v31++ >= v25)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
LABEL_19:
      if (!v12)
      {
        return 0;
      }
    }

    v16 = *v55;
    v17 = *(*v55 + 32);
    if (!v17)
    {
      v20 = v58;
      return v20 == *(v16 + 12);
    }

    v18 = sub_1AE773764(*(*v55 + 32), 1u, v59, 0, v17 + 4, 1u) - v17 + 3;
    v60 = v18 >> 2;
    v61 = v18 >> 10;
    v62 = v18 >> 18;
    if (write(__fd, &v60, 3uLL) == 3)
    {
      v19 = v18 & 0xFFFFFFFC;
      if (write(__fd, (v17 + 3), v19 - 3) == v19 - 3)
      {
        v20 = v58 + v19;
        v16 = *v55;
        return v20 == *(v16 + 12);
      }
    }

    return 0;
  }

  return result;
}

void sub_1AE765C68(uint64_t a1)
{
  sub_1AE774A30(*(a1 + 8));
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      sub_1AE71A670(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      sub_1AE71A670(v4);
    }

    if (*v2)
    {
      sub_1AE61D968();
    }
  }
}

void sub_1AE765D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE765D4C(uint64_t a1, void *a2)
{
  if (*a2 != a2[1])
  {
    v5[5] = v2;
    v5[6] = v3;
    v4 = *(a1 + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE765DD4;
    v5[3] = &unk_1E7A2FEB0;
    v5[4] = a2;
    sub_1AE779EE0(*v4, v5, 0);
  }
}

BOOL sub_1AE765DD4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        return v3 == v4;
      }
    }
  }

  return v3 == v4;
}

uint64_t sub_1AE765E0C(uint64_t a1, unint64_t a2)
{
  v93 = *(a1 + 8);
  v2 = *v93;
  if (*v93)
  {
    v3 = *(v2 + 12);
    if (v3 > a2)
    {
      if (*(v2 + 16))
      {
        v4 = 0;
        v5 = a2 * 0.95;
        v90 = a2;
        while (1)
        {
          v92 = v3;
          v91 = v4;
          v6 = malloc_type_calloc(0x2710uLL, 4uLL, 0x100004052888210uLL);
          v7 = *(v2 + 7);
          v98 = *(v2 + 24);
          v8 = !v98 || *(v2 + 16) == 0;
          v100 = *(v2 + 20);
          v9 = v8 || *(v2 + 20) == 0;
          if (!v9 && v7 != 0)
          {
            break;
          }

LABEL_16:
          v11 = 0uLL;
          v12 = -40000;
          v13 = 0uLL;
          do
          {
            v11 = vaddq_s32(*(v6 + v12 + 40000), v11);
            v13 = vaddq_s32(*(v6 + v12 + 40016), v13);
            v12 += 32;
          }

          while (v12);
          v14 = 0;
          v15 = vaddvq_s32(vaddq_s32(v13, v11));
          while (1)
          {
            v14 += v6[v12];
            if (v14 >= v15 - ((v5 * v15) / v92))
            {
              break;
            }

            if (++v12 == 10000)
            {
              v16 = 1000.0;
              goto LABEL_23;
            }
          }

          v16 = (v12 * 0.1) + 0.05;
LABEL_23:
          free(v6);
          v17 = *v93;
          v95 = *(*v93 + 5);
          v101 = *(*v93 + 7);
          v18 = *(*v93 + 6);
          v19 = *(*v93 + 16);
          v20 = *(*v93 + 20);
          v99 = *(*v93 + 24);
          v21 = *(*v93 + 40);
          if (v21)
          {
            *&v22 = -1;
            *(&v22 + 1) = -1;
            v21[1] = v22;
            v21[2] = v22;
            *v21 = v22;
          }

          if (v99)
          {
            v23 = v19 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (!v23 && v20 != 0 && v101 != 0)
          {
            v84 = 0xFFFFFFFFFFFFFFFFLL >> -v101;
            v85 = 24;
            do
            {
              v86 = (v85 >> 3) + v99;
              v87 = v86 & 0xFFFFFFFFFFFFFFF8;
              v88 = (v85 - 24) & 7 | (8 * (v86 & 7));
              v89 = *(v86 & 0xFFFFFFFFFFFFFFF8) >> v88;
              if ((v88 + v101) >= 0x41)
              {
                v89 |= *(v87 + 8) << -v88;
              }

              if ((v89 & v84) != 0)
              {
                v102[0] = MEMORY[0x1E69E9820];
                v102[1] = 0x40000000;
                v102[2] = sub_1AE77A9FC;
                v102[3] = &unk_1E7A2FFB0;
                v102[4] = v17;
                v103 = v18;
                sub_1AE77AA68(v89 & v84, v95, v18, 0, (v89 & v84) + ((6 * v95 + 4) >> 3) + 3, 1, 0, 1u, v16, v102);
              }

              v85 += v101 + 24;
              --v20;
            }

            while (v20);
          }

          sub_1AE7793E0(v17, 0, 0, *(v17 + 6));
          v2 = *v93;
          LODWORD(v3) = *(*v93 + 12);
          if (v3 <= v90)
          {
            return 1;
          }

          result = 1;
          if (*(v2 + 16))
          {
            v4 = v91 + 1;
            if (v91 <= 1)
            {
              continue;
            }
          }

          return result;
        }

        v27 = 0;
        v28 = *(v2 + 5);
        v29 = *(v2 + 6);
        v97 = v7 + 24;
        v96 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
        v94 = (6 * *(v2 + 5) + 4) >> 3;
        v30 = (v29 + 31) & 0x1F8;
        while (1)
        {
          v31 = ((v27 * v97 + 24) >> 3) + v98;
          v32 = (v27 * v97) & 7 | (8 * (v31 & 7));
          v33 = *(v31 & 0xFFFFFFFFFFFFFFF8) >> v32;
          if ((v32 + v7) >= 0x41)
          {
            v33 |= *((v31 & 0xFFFFFFFFFFFFFFF8) + 8) << -v32;
          }

          if ((v33 & v96) != 0)
          {
            break;
          }

LABEL_40:
          if (++v27 == v100)
          {
            goto LABEL_16;
          }
        }

        v34 = 0;
        v35 = (v33 & v96) + 3;
        v36 = v35 + v94;
        v37 = 1;
        while (1)
        {
          if (v34)
          {
            v38 = 24;
          }

          else
          {
            v38 = 0;
          }

          v39 = 6 * v34;
          v40 = (((3 * v34) >> 2) & 0x1FFFFFFF) + v35;
          v41 = *(v40 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * v34++) & 6 | (8 * (v40 & 3)));
          if (v34 >= v28)
          {
            v46 = 0;
          }

          else
          {
            v42 = ((v39 + 3) >> 3) + v35;
            v43 = v42 & 0xFFFFFFFFFFFFFFFCLL;
            v44 = (v39 + 3) & 7 | (8 * (v42 & 3));
            v45 = *(v42 & 0xFFFFFFFFFFFFFFFCLL) >> v44;
            if (v44 >= 0x1E)
            {
              v45 |= *(v43 + 4) << -v44;
            }

            v46 = 4 * (v45 & 7);
          }

          v47 = 4 * v41;
          v48 = v47 & 0x1C;
          v49 = ((v47 & 0x1C) + v38 + v46 + 7) & 0xF8;
          v50 = v49 * (v37 - 1);
          if ((v47 & 0x1C) != 0)
          {
            v51 = ((v50 + v38) >> 3) + v36;
            v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
            v53 = 8 * (v51 & 3);
            v54 = *v52 >> v53;
            if (v53 + (v47 & 0x1C) >= 0x21)
            {
              v54 |= v52[1] << -v53;
            }

            v55 = v54 & (0xFFFFFFFF >> -(v47 & 0x1C));
            if (v46)
            {
LABEL_57:
              v56 = ((v50 + v48 + v38) >> 3) + v36;
              v57 = v47 & 4 | (8 * (v56 & 3));
              v58 = *(v56 & 0xFFFFFFFFFFFFFFFCLL) >> v57;
              if (v57 + v46 >= 0x21)
              {
                v58 |= *((v56 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v57;
              }

              v59 = v58 & (0xFFFFFFFF >> -v46);
              goto LABEL_62;
            }
          }

          else
          {
            v55 = 0;
            if (v46)
            {
              goto LABEL_57;
            }
          }

          v59 = 0;
LABEL_62:
          v60 = v36 + ((v49 * v37) >> 3);
          if (v48)
          {
            v61 = 0;
            v62 = 0xFFFFFFFF >> -v48;
            do
            {
              v64 = ((v38 + v61 * v49) >> 3) + v36;
              v65 = 8 * (v64 & 3);
              v66 = *(v64 & 0xFFFFFFFFFFFFFFFCLL) >> v65;
              if ((v65 + v48) >= 0x21)
              {
                v66 |= *((v64 & 0xFFFFFFFFFFFFFFFCLL) + 4) << (-8 * (v64 & 3));
              }

              if (v61)
              {
                v67 = ((v38 + (v61 - 1) * v49) >> 3) + v36;
                v68 = 8 * (v67 & 3);
                v69 = *(v67 & 0xFFFFFFFFFFFFFFFCLL) >> v68;
                if ((v68 + v48) >= 0x21)
                {
                  v69 |= *((v67 & 0xFFFFFFFFFFFFFFFCLL) + 4) << (-8 * (v67 & 3));
                }

                v70 = v69 & v62;
              }

              else
              {
                v70 = 0;
              }

              v71 = v66 & v62;
              v72 = v71 - v70;
              if (v71 <= v70)
              {
                goto LABEL_64;
              }

              v73 = v29 + v30 * v70;
              v74 = 0.0;
              do
              {
                v80 = (v73 >> 3) + v60;
                v81 = v80 & 0xFFFFFFFFFFFFFFFCLL;
                v82 = v29 & 7 | (8 * (v80 & 3));
                v83 = *(v80 & 0xFFFFFFFFFFFFFFFCLL) >> v82;
                if (v82 >= 9)
                {
                  v83 |= *(v81 + 4) << -v82;
                }

                v75 = (v83 & 0x3FFFFF);
                v76 = (v83 >> 22) & 3;
                v77 = v75 * 0.0078125;
                if (v76 != 2)
                {
                  v77 = (v83 & 0x3FFFFF);
                }

                v78 = v75 * 0.00000095367;
                v79 = v75 * 0.000061035;
                if (!v76)
                {
                  v79 = v78;
                }

                if (((v83 >> 22) & 3) > 1)
                {
                  v79 = v77;
                }

                v74 = v79 + v74;
                v73 += v30;
                --v72;
              }

              while (v72);
              if (v74 <= 0.0)
              {
LABEL_64:
                v63 = 0;
              }

              else
              {
                LODWORD(v63) = ((v74 * 10.0) + 0.5);
                if (v63 >= 0x270F)
                {
                  v63 = 9999;
                }

                else
                {
                  v63 = v63;
                }
              }

              ++v6[v63];
              ++v61;
            }

            while (v61 != v37);
          }

          if (v34 < v28)
          {
            v36 = v60 + ((v55 * v30) >> 3);
            v37 = v59;
            if (v59)
            {
              continue;
            }
          }

          goto LABEL_40;
        }
      }
    }
  }

  return 0;
}