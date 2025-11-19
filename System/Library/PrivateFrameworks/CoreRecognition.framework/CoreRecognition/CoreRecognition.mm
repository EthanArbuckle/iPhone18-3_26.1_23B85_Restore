void sub_2477E9880(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2477E9E7C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2477EBB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CRCameraReader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2477F0C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2477F5CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id *a28, void *a29, uint64_t a30, uint64_t a31, void *a32, id *a33)
{
  if (a30)
  {
  }

  if (v35)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2477F6C10(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_2477F8D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_2477FDDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_2477FE308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_247800264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_247801F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  objc_destroyWeak((v18 + 64));

  _Unwind_Resume(a1);
}

void sub_24780346C(_Unwind_Exception *a1)
{
  v7 = v2;

  _Unwind_Resume(a1);
}

void sub_247804C2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_247804DC0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_247805A3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278EAA5B0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_247805C7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *exposure_table_create_lookup_table(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a2 - 1;
  v6 = *(a1 + 8);
  result = malloc_type_malloc(24 * *(a1 + 24 * (a2 - 1)) + 24, 0x1000040D315E998uLL);
  if (v5)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    do
    {
      v10 = a1 + 24 * v8;
      v11 = *(v10 + 24);
      if (v9 < v11)
      {
        v12 = *(v10 + 4);
        v13 = *(v10 + 8);
        v9 = v9;
        do
        {
          v14 = 1.0;
          if (v9 >= 1)
          {
            v15 = v9;
            do
            {
              v14 = (a3 + 1.0) * v14;
              --v15;
            }

            while (v15);
          }

          v16 = &result[24 * v9];
          *v16 = v9;
          *(v16 + 1) = v12;
          *(v16 + 1) = v13;
          *(v16 + 2) = v6 / v13 * v14;
          ++v9;
        }

        while (v9 != v11);
      }

      ++v8;
      LODWORD(v9) = v11;
    }

    while (v8 != v5);
  }

  return result;
}

uint64_t CNN::convertByteToFloatVector(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, float a7)
{
  v7 = a3 - a2;
  if (a3 != a2)
  {
    v8 = *(result + 8);
    v9 = *(v8 + 76);
    if (v9 > 3)
    {
      exit(1);
    }

    for (i = 0; v7 > i; ++i)
    {
      if (v9)
      {
        if (v9 == 2)
        {
          v12 = *(v8 + 88);
          v11 = *(v8 + 80);
          goto LABEL_9;
        }

        if (v9 == 1)
        {
          v11 = *(*(v8 + 96) + 8 * i);
          v12 = *(*(v8 + 120) + 8 * i);
LABEL_9:
          v13 = v12;
          goto LABEL_12;
        }

        v11 = 15.0;
        v13 = 256.0;
      }

      else
      {
        v11 = 0.0;
        v13 = 1.0;
      }

LABEL_12:
      LOBYTE(a7) = *(a2 + i);
      a7 = LODWORD(a7);
      if (v7 - 1 > i || (v14 = 1.0, (*(v8 + 40) & 1) == 0))
      {
        v14 = (a7 - v11) / v13;
      }

      *(a4 + 4 * i) = v14;
    }
  }

  return result;
}

uint64_t CNN::feedForward(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(***(a1 + 112) + 16))(**(a1 + 112), **a3, a2);
  if (*(a1 + 104))
  {
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 112) + 8 * v6);
      (**v7)(v7, *(*a3 + 8 * v6), *(*(a3 + 152) + 8 * v6));
      v8 = *(*(a1 + 112) + 8 * v6);
      (*(*v8 + 48))(v8, a3, v6);
      v9 = *(*(a1 + 112) + 8 * v6);
      result = (*(*v9 + 40))(v9, *(*(a3 + 200) + 8 * v6), *(*(a3 + 24) + 8 * v6));
      ++v6;
    }

    while (v6 < *(a1 + 104));
  }

  return result;
}

void *matrix<float>::~matrix(void *a1)
{
  *a1 = &unk_285963160;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x24C1AA8A0](v2, 0x1000C8052888210);
  }

  return a1;
}

void CNN::CNN(CNN *this, Corpus *a2, NetworkParameters *a3)
{
  *(this + 3) = 0xBFF0000000000000;
  *(this + 4) = 0;
  v6 = this + 32;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_285962E10;
  *(this + 1) = 0;
  *(this + 8) = 0;
  v7 = (this + 64);
  *(this + 14) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v8 = *(a3 + 3);
  *(this + 17) = &unk_285963368;
  *(this + 18) = 0;
  *(this + 38) = 1;
  *(this + 78) = 0;
  ThreadPoolAuto::setupCommon(this + 136, 0, v8, 0, 0x78u);
  *(this + 1) = a2;
  *(this + 20) = a3;
  MEMORY[0x24C1AA6C0](v6, "convolutional-neural-net");
  v9 = *(this + 20);
  *(this + 4) = *(v9 + 184);
  *(this + 12) = *(v9 + 172);
  v10 = *(v9 + 112);
  if (*(*(this + 1) + 32) == v10 * v10)
  {
    v11 = *(v9 + 112);
    v12 = *(this + 38);
    *(this + 15) = v12;
    v13 = *(v9 + 16) * v12;
    *(this + 14) = v13;
    if (v12 == 1)
    {
      *(this + 15) = v13;
      v12 = v13;
    }

    v14 = v12;
    v15 = *(this + 8);
    v16 = *(this + 9);
    v17 = (v16 - v15) >> 3;
    if (v14 <= v17)
    {
      if (v14 < v17)
      {
        *(this + 9) = v15 + 8 * v14;
      }
    }

    else
    {
      v18 = v14 - v17;
      v19 = *(this + 10);
      if (v18 > (v19 - v16) >> 3)
      {
        v20 = v19 - v15;
        if (v20 >> 2 > v14)
        {
          v14 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v14;
        }

        if (!(v21 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(*(this + 9), 8 * v18);
      *(this + 9) = v16 + 8 * v18;
      v11 = v10;
    }

    if (*(this + 15))
    {
      operator new();
    }

    v22 = *(*(this + 20) + 200);
    if (*(*(this + 20) + 208) != v22)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = *(v22 + 8 * v23);
        if (v26)
        {
          v40 = v24;
          v27 = v11;
          if (v28)
          {
            (**v28)(v28);
            v31 = *(*(*(this + 20) + 200) + 8 * (v25 + 1));
            (*(*v31 + 40))(v31);
            v32 = *(this + 15);
            if (v25)
            {
              if (v32)
              {
                CNNSignals::prepareLayer(**v7, 0, 0);
              }

              operator new();
            }

            if (v32)
            {
              CNNSignals::prepareLayer(**v7, 0, 1);
            }

            operator new();
          }

          v11 = v27;
          if (v30)
          {
            if (!(v27 % (**v30)(v30)))
            {
              v33 = *(*(*(this + 20) + 200) + 8 * (v25 + 1));
              (*(*v33 + 40))(v33);
              if (*(this + 15))
              {
                CNNSignals::prepareLayer(**v7, 0, 0);
              }

              operator new();
            }

            exit(12345);
          }

          v24 = v40;
          if (v29)
          {
            if ((*(**(*(this + 15) - 8) + 120))(*(*(this + 15) - 8)))
            {
              v34 = **(*(this + 20) + 200);
              v35 = (*(*v34 + 40))(v34);
              if (*(this + 15))
              {
                v36 = 0;
                do
                {
                  v37 = *(*(this + 8) + 8 * v36);
                  bzero(*(v37 + 464), 4 * *(v37 + 448) * *(v37 + 456));
                  v38 = *(*(this + 8) + 8 * v36);
                  bzero(*(v38 + 496), 4 * *(v38 + 480) * *(v38 + 488));
                  ++v36;
                  v39 = *(this + 15);
                }

                while (v36 < v39);
                if (v35)
                {
                  if (v39)
                  {
                    CNNSignals::prepareLayer(**v7, 0, 0);
                  }
                }

                else if (v39)
                {
                  CNNSignals::prepareLayer(**v7, 0, 0);
                }
              }

              operator new();
            }

            exit(1234);
          }
        }

        v22 = *(*(this + 20) + 200);
        v23 = ++v25;
      }

      while (v25 < ((*(*(this + 20) + 208) - v22) >> 3));
      if (*(this + 15))
      {
        CNNSignals::prepareLayer(**v7, 0, 0);
      }
    }

    operator new();
  }

  exit(3456);
}

void sub_247812318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x24C1AA8D0](v38, 0x1093C406C775FE4);
  ThreadPoolAuto::~ThreadPoolAuto(a14);
  v40 = *a20;
  if (*a20)
  {
    *(v37 + 120) = v40;
    operator delete(v40);
  }

  v41 = *a25;
  if (*a25)
  {
    *(v37 + 72) = v41;
    operator delete(v41);
  }

  *v37 = a16;
  if (*(v37 + 55) < 0)
  {
    operator delete(*a15);
  }

  _Unwind_Resume(a1);
}

void std::vector<Layer<float,float,float> *,std::allocator<Layer<float,float,float> *>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Layer<float,float,float> *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void CNN::~CNN(CNN *this)
{
  *this = &unk_285962E10;
  v2 = *(this + 26);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 14) + 8 * i);
      if (v4)
      {
        v5 = Layer<float,float,float>::~Layer(v4);
        MEMORY[0x24C1AA8D0](v5, 0x1093C406C775FE4);
        v2 = *(this + 26);
      }
    }
  }

  ThreadPoolAuto::~ThreadPoolAuto(this + 17);
  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    *(this + 9) = v7;
    operator delete(v7);
  }

  *this = &unk_285962ED0;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  CNN::~CNN(this);

  JUMPOUT(0x24C1AA8D0);
}

uint64_t CNN::scoreOneVector(int a1, uint64_t a2, char *a3)
{
  v3 = *(a2 + 8 * (a1 - 1));
  result = 0;
  v5 = *(v3 + 16) - 1;
  if (*(v3 + 16) != 1)
  {
    LODWORD(v6) = 0;
    v7 = *(v3 + 24);
    v8 = a3[1];
    v9 = *(a3 + 2);
    v11 = *(a3 + 1);
    v10 = *(a3 + 2);
    v12 = *a3;
    v13 = v9 + 16 * v11;
    v14 = v9 + 16 * (v11 - 1);
    v15 = -1000.0;
    do
    {
      v16 = *(v7 + 4 * v6);
      if (v15 >= v16)
      {
        result = result;
      }

      else
      {
        v15 = *(v7 + 4 * v6);
        result = v6;
      }

      if (!v8)
      {
        goto LABEL_12;
      }

      v17 = v10 + 1;
      if (v17 < 2)
      {
        goto LABEL_12;
      }

      v18 = (v9 + 24);
      v19 = 1;
      while (*(v18 - 1) != v16 || *v18 != v6)
      {
        ++v19;
        v18 += 2;
        if (v17 == v19)
        {
          goto LABEL_12;
        }
      }

      if (v19 <= 0)
      {
LABEL_12:
        if (v10 != v11)
        {
          *(a3 + 2) = ++v10;
          v22 = v9 + 16 * v10;
          *v22 = v16;
          *(v22 + 8) = v6;
          if (v12)
          {
            v21 = v10;
LABEL_19:
            v23 = 0x80000000;
            v24 = 1;
          }

          else
          {
            v24 = 0;
            v23 = 0x7FFFFFFF;
            v21 = v10;
          }

LABEL_23:
          *v9 = v23;
          *(v9 + 8) = v23;
          while (1)
          {
            v25 = v21;
            v21 >>= 1;
            v26 = v9 + 16 * v21;
            if (v24)
            {
              if (*v26 < v16)
              {
                goto LABEL_30;
              }
            }

            else if (*v26 < v16)
            {
LABEL_30:
              v28 = v9 + 16 * v25;
              *v28 = v16;
              *(v28 + 8) = v6;
              goto LABEL_31;
            }

            if (v25)
            {
              v27 = v9 + 16 * v25;
              *v27 = *v26;
              *(v27 + 8) = *(v26 + 8);
            }
          }
        }

        if (v12)
        {
          v20 = v9 + 16 * v11;
          v21 = v11;
          if (*v13 > v16 || (v20 = v9 + 16 * (v11 - 1), v21 = v11 - 1, v10 = v11, *v14 > v16))
          {
            *v20 = v16;
            *(v20 + 8) = v6;
            v10 = v11;
            goto LABEL_19;
          }
        }

        else
        {
          if (*v13 < v16)
          {
            v24 = 0;
            *v13 = v16;
            *(v13 + 8) = v6;
            v23 = 0x7FFFFFFF;
            v10 = v11;
            v21 = v11;
            goto LABEL_23;
          }

          v10 = v11;
          if (*v14 < v16)
          {
            v24 = 0;
            *v14 = v16;
            *(v14 + 8) = v6;
            v23 = 0x7FFFFFFF;
            v10 = v11;
            v21 = v11 - 1;
            goto LABEL_23;
          }
        }
      }

LABEL_31:
      v6 = (v6 + 1);
    }

    while (v5 > v6);
  }

  return result;
}

uint64_t CNN::scoreOneOutputEncodedVector(CNN *this, uint64_t a2, CNNSignals *a3)
{
  __p = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v32 = 0;
  v33 = 0;
  v4 = **(*(*(this + 20) + 160) + 48);
  v5 = *(v4 + 16);
  v6 = *(v4 + 8);
  std::vector<float>::resize(&v34, *(*(this + 1) + 192));
  v7 = *(this + 1);
  if (*(v7 + 192))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__p, *(v7 + 192));
  }

  v8 = v5 - v6;
  v9 = *(*(*(this + 20) + 160) + 56);
  v10 = v34;
  v29 = *(*(*(this + 20) + 160) + 48);
  if (v9 != v29)
  {
    v11 = 0;
    v12 = (v9 - v29) >> 3;
    do
    {
      if (v8)
      {
        v13 = 0;
        v14 = *(v29 + 8 * v11);
        v15 = *v14;
        v16 = *(a2 + 200);
        v17 = *(v14 + 1);
        v18 = __p;
        v19 = v10[v15];
        do
        {
          v20 = *(*(*(v16 + 8 * (*(this + 26) - 1)) + 24) + 4 * v13);
          v21 = 0.0;
          if (v20 >= 0.0)
          {
            v21 = logf(v20 + 1.0);
          }

          if (*(v17 + v13))
          {
            v22 = 1.0;
          }

          else
          {
            v22 = 0.0;
          }

          v19 = v19 + ((v21 - v22) * (v21 - v22));
          v10[v15] = v19;
          if (*(v17 + v13))
          {
            ++v18[v15];
          }

          ++v13;
        }

        while (v8 != v13);
      }

      v11 = (v11 + 1);
    }

    while (v12 > v11);
  }

  if (v35 == v10)
  {
    v24 = 0;
    v27 = 0;
    if (!__p)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v23 = 0;
    LODWORD(v24) = 0;
    v25 = 3.4028e38;
    do
    {
      if (*(__p + v23) < 1)
      {
        v26 = 3.4028e38;
      }

      else
      {
        v26 = v10[v23] / v8;
      }

      if (v26 >= v25)
      {
        v24 = v24;
      }

      else
      {
        v25 = v26;
        v24 = v23;
      }

      ++v23;
    }

    while (v35 - v10 > v23);
  }

  v32 = __p;
  operator delete(__p);
  v10 = v34;
  v27 = v24;
LABEL_28:
  if (v10)
  {
    v35 = v10;
    operator delete(v10);
  }

  return v27;
}

void sub_247812CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v10);
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 4 * v6);
    v11 = v4 + 4 * v6;
  }

  *(a1 + 8) = v11;
}

void CNN::Recognize(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if (v3 < 0)
  {
    operator delete(__p);
  }

  operator new();
}

void sub_247813D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (a50)
  {
    MEMORY[0x24C1AA8A0](a50 - 16, 0x1000C8000313F17);
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::destroy(a40);
  std::__tree<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>>>::destroy(a43);
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a46);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

unsigned __int8 *FixedHeap<unsigned int,unsigned int>::insert(unsigned __int8 *result, unsigned int a2, unsigned int a3)
{
  v3 = *(result + 2);
  v4 = (v3 + 1);
  if (result[1] != 1 || v4 < 2)
  {
    goto LABEL_5;
  }

  v16 = (*(result + 2) + 12);
  v17 = 1;
  while (*(v16 - 1) != a2 || *v16 != a3)
  {
    ++v17;
    v16 += 2;
    if (v4 == v17)
    {
      goto LABEL_5;
    }
  }

  if (v17 <= 0)
  {
LABEL_5:
    if (v3 == *(result + 1))
    {
      v6 = *result;
      v7 = *(result + 2);
      v8 = &v7[2 * v3];
      v9 = *v8;
      if (v6 == 1)
      {
        if (v9 > a2)
        {
          LOBYTE(v6) = 1;
LABEL_10:
          LODWORD(v10) = v3;
          goto LABEL_11;
        }

        v3 = (v3 - 1);
        if (v7[2 * v3] <= a2)
        {
          return result;
        }
      }

      else
      {
        if (v9 < a2)
        {
          LOBYTE(v6) = 0;
          goto LABEL_10;
        }

        v3 = (v3 - 1);
        if (v7[2 * v3] >= a2)
        {
          return result;
        }
      }

      LODWORD(v10) = v3;
      v8 = &v7[2 * v3];
LABEL_11:
      *v8 = a2;
      v8[1] = a3;
      v11 = *&v7[2 * v3];
      if (v6)
      {
        v12 = 0x80000000;
      }

      else
      {
        v12 = 0x7FFFFFFF;
      }

      *v7 = v12;
      v13 = v7;
LABEL_15:
      v13[1] = v12;
      while (1)
      {
        v14 = v10;
        v10 = v10 >> 1;
        v15 = v7[2 * v10];
        if (v6)
        {
          if (v11 > v15)
          {
            goto LABEL_22;
          }
        }

        else if (v11 < v15)
        {
LABEL_22:
          *&v7[2 * v14] = v11;
          return result;
        }

        if (v14)
        {
          v13 = &v7[2 * v14];
          *v13 = v15;
          v12 = v7[2 * v10 + 1];
          goto LABEL_15;
        }
      }
    }

    v7 = *(result + 2);
    v3 = (v3 + 1);
    *(result + 2) = v3;
    v8 = &v7[2 * v3];
    LOBYTE(v6) = *result;
    goto LABEL_10;
  }

  return result;
}

uint64_t FFThread(uint64_t a1)
{
  CNN::feedForward(*a1, a1 + 88, *(a1 + 24));
  v3 = *a1;
  v4 = *(*a1 + 160);
  v5 = *(v4 + 159);
  if (v5 < 0)
  {
    v5 = *(v4 + 144);
  }

  v6 = *(a1 + 24);
  if (v5)
  {
    v7 = CNN::scoreOneOutputEncodedVector(v3, v6, v2);
  }

  else
  {
    v8 = *(*(v6 + 200) + 8 * (*(v3 + 26) - 1));
    v7 = 0;
    v9 = *(v8 + 16) - 1;
    if (*(v8 + 16) != 1)
    {
      v10 = *(v8 + 24);
      v11 = 1;
      v12 = -1000.0;
      do
      {
        if (v12 < *(v10 + 4 * (v11 - 1)))
        {
          v7 = v11 - 1;
          v12 = *(v10 + 4 * (v11 - 1));
        }
      }

      while (v9 > v11++);
    }
  }

  *(a1 + 112) = v7;
  return 0;
}

double CNN::importClassifierBinary(CNN *this, __sFILE *__stream)
{
  __ptr = 0;
  fread(&__ptr + 4, 4uLL, 1uLL, __stream);
  fread(&__ptr, 4uLL, 1uLL, __stream);
  result = *(&__ptr + 1);
  v5 = *(this + 1);
  v6 = *&__ptr;
  *(v5 + 80) = *(&__ptr + 1);
  *(v5 + 88) = v6;
  if (*(this + 26))
  {
    matrix<float>::resize();
  }

  return result;
}

void sub_2478143D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x24C1AA8A0](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CNN::exportClassifier(uint64_t a1)
{
  v53[19] = *MEMORY[0x277D85DE8];
  v53[6] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  v53[0] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v51 = *(MEMORY[0x277D82810] + 8);
  *&v52[*(v51 - 24) - 8] = v3;
  v4 = &v52[*(v51 - 24) - 8];
  std::ios_base::init(v4, v52);
  v5 = MEMORY[0x277D82860] + 24;
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  v51 = v5;
  v53[0] = v2;
  MEMORY[0x24C1AA720](v52);
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&v52[*(v51 - 24) - 8], *&v52[*(v51 - 24) + 24] | 4);
  }

  *&v52[*(v51 - 24) + 8] = 8;
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "<classifier name= ", 18);
  v7 = *(a1 + 55);
  if (v7 >= 0)
  {
    v8 = a1 + 32;
  }

  else
  {
    v8 = *(a1 + 32);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 55);
  }

  else
  {
    v9 = *(a1 + 40);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " >", 2);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v50, MEMORY[0x277D82680]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v50);
  std::ostream::put();
  std::ostream::flush();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "  <dimension> ", 14);
  v14 = MEMORY[0x24C1AA7E0](v13, *(*(a1 + 8) + 32));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " </dimension>", 13);
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&v50, MEMORY[0x277D82680]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v50);
  std::ostream::put();
  std::ostream::flush();
  if (*(a1 + 104))
  {
    v17 = 0;
    v18 = MEMORY[0x277D82680];
    do
    {
      v19 = *(*(a1 + 112) + 8 * v17);
      v20 = *(v19 + 47);
      if (v20 >= 0)
      {
        v21 = v19 + 24;
      }

      else
      {
        v21 = *(v19 + 24);
      }

      if (v20 >= 0)
      {
        v22 = *(v19 + 47);
      }

      else
      {
        v22 = *(v19 + 32);
      }

      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, v21, v22);
      std::ios_base::getloc((v23 + *(*v23 - 24)));
      v24 = std::locale::use_facet(&v50, v18);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v50);
      std::ostream::put();
      std::ostream::flush();
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "<weights>", 9);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v50, v18);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v50);
      std::ostream::put();
      std::ostream::flush();
      v27 = MEMORY[0x24C1AA7D0](&v51, v19 + 64);
      std::ios_base::getloc((v27 + *(*v27 - 24)));
      v28 = std::locale::use_facet(&v50, v18);
      (v28->__vftable[2].~facet_0)(v28, 10);
      std::locale::~locale(&v50);
      std::ostream::put();
      std::ostream::flush();
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "</weights>", 10);
      std::ios_base::getloc((v29 + *(*v29 - 24)));
      v30 = std::locale::use_facet(&v50, v18);
      (v30->__vftable[2].~facet_0)(v30, 10);
      std::locale::~locale(&v50);
      std::ostream::put();
      std::ostream::flush();
      ++v17;
    }

    while (v17 < *(a1 + 104));
  }

  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "<labels>", 8);
  std::ios_base::getloc((v31 + *(*v31 - 24)));
  v32 = std::locale::use_facet(&v50, MEMORY[0x277D82680]);
  (v32->__vftable[2].~facet_0)(v32, 10);
  std::locale::~locale(&v50);
  std::ostream::put();
  std::ostream::flush();
  v33 = *(a1 + 8);
  v34 = *(v33 + 144);
  v35 = (v33 + 152);
  if (v34 != (v33 + 152))
  {
    v36 = MEMORY[0x277D82680];
    do
    {
      v37 = *(v34 + 55);
      if (v37 >= 0)
      {
        v38 = (v34 + 4);
      }

      else
      {
        v38 = v34[4];
      }

      if (v37 >= 0)
      {
        v39 = *(v34 + 55);
      }

      else
      {
        v39 = v34[5];
      }

      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, v38, v39);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " ", 1);
      v42 = MEMORY[0x24C1AA7E0](v41, *(v34 + 14));
      std::ios_base::getloc((v42 + *(*v42 - 24)));
      v43 = std::locale::use_facet(&v50, v36);
      (v43->__vftable[2].~facet_0)(v43, 10);
      std::locale::~locale(&v50);
      std::ostream::put();
      std::ostream::flush();
      v44 = v34[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v34[2];
          v46 = *v45 == v34;
          v34 = v45;
        }

        while (!v46);
      }

      v34 = v45;
    }

    while (v45 != v35);
  }

  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "</labels>", 9);
  std::ios_base::getloc((v47 + *(*v47 - 24)));
  v48 = std::locale::use_facet(&v50, MEMORY[0x277D82680]);
  (v48->__vftable[2].~facet_0)(v48, 10);
  std::locale::~locale(&v50);
  std::ostream::put();
  std::ostream::flush();
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v52[*(v51 - 24) - 8], *&v52[*(v51 - 24) + 24] | 4);
  }

  v51 = *MEMORY[0x277D82810];
  *&v52[*(v51 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C1AA730](v52);
  std::ostream::~ostream();
  return MEMORY[0x24C1AA880](v53);
}

void sub_247814CD4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x24C1AA880](v1);
  _Unwind_Resume(a1);
}

uint64_t CNN::importClassifier(uint64_t a1)
{
  v19[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v17);
  memset(&__str, 0, sizeof(__str));
  v11 = 0;
  v10 = 0;
  if (*&v18[*(v17[0] - 24) + 16])
  {
    v9 = 3;
    goto LABEL_32;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  std::string::operator=((a1 + 32), &__str);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  MEMORY[0x24C1AA770](v17, &v11);
  if (*(*(a1 + 8) + 32) != v11)
  {
    v9 = 4;
LABEL_32:
    exit(v9);
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  MEMORY[0x24C1AA760](v17, &v10);
  *(*(a1 + 8) + 80) = v10;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  MEMORY[0x24C1AA760](v17, &v10);
  *(*(a1 + 8) + 88) = v10;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  if (*(a1 + 104))
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
    memset(v15, 0, sizeof(v15));
    v13.__r_.__value_.__r.__words[0] = &unk_285963160;
    v14 = 0;
    *&v13.__r_.__value_.__r.__words[1] = 0uLL;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, v15);
    matrix<float>::resize();
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str);
  v2 = *(a1 + 8);
  memset(&v13, 0, sizeof(v13));
  memset(&__p, 0, sizeof(__p));
  LODWORD(v15[0]) = 0;
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(v2 + 168, *(v2 + 176));
  *(v2 + 168) = v2 + 176;
  *(v2 + 184) = 0;
  *(v2 + 176) = 0;
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v2 + 144, *(v2 + 152));
  *(v2 + 144) = v2 + 152;
  *(v2 + 160) = 0;
  *(v2 + 152) = 0;
  for (*(v2 + 192) = 0; ; ++*(v2 + 192))
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &v13);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      exit(3);
    }

    if ((*(&v13.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v13.__r_.__value_.__l.__size_ != 9)
      {
        goto LABEL_19;
      }

      v4 = v13.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v13.__r_.__value_.__r.__words[2]) != 9)
      {
        goto LABEL_19;
      }

      v4 = &v13;
    }

    v5 = v4->__r_.__value_.__r.__words[0];
    v6 = v4->__r_.__value_.__s.__data_[8];
    if (v5 == 0x736C6562616C2F3CLL && v6 == 62)
    {
      break;
    }

LABEL_19:
    std::string::operator=(&__p, &v13);
    MEMORY[0x24C1AA770](v17, v15);
    TagMap::storeLabel(v2 + 144, &__p, v15[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((*(&v13.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((*(&v13.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_22;
    }

LABEL_28:
    operator delete(v13.__r_.__value_.__l.__data_);
  }

LABEL_22:
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v17 + *(v17[0] - 24)), *&v18[*(v17[0] - 24) + 16] | 4);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v17[0] = *MEMORY[0x277D82808];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C1AA730](v18);
  std::istream::~istream();
  return MEMORY[0x24C1AA880](v19);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x24C1AA720](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_24781565C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x24C1AA880](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x24C1AA740](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_2478158D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x247815898);
  }

  __cxa_rethrow();
}

void *matrix<double>::~matrix(void *a1)
{
  *a1 = &unk_285963130;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x24C1AA8A0](v2, 0x1000C8000313F17);
  }

  return a1;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x24C1AA730](a1 + 2);
  std::istream::~istream();
  MEMORY[0x24C1AA880](a1 + 53);
  return a1;
}

void CNN::ClassifyOne(uint64_t a1, uint64_t *a2)
{
  std::vector<float>::vector[abi:ne200100](&v9, a2[1] - *a2);
  CNN::convertByteToFloatVector(a1, *a2, a2[1], v9, v4, v5, v6);
  CNN::feedForward(a1, &v9, **(a1 + 64));
  v7 = 0;
  v8 = 4;
  operator new[]();
}

void sub_247815C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TagMap::getLabel(std::string *this, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  v7 = &v6;
  v4 = std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a2 + 24, &v6);
  if (*(v4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(this, v4[5], v4[6]);
  }

  else
  {
    v5 = *(v4 + 5);
    this->__r_.__value_.__r.__words[2] = v4[7];
    *&this->__r_.__value_.__l.__data_ = v5;
  }
}

uint64_t CNN::CNNFromModel(const char *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = fopen(a1, "r");
  fread(__ptr, 4uLL, 3uLL, v1);
  if (__ptr[0] <= 1u && __ptr[1] == 0)
  {
    fread(v4, 1uLL, 3uLL, v1);
    operator new();
  }

  return 0;
}

void sub_247815EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x24C1AA8D0](v3, 0x10B3C40EE8EEB88);
  TagMap::~TagMap(va);
  _Unwind_Resume(a1);
}

void TagMap::importTagMapBinary(TagMap *this, __sFILE *__stream)
{
  v10 = *MEMORY[0x277D85DE8];
  __ptr = 0;
  fread(&__ptr, 4uLL, 1uLL, __stream);
  for (i = __ptr; i; --i)
  {
    v6 = 0;
    v7 = 0;
    fread(&v7, 4uLL, 1uLL, __stream);
    fread(&v6, 4uLL, 1uLL, __stream);
    snprintf(__str, 0x100uLL, "0x%x", v7);
    std::string::basic_string[abi:ne200100]<0>(&__p, __str);
    TagMap::storeLabel(this, &__p, v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++*(this + 12);
  }
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_247816314(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x24C1AA880](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x24C1AA880](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1AA830](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_247816524(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x277D82810];
  v2 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x24C1AA730](a1 + 1);

  return std::ostream::~ostream();
}

std::string *TagMap::storeLabel(uint64_t a1, std::string *a2, unsigned int a3)
{
  v8 = a3;
  if (std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__count_unique<std::string>(a1, &a2->__r_.__value_.__l.__data_))
  {
    exit(1);
  }

  *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &a2->__r_.__value_.__l.__data_) + 56) = a3;
  v9 = &v8;
  v6 = std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 24, &v8);
  return std::string::operator=((v6 + 5), a2);
}

void std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    do
    {
      v7 = *(v2 + 55);
      if (v7 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      if (v7 >= 0)
      {
        v9 = (v2 + 4);
      }

      else
      {
        v9 = v2[4];
      }

      if (v8 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      v11 = memcmp(v5, v9, v10);
      v12 = v4 < v8;
      if (v11)
      {
        v12 = v11 < 0;
      }

      if (!v12)
      {
        v13 = memcmp(v9, v5, v10);
        v14 = v8 < v4;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          return v6;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
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
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_247816BAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

void NetworkParameters::NetworkParameters(NetworkParameters *this)
{
  *this = &unk_285962F10;
  *(this + 1) = 0x100000000;
  *(this + 4) = 1;
  std::string::basic_string[abi:ne200100]<0>(this + 24, "");
  *(this + 6) = 0x100000002;
  *(this + 56) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 64, "");
  std::string::basic_string[abi:ne200100]<0>(this + 88, "");
  *(this + 7) = xmmword_24783F7E0;
  *(this + 32) = 100000;
  std::string::basic_string[abi:ne200100]<0>(this + 136, "");
  *(this + 20) = 0;
  *(this + 21) = 0x3F8000003E4CCCCDLL;
  *(this + 22) = 0x7D000000000;
  *(this + 46) = 7200000;
  *(this + 24) = 0x3F1A36E2EB1C432DLL;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 224) = 0;
}

void sub_247816FF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void NetworkParameters::~NetworkParameters(NetworkParameters *this)
{
  NetworkParameters::~NetworkParameters(this);

  JUMPOUT(0x24C1AA8D0);
}

{
  *this = &unk_285962F10;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C1AA7A0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x24C1AA7B0](v13);
  return a1;
}

void sub_247817308(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C1AA7B0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2478172E8);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_24781753C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void matrix<float>::matrix(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *a1 = &unk_285963160;
  a1[1] = v2;
  a1[2] = v3;
  operator new[]();
}

void matrix<float>::~matrix(void *a1)
{
  *a1 = &unk_285963160;
  v1 = a1[3];
  if (v1)
  {
    MEMORY[0x24C1AA8A0](v1, 0x1000C8052888210);
  }

  JUMPOUT(0x24C1AA8D0);
}

void ConvolutionLayer<float,float,float>::ConvolutionLayer(uint64_t a1, const std::string *a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, char a11)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 64) = &unk_285963160;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_285963160;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = &unk_285963160;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = &unk_285962F40;
  *(a1 + 164) = a3;
  *(a1 + 168) = a4;
  *(a1 + 172) = a5;
  *(a1 + 176) = a6;
  *(a1 + 180) = a7;
  *(a1 + 184) = a8;
  *(a1 + 188) = a9;
  *(a1 + 204) = a10;
  *(a1 + 240) = a11;
  std::string::operator=((a1 + 24), a2);
  *(a1 + 48) = *(a1 + 168) * *(a1 + 164);
  v12 = *(a1 + 196);
  v13 = *(a1 + 212);
  v14 = *(a1 + 216);
  v15 = (v12 - v13) / (v14 + 1.0) + 1.0;
  v16 = (v12 - v13) / (v14 + 1) + 1;
  *(a1 + 220) = v16;
  if (vabds_f32(v15, v16) <= 2.2204e-16)
  {
    *(a1 + 52) = *(a1 + 192) * *(a1 + 188);
    matrix<float>::resize();
  }

  exit(12345);
}

uint64_t Layer<float,float,float>::~Layer(uint64_t a1)
{
  *a1 = &unk_285962FF8;
  *(a1 + 128) = &unk_285963160;
  v2 = *(a1 + 152);
  if (v2)
  {
    MEMORY[0x24C1AA8A0](v2, 0x1000C8052888210);
  }

  *(a1 + 96) = &unk_285963160;
  v3 = *(a1 + 120);
  if (v3)
  {
    MEMORY[0x24C1AA8A0](v3, 0x1000C8052888210);
  }

  *(a1 + 64) = &unk_285963160;
  v4 = *(a1 + 88);
  if (v4)
  {
    MEMORY[0x24C1AA8A0](v4, 0x1000C8052888210);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

_DWORD *ConvolutionLayer<float,float,float>::replicateOrgXToX(_DWORD *result, uint64_t a2, void *a3)
{
  v4 = a3[1];
  v3 = a3[2];
  v5 = v3 - 1;
  if (v3 != 1)
  {
    v6 = 0;
    v7 = a3[3] + 4 * (v4 - 1) * v3;
    do
    {
      *(v7 + 4 * v6++) = 0;
    }

    while (v5 != v6);
  }

  if (v4)
  {
    v8 = 0;
    v9 = a3[3] + 4 * v5;
    do
    {
      *(v9 + 4 * v3 * v8++) = 1065353216;
    }

    while (v4 != v8);
  }

  v10 = result[50];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = result[53];
    v14 = result[55];
    do
    {
      if (v14)
      {
        v15 = 0;
        v16 = result[54] != 0;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (v13)
            {
              v18 = 0;
              v19 = result[49];
              v20 = *(a2 + 16);
              v21 = *(a2 + 24) + 4 * v12;
              v22 = a3[3] + 4 * v3 * (i + v15 * v14);
              v23 = (i << v16) + (v15 << v16) * v19;
              v24 = v11;
              do
              {
                v25 = v24;
                v26 = v23;
                v27 = v13;
                do
                {
                  *(v22 + 4 * v25++) = *(v21 + 4 * v20 * v26++);
                  --v27;
                }

                while (v27);
                ++v18;
                v23 += v19;
                v24 += v13;
              }

              while (v18 != v13);
            }
          }

          ++v15;
        }

        while (v15 != v14);
      }

      ++v12;
      v11 += v13 * v13;
    }

    while (v12 != v10);
  }

  return result;
}

void ConvolutionLayer<float,float,float>::unfoldDXtoOrgDX(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  bzero(*(a3 + 24), 4 * *(a3 + 8) * *(a3 + 16));
  v6 = a1[50];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = a1[53];
    v10 = v9 * v9;
    v11 = a1[55];
    v12 = v11 * v11;
    do
    {
      if (v12)
      {
        v13 = 0;
        v14 = a1[54];
        do
        {
          v15 = v13 / v11;
          v16 = v13 % v11;
          if (v14)
          {
            v15 *= 2;
            v16 *= 2;
          }

          if (v10)
          {
            v17 = 0;
            v18 = a1[49];
            v19 = *(a2 + 24) + 4 * *(a2 + 16) * v13;
            v20 = *(a3 + 16);
            v21 = *(a3 + 24) + 4 * v8;
            do
            {
              v22 = v20 * (v17 % v9 + v16 + (v17 / v9 + v15) * v18);
              *(v21 + 4 * v22) = *(v19 + 4 * (v7 + v17++)) + *(v21 + 4 * v22);
            }

            while (v10 != v17);
          }

          ++v13;
        }

        while (v13 != v12);
      }

      ++v8;
      v7 += v10;
    }

    while (v8 != v6);
  }
}

float ConvolutionLayer<float,float,float>::intializeInputPattern(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  *(v3 + 4 * (*(a2 + 8) - 1) * v4) = 1065353216;
  v5 = *a3;
  v6 = a3[1];
  v7 = v6 - *a3;
  if (v6 != *a3)
  {
    v8 = 0;
    v9 = v7 >> 2;
    do
    {
      result = *(v5 + 4 * v8);
      *(v3 + 4 * v4 * v8++) = result;
    }

    while (v9 > v8);
  }

  return result;
}

void ConvolutionLayer<float,float,float>::overrideBiasWithOne(uint64_t a1, void *a2, int a3)
{
  v4 = a2[1];
  v3 = a2[2];
  if (a3)
  {
    v5 = v3 - 1;
    if (v3 != 1)
    {
      v6 = 0;
      v7 = a2[3] + 4 * (v4 - 1) * v3;
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v5 != v6);
    }

    if (v4)
    {
      v8 = 0;
      v9 = a2[3] + 4 * v5;
      do
      {
        *(v9 + 4 * v3 * v8++) = 1065353216;
      }

      while (v4 != v8);
    }
  }

  else
  {
    v10 = a2[3];
    v11 = v4 - 1;
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        *(v10 + (((v3 << 32) - 0x100000000) >> 30) + 4 * v3 * i) = 0;
      }
    }

    v13 = v10 + 4 * v3 * v11;
    v14 = v3 - 1;
    if (v14)
    {
      for (j = 0; j != v14; ++j)
      {
        *(v13 + 4 * j) = 0;
      }
    }

    *(v13 + 4 * v14) = 1065353216;
  }
}

uint64_t ConvolutionLayer<float,float,float>::flattenOutput(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 240) == 1)
  {
    v3 = *(a2 + 8) - 1;
    if (*(a2 + 8) != 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a2 + 16);
      do
      {
        if (v6 != 1)
        {
          v7 = 0;
          v8 = *(a2 + 24) + 4 * v6 * v5;
          v9 = *(a3 + 24);
          v10 = v4;
          v11 = v6 - 1;
          do
          {
            *(v9 + 4 * v10++) = *(v8 + 4 * v7++);
            --v11;
          }

          while (v11);
        }

        ++v5;
        v4 += v6 - 1;
      }

      while (v5 != v3);
    }

    *(*(a3 + 24) + (((*(a3 + 16) << 32) - 0x100000000) >> 30)) = 1065353216;
  }

  return result;
}

void sub_247817FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x24C1AA8A0](a12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void sub_247818124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    MEMORY[0x24C1AA8A0](a16, 0x1000C8052888210);
  }

  if (a12)
  {
    MEMORY[0x24C1AA8A0](a12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void Layer<float,float,float>::computeDeltaY(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[1];
  v4 = a4[2];
  if (v5)
  {
    LODWORD(v6) = 0;
    do
    {
      if (v4)
      {
        v7 = *(a3 + 24) + 4 * *(a3 + 16) * v6;
        v8 = *(a2 + 24) + 4 * *(a2 + 16) * v6;
        v9 = a4[3] + 4 * v4 * v6;
        v10 = 1;
        do
        {
          *(v9 + 4 * (v10 - 1)) = *(v8 + 4 * (v10 - 1)) * (*(v7 + 4 * (v10 - 1)) * (1.0 - *(v7 + 4 * (v10 - 1))));
        }

        while (v4 > v10++);
      }

      v6 = (v6 + 1);
    }

    while (v5 > v6);
  }

  *(a4[3] + 4 * (v5 - 1) * v4 + (((v4 << 32) - 0x100000000) >> 30)) = 0;
}

void sub_247818308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a12)
  {
    MEMORY[0x24C1AA8A0](a12, 0x1000C8052888210);
  }

  if (a16)
  {
    MEMORY[0x24C1AA8A0](a16, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void sub_2478184E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    MEMORY[0x24C1AA8A0](a16, 0x1000C8052888210);
  }

  if (a12)
  {
    MEMORY[0x24C1AA8A0](a12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void Layer<float,float,float>::updateWfromAggregateOrSignal(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  if (a3 >= 2)
  {
    LODWORD(v6) = 1065353216;
    matrix<float>::operator*(v7, a2);
  }

  matrix<float>::transposed(v5, *(*(a4 + 152) + 8 * a5));
}

void sub_247818760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v22 - 88) = &unk_285963160;
  v24 = *(v22 - 64);
  if (v24)
  {
    MEMORY[0x24C1AA8A0](v24, v21);
  }

  if (a21)
  {
    MEMORY[0x24C1AA8A0](a21, v21);
  }

  if (a17)
  {
    MEMORY[0x24C1AA8A0](a17, v21);
  }

  if (a13)
  {
    MEMORY[0x24C1AA8A0](a13, v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Layer<float,float,float>::aggregateThreadDW(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    matrix<float>::transposed(v4, *(*(a2 + 152) + 8 * a3));
  }

  *(*(result + 88) + 4 * (*(result + 72) - 1) * *(result + 80) + (((*(result + 80) << 32) - 0x100000000) >> 30)) = 1065353216;
  return result;
}

void sub_2478189E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a25)
  {
    MEMORY[0x24C1AA8A0](a25, v25);
  }

  if (a21)
  {
    MEMORY[0x24C1AA8A0](a21, v25);
  }

  if (a17)
  {
    MEMORY[0x24C1AA8A0](a17, v25);
  }

  if (a13)
  {
    MEMORY[0x24C1AA8A0](a13, v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_247818B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    MEMORY[0x24C1AA8A0](a16, 0x1000C8052888210);
  }

  if (a12)
  {
    MEMORY[0x24C1AA8A0](a12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

float Layer<float,float,float>::intializeInputPattern(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 24);
  *(v3 + 4 * (*(a2 + 16) - 1) * *(a2 + 16)) = 1065353216;
  v4 = *a3;
  v5 = a3[1];
  v6 = v5 - *a3;
  if (v5 != *a3)
  {
    v7 = 0;
    v8 = v6 >> 2;
    do
    {
      result = *(v4 + 4 * v7);
      *(v3 + 4 * v7++) = result;
    }

    while (v8 > v7);
  }

  return result;
}

void Layer<float,float,float>::overrideBiasWithOne(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 1.0;
  }

  *(*(a2 + 24) + (((*(a2 + 16) << 32) - 0x100000000) >> 30)) = v3;
}

void matrix<float>::operator*(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a3 + 16);
  *a1 = &unk_285963160;
  a1[1] = v3;
  a1[2] = v4;
  operator new[]();
}

void sub_247818E1C(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[3];
  if (v5)
  {
    MEMORY[0x24C1AA8A0](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

void matrix<float>::operator=(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    MEMORY[0x24C1AA8A0](v4, 0x1000C8052888210);
  }

  v5 = *(a2 + 16);
  a1[1] = *(a2 + 8);
  a1[2] = v5;
  operator new[]();
}

void matrix<float>::transposed(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *a1 = &unk_285963160;
  a1[1] = v2;
  a1[2] = v3;
  operator new[]();
}

void *matrix<float>::operator+=(void *result, float *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = result[2];
    v6 = 4 * v5;
    do
    {
      if (v5)
      {
        v7 = (result[3] + v3);
        v8 = a2;
        v9 = v5;
        do
        {
          v10 = *v8++;
          *v7 = v10 + *v7;
          ++v7;
          --v9;
        }

        while (v9);
      }

      ++v4;
      v3 += v6;
      a2 = (a2 + v6);
    }

    while (v4 != v2);
  }

  return result;
}

void matrix<float>::operator*(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *a1 = &unk_285963160;
  a1[1] = v2;
  a1[2] = v3;
  operator new[]();
}

void matrix<float>::operator+(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *a1 = &unk_285963160;
  a1[1] = v2;
  a1[2] = v3;
  operator new[]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Layer<float,float,float> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float PoolingLayer<float,float,float>::intializeInputPattern(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  *(v3 + 4 * (*(a2 + 8) - 1) * v4) = 1065353216;
  v5 = *a3;
  v6 = a3[1];
  v7 = v6 - *a3;
  if (v6 != *a3)
  {
    v8 = 0;
    v9 = v7 >> 2;
    do
    {
      result = *(v5 + 4 * v8);
      *(v3 + 4 * v4 * v8++) = result;
    }

    while (v9 > v8);
  }

  return result;
}

void PoolingLayer<float,float,float>::overrideBiasWithOne(uint64_t a1, void *a2, int a3)
{
  v4 = a2[1];
  v3 = a2[2];
  if (a3)
  {
    v5 = v3 - 1;
    if (v3 != 1)
    {
      v6 = 0;
      v7 = a2[3] + 4 * (v4 - 1) * v3;
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v5 != v6);
    }

    if (v4)
    {
      v8 = 0;
      v9 = a2[3] + 4 * v5;
      do
      {
        *(v9 + 4 * v3 * v8++) = 1065353216;
      }

      while (v4 != v8);
    }
  }

  else
  {
    v10 = a2[3];
    v11 = v4 - 1;
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        *(v10 + (((v3 << 32) - 0x100000000) >> 30) + 4 * v3 * i) = 0;
      }
    }

    v13 = v10 + 4 * v3 * v11;
    v14 = v3 - 1;
    if (v14)
    {
      for (j = 0; j != v14; ++j)
      {
        *(v13 + 4 * j) = 0;
      }
    }

    *(v13 + 4 * v14) = 1065353216;
  }
}

uint64_t PoolingLayer<float,float,float>::flattenOutput(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 208) == 1)
  {
    v3 = *(a2 + 8) - 1;
    if (*(a2 + 8) != 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a2 + 16);
      do
      {
        if (v6 != 1)
        {
          v7 = 0;
          v8 = *(a2 + 24) + 4 * v6 * v5;
          v9 = *(a3 + 24);
          v10 = v4;
          v11 = v6 - 1;
          do
          {
            *(v9 + 4 * v10++) = *(v8 + 4 * v7++);
            --v11;
          }

          while (v11);
        }

        ++v5;
        v4 += v6 - 1;
      }

      while (v5 != v3);
    }

    *(*(a3 + 24) + (((*(a3 + 16) << 32) - 0x100000000) >> 30)) = 1065353216;
  }

  return result;
}

uint64_t PoolingLayer<float,float,float>::feedForward(_DWORD *a1, void *a2, int a3)
{
  v5 = *(a2[25] + 8 * a3);
  v6 = a1[48];
  if (v6)
  {
    v7 = 0;
    v8 = a2[31] + 32 * a3;
    v9 = *(a2[19] + 8 * a3);
    v10 = *(v9 + 8) - 1;
    v13 = v9 + 16;
    v12 = *(v9 + 16);
    v11 = *(v13 + 8);
    v14 = v11 + 4 * v12 * v10;
    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    v17 = v15 + 4 * v16 * (*(v5 + 8) - 1);
    v18 = a1[51];
    v19 = v18;
    do
    {
      if (v19)
      {
        v20 = 0;
        v21 = a1[50];
        v22 = v21;
        do
        {
          if (v18)
          {
            v23 = 0;
            v24 = v20 * v19;
            v25 = v22 * a1[47] * v20;
            do
            {
              LODWORD(v26) = v23 + v24;
              if (v22)
              {
                v27 = 0;
                v26 = v26;
                v28 = v25 + v21 * v23;
                v29 = -1000000.0;
                do
                {
                  if (v21)
                  {
                    v30 = 0;
                    v31 = v28 + a1[47] * v27;
                    do
                    {
                      v32 = *(v11 + 4 * v7 + 4 * v12 * (v31 + v30));
                      if (v32 > v29)
                      {
                        *(*(v8 + 24) + 4 * *(v8 + 16) * v26 + 4 * v7) = v31 + v30;
                        v21 = a1[50];
                        v29 = v32;
                      }

                      ++v30;
                    }

                    while (v30 < v21);
                  }

                  ++v27;
                }

                while (v27 < v21);
                v18 = a1[51];
                v22 = v21;
              }

              else
              {
                v26 = v26;
                v29 = -1000000.0;
              }

              *(v15 + 4 * v7 + 4 * v26 * v16) = v29;
              ++v23;
            }

            while (v23 < v18);
          }

          ++v20;
          v19 = v18;
        }

        while (v20 < v18);
        v6 = a1[48];
        v19 = v18;
      }

      *(v17 + 4 * v7) = *(v14 + 4 * v7);
      ++v7;
    }

    while (v7 < v6);
  }

  v33 = *(*a1 + 32);

  return v33();
}

float PoolingLayer<float,float,float>::backprop(_DWORD *a1, void *a2, int a3, float result)
{
  v4 = a1[48];
  if (v4)
  {
    v5 = 0;
    v6 = a2[31] + 32 * a3;
    v7 = *(a2[28] + 8 * a3);
    v8 = *(a2[22] + 8 * a3);
    v9 = a1[51];
    v10 = *(v8 + 8) - 1;
    v13 = v8 + 16;
    v12 = *(v8 + 16);
    v11 = *(v13 + 8);
    v14 = v11 + 4 * v10 * v12;
    v15 = *(v7 + 8) - 1;
    v18 = v7 + 16;
    v17 = *(v7 + 16);
    v16 = *(v18 + 8);
    v19 = v16 + 4 * v17 * v15;
    do
    {
      if (v9)
      {
        v20 = 0;
        v21 = 0;
        v22 = a1[50];
        v23 = a1[47];
        v24 = v5;
        v25 = v16 + 4 * v5;
        do
        {
          v26 = 0;
          v27 = v20;
          do
          {
            if (v22)
            {
              v28 = 0;
              v29 = v26 + v21 * v9;
              v30 = *(v11 + 4 * v5 + 4 * v12 * v29);
              v31 = *(*(v6 + 24) + 4 * *(v6 + 16) * v29 + 4 * v5);
              v32 = v27;
              do
              {
                v33 = v32;
                v34 = v22;
                do
                {
                  if (v31 == v33)
                  {
                    *(v25 + 4 * v17 * v31) = v30;
                  }

                  else
                  {
                    *(v25 + 4 * v17 * v33) = 0;
                  }

                  ++v33;
                  --v34;
                }

                while (v34);
                ++v28;
                v32 += v23;
              }

              while (v28 != v22);
            }

            ++v26;
            v27 += v22;
          }

          while (v26 != v9);
          ++v21;
          v20 += v22 * v23;
        }

        while (v21 != v9);
      }

      else
      {
        v24 = v5;
      }

      result = *(v14 + 4 * v24);
      *(v19 + 4 * v24) = result;
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void Layer<float,float,float>::Layer(uint64_t a1, __int128 *a2, int a3, int a4)
{
  *a1 = &unk_285962FF8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v7;
  }

  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  *(a1 + 56) = 1;
  *(a1 + 64) = &unk_285963160;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_285963160;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = &unk_285963160;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  matrix<float>::resize();
}

void sub_2478199C4(_Unwind_Exception *exception_object)
{
  *(v1 + 128) = v5;
  v7 = *(v1 + 152);
  if (v7)
  {
    MEMORY[0x24C1AA8A0](v7, 0x1000C8052888210);
  }

  *(v1 + 96) = v4;
  v8 = *(v1 + 120);
  if (v8)
  {
    MEMORY[0x24C1AA8A0](v8, 0x1000C8052888210);
  }

  *(v1 + 64) = v3;
  v9 = *(v1 + 88);
  if (v9)
  {
    MEMORY[0x24C1AA8A0](v9, 0x1000C8052888210);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>>>::destroy(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      MEMORY[0x24C1AA8A0](v2 - 16, 0x1000C8000313F17);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247819BA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_247819C1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,FixedHeap<unsigned int,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 2;
  v124 = a2 - 6;
  v125 = a2 - 4;
  v10 = v8;
  v127 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 4;
    v12 = v11 - 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(v9, v10);
      if (result)
      {
        v81 = *v10;
        v82 = *(v10 + 8);
LABEL_131:
        if (v10 != v9)
        {
          *v10 = *(a2 - 2);
          *(v10 + 8) = *(a2 - 2);
        }

LABEL_133:
        *(a2 - 2) = v81;
        *(a2 - 2) = v82;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v85 = (v10 + 16);
          if ((v10 + 16) != a2)
          {
            v86 = 0;
            v87 = v10;
            do
            {
              v88 = v87;
              v87 = v85;
              result = (*a3)(v85, v88);
              if (result)
              {
                v129 = *v87;
                v89 = v86;
                while (1)
                {
                  v90 = v10 + v89;
                  *(v90 + 16) = *(v10 + v89);
                  *(v90 + 24) = *(v10 + v89 + 8);
                  if (!v89)
                  {
                    break;
                  }

                  v89 -= 16;
                  result = (*a3)(&v129, (v89 + v10));
                  if ((result & 1) == 0)
                  {
                    v91 = v10 + v89 + 16;
                    goto LABEL_147;
                  }
                }

                v91 = v10;
LABEL_147:
                if (v91 != &v129)
                {
                  *v91 = v129;
                  *(v91 + 8) = DWORD2(v129);
                }
              }

              v85 = v87 + 1;
              v86 += 16;
            }

            while (v87 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v120 = (v10 + 16);
        if ((v10 + 16) != a2)
        {
          v121 = v10 - 16;
          do
          {
            v122 = v8;
            v8 = v120;
            result = (*a3)(v120, v122);
            if (result)
            {
              v129 = *v8;
              v123 = v121;
              do
              {
                *(v123 + 32) = *(v123 + 16);
                *(v123 + 40) = *(v123 + 24);
                result = (*a3)(&v129, v123);
                v123 -= 16;
              }

              while ((result & 1) != 0);
              if ((v123 + 32) != &v129)
              {
                *(v123 + 32) = v129;
                *(v123 + 40) = DWORD2(v129);
              }
            }

            v120 = (v8 + 16);
            v121 += 16;
          }

          while ((v8 + 16) != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = v12 >> 1;
        v93 = v12 >> 1;
        do
        {
          v94 = v93;
          if (v92 >= v93)
          {
            v95 = (2 * v93) | 1;
            v96 = v8 + 16 * v95;
            if (2 * v93 + 2 < v11 && (*a3)((v8 + 16 * v95), (v96 + 16)))
            {
              v96 += 16;
              v95 = 2 * v94 + 2;
            }

            v97 = v8 + 16 * v94;
            result = (*a3)(v96, v97);
            a2 = v127;
            if ((result & 1) == 0)
            {
              v129 = *v97;
              do
              {
                v98 = v96;
                if (v97 != v96)
                {
                  *v97 = *v96;
                  *(v97 + 8) = *(v96 + 8);
                }

                if (v92 < v95)
                {
                  break;
                }

                v99 = (2 * v95) | 1;
                v96 = v8 + 16 * v99;
                v100 = 2 * v95 + 2;
                if (v100 < v11 && (*a3)((v8 + 16 * v99), (v96 + 16)))
                {
                  v96 += 16;
                  v99 = v100;
                }

                result = (*a3)(v96, &v129);
                v97 = v98;
                v95 = v99;
              }

              while (!result);
              if (v98 != &v129)
              {
                *v98 = v129;
                *(v98 + 8) = DWORD2(v129);
              }

              a2 = v127;
            }
          }

          v93 = v94 - 1;
        }

        while (v94);
        do
        {
          v101 = 0;
          v102 = *v8;
          v128 = *(v8 + 8);
          v103 = v8;
          do
          {
            v104 = v103 + 16 * v101;
            v105 = v104 + 16;
            v106 = 2 * v101;
            v101 = (2 * v101) | 1;
            v107 = v106 + 2;
            if (v106 + 2 < v11)
            {
              v108 = v104 + 32;
              result = (*a3)((v104 + 16), (v104 + 32));
              if (result)
              {
                v105 = v108;
                v101 = v107;
              }
            }

            if (v103 != v105)
            {
              *v103 = *v105;
              *(v103 + 8) = *(v105 + 8);
            }

            v103 = v105;
          }

          while (v101 <= ((v11 - 2) >> 1));
          v109 = a2 - 2;
          if (v105 == a2 - 2)
          {
            *v105 = v102;
            *(v105 + 8) = v128;
          }

          else
          {
            *v105 = *(a2 - 2);
            *(v105 + 8) = *(a2 - 2);
            *(a2 - 2) = v102;
            *(a2 - 2) = v128;
            v110 = (v105 - v8 + 16) >> 4;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = v8 + 16 * (v112 >> 1);
              result = (*a3)(v114, v105);
              if (result)
              {
                v129 = *v105;
                do
                {
                  v115 = v114;
                  if (v105 != v114)
                  {
                    *v105 = *v114;
                    *(v105 + 8) = *(v114 + 8);
                  }

                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = v8 + 16 * v113;
                  result = (*a3)(v114, &v129);
                  v105 = v115;
                }

                while ((result & 1) != 0);
                if (v115 != &v129)
                {
                  *v115 = v129;
                  *(v115 + 8) = DWORD2(v129);
                }
              }
            }
          }

          a2 = v109;
          v111 = v11-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v13 = v11 >> 1;
    v14 = v10 + 16 * (v11 >> 1);
    if (v11 >= 0x81)
    {
      v15 = (*a3)((v8 + 16 * (v11 >> 1)), v8);
      v16 = (*a3)(v9, v14);
      if (v15)
      {
        v17 = *v8;
        v18 = *(v8 + 8);
        if (v16)
        {
          if (v8 != v9)
          {
            *v8 = *(a2 - 2);
            *(v8 + 8) = *(a2 - 2);
          }

          goto LABEL_34;
        }

        *v8 = *v14;
        *(v8 + 8) = *(v14 + 8);
        *v14 = v17;
        *(v14 + 8) = v18;
        if ((*a3)(v9, v14))
        {
          v17 = *v14;
          v18 = *(v14 + 8);
          if (v14 != v9)
          {
            *v14 = *(a2 - 2);
            *(v14 + 8) = *(a2 - 2);
          }

LABEL_34:
          *(a2 - 2) = v17;
          *(a2 - 2) = v18;
        }
      }

      else if (v16)
      {
        v23 = *v14;
        v24 = *(v14 + 8);
        if (v14 != v9)
        {
          *v14 = *(a2 - 2);
          *(v14 + 8) = *(a2 - 2);
        }

        *(a2 - 2) = v23;
        *(a2 - 2) = v24;
        if ((*a3)(v14, v8))
        {
          v25 = *v8;
          v26 = *(v8 + 8);
          *v8 = *v14;
          *(v8 + 8) = *(v14 + 8);
          *v14 = v25;
          *(v14 + 8) = v26;
        }
      }

      v31 = 16 * v13;
      v32 = 16 * v13 + v8 - 16;
      v33 = (*a3)(v32, (v8 + 16));
      v34 = (*a3)(v125, v32);
      if (v33)
      {
        v35 = *(v8 + 16);
        v36 = *(v8 + 24);
        if (v34)
        {
          v37 = v127;
          if ((v8 + 16) != v125)
          {
            *(v8 + 16) = *(v127 - 4);
            *(v8 + 24) = *(v127 - 6);
          }

          goto LABEL_51;
        }

        *(v8 + 16) = *v32;
        *(v8 + 24) = *(v32 + 8);
        *v32 = v35;
        *(v32 + 8) = v36;
        if ((*a3)(v125, v32))
        {
          v35 = *v32;
          v36 = *(v32 + 8);
          v37 = v127;
          if (v32 != v125)
          {
            *v32 = *(v127 - 4);
            *(v32 + 8) = *(v127 - 6);
          }

LABEL_51:
          *(v37 - 4) = v35;
          *(v37 - 6) = v36;
        }
      }

      else if (v34)
      {
        v38 = *v32;
        v39 = *(v32 + 8);
        if (v32 != v125)
        {
          *v32 = *(v127 - 4);
          *(v32 + 8) = *(v127 - 6);
        }

        *(v127 - 4) = v38;
        *(v127 - 6) = v39;
        if ((*a3)(v32, (v8 + 16)))
        {
          v40 = *(v8 + 16);
          v41 = *(v8 + 24);
          *(v8 + 16) = *v32;
          *(v8 + 24) = *(v32 + 8);
          *v32 = v40;
          *(v32 + 8) = v41;
        }
      }

      v42 = v31 + v8 + 16;
      v43 = (*a3)(v42, (v8 + 32));
      v44 = (*a3)(v124, v42);
      if (v43)
      {
        v45 = *(v8 + 32);
        v46 = *(v8 + 40);
        if (v44)
        {
          a2 = v127;
          if ((v8 + 32) != v124)
          {
            *(v8 + 32) = *(v127 - 6);
            *(v8 + 40) = *(v127 - 10);
          }

          goto LABEL_64;
        }

        *(v8 + 32) = *v42;
        *(v8 + 40) = *(v42 + 8);
        *v42 = v45;
        *(v42 + 8) = v46;
        a2 = v127;
        if ((*a3)(v124, v42))
        {
          v45 = *v42;
          v46 = *(v42 + 8);
          if (v42 != v124)
          {
            *v42 = *(v127 - 6);
            *(v42 + 8) = *(v127 - 10);
          }

LABEL_64:
          *(a2 - 6) = v45;
          *(a2 - 10) = v46;
        }
      }

      else
      {
        a2 = v127;
        if (v44)
        {
          v47 = *v42;
          v48 = *(v42 + 8);
          if (v42 != v124)
          {
            *v42 = *(v127 - 6);
            *(v42 + 8) = *(v127 - 10);
          }

          *(v127 - 6) = v47;
          *(v127 - 10) = v48;
          if ((*a3)(v42, (v8 + 32)))
          {
            v49 = *(v8 + 32);
            v50 = *(v8 + 40);
            *(v8 + 32) = *v42;
            *(v8 + 40) = *(v42 + 8);
            *v42 = v49;
            *(v42 + 8) = v50;
          }
        }
      }

      v51 = (*a3)(v14, v32);
      v52 = (*a3)(v42, v14);
      if (v51)
      {
        v53 = *v32;
        v54 = *(v32 + 8);
        if (v52)
        {
          *v32 = *v42;
          *(v32 + 8) = *(v42 + 8);
          *v42 = v53;
          *(v42 + 8) = v54;
          v55 = *v14;
LABEL_74:
          v62 = *v8;
          v63 = *(v8 + 8);
          *v8 = v55;
          *(v8 + 8) = *(v14 + 8);
          *v14 = v62;
          *(v14 + 8) = v63;
          goto LABEL_75;
        }

        *v32 = *v14;
        *(v32 + 8) = *(v14 + 8);
        *v14 = v53;
        *(v14 + 8) = v54;
        v60 = (*a3)(v42, v14);
        v55 = *v14;
        if (!v60)
        {
          goto LABEL_74;
        }

        v61 = *(v14 + 8);
        v58 = *v42;
        *v14 = *v42;
        *(v14 + 8) = *(v42 + 8);
        *v42 = v55;
        *(v42 + 8) = v61;
      }

      else
      {
        v55 = *v14;
        if (!v52)
        {
          goto LABEL_74;
        }

        v56 = *(v14 + 8);
        *v14 = *v42;
        *(v14 + 8) = *(v42 + 8);
        *v42 = v55;
        *(v42 + 8) = v56;
        v57 = (*a3)(v14, v32);
        v55 = *v14;
        if (!v57)
        {
          goto LABEL_74;
        }

        v58 = *v32;
        v59 = *(v32 + 8);
        *v32 = v55;
        *(v32 + 8) = *(v14 + 8);
        *v14 = v58;
        *(v14 + 8) = v59;
      }

      v55 = v58;
      goto LABEL_74;
    }

    v19 = (*a3)(v8, (v8 + 16 * (v11 >> 1)));
    v20 = (*a3)(v9, v8);
    if ((v19 & 1) == 0)
    {
      if (v20)
      {
        v27 = *v8;
        v28 = *(v8 + 8);
        if (v8 != v9)
        {
          *v8 = *(a2 - 2);
          *(v8 + 8) = *(a2 - 2);
        }

        *(a2 - 2) = v27;
        *(a2 - 2) = v28;
        if ((*a3)(v8, v14))
        {
          v29 = *v14;
          v30 = *(v14 + 8);
          *v14 = *v8;
          *(v14 + 8) = *(v8 + 8);
          *v8 = v29;
          *(v8 + 8) = v30;
        }
      }

      goto LABEL_75;
    }

    v21 = *v14;
    v22 = *(v14 + 8);
    if (v20)
    {
      if (v14 != v9)
      {
        *v14 = *(a2 - 2);
        *(v14 + 8) = *(a2 - 2);
      }
    }

    else
    {
      *v14 = *v8;
      *(v14 + 8) = *(v8 + 8);
      *v8 = v21;
      *(v8 + 8) = v22;
      if (!(*a3)(v9, v8))
      {
        goto LABEL_75;
      }

      v21 = *v8;
      v22 = *(v8 + 8);
      if (v8 != v9)
      {
        *v8 = *(a2 - 2);
        *(v8 + 8) = *(a2 - 2);
      }
    }

    *(a2 - 2) = v21;
    *(a2 - 2) = v22;
LABEL_75:
    --a4;
    if (a5 & 1) != 0 || ((*a3)((v8 - 16), v8))
    {
      v64 = 0;
      v129 = *v8;
      do
      {
        v64 += 16;
      }

      while (((*a3)((v64 + v8), &v129) & 1) != 0);
      v65 = v8 + v64;
      v66 = a2;
      if (v64 == 16)
      {
        v66 = a2;
        do
        {
          if (v65 >= v66)
          {
            break;
          }

          v66 -= 2;
        }

        while (((*a3)(v66, &v129) & 1) == 0);
      }

      else
      {
        do
        {
          v66 -= 2;
        }

        while (!(*a3)(v66, &v129));
      }

      v10 = v8 + v64;
      if (v65 < v66)
      {
        v67 = v66;
        do
        {
          v68 = *v10;
          v69 = *(v10 + 8);
          *v10 = *v67;
          *(v10 + 8) = *(v67 + 8);
          *v67 = v68;
          *(v67 + 8) = v69;
          do
          {
            v10 += 16;
          }

          while (((*a3)(v10, &v129) & 1) != 0);
          do
          {
            v67 -= 16;
          }

          while (!(*a3)(v67, &v129));
        }

        while (v10 < v67);
      }

      if (v10 - 16 != v8)
      {
        *v8 = *(v10 - 16);
        *(v8 + 8) = *(v10 - 8);
      }

      if ((v10 - 16) != &v129)
      {
        *(v10 - 16) = v129;
        *(v10 - 8) = DWORD2(v129);
      }

      if (v65 < v66)
      {
        goto LABEL_98;
      }

      v70 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*>(v8, (v10 - 16), a3);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*>(v10, a2, a3);
      if (result)
      {
        a2 = (v10 - 16);
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_98:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*,false>(v8, v10 - 16, a3, a4, a5 & 1);
        goto LABEL_99;
      }
    }

    else
    {
      v129 = *v8;
      result = (*a3)(&v129, v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v10 += 16;
          result = (*a3)(&v129, v10);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v71 = (v8 + 16);
        do
        {
          v10 = v71;
          if (v71 >= a2)
          {
            break;
          }

          result = (*a3)(&v129, v71);
          v71 = (v10 + 16);
        }

        while (!result);
      }

      v72 = a2;
      if (v10 < a2)
      {
        v72 = a2;
        do
        {
          v72 -= 2;
          result = (*a3)(&v129, v72);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v72)
      {
        v73 = *v10;
        v74 = *(v10 + 8);
        *v10 = *v72;
        *(v10 + 8) = *(v72 + 2);
        *v72 = v73;
        *(v72 + 2) = v74;
        do
        {
          v10 += 16;
        }

        while (!(*a3)(&v129, v10));
        do
        {
          v72 -= 2;
          result = (*a3)(&v129, v72);
        }

        while ((result & 1) != 0);
      }

      if (v10 - 16 != v8)
      {
        *v8 = *(v10 - 16);
        *(v8 + 8) = *(v10 - 8);
      }

      if ((v10 - 16) != &v129)
      {
        *(v10 - 16) = v129;
        *(v10 - 8) = DWORD2(v129);
      }

LABEL_99:
      a5 = 0;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*,0>(v10, (v10 + 16), (v10 + 32), v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*,0>(v10, (v10 + 16), (v10 + 32), (v10 + 48), a3);
      result = (*a3)(v9, (v10 + 48));
      if (!result)
      {
        return result;
      }

      v75 = *(v10 + 48);
      v76 = *(v10 + 56);
      if ((v10 + 48) != v9)
      {
        *(v10 + 48) = *(a2 - 2);
        *(v10 + 56) = *(a2 - 2);
      }

      *(a2 - 2) = v75;
      *(a2 - 2) = v76;
      result = (*a3)((v10 + 48), (v10 + 32));
      if (!result)
      {
        return result;
      }

      v77 = *(v10 + 32);
      v78 = *(v10 + 40);
      *(v10 + 32) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 56);
      *(v10 + 48) = v77;
      *(v10 + 56) = v78;
      result = (*a3)((v10 + 32), (v10 + 16));
      if (!result)
      {
        return result;
      }

      v79 = *(v10 + 16);
      v80 = *(v10 + 24);
      *(v10 + 16) = *(v10 + 32);
      *(v10 + 24) = *(v10 + 40);
      *(v10 + 32) = v79;
      *(v10 + 40) = v80;
      result = (*a3)((v10 + 16), v10);
LABEL_195:
      if (result)
      {
        v118 = *v10;
        v119 = *(v10 + 8);
        *v10 = *(v10 + 16);
        *(v10 + 8) = *(v10 + 24);
        *(v10 + 16) = v118;
        *(v10 + 24) = v119;
      }

      return result;
    }

    goto LABEL_10;
  }

  v83 = (v10 + 16);
  v84 = (*a3)((v10 + 16), v10);
  result = (*a3)(v9, (v10 + 16));
  if ((v84 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v116 = *(v10 + 16);
    v117 = *(v10 + 24);
    if (v83 != v9)
    {
      *(v10 + 16) = *(a2 - 2);
      *(v10 + 24) = *(a2 - 2);
    }

    *(a2 - 2) = v116;
    *(a2 - 2) = v117;
    result = (*a3)((v10 + 16), v10);
    goto LABEL_195;
  }

  v81 = *v10;
  v82 = *(v10 + 8);
  if (result)
  {
    goto LABEL_131;
  }

  *v10 = *(v10 + 16);
  *(v10 + 8) = *(v10 + 24);
  *(v10 + 16) = v81;
  *(v10 + 24) = v82;
  result = (*a3)(v9, (v10 + 16));
  if (result)
  {
    v81 = *(v10 + 16);
    v82 = *(v10 + 24);
    if (v83 != v9)
    {
      *(v10 + 16) = *(a2 - 2);
      *(v10 + 24) = *(a2 - 2);
    }

    goto LABEL_133;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v12 = *a1;
    v13 = *(a1 + 2);
    if (v11)
    {
      if (a1 != a3)
      {
        *a1 = *a3;
        *(a1 + 2) = *(a3 + 2);
      }

LABEL_17:
      *a3 = v12;
      *(a3 + 2) = v13;
      goto LABEL_18;
    }

    if (a1 != a2)
    {
      *a1 = *a2;
      *(a1 + 2) = *(a2 + 2);
    }

    *a2 = v12;
    *(a2 + 2) = v13;
    if ((*a5)(a3, a2))
    {
      v12 = *a2;
      v13 = *(a2 + 2);
      if (a2 != a3)
      {
        *a2 = *a3;
        *(a2 + 2) = *(a3 + 2);
      }

      goto LABEL_17;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    if (a2 != a3)
    {
      *a2 = *a3;
      *(a2 + 2) = *(a3 + 2);
    }

    *a3 = v14;
    *(a3 + 2) = v15;
    if ((*a5)(a2, a1))
    {
      v16 = *a1;
      v17 = *(a1 + 2);
      if (a1 != a2)
      {
        *a1 = *a2;
        *(a1 + 2) = *(a2 + 2);
      }

      *a2 = v16;
      *(a2 + 2) = v17;
    }
  }

LABEL_18:
  result = (*a5)(a4, a3);
  if (result)
  {
    v19 = *a3;
    v20 = *(a3 + 2);
    if (a3 != a4)
    {
      *a3 = *a4;
      *(a3 + 2) = *(a4 + 2);
    }

    *a4 = v19;
    *(a4 + 2) = v20;
    result = (*a5)(a3, a2);
    if (result)
    {
      v21 = *a2;
      v22 = *(a2 + 2);
      if (a2 != a3)
      {
        *a2 = *a3;
        *(a2 + 2) = *(a3 + 2);
      }

      *a3 = v21;
      *(a3 + 2) = v22;
      result = (*a5)(a2, a1);
      if (result)
      {
        v23 = *a1;
        v24 = *(a1 + 2);
        if (a1 != a2)
        {
          *a1 = *a2;
          *(a1 + 2) = *(a2 + 2);
        }

        *a2 = v23;
        *(a2 + 2) = v24;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*>(uint64_t a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v19 = a1 + 16;
        v20 = a2 - 2;
        v21 = (*a3)((a1 + 16), a1);
        v22 = (*a3)(a2 - 2, (a1 + 16));
        if (v21)
        {
          v8 = *a1;
          v9 = *(a1 + 8);
          if (!v22)
          {
            *a1 = *(a1 + 16);
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 16) = v8;
            *(a1 + 24) = v9;
            if (!(*a3)(a2 - 2, (a1 + 16)))
            {
              return 1;
            }

            v8 = *(a1 + 16);
            v9 = *(a1 + 24);
            if (v19 != v20)
            {
              *(a1 + 16) = *(a2 - 2);
              *(a1 + 24) = *(a2 - 2);
            }

            goto LABEL_20;
          }

          if (v20 == a1)
          {
LABEL_20:
            *(a2 - 2) = v8;
            *(a2 - 2) = v9;
            return 1;
          }

LABEL_19:
          *a1 = *(a2 - 2);
          *(a1 + 8) = *(a2 - 2);
          goto LABEL_20;
        }

        if (!v22)
        {
          return 1;
        }

        v28 = *(a1 + 16);
        v29 = *(a1 + 24);
        if (v19 != v20)
        {
          *(a1 + 16) = *(a2 - 2);
          *(a1 + 24) = *(a2 - 2);
        }

        *(a2 - 2) = v28;
        *(a2 - 2) = v29;
        v18 = (*a3)((a1 + 16), a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*,0>(a1, (a1 + 16), (a1 + 32), a2 - 2, a3);
        return 1;
      case 5:
        v10 = a1 + 48;
        v11 = a2 - 2;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<double,unsigned int> const&,HeapPair<double,unsigned int> const&),HeapPair<double,unsigned int>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if (!(*a3)(a2 - 2, (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        if (v10 != v11)
        {
          *(a1 + 48) = *(a2 - 2);
          *(a1 + 56) = *(a2 - 2);
        }

        *(a2 - 2) = v12;
        *(a2 - 2) = v13;
        if (!(*a3)((a1 + 48), (a1 + 32)))
        {
          return 1;
        }

        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        *(a1 + 32) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 56);
        *(a1 + 48) = v14;
        *(a1 + 56) = v15;
        if (!(*a3)((a1 + 32), (a1 + 16)))
        {
          return 1;
        }

        v16 = *(a1 + 16);
        v17 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 24) = *(a1 + 40);
        *(a1 + 32) = v16;
        *(a1 + 40) = v17;
        v18 = (*a3)((a1 + 16), a1);
        break;
      default:
        goto LABEL_21;
    }

    if (v18)
    {
      v30 = *a1;
      v31 = *(a1 + 8);
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 16) = v30;
      *(a1 + 24) = v31;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 2;
    if ((*a3)(a2 - 2, a1))
    {
      v8 = *a1;
      v9 = *(a1 + 8);
      if (v7 == a1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    return 1;
  }

LABEL_21:
  v23 = (a1 + 32);
  v24 = (*a3)((a1 + 16), a1);
  v25 = (*a3)((a1 + 32), (a1 + 16));
  if (v24)
  {
    v26 = *a1;
    v27 = *(a1 + 8);
    if (v25)
    {
      *a1 = *(a1 + 32);
      *(a1 + 8) = *(a1 + 40);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 16) = v26;
      *(a1 + 24) = v27;
      if (!(*a3)((a1 + 32), (a1 + 16)))
      {
        goto LABEL_40;
      }

      v26 = *(a1 + 16);
      v27 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 32);
      *(a1 + 24) = *(a1 + 40);
    }

    *(a1 + 32) = v26;
    *(a1 + 40) = v27;
  }

  else if (v25)
  {
    v32 = *(a1 + 16);
    v33 = *(a1 + 24);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 32) = v32;
    *(a1 + 40) = v33;
    if ((*a3)((a1 + 16), a1))
    {
      v34 = *a1;
      v35 = *(a1 + 8);
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 16) = v34;
      *(a1 + 24) = v35;
    }
  }

LABEL_40:
  v36 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    if ((*a3)(v36, v23))
    {
      v43 = *v36;
      v39 = v37;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 48) = *(a1 + v39 + 32);
        *(v40 + 56) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (((*a3)(&v43, (v40 + 16)) & 1) == 0)
        {
          v41 = a1 + v39 + 48;
          goto LABEL_48;
        }
      }

      v41 = a1;
LABEL_48:
      if (v41 != &v43)
      {
        *v41 = v43;
        *(v41 + 8) = DWORD2(v43);
      }

      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v23 = v36;
    v37 += 16;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = a2 - 2;
    v107 = a2;
    v105 = a2 - 3;
    v10 = v7;
    while (1)
    {
      while (1)
      {
        v7 = v10;
        v11 = v107;
        v12 = v107 - v7;
        v13 = v12 - 2;
        if (v12 <= 2)
        {
          if (v12 < 2)
          {
            return result;
          }

          if (v12 == 2)
          {
            result = (*a3)(v8, v7);
            if (result)
            {
              v64 = *v7;
              if (v7 != v8)
              {
                *v7 = *v8;
              }

              *(v107 - 1) = v64;
            }

            return result;
          }

          goto LABEL_10;
        }

        switch(v12)
        {
          case 3:
            v65 = v7 + 1;
            v66 = (*a3)(v7 + 1, v7);
            result = (*a3)(v8, v7 + 1);
            if (v66)
            {
              v67 = *v7;
              if (result)
              {
                if (v7 == v8)
                {
                  goto LABEL_213;
                }
              }

              else
              {
                *v7 = v7[1];
                v7[1] = v67;
                result = (*a3)(v8, v7 + 1);
                if (!result)
                {
                  return result;
                }

                v67 = *v65;
                ++v7;
                if (v65 == v8)
                {
                  goto LABEL_213;
                }
              }
            }

            else
            {
              if (!result)
              {
                return result;
              }

              v100 = *v65;
              if (v65 != v8)
              {
                *v65 = *v8;
              }

              *(v107 - 1) = v100;
              result = (*a3)(v7 + 1, v7);
              if (!result)
              {
                return result;
              }

              v67 = *v7;
              v8 = v7 + 1;
            }

            *v7 = *v8;
LABEL_213:
            *v8 = v67;
            return result;
          case 4:

            return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*,0>(v7, v7 + 1, v7 + 2, v8, a3);
          case 5:
            v59 = v7 + 3;
            std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*,0>(v7, v7 + 1, v7 + 2, v7 + 3, a3);
            result = (*a3)(v8, v7 + 3);
            if (result)
            {
              v60 = *v59;
              if (v59 != v8)
              {
                *v59 = *v8;
              }

              *(v107 - 1) = v60;
              result = (*a3)(v7 + 3, v7 + 2);
              if (result)
              {
                v61 = v7[2];
                v7[2] = v7[3];
                v7[3] = v61;
                result = (*a3)(v7 + 2, v7 + 1);
                if (result)
                {
                  v62 = v7[1];
                  v7[1] = v7[2];
                  v7[2] = v62;
                  result = (*a3)(v7 + 1, v7);
                  if (result)
                  {
                    v63 = *v7;
                    *v7 = v7[1];
                    v7[1] = v63;
                  }
                }
              }
            }

            return result;
        }

LABEL_10:
        if (v12 <= 23)
        {
          v68 = v7 + 1;
          v69 = v7 == v107 || v68 == v107;
          v70 = v69;
          if (a5)
          {
            if ((v70 & 1) == 0)
            {
              v71 = 0;
              v72 = v7;
              do
              {
                v73 = v72;
                v72 = v68;
                result = (*a3)(v68, v73);
                if (result)
                {
                  v109 = *v72;
                  v74 = v71;
                  while (1)
                  {
                    *(v7 + v74 + 8) = *(v7 + v74);
                    if (!v74)
                    {
                      break;
                    }

                    v74 -= 8;
                    result = (*a3)(&v109, (v7 + v74));
                    if ((result & 1) == 0)
                    {
                      v75 = (v7 + v74 + 8);
                      goto LABEL_153;
                    }
                  }

                  v75 = v7;
LABEL_153:
                  if (v75 != &v109)
                  {
                    *v75 = v109;
                  }
                }

                v68 = v72 + 1;
                v71 += 8;
              }

              while (v72 + 1 != v107);
            }
          }

          else if ((v70 & 1) == 0)
          {
            do
            {
              v101 = v7;
              v7 = v68;
              result = (*a3)(v68, v101);
              if (result)
              {
                v109 = *v7;
                v102 = v7;
                do
                {
                  v103 = v102;
                  v104 = *--v102;
                  *v103 = v104;
                  result = (*a3)(&v109, v103 - 2);
                }

                while ((result & 1) != 0);
                if (v102 != &v109)
                {
                  *v102 = v109;
                }
              }

              v68 = v7 + 1;
            }

            while (v7 + 1 != v107);
          }

          return result;
        }

        if (!a4)
        {
          if (v7 != v107)
          {
            v76 = v13 >> 1;
            v77 = v13 >> 1;
            do
            {
              v78 = v77;
              if (v76 >= v77)
              {
                v79 = (2 * v77) | 1;
                v80 = &v7[v79];
                if (2 * v77 + 2 < v12 && (*a3)(&v7[v79], v80 + 1))
                {
                  ++v80;
                  v79 = 2 * v78 + 2;
                }

                v81 = &v7[v78];
                result = (*a3)(v80, v81);
                if ((result & 1) == 0)
                {
                  v109 = *v81;
                  do
                  {
                    v82 = v80;
                    if (v81 != v80)
                    {
                      *v81 = *v80;
                    }

                    if (v76 < v79)
                    {
                      break;
                    }

                    v83 = (2 * v79) | 1;
                    v80 = &v7[v83];
                    v84 = 2 * v79 + 2;
                    if (v84 < v12 && (*a3)(&v7[v83], v80 + 1))
                    {
                      ++v80;
                      v83 = v84;
                    }

                    result = (*a3)(v80, &v109);
                    v81 = v82;
                    v79 = v83;
                  }

                  while (!result);
                  if (v82 != &v109)
                  {
                    *v82 = v109;
                  }
                }
              }

              v77 = v78 - 1;
            }

            while (v78);
            v85 = v107;
            do
            {
              v108 = v85;
              v86 = 0;
              v87 = *v7;
              v88 = v7;
              do
              {
                v89 = &v88[v86];
                v90 = v89 + 1;
                v91 = 2 * v86;
                v86 = (2 * v86) | 1;
                v92 = v91 + 2;
                if (v91 + 2 < v12)
                {
                  v93 = v89 + 2;
                  result = (*a3)(v89 + 1, v89 + 2);
                  if (result)
                  {
                    v90 = v93;
                    v86 = v92;
                  }
                }

                if (v88 != v90)
                {
                  *v88 = *v90;
                }

                v88 = v90;
              }

              while (v86 <= ((v12 - 2) >> 1));
              v85 = v108 - 1;
              if (v90 == v108 - 1)
              {
                *v90 = v87;
              }

              else
              {
                *v90 = *(v108 - 1);
                *(v108 - 1) = v87;
                v94 = (v90 - v7 + 8) >> 3;
                v95 = v94 < 2;
                v96 = v94 - 2;
                if (!v95)
                {
                  v97 = v96 >> 1;
                  v98 = &v7[v96 >> 1];
                  result = (*a3)(v98, v90);
                  if (result)
                  {
                    v109 = *v90;
                    do
                    {
                      v99 = v98;
                      if (v90 != v98)
                      {
                        *v90 = *v98;
                      }

                      if (!v97)
                      {
                        break;
                      }

                      v97 = (v97 - 1) >> 1;
                      v98 = &v7[v97];
                      result = (*a3)(v98, &v109);
                      v90 = v99;
                    }

                    while ((result & 1) != 0);
                    if (v99 != &v109)
                    {
                      *v99 = v109;
                    }
                  }
                }
              }

              v95 = v12-- <= 2;
            }

            while (!v95);
          }

          return result;
        }

        v14 = v12 >> 1;
        v15 = &v7[v12 >> 1];
        if (v12 >= 0x81)
        {
          v16 = (*a3)(&v7[v12 >> 1], v7);
          v17 = (*a3)(v8, v15);
          if (v16)
          {
            v18 = *v7;
            if (v17)
            {
              v19 = v8;
              v20 = v7;
              if (v7 == v8)
              {
                goto LABEL_34;
              }
            }

            else
            {
              *v7 = *v15;
              *v15 = v18;
              if (!(*a3)(v8, v15))
              {
                goto LABEL_35;
              }

              v18 = *v15;
              v19 = v8;
              v20 = v15;
              if (v15 == v8)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
            if (!v17)
            {
              goto LABEL_35;
            }

            v25 = *v15;
            if (v15 != v8)
            {
              *v15 = *v8;
            }

            *(v107 - 1) = v25;
            if (!(*a3)(v15, v7))
            {
LABEL_35:
              v27 = v14;
              v28 = v7 + 1;
              v29 = &v7[v14 - 1];
              v30 = (*a3)(v29, v7 + 1);
              v31 = (*a3)(v9, v29);
              if (v30)
              {
                v32 = *v28;
                if (v31)
                {
                  v33 = v9;
                  if (v28 == v9)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  *v28 = *v29;
                  *v29 = v32;
                  if (!(*a3)(v9, v29))
                  {
                    goto LABEL_52;
                  }

                  v32 = *v29;
                  v33 = v9;
                  v28 = v29;
                  if (v29 == v9)
                  {
                    goto LABEL_51;
                  }
                }
              }

              else
              {
                if (!v31)
                {
                  goto LABEL_52;
                }

                v34 = *v29;
                if (v29 != v9)
                {
                  *v29 = *v9;
                }

                *(v107 - 2) = v34;
                if (!(*a3)(v29, v7 + 1))
                {
LABEL_52:
                  v35 = v7 + 2;
                  v36 = &v7[v27 + 1];
                  v37 = (*a3)(v36, v7 + 2);
                  v38 = (*a3)(v105, v36);
                  if (v37)
                  {
                    v39 = *v35;
                    if (v38)
                    {
                      v40 = v105;
                      if (v35 == v105)
                      {
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      *v35 = *v36;
                      *v36 = v39;
                      if (!(*a3)(v105, v36))
                      {
                        goto LABEL_65;
                      }

                      v39 = *v36;
                      v40 = v105;
                      v35 = v36;
                      if (v36 == v105)
                      {
                        goto LABEL_64;
                      }
                    }
                  }

                  else
                  {
                    if (!v38)
                    {
                      goto LABEL_65;
                    }

                    v41 = *v36;
                    if (v36 != v105)
                    {
                      *v36 = *v105;
                    }

                    *(v107 - 3) = v41;
                    if (!(*a3)(v36, v7 + 2))
                    {
LABEL_65:
                      v42 = (*a3)(v15, v29);
                      v43 = (*a3)(v36, v15);
                      if (v42)
                      {
                        v44 = *v29;
                        if (v43)
                        {
LABEL_72:
                          *v29 = *v36;
                          *v36 = v44;
LABEL_73:
                          v46 = *v7;
                          *v7 = *v15;
                          *v15 = v46;
                          v11 = v107;
                          goto LABEL_74;
                        }

                        *v29 = *v15;
                        *v15 = v44;
                        v29 = v15;
                        if (!(*a3)(v36, v15))
                        {
                          goto LABEL_73;
                        }
                      }

                      else
                      {
                        if (!v43)
                        {
                          goto LABEL_73;
                        }

                        v45 = *v15;
                        *v15 = *v36;
                        *v36 = v45;
                        v36 = v15;
                        if (((*a3)(v15, v29) & 1) == 0)
                        {
                          goto LABEL_73;
                        }
                      }

                      v44 = *v29;
                      goto LABEL_72;
                    }

                    v39 = *v35;
                    v40 = v36;
                  }

                  *v35 = *v40;
LABEL_64:
                  *v40 = v39;
                  goto LABEL_65;
                }

                v32 = *v28;
                v33 = v29;
              }

              *v28 = *v33;
LABEL_51:
              *v33 = v32;
              goto LABEL_52;
            }

            v18 = *v7;
            v19 = v15;
            v20 = v7;
          }

          *v20 = *v19;
LABEL_34:
          *v19 = v18;
          goto LABEL_35;
        }

        v21 = (*a3)(v7, &v7[v12 >> 1]);
        v22 = (*a3)(v8, v7);
        if (v21)
        {
          v23 = *v15;
          if (v22)
          {
            v24 = v8;
            if (v15 == v8)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          }

          *v15 = *v7;
          *v7 = v23;
          if ((*a3)(v8, v7))
          {
            v23 = *v7;
            v24 = v8;
            v15 = v7;
            if (v7 == v8)
            {
LABEL_47:
              *v24 = v23;
              goto LABEL_74;
            }

LABEL_46:
            *v15 = *v24;
            goto LABEL_47;
          }
        }

        else if (v22)
        {
          v26 = *v7;
          if (v7 != v8)
          {
            *v7 = *v8;
          }

          *(v107 - 1) = v26;
          if ((*a3)(v7, v15))
          {
            v23 = *v15;
            v24 = v7;
            goto LABEL_46;
          }
        }

LABEL_74:
        --a4;
        if (a5 & 1) != 0 || ((*a3)(v7 - 1, v7))
        {
          break;
        }

        v109 = *v7;
        result = (*a3)(&v109, v8);
        if (result)
        {
          v10 = v7;
          do
          {
            result = (*a3)(&v109, ++v10);
          }

          while ((result & 1) == 0);
        }

        else
        {
          v55 = v7 + 1;
          do
          {
            v10 = v55;
            if (v55 >= v107)
            {
              break;
            }

            result = (*a3)(&v109, v55);
            v55 = v10 + 1;
          }

          while (!result);
        }

        v56 = v107;
        if (v10 < v107)
        {
          v56 = v107;
          do
          {
            result = (*a3)(&v109, --v56);
          }

          while ((result & 1) != 0);
        }

        while (v10 < v56)
        {
          v57 = *v10;
          *v10 = *v56;
          *v56 = v57;
          do
          {
            ++v10;
          }

          while (!(*a3)(&v109, v10));
          do
          {
            result = (*a3)(&v109, --v56);
          }

          while ((result & 1) != 0);
        }

        v58 = v10 - 1;
        if (v10 - 1 != v7)
        {
          *v7 = *v58;
        }

        if (v58 != &v109)
        {
          *v58 = v109;
        }

LABEL_98:
        a5 = 0;
      }

      v47 = v9;
      v48 = 0;
      v109 = *v7;
      do
      {
        ++v48;
      }

      while (((*a3)(&v7[v48], &v109) & 1) != 0);
      v49 = &v7[v48];
      v50 = v11;
      v69 = v48 == 1;
      v9 = v47;
      if (v69)
      {
        v50 = v11;
        do
        {
          if (v49 >= v50)
          {
            break;
          }

          --v50;
        }

        while (((*a3)(v50, &v109) & 1) == 0);
      }

      else
      {
        do
        {
          --v50;
        }

        while (!(*a3)(v50, &v109));
      }

      v10 = v49;
      if (v49 < v50)
      {
        v51 = v50;
        do
        {
          v52 = *v10;
          *v10 = *v51;
          *v51 = v52;
          do
          {
            ++v10;
          }

          while (((*a3)(v10, &v109) & 1) != 0);
          do
          {
            --v51;
          }

          while (!(*a3)(v51, &v109));
        }

        while (v10 < v51);
      }

      v53 = v10 - 1;
      if (v10 - 1 != v7)
      {
        *v7 = *v53;
      }

      if (v53 != &v109)
      {
        *v53 = v109;
      }

      if (v49 < v50)
      {
LABEL_97:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*,false>(v7, v10 - 1, a3, a4, a5 & 1);
        goto LABEL_98;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*>(v7, v10 - 1, a3);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*>(v10, v107, a3);
      if (result)
      {
        break;
      }

      if (!v54)
      {
        goto LABEL_97;
      }
    }

    a2 = v10 - 1;
    if (!v54)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*,0>(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      v13 = a3;
      v14 = a1;
      if (a1 == a3)
      {
LABEL_5:
        *v13 = v12;
        goto LABEL_17;
      }

LABEL_4:
      *v14 = *v13;
      goto LABEL_5;
    }

    if (a1 != a2)
    {
      *a1 = *a2;
    }

    *a2 = v12;
    if ((*a5)(a3, a2))
    {
      v12 = *a2;
      v13 = a3;
      v14 = a2;
      if (a2 == a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (v11)
  {
    v15 = *a2;
    if (a2 != a3)
    {
      *a2 = *a3;
    }

    *a3 = v15;
    if ((*a5)(a2, a1))
    {
      v12 = *a1;
      v13 = a2;
      v14 = a1;
      if (a1 == a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

LABEL_17:
  result = (*a5)(a4, a3);
  if (result)
  {
    v17 = *a3;
    if (a3 != a4)
    {
      *a3 = *a4;
    }

    *a4 = v17;
    result = (*a5)(a3, a2);
    if (result)
    {
      v18 = *a2;
      if (a2 != a3)
      {
        *a2 = *a3;
      }

      *a3 = v18;
      result = (*a5)(a2, a1);
      if (result)
      {
        v19 = *a1;
        if (a1 != a2)
        {
          *a1 = *a2;
        }

        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v5 = a1;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          v9 = a1 + 3;
          v10 = a2 - 1;
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
          if ((*a3)(a2 - 1, v5 + 3))
          {
            v11 = *v9;
            if (v9 != v10)
            {
              *v9 = *v10;
            }

            *(a2 - 1) = v11;
            if ((*a3)(v5 + 3, v5 + 2))
            {
              v12 = v5[2];
              v5[2] = v5[3];
              v5[3] = v12;
              if ((*a3)(v5 + 2, v5 + 1))
              {
                v13 = v5[1];
                v5[1] = v5[2];
                v5[2] = v13;
                if ((*a3)(v5 + 1, v5))
                {
                  v14 = *v5;
                  *v5 = v5[1];
                  v5[1] = v14;
                }
              }
            }
          }

          return 1;
        }

        goto LABEL_22;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HeapPair<unsigned int,unsigned int> const&,HeapPair<unsigned int,unsigned int> const&),HeapPair<unsigned int,unsigned int>*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    }

    v15 = a1 + 1;
    v16 = a2 - 1;
    v17 = (*a3)(a1 + 1, a1);
    v18 = (*a3)(a2 - 1, v5 + 1);
    if (v17)
    {
      v19 = *v5;
      if (v18)
      {
        if (v16 == v5)
        {
          goto LABEL_37;
        }
      }

      else
      {
        *v5 = v5[1];
        v5[1] = v19;
        if (!(*a3)(a2 - 1, v5 + 1))
        {
          return 1;
        }

        v19 = *v15;
        ++v5;
        if (v15 == v16)
        {
LABEL_37:
          *v16 = v19;
          return 1;
        }
      }
    }

    else
    {
      if (!v18)
      {
        return 1;
      }

      v26 = *v15;
      if (v15 != v16)
      {
        *v15 = *v16;
      }

      *(a2 - 1) = v26;
      if (!(*a3)(v5 + 1, v5))
      {
        return 1;
      }

      v19 = *v5;
      v16 = v5 + 1;
    }

    *v5 = *v16;
    goto LABEL_37;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *v5;
      if (v7 != v5)
      {
        *v5 = *v7;
      }

      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_22:
  v20 = a1 + 2;
  v21 = a1 + 1;
  v22 = (*a3)(a1 + 1, a1);
  v23 = (*a3)(v5 + 2, v5 + 1);
  if (v22)
  {
    v24 = *v5;
    if (v23)
    {
      v21 = v5 + 2;
      v25 = v5;
LABEL_40:
      *v25 = *v21;
      *v21 = v24;
      goto LABEL_41;
    }

    *v5 = v5[1];
    v5[1] = v24;
    v29 = (*a3)(v5 + 2, v5 + 1);
    v25 = v5 + 1;
    v21 = v5 + 2;
    if (!v29)
    {
      goto LABEL_41;
    }

LABEL_39:
    v24 = *v25;
    goto LABEL_40;
  }

  if (v23)
  {
    v27 = v5[1];
    v5[1] = v5[2];
    v5[2] = v27;
    v28 = (*a3)(v5 + 1, v5);
    v25 = v5;
    if (v28)
    {
      goto LABEL_39;
    }
  }

LABEL_41:
  v30 = v5 + 3;
  if (v5 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    if ((*a3)(v30, v20))
    {
      v37 = *v30;
      v33 = v31;
      while (1)
      {
        v34 = v5 + v33;
        *(v5 + v33 + 24) = *(v5 + v33 + 16);
        if (v33 == -16)
        {
          break;
        }

        v33 -= 8;
        if (((*a3)(&v37, v34 + 1) & 1) == 0)
        {
          v35 = (v5 + v33 + 24);
          goto LABEL_49;
        }
      }

      v35 = v5;
LABEL_49:
      if (v35 != &v37)
      {
        *v35 = v37;
      }

      if (++v32 == 8)
      {
        return v30 + 1 == a2;
      }
    }

    v20 = v30;
    v31 += 8;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

void matrix<double>::~matrix(void *a1)
{
  *a1 = &unk_285963130;
  v1 = a1[3];
  if (v1)
  {
    MEMORY[0x24C1AA8A0](v1, 0x1000C8000313F17);
  }

  JUMPOUT(0x24C1AA8D0);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x24C1AA740](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_24781C818(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x24781C7D8);
  }

  __cxa_rethrow();
}

void CNNSignals::CNNSignals(CNNSignals *this, unsigned int a2)
{
  *(this + 3) = 0u;
  v3 = (this + 48);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 12) = &unk_285963160;
  *(this + 152) = 0u;
  v4 = (this + 152);
  *(this + 200) = 0u;
  v23 = (this + 200);
  *(this + 248) = 0u;
  v22 = (this + 272);
  v27 = (this + 320);
  v28 = (this + 368);
  *(this + 120) = 0u;
  v25 = (this + 344);
  v26 = (this + 392);
  v24 = (this + 416);
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 104) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 55) = &unk_285963160;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 59) = &unk_285963160;
  *(this + 60) = 0;
  v5 = a2;
  *(this + 61) = 0;
  *(this + 62) = 0;
  std::vector<matrix<float>>::resize(this + 37, a2);
  std::vector<matrix<float>>::resize(v28, v5);
  std::vector<matrix<float>>::resize(v27, v5);
  std::vector<matrix<float>>::resize(v26, v5);
  std::vector<matrix<float>>::resize(v25, v5);
  std::vector<matrix<float>>::resize(v24, v5);
  std::vector<matrix<float> *,std::allocator<matrix<float> *>>::resize(this, v5);
  std::vector<matrix<float> *,std::allocator<matrix<float> *>>::resize(v4, v5);
  std::vector<matrix<float> *,std::allocator<matrix<float> *>>::resize(v23, v5);
  std::vector<matrix<float> *,std::allocator<matrix<float> *>>::resize(this + 3, v5);
  std::vector<matrix<float> *,std::allocator<matrix<float> *>>::resize(this + 22, v5);
  std::vector<matrix<float> *,std::allocator<matrix<float> *>>::resize(v3, v5);
  std::vector<matrix<float> *,std::allocator<matrix<float> *>>::resize(this + 28, v5);
  std::vector<matrix<float> *,std::allocator<matrix<float> *>>::resize(this + 9, v5);
  std::vector<matrix<float>>::resize(v22, v5);
  v6 = *(this + 31);
  v7 = *(this + 32);
  v8 = (v7 - v6) >> 5;
  if (v5 <= v8)
  {
    if (v5 < v8)
    {
      v14 = (v6 + 32 * v5);
      if (v7 != v14)
      {
        v15 = v7 - 4;
        v16 = v7 - 4;
        v17 = v7 - 4;
        do
        {
          v18 = *v17;
          v17 -= 4;
          (*v18)(v16);
          v15 -= 4;
          v19 = v16 == v14;
          v16 = v17;
        }

        while (!v19);
      }

      *(this + 32) = v14;
    }
  }

  else
  {
    v9 = v5 - v8;
    v10 = *(this + 33);
    if (v9 > (v10 - v7) >> 5)
    {
      v11 = v10 - v6;
      v12 = v11 >> 4;
      if (v11 >> 4 <= v5)
      {
        v12 = v5;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v20 = &v7[4 * v9];
    v21 = *(this + 32);
    do
    {
      *v21 = &unk_285963190;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = 0;
      v21 += 4;
      v7 += 4;
    }

    while (v21 != v20);
    *(this + 32) = v20;
  }
}

void sub_24781CD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, void **a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26)
{
  if (v27)
  {
    v32 = v28 + a10 - a15 - a9 + v27 - 32;
    v33 = -v27;
    v34 = (v29 - 32);
    do
    {
      v35 = *v34;
      v34 -= 4;
      (*v35)();
      v32 -= 32;
      v33 += 32;
    }

    while (v33);
  }

  std::__split_buffer<matrix<unsigned int>>::~__split_buffer(v30 - 128);
  *(v26 + 472) = a16;
  v36 = *(v26 + 496);
  if (v36)
  {
    MEMORY[0x24C1AA8A0](v36, 0x1000C8052888210);
  }

  *(v26 + 440) = a17;
  v37 = *(v26 + 464);
  if (v37)
  {
    MEMORY[0x24C1AA8A0](v37, 0x1000C8052888210);
  }

  a26 = a21;
  std::vector<matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a23;
  std::vector<matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a25;
  std::vector<matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a22;
  std::vector<matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a24;
  std::vector<matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a18;
  std::vector<matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a19;
  std::vector<matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a14;
  std::vector<matrix<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a26);
  v38 = *(v26 + 224);
  if (v38)
  {
    *(v26 + 232) = v38;
    operator delete(v38);
  }

  v39 = *a20;
  if (*a20)
  {
    *(v26 + 208) = v39;
    operator delete(v39);
  }

  v40 = *(v26 + 176);
  if (v40)
  {
    *(v26 + 184) = v40;
    operator delete(v40);
  }

  v41 = *a11;
  if (*a11)
  {
    *(v26 + 160) = v41;
    operator delete(v41);
  }

  a26 = (v26 + 128);
  std::vector<matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  *(v26 + 96) = a12;
  v42 = *(v26 + 120);
  if (v42)
  {
    MEMORY[0x24C1AA8A0](v42, 0x1000C8052888210);
  }

  v43 = *(v26 + 72);
  if (v43)
  {
    *(v26 + 80) = v43;
    operator delete(v43);
  }

  v44 = *a13;
  if (*a13)
  {
    *(v26 + 56) = v44;
    operator delete(v44);
  }

  v45 = *(v26 + 24);
  if (v45)
  {
    *(v26 + 32) = v45;
    operator delete(v45);
  }

  v46 = *v26;
  if (*v26)
  {
    *(v26 + 8) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(a1);
}

void *std::vector<matrix<float>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v4 + 32 * a2);
      if (v3 != v11)
      {
        v12 = v3 - 4;
        v13 = v12;
        v14 = v12;
        do
        {
          v15 = *v14;
          v14 -= 4;
          result = (*v15)(v13);
          v12 -= 4;
          v16 = v13 == v11;
          v13 = v14;
        }

        while (!v16);
      }

      v2[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = result[2];
    if (v6 > (v7 - v3) >> 5)
    {
      if (!(a2 >> 59))
      {
        v8 = v7 - v4;
        v9 = v8 >> 4;
        if (v8 >> 4 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFE0)
        {
          v10 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v19 = result;
        if (!(v10 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v17 = &v3[4 * v6];
    v18 = result[1];
    do
    {
      *v18 = &unk_285963160;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = 0;
      v18 += 4;
      v3 += 4;
    }

    while (v18 != v17);
    result[1] = v17;
  }

  return result;
}

void std::vector<matrix<float> *,std::allocator<matrix<float> *>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void CNNSignals::prepareLayer(CNNSignals *this, unsigned int a2, char a3)
{
  if (a3)
  {
    matrix<float>::resize();
  }

  matrix<float>::resize();
}

void CNNSignals::initLayer(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1[19] + 8 * a2) = a4;
  *(a1[25] + 8 * a2) = a5;
  *(a1[28] + 8 * a2) = a6;
  *(a1[22] + 8 * a2) = a7;
  if (!*(*(a1[25] + 8 * a2) + 8))
  {
    matrix<float>::resize();
  }

  matrix<float>::resize();
}

void CNNSignals::initConvLayer(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(*a1 + 8 * a2) = a6;
  *(a1[9] + 8 * a2) = a9;
  *(a1[19] + 8 * a2) = a7;
  *(a1[25] + 8 * a2) = a8;
  *(a1[28] + 8 * a2) = a10;
  *(a1[22] + 8 * a2) = a11;
  *(a1[3] + 8 * a2) = a12;
  *(a1[6] + 8 * a2) = a13;
  if (a5)
  {
    matrix<float>::resize();
  }

  matrix<float>::resize();
}

void CNNSignals::initPoolLayer(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(*a1 + 8 * a2) = a6;
  *(a1[9] + 8 * a2) = a9;
  *(a1[19] + 8 * a2) = a7;
  *(a1[25] + 8 * a2) = a8;
  *(a1[28] + 8 * a2) = a10;
  *(a1[22] + 8 * a2) = a11;
  *(a1[3] + 8 * a2) = a12;
  *(a1[6] + 8 * a2) = a13;
  if (a5)
  {
    matrix<float>::resize();
  }

  matrix<float>::resize();
}

void std::vector<matrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
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

void std::vector<matrix<unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
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

uint64_t std::__split_buffer<matrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *matrix<unsigned int>::~matrix(void *a1)
{
  *a1 = &unk_285963190;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x24C1AA8A0](v2, 0x1000C8052888210);
  }

  return a1;
}

void matrix<unsigned int>::~matrix(void *a1)
{
  *a1 = &unk_285963190;
  v1 = a1[3];
  if (v1)
  {
    MEMORY[0x24C1AA8A0](v1, 0x1000C8052888210);
  }

  JUMPOUT(0x24C1AA8D0);
}

uint64_t std::__split_buffer<matrix<unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<double>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 8 * v6);
    v11 = v4 + 8 * v6;
  }

  *(a1 + 8) = v11;
}

uint64_t Corpus::Corpus(uint64_t a1, double a2, double a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, int a9, void *a10, uint64_t a11)
{
  *a1 = &unk_2859631C0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 152) = 0;
  v62 = (a1 + 152);
  *(a1 + 144) = a1 + 152;
  v15 = (a1 + 144);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  v16 = (a1 + 176);
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 168) = a1 + 176;
  v17 = (a1 + 168);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 40) = a8;
  v18 = (a8 + a5);
  *(a1 + 32) = v18;
  *(a1 + 72) = 0;
  *(a1 + 76) = a9;
  std::vector<double>::resize(a1 + 96, v18);
  std::vector<double>::resize(a1 + 120, *(a1 + 32));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (a11)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Corpus: mean");
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Corpus: stddev");
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p);
    }

    *(a1 + 80) = a2;
    *(a1 + 88) = a3;
  }

  v64 = 0;
  v65 = 0;
  __p = &v64;
  if (a10)
  {
    v61 = a10;
    v21 = *a10;
    v19 = (a10 + 1);
    v20 = v21;
    if (v21 != v19)
    {
      v22 = 0;
      v23 = &v64;
      while (v23 != &v64)
      {
        v24 = &v64;
        if (v22)
        {
          do
          {
            v25 = v22;
            v22 = *(v22 + 1);
          }

          while (v22);
        }

        else
        {
          do
          {
            v25 = v24[2];
            v26 = *v25 == v24;
            v24 = v25;
          }

          while (v26);
        }

        if (std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>::operator()[abi:ne200100](&__p, v25 + 4, v20 + 4))
        {
          if (!v64)
          {
            goto LABEL_17;
          }

LABEL_19:
          v70 = v25;
          v27 = v25 + 1;
          goto LABEL_21;
        }

        v27 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(&__p, &v70, v20 + 4);
LABEL_21:
        if (!*v27)
        {
          goto LABEL_22;
        }

        v28 = v20[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v20[2];
            v26 = *v29 == v20;
            v20 = v29;
          }

          while (!v26);
        }

        if (v29 == v19)
        {
          goto LABEL_30;
        }

        v23 = __p;
        v22 = v64;
        v20 = v29;
      }

      v25 = &v64;
      if (!v22)
      {
LABEL_17:
        v70 = &v64;
LABEL_22:
        std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__construct_node<std::pair<std::string const,unsigned int> const&>();
      }

      goto LABEL_19;
    }

LABEL_30:
    v67 = 0;
    v68 = 0;
    v66 = &v67;
    v30 = v61[3];
    if (v30 != v61 + 4)
    {
      std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__construct_node<std::pair<unsigned int const,std::string> const&>();
    }

    v69 = *(v61 + 12);
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v66 = &v67;
    v69 = 0;
  }

  if (v15 != &__p)
  {
    v31 = __p;
    if (*(a1 + 160))
    {
      v32 = *v15;
      *v15 = v62;
      *(*v62 + 16) = 0;
      *v62 = 0;
      v62[1] = 0;
      if (*(v32 + 1))
      {
        v33 = *(v32 + 1);
      }

      else
      {
        v33 = v32;
      }

      v71 = a1 + 144;
      v72 = v33;
      v73 = v33;
      if (!v33 || (v72 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::_DetachedTreeCache::__detach_next(v33), v31 == &v64))
      {
        v37 = v31;
      }

      else
      {
        do
        {
          std::string::operator=((v33 + 4), (v31 + 32));
          *(v33 + 14) = *(v31 + 14);
          v34 = v73;
          leaf_high = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_leaf_high(a1 + 144, &v70, v73 + 4);
          std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__insert_node_at((a1 + 144), v70, leaf_high, v34);
          v33 = v72;
          v73 = v72;
          if (v72)
          {
            v72 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::_DetachedTreeCache::__detach_next(v72);
          }

          v36 = *(v31 + 1);
          if (v36)
          {
            do
            {
              v37 = v36;
              v36 = *v36;
            }

            while (v36);
          }

          else
          {
            do
            {
              v37 = *(v31 + 2);
              v26 = *v37 == v31;
              v31 = v37;
            }

            while (!v26);
          }

          if (!v33)
          {
            break;
          }

          v31 = v37;
        }

        while (v37 != &v64);
      }

      std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v71);
      v31 = v37;
    }

    if (v31 != &v64)
    {
      std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__construct_node<std::pair<std::string const,unsigned int> const&>();
    }

    v38 = v66;
    if (*(a1 + 184))
    {
      v39 = *v17;
      *v17 = v16;
      (*v16)[2] = 0;
      *v16 = 0;
      *(a1 + 184) = 0;
      if (v39[1])
      {
        v40 = v39[1];
      }

      else
      {
        v40 = v39;
      }

      v71 = a1 + 168;
      v72 = v40;
      v73 = v40;
      if (!v40 || (v72 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::_DetachedTreeCache::__detach_next(v40), v38 == &v67))
      {
        v45 = v38;
      }

      else
      {
        do
        {
          *(v40 + 8) = *(v38 + 8);
          std::string::operator=((v40 + 5), (v38 + 5));
          v41 = *v16;
          v42 = (a1 + 176);
          v43 = (a1 + 176);
          if (*v16)
          {
            do
            {
              while (1)
              {
                v42 = v41;
                if (*(v73 + 8) >= *(v41 + 8))
                {
                  break;
                }

                v41 = *v41;
                v43 = v42;
                if (!*v42)
                {
                  goto LABEL_67;
                }
              }

              v41 = v41[1];
            }

            while (v41);
            v43 = v42 + 1;
          }

LABEL_67:
          std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__insert_node_at((a1 + 168), v42, v43, v73);
          v40 = v72;
          v73 = v72;
          if (v72)
          {
            v72 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::_DetachedTreeCache::__detach_next(v72);
          }

          v44 = v38[1];
          if (v44)
          {
            do
            {
              v45 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v38[2];
              v26 = *v45 == v38;
              v38 = v45;
            }

            while (!v26);
          }

          if (!v40)
          {
            break;
          }

          v38 = v45;
        }

        while (v45 != &v67);
      }

      std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v71);
      v38 = v45;
    }

    if (v38 != &v67)
    {
      std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__construct_node<std::pair<unsigned int const,std::string> const&>();
    }
  }

  *(a1 + 192) = v69;
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(&v66, v67);
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(&__p, v64);
  v46 = *(a1 + 144);
  if (v46 != v62)
  {
    v47 = 0;
    while (1)
    {
      LODWORD(v71) = *(v46 + 14);
      __p = &v71;
      v48 = std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 168, &v71);
      v49 = *(v46 + 55);
      if (v49 >= 0)
      {
        v50 = *(v46 + 55);
      }

      else
      {
        v50 = v46[5];
      }

      v51 = *(v48 + 63);
      v52 = v51;
      if ((v51 & 0x80u) != 0)
      {
        v51 = v48[6];
      }

      if (v50 != v51)
      {
        break;
      }

      if (v47 == 101)
      {
        goto LABEL_105;
      }

      if (v49 >= 0)
      {
        v53 = v46 + 4;
      }

      else
      {
        v53 = v46[4];
      }

      v56 = v48[5];
      v54 = v48 + 5;
      v55 = v56;
      if (v52 >= 0)
      {
        v57 = v54;
      }

      else
      {
        v57 = v55;
      }

      if (memcmp(v53, v57, v50))
      {
        goto LABEL_108;
      }

      v58 = v46[1];
      if (v58)
      {
        do
        {
          v59 = v58;
          v58 = *v58;
        }

        while (v58);
      }

      else
      {
        do
        {
          v59 = v46[2];
          v26 = *v59 == v46;
          v46 = v59;
        }

        while (!v26);
      }

      ++v47;
      v46 = v59;
      if (v59 == v62)
      {
        goto LABEL_105;
      }
    }

    if (v47 <= 0x64)
    {
LABEL_108:
      exit(1);
    }
  }

LABEL_105:
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_24781E570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  TagMap::~TagMap(v23);
  v25 = *(v22 + 120);
  if (v25)
  {
    *(v22 + 128) = v25;
    operator delete(v25);
  }

  v26 = *a10;
  if (*a10)
  {
    *(v22 + 104) = v26;
    operator delete(v26);
  }

  v27 = *a11;
  if (*a11)
  {
    *(v22 + 56) = v27;
    operator delete(v27);
  }

  if (*(v22 + 31) < 0)
  {
    operator delete(*a9);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
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
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
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

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_24781E894(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_24781E994(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_24781EAAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_24781EB24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

size_t NetworkParameters::initializeFromBinaryFile(NetworkParameters *this, __sFILE *__stream)
{
  v9 = *MEMORY[0x277D85DE8];
  fread(this + 116, 4uLL, 1uLL, __stream);
  fread(this + 112, 4uLL, 1uLL, __stream);
  __ptr = 0;
  result = fread(&__ptr, 4uLL, 1uLL, __stream);
  if (__ptr >= 1)
  {
    v6 = 0;
    fread(&v6, 4uLL, 1uLL, __stream);
    v5 = v6;
    fread(__s1, 1uLL, v6 + 1, __stream);
    if (strncmp(__s1, "conv", v5))
    {
      if (strncmp(__s1, "pool", v5))
      {
        if (!strncmp(__s1, "hidden", v5))
        {
          operator new();
        }

        exit(1);
      }

      operator new();
    }

    operator new();
  }

  return result;
}

void std::vector<LayerParameters *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

size_t CNNLayerParameters::writeBinaryLayerParameters(CNNLayerParameters *this, __sFILE *a2)
{
  LayerParameters::writeBinaryLayerParameters(this, a2);
  fwrite(this + 64, 4uLL, 1uLL, a2);
  fwrite(this + 68, 4uLL, 1uLL, a2);

  return fwrite(this + 72, 4uLL, 1uLL, a2);
}

size_t CNNLayerParameters::readBinaryLayerParamenters(CNNLayerParameters *this, __sFILE *a2)
{
  LayerParameters::readBinaryLayerParamenters(this, a2);
  fread(this + 64, 4uLL, 1uLL, a2);
  fread(this + 68, 4uLL, 1uLL, a2);

  return fread(this + 72, 4uLL, 1uLL, a2);
}

void CNNLayerParameters::~CNNLayerParameters(void **this)
{
  LayerParameters::~LayerParameters(this);

  JUMPOUT(0x24C1AA8D0);
}

size_t LayerParameters::writeBinaryLayerParameters(LayerParameters *this, __sFILE *__stream)
{
  v4 = *(this + 31);
  if (v4 < 0)
  {
    v4 = *(this + 2);
  }

  v5 = (this + 8);
  __ptr = v4;
  fwrite(&__ptr, 4uLL, 1uLL, __stream);
  if (*(this + 31) < 0)
  {
    v5 = *v5;
  }

  fwrite(v5, 1uLL, __ptr + 1, __stream);
  v6 = *(this + 55);
  if (v6 < 0)
  {
    v6 = *(this + 5);
  }

  v7 = (this + 32);
  __ptr = v6;
  fwrite(&__ptr, 4uLL, 1uLL, __stream);
  if (*(this + 55) < 0)
  {
    v7 = *v7;
  }

  fwrite(v7, 1uLL, __ptr + 1, __stream);
  return fwrite(this + 60, 1uLL, 1uLL, __stream);
}

size_t LayerParameters::readBinaryLayerParamenters(LayerParameters *this, __sFILE *__stream)
{
  v7 = *MEMORY[0x277D85DE8];
  __ptr = 0;
  fread(&__ptr, 4uLL, 1uLL, __stream);
  fread(v6, 1uLL, __ptr + 1, __stream);
  MEMORY[0x24C1AA6C0](this + 32, v6);
  return fread(this + 60, 1uLL, 1uLL, __stream);
}

void LayerParameters::~LayerParameters(void **this)
{
  *this = &unk_285963248;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

size_t PoolingLayerParameters::writeBinaryLayerParameters(PoolingLayerParameters *this, __sFILE *a2)
{
  LayerParameters::writeBinaryLayerParameters(this, a2);

  return fwrite(this + 64, 4uLL, 1uLL, a2);
}

size_t PoolingLayerParameters::readBinaryLayerParamenters(PoolingLayerParameters *this, __sFILE *a2)
{
  LayerParameters::readBinaryLayerParamenters(this, a2);

  return fread(this + 64, 4uLL, 1uLL, a2);
}

void PoolingLayerParameters::~PoolingLayerParameters(void **this)
{
  LayerParameters::~LayerParameters(this);

  JUMPOUT(0x24C1AA8D0);
}

size_t HiddenLayerParameters::writeBinaryLayerParameters(HiddenLayerParameters *this, __sFILE *a2)
{
  LayerParameters::writeBinaryLayerParameters(this, a2);

  return fwrite(this + 64, 4uLL, 1uLL, a2);
}

size_t HiddenLayerParameters::readBinaryLayerParamenters(HiddenLayerParameters *this, __sFILE *a2)
{
  LayerParameters::readBinaryLayerParamenters(this, a2);

  return fread(this + 64, 4uLL, 1uLL, a2);
}

void HiddenLayerParameters::~HiddenLayerParameters(void **this)
{
  LayerParameters::~LayerParameters(this);

  JUMPOUT(0x24C1AA8D0);
}

uint64_t tpThreadInit(unsigned int *a1, unsigned int a2, int a3, unsigned int a4, int a5)
{
  *a1 = a2;
  a1[1] = 0;
  *(a1 + 1) = 0;
  if (!a2)
  {
    return 0;
  }

  v8 = a3 + a2;
  a1[1] = v8;
  v9 = malloc_type_calloc(v8, 0xB0uLL, 0x10A004044E82124uLL);
  *(a1 + 1) = v9;
  if (v9)
  {
    if (a1[1])
    {
      v10 = 0;
      v11 = 0;
      v12 = a4;
      v13 = "***tpThreadInit: Error initializing mutex";
      do
      {
        v14 = *(a1 + 1);
        v15 = (v14 + v10);
        v16 = malloc_type_calloc(1uLL, v12, 0x57127CBuLL);
        *(v14 + v10 + 144) = v16;
        if (!v16)
        {
          goto LABEL_13;
        }

        *v15 = 0;
        v15[32] = v11;
        if (v11 < *a1)
        {
          if (pthread_mutex_init((v14 + v10 + 8), 0))
          {
            goto LABEL_16;
          }

          if (pthread_cond_init((v14 + v10 + 72), 0))
          {
            v13 = "***tpThreadInit: Error initializing pthreadCond";
LABEL_16:
            puts(v13);
            free(*(a1 + 1));
            *(a1 + 1) = 0;
            return 2;
          }

          if (pthread_create((v14 + v10 + 120), 0, tpThread, (v14 + v10)))
          {
            v13 = "***tpThreadInit: Error starting up server thread";
            goto LABEL_16;
          }
        }

        *(v14 + v10 + 168) = a5;
        ++v11;
        v10 += 176;
      }

      while (v11 < a1[1]);
    }

    return 0;
  }

  else
  {
LABEL_13:
    puts("***tpThreadInit: calloc failure");
    return 1;
  }
}

uint64_t tpThread(char *a1)
{
  if (a1[168])
  {
    policy_info = *(a1 + 32) + 1;
    v2 = MEMORY[0x24C1AABE0]();
    v3 = thread_policy_set(v2, 4u, &policy_info, 1u);
    if (v3)
    {
      printf("setThreadAffinity: thread_policy_set returned %d\n", v3);
    }
  }

  while (1)
  {
    if (pthread_mutex_lock((a1 + 8)))
    {
      v5 = "***tpThread: Error acquiring lock; aborting.";
      goto LABEL_18;
    }

    while (!*a1)
    {
      v4 = pthread_cond_wait((a1 + 72), (a1 + 8));
      if (v4)
      {
        printf("***tpThread: Error waiting on condition; error %d; aborting.\n", v4);
        goto LABEL_14;
      }
    }

    pthread_mutex_unlock((a1 + 8));
    if (*(a1 + 34) == 1)
    {
      return 0;
    }

    *(a1 + 40) = (*(a1 + 19))(*(a1 + 18));
    if (pthread_mutex_lock((a1 + 8)))
    {
      v5 = "***Error acquiring lock; aborting.";
      goto LABEL_18;
    }

    *a1 = 0;
    if (pthread_cond_broadcast((a1 + 72)))
    {
      v5 = "***Error waking main thread; aborting.";
      goto LABEL_18;
    }

    if (pthread_mutex_unlock((a1 + 8)))
    {
      v5 = "***Error acquiring server lock; aborting.";
LABEL_18:
      puts(v5);
LABEL_14:
      pthread_exit(0);
    }
  }
}

void tpThreadShutdown(unsigned int *a1)
{
  if (*a1)
  {
    if (!a1[1])
    {
      goto LABEL_8;
    }

    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 1);
      if (v3 < *a1)
      {
        v5 = (v4 + v2);
        pthread_mutex_lock((v4 + v2 + 8));
        v5[34] = 1;
        *v5 = 1;
        pthread_cond_broadcast((v4 + v2 + 72));
        pthread_mutex_unlock((v4 + v2 + 8));
      }

      v6 = v4 + v2;
      free(*(v6 + 144));
      *(v6 + 144) = 0;
      ++v3;
      v2 += 176;
    }

    while (v3 < a1[1]);
    if (*a1)
    {
LABEL_8:
      v7 = 0;
      v8 = 120;
      do
      {
        v9 = *(a1 + 1);
        v14 = 0;
        pthread_join(*(v9 + v8), &v14);
        ++v7;
        v10 = *a1;
        v8 += 176;
      }

      while (v7 < v10);
      if (v10)
      {
        v11 = 0;
        v12 = 72;
        do
        {
          v13 = (*(a1 + 1) + v12);
          pthread_mutex_destroy(&v13[-2].__opaque[24]);
          pthread_cond_destroy(v13);
          ++v11;
          v12 += 176;
        }

        while (v11 < *a1);
      }
    }

    free(*(a1 + 1));
    *(a1 + 1) = 0;
  }
}

uint64_t tpThreadDispatch(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2;
  while (1)
  {
    v6 = *(a1 + 8);
    v7 = v6 + v3;
    *(v6 + v3 + 160) = 2;
    if (pthread_mutex_lock((v6 + v3 + 8)))
    {
      v9 = "tpThreadDispatch: mutex error";
      goto LABEL_12;
    }

    if (*v7)
    {
      printf("tpThreadDispatch: thread %u not idle\n", v4);
      return 2;
    }

    *(v6 + v3) = 1;
    if (pthread_cond_broadcast((v6 + v3 + 72)))
    {
      break;
    }

    pthread_mutex_unlock((v7 + 8));
    ++v4;
    v3 += 176;
    if (v5 == v4)
    {
      return 0;
    }
  }

  v9 = "tpThreadDispatch: cond_broadcast error";
LABEL_12:
  puts(v9);
  return 2;
}

uint64_t tpThreadFinish(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v5 = a2;
  v6 = "***tpThreadFinish: Error acquiring lock";
  while (1)
  {
    v7 = *(a1 + 8) + 176 * v3;
    if (pthread_mutex_lock((v7 + 8)))
    {
      break;
    }

    while (*v7 == 1)
    {
      if (pthread_cond_wait((v7 + 72), (v7 + 8)))
      {
        v6 = "***tpThreadFinish: Error waiting on condition";
        goto LABEL_15;
      }
    }

    pthread_mutex_unlock((v7 + 8));
    v8 = *(v7 + 160);
    if (v4)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 == 0;
    }

    if (v9)
    {
      v4 = v4;
    }

    else
    {
      v4 = v8;
    }

    if (++v3 == v5)
    {
      return v4;
    }
  }

LABEL_15:
  puts(v6);
  return 2;
}

uint64_t ThreadPoolAuto::setupCommon(uint64_t result, unsigned int *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = result;
  if (a2)
  {
    v6 = *a2;
    *(result + 16) = *a2;
    if (v6)
    {
      if (a4)
      {
        if (v6 > a4)
        {
          *(result + 16) = a4;
        }
      }

      return result;
    }

LABEL_15:
    *(result + 16) = 1;
    return result;
  }

  if (a3 == 1 || a4 == 1)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    if (a3 >= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a3;
    }

    if (!a3)
    {
      v8 = a4;
    }

    *(result + 16) = v8;
    v9 = (result + 16);
    goto LABEL_22;
  }

  *(result + 16) = a3;
  v9 = (result + 16);
  if (a3)
  {
    goto LABEL_22;
  }

  v15 = 0;
  v14 = 4;
  result = sysctlbyname("hw.physicalcpu", &v15, &v14, 0, 0);
  if (result)
  {
    perror("sysctlbyname(hw.physicalcpu)");
    result = puts("***Error executing sysctlbyname(hw.physicalcpu)");
    *v9 = 1;
    return result;
  }

  v10 = v15;
  v11 = v15 <= 1 ? 1 : v15;
  *v9 = v11;
  if (v10 >= 2)
  {
LABEL_22:
    v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
    *(v5 + 8) = v12;
    if (v12)
    {
      result = tpThreadInit(v12, *v9, 0, a5, 1);
      if (!result)
      {
        *(v5 + 20) = 1;
        return result;
      }

      fwrite("***ThreadPoolAuto: tpThreadInit error\n", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x24C1AA6A0](exception, "tpThreadInit error");
    }

    else
    {
      fwrite("***calloc failure\n", 0x12uLL, 1uLL, *MEMORY[0x277D85DF8]);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x24C1AA6A0](exception, "calloc failure");
    }

    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void ThreadPoolAuto::~ThreadPoolAuto(unsigned int **this)
{
  *this = &unk_285963368;
  if (*(this + 20) == 1)
  {
    if ((*(this + 21) & 1) == 0)
    {
      tpThreadShutdown(this[1]);
    }

    free(this[1]);
  }
}

{
  ThreadPoolAuto::~ThreadPoolAuto(this);

  JUMPOUT(0x24C1AA8D0);
}

uint64_t ThreadPoolAuto::runThreads(ThreadPoolAuto *this, unsigned int a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = *(this + 4);
  }

  v4 = tpThreadDispatch(*(this + 1), v2);
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x277D85DF8];
    v7 = "***ThreadPoolAuto::runThreads: tpThreadDispatch error\n";
    v8 = 54;
LABEL_7:
    fwrite(v7, v8, 1uLL, v6);
    *(this + 21) = 1;
    return v5;
  }

  v5 = tpThreadFinish(*(this + 1), v2);
  if (v5)
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = "***ThreadPoolAuto::runThreads: tpThreadFinish error\n";
    v8 = 52;
    goto LABEL_7;
  }

  return v5;
}

void sub_247820CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_247821318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_2478226C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, char *a45, char *a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, char *a55, char *a56, uint64_t a57)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a55)
  {
    a56 = a55;
    operator delete(a55);
  }

  a55 = &a35;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = &a38;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a55);

  std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::destroy(a42);
  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  a45 = &a48;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a45);
  if (a51)
  {
    a52 = a51;
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

void sub_247822A58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247822EB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<int,std::vector<float>>,std::__map_value_compare<int,std::__value_type<int,std::vector<float>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<float>>>>::__emplace_unique_key_args<int,std::pair<int,std::vector<float>>>(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_247823000(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_247823114(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

id _creditCardImage2stringCTCSegment(void *a1, int *a2, int a3, uint64_t *a4)
{
  v7 = a1;
  v8 = [MEMORY[0x277CCAB68] string];
  v9 = [MEMORY[0x277CCAB68] string];
  v10 = [MEMORY[0x277CCAB68] string];
  CTCLayer::CTCLayer(&v47);
  CTCLayer::setCodeMap(&v47, a2, a3);
  memset(v46, 0, sizeof(v46));
  std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v46, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  CTCLayer::setActivations(&v47, v46);
  v44 = v46;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v44);
  CTCLayer::pathDecodingCTCSegment(&v47, 1, a2, &v44);
  CTCLayer::pathDecodingCTCSegment(&v47, 2, a2, &v42);
  v36 = v7;
  CTCLayer::pathDecodingCTCSegment(&v47, 3, a2, &__p);
  v11 = v44;
  v12 = v45;
  while (v11 != v12)
  {
    v13 = unicodeToNSString();
    [v8 appendString:v13];

    v11 += 4;
  }

  v14 = v42;
  v15 = v43;
  while (v14 != v15)
  {
    v16 = unicodeToNSString();
    [v9 appendString:v16];

    v14 += 4;
  }

  v17 = __p;
  v18 = v41;
  while (v17 != v18)
  {
    v19 = unicodeToNSString();
    [v10 appendString:v19];

    v17 += 4;
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(&v37, v49, v50, (v50 - v49) >> 3);
  v21 = v37;
  v22 = v38;
  if (v37 != v38)
  {
    do
    {
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:v21[1]];
      [v20 addObject:v23];

      v21 += 2;
    }

    while (v21 != v22);
    v21 = v37;
  }

  if (v21)
  {
    v38 = v21;
    operator delete(v21);
  }

  v24 = MEMORY[0x277CBEAC0];
  v25 = MEMORY[0x277CBEA60];
  v35 = [MEMORY[0x277CCABB0] numberWithInt:v48];
  v34 = [v25 arrayWithObjects:{v8, v20, v35, 0}];
  v26 = MEMORY[0x277CBEA60];
  v27 = [MEMORY[0x277CCABB0] numberWithInt:v48];
  v28 = [v26 arrayWithObjects:{v9, v20, v27, 0}];
  v29 = MEMORY[0x277CBEA60];
  v30 = [MEMORY[0x277CCABB0] numberWithInt:v48];
  v31 = [v29 arrayWithObjects:{v10, v20, v30, 0}];
  v32 = [v24 dictionaryWithObjectsAndKeys:{v34, @"CardNumber", v28, @"Cardholder", v31, @"Expiration", 0}];

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  CTCLayer::~CTCLayer(&v47);

  return v32;
}

void sub_2478235D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  CTCLayer::~CTCLayer(&a33);

  _Unwind_Resume(a1);
}

id decodeCreditCardNumberActivations(uint64_t *a1, int *a2, int a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a1[1] != *a1)
  {
    CTCLayer::CTCLayer(v84);
    CTCLayer::setCodeMap(v84, a2, a3);
    memset(v83, 0, sizeof(v83));
    std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v83, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    CTCLayer::setActivations(v84, v83);
    v81 = v83;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v81);
    CTCLayer::getMaxActivations(v84);
    CTCLayer::setCummulativeScores(v84);
    CTCLayer::bestPathDecoding(v84, &v81);
    if (v82 != v81)
    {
      __p = 0;
      v79 = 0;
      v80 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v81, v82, (v82 - v81) >> 2);
      CTCLayer::computeScore(v84, &__p);
      if (__p)
      {
        v79 = __p;
        operator delete(__p);
      }
    }

    v55 = v6;
    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v8 = v81;
    v9 = v82;
    while (v8 != v9)
    {
      v10 = unicodeToNSString();
      [v7 appendString:v10];

      v8 += 4;
    }

    CTCLayer::pathDecodingFixedLengthInjectSpaces(v84, 16, &v76);
    CTCLayer::pathDecodingFixedLengthInjectSpaces(v84, 15, &v74);
    CTCLayer::pathDecodingFixedLengthInjectSpaces(v84, 19, &v72);
    CTCLayer::pathDecodingFixedLengthInjectSpaces(v84, 17, &v70);
    CTCLayer::pathDecodingFixedLengthInjectSpaces(v84, 18, &v68);
    CTCLayer::pathDecodingFixedLengthInjectSpaces(v84, 11, &v66);
    CTCLayer::pathDecodingFixedLengthInjectSpaces(v84, 14, &v64);
    CTCLayer::pathDecodingFixedLengthInjectSpaces(v84, 12, &v62);
    CTCLayer::pathDecodingFixedLengthInjectSpaces(v84, 10, &v60);
    v59 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v58 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v57 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v56 = v7;
    v14 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v17 = v76;
    v18 = v77;
    while (v17 != v18)
    {
      v19 = unicodeToNSString();
      [v59 appendString:v19];

      v17 += 4;
    }

    v20 = v74;
    v21 = v75;
    while (v20 != v21)
    {
      v22 = unicodeToNSString();
      [v58 appendString:v22];

      v20 += 4;
    }

    v23 = v72;
    v24 = v73;
    while (v23 != v24)
    {
      v25 = unicodeToNSString();
      [v57 appendString:v25];

      v23 += 4;
    }

    v26 = v70;
    v27 = v71;
    while (v26 != v27)
    {
      v28 = unicodeToNSString();
      [v11 appendString:v28];

      v26 += 4;
    }

    v29 = v68;
    v30 = v69;
    while (v29 != v30)
    {
      v31 = unicodeToNSString();
      [v12 appendString:v31];

      v29 += 4;
    }

    v32 = v66;
    v33 = v67;
    while (v32 != v33)
    {
      v34 = unicodeToNSString();
      [v13 appendString:v34];

      v32 += 4;
    }

    v35 = v64;
    v36 = v65;
    while (v35 != v36)
    {
      v37 = unicodeToNSString();
      [v14 appendString:v37];

      v35 += 4;
    }

    v38 = v62;
    v39 = v63;
    while (v38 != v39)
    {
      v40 = unicodeToNSString();
      [v15 appendString:v40];

      v38 += 4;
    }

    v41 = v60;
    v42 = v61;
    while (v41 != v42)
    {
      v43 = unicodeToNSString();
      [v16 appendString:v43];

      v41 += 4;
    }

    v6 = v55;
    v44 = [MEMORY[0x277CCACA8] _newZStringWithString:v56];
    [v55 addObject:v44];

    v45 = [MEMORY[0x277CCACA8] _newZStringWithString:v59];
    [v55 addObject:v45];

    v46 = [MEMORY[0x277CCACA8] _newZStringWithString:v58];
    [v55 addObject:v46];

    v47 = [MEMORY[0x277CCACA8] _newZStringWithString:v57];
    [v55 addObject:v47];

    v48 = [MEMORY[0x277CCACA8] _newZStringWithString:v12];
    [v55 addObject:v48];

    v49 = [MEMORY[0x277CCACA8] _newZStringWithString:v11];
    [v55 addObject:v49];

    v50 = [MEMORY[0x277CCACA8] _newZStringWithString:v13];
    [v55 addObject:v50];

    v51 = [MEMORY[0x277CCACA8] _newZStringWithString:v14];
    [v55 addObject:v51];

    v52 = [MEMORY[0x277CCACA8] _newZStringWithString:v15];
    [v55 addObject:v52];

    v53 = [MEMORY[0x277CCACA8] _newZStringWithString:v16];
    [v55 addObject:v53];

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    CTCLayer::~CTCLayer(v84);
  }

  return v6;
}