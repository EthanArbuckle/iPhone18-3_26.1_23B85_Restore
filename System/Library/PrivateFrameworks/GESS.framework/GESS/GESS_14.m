void sub_24BDA431C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA4300);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA43B4()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  sub_24BC848F0(&v2);
  sub_24BDA3A14();
}

void sub_24BDA4700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_24BC9F18C((v22 + 8), a9);
  sub_24BC9F18C(&a14, a13);
  v25 = &a22;
  v26 = -64;
  do
  {
    sub_24BC9F18C(v25, *(v25 - 8));
    v25 -= 4;
    v26 += 32;
  }

  while (v26);
  sub_24BC9F18C((v23 + 8), a11);
  _Unwind_Resume(a1);
}

void sub_24BDA4798(uint64_t a1, void *a2)
{
  v10[0] = 0;
  v11 = 0;
  sub_24BC9C7E0(a2, v10);
  if (v10[0] == 1)
  {
    v3 = sub_24BCB0080(v11, "depend_on_normal_map");
    if (v11 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v10, "depend_on_normal_map");
      LOBYTE(__p) = 0;
      v8 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v8, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v10, "depend_on_normal_map");
        LOBYTE(__p) = 0;
        sub_24BCB0940(v6, &__p);
        *(a1 + 36) = __p;
        sub_24BC836D4(&__p, "depend_on_normal_map");
        sub_24BC9CAB4(v10, &__p);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v10 + 8 * *(v9 - 24) + 272) = 2;
  sub_24BC9BD14(&v9);
}

void sub_24BDA4AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA4A88);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA4B28()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAE8B0();
}

void sub_24BDA4DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_24BC9F18C((v22 + 8), a10);
  v26 = (v24 - 96);
  v27 = -64;
  do
  {
    sub_24BC9F18C(v26, *(v26 - 8));
    v26 -= 4;
    v27 += 32;
  }

  while (v27);
  v28 = &a19;
  v29 = -64;
  do
  {
    sub_24BC9F18C(v28, *(v28 - 8));
    v28 -= 4;
    v29 += 32;
  }

  while (v29);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a22 + i + 40), *(&a22 + i + 32));
  }

  sub_24BC9F18C((v23 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BDA4EDC(uint64_t a1, void *a2)
{
  v12[0] = 0;
  v13 = 0;
  sub_24BC9C7E0(a2, v12);
  if (v12[0] == 1)
  {
    v3 = sub_24BCB0080(v13, "generate");
    if (v13 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v12, "generate");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v12, "generate");
        __p.__r_.__value_.__s.__data_[0] = 0;
        sub_24BCB0940(v6, &__p);
        *a1 = __p.__r_.__value_.__s.__data_[0];
        sub_24BC836D4(&__p, "generate");
        sub_24BC9CAB4(v12, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v12[0] == 1)
    {
      v7 = sub_24BCB0080(v13, "format");
      if (v13 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v12, "format");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v12, "format");
          sub_24BDAEAC8(v10, &__p);
          if (*(a1 + 31) < 0)
          {
            operator delete(*(a1 + 8));
          }

          *(a1 + 8) = __p;
          sub_24BC836D4(&__p, "format");
          sub_24BC9CAB4(v12, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BDA52B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA5294);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA5340()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  sub_24BC848F0(&v2);
  sub_24BDA3A14();
}

void sub_24BDA6A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_24BC9F18C((v37 + 8), a12);
  v39 = &a37;
  v40 = -64;
  do
  {
    sub_24BC9F18C(v39, *(v39 - 8));
    v39 -= 4;
    v40 += 32;
  }

  while (v40);
  v41 = &a21;
  v42 = -64;
  do
  {
    sub_24BC9F18C(v41, *(v41 - 8));
    v41 -= 4;
    v42 += 32;
  }

  while (v42);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a24 + i + 40), *(&a24 + i + 32));
  }

  sub_24BC9F18C(&a15, a14);
  _Unwind_Resume(a1);
}

void sub_24BDA6F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_24BC9F18C((v29 + 8), a10);
  sub_24BC9F18C(&a17, a16);
  v30 = &a29;
  v31 = -64;
  do
  {
    sub_24BC9F18C(v30, *(v30 - 8));
    v30 -= 4;
    v31 += 32;
  }

  while (v31);
  JUMPOUT(0x24BDA6F60);
}

void sub_24BDA7030(_DWORD *a1, void *a2)
{
  v47[0] = 0;
  v48 = 0;
  sub_24BC9C7E0(a2, v47);
  if (v47[0] == 1)
  {
    v3 = sub_24BCB0080(v48, "map_resolution");
    if (v48 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v47, "map_resolution");
      LOBYTE(__p) = 0;
      v45 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v45, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v47, "map_resolution");
        LODWORD(__p) = 0;
        sub_24BCB07E0(v6, &__p);
        *a1 = __p;
        sub_24BC836D4(&__p, "map_resolution");
        sub_24BC9CAB4(v47, &__p);
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v47[0] == 1)
    {
      v7 = sub_24BCB0080(v48, "map_number");
      if (v48 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v47, "map_number");
        LOBYTE(__p) = 0;
        v45 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v45, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v47, "map_number");
          LODWORD(__p) = 0;
          sub_24BCB07E0(v10, &__p);
          a1[1] = __p;
          sub_24BC836D4(&__p, "map_number");
          sub_24BC9CAB4(v47, &__p);
          if (SHIBYTE(v46) < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v47[0] == 1)
      {
        v11 = sub_24BCB0080(v48, "kd");
        if (v48 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v47, "kd");
          LOBYTE(__p) = 0;
          v45 = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&v45, __p);
          if ((v13 & 1) == 0)
          {
            sub_24BC848F0(&__p);
            *(v47 + 8 * *(v46 - 24) + 272) = 2;
            sub_24BC9C8EC(v47, "kd");
            sub_24BC9BD14(&v46);
          }
        }

        if (v47[0] == 1)
        {
          v14 = sub_24BCB0080(v48, "norm");
          if (v48 + 8 != v14)
          {
            v15 = sub_24BC9C8EC(v47, "norm");
            LOBYTE(__p) = 0;
            v45 = 0;
            v16 = sub_24BCB01B0(v15, &__p);
            sub_24BC9F18C(&v45, __p);
            if ((v16 & 1) == 0)
            {
              sub_24BC848F0(&__p);
              *(v47 + 8 * *(v46 - 24) + 272) = 2;
              sub_24BC9C8EC(v47, "norm");
              sub_24BC9BD14(&v46);
            }
          }

          if (v47[0] == 1)
          {
            v17 = sub_24BCB0080(v48, "onorm");
            if (v48 + 8 != v17)
            {
              v18 = sub_24BC9C8EC(v47, "onorm");
              LOBYTE(__p) = 0;
              v45 = 0;
              v19 = sub_24BCB01B0(v18, &__p);
              sub_24BC9F18C(&v45, __p);
              if ((v19 & 1) == 0)
              {
                sub_24BC848F0(&__p);
                *(v47 + 8 * *(v46 - 24) + 272) = 2;
                sub_24BC9C8EC(v47, "onorm");
                sub_24BC9BD14(&v46);
              }
            }

            if (v47[0] == 1)
            {
              v20 = sub_24BCB0080(v48, "ao");
              if (v48 + 8 != v20)
              {
                v21 = sub_24BC9C8EC(v47, "ao");
                LOBYTE(__p) = 0;
                v45 = 0;
                v22 = sub_24BCB01B0(v21, &__p);
                sub_24BC9F18C(&v45, __p);
                if ((v22 & 1) == 0)
                {
                  sub_24BC848F0(&__p);
                  *(v47 + 8 * *(v46 - 24) + 272) = 2;
                  sub_24BC9C8EC(v47, "ao");
                  sub_24BC9BD14(&v46);
                }
              }

              if (v47[0] == 1)
              {
                v23 = sub_24BCB0080(v48, "disp");
                if (v48 + 8 != v23)
                {
                  v24 = sub_24BC9C8EC(v47, "disp");
                  LOBYTE(__p) = 0;
                  v45 = 0;
                  v25 = sub_24BCB01B0(v24, &__p);
                  sub_24BC9F18C(&v45, __p);
                  if ((v25 & 1) == 0)
                  {
                    sub_24BC848F0(&__p);
                    *(v47 + 8 * *(v46 - 24) + 272) = 2;
                    sub_24BC9C8EC(v47, "disp");
                    sub_24BC9BD14(&v46);
                  }
                }

                if (v47[0] == 1)
                {
                  v26 = sub_24BCB0080(v48, "roughness");
                  if (v48 + 8 != v26)
                  {
                    v27 = sub_24BC9C8EC(v47, "roughness");
                    LOBYTE(__p) = 0;
                    v45 = 0;
                    v28 = sub_24BCB01B0(v27, &__p);
                    sub_24BC9F18C(&v45, __p);
                    if ((v28 & 1) == 0)
                    {
                      sub_24BC848F0(&__p);
                      *(v47 + 8 * *(v46 - 24) + 272) = 2;
                      sub_24BC9C8EC(v47, "roughness");
                      sub_24BC9BD14(&v46);
                    }
                  }

                  if (v47[0] == 1)
                  {
                    v29 = sub_24BCB0080(v48, "metallic");
                    if (v48 + 8 != v29)
                    {
                      v30 = sub_24BC9C8EC(v47, "metallic");
                      LOBYTE(__p) = 0;
                      v45 = 0;
                      v31 = sub_24BCB01B0(v30, &__p);
                      sub_24BC9F18C(&v45, __p);
                      if ((v31 & 1) == 0)
                      {
                        sub_24BC848F0(&__p);
                        *(v47 + 8 * *(v46 - 24) + 272) = 2;
                        sub_24BC9C8EC(v47, "metallic");
                        sub_24BC9BD14(&v46);
                      }
                    }

                    if (v47[0] == 1)
                    {
                      v32 = sub_24BCB0080(v48, "mask");
                      if (v48 + 8 != v32)
                      {
                        v33 = sub_24BC9C8EC(v47, "mask");
                        LOBYTE(__p) = 0;
                        v45 = 0;
                        v34 = sub_24BCB01B0(v33, &__p);
                        sub_24BC9F18C(&v45, __p);
                        if ((v34 & 1) == 0)
                        {
                          sub_24BC848F0(&__p);
                          *(v47 + 8 * *(v46 - 24) + 272) = 2;
                          sub_24BC9C8EC(v47, "mask");
                          sub_24BC9BD14(&v46);
                        }
                      }

                      if (v47[0] == 1)
                      {
                        v35 = sub_24BCB0080(v48, "position");
                        if (v48 + 8 != v35)
                        {
                          v36 = sub_24BC9C8EC(v47, "position");
                          LOBYTE(__p) = 0;
                          v45 = 0;
                          v37 = sub_24BCB01B0(v36, &__p);
                          sub_24BC9F18C(&v45, __p);
                          if ((v37 & 1) == 0)
                          {
                            sub_24BC848F0(&__p);
                            *(v47 + 8 * *(v46 - 24) + 272) = 2;
                            sub_24BC9C8EC(v47, "position");
                            sub_24BC9BD14(&v46);
                          }
                        }

                        if (v47[0] == 1)
                        {
                          v38 = sub_24BCB0080(v48, "eo");
                          if (v48 + 8 != v38)
                          {
                            v39 = sub_24BC9C8EC(v47, "eo");
                            LOBYTE(__p) = 0;
                            v45 = 0;
                            v40 = sub_24BCB01B0(v39, &__p);
                            sub_24BC9F18C(&v45, __p);
                            if ((v40 & 1) == 0)
                            {
                              sub_24BC848F0(&__p);
                              *(v47 + 8 * *(v46 - 24) + 272) = 2;
                              sub_24BC9C8EC(v47, "eo");
                              sub_24BC9BD14(&v46);
                            }
                          }

                          if (v47[0] == 1)
                          {
                            v41 = sub_24BCB0080(v48, "usda_output");
                            if (v48 + 8 != v41)
                            {
                              v42 = sub_24BC9C8EC(v47, "usda_output");
                              LOBYTE(__p) = 0;
                              v45 = 0;
                              v43 = sub_24BCB01B0(v42, &__p);
                              sub_24BC9F18C(&v45, __p);
                              if ((v43 & 1) == 0)
                              {
                                sub_24BC848F0(&__p);
                                *(v47 + 8 * *(v46 - 24) + 272) = 2;
                                sub_24BC9C8EC(v47, "usda_output");
                                sub_24BC9BD14(&v46);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v47 + 8 * *(v46 - 24) + 272) = 2;
  sub_24BC9BD14(&v46);
}

void sub_24BDA8B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC84B94(&a15);
  sub_24BC9F18C((v20 + 8), *(v21 - 80));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA8988);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA8CE8()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAF578();
}

void sub_24BDA9098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_24BC9F18C((v38 + 8), a10);
  v42 = (v40 - 96);
  v43 = -128;
  do
  {
    sub_24BC9F18C(v42, *(v42 - 8));
    v42 -= 4;
    v43 += 32;
  }

  while (v43);
  v44 = &a19;
  v45 = -64;
  do
  {
    sub_24BC9F18C(v44, *(v44 - 8));
    v44 -= 4;
    v45 += 32;
  }

  while (v45);
  v46 = &a27;
  v47 = -64;
  do
  {
    sub_24BC9F18C(v46, *(v46 - 8));
    v46 -= 4;
    v47 += 32;
  }

  while (v47);
  v48 = &a35;
  v49 = -64;
  do
  {
    sub_24BC9F18C(v48, *(v48 - 8));
    v48 -= 4;
    v49 += 32;
  }

  while (v49);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a38 + i + 40), *(&a38 + i + 32));
  }

  sub_24BC9F18C((v39 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BDA9218(uint64_t a1, void *a2)
{
  v20[0] = 0;
  v21 = 0;
  sub_24BC9C7E0(a2, v20);
  if (v20[0] == 1)
  {
    v3 = sub_24BCB0080(v21, "name");
    if (v21 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v20, "name");
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v20, "name");
        sub_24BDAEAC8(v6, &__p);
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = __p;
        sub_24BC836D4(&__p, "name");
        sub_24BC9CAB4(v20, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v20[0] == 1)
    {
      v7 = sub_24BCB0080(v21, "version_major");
      if (v21 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v20, "version_major");
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v20, "version_major");
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          sub_24BCB07E0(v10, &__p);
          *(a1 + 24) = __p.__r_.__value_.__l.__data_;
          sub_24BC836D4(&__p, "version_major");
          sub_24BC9CAB4(v20, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v20[0] == 1)
      {
        v11 = sub_24BCB0080(v21, "version_minor");
        if (v21 + 8 != v11)
        {
          v12 = sub_24BC9C8EC(v20, "version_minor");
          __p.__r_.__value_.__s.__data_[0] = 0;
          __p.__r_.__value_.__l.__size_ = 0;
          v13 = sub_24BCB01B0(v12, &__p);
          sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
          if ((v13 & 1) == 0)
          {
            v14 = sub_24BC9C8EC(v20, "version_minor");
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            sub_24BCB07E0(v14, &__p);
            *(a1 + 28) = __p.__r_.__value_.__l.__data_;
            sub_24BC836D4(&__p, "version_minor");
            sub_24BC9CAB4(v20, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v20[0] == 1)
        {
          v15 = sub_24BCB0080(v21, "version_patch");
          if (v21 + 8 != v15)
          {
            v16 = sub_24BC9C8EC(v20, "version_patch");
            __p.__r_.__value_.__s.__data_[0] = 0;
            __p.__r_.__value_.__l.__size_ = 0;
            v17 = sub_24BCB01B0(v16, &__p);
            sub_24BC9F18C(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
            if ((v17 & 1) == 0)
            {
              v18 = sub_24BC9C8EC(v20, "version_patch");
              LODWORD(__p.__r_.__value_.__l.__data_) = 0;
              sub_24BCB07E0(v18, &__p);
              *(a1 + 32) = __p.__r_.__value_.__l.__data_;
              sub_24BC836D4(&__p, "version_patch");
              sub_24BC9CAB4(v20, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(&__p.__r_.__value_.__r + *(__p.__r_.__value_.__r.__words[2] - 24) + 40) = 2;
  sub_24BC9BD14(&__p.__r_.__value_.__r.__words[2]);
}

void sub_24BDA9754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDA9738);
  }

  _Unwind_Resume(a1);
}

void sub_24BDA97F4()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 0;
  v2 = 0;
  sub_24BC848F0(&v0);
  sub_24BDA0548();
}

void sub_24BDAA648(_Unwind_Exception *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_24BC9F18C((v6 + 8), a3);
  sub_24BC9F18C((v8 - 120), *(v8 - 128));
  v10 = (v8 - 152);
  v11 = -64;
  do
  {
    sub_24BC9F18C(v10, *(v10 - 8));
    v10 -= 4;
    v11 += 32;
  }

  while (v11);
  sub_24BC9F18C((v7 + 8), a5);
  sub_24BC84B94(va);
  sub_24BC9F18C((v8 - 200), *(v8 - 208));
  _Unwind_Resume(a1);
}

void sub_24BDAA918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  sub_24BC9F18C((v10 + 8), a10);
  sub_24BC9F18C((v11 - 120), *(v11 - 128));
  v12 = (v11 - 152);
  v13 = -64;
  do
  {
    sub_24BC9F18C(v12, *(v12 - 8));
    v12 -= 4;
    v13 += 32;
  }

  while (v13);
  JUMPOUT(0x24BDAA8ECLL);
}

void sub_24BDAA9BC(uint64_t a1, void *a2)
{
  v26[0] = 0;
  v27 = 0;
  sub_24BC9C7E0(a2, v26);
  if (v26[0] == 1)
  {
    v2 = sub_24BCB0080(v27, "simplify");
    if (v27 + 8 != v2)
    {
      v3 = sub_24BC9C8EC(v26, "simplify");
      LOBYTE(v23) = 0;
      v24 = 0;
      v4 = sub_24BCB01B0(v3, &v23);
      sub_24BC9F18C(&v24, v23);
      if ((v4 & 1) == 0)
      {
        sub_24BC848F0(&v23);
        *(v26 + 8 * *(v25 - 24) + 272) = 2;
        sub_24BC9C8EC(v26, "simplify");
        sub_24BC9BD14(&v25);
      }
    }

    if (v26[0] == 1)
    {
      v5 = sub_24BCB0080(v27, "chart");
      if (v27 + 8 != v5)
      {
        v6 = sub_24BC9C8EC(v26, "chart");
        LOBYTE(v23) = 0;
        v24 = 0;
        v7 = sub_24BCB01B0(v6, &v23);
        sub_24BC9F18C(&v24, v23);
        if ((v7 & 1) == 0)
        {
          sub_24BC848F0(&v23);
          *(v26 + 8 * *(v25 - 24) + 272) = 2;
          sub_24BC9C8EC(v26, "chart");
          sub_24BC9BD14(&v25);
        }
      }

      if (v26[0] == 1)
      {
        v8 = sub_24BCB0080(v27, "pack");
        if (v27 + 8 != v8)
        {
          v9 = sub_24BC9C8EC(v26, "pack");
          LOBYTE(v23) = 0;
          v24 = 0;
          v10 = sub_24BCB01B0(v9, &v23);
          sub_24BC9F18C(&v24, v23);
          if ((v10 & 1) == 0)
          {
            sub_24BC848F0(&v23);
            *(v26 + 8 * *(v25 - 24) + 272) = 2;
            sub_24BC9C8EC(v26, "pack");
            sub_24BC9BD14(&v25);
          }
        }

        if (v26[0] == 1)
        {
          v11 = sub_24BCB0080(v27, "bake");
          if (v27 + 8 != v11)
          {
            v12 = sub_24BC9C8EC(v26, "bake");
            LOBYTE(v23) = 0;
            v24 = 0;
            v13 = sub_24BCB01B0(v12, &v23);
            sub_24BC9F18C(&v24, v23);
            if ((v13 & 1) == 0)
            {
              sub_24BC848F0(&v23);
              *(v26 + 8 * *(v25 - 24) + 272) = 2;
              sub_24BC9C8EC(v26, "bake");
              sub_24BC9BD14(&v25);
            }
          }

          if (v26[0] == 1)
          {
            v14 = sub_24BCB0080(v27, "output");
            if (v27 + 8 != v14)
            {
              v15 = sub_24BC9C8EC(v26, "output");
              LOBYTE(v23) = 0;
              v24 = 0;
              v16 = sub_24BCB01B0(v15, &v23);
              sub_24BC9F18C(&v24, v23);
              if ((v16 & 1) == 0)
              {
                sub_24BC848F0(&v23);
                *(v26 + 8 * *(v25 - 24) + 272) = 2;
                sub_24BC9C8EC(v26, "output");
                sub_24BC9BD14(&v25);
              }
            }

            if (v26[0] == 1)
            {
              v17 = sub_24BCB0080(v27, "system");
              if (v27 + 8 != v17)
              {
                v18 = sub_24BC9C8EC(v26, "system");
                LOBYTE(v23) = 0;
                v24 = 0;
                v19 = sub_24BCB01B0(v18, &v23);
                sub_24BC9F18C(&v24, v23);
                if ((v19 & 1) == 0)
                {
                  sub_24BC848F0(&v23);
                  *(v26 + 8 * *(v25 - 24) + 272) = 2;
                  sub_24BC9C8EC(v26, "system");
                  sub_24BC9BD14(&v25);
                }
              }

              if (v26[0] == 1)
              {
                v20 = sub_24BCB0080(v27, "creator");
                if (v27 + 8 != v20)
                {
                  v21 = sub_24BC9C8EC(v26, "creator");
                  LOBYTE(v23) = 0;
                  v24 = 0;
                  v22 = sub_24BCB01B0(v21, &v23);
                  sub_24BC9F18C(&v24, v23);
                  if ((v22 & 1) == 0)
                  {
                    sub_24BC848F0(&v23);
                    *(v26 + 8 * *(v25 - 24) + 272) = 2;
                    sub_24BC9C8EC(v26, "creator");
                    sub_24BC9BD14(&v25);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_24BC848F0(&v23);
  *(v26 + 8 * *(v25 - 24) + 272) = 2;
  sub_24BC9BD14(&v25);
}

void sub_24BDABC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC84B94(&a15);
  sub_24BC9F18C((v15 + 8), *(v16 - 80));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BDABA4CLL);
  }

  _Unwind_Resume(a1);
}

void sub_24BDABD3C(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA0548();
}

uint64_t sub_24BDABE8C(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA09A8(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDABFF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDAC014(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA0EB0();
}

uint64_t sub_24BDAC164(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA139C(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDAC2D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDAC2EC(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA1890();
}

uint64_t sub_24BDAC43C(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA1CC0(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDAC5A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDAC5C4(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA20F8();
}

uint64_t sub_24BDAC714(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA293C(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDAC880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDAC89C(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA303C();
}

uint64_t sub_24BDAC9EC(std::string *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA34DC(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDACB58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDACB74(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA3A14();
}

uint64_t sub_24BDACCC4(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA3E94(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDACE30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDACE4C(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA43B4();
}

uint64_t sub_24BDACF9C(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA4798(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDAD108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDAD124(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA4B28();
}

uint64_t sub_24BDAD274(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA4EDC(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDAD3E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDAD3FC(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA5340();
}

uint64_t sub_24BDAD54C(_DWORD *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA7030(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDAD6B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDAD6D4(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA8CE8();
}

uint64_t sub_24BDAD824(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDA9218(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDAD990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDAD9AC(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BDA97F4();
}

uint64_t sub_24BDADAFC(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BDAA9BC(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDADC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDAE12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int *a6)
{
  v10 = *a6;
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  sub_24BCCEE48(&__replacement.__pn_, ".usda");
  std::__fs::filesystem::path::replace_extension(&__dst, &__replacement);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
LABEL_6:
    sub_24BD273F0(&__dst, a3, a4, a5);
    goto LABEL_9;
  }

  sub_24BD273C8(&__dst, a3, a4, a5);
LABEL_9:
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    __replacement = *a2;
LABEL_12:
    *__p = *a2;
    v16 = *(a2 + 16);
    goto LABEL_13;
  }

  sub_24BC8DE9C(&__replacement, *a2, *(a2 + 8));
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  sub_24BC8DE9C(__p, *a2, *(a2 + 8));
LABEL_13:
  sub_24BCCEE48(&v14.__pn_, ".usdc");
  std::__fs::filesystem::path::replace_extension(&__replacement, &v14);
  if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__pn_.__r_.__value_.__l.__data_);
  }

  v13 = 0;
  sub_24BC836D4(&v14, &unk_24C0435AF);
  v11 = sub_24BD2BCA8(&__dst, &__replacement, __p, &v13, &v14);
  if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_24BDAE2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDAE36C(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BDAE5C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

unsigned __int8 *sub_24BDAE90C(unsigned __int8 *result, unint64_t *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_24BCA6188(v2);
    sub_24BC836D4(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(302, &v10, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 1);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_24BDAEA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

std::string *sub_24BDAEAC8@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return sub_24BDAEB14(a1, a2);
}

void sub_24BDAEAF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_24BDAEB14(uint64_t a1, std::string *this)
{
  if (*a1 != 3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = sub_24BCA6188(a1);
    sub_24BC836D4(&v11, v8);
    v9 = std::string::insert(&v11, 0, "type must be string, but is ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(302, &v12, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  v3 = *(a1 + 8);
  v5 = *(a1 + 8);

  return std::string::operator=(this, v5);
}

void sub_24BDAEBF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_24BDAED88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA69B0(result, a4);
  }

  return result;
}

double sub_24BDAEE94@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_24BDAEEE0(a1, a2);
}

void sub_24BDAEEC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_24BDAEEE0(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_24BCA6188(a1);
    sub_24BC836D4(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be array, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(302, &v9, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  return sub_24BDAF018(a1, a2);
}

void sub_24BDAEFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

double sub_24BDAF018(unsigned __int8 *a1, uint64_t a2)
{
  v20 = 0uLL;
  v21 = 0;
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      v4 = *(*(a1 + 1) + 16);
    }

    else if (v4 == 2)
    {
      v4 = (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4;
    }

    else
    {
      v4 = 1;
    }
  }

  sub_24BDAF1BC(&v20, v4);
  v16 = a1;
  v17 = 0;
  v18 = 0;
  v19 = 0x8000000000000000;
  v5 = *a1;
  if (*a1)
  {
    if (v5 == 2)
    {
      v7 = *(a1 + 1);
      v18 = *v7;
      v13 = a1;
      v14 = 0;
      *(&v15 + 1) = 0x8000000000000000;
      *&v15 = v7[1];
      goto LABEL_15;
    }

    if (v5 == 1)
    {
      v6 = *(a1 + 1);
      v17 = *v6;
      v15 = xmmword_24BFBD220;
      v13 = a1;
      v14 = v6 + 1;
      goto LABEL_15;
    }

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v13 = a1;
  v14 = 0;
  *&v15 = 0;
  *(&v15 + 1) = 1;
LABEL_15:
  for (i = *(&v20 + 1); !sub_24BCA6F80(&v16, &v13); i = v10 + 8)
  {
    v9 = sub_24BCA7288(&v16);
    v22 = 0;
    sub_24BDAE90C(v9, &v22);
    v10 = sub_24BDAF25C(&v20, i, &v22);
    sub_24BCA6F10(&v16);
  }

  v11 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v11;
    operator delete(v11);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v20;
  *a2 = v20;
  *(a2 + 16) = v21;
  return result;
}

void sub_24BDAF19C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDAF1BC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_24BC91F60(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

char *sub_24BDAF25C(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_24BC8E01C();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      sub_24BC91F60(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    sub_24BDAF41C(&v24, a3);
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
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_24BDAF3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDAF41C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_24BC91F60(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void *sub_24BDAF5D4(void *result)
{
  *result = 0;
  result[2] = result + 2;
  result[3] = result + 2;
  result[4] = 0;
  return result;
}

void sub_24BDAF5E8(uint64_t a1, int a2, int a3, char a4)
{
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 32) = 0;
  *(a1 + 8) = a4;
  *a1 = a2;
  *(a1 + 4) = a3;
  sub_24BDB10AC((a1 + 16));
  operator new();
}

uint64_t sub_24BDAF6F8(uint64_t a1)
{
  sub_24BDB10AC((a1 + 16));
  sub_24BDB10AC((a1 + 16));
  return a1;
}

uint64_t sub_24BDAF72C(uint64_t a1, void *a2, uint64_t *a3)
{
  a3[1] = *a3;
  sub_24BDAF9D8(a3, (a2[1] - *a2) >> 4);
  v32 = &v32;
  v33 = &v32;
  v34 = 0;
  if (a2[1] != *a2)
  {
    operator new();
  }

  sub_24BDB13C0(&v32, &v32, 0);
  if (v34)
  {
    while (1)
    {
      v28 = 0x8000000080000000;
      v5 = v33;
      if (v33 == &v32)
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v23 = 0;
      v24 = 0x80000000;
      v8 = 0x7FFFFFFF;
      v9 = -1;
      v10 = 0x7FFFFFFF;
      v11 = 0x7FFFFFFF;
      v12 = 0x7FFFFFFF;
      v13 = 0x80000000;
      do
      {
        v14 = v5[2];
        v27 = 0;
        v25 = xmmword_24BFED170;
        v26 = 0;
        sub_24BDAFA14(a1, &v25, &v27 + 1, &v27, *v14, v14[1]);
        if (HIDWORD(v25) != DWORD1(v25) && (SHIDWORD(v27) < v10 || HIDWORD(v27) == v10 && v27 < v8))
        {
          v11 = v25;
          v13 = HIDWORD(v25);
          v12 = DWORD1(v25);
          v23 = v26;
          v24 = DWORD2(v25);
          v7 = v5;
          v10 = HIDWORD(v27);
          v8 = v27;
          v9 = *(v5 + 6);
        }

        if (v6 >= 4 && v9 != -1)
        {
          v28 = __PAIR64__(v12, v11);
          v16 = v23;
          v15 = v24;
          v29 = v24;
          v30 = v13;
          v31 = v23;
          goto LABEL_17;
        }

        v5 = v5[1];
        v6 += 2;
      }

      while (v5 != &v32);
      v28 = __PAIR64__(v12, v11);
      v16 = v23;
      v15 = v24;
      v29 = v24;
      v30 = v13;
      v31 = v23;
      if (v9 == -1)
      {
        break;
      }

LABEL_17:
      sub_24BDAFB20(a1, &v28);
      v17 = *a3 + 20 * v9;
      *v17 = v11;
      *(v17 + 4) = v12;
      *(v17 + 8) = v15;
      *(v17 + 12) = v13;
      *(v17 + 16) = v16;
      v19 = *v7;
      v18 = v7[1];
      *(v19 + 8) = v18;
      *v18 = v19;
      --v34;
      operator delete(v7);
      if (!v34)
      {
        goto LABEL_18;
      }
    }

    v20 = 0;
  }

  else
  {
LABEL_18:
    v20 = 1;
  }

  sub_24BDB10AC(&v32);
  return v20;
}

void sub_24BDAF9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_24BDB10AC(va);
  _Unwind_Resume(a1);
}

void sub_24BDAF9D8(uint64_t *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BDB1110(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 20 * a2;
  }
}

uint64_t sub_24BDAFA14(uint64_t result, uint64_t a2, int *a3, int *a4, int a5, int a6)
{
  *a3 = 0x7FFFFFFF;
  *a4 = 0x7FFFFFFF;
  v6 = result + 16;
  v7 = *(result + 24);
  if (v7 != result + 16)
  {
    v8 = *(result + 8);
    do
    {
      v9 = *(v7 + 16);
      v10 = *(v7 + 20);
      v11 = *(v7 + 24) - v9;
      v12 = *(v7 + 28) - v10;
      v13 = v12 * v11 - a6 * a5;
      v14 = __OFSUB__(v11, a5);
      v15 = v11 - a5;
      if (v15 < 0 == v14 && v12 >= a6)
      {
        v17 = v12 - a6;
        if (v17 >= v15)
        {
          v17 = v15;
        }

        if (v13 < *a3 || (v13 == *a3 ? (v18 = v17 < *a4) : (v18 = 0), v18))
        {
          result = (v10 + a6);
          *a2 = v9;
          *(a2 + 4) = v10;
          *(a2 + 8) = v9 + a5;
          *(a2 + 12) = result;
          *(a2 + 16) = 0;
          *a4 = v17;
          *a3 = v13;
        }
      }

      if (v8)
      {
        v19 = *(v7 + 16);
        v20 = *(v7 + 24) - v19;
        v21 = v20 - a6;
        if (v20 >= a6)
        {
          v22 = *(v7 + 20);
          v23 = *(v7 + 28) - v22;
          v14 = __OFSUB__(v23, a5);
          v24 = v23 - a5;
          if (v24 < 0 == v14)
          {
            if (v21 < 0)
            {
              v21 = -v21;
            }

            if (v24 < v21)
            {
              v21 = v24;
            }

            if (v13 < *a3 || (v13 == *a3 ? (v25 = v21 < *a4) : (v25 = 0), v25))
            {
              result = (v22 + a5);
              *a2 = v19;
              *(a2 + 4) = v22;
              *(a2 + 8) = v19 + a6;
              *(a2 + 12) = result;
              *(a2 + 16) = 1;
              *a4 = v21;
              *a3 = v13;
            }
          }
        }
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v6);
  }

  return result;
}

void sub_24BDAFB20(uint64_t a1, int *a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 24);
  if (v3 != (a1 + 16))
  {
    do
    {
      v6 = sub_24BDAFBA8(a1, (v3 + 2), a2);
      v7 = v3[1];
      if (v6)
      {
        v8 = *v3;
        *(v8 + 8) = v7;
        *v7 = v8;
        --*(a1 + 32);
        operator delete(v3);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }
}

uint64_t sub_24BDAFBA8(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  if (a3[2] <= *a2)
  {
    return 0;
  }

  v27 = v3;
  v28 = v4;
  v8 = *(a2 + 8);
  if (*a3 >= v8)
  {
    return 0;
  }

  v9 = a3[3];
  v10 = *(a2 + 4);
  if (v9 <= v10)
  {
    return 0;
  }

  v11 = a3[1];
  v12 = *(a2 + 12);
  if (v11 >= v12)
  {
    return 0;
  }

  if (v11 > v10)
  {
    v22 = v5;
    v23 = v10;
    v26 = *(a2 + 16);
    v24 = v8;
    v25 = v11;
    if ((sub_24BDAFD74(a1, &v22, a2) & 1) == 0)
    {
      sub_24BDAF68C();
    }
  }

  if (v9 < v12)
  {
    v14 = *a2;
    v24 = *(a2 + 8);
    v25 = v12;
    v26 = *(a2 + 16);
    v22 = v14;
    v23 = v9;
    if ((sub_24BDAFD74(a1, &v22, a2) & 1) == 0)
    {
      sub_24BDAF68C();
    }
  }

  if (a3[1] < v12)
  {
    v15 = *(a2 + 4);
    if (a3[3] > v15)
    {
      v16 = *a3;
      v17 = *(a2 + 8);
      if (*a3 > *a2 && v16 < v17)
      {
        v22 = *a2;
        v23 = v15;
        v26 = *(a2 + 16);
        v24 = v16;
        v25 = v12;
        if ((sub_24BDAFD74(a1, &v22, a2) & 1) == 0)
        {
          sub_24BDAF68C();
        }
      }

      v18 = a3[2];
      if (v18 < v17)
      {
        v19 = *(a2 + 4);
        v20 = *(a2 + 12);
        v24 = v17;
        v25 = v20;
        v26 = *(a2 + 16);
        v22 = v18;
        v23 = v19;
        if ((sub_24BDAFD74(a1, &v22, a2) & 1) == 0)
        {
          sub_24BDAF68C();
        }
      }
    }
  }

  return 1;
}

uint64_t sub_24BDAFD74(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (v3 == a1 + 16)
  {
    return 0;
  }

  while (v3 + 16 == a3 || *(v3 + 16) > *a2 || *(v3 + 20) > a2[1] || *(v3 + 24) < a2[2] || *(v3 + 28) < a2[3])
  {
    v3 = *(v3 + 8);
    if (v3 == a1 + 16)
    {
      return 0;
    }
  }

  return 1;
}

void sub_24BDAFE58(_Unwind_Exception *a1)
{
  sub_24BDB10AC((v1 + 16));
  sub_24BDB10AC((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_24BDAFE74(uint64_t a1, uint64_t a2, _DWORD *a3, _BYTE *a4)
{
  *a1 = 1;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
  v7 = (a1 + 40);
  *(a1 + 48) = -1;
  *(a1 + 56) = -1;
  *(a1 + 60) = *a3;
  *(a1 + 64) = *a4;
  sub_24BC836D4(__p, off_27F078F78[0]);
  v40 = 0;
  *v7 = sub_24BCB74D4((a2 + 80), &v40, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a1 + 8);
  sub_24BC836D4(__p, off_27F078FE8[0]);
  sub_24BD265CC(v8, (a1 + 44), __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *(a1 + 8);
  sub_24BC836D4(__p, off_27F078FC8[0]);
  LODWORD(v40) = 0;
  *(a1 + 48) = sub_24BCCA8D0((v9 + 56), &v40, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(a1 + 8);
  sub_24BC836D4(__p, off_27F078FC8[0]);
  LOWORD(v40) = 0;
  *(a1 + 52) = sub_24BD274E4((v10 + 56), &v40, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(a1 + 8);
  sub_24BC836D4(__p, off_27F078FB8[0]);
  v41 = 0;
  v40 = 0;
  *(a1 + 56) = sub_24BCCAA0C((v11 + 56), &v40, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 52) == -1)
  {
    v12 = *(a1 + 8);
    sub_24BC836D4(__p, off_27F078FC8[0]);
    sub_24BD2CCDC(v12);
  }

  v13 = (*(*(a1 + 8) + 80) + 16 * *(a1 + 44));
  v15 = *v13;
  v14 = v13[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v14);
  }

  v16 = (*(*v15 + 16))(v15);
  v17 = *(a1 + 8);
  v19 = *(v17 + 152);
  v18 = *(v17 + 160);
  sub_24BCB8D20(v6, v16);
  v20 = v18 - v19;
  if (((v18 - v19) & 0x3FFFFFFFCLL) != 0)
  {
    v21 = 0;
    v22 = 0;
    v23 = (v20 >> 2);
    do
    {
      v24 = (*(*(a1 + 8) + 56) + 16 * *(a1 + 48));
      v26 = *v24;
      v25 = v24[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v25);
      }

      if (v22 == *(*(v26 + 40) + 4 * v21))
      {
        v28 = *(a1 + 24);
        v27 = *(a1 + 32);
        if (v28 >= v27)
        {
          v30 = *v6;
          v31 = v28 - *v6;
          v32 = v31 >> 2;
          v33 = (v31 >> 2) + 1;
          if (v33 >> 62)
          {
            sub_24BC8E01C();
          }

          v34 = v27 - v30;
          if (v34 >> 1 > v33)
          {
            v33 = v34 >> 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v35 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            sub_24BC92E0C(v6, v35);
          }

          *(4 * v32) = v21;
          v29 = 4 * v32 + 4;
          memcpy(0, v30, v31);
          v36 = *(a1 + 16);
          *(a1 + 16) = 0;
          *(a1 + 24) = v29;
          *(a1 + 32) = 0;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else
        {
          *v28 = v21;
          v29 = (v28 + 4);
        }

        *(a1 + 24) = v29;
        ++v22;
      }

      ++v21;
    }

    while (v23 != v21);
  }

  return a1;
}

void sub_24BDB01E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = *v16;
  if (*v16)
  {
    *(v15 + 24) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDB0250(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 80) + 16 * *(a1 + 40);
  v4 = *v2;
  v3 = *(v2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v3);
  }

  v5 = (*(*v4 + 16))(v4);
  sub_24BDB06A4(a1);
  v6 = v5;
  if (v5)
  {
    v7 = v4[5];
    v8 = *(a1 + 60);
    __asm { FMOV            V1.2S, #5.0 }

    v14 = v5;
    do
    {
      *v7 = vmul_f32(vmul_n_f32(*v7, v8), _D1);
      ++v7;
      --v14;
    }

    while (v14);
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  v39 = 0;
  v40 = 0;
  v15 = 199;
  v41 = 0;
  do
  {
    sub_24BDB08AC(a1, v42, *(a1 + 60));
    v16 = v42[1];
    v17 = v42[0];
    if (v42[1] == v42[0])
    {
      goto LABEL_17;
    }

    v18 = (v42[1] - v42[0]) >> 4;
    v19 = (v42[0] + 4);
    v20 = 1;
    do
    {
      v21 = *(v19 - 1) + 4;
      v22 = *(a1 + 60) - 1;
      if (v21 < v22)
      {
        v23 = *v19 + 4;
        if (v23 < v22)
        {
          *(v19 - 1) = v21;
          *v19 = v23;
        }
      }

      v19 += 4;
    }

    while (v18 > v20++);
    if (v16 == v17)
    {
LABEL_17:
      v25 = 0;
    }

    else
    {
      v25 = 0;
      do
      {
        v26 = *v17;
        v27 = v17[1];
        v17 += 4;
        v25 += v27 * v26;
      }

      while (v17 != v16);
    }

    v28 = (*(*(a1 + 8) + 80) + 16 * *(a1 + 44));
    v30 = *v28;
    v29 = v28[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v29);
    }

    v31 = (*(*v30 + 16))(v30);
    sub_24BDB0C7C(&v39, v31);
    v32 = *(a1 + 60);
    v33 = *(a1 + 64);
    if (v25 <= v32 * v32 * v33)
    {
      v45 = v44;
      v35 = *"fff?";
      if (v33)
      {
        sub_24BDAFDE4(v42, &v44, *(a1 + 60), *(a1 + 60));
      }
    }

    else
    {
      v34 = logf(v32 / sqrtf(v25 / v33));
      v35 = pow(0.9, (v34 / -0.105360516));
      if (v35 > 0.9)
      {
        v35 = *"fff?";
      }
    }

    if (v6)
    {
      v36 = v4[5];
      v37 = v6;
      do
      {
        *v36 = vmul_n_f32(*v36, v35);
        ++v36;
        --v37;
      }

      while (v37);
    }
  }

  while (v15-- != 0);
  sub_24BDB0D0C(a1, &v39);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return 1;
}

void sub_24BDB0640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDB06A4(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 80);
  v3 = (v2 + 16 * *(a1 + 40));
  v5 = *v3;
  v4 = v3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v4);
    v2 = *(*(a1 + 8) + 80);
  }

  v6 = (v2 + 16 * *(a1 + 44));
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
  }

  v9 = (*(*v8 + 16))(v8);
  v11 = *(*(a1 + 8) + 152);
  v10 = *(*(a1 + 8) + 160);
  v32 = 0u;
  v33 = 0u;
  v34 = 1065353216;
  v31 = v9;
  if (v9)
  {
    v12 = 0;
    v30 = ((v10 - v11) >> 2);
    v13 = v9 - 1;
    v14 = vneg_f32(0x80000000800000);
    do
    {
      v15 = (*(a1 + 16) + 4 * v12);
      v16 = v30;
      if (v12 != v13)
      {
        v16 = v15[1];
      }

      v17 = *v15;
      v18 = v14;
      if (v17 < v16)
      {
        v19 = 12 * v17;
        v18 = v14;
        do
        {
          v20 = (*(*(a1 + 8) + 56) + 16 * *(a1 + 56));
          v22 = *v20;
          v21 = v20[1];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v21);
          }

          v23 = (*(v22 + 40) + v19);
          v24 = 3;
          do
          {
            sub_24BD46ED0(&v32, v23);
            v25 = *v23++;
            v26 = *(*(v5 + 40) + 8 * v25);
            v18 = vbsl_s8(vcgt_f32(v18, v26), v26, v18);
            --v24;
          }

          while (v24);
          ++v17;
          v19 += 12;
        }

        while (v17 != v16);
      }

      v27 = v33;
      if (v33)
      {
        v28 = *(v5 + 40);
        do
        {
          *(v28 + 8 * *(v27 + 4)) = vsub_f32(*(v28 + 8 * *(v27 + 4)), v18);
          v27 = *v27;
        }

        while (v27);
      }

      sub_24BD9A318(&v32);
      ++v12;
    }

    while (v12 != v31);
  }

  sub_24BCA3B84(&v32);
  return 1;
}

void sub_24BDB0898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCA3B84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDB08AC(uint64_t a1, void *a2, int a3)
{
  v5 = (*(*(a1 + 8) + 80) + 16 * *(a1 + 44));
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v6);
  }

  v8 = (*(*v7 + 16))(v7);
  v9 = *(a1 + 8);
  v11 = *(v9 + 152);
  v10 = *(v9 + 160);
  a2[1] = *a2;
  sub_24BDB0C7C(a2, v8);
  v52 = v8;
  if (v8)
  {
    v13 = v10 - v11;
    v14 = 0;
    v50 = v8 - 1;
    v51 = (v13 >> 2);
    v15 = (a3 - 1);
    v16 = (a3 - 1);
    v49 = a3;
    do
    {
      v17 = (*(a1 + 16) + 4 * v14);
      v18 = v51;
      v54 = v14;
      if (v14 != v50)
      {
        v18 = v17[1];
      }

      v19 = *v17;
      v55 = v18;
      v20 = 0x80000000800000;
      v21 = vneg_f32(0x80000000800000);
      if (v19 < v18)
      {
        v22 = *v17;
        do
        {
          v23 = (*(*(a1 + 8) + 56) + 16 * *(a1 + 56));
          v25 = *v23;
          v24 = v23[1];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v24);
          }

          v26 = 0;
          v27 = *(v25 + 40) + 12 * v22;
          __p = *v27;
          v60 = *(v27 + 8);
          do
          {
            v28 = *(&__p + v26);
            v29 = (*(*(a1 + 8) + 80) + 16 * *(a1 + 40));
            v31 = *v29;
            v30 = v29[1];
            if (v30)
            {
              atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v30);
            }

            *&v12 = *(*(v31 + 40) + 8 * v28);
            v26 += 4;
            v21 = vbsl_s8(vcgt_f32(v21, *&v12), *&v12, v21);
            v20 = vbsl_s8(vcgt_f32(*&v12, v20), *&v12, v20);
          }

          while (v26 != 12);
          ++v22;
          v18 = v55;
        }

        while (v22 != v55);
      }

      LODWORD(v12) = 1.0;
      v56 = v12;
      if (a3 && (*a1 & 1) != 0)
      {
        *&v12 = vsub_f32(v20, v21);
        if (*&v12 > v15 || *(&v12 + 1) > v15)
        {
          if (*&v12 < *(&v12 + 1))
          {
            *&v12 = *(&v12 + 1);
          }

          *&v12 = v16 / *&v12;
          *&v12 = *&v12;
          v56 = v12;
          if (*&v12 < 0.00001)
          {
            *&v12 = 0;
            v56 = v12;
          }
        }
      }

      v33 = (*(*(a1 + 8) + 80) + 16 * *(a1 + 40));
      v35 = *v33;
      v34 = v33[1];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v34);
      }

      v36 = (*(*v35 + 16))(v35);
      LOBYTE(v57) = 0;
      sub_24BC9FEFC(&__p, v36);
      *(&v12 + 1) = *(&v56 + 1);
      if (*&v56 < 1.0)
      {
        if (v19 < v18)
        {
          do
          {
            v37 = (*(*(a1 + 8) + 56) + 16 * *(a1 + 56));
            v39 = *v37;
            v38 = v37[1];
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v38);
            }

            v40 = 0;
            v41 = *(v39 + 40) + 12 * v19;
            v57 = *v41;
            v58 = *(v41 + 8);
            v42 = __p;
            do
            {
              v43 = *(&v57 + v40);
              if (((1 << v43) & v42[v43 >> 6]) == 0)
              {
                v44 = (*(*(a1 + 8) + 80) + 16 * *(a1 + 40));
                v46 = *v44;
                v45 = v44[1];
                if (v45)
                {
                  atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v45);
                  v42 = __p;
                }

                *(*(v46 + 40) + 8 * v43) = vmul_n_f32(*(*(v46 + 40) + 8 * v43), *&v56);
                v42[v43 >> 6] |= 1 << v43;
              }

              v40 += 4;
            }

            while (v40 != 12);
            ++v19;
          }

          while (v19 != v55);
        }

        *(&v12 + 1) = *(&v56 + 1);
        v20 = vmul_n_f32(v20, *&v56);
        a3 = v49;
      }

      v47 = *a2 + 16 * v54;
      *&v12 = vcvt_u32_f32(vrndp_f32(vsub_f32(v20, v21)));
      *v47 = v12;
      *(v47 + 8) = v54;
      if (__p)
      {
        operator delete(__p);
      }

      v14 = v54 + 1;
    }

    while (v54 + 1 != v52);
  }

  return 1;
}

void sub_24BDB0C7C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_24BDB15B8(a1, a2 - v2);
  }
}

uint64_t sub_24BDB0CAC(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BDB17D0(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v4 = a2[2];
    *(v3 + 11) = *(a2 + 11);
    v3[2] = v4;
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BDB0D0C(uint64_t a1, void *a2)
{
  v3 = (*(*(a1 + 8) + 80) + 16 * *(a1 + 44));
  v5 = *v3;
  v4 = v3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v4);
  }

  v6 = (*(*v5 + 16))(v5);
  v7 = *(a1 + 8);
  v8 = ((v7[20] - v7[19]) >> 2);
  v9 = (v7[10] + 16 * *(a1 + 40));
  v11 = *v9;
  v10 = v9[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v10);
  }

  v12 = (*(*v11 + 16))(v11);
  LOBYTE(v51) = 0;
  sub_24BC9FEFC(&__p, v12);
  v48 = v6;
  if (v6)
  {
    v14 = 0;
    v46 = v6 - 1;
    v47 = v8;
    do
    {
      v15 = (*(a1 + 16) + 4 * v14);
      if (v14 != v46)
      {
        v8 = v15[1];
      }

      v16 = *v15;
      if (v16 < v8)
      {
        v49 = v8;
        do
        {
          v17 = (*(*(a1 + 8) + 56) + 16 * *(a1 + 56));
          v19 = *v17;
          v18 = v17[1];
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v18);
          }

          v20 = 0;
          v21 = *(v19 + 40) + 12 * v16;
          v51 = *v21;
          v52 = *(v21 + 8);
          v22 = __p;
          do
          {
            v23 = *(&v51 + v20);
            if (((1 << v23) & v22[v23 >> 6]) == 0)
            {
              v24 = (*(*(a1 + 8) + 80) + 16 * *(a1 + 40));
              v26 = *v24;
              v25 = v24[1];
              if (v25)
              {
                atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v25);
              }

              v27 = *(v26 + 40);
              v28 = (*a2 + 16 * v14);
              v29 = *(v27 + 8 * v23);
              if (v28[1].i8[6] == 1)
              {
                v29 = vrev64_s32(v29);
                *(v27 + 8 * v23) = v29;
              }

              v13.f32[0] = *(a1 + 60);
              v13 = vdup_lane_s32(v13, 0);
              *(v27 + 8 * v23) = vdiv_f32(vadd_f32(v29, vcvt_f32_u32(*v28)), v13);
              v22 = __p;
              *(__p + (v23 >> 6)) |= 1 << v23;
            }

            v20 += 4;
          }

          while (v20 != 12);
          ++v16;
        }

        while (v16 != v49);
      }

      ++v14;
      v8 = v47;
    }

    while (v14 != v48);
  }

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v31 = *(*(a1 + 8) + 56);
      v32 = (v31 + 16 * *(a1 + 48));
      v34 = *v32;
      v33 = v32[1];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v33);
        v31 = *(*(a1 + 8) + 56);
      }

      v35 = *(*a2 + 16 * *(*(v34 + 40) + 4 * i) + 12);
      v36 = (v31 + 16 * *(a1 + 52));
      v38 = *v36;
      v37 = v36[1];
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v37);
      }

      *(*(v38 + 40) + 2 * i) = v35;
    }
  }

  v39 = (*(*(a1 + 8) + 80) + 16 * *(a1 + 44));
  v41 = *v39;
  v40 = v39[1];
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v40);
  }

  (*(*v41 + 32))(v41, *(a1 + 64));
  v42 = *(a1 + 48);
  if (v42 != -1)
  {
    v43 = (*(*(a1 + 8) + 56) + 16 * v42);
    v44 = v43[1];
    *v43 = 0;
    v43[1] = 0;
    if (v44)
    {
      sub_24BC9EC78(v44);
    }
  }

  *(a1 + 48) = -1;
  if (*(a1 + 64) >= 2u)
  {
    sub_24BE4E540(*(a1 + 8));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_24BDB1094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDB10AC(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_24BDB1110(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 20 * a2;
      do
      {
        *v3 = xmmword_24BFED170;
        *(v3 + 16) = 0;
        v3 += 20;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_24BC8E01C();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x666666666666666)
    {
      v8 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v8 = v6;
    }

    v15 = a1;
    if (v8)
    {
      sub_24BDB136C(a1, v8);
    }

    v10 = 20 * v5;
    __p = 0;
    v12 = 20 * v5;
    v14 = 0;
    do
    {
      *v10 = xmmword_24BFED170;
      *(v10 + 16) = 0;
      v10 += 20;
    }

    while (v10 != 20 * v5 + 20 * a2);
    v13 = 20 * v5 + 20 * a2;
    sub_24BDB12D8(a1, &__p);
    if (v13 != v12)
    {
      v13 = (v13 - v12 - 20) % 0x14uLL + v12;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BDB1288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BDB12D8(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 4) = *(v5 + 4);
      *(v6 + 8) = *(v5 + 8);
      *(v6 + 12) = *(v5 + 12);
      *(v6 + 16) = *(v5 + 16);
      v5 += 20;
      v6 += 20;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_24BDB136C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t *sub_24BDB13C0(uint64_t *result, uint64_t *a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v4 = *a2;
      if (*(*(*a2 + 16) + 4) * **(*a2 + 16) > (*(result[2] + 4) * *result[2]))
      {
        v6 = *v4;
        v5 = v4[1];
        *(v6 + 8) = v5;
        *v5 = v6;
        v7 = *result;
        *(v7 + 8) = v4;
        *v4 = v7;
        *result = v4;
        v4[1] = result;
        return v4;
      }
    }

    else
    {
      v9 = a3 >> 1;
      v10 = (a3 >> 1) + 1;
      v11 = result;
      do
      {
        v11 = v11[1];
        --v10;
      }

      while (v10 > 1);
      v12 = sub_24BDB13C0(result, v11, a3 >> 1);
      result = sub_24BDB13C0(v11, a2, a3 - v9);
      v13 = *(v12[2] + 4) * *v12[2];
      if (*(result[2] + 4) * *result[2] <= v13)
      {
        v15 = v12[1];
        i = result;
        result = v12;
      }

      else
      {
          ;
        }

        v16 = *i;
        v17 = *(*i + 8);
        v18 = *result;
        *(v18 + 8) = v17;
        *v17 = v18;
        v19 = *v12;
        v15 = v12[1];
        *(v19 + 8) = result;
        *result = v19;
        *v12 = v16;
        *(v16 + 8) = v12;
      }

      if (v15 != i && i != a2)
      {
        v20 = i;
        do
        {
          v21 = *(v15[2] + 4) * *v15[2];
          if (*(i[2] + 4) * *i[2] <= v21)
          {
            v15 = v15[1];
          }

          else
          {
              ;
            }

            v23 = *j;
            v24 = *(*j + 8);
            v25 = *i;
            *(v25 + 8) = v24;
            *v24 = v25;
            if (v20 == i)
            {
              v20 = j;
            }

            v27 = *v15;
            v26 = v15[1];
            *(v27 + 8) = i;
            *i = v27;
            *v15 = v23;
            *(v23 + 8) = v15;
            v15 = v26;
            i = j;
          }
        }

        while (v15 != v20 && i != a2);
      }
    }
  }

  return result;
}

void sub_24BDB15B8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_24BC8E01C();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_24BDB1788(a1, v10);
    }

    __p = 0;
    v12 = 16 * v8;
    v14 = 0;
    bzero((16 * v8), 16 * a2);
    v13 = 16 * v8 + 16 * a2;
    sub_24BDB1700(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BDB16C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDB1700(uint64_t result, void *a2)
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
      v6 = v2[2];
      *(v5 + 11) = *(v2 + 11);
      v5[2] = v6;
      v2 += 4;
      v5 += 4;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void sub_24BDB1788(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BDB17D0(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16 = a1;
  if (v7)
  {
    sub_24BDB1788(a1, v7);
  }

  v8 = (16 * v2);
  __p = 0;
  v13 = v8;
  v15 = 0;
  *v8 = *a2;
  v8[1] = a2[1];
  v9 = a2[2];
  *(v8 + 11) = *(a2 + 11);
  v8[2] = v9;
  v14 = 16 * v2 + 16;
  sub_24BDB1700(a1, &__p);
  v10 = a1[1];
  if (v14 != v13)
  {
    v14 += (v13 - v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_24BDB18D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BDB190C(char **a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BDB1AB4(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = v5[1];
      v17 = v5[2];
      *(result + 11) = *(v5 + 11);
      *(result + 2) = v17;
      v5 += 4;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = v5[1];
        v13 = v5[2];
        *(result + 11) = *(v5 + 11);
        *(result + 2) = v13;
        v5 += 4;
        result += 16;
      }

      while (v5 != v12);
      v11 = a1[1];
    }

    v14 = v11;
    if (v12 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        *v15 = *v12;
        v15[1] = v12[1];
        v16 = v12[2];
        *(v15 + 11) = *(v12 + 11);
        v15[2] = v16;
        v12 += 4;
        v15 += 4;
        v14 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void sub_24BDB1AB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_24BDB1788(a1, a2);
  }

  sub_24BC8E01C();
}

uint64_t sub_24BDB1B20(uint64_t *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = (*(*a3 + 16))(a3);
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 - *a1;
  if (v10 != *a1)
  {
    v12 = 0;
    v13 = v8;
    v14 = v11 >> 2;
    v15 = *(a2 + 40);
    v16 = *a4;
    v17 = a3[5] + 8;
    do
    {
      v18 = (v12 + 1);
      v19 = v13;
      if (v14 != v18)
      {
        v19 = *(v9 + 4 * v18);
      }

      v20 = *(v9 + 4 * v12);
      v21 = 0.0;
      if (v20 < v19)
      {
        v22 = (v17 + 12 * v20);
        v23 = v19 - v20;
        v24 = 0.0;
        do
        {
          v25 = (v15 + 8 * *(v22 - 2));
          v26 = v24;
          v27 = *v25;
          v28 = v25[1];
          v29 = (v15 + 8 * *(v22 - 1));
          v30 = *v22;
          v22 += 3;
          v31 = fabs(((*v29 - v27) * (*(v15 + 8 * v30 + 4) - v28) - (v29[1] - v28) * (*(v15 + 8 * v30) - v27)) * 0.5) - v21;
          v24 = v26 + v31;
          v21 = v26 + v31 - v26 - v31;
          --v23;
        }

        while (v23);
        v32 = v24;
        v21 = v32;
      }

      *(v16 + 8 * v12++) = v21;
    }

    while (v14 > v18);
  }

  return 1;
}

BOOL sub_24BDB1C70(float32x2_t *a1, float32x2_t *a2, int *a3)
{
  v3 = *a1;
  v4 = vabd_f32(*a2, *a1);
  if (*v4.i32 < *&v4.i32[1])
  {
    v4.i32[0] = v4.i32[1];
  }

  if (*v4.i32 >= 0.00001 && *v4.i32 > 0.0)
  {
    v5 = vdiv_f32(vsub_f32(*a2, v3), vdup_lane_s32(v4, 0));
    v6 = *a3;
    v7 = *a3 - 1;
    v8 = a3[1] - 1;
    v9 = *(a3 + 2);
    v10 = a3[2];
    v11 = 1;
    do
    {
      v12 = vcvtms_u32_f32(v3.f32[0]);
      if (v12 >= v7)
      {
        v12 = v7;
      }

      v13 = vcvtms_u32_f32(v3.f32[1]);
      if (v13 >= v8)
      {
        v13 = v8;
      }

      *(v9 + (v12 + v13 * v6) * v10) = 1;
      v3 = vadd_f32(v5, v3);
      v14 = v11++;
    }

    while (*v4.i32 > v14);
  }

  return *v4.i32 >= 0.00001;
}

uint64_t sub_24BDB1D10(float *a1, float *a2, float *a3, int *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = fminf(*a1, 3.4028e38);
  v7 = fminf(v5, 3.4028e38);
  v8 = fmaxf(*a1, -3.4028e38);
  v9 = fmaxf(v5, -3.4028e38);
  v10 = *a2;
  v11 = a2[1];
  if (*a2 >= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = a2[1];
  }

  if (v8 < v10)
  {
    v8 = *a2;
  }

  if (v9 < v11)
  {
    v9 = a2[1];
  }

  v14 = *a3;
  v15 = a3[1];
  if (*a3 < v12)
  {
    v12 = *a3;
  }

  if (v15 < v13)
  {
    v13 = a3[1];
  }

  if (v8 < v14)
  {
    v8 = *a3;
  }

  if (v9 < v15)
  {
    v9 = a3[1];
  }

  v16 = vcvtms_u32_f32(v12);
  v17 = *a4;
  v18 = a4[1];
  v19 = *a4 - 1;
  if (v16 >= v19)
  {
    v16 = *a4 - 1;
  }

  v20 = vcvtps_u32_f32(v8);
  if (v20 < v19)
  {
    v19 = v20;
  }

  v21 = vcvtms_u32_f32(v13);
  v22 = v18 - 1;
  if (v21 >= v18 - 1)
  {
    v23 = v18 - 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = vcvtps_u32_f32(v9);
  if (v24 >= v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = v24;
  }

  if (v23 <= v24)
  {
    v26 = ((v14 - v4) * (v11 - v5)) - ((v15 - v5) * (v10 - v4));
    v27 = v16 + v17 * v23;
    do
    {
      if (v16 <= v20)
      {
        v28 = v23 + 0.5;
        v29 = -((v28 - v11) * (v14 - v10));
        v30 = -((v28 - v15) * (v4 - v14));
        v31 = -((v28 - v5) * (v10 - v4));
        v32 = *(a4 + 2);
        v33 = a4[2];
        v34 = v33 * v27;
        v35 = v16;
        do
        {
          v36 = v35 + 0.5;
          if (((v31 + ((v36 - v4) * (v11 - v5))) / v26) >= 0.0 && ((v29 + ((v36 - v10) * (v15 - v11))) / v26) >= 0.0 && ((v30 + ((v36 - v14) * (v5 - v15))) / v26) >= 0.0)
          {
            *(v32 + v34) = 1;
          }

          ++v35;
          v34 += v33;
        }

        while (v35 <= v19);
      }

      ++v23;
      v27 += v17;
    }

    while (v23 <= v25);
  }

  return 1;
}

uint64_t sub_24BDB1EA4(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v5 = *a1;
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 1;
  }

  v8 = 0;
  v10 = *a2;
  v9 = *(a2 + 4);
  if (v9 <= 8)
  {
    v11 = 1;
  }

  else
  {
    v11 = 8;
  }

  if (v10 <= 8)
  {
    v12 = 1;
  }

  else
  {
    v12 = 8;
  }

  while (1)
  {
    v13 = v8;
    v14 = v8 + a4;
    if (v14 < v4 && v5 > a3)
    {
      break;
    }

LABEL_24:
    v8 = v13 + v11;
    if (v13 + v11 >= v9)
    {
      v8 = (v13 & (v11 - 1)) + 1;
      if (v8 == v11)
      {
        return 1;
      }
    }
  }

  v16 = 0;
  v17 = v14 * v5;
  v18 = a3;
  while (*(*(a1 + 16) + *(a1 + 8) * (v18 + v17)) != 1 || (*(*(a2 + 16) + *(a2 + 8) * (v16 + v13 * v10)) & 1) == 0)
  {
    v19 = v16 + v12;
    if (v16 + v12 < v10 || (v19 = (v16 & (v12 - 1)) + 1, v19 != v12))
    {
      v18 = v19 + a3;
      v16 = v19;
      if (v19 + a3 < v5)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  return 0;
}

uint64_t sub_24BDB1F98(uint64_t result, unsigned int *a2, unsigned int *a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a8)
  {
    a2 = a3;
  }

  v9 = a2[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = *a2;
    v13 = a4;
    v14 = a7;
    do
    {
      if (v11 + a7 >= 0 && v12 >= 1)
      {
        v15 = *(a2 + 2);
        v16 = a2[2];
        v17 = *(result + 16);
        v18 = *(result + 8);
        v19 = v18 * (a6 + *result * v14);
        v20 = v16 * v10;
        v21 = v12;
        v22 = a6;
        do
        {
          if (v22 & 0x8000000000000000) == 0 && v11 + a7 < a5 && v22 < v13 && (*(v15 + v20))
          {
            *(v17 + v19) = 1;
          }

          v19 += v18;
          ++v22;
          v20 += v16;
          --v21;
        }

        while (v21);
      }

      ++v11;
      ++v14;
      v10 += v12;
    }

    while (v11 != v9);
  }

  return result;
}

void sub_24BDB2064(unsigned int **a1, uint64_t a2, float *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = *a3;
    v7 = __sincos_stret(v6);
    v10.f64[0] = v7.__cosval;
    v9.f64[0] = -v7.__sinval;
    v8 = vdup_n_s32(v6 > 0.00000001);
    v9.f64[1] = v7.__cosval;
    v10.f64[1] = v7.__sinval;
    v11 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v12 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v13.i64[0] = v8.u32[0];
    v13.i64[1] = v8.u32[1];
    v14 = vcltzq_s64(vshlq_n_s64(v13, 0x3FuLL));
    do
    {
      v15 = *v3++;
      v16 = vcvtq_f64_f32(*(*(a2 + 40) + 8 * v15));
      v17 = vbslq_s8(v14, vmlaq_laneq_f64(vmlaq_n_f64(0, v10, v16.f64[0]), v9, v16, 1), v16);
      v11 = vbslq_s8(vcgtq_f64(v11, v17), v17, v11);
      v12 = vbslq_s8(vcgtq_f64(v17, v12), v17, v12);
    }

    while (v3 != v4);
  }
}

void sub_24BDB213C(unsigned int **a1, uint64_t a2, float *a3)
{
  v3 = *a3;
  if (v3 > 0.00000001)
  {
    v6 = __sincos_stret(v3);
    v7 = *a1;
    v8 = a1[1];
    if (*a1 != v8)
    {
      v9 = *(a2 + 40);
      do
      {
        v10 = *v7++;
        v11 = (v9 + 8 * v10);
        v12 = *v11;
        v13 = v11[1];
        v14 = v6.__cosval * v12 + 0.0 + -v6.__sinval * v13;
        v15 = v6.__sinval * v12 + 0.0 + v6.__cosval * v13;
        *&v13 = v14;
        *&v15 = v15;
        *v11 = *&v13;
        v11[1] = *&v15;
      }

      while (v7 != v8);
    }
  }
}

uint64_t sub_24BDB21CC(unsigned int **a1, uint64_t *a2)
{
  sub_24BDB46BC(&__p, a1[1] - *a1);
  v4 = *a1;
  v5 = __p;
  v6 = a1[1] - *a1;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = *a2;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = __p + 8;
    do
    {
      v10 = *v4++;
      v11 = *(v8 + 8 * v10);
      *(v9 - 2) = v10;
      *v9 = v11;
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  v12 = 126 - 2 * __clz((v22 - v5) >> 4);
  if (v22 == v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_24BDB47B8(v5, v22, v13, 1);
  v14 = *a1;
  v15 = __p;
  v16 = a1[1] - *a1;
  if (v16)
  {
    v17 = v16 >> 2;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v18 = __p;
    do
    {
      v19 = *v18;
      v18 += 4;
      *v14++ = v19;
      --v17;
    }

    while (v17);
    goto LABEL_16;
  }

  if (__p)
  {
LABEL_16:
    v22 = v15;
    operator delete(v15);
  }

  return 1;
}

BOOL sub_24BDB22B4(int **a1, double **a2, uint64_t *a3, unsigned int *a4, void **a5)
{
  v10 = *a2;
  v11 = 0.0;
  while (v10 != a2[1])
  {
    v12 = *v10++;
    v11 = v11 + v12;
  }

  sub_24BC901C0(a5, *a4);
  v13 = *a4;
  if (*a4)
  {
    LODWORD(v14) = v13 - 1;
    if (v13 == 1)
    {
      sub_24BC8CAB0(*a5, (a1[1] - *a1) >> 4);
      v15 = *a1;
      v16 = a1[1] - *a1;
      if (v16)
      {
        v17 = v16 >> 4;
        v18 = **a5;
        if (v17 <= 1)
        {
          v17 = 1;
        }

        do
        {
          v19 = *v15;
          v15 += 4;
          *v18++ = v19;
          --v17;
        }

        while (v17);
      }
    }

    else
    {
      v20 = *a4;
      v22 = *a2;
      v21 = a2[1];
      v23 = v21 - *a2;
      if (v23 >> 3 <= v20)
      {
        sub_24BC901C0(a5, v23 >> 3);
        v31 = v21 == v22;
        v13 = v20;
        if (!v31)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          do
          {
            sub_24BC97D60(&(*a5)[v33], &(*a1)[v32]);
            ++v34;
            v33 += 3;
            v32 += 4;
          }

          while (v34 < (v23 >> 3));
        }
      }

      else
      {
        v24 = v11 / v20;
        v36 = 0;
        v25 = 1;
        v26 = 0.0;
        v27 = *a4;
        while (1)
        {
          do
          {
            v28 = v14;
            if (v26 >= v24 && v27 > v25)
            {
              v11 = v11 - v26;
              v24 = v11 / (v27 - v25);
              sub_24BDB21CC(&(*a5)[3 * v25 - 3], a3);
              v26 = 0.0;
              ++v25;
            }

            v30 = &(*a1)[4 * v28];
            v26 = v26 + (*a2)[*v30];
            sub_24BC97D60(&(*a5)[3 * v25 - 3], v30);
            v27 = *a4;
            v14 = *a4 + v28;
          }

          while (v23 >> 3 > v14);
          if (v36)
          {
            break;
          }

          if (v28 % v27 + 1 == v27)
          {
            LODWORD(v14) = 0;
          }

          else
          {
            LODWORD(v14) = v28 % v27 + 1;
          }

          v36 = v14 == v20 - 2;
        }

        sub_24BDB21CC(a5[1] - 3, a3);
        v13 = v20;
        if (v25 < *a4)
        {
          sub_24BC901C0(a5, v25);
        }
      }
    }
  }

  return v13 != 0;
}

void sub_24BDB2508(uint64_t *a1)
{
  v3 = 0;
  v1 = *a1;
  v2 = *(a1 + 2);
  sub_24BCBF640(&v1);
}

void sub_24BDB25E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x24C254890](a12, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDB260C(uint64_t a1, unsigned int a2)
{
  if (**a1 < a2 && *(*a1 + 4) < a2)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_24BDB2790(uint64_t a1, int *a2, uint64_t a3, int a4, int a5, signed int *a6, int *a7, _DWORD *a8, _DWORD *a9, int *a10, int a11, _DWORD *a12)
{
  v41 = 0;
  v39 = a5 * a4;
  if (a5 * a4 >= 4096)
  {
    v12 = 4096;
  }

  else
  {
    v12 = a5 * a4;
  }

  if (v12 <= 16)
  {
    v13 = 16;
  }

  else
  {
    v13 = v12;
  }

  v14 = a4 + 1;
  v15 = a5 + 1;
  v49 = 0x7FFFFFFF;
  v46 = a5 + 1;
  while (1)
  {
    v16 = *a2;
    v17 = a2[1];
    v18 = a12[1] ^ (a12[1] << 13);
    v19 = v18 ^ (v18 >> 17);
    v20 = a12[3] + 698769069 * a12[2];
    v21 = v19 ^ (32 * v19);
    v22 = (v19 + -51 * *a12 + 57 + a12[3] - 83 * a12[2]) & 1;
    v51 = v22;
    *a12 = 69069 * *a12 + 12345;
    a12[1] = v21;
    *(a12 + 1) = v20;
    if (v22)
    {
      v23 = v16;
    }

    else
    {
      v23 = v17;
    }

    if (v22)
    {
      v24 = v17;
    }

    else
    {
      v24 = v16;
    }

    v25 = v15;
    v26 = v14;
    if (a11)
    {
      if (a11 - v24 >= v14)
      {
        v26 = v14;
      }

      else
      {
        v26 = a11 - v24;
      }

      if (a11 - v23 >= v15)
      {
        v25 = v15;
      }

      else
      {
        v25 = a11 - v23;
      }
    }

    v27 = sub_24BDB29B0(a12, v26);
    v28 = sub_24BDB29B0(a12, v25);
    v29 = v27 + v24;
    if (v27 + v24 <= a4)
    {
      v29 = a4;
    }

    v30 = v28 + v23;
    if (v28 + v23 <= a5)
    {
      v30 = a5;
    }

    v31 = v30 * v29;
    if (v29 <= v30)
    {
      v29 = v30;
    }

    v32 = v31 + v29 * v29;
    if (v32 <= v49)
    {
      v33 = v28;
      if (v32 != v49)
      {
        break;
      }

      if (v28 >= v27)
      {
        v34 = v27;
      }

      else
      {
        v34 = v28;
      }

      v35 = *a7;
      if (*a7 >= *a6)
      {
        v35 = *a6;
      }

      if (v34 <= v35)
      {
        break;
      }
    }

    v15 = v46;
LABEL_41:
    if (!--v13)
    {
      return v41 & 1;
    }
  }

  if (v51)
  {
    v36 = a3;
  }

  else
  {
    v36 = a2;
  }

  v37 = sub_24BDB1EA4(a1, v36, v27, v28);
  v15 = v46;
  if (!v37)
  {
    goto LABEL_41;
  }

  *a6 = v27;
  *a7 = v33;
  *a8 = v24;
  *a9 = v23;
  v41 = 1;
  v49 = v32;
  *a10 = v51;
  if (v31 != v39)
  {
    goto LABEL_41;
  }

  return v41 & 1;
}

uint64_t sub_24BDB29B0(int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 69069 * *a1 + 12345;
  v3 = a1[1] ^ (a1[1] << 13);
  v4 = v3 ^ (v3 >> 17) ^ (32 * (v3 ^ (v3 >> 17)));
  *a1 = v2;
  a1[1] = v4;
  v5 = a1[3] + 698769069 * a1[2];
  *(a1 + 1) = v5;
  return (v4 + v2 + v5) % (a2 + 1);
}

BOOL sub_24BDB2A0C(char **a1, uint64_t a2, const void **a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  v8 = v7 >> 2;
  if ((v7 >> 2) < 3)
  {
    return 0;
  }

  if (v7 == 12)
  {
    if (a3 != a1)
    {
      sub_24BCA2A30(a3, v5, v6, v8);
    }

    return 1;
  }

  else
  {
    v11 = *v5;
    for (i = *v5; v5 != v6; v5 += 4)
    {
      v12 = *v5;
      v13 = (a2 + 8 * v12);
      v14 = v13[1];
      v15 = (a2 + 8 * v11);
      v16 = v15[1];
      if (v14 < v16 || v14 < (v16 + 0.000001) && *v13 < *v15)
      {
        i = *v5;
        v11 = v12;
      }
    }

    __src = 0;
    v54 = 0;
    v55 = 0;
    sub_24BDB2DD8(&__src, v8);
    v17 = *a1;
    v18 = a1[1];
    if (*a1 != v18)
    {
      do
      {
        v19 = *v17;
        if (v19 != i)
        {
          v20 = (a2 + 8 * v19);
          v21 = (a2 + 8 * i);
          v22 = *v20 - *v21;
          v23 = sqrtf(((v20[1] - v21[1]) * (v20[1] - v21[1])) + (v22 * v22));
          v24 = v22 / v23;
          if (v23 <= 0.0)
          {
            v25 = 1.0;
          }

          else
          {
            v25 = v24;
          }

          v26 = v54;
          if (v54 >= v55)
          {
            v28 = __src;
            v29 = v54 - __src;
            v30 = 0xAAAAAAAAAAAAAAABLL * ((v54 - __src) >> 2);
            v31 = v30 + 1;
            if (v30 + 1 > 0x1555555555555555)
            {
              sub_24BC8E01C();
            }

            if (0x5555555555555556 * ((v55 - __src) >> 2) > v31)
            {
              v31 = 0x5555555555555556 * ((v55 - __src) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v55 - __src) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v31 = 0x1555555555555555;
            }

            if (v31)
            {
              sub_24BCDC764(&__src, v31);
            }

            v32 = 4 * ((v54 - __src) >> 2);
            *v32 = v19;
            *(v32 + 4) = v25;
            *(v32 + 8) = v23;
            v27 = (12 * v30 + 12);
            v33 = (v32 - v29);
            memcpy((v32 - v29), v28, v29);
            v34 = __src;
            __src = v33;
            v54 = v27;
            v55 = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v54 = v19;
            v27 = v26 + 3;
            *(v26 + 1) = v25;
            *(v26 + 2) = v23;
          }

          v54 = v27;
        }

        ++v17;
      }

      while (v17 != v18);
    }

    v35 = __src;
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v54 - __src) >> 2);
    v9 = v36 > 1;
    if (v36 > 1)
    {
      v37 = 126 - 2 * __clz(v36);
      if (v54 == __src)
      {
        v38 = 0;
      }

      else
      {
        v38 = v37;
      }

      sub_24BDB59BC(__src, v54, v38, 1);
      a3[1] = *a3;
      sub_24BC97D60(a3, &i);
      v35 = __src;
      v39 = v54;
      if (__src != v54)
      {
        do
        {
          v40 = *v35;
          v52 = *v35;
          v41 = a3[1];
          v42 = v41 - *a3;
          if (v42 >= 5)
          {
            v43 = (a2 + 8 * v40);
            v44 = *v43;
            v45 = v43[1];
            v46 = (v41 - 4);
            v47 = v41 - 4;
            v48 = *a3 + v42 - 4;
            do
            {
              v49 = *(v48 - 4);
              v48 -= 4;
              v50 = (a2 + 8 * v49);
              if (((((*(a2 + 8 * *v46) - *v50) * (v45 - v50[1])) - ((*(a2 + 8 * *v46 + 4) - v50[1]) * (v44 - *v50))) * 0.5) >= 0.000001)
              {
                break;
              }

              a3[1] = v47;
              v42 -= 4;
              v47 -= 4;
              v46 = v48;
            }

            while (v42 > 4);
          }

          sub_24BC97D60(a3, &v52);
          v35 += 3;
        }

        while (v35 != v39);
        v35 = __src;
      }

      if (a3[1] - *a3 == 8)
      {
        sub_24BC97D60(a3, v54 - 6);
        *(a3[1] - 1) = vrev64_s32(*(a3[1] - 8));
        v35 = __src;
      }
    }

    if (v35)
    {
      v54 = v35;
      operator delete(v35);
    }
  }

  return v9;
}

void sub_24BDB2DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDB2DD8(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      sub_24BCDC764(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

uint64_t sub_24BDB2E98(uint64_t a1, _DWORD *a2, unsigned int *a3, float *a4, int a5, char a6)
{
  v51 = *MEMORY[0x277D85DE8];
  v45[0] = -1;
  v45[1] = a5;
  v44 = -1;
  sub_24BC836D4(&v47, off_27F078F78[0]);
  *context = 0;
  v11 = sub_24BCB74D4((a1 + 80), context, &v47);
  if (v50 < 0)
  {
    operator delete(v47);
  }

  sub_24BC836D4(&v47, off_27F078FE8[0]);
  sub_24BD265CC(a1, v45, &v47);
  if (v50 < 0)
  {
    operator delete(v47);
  }

  sub_24BC836D4(&v47, off_27F078FC8[0]);
  *context = 0;
  v12 = sub_24BCCA8D0((a1 + 56), context, &v47);
  if (v50 < 0)
  {
    operator delete(v47);
  }

  sub_24BC836D4(&v47, off_27F078FB8[0]);
  *&context[4] = 0;
  *context = 0;
  v13 = sub_24BCCAA0C((a1 + 56), context, &v47);
  if (v50 < 0)
  {
    operator delete(v47);
  }

  sub_24BC836D4(&v47, off_27F078FC8[0]);
  *context = 0;
  v14 = sub_24BD274E4((a1 + 56), context, &v47);
  v44 = v14;
  if (v50 < 0)
  {
    operator delete(v47);
    v14 = v44;
  }

  if (v14 == -1)
  {
    sub_24BC836D4(&v47, off_27F078FC8[0]);
    sub_24BD2CCDC(a1);
  }

  v15 = *(a1 + 80);
  v16 = v15 + 16 * v11;
  v18 = *v16;
  v17 = *(v16 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v17);
    v15 = *(a1 + 80);
  }

  v19 = (v15 + 16 * v45[0]);
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v20);
  }

  v22 = *(a1 + 56);
  v23 = v22 + 16 * v12;
  v25 = *v23;
  v24 = *(v23 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v24);
    v22 = *(a1 + 56);
  }

  v26 = v22 + 16 * v13;
  v28 = *v26;
  v27 = *(v26 + 8);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v27);
    v22 = *(a1 + 56);
  }

  v29 = (v22 + 16 * v44);
  v31 = *v29;
  v30 = v29[1];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v30);
  }

  v43 = (*(*v21 + 16))(v21);
  v42 = 0;
  if (a6)
  {
    v40 = 0;
    v41 = -1027081503;
    v47 = 0x3ECCCCCD3F0CCCCDLL;
    v48 = 1050253722;
    v38 = 0;
    v39 = 0;
    __p = 0;
    sub_24BDB6E64(&__p, &v47, &v49, 3uLL);
    sub_24BDB6ED8(v36, (v38 - __p) >> 2);
    sub_24BDB70C4(v35, (v38 - __p) >> 2);
    dispatch_semaphore_create(1);
    operator new();
  }

  if (sub_24BDB3534(v18, v25, v28, flt_24BFED1A0[a5 == 0], v31, &v43, a2, a3, a4, &v42))
  {
    (*(*v21 + 32))(v21, v42);
    if (v42)
    {
      sub_24BE4E540(a1);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BDB3490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (*(v22 - 105) < 0)
  {
    operator delete(*(v22 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDB3534(void *a1, void *a2, void *a3, float a4, uint64_t a5, unint64_t *a6, _DWORD *a7, unsigned int *a8, float *a9, _DWORD *a10)
{
  v114[4] = *MEMORY[0x277D85DE8];
  v113 = *a9 * 0.5;
  v16 = (*(*a2 + 16))(a2);
  v112 = v16;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  sub_24BCB8D20(&v109, *a6);
  LODWORD(v114[0]) = 0;
  if (v16)
  {
    v17 = 0;
    for (i = 0; i < v16; LODWORD(v114[0]) = i)
    {
      if (v17 == *(a2[5] + 4 * i))
      {
        sub_24BC97D60(&v109, v114);
        ++v17;
        i = v114[0];
        v16 = v112;
      }

      ++i;
    }
  }

  sub_24BDB7474(v108, *a6);
  sub_24BDB46BC(&v106, *a6);
  v19 = *a6;
  if (*a6)
  {
    LODWORD(v20) = 0;
    v21 = v106;
    do
    {
      *v21 = v20;
      v21 += 4;
      v20 = (v20 + 1);
    }

    while (v19 > v20);
  }

  sub_24BCA0430(v105, v19);
  v22 = (*(*a1 + 16))(a1);
  LOBYTE(v114[0]) = 0;
  sub_24BC9FEFC(&v104, v22);
  v95 = a7;
  v96 = a6;
  v23 = *a6;
  if (*a6)
  {
    v94 = a8;
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = v24;
      v27 = *(v109 + v24);
      v24 = (v25 + 1);
      if (v24 == (v110 - v109) >> 2)
      {
        v28 = &v112;
      }

      else
      {
        v28 = (v109 + 4 * v24);
      }

      v29 = *v28;
      if (v27 < v29)
      {
        v30 = v104;
        v31 = 12 * v27;
        do
        {
          v32 = (a3[5] + v31);
          v33 = 3;
          do
          {
            if (((*&v30[(*v32 >> 3) & 0x1FFFFFF8] >> *v32) & 1) == 0)
            {
              sub_24BC97D60((v105[0] + 24 * v26), v32);
              v30 = v104;
              *(v104 + ((*v32 >> 3) & 0x1FFFFFF8)) |= 1 << *v32;
            }

            ++v32;
            --v33;
          }

          while (v33);
          ++v27;
          v31 += 12;
        }

        while (v27 != v29);
        v23 = *v96;
      }

      v25 = v24;
    }

    while (v23 > v24);
    if (v23)
    {
      v34 = 0;
      v35 = 0;
      a8 = v94;
      do
      {
        v36 = 0;
        v37 = 0;
        v38 = (v105[0] + 24 * v34);
        v39 = 3.4028e38;
        do
        {
          v40 = v37;
          *v114 = v37 * 0.098175;
          sub_24BDB2064(v38, a1, v114);
          if (v41 < v39)
          {
            v36 = v37;
            v39 = v41;
          }

          ++v37;
        }

        while (v40 < 0xF);
        *v114 = v36 * 0.098175;
        if (v36)
        {
          sub_24BDB213C(v38, a1, v114);
          v23 = *v96;
        }

        v34 = ++v35;
      }

      while (v23 > v35);
    }

    else
    {
      a8 = v94;
    }
  }

  v103 = *v95 + 2 * v113;
  sub_24BCA1A48(v102, v23);
  sub_24BCA1A48(__p, *v96);
  sub_24BDB1B20(&v109, a1, a3, v102);
  v42 = *v96;
  if (*v96)
  {
    v43 = 0.0;
    v44 = 1;
    v45 = v102[0];
    do
    {
      v46 = *v45++;
      HIDWORD(v47) = HIDWORD(v46);
      v43 = v43 + v46;
    }

    while (v42 > v44++);
    if (v43 > 0.0)
    {
      v49 = 0;
      LODWORD(v50) = 0;
      v51 = v106;
      v52 = v43;
      v53 = v109;
      v54 = (v110 - v109) >> 2;
      v55 = sqrtf((v103 * v103 * *a8) / (v52 / a4));
      v56 = a3[5];
      v57 = a1[5];
      v58 = v105[0];
      LODWORD(v47) = *v95;
      v59 = v47 + -1.0;
      v60 = v102[0];
      v61 = v108[0];
      v62 = __p[0];
      v63 = vdupq_lane_s64(*&v59, 0);
      v64 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v65 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      while (1)
      {
        v66 = v53[v49];
        v50 = (v50 + 1);
        v67 = &v53[v50];
        if (v54 == v50)
        {
          v67 = &v112;
        }

        v68 = *v67;
        v69 = v65;
        v70 = v64;
        if (v66 < v68)
        {
          v71 = v56 + 12 * v66;
          v69 = v65;
          v70 = v64;
          do
          {
            for (j = 0; j != 12; j += 4)
            {
              v73 = vcvtq_f64_f32(*(v57 + 8 * *(v71 + j)));
              v70 = vbslq_s8(vcgtq_f64(v70, v73), v73, v70);
              v69 = vbslq_s8(vcgtq_f64(v73, v69), v73, v69);
            }

            ++v66;
            v71 += 12;
          }

          while (v66 != v68);
        }

        v74 = (v58 + 24 * v49);
        v75 = *v74;
        v76 = v74[1];
        for (k = v75; k != v76; *(v57 + 8 * v78) = vcvt_f32_f64(vmulq_n_f64(vsubq_f64(vcvtq_f64_f32(*(v57 + 8 * v78)), v70), v55)))
        {
          v78 = *k++;
        }

        v79 = vmulq_n_f64(vsubq_f64(v69, v70), v55);
        v80 = vmovn_s64(vcgtq_f64(v79, v63));
        if ((v80.i32[0] | v80.i32[1]))
        {
          if (v79.f64[0] < v79.f64[1])
          {
            v79.f64[0] = v79.f64[1];
          }

          v81 = v59 / v79.f64[0];
          if (v75 != v76)
          {
            v83 = v75;
            do
            {
              v84 = *v83++;
              v82 = v81;
              *(v57 + 8 * v84) = vmul_n_f32(*(v57 + 8 * v84), v82);
            }

            while (v83 != v76);
          }

          v60[v49] = v81 * v81 * v60[v49];
        }

        if (v75 == v76)
        {
          v86 = 0uLL;
        }

        else
        {
          v85 = vdupq_lane_s64(COERCE__INT64(v113 + 0.5), 0);
          v86 = 0uLL;
          do
          {
            v87 = *v75++;
            v88 = vcvt_f32_f64(vaddq_f64(v85, vcvtq_f64_f32(*(v57 + 8 * v87))));
            *(v57 + 8 * v87) = v88;
            v89 = vcvtq_f64_f32(v88);
            v86 = vbslq_s8(vcgtq_f64(v89, v86), v89, v86);
          }

          while (v75 != v76);
        }

        v61[v49] = vcvt_f32_f64(v86);
        v62[v49] = vaddvq_f64(v86);
        v51[2 * v49 + 1] = v60[v49];
        v49 = v50;
        if (v42 <= v50)
        {
          v90 = 126 - 2 * __clz((v107 - v51) >> 4);
          if (v107 == v51)
          {
            v91 = 0;
          }

          else
          {
            v91 = v90;
          }

          sub_24BDB47B8(v51, v107, v91, 1);
          v98 = 0;
          v99 = 0;
          v100 = 0;
          sub_24BDB22B4(&v106, v102, __p, a8, &v98);
          *a10 = -1431655765 * ((v99 - v98) >> 3);
          v114[3] = 0;
          operator new();
        }
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v102[0])
  {
    v102[1] = v102[0];
    operator delete(v102[0]);
  }

  if (v104)
  {
    operator delete(v104);
  }

  v114[0] = v105;
  sub_24BC8EE84(v114);
  if (v106)
  {
    v107 = v106;
    operator delete(v106);
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

  v92 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDB3D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  sub_24BDB8334(v37 - 192);
  sub_24BDB8334(v37 - 160);
  *(v37 - 160) = &a14;
  sub_24BC8EE84((v37 - 160));
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  if (a24)
  {
    operator delete(a24);
  }

  *(v37 - 160) = &a27;
  sub_24BC8EE84((v37 - 160));
  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BDB3DF8(unint64_t *a1, unint64_t *a2, unint64_t *a3, _DWORD *a4, unsigned int *a5, float *a6, int *a7, uint64_t a8, uint64_t a9, _WORD *a10, _DWORD *a11)
{
  sub_24BC836D4(__p, "<unknown>");
  v59 = &unk_285F932A8;
  if ((__p[23] & 0x80000000) != 0)
  {
    sub_24BC8DE9C(&v60, *__p, *&__p[8]);
    v62 = sub_24BDB43B0;
    v63 = 0;
    v59 = &unk_285F94258;
    v64 = 0;
    v65 = 0;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v60 = *__p;
    v61 = *&__p[16];
    v62 = sub_24BDB43B0;
    v63 = 0;
    v59 = &unk_285F94258;
    v64 = 0;
    v65 = 0;
  }

  sub_24BCDBCA8(&v63, *a2);
  sub_24BC836D4(v47, "<unknown>");
  *__p = &unk_285F932A8;
  if ((v47[23] & 0x80000000) != 0)
  {
    sub_24BC8DE9C(&__p[8], *v47, *&v47[8]);
    v55 = sub_24BDB43B0;
    v56 = 0;
    *__p = &unk_285F944F8;
    v57 = 0;
    v58 = 0;
    if ((v47[23] & 0x80000000) != 0)
    {
      operator delete(*v47);
    }
  }

  else
  {
    *&__p[8] = *v47;
    v54 = *&v47[16];
    v55 = sub_24BDB43B0;
    v56 = 0;
    *__p = &unk_285F944F8;
    v57 = 0;
    v58 = 0;
  }

  sub_24BC8CAB0(&v56, *a1);
  sub_24BC836D4(v41, "<unknown>");
  *v47 = &unk_285F932A8;
  if ((v41[23] & 0x80000000) != 0)
  {
    sub_24BC8DE9C(&v47[8], *v41, *&v41[8]);
    v49 = sub_24BDB43B0;
    v50 = 0;
    *v47 = &unk_285F94338;
    v51 = 0;
    v52 = 0;
    if ((v41[23] & 0x80000000) != 0)
    {
      operator delete(*v41);
    }
  }

  else
  {
    *&v47[8] = *v41;
    v48 = *&v41[16];
    v49 = sub_24BDB43B0;
    v50 = 0;
    *v47 = &unk_285F94338;
    v51 = 0;
    v52 = 0;
  }

  sub_24BCDC7BC(&v50, *a1);
  v19 = *a1;
  if (*a1)
  {
    v20 = v56;
    v21 = (v50 + 8);
    v22 = (a8 + 8);
    do
    {
      v23 = *a7++;
      *v20++ = v23;
      v24 = *v22;
      *(v21 - 1) = *(v22 - 1);
      *v21 = v24;
      v21 += 3;
      v22 += 3;
      --v19;
    }

    while (v19);
  }

  v25 = *a2;
  if (*a2)
  {
    v26 = (a9 + 4);
    v27 = (v63 + 4);
    do
    {
      *(v27 - 1) = *(v26 - 1);
      v28 = *v26;
      v26 += 2;
      *v27 = v28;
      v27 += 2;
      --v25;
    }

    while (v25);
  }

  sub_24BC836D4(v39, "<unknown>");
  *v41 = &unk_285F932A8;
  if (SHIBYTE(v40) < 0)
  {
    sub_24BC8DE9C(&v41[8], v39[0], v39[1]);
    v43 = sub_24BDB43B0;
    v44 = 0;
    *v41 = &unk_285F95640;
    v45 = 0;
    v46 = 0;
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }
  }

  else
  {
    *&v41[8] = *v39;
    v42 = v40;
    v43 = sub_24BDB43B0;
    v44 = 0;
    *v41 = &unk_285F95640;
    v45 = 0;
    v46 = 0;
  }

  sub_24BD30080(&v44, *a1);
  v29 = sub_24BDB3534(&v59, __p, v47, 0.55, v41, a3, a4, a5, a6, a11);
  if (v29)
  {
    v30 = *a2;
    if (*a2)
    {
      v31 = (a9 + 4);
      v32 = (v63 + 4);
      do
      {
        *(v31 - 1) = *(v32 - 1);
        v33 = *v32;
        v32 += 2;
        *v31 = v33;
        v31 += 2;
        --v30;
      }

      while (v30);
    }

    v34 = *a1;
    if (*a1)
    {
      v36 = v44;
      do
      {
        v37 = *v36++;
        *a10++ = v37;
        --v34;
      }

      while (v34);
    }
  }

  sub_24BD2FF84(v41);
  sub_24BCDC558(v47);
  sub_24BCDE8C4(__p);
  sub_24BCDBAF4(&v59);
  return v29;
}

void sub_24BDB42FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_24BCDC558(&a29);
  sub_24BCDE8C4(&a40);
  sub_24BCDBAF4((v45 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_24BDB43C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BDB445C(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDB43C4(v5, a1);
  sub_24BDB44EC(v5, a2);
  result = sub_24BDB73F4(v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BDB44D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BDB73F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDB44EC(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_24BDB4540(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BDB45D8(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BDB4540(v5, a1);
  sub_24BDB4668(v5, a2);
  result = sub_24BDB8334(v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BDB464C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BDB8334(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDB4668(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_24BDB46BC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BDB4734(result, a2);
  }

  return result;
}

void sub_24BDB4718(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDB4734(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_24BDB4770(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BDB4770(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

double *sub_24BDB47B8(double *result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = v8[1];
        if (v82 > v83)
        {
          v84 = *v8;
          *v8 = *(a2 - 4);
          *(a2 - 4) = v84;
          v8[1] = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v89 = v8 + 3;
      v90 = v8[3];
      v91 = v8 + 1;
      v92 = v8[1];
      v93 = v8[5];
      if (v90 <= v92)
      {
        if (v93 > v90)
        {
          v140 = *(v8 + 4);
          v141 = *(v8 + 8);
          *(v8 + 4) = v141;
          *(v8 + 8) = v140;
          v8[3] = v93;
          v8[5] = v90;
          if (v93 > v92)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 4) = v142;
            goto LABEL_188;
          }

LABEL_189:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = *(v8 + 8);
          *(v8 + 8) = v94;
          goto LABEL_187;
        }

        *v8 = *(v8 + 4);
        *(v8 + 4) = v94;
        v8[1] = v90;
        v8[3] = v92;
        if (v93 > v92)
        {
          *(v8 + 4) = *(v8 + 8);
          *(v8 + 8) = v94;
          v91 = v8 + 3;
LABEL_187:
          v89 = v8 + 5;
          v90 = v92;
LABEL_188:
          *v91 = v93;
          *v89 = v92;
          goto LABEL_189;
        }
      }

      v151 = *(a2 - 1);
      if (v151 <= v93)
      {
        return result;
      }

      v152 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 4);
      *(a2 - 4) = v152;
      v8[5] = v151;
      *(a2 - 1) = v93;
      v137 = v8[5];
      v153 = v8[3];
      if (v137 <= v153)
      {
        return result;
      }

      v154 = *(v8 + 4);
      v155 = *(v8 + 8);
      *(v8 + 4) = v155;
      *(v8 + 8) = v154;
      v8[3] = v137;
      v8[5] = v153;
      v138 = v8[1];
      if (v137 <= v138)
      {
        return result;
      }

      v156 = *v8;
      *v8 = v155;
      *(v8 + 4) = v156;
LABEL_194:
      v8[1] = v137;
      v8[3] = v138;
      return result;
    }

    if (v9 == 5)
    {

      return sub_24BDB5370(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 2;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v100 = v99[3];
            v101 = v99[1];
            v99 = v95;
            if (v100 > v101)
            {
              v102 = *v95;
              v103 = v98;
              while (1)
              {
                v104 = v8 + v103;
                *(v104 + 4) = *(v8 + v103);
                *(v104 + 3) = *(v8 + v103 + 8);
                if (!v103)
                {
                  break;
                }

                v103 -= 16;
                if (v100 <= *(v104 - 1))
                {
                  v105 = v8 + v103 + 16;
                  goto LABEL_131;
                }
              }

              v105 = v8;
LABEL_131:
              *v105 = v102;
              *(v105 + 8) = v100;
            }

            v95 = v99 + 2;
            v98 += 16;
          }

          while (v99 + 2 != a2);
        }
      }

      else if (!v97)
      {
        v143 = v8 + 3;
        do
        {
          v144 = v7[3];
          v145 = v7[1];
          v7 = v95;
          if (v144 > v145)
          {
            v146 = *v95;
            v147 = v143;
            do
            {
              v148 = v147;
              *(v147 - 2) = *(v147 - 6);
              v149 = *(v147 - 2);
              v147 -= 2;
              *v148 = v149;
            }

            while (v144 > *(v148 - 4));
            *(v147 - 2) = v146;
            *v147 = v144;
          }

          v95 = v7 + 2;
          v143 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v106 = (v9 - 2) >> 1;
      v107 = v106;
      do
      {
        v108 = v107;
        if (v106 >= v107)
        {
          v109 = (2 * v107) | 1;
          v110 = &v8[2 * v109];
          if (2 * v108 + 2 < v9 && v110[1] > v110[3])
          {
            v110 += 2;
            v109 = 2 * v108 + 2;
          }

          v111 = &v8[2 * v108];
          v112 = v110[1];
          v113 = v111[1];
          if (v112 <= v113)
          {
            v114 = *v111;
            do
            {
              v115 = v111;
              v111 = v110;
              *v115 = *v110;
              v115[1] = v112;
              if (v106 < v109)
              {
                break;
              }

              v116 = 2 * v109;
              v109 = (2 * v109) | 1;
              v110 = &v8[2 * v109];
              v117 = v116 + 2;
              if (v117 < v9 && v110[1] > v110[3])
              {
                v110 += 2;
                v109 = v117;
              }

              v112 = v110[1];
            }

            while (v112 <= v113);
            *v111 = v114;
            v111[1] = v113;
          }
        }

        v107 = v108 - 1;
      }

      while (v108);
      while (2)
      {
        v118 = 0;
        v119 = *v8;
        v120 = v8[1];
        v121 = v8;
        do
        {
          v122 = &v121[2 * v118];
          v123 = v122 + 2;
          v124 = (2 * v118) | 1;
          v118 = 2 * v118 + 2;
          if (v118 >= v9)
          {
            v118 = v124;
          }

          else
          {
            v125 = v122[3];
            v126 = v122[5];
            v127 = v122 + 4;
            if (v125 <= v126)
            {
              v118 = v124;
            }

            else
            {
              v123 = v127;
            }
          }

          *v121 = *v123;
          v121[1] = v123[1];
          v121 = v123;
        }

        while (v118 <= ((v9 - 2) >> 1));
        if (v123 != a2 - 2)
        {
          *v123 = *(a2 - 4);
          v123[1] = *(a2 - 1);
          *(a2 - 4) = v119;
          *(a2 - 1) = v120;
          v128 = (v123 - v8 + 16) >> 4;
          v129 = v128 < 2;
          v130 = v128 - 2;
          if (!v129)
          {
            v131 = v130 >> 1;
            v132 = &v8[2 * v131];
            v133 = v132[1];
            v120 = v123[1];
            if (v133 > v120)
            {
              v134 = *v123;
              do
              {
                v135 = v123;
                v123 = v132;
                *v135 = *v132;
                v135[1] = v133;
                if (!v131)
                {
                  break;
                }

                v131 = (v131 - 1) >> 1;
                v132 = &v8[2 * v131];
                v133 = v132[1];
              }

              while (v133 > v120);
              *v123 = v134;
LABEL_164:
              v123[1] = v120;
            }
          }

          a2 -= 2;
          v129 = v9-- <= 2;
          if (v129)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v123 = v119;
      goto LABEL_164;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 > v12)
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v14;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[1] = v12;
        v10[1] = v13;
        v26 = *(a2 - 1);
        if (v26 > v13)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 > v34)
          {
            v35 = *(v8 + 4);
            *(v8 + 4) = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 4);
        if (v30 > v28)
        {
          *(v8 + 4) = *(a2 - 8);
          *(a2 - 8) = v31;
          v8[3] = v30;
          goto LABEL_39;
        }

        *(v8 + 4) = *v27;
        *v27 = v31;
        v8[3] = v28;
        *(v10 - 1) = v29;
        v37 = *(a2 - 3);
        if (v37 > v29)
        {
          *v27 = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v10 - 1) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = v10[3];
      v39 = v8[5];
      v40 = *(a2 - 5);
      if (v38 <= v39)
      {
        if (v40 > v38)
        {
          v42 = *(v10 + 4);
          *(v10 + 4) = *(a2 - 12);
          *(a2 - 12) = v42;
          v10[3] = v40;
          *(a2 - 5) = v38;
          v43 = v10[3];
          v44 = v8[5];
          if (v43 > v44)
          {
            v45 = *(v8 + 8);
            *(v8 + 8) = *(v10 + 4);
            *(v10 + 4) = v45;
            v8[5] = v43;
            v10[3] = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 8);
        if (v40 > v38)
        {
          *(v8 + 8) = *(a2 - 12);
          *(a2 - 12) = v41;
          v8[5] = v40;
          goto LABEL_48;
        }

        *(v8 + 8) = *(v10 + 4);
        *(v10 + 4) = v41;
        v8[5] = v38;
        v10[3] = v39;
        v46 = *(a2 - 5);
        if (v46 > v39)
        {
          *(v10 + 4) = *(a2 - 12);
          *(a2 - 12) = v41;
          v10[3] = v46;
LABEL_48:
          *(a2 - 5) = v39;
        }
      }

      v47 = v10[1];
      v48 = *(v10 - 1);
      v49 = v10[3];
      if (v47 <= v48)
      {
        v50 = *v10;
        if (v49 <= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = *(v10 + 4);
          *v10 = v51;
          *(v10 + 4) = v50;
          v10[1] = v49;
          v10[3] = v47;
          if (v49 <= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 1) = v49;
            v10[1] = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 > v47)
        {
          *v27 = *(v10 + 4);
          *(v10 + 4) = v50;
          *(v10 - 1) = v49;
          v10[3] = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 1) = v47;
        v10[1] = v48;
        if (v49 > v48)
        {
          v70 = *(v10 + 4);
          *v10 = v70;
          *(v10 + 4) = v50;
          v10[1] = v49;
          v10[3] = v48;
          v48 = v49;
          v50 = v70;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 1);
      v8[1] = v48;
      *(v10 + 1) = v53;
      goto LABEL_57;
    }

    v15 = v8[1];
    v16 = v10[1];
    if (v15 <= v16)
    {
      if (v11 > v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 4);
        *(a2 - 4) = v22;
        v8[1] = v11;
        *(a2 - 1) = v15;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 > v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 > v15)
    {
      *v10 = *(a2 - 4);
      *(a2 - 4) = v17;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[1] = v15;
    v8[1] = v16;
    v36 = *(a2 - 1);
    if (v36 > v16)
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v17;
      v8[1] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v54 = *v8;
      v55 = v8[1];
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v8[v56 + 3];
        v56 += 2;
      }

      while (v57 > v55);
      v58 = &v8[v56];
      v59 = a2;
      if (v56 == 2)
      {
        v62 = a2;
        while (v58 < v62)
        {
          v60 = v62 - 2;
          v63 = *(v62 - 1);
          v62 -= 2;
          if (v63 > v55)
          {
            goto LABEL_70;
          }
        }

        v60 = v62;
      }

      else
      {
        do
        {
          v60 = v59 - 2;
          v61 = *(v59 - 1);
          v59 -= 2;
        }

        while (v61 <= v55);
      }

LABEL_70:
      v8 = v58;
      if (v58 < v60)
      {
        v64 = v60;
        do
        {
          v65 = *v8;
          *v8 = *v64;
          *v64 = v65;
          v66 = *(v8 + 1);
          v8[1] = *(v64 + 8);
          *(v64 + 8) = v66;
          do
          {
            v67 = v8[3];
            v8 += 2;
          }

          while (v67 > v55);
          do
          {
            v68 = *(v64 - 8);
            v64 -= 16;
          }

          while (v68 <= v55);
        }

        while (v8 < v64);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 4);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 4) = v54;
      *(v8 - 1) = v55;
      if (v58 < v60)
      {
        goto LABEL_81;
      }

      v69 = sub_24BDB554C(v7, v8 - 2);
      result = sub_24BDB554C(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v69)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v69)
      {
LABEL_81:
        result = sub_24BDB47B8(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = v8[1];
      v54 = *v8;
      if (*(v8 - 1) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(a2 - 1))
      {
        v73 = v8 + 2;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = v73[1];
          v73 += 2;
        }

        while (v55 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 2;
          v72 = v71[3];
          v71 += 2;
        }

        while (v55 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 2;
          v77 = *(v76 - 1);
          v76 -= 2;
        }

        while (v55 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 1);
        v8[1] = v75[1];
        *(v75 + 1) = v79;
        do
        {
          v80 = v8[3];
          v8 += 2;
        }

        while (v55 <= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 2;
        }

        while (v55 > v81);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 4);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 4) = v54;
      *(v8 - 1) = v55;
    }
  }

  v85 = v8[3];
  v86 = v8[1];
  v87 = *(a2 - 1);
  if (v85 <= v86)
  {
    if (v87 <= v85)
    {
      return result;
    }

    v136 = *(v8 + 4);
    *(v8 + 4) = *(a2 - 4);
    *(a2 - 4) = v136;
    v8[3] = v87;
    *(a2 - 1) = v85;
    v137 = v8[3];
    v138 = v8[1];
    if (v137 <= v138)
    {
      return result;
    }

    v139 = *v8;
    *v8 = *(v8 + 4);
    *(v8 + 4) = v139;
    goto LABEL_194;
  }

  v88 = *v8;
  if (v87 <= v85)
  {
    *v8 = *(v8 + 4);
    *(v8 + 4) = v88;
    v8[1] = v85;
    v8[3] = v86;
    v150 = *(a2 - 1);
    if (v150 <= v86)
    {
      return result;
    }

    *(v8 + 4) = *(a2 - 4);
    *(a2 - 4) = v88;
    v8[3] = v150;
  }

  else
  {
    *v8 = *(a2 - 4);
    *(a2 - 4) = v88;
    v8[1] = v87;
  }

  *(a2 - 1) = v86;
  return result;
}

double *sub_24BDB5370(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BDB554C(double *a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 > v7)
      {
        v9 = *a1;
        if (v8 <= v6)
        {
          *a1 = *(a1 + 4);
          *(a1 + 4) = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 <= v7)
          {
            return 1;
          }

          *(a1 + 4) = *(a2 - 4);
          *(a2 - 4) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 4);
          *(a2 - 4) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 <= v6)
      {
        return 1;
      }

      v22 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 4);
      *(a2 - 4) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 <= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = *(a1 + 4);
      *(a1 + 4) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_24BDB5370(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 <= v19)
    {
      if (v20 <= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 4);
      v30 = *(a1 + 8);
      *(a1 + 4) = v30;
      *(a1 + 8) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 <= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      *(a1 + 4) = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 <= v17)
      {
        *a1 = *(a1 + 4);
        *(a1 + 4) = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 <= v19)
        {
          goto LABEL_50;
        }

        *(a1 + 4) = *(a1 + 8);
        *(a1 + 8) = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 <= v20)
    {
      return 1;
    }

    v43 = *(a1 + 8);
    *(a1 + 8) = *(a2 - 4);
    *(a2 - 4) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 <= v44)
    {
      return 1;
    }

    v45 = *(a1 + 4);
    v46 = *(a1 + 8);
    *(a1 + 4) = v46;
    *(a1 + 8) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 <= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    *(a1 + 4) = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 > v12)
  {
    v15 = *a1;
    if (v14 <= v10)
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 <= v12)
      {
        goto LABEL_34;
      }

      *(a1 + 4) = *(a1 + 8);
      *(a1 + 8) = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v15;
    }

    goto LABEL_33;
  }

  if (v14 > v10)
  {
    v26 = *(a1 + 4);
    v27 = *(a1 + 8);
    *(a1 + 4) = v27;
    *(a1 + 8) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 > v12)
    {
      v28 = *a1;
      *a1 = v27;
      *(a1 + 4) = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 > v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 12) = *(a1 + v39 + 32);
        *(v40 + 7) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 <= *(v40 + 3))
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

void sub_24BDB5924(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BDB5978(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = MEMORY[0x24C254890](result, 0x1000C8077774924);
    *(a1 + 40) = 0;
  }

  return result;
}

void sub_24BDB59BC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (a2 - 12);
  i = a1;
  while (1)
  {
    a1 = i;
    v10 = a2 - i;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 2);
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return;
    }

    if (v11 == 2)
    {
      v66 = *(a2 - 8);
      v67 = *(i + 4);
      if (v66 > (v67 + 0.000001) || v66 > (v67 + -0.000001) && *(a2 - 4) < *(i + 8))
      {
        v147 = *(i + 8);
        v141 = *i;
        v68 = *v8;
        *(i + 8) = *(a2 - 4);
        *i = v68;
        *(a2 - 4) = v147;
        *v8 = v141;
      }

      return;
    }

LABEL_9:
    if (v10 <= 287)
    {
      v69 = (i + 12);
      v71 = i == a2 || v69 == a2;
      if (a4)
      {
        if (v71)
        {
          return;
        }

        v72 = 0;
        v73 = i;
        while (2)
        {
          v74 = v73;
          v73 = v69;
          v75 = v74[4];
          v76 = v74[1];
          if (v75 > (v76 + 0.000001))
          {
            v77 = v74[5];
            goto LABEL_127;
          }

          if (v75 > (v76 + -0.000001))
          {
            v77 = v74[5];
            if (v77 < v74[2])
            {
LABEL_127:
              v79 = *(v74 + 2);
              v78 = *(v74 + 3);
              *v73 = *v74;
              v73[2] = v79;
              v80 = i;
              if (v74 != i)
              {
                v81 = v72;
                while (1)
                {
                  v82 = i + v81;
                  v83 = *(i + v81 - 8);
                  if (v75 <= (v83 + 0.000001))
                  {
                    if (v75 <= (v83 + -0.000001))
                    {
                      v80 = i + v81;
                      goto LABEL_139;
                    }

                    if (v77 >= *(i + v81 - 4))
                    {
                      break;
                    }
                  }

                  v74 -= 3;
                  *v82 = *(v82 - 12);
                  *(v82 + 8) = *(v82 - 4);
                  v81 -= 12;
                  if (!v81)
                  {
                    v80 = i;
                    goto LABEL_139;
                  }
                }

                v80 = v74;
              }

LABEL_139:
              *v80 = v78;
              *(v80 + 4) = v75;
              *(v80 + 8) = v77;
            }
          }

          v69 = v73 + 3;
          v72 += 12;
          if (v73 + 3 == a2)
          {
            return;
          }

          continue;
        }
      }

      if (v71)
      {
        return;
      }

      while (2)
      {
        v130 = a1;
        a1 = v69;
        v131 = *(v130 + 16);
        v132 = *(v130 + 4);
        if (v131 <= (v132 + 0.000001))
        {
          if (v131 > (v132 + -0.000001))
          {
            v133 = *(v130 + 20);
            if (v133 < *(v130 + 8))
            {
              goto LABEL_204;
            }
          }
        }

        else
        {
          v133 = *(v130 + 20);
LABEL_204:
          v134 = *v69;
          do
          {
            do
            {
              v135 = v130;
              *(v130 + 12) = *v130;
              *(v130 + 20) = *(v130 + 8);
              v130 -= 12;
              v136 = *(v135 - 8);
            }

            while (v131 > (v136 + 0.000001));
          }

          while (v131 > (v136 + -0.000001) && v133 < *(v135 - 4));
          *v135 = v134;
          *(v135 + 4) = v131;
          *(v135 + 8) = v133;
        }

        v69 += 3;
        if (a1 + 12 == a2)
        {
          return;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v84 = (v11 - 2) >> 1;
      v85 = v84;
      while (2)
      {
        v86 = v85;
        if (v84 >= v85)
        {
          v87 = (2 * v85) | 1;
          v88 = i + 12 * v87;
          if (2 * v86 + 2 < v11)
          {
            v89 = *(v88 + 4);
            v90 = *(v88 + 16);
            if (v89 > (v90 + 0.000001) || v89 > (v90 + -0.000001) && *(v88 + 8) < *(v88 + 20))
            {
              v88 += 12;
              v87 = 2 * v86 + 2;
            }
          }

          v91 = i + 12 * v86;
          v92 = *(v88 + 4);
          v93 = *(v91 + 4);
          if (v92 <= (v93 + 0.000001))
          {
            if (v92 <= (v93 + -0.000001))
            {
              v94 = *(v91 + 8);
            }

            else
            {
              v94 = *(v91 + 8);
              if (*(v88 + 8) < v94)
              {
                goto LABEL_158;
              }
            }

            v95 = *v91;
            v96 = *v88;
            *(v91 + 8) = *(v88 + 8);
            *v91 = v96;
            if (v84 >= v87)
            {
              while (1)
              {
                v98 = 2 * v87;
                v87 = (2 * v87) | 1;
                v97 = i + 12 * v87;
                v99 = v98 + 2;
                if (v99 < v11)
                {
                  v100 = *(v97 + 4);
                  v101 = *(v97 + 16);
                  if (v100 > (v101 + 0.000001) || v100 > (v101 + -0.000001) && *(v97 + 8) < *(v97 + 20))
                  {
                    v97 += 12;
                    v87 = v99;
                  }
                }

                v102 = *(v97 + 4);
                if (v102 > (v93 + 0.000001) || v102 > (v93 + -0.000001) && *(v97 + 8) < v94)
                {
                  break;
                }

                v103 = *v97;
                *(v88 + 8) = *(v97 + 8);
                *v88 = v103;
                v88 = v97;
                if (v84 < v87)
                {
                  goto LABEL_157;
                }
              }
            }

            v97 = v88;
LABEL_157:
            *v97 = v95;
            *(v97 + 4) = v93;
            *(v97 + 8) = v94;
          }
        }

LABEL_158:
        v85 = v86 - 1;
        if (v86)
        {
          continue;
        }

        break;
      }

      v104 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
      while (2)
      {
        v105 = 0;
        v148 = *(i + 8);
        v142 = *i;
        v106 = i;
        do
        {
          v107 = v106;
          v108 = &v106[3 * v105];
          v106 = v108 + 3;
          v109 = 2 * v105;
          v105 = (2 * v105) | 1;
          v110 = v109 + 2;
          if (v110 < v104)
          {
            v111 = v108[4];
            v112 = v108[7];
            if (v111 > (v112 + 0.000001) || v111 > (v112 + -0.000001) && v108[5] < v108[8])
            {
              v106 = v108 + 6;
              v105 = v110;
            }
          }

          v113 = *v106;
          v107[2] = v106[2];
          *v107 = v113;
        }

        while (v105 <= ((v104 - 2) >> 1));
        a2 -= 12;
        if (v106 == a2)
        {
          *(v106 + 2) = v148;
          *v106 = v142;
        }

        else
        {
          v114 = *a2;
          v106[2] = *(a2 + 8);
          *v106 = v114;
          *(a2 + 8) = v148;
          *a2 = v142;
          v115 = v106 - i + 12;
          if (v115 >= 13)
          {
            v116 = -2 - 0x5555555555555555 * (v115 >> 2);
            v117 = v116 >> 1;
            v118 = i + 12 * (v116 >> 1);
            v119 = *(v118 + 4);
            v120 = v106[1];
            v121 = v120 + -0.000001;
            if (v119 > (v120 + 0.000001))
            {
              v122 = v106[2];
              goto LABEL_181;
            }

            if (v119 > v121)
            {
              v122 = v106[2];
              if (*(v118 + 8) < v122)
              {
LABEL_181:
                v123 = *v106;
                v124 = *v118;
                v106[2] = *(v118 + 8);
                *v106 = v124;
                if (v116 >= 2)
                {
                  while (1)
                  {
                    v126 = v117 - 1;
                    v117 = (v117 - 1) >> 1;
                    v125 = i + 12 * v117;
                    v127 = *(v125 + 4);
                    if (v127 <= (v120 + 0.000001) && (v127 <= v121 || *(v125 + 8) >= v122))
                    {
                      break;
                    }

                    v128 = *v125;
                    *(v118 + 8) = *(v125 + 8);
                    *v118 = v128;
                    v118 = i + 12 * v117;
                    if (v126 <= 1)
                    {
                      goto LABEL_187;
                    }
                  }
                }

                v125 = v118;
LABEL_187:
                *v125 = v123;
                *(v125 + 4) = v120;
                *(v125 + 8) = v122;
              }
            }
          }
        }

        if (v104-- <= 2)
        {
          return;
        }

        continue;
      }
    }

    v12 = v11 >> 1;
    v13 = i + 12 * (v11 >> 1);
    if (v10 < 0x601)
    {
      sub_24BDB6684((a1 + 12 * v12), a1, (a2 - 12));
    }

    else
    {
      sub_24BDB6684(a1, (a1 + 12 * v12), (a2 - 12));
      v14 = 3 * v12;
      v15 = (a1 + 12 * v12 - 12);
      sub_24BDB6684((a1 + 12), v15, (a2 - 24));
      v16 = (a1 + 12 + 4 * v14);
      sub_24BDB6684((a1 + 24), v16, (a2 - 36));
      sub_24BDB6684(v15, v13, v16);
      v143 = *(a1 + 8);
      v137 = *a1;
      v17 = *(v13 + 8);
      *a1 = *v13;
      *(a1 + 8) = v17;
      *(v13 + 8) = v143;
      *v13 = v137;
    }

    --a3;
    if (a4)
    {
      v18 = *(a1 + 4);
      v19 = v18 + 0.000001;
LABEL_19:
      v22 = 0;
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = v18 + -0.000001;
      while (1)
      {
        v26 = *(a1 + v22 + 16);
        if (v26 <= v19 && (v26 <= v25 || *(a1 + v22 + 20) >= v24))
        {
          break;
        }

        v22 += 12;
      }

      v27 = a1 + v22 + 12;
      if (v22)
      {
        v28 = *(a2 - 8);
        v29 = (a2 - 4);
        v30 = (a2 - 12);
        if (v28 <= v19)
        {
          do
          {
            if (v28 > v25 && *v29 < v24)
            {
              break;
            }

            v28 = *(v29 - 4);
            v29 -= 3;
          }

          while (v28 <= v19);
LABEL_29:
          v30 = v29 - 2;
        }
      }

      else
      {
        v30 = a2;
        if (v27 < a2)
        {
          v31 = *(a2 - 8);
          v30 = (a2 - 12);
          if (v31 <= v19)
          {
            v29 = (a2 - 4);
            v30 = (a2 - 12);
            while (1)
            {
              v32 = v29 - 2;
              if (v31 <= v25)
              {
                if (v27 >= v32)
                {
                  v30 = v29 - 2;
                  break;
                }
              }

              else if (*v29 < v24 || v27 >= v32)
              {
                break;
              }

              v30 -= 3;
              v31 = *(v29 - 4);
              v29 -= 3;
              if (v31 > v19)
              {
                goto LABEL_29;
              }
            }
          }
        }
      }

      i = v27;
      if (v27 < v30)
      {
        v34 = v30;
        do
        {
          v144 = *(i + 8);
          v138 = *i;
          v35 = *v34;
          *(i + 8) = v34[2];
          *i = v35;
          *(v34 + 2) = v144;
          *v34 = v138;
          do
          {
            do
            {
              i += 12;
              v36 = *(i + 4);
            }

            while (v36 > v19);
          }

          while (v36 > v25 && *(i + 8) < v24);
          v37 = *(v34 - 2);
          if (v37 <= v19)
          {
            v38 = v34 - 1;
            do
            {
              if (v37 > v25 && *v38 < v24)
              {
                break;
              }

              v37 = *(v38 - 4);
              v38 -= 3;
            }

            while (v37 <= v19);
            v34 = v38 - 2;
          }

          else
          {
            v34 -= 3;
          }
        }

        while (i < v34);
      }

      if (i - 12 != a1)
      {
        v39 = *(i - 12);
        *(a1 + 8) = *(i - 4);
        *a1 = v39;
      }

      *(i - 12) = v23;
      *(i - 8) = v18;
      *(i - 4) = v24;
      if (v27 < v30)
      {
        goto LABEL_63;
      }

      v40 = sub_24BDB6AFC(a1, i - 12);
      if (sub_24BDB6AFC(i, a2))
      {
        a2 = i - 12;
        if (v40)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v40)
      {
LABEL_63:
        sub_24BDB59BC(a1, i - 12, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v20 = *(a1 - 8);
      v18 = *(a1 + 4);
      v19 = v18 + 0.000001;
      if (v20 > (v18 + 0.000001))
      {
        goto LABEL_19;
      }

      if (v20 <= (v18 + -0.000001))
      {
        v21 = *(a1 + 8);
      }

      else
      {
        v21 = *(a1 + 8);
        if (*(a1 - 4) < v21)
        {
          goto LABEL_19;
        }
      }

      v41 = *(a2 - 8);
      if (v18 > (v41 + 0.000001) || v18 > (v41 + -0.000001) && v21 < *(a2 - 4))
      {
        v42 = *(a1 + 16);
        if (v18 <= (v42 + 0.000001))
        {
          v44 = (a1 + 28);
          do
          {
            if (v18 > (v42 + -0.000001) && v21 < *(v44 - 2))
            {
              break;
            }

            v45 = *v44;
            v44 += 3;
            v42 = v45;
          }

          while (v18 <= (v45 + 0.000001));
          i = (v44 - 4);
        }

        else
        {
          i = a1 + 12;
        }
      }

      else
      {
        for (i = a1 + 12; i < a2; i += 12)
        {
          v43 = *(i + 4);
          if (v18 > (v43 + 0.000001) || v18 > (v43 + -0.000001) && v21 < *(i + 8))
          {
            break;
          }
        }
      }

      v46 = *a1;
      v47 = a2;
      if (i < a2)
      {
        for (j = (a2 - 4); v18 > (v41 + 0.000001) || v18 > (v41 + -0.000001) && v21 < *j; j -= 3)
        {
          v41 = *(j - 4);
        }

        v47 = j - 2;
      }

      while (i < v47)
      {
        v145 = *(i + 8);
        v139 = *i;
        v49 = *v47;
        *(i + 8) = v47[2];
        *i = v49;
        *(v47 + 2) = v145;
        *v47 = v139;
        v50 = *(i + 16);
        if (v18 <= (v50 + 0.000001))
        {
          v51 = (i + 28);
          do
          {
            if (v18 > (v50 + -0.000001) && v21 < *(v51 - 2))
            {
              break;
            }

            v52 = *v51;
            v51 += 3;
            v50 = v52;
          }

          while (v18 <= (v52 + 0.000001));
          i = (v51 - 4);
        }

        else
        {
          i += 12;
        }

        do
        {
          do
          {
            v47 -= 3;
            v53 = v47[1];
          }

          while (v18 > (v53 + 0.000001));
        }

        while (v18 > (v53 + -0.000001) && v21 < v47[2]);
      }

      if (i - 12 != a1)
      {
        v54 = *(i - 12);
        *(a1 + 8) = *(i - 4);
        *a1 = v54;
      }

      a4 = 0;
      *(i - 12) = v46;
      *(i - 8) = v18;
      *(i - 4) = v21;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      sub_24BDB6684(i, (i + 12), (i + 24));
      v55 = *(a2 - 8);
      v56 = *(i + 28);
      if (v55 > (v56 + 0.000001) || v55 > (v56 + -0.000001) && *(a2 - 4) < *(i + 32))
      {
        v57 = *(i + 24);
        v58 = *(i + 32);
        v59 = *(a2 - 4);
        *(i + 24) = *v8;
        *(i + 32) = v59;
        *(a2 - 4) = v58;
        *v8 = v57;
        v60 = *(i + 28);
        v61 = *(i + 16);
        if (v60 > (v61 + 0.000001) || v60 > (v61 + -0.000001) && *(i + 32) < *(i + 20))
        {
          v62 = *(i + 20);
          v63 = *(i + 12);
          *(i + 12) = *(i + 24);
          *(i + 20) = *(i + 32);
          *(i + 24) = v63;
          *(i + 32) = v62;
          v64 = *(i + 16);
          v65 = *(i + 4);
          if (v64 > (v65 + 0.000001) || v64 > (v65 + -0.000001) && *(i + 20) < *(i + 8))
          {
            v146 = *(i + 8);
            v140 = *i;
            *i = *(i + 12);
            *(i + 8) = *(i + 20);
            *(i + 12) = v140;
            *(i + 20) = v146;
          }
        }
      }

      return;
    }

    if (v11 == 5)
    {

      sub_24BDB683C(i, (i + 12), (i + 24), (i + 36), (a2 - 12));
      return;
    }

    goto LABEL_9;
  }

  sub_24BDB6684(i, (i + 12), (a2 - 12));
}

float sub_24BDB6684(float *a1, float *a2, float *a3)
{
  v3 = a2[1];
  v4 = a1[1];
  result = 0.000001;
  if (v3 > (v4 + 0.000001) || v3 > (v4 + -0.000001) && a2[2] < a1[2])
  {
    v6 = a3[1];
    if (v6 > (v3 + 0.000001) || v6 > (v3 + -0.000001) && a3[2] < a2[2])
    {
      v7 = *(a1 + 2);
      v8 = *a1;
      v9 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v9;
    }

    else
    {
      v19 = *(a1 + 2);
      v20 = *a1;
      v21 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v21;
      *a2 = v20;
      *(a2 + 2) = v19;
      v22 = a3[1];
      v23 = a2[1];
      result = v23 + 0.000001;
      if (v22 <= (v23 + 0.000001))
      {
        result = v23 + -0.000001;
        if (v22 <= (v23 + -0.000001))
        {
          return result;
        }

        result = a3[2];
        if (result >= a2[2])
        {
          return result;
        }
      }

      v7 = *(a2 + 2);
      v8 = *a2;
      v24 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v24;
    }

    *a3 = v8;
    *(a3 + 2) = v7;
    return result;
  }

  v10 = a3[1];
  if (v10 > (v3 + 0.000001) || v10 > (v3 + -0.000001) && a3[2] < a2[2])
  {
    v11 = *(a2 + 2);
    v12 = *a2;
    v13 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v13;
    *a3 = v12;
    *(a3 + 2) = v11;
    v14 = a2[1];
    v15 = a1[1];
    result = v15 + 0.000001;
    if (v14 > (v15 + 0.000001) || (result = v15 + -0.000001, v14 > (v15 + -0.000001)) && (result = a2[2], result < a1[2]))
    {
      v16 = *(a1 + 2);
      v17 = *a1;
      v18 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v18;
      *a2 = v17;
      *(a2 + 2) = v16;
    }
  }

  return result;
}

float sub_24BDB683C(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  sub_24BDB6684(a1, a2, a3);
  v10 = a4[1];
  v11 = a3[1];
  result = 0.000001;
  if (v10 > (v11 + 0.000001) || v10 > (v11 + -0.000001) && a4[2] < a3[2])
  {
    v13 = *(a3 + 2);
    v14 = *a3;
    v15 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v15;
    *a4 = v14;
    *(a4 + 2) = v13;
    v16 = a3[1];
    v17 = a2[1];
    if (v16 > (v17 + 0.000001) || v16 > (v17 + -0.000001) && a3[2] < a2[2])
    {
      v18 = *(a2 + 2);
      v19 = *a2;
      v20 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v20;
      *a3 = v19;
      *(a3 + 2) = v18;
      v21 = a2[1];
      v22 = a1[1];
      if (v21 > (v22 + 0.000001) || v21 > (v22 + -0.000001) && a2[2] < a1[2])
      {
        v23 = *(a1 + 2);
        v24 = *a1;
        v25 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v25;
        *a2 = v24;
        *(a2 + 2) = v23;
      }
    }
  }

  v26 = a5[1];
  v27 = a4[1];
  if (v26 > (v27 + 0.000001) || v26 > (v27 + -0.000001) && a5[2] < a4[2])
  {
    v28 = *(a4 + 2);
    v29 = *a4;
    v30 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v30;
    *a5 = v29;
    *(a5 + 2) = v28;
    v31 = a4[1];
    v32 = a3[1];
    if (v31 > (v32 + 0.000001) || v31 > (v32 + -0.000001) && a4[2] < a3[2])
    {
      v33 = *(a3 + 2);
      v34 = *a3;
      v35 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v35;
      *a4 = v34;
      *(a4 + 2) = v33;
      v36 = a3[1];
      v37 = a2[1];
      if (v36 > (v37 + 0.000001) || v36 > (v37 + -0.000001) && a3[2] < a2[2])
      {
        v38 = *(a2 + 2);
        v39 = *a2;
        v40 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v40;
        *a3 = v39;
        *(a3 + 2) = v38;
        v41 = a2[1];
        v42 = a1[1];
        result = v42 + 0.000001;
        if (v41 > (v42 + 0.000001) || (result = v42 + -0.000001, v41 > (v42 + -0.000001)) && (result = a2[2], result < a1[2]))
        {
          v43 = *(a1 + 2);
          v44 = *a1;
          v45 = *(a2 + 2);
          *a1 = *a2;
          *(a1 + 2) = v45;
          *a2 = v44;
          *(a2 + 2) = v43;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BDB6AFC(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_24BDB6684(a1, (a1 + 12), (a2 - 12));
        return 1;
      case 4:
        sub_24BDB6684(a1, (a1 + 12), (a1 + 24));
        v23 = *(a2 - 8);
        v24 = *(a1 + 28);
        if (v23 > (v24 + 0.000001) || v23 > (v24 + -0.000001) && *(a2 - 4) < *(a1 + 32))
        {
          v25 = a2 - 12;
          v26 = *(a1 + 32);
          v27 = *(a1 + 24);
          v28 = *(a2 - 4);
          *(a1 + 24) = *(a2 - 12);
          *(a1 + 32) = v28;
          *v25 = v27;
          *(v25 + 8) = v26;
          v29 = *(a1 + 28);
          v30 = *(a1 + 16);
          if (v29 > (v30 + 0.000001) || v29 > (v30 + -0.000001) && *(a1 + 32) < *(a1 + 20))
          {
            v31 = *(a1 + 20);
            v32 = *(a1 + 12);
            *(a1 + 12) = *(a1 + 24);
            *(a1 + 20) = *(a1 + 32);
            *(a1 + 24) = v32;
            *(a1 + 32) = v31;
            v33 = *(a1 + 16);
            v34 = *(a1 + 4);
            if (v33 > (v34 + 0.000001) || v33 > (v34 + -0.000001) && *(a1 + 20) < *(a1 + 8))
            {
              v35 = *(a1 + 8);
              v36 = *a1;
              *a1 = *(a1 + 12);
              *(a1 + 8) = *(a1 + 20);
              *(a1 + 12) = v36;
              *(a1 + 20) = v35;
            }
          }
        }

        return 1;
      case 5:
        sub_24BDB683C(a1, (a1 + 12), (a1 + 24), (a1 + 36), (a2 - 12));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 8);
      v6 = *(a1 + 4);
      if (v5 > (v6 + 0.000001) || v5 > (v6 + -0.000001) && *(a2 - 4) < *(a1 + 8))
      {
        v7 = a2 - 12;
        v8 = *(a1 + 8);
        v9 = *a1;
        v10 = *(a2 - 4);
        *a1 = *(a2 - 12);
        *(a1 + 8) = v10;
        *v7 = v9;
        *(v7 + 8) = v8;
      }

      return 1;
    }
  }

  v11 = a1 + 24;
  sub_24BDB6684(a1, (a1 + 12), (a1 + 24));
  v12 = a1 + 36;
  if (a1 + 36 != a2)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(v12 + 4);
      v16 = *(v11 + 4);
      if (v15 <= (v16 + 0.000001))
      {
        if (v15 <= (v16 + -0.000001))
        {
          goto LABEL_26;
        }

        v17 = *(v12 + 8);
        if (v17 >= *(v11 + 8))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = *(v12 + 8);
      }

      v18 = *v12;
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 8);
      v19 = v13;
      while (1)
      {
        v20 = a1 + v19;
        v21 = *(a1 + v19 + 16);
        if (v15 <= (v21 + 0.000001) && (v15 <= (v21 + -0.000001) || v17 >= *(a1 + v19 + 20)))
        {
          break;
        }

        *(v20 + 24) = *(v20 + 12);
        *(v20 + 32) = *(v20 + 20);
        v19 -= 12;
        if (v19 == -24)
        {
          v22 = a1;
          goto LABEL_25;
        }
      }

      v22 = a1 + v19 + 24;
LABEL_25:
      *v22 = v18;
      *(v22 + 4) = v15;
      *(v22 + 8) = v17;
      if (++v14 == 8)
      {
        return v12 + 12 == a2;
      }

LABEL_26:
      v11 = v12;
      v13 += 12;
      v12 += 12;
    }

    while (v12 != a2);
  }

  return 1;
}

uint64_t sub_24BDB6E64(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BDB6EBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDB6ED8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BDB6F80(result, a2);
  }

  return result;
}

void sub_24BDB6F80(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_24BDB6FBC(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BDB6FBC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BDB7004(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_24BDB70C4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BDB716C(result, a2);
  }

  return result;
}

void sub_24BDB716C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_24BDB71A8(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BDB71A8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

__n128 sub_24BDB729C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96390;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v7;
  *(a2 + 88) = v6;
  *(a2 + 72) = result;
  return result;
}

intptr_t sub_24BDB7304(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *(**(a1 + 8) + 4 * *a2);
  v12 = 0;
  v10 = **(a1 + 80);
  result = sub_24BDB3534((*v4 + (v3 << 6)), *(a1 + 24), *(a1 + 32), v5, **(a1 + 40) + (v3 << 6), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), &v12);
  if (result)
  {
    v11 = 0.0;
    v7 = v12;
    sub_24BDF1484(**(a1 + 16) + (v3 << 6), *(a1 + 32), v12, &v11);
    dispatch_semaphore_wait(**(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
    **(a1 + 112) = 1;
    v8 = *(a1 + 88);
    if (v11 > *v8)
    {
      *v8 = v11;
      v9 = *(a1 + 104);
      **(a1 + 96) = v7;
      *v9 = v3;
    }

    return dispatch_semaphore_signal(**(a1 + 120));
  }

  return result;
}

uint64_t sub_24BDB73F4(uint64_t a1)
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

void *sub_24BDB7474(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BDB74D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BDB7588(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F963D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void sub_24BDB75E0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  operator new();
}

void sub_24BDB8014(unsigned int *a1)
{
  v2 = *a1;
  v1 = a1[1];
  operator new[]();
}

void sub_24BDB82D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

uint64_t sub_24BDB8334(uint64_t a1)
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

void sub_24BDB83B4(uint64_t a1, float *a2, float *a3, float *a4)
{
  sub_24BC836D4(__p, "f:area");
  v20 = 0;
  v8 = sub_24BDBA62C((a1 + 56), &v20, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 == -1 || (v10 = *(a1 + 152), v9 = *(a1 + 160), v9 == v10))
  {
    v17 = *a3;
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = (*(a1 + 56) + 16 * v8);
      v15 = *v13;
      v14 = v13[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v14);
        v10 = *(a1 + 152);
        v9 = *(a1 + 160);
      }

      v12 = v12 + *(*(v15 + 40) + 4 * v11++);
    }

    while (v11 < (v9 - v10) >> 2);
    v16 = *a2 * 100.0 * v12 / ((v9 - v10) >> 2);
    *a4 = v16;
    v17 = *a3 * 0.333 + v16 * 0.667;
  }

  *a4 = v17;
}

void sub_24BDB850C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDB8528(uint64_t a1, uint64_t *a2, void *a3)
{
  v34[44] = *MEMORY[0x277D85DE8];
  sub_24BDFABF0(&v33, *(a1 + 48), a1 + 64, a1 + 80, *(a1 + 120));
  if (*(a1 + 40))
  {
    sub_24BC9B100(v34, a1 + 16);
  }

  if (sub_24BDFABF4(&v33))
  {
    v6 = *(a1 + 40);
    if (!v6 || ((*(*v6 + 48))(v6) & 1) == 0)
    {
      v7 = 0;
      v20 = 257;
      v21 = vdupq_n_s64(0xAuLL);
      v22 = 20;
      v23 = xmmword_24BFED210;
      v24 = -2.84809454e-306;
      v25 = -1;
      memset(v26, 0, sizeof(v26));
      v27 = 0;
      memset(v28, 0, sizeof(v28));
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = 0;
      v32 = 0;
      v17 = 0;
      v19 = *(a1 + 120);
      if ((*(a1 + 88) & 1) == 0)
      {
        v7 = sub_24BE01604(&v33, &v19, &v18 + 1, &v18, &v32, &v17, 1);
      }

      v8 = *(a1 + 40);
      if (!v8 || ((*(*v8 + 48))(v8) & 1) == 0)
      {
        if (v7)
        {
          v9 = *(&v30 + 1);
          if (v31 != *(&v30 + 1))
          {
            v10 = 0;
            v11 = (v31 - *(&v30 + 1)) >> 2;
            if (v11 <= 1)
            {
              v11 = 1;
            }

            do
            {
              v12 = *v9;
              if (*v9 < 3.4028e38)
              {
                if (*a1 < v12)
                {
                  *a1 = v12;
                  v12 = *v9;
                }

                *(a1 + 4) = v12 + *(a1 + 4);
                ++v10;
              }

              ++v9;
              --v11;
            }

            while (v11);
            if (v10)
            {
              *(a1 + 4) = *(a1 + 4) / v10;
            }
          }

          sub_24BDEECE4(*(a1 + 48));
        }

        else
        {
          sub_24BDFC150(&v33, a2, a3, (a1 + 84), *(a1 + 120));
          v13 = *(a1 + 40);
          if (v13)
          {
            (*(*v13 + 48))(v13);
          }
        }
      }

      if (*(&v30 + 1))
      {
        *&v31 = *(&v30 + 1);
        operator delete(*(&v30 + 1));
      }

      if (v29)
      {
        *(&v29 + 1) = v29;
        operator delete(v29);
      }

      v32 = v28 + 1;
      sub_24BCB7FC8(&v32);
      sub_24BDB9E30(v26, v14);
    }
  }

  result = sub_24BDBA0F0(&v33);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BDB87E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_24BDB8814(&a11);
  sub_24BDBA0F0(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDB8814(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  v6 = (a1 + 112);
  sub_24BCB7FC8(&v6);
  sub_24BDB9E30(a1 + 72, v4);
  return a1;
}

void sub_24BDB8878(uint64_t a1, uint64_t a2, char a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  memset(__p, 0, sizeof(__p));
  v5 = *(a2 + 8);
  v12[0] = *a2;
  v12[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_24BDB8A14(a1, v12, a3, &v14, __p);
  if (v5)
  {
    sub_24BC9EC78(v5);
  }

  v7 = *(a1 + 40);
  if (!v7 || ((*(*v7 + 48))(v7) & 1) == 0)
  {
    if (v6)
    {
      sub_24BCB820C((a1 + 152), a2);
    }

    else
    {
      v8 = v14;
      if (v15 != v14)
      {
        v9 = 0;
        do
        {
          v10 = *(v8 + 16 * v9);
          v11 = v10;
          if (*(&v10 + 1))
          {
            atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          sub_24BDB8878(a1, &v11, (*(__p[0] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1);
          if (*(&v11 + 1))
          {
            sub_24BC9EC78(*(&v11 + 1));
          }

          ++v9;
          v8 = v14;
        }

        while (v9 < (v15 - v14) >> 4);
      }
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  __p[0] = &v14;
  sub_24BCB7FC8(__p);
}

void sub_24BDB89C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a16;
  sub_24BCB7FC8(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDB8A14(uint64_t a1, uint64_t *a2, char a3, uint64_t *a4, void *a5)
{
  v38[44] = *MEMORY[0x277D85DE8];
  v35 = 0;
  sub_24BDB83B4(*a2, *(a1 + 72), (a1 + 80), &v35);
  sub_24BDFABF0(&v37, *a2, a1 + 64, &v35, *(a1 + 120));
  if (*(a1 + 40))
  {
    sub_24BC9B100(v38, a1 + 16);
  }

  v10 = sub_24BDFABF4(&v37);
  v11 = *(a1 + 40);
  if (v11 && ((*(*v11 + 48))(v11) & 1) != 0)
  {
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v23 = 257;
  v24 = vdupq_n_s64(0xAuLL);
  v25 = 20;
  v26 = xmmword_24BFED210;
  v27 = -2.84809454e-306;
  v28 = -1;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = 0;
  v36 = 0;
  v20 = 0;
  v22 = *(a1 + 120);
  if (a3)
  {
    v12 = 1;
    v13 = 1;
  }

  else
  {
    v14 = sub_24BE01604(&v37, &v22, &v21 + 1, &v21, &v36, &v20, 0);
    v15 = *(a1 + 40);
    if (v15 && ((*(*v15 + 48))(v15) & 1) != 0)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v13 = !v14;
      v12 = 1;
    }
  }

  if (*(&v33 + 1))
  {
    *&v34 = *(&v33 + 1);
    operator delete(*(&v33 + 1));
  }

  if (v32)
  {
    *(&v32 + 1) = v32;
    operator delete(v32);
  }

  v36 = v31 + 1;
  sub_24BCB7FC8(&v36);
  sub_24BDB9E30(v29, v16);
  if (v13)
  {
LABEL_17:
    sub_24BDFC150(&v37, a4, a5, (a1 + 84), *(a1 + 120));
    v17 = *(a1 + 40);
    if (v17 && ((*(*v17 + 48))(v17) & 1) != 0 || (a4[1] - *a4) > 0x10)
    {
LABEL_20:
      v12 = 0;
      goto LABEL_24;
    }

    if (v38[22] <= 2uLL)
    {
      v22 = 0;
      sub_24BDFDCE0(&v37, &v22);
    }

    v12 = 1;
  }

LABEL_24:
  sub_24BDBA0F0(&v37);
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_24BDB8D08(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  std::chrono::system_clock::now();
  v2 = *(a1 + 40);
  if (!v2 || (result = (*(*v2 + 48))(v2), (result & 1) == 0))
  {
    sub_24BDB9B44(a1);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BDB9928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char *a37)
{
  sub_24BC9F10C(v37 - 160);
  if (__p)
  {
    operator delete(__p);
  }

  a37 = &a29;
  sub_24BCB7FC8(&a37);
  _Unwind_Resume(a1);
}

void sub_24BDB994C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  a15 = &a23;
  sub_24BD4BE1C(&a15);
  sub_24BDBA4D4(&a37);
  if (a26)
  {
    operator delete(a26);
  }

  a37 = &a29;
  sub_24BCB7FC8(&a37);
  _Unwind_Resume(a1);
}

void sub_24BDB9A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37)
{
  __cxa_end_catch();
  std::mutex::unlock((v37 + 208));
  if (a20)
  {
    operator delete(a20);
  }

  a15 = &a23;
  sub_24BD4BE1C(&a15);
  sub_24BDBA4D4(&a37);
  if (a26)
  {
    operator delete(a26);
  }

  a37 = &a29;
  sub_24BCB7FC8(&a37);
  _Unwind_Resume(a1);
}

void sub_24BDB9A58(void *a1, int a2)
{
  if (a2)
  {
    sub_24BC8DCE8(a1);
  }

  JUMPOUT(0x24BDB9B3CLL);
}

void sub_24BDB9A74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BDB9B08);
}

void sub_24BDB9A94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BDB9AB0);
}

void sub_24BDB9AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37, void *a38)
{
  sub_24BCC8A84(&a37, a38);
  if (a26)
  {
    operator delete(a26);
  }

  a37 = &a29;
  sub_24BCB7FC8(&a37);
  _Unwind_Resume(a1);
}

void sub_24BDB9AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t *a37)
{
  if (a26)
  {
    operator delete(a26);
  }

  a37 = &a29;
  sub_24BCB7FC8(&a37);
  _Unwind_Resume(a1);
}

void sub_24BDB9B04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BCA102C(&a37);
  JUMPOUT(0x24BDB9B20);
}

void sub_24BDB9DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v22 = *(v20 - 88);
  if (v22)
  {
    *(v20 - 80) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDB9E30(uint64_t a1, __n128 a2)
{
  if (*(a1 + 24) == 1)
  {
    while (*(a1 + 32))
    {
      sub_24BDB9E8C(a1, a2);
    }
  }

  v4 = a1;
  sub_24BCB7FC8(&v4);
  return a1;
}

uint64_t sub_24BDB9E8C(uint64_t *a1, __n128 a2)
{
  sub_24BDB9EE0(a1, 0, &v4, a2);
  if (v4)
  {
    v2 = *(v4 + 4);
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  if (v5)
  {
    sub_24BC9EC78(v5);
  }

  return v2;
}

void sub_24BDB9EE0(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  v5 = a1[4];
  if (v5 <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = v5 - 1;
    v8 = *a1;
    if (v7 == a2)
    {
      v9 = *(v8 + 16 * a2);
      v10 = v9;
    }

    else
    {
      a4 = *(v8 + 16 * a2);
      *(v8 + 16 * a2) = *(v8 + 16 * v7);
      *(v8 + 16 * v7) = a4;
      v11 = *a1;
      v9 = *(*a1 + 16 * a2);
      *(v9 + 8) = a2;
      v10 = *(v11 + 16 * v7);
      *(v10 + 8) = v7;
    }

    a1[4] = v7;
    *(v10 + 8) = -1;
    if (*v9 >= *v10)
    {
      sub_24BDBA07C(a1, a2);
    }

    else
    {
      a4.n128_u32[0] = *v9;
      sub_24BDB9FB4(a1, a2, a4);
    }

    v12 = *(*a1 + 16 * a1[4]);
    *a3 = v12;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }
}

__n128 sub_24BDB9FB4(uint64_t *a1, unint64_t a2, __n128 result)
{
  v3 = a1[4];
  if (v3 > a2)
  {
    v4 = *a1;
    v5 = *(*a1 + 16 * a2);
    do
    {
      v6 = (2 * a2) | 1;
      result.n128_u32[0] = *v5;
      if (v6 >= v3)
      {
        v7 = a2;
      }

      else
      {
        v7 = a2;
        if (**(v4 + 16 * v6) > result.n128_f32[0])
        {
          v7 = (2 * a2) | 1;
          result.n128_u32[0] = **(v4 + 16 * v6);
        }
      }

      v8 = 2 * a2 + 2;
      if (v8 < v3 && **(v4 + 16 * v8) > result.n128_f32[0])
      {
        v7 = 2 * a2 + 2;
      }

      if (v7 == a2)
      {
        break;
      }

      v9 = (v4 + 16 * v7);
      v10 = *(v4 + 16 * a2 + 8);
      result = *v9;
      *(v4 + 16 * a2) = *v9;
      v9->n128_u64[0] = v5;
      v9->n128_u64[1] = v10;
      v4 = *a1;
      *(*(*a1 + 16 * a2) + 8) = a2;
      v5 = *(v4 + 16 * v7);
      *(v5 + 8) = v7;
      a2 = v7;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t *sub_24BDBA07C(uint64_t *result, unint64_t a2)
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
      v7 = (v2 + 16 * v4);
      if (**v5 <= **v7)
      {
        break;
      }

      if (a2 != v4)
      {
        v8 = v5[1];
        v9 = v7[1];
        *v5 = *v7;
        v5[1] = v9;
        *v7 = v6;
        v7[1] = v8;
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

uint64_t sub_24BDBA0F0(uint64_t a1)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    *(a1 + 296) = v4;
    operator delete(v4);
  }

  v9 = (a1 + 256);
  sub_24BCB7FC8(&v9);
  v5 = *(a1 + 232);
  if (v5)
  {
    *(a1 + 240) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 208);
  if (v6)
  {
    operator delete(v6);
  }

  sub_24BDDE49C(a1 + 120);
  sub_24BCC8A84(a1 + 96, *(a1 + 104));
  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
  }

  sub_24BC9F10C(a1 + 8);
  return a1;
}

uint64_t sub_24BDBA1A4(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 170 * ((v7 - v6) >> 3) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a1[5] + a1[4])
  {
    sub_24BDBA2B4(a1);
    v6 = a1[1];
    v7 = a1[2];
  }

  if (v7 == v6)
  {
    v10 = 0;
  }

  else
  {
    v9 = a1[5] + a1[4];
    v10 = *(v6 + 8 * (v9 / 0xAA)) + 24 * (v9 % 0xAA);
  }

  sub_24BDBA488(a1, v10, a2, a3);
  v11 = a1[4];
  v12 = a1[5] + 1;
  a1[5] = v12;
  v13 = v11 + v12;
  v14 = a1[1];
  v15 = (v14 + 8 * (v13 / 0xAA));
  v16 = *v15 + 24 * (v13 % 0xAA);
  if (a1[2] == v14)
  {
    v16 = 0;
  }

  if (v16 == *v15)
  {
    v16 = *(v15 - 1) + 4080;
  }

  return v16 - 24;
}

void *sub_24BDBA2B4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_24BCAD8CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BD413CC(a1, &v10);
}

void sub_24BDBA43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BDBA488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v4 = a3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a4 + 8) & **a4;
  *a2 = v5;
  *(a2 + 8) = v4;
  v7 = v6 != 0;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a2 + 16) = v7;
    sub_24BC9EC78(v4);
  }

  else
  {
    *(a2 + 16) = v7;
  }
}

uint64_t sub_24BDBA4D4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          sub_24BC9EC78(v10);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 170;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_24BCA10D8(a1);
}