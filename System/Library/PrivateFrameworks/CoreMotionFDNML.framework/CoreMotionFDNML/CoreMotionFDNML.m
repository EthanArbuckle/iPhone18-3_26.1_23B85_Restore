void motion::kCalorimetryWRMetConfigPath(void *a1@<X8>)
{
  v3 = +[_TtC15CoreMotionFDNML8UAFPaths calorimetryWRMetConfigPath];
  v7 = v3;
  if (v3)
  {
    v4 = [v3 UTF8String];
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 > 0x16)
    {
      operator new();
    }

    *(a1 + 23) = v5;
    if (v5)
    {
      memmove(a1, v4, v5);
    }

    *(a1 + v6) = 0;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void motion::DMFeaturesMLPPrediction::predict()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_245F5DAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::~function(uint64_t a1)
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

uint64_t motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0::~$_0(uint64_t a1)
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

void motion::fm::ModelManagerRequest::~ModelManagerRequest(motion::fm::ModelManagerRequest *this)
{
  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(this + 32, *(this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void motion::CalorimetryReducedEmbeddings::predict()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_245F5DFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0::~$_0(uint64_t a1)
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

void std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 11);
    if (v4)
    {
      *(a2 + 12) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      *(a2 + 9) = v5;
      operator delete(v5);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E97CC8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,motion::fm::ArrayData>,std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (*(a1 + 16))
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a1 = a1 + 8;
    *(v7 + 16) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v22 = v8;
    v23 = v8;
    if (v8)
    {
      v9 = v8[2];
      if (v9)
      {
        v10 = *v9;
        if (*v9 == v8)
        {
          *v9 = 0;
          while (1)
          {
            v20 = v9[1];
            if (!v20)
            {
              break;
            }

            do
            {
              v9 = v20;
              v20 = *v20;
            }

            while (v20);
          }
        }

        else
        {
          for (v9[1] = 0; v10; v10 = v9[1])
          {
            do
            {
              v9 = v10;
              v10 = *v10;
            }

            while (v10);
          }
        }
      }

      v22 = v9;
    }

    v11 = v8;
    if (v8 && a2 != a3)
    {
      v12 = a2;
      do
      {
        std::string::operator=((v11 + 32), (v12 + 4));
        *(v11 + 56) = *(v12 + 14);
        if (v11 != v12)
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v11 + 64), v12[8], v12[9], (v12[9] - v12[8]) >> 2);
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v11 + 88), v12[11], v12[12], v12[12] - v12[11]);
        }

        std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__node_insert_multi(a1, v23);
        v23 = v22;
        if (v22)
        {
          v14 = *(v22 + 16);
          if (v14)
          {
            v15 = *v14;
            if (*v14 == v22)
            {
              *v14 = 0;
              while (1)
              {
                v17 = v14[1];
                if (!v17)
                {
                  break;
                }

                do
                {
                  v14 = v17;
                  v17 = *v17;
                }

                while (v17);
              }
            }

            else
            {
              for (v14[1] = 0; v15; v15 = v14[1])
              {
                do
                {
                  v14 = v15;
                  v15 = *v15;
                }

                while (v15);
              }
            }
          }

          v22 = v14;
        }

        v16 = v12[1];
        if (v16)
        {
          do
          {
            v4 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v4 = v12[2];
            v13 = *v4 == v12;
            v12 = v4;
          }

          while (!v13);
        }

        v11 = v23;
        if (v23)
        {
          v13 = v4 == a3;
        }

        else
        {
          v13 = 1;
        }

        v12 = v4;
      }

      while (!v13);
    }

    std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(a1, v11);
    v18 = v22;
    if (v22)
    {
      for (i = *(v22 + 16); i; i = *(i + 16))
      {
        v18 = i;
      }

      std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(a1, v18);
    }
  }

  if (v4 != a3)
  {
    std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__emplace_multi<std::pair<std::string const,motion::fm::ArrayData> const&>();
  }
}

void sub_245F5E46C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    v6 = *(a2 + 55);
    if (v6 >= 0)
    {
      v7 = *(a2 + 55);
    }

    else
    {
      v7 = *(a2 + 40);
    }

    if (v6 >= 0)
    {
      v8 = (a2 + 32);
    }

    else
    {
      v8 = *(a2 + 32);
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
        if (v12 >= 0)
        {
          v13 = *(v9 + 23);
        }

        else
        {
          v13 = v9[1];
        }

        if (v12 >= 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = v10;
        }

        if (v13 >= v7)
        {
          v15 = v7;
        }

        else
        {
          v15 = v13;
        }

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
        v18 = v5;
        if (!*v5)
        {
          goto LABEL_25;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    v18 = v5 + 1;
  }

  else
  {
    v18 = a1 + 1;
  }

LABEL_25:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *v18 = a2;
  v19 = **a1;
  if (v19)
  {
    *a1 = v19;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], *v18);
  a1[2] = (a1[2] + 1);
  return a2;
}

uint64_t std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(*a1, v2);
  }

  return a1;
}

char *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(char **a1, char *__src, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 1;
      if (v9 >> 1 <= a4)
      {
        v10 = a4;
      }

      v11 = v9 >= 0x7FFFFFFFFFFFFFFCLL;
      v12 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 62))
      {
        operator new();
      }
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 2)
  {
    v19 = a3 - __src;
    if (v19)
    {
      v20 = result;
      memmove(result, __src, v19);
      result = v20;
    }

    v18 = &result[v19];
  }

  else
  {
    v15 = &__src[v14];
    if (v13 != result)
    {
      result = memmove(result, __src, v14);
    }

    v16 = a1[1];
    v17 = a3 - v15;
    if (v17)
    {
      result = memmove(a1[1], v15, v17);
    }

    v18 = &v16[v17];
  }

  a1[1] = v18;
  return result;
}

char *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(char **a1, char *__src, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = a1[2] - *a1;
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (v12 - result >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      v19 = result;
      memmove(result, __src, v18);
      result = v19;
    }

    v17 = &result[v18];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != result)
    {
      result = memmove(result, __src, v13);
    }

    v15 = a1[1];
    v16 = a3 - v14;
    if (v16)
    {
      result = memmove(a1[1], v14, v16);
    }

    v17 = &v15[v16];
  }

  a1[1] = v17;
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  while (a2 != result)
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
      v11 = v3[1];
      if (!v11 || (*(v11 + 24) & 1) != 0)
      {
        if (*v2 != a2)
        {
          v12 = v2[1];
          v13 = *v12;
          v2[1] = *v12;
          if (v13)
          {
            *(v13 + 16) = v2;
          }

          v12[2] = v2[2];
          *(v2[2] + 8 * (*v2[2] != v2)) = v12;
          *v12 = v2;
          v2[2] = v12;
          a2 = v2;
        }

        v14 = a2[2];
        *(v14 + 24) = 1;
        v15 = *(v14 + 16);
        *(v15 + 24) = 0;
        v16 = *v15;
        v17 = *(*v15 + 8);
        *v15 = v17;
        if (v17)
        {
          *(v17 + 16) = v15;
        }

        *(v16 + 16) = v15[2];
        *(v15[2] + 8 * (*v15[2] != v15)) = v16;
        *(v16 + 8) = v15;
        v15[2] = v16;
        return result;
      }

      *(v2 + 24) = 1;
      *(v3 + 24) = v3 == result;
      *(v11 + 24) = 1;
      a2 = v3;
    }

    else
    {
      if (!v4 || (*(v4 + 24) & 1) != 0)
      {
        v5 = *v2;
        if (*v2 == a2)
        {
          v6 = *(v5 + 8);
          *v2 = v6;
          if (v6)
          {
            *(v6 + 16) = v2;
          }

          *(v5 + 16) = v2[2];
          *(v2[2] + 8 * (*v2[2] != v2)) = v5;
          *(v5 + 8) = v2;
          v2[2] = v5;
          a2 = v2;
        }

        v7 = a2[2];
        *(v7 + 24) = 1;
        v8 = *(v7 + 16);
        *(v8 + 24) = 0;
        v9 = *(v8 + 8);
        v10 = *v9;
        *(v8 + 8) = *v9;
        if (v10)
        {
          *(v10 + 16) = v8;
        }

        v9[2] = *(v8 + 16);
        *(*(v8 + 16) + 8 * (**(v8 + 16) != v8)) = v9;
        *v9 = v8;
        *(v8 + 16) = v9;
        return result;
      }

      *(v2 + 24) = 1;
      *(v3 + 24) = v3 == result;
      *(v4 + 24) = 1;
      a2 = v3;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 88);
      if (v3)
      {
        *(v2 + 96) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 64);
      if (v4)
      {
        *(v2 + 72) = v4;
        operator delete(v4);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
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
  v4 = __sz + 1;
  if (__sz != -1)
  {

    memmove(this, __s, v4);
  }
}

uint64_t motion::fm::ArrayData::ArrayData(uint64_t this, const motion::fm::ArrayData *a2)
{
  v2 = *a2;
  *(this + 8) = 0;
  *this = v2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_245F5EE80(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::~__func(void *a1)
{
  *a1 = &unk_2858D9EA0;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void std::__function::__func<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::~__func(void *a1)
{
  *a1 = &unk_2858D9EA0;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x24C195470);
}

uint64_t std::__function::__func<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2858D9EA0;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  operator delete(__p);
}

void std::__function::__func<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v2)
  {
    if (*(v2 + 8))
    {
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      if (*(v2 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v2 + 40), *(v2 + 48));
      }

      else
      {
        __p = *(v2 + 40);
      }

      operator new();
    }

    v5 = 0;
    v6 = 0;
    v4 = &v5;
    std::map<std::string,motion::fm::ArrayData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,motion::fm::ArrayData>,std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *> *,long>>>(&v4, *(v2 + 16), (v2 + 24));
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    operator new();
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_245F5F538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16)
{
  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(&a15, a16);
  std::shared_ptr<motion::fm::ModelManagerResponse const>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::DMFeaturesMLPPrediction::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN6motion23DMFeaturesMLPPrediction7predictERKNSt3__13mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_2fm9ArrayDataENS1_4lessIS8_EENS6_INS1_4pairIKS8_SA_EEEEEENS1_8functionIFvNS1_10shared_ptrIKNS9_16PredictionResultEEEEEEE3$_0")
  {
    v3 = 1;
  }

  else if (((v2 & "ZN6motion23DMFeaturesMLPPrediction7predictERKNSt3__13mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_2fm9ArrayDataENS1_4lessIS8_EENS6_INS1_4pairIKS8_SA_EEEEEENS1_8functionIFvNS1_10shared_ptrIKNS9_16PredictionResultEEEEEEE3$_0" & 0x8000000000000000) != 0) != __OFSUB__(v2, "ZN6motion23DMFeaturesMLPPrediction7predictERKNSt3__13mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_2fm9ArrayDataENS1_4lessIS8_EENS6_INS1_4pairIKS8_SA_EEEEEENS1_8functionIFvNS1_10shared_ptrIKNS9_16PredictionResultEEEEEEE3$_0"))
  {
    v4 = a1;
    v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN6motion23DMFeaturesMLPPrediction7predictERKNSt3__13mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_2fm9ArrayDataENS1_4lessIS8_EENS6_INS1_4pairIKS8_SA_EEEEEENS1_8functionIFvNS1_10shared_ptrIKNS9_16PredictionResultEEEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
    a1 = v4;
    v3 = v5 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<motion::fm::ModelManagerResponse const>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
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

uint64_t std::shared_ptr<motion::fm::PredictionResult const>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
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

uint64_t std::shared_ptr<motion::fm::PredictionResult>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
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

void motion::fm::PredictionResult::~PredictionResult(motion::fm::PredictionResult *this)
{
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(this, *(this + 1));
}

uint64_t *std::map<std::string,motion::fm::ArrayData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,motion::fm::ArrayData>,std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *> *,long>>>(uint64_t *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v12[5] = v3;
    v12[6] = v4;
    v6 = a2;
    v7 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__find_equal<std::string>(v7, v7 + 1, v12, &v11, v6 + 4);
      if (!*result)
      {
        std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__construct_node<std::pair<std::string const,motion::fm::ArrayData> const&>();
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

      v6 = v9;
    }

    while (v9 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__find_equal<std::string>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_20;
  }

  v10 = *(a2 + 55);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = a2[5];
  }

  if (v10 >= 0)
  {
    v15 = a2 + 4;
  }

  else
  {
    v15 = a2[4];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
LABEL_20:
    if (*a1 == a2)
    {
      v20 = a2;
LABEL_51:
      if (*a2)
      {
        *a3 = v20;
        return v20 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    v19 = *a2;
    if (*a2)
    {
      do
      {
        v20 = v19;
        v19 = v19[1];
      }

      while (v19);
    }

    else
    {
      v25 = a2;
      do
      {
        v20 = v25[2];
        v26 = *v20 == v25;
        v25 = v20;
      }

      while (v26);
    }

    v27 = *(a5 + 23);
    v28 = *(v20 + 55);
    if (v28 >= 0)
    {
      v29 = *(v20 + 55);
    }

    else
    {
      v29 = v20[5];
    }

    if (v28 >= 0)
    {
      v30 = v20 + 4;
    }

    else
    {
      v30 = v20[4];
    }

    if (v27 >= 0)
    {
      v31 = *(a5 + 23);
    }

    else
    {
      v31 = a5[1];
    }

    if (v27 >= 0)
    {
      v32 = a5;
    }

    else
    {
      v32 = *a5;
    }

    if (v31 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v31;
    }

    v34 = memcmp(v30, v32, v33);
    v35 = v29 < v31;
    if (v34)
    {
      v35 = v34 < 0;
    }

    if (v35)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v21 = memcmp(v15, v13, v16);
    v22 = v14 < v12;
    if (v21)
    {
      v22 = v21 < 0;
    }

    if (!v22)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 1);
    v23 = a2[1];
    if (v23)
    {
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      v36 = a2;
      do
      {
        v24 = v36[2];
        v26 = *v24 == v36;
        v36 = v24;
      }

      while (!v26);
    }

    if (v24 == v8)
    {
      goto LABEL_80;
    }

    v37 = *(v24 + 55);
    if (v37 >= 0)
    {
      v38 = *(v24 + 55);
    }

    else
    {
      v38 = v24[5];
    }

    if (v37 >= 0)
    {
      v39 = v24 + 4;
    }

    else
    {
      v39 = v24[4];
    }

    if (v38 >= v12)
    {
      v40 = v12;
    }

    else
    {
      v40 = v38;
    }

    v41 = memcmp(v13, v39, v40);
    v42 = v12 < v38;
    if (v41)
    {
      v42 = v41 < 0;
    }

    if (v42)
    {
LABEL_80:
      if (*a4)
      {
        *a3 = v24;
        return v24;
      }

      else
      {
        *a3 = a2;
      }

      return a4;
    }
  }

  return std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__find_equal<std::string>(a1, a3, a5);
}

void *std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
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
          goto LABEL_27;
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

LABEL_27:
  *a2 = v9;
  return v5;
}

std::string *std::__shared_ptr_emplace<motion::fm::PredictionResult>::__shared_ptr_emplace[abi:ne200100]<motion::fm::PredictionResult&,std::allocator<motion::fm::PredictionResult>,0>(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_2858D9F20;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[0] = &a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  std::map<std::string,motion::fm::ArrayData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,motion::fm::ArrayData>,std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *> *,long>>>(&a1[1], *a2, (a2 + 8));
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 40);
    *&a1[2].__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void sub_245F5FD10(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(v2, *(v1 + 32));
  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<motion::fm::PredictionResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858D9F20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C195470);
}

void std::__shared_ptr_emplace<motion::fm::PredictionResult>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 32);

  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(a1 + 24, v2);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void *std::__function::__func<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::~__func(void *a1)
{
  *a1 = &unk_2858D9F80;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void std::__function::__func<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::~__func(void *a1)
{
  *a1 = &unk_2858D9F80;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x24C195470);
}

uint64_t std::__function::__func<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2858D9F80;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  operator delete(__p);
}

void std::__function::__func<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v2)
  {
    if (*(v2 + 8))
    {
      v5 = 0;
      v6 = 0;
      v4 = &v5;
      if (*(v2 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v2 + 40), *(v2 + 48));
      }

      else
      {
        __p = *(v2 + 40);
      }

      operator new();
    }

    v5 = 0;
    v6 = 0;
    v4 = &v5;
    std::map<std::string,motion::fm::ArrayData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,motion::fm::ArrayData>,std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *> *,long>>>(&v4, *(v2 + 16), (v2 + 24));
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    operator new();
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_245F604C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16)
{
  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(&a15, a16);
  std::shared_ptr<motion::fm::ModelManagerResponse const>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0,std::allocator<motion::CalorimetryReducedEmbeddings::predict(std::map<std::string,motion::fm::ArrayData> const&,std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>)::$_0>,void ()(std::shared_ptr<motion::fm::ModelManagerResponse const>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN6motion28CalorimetryReducedEmbeddings7predictERKNSt3__13mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_2fm9ArrayDataENS1_4lessIS8_EENS6_INS1_4pairIKS8_SA_EEEEEENS1_8functionIFvNS1_10shared_ptrIKNS9_16PredictionResultEEEEEEE3$_0")
  {
    v3 = 1;
  }

  else if (((v2 & "ZN6motion28CalorimetryReducedEmbeddings7predictERKNSt3__13mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_2fm9ArrayDataENS1_4lessIS8_EENS6_INS1_4pairIKS8_SA_EEEEEENS1_8functionIFvNS1_10shared_ptrIKNS9_16PredictionResultEEEEEEE3$_0" & 0x8000000000000000) != 0) != __OFSUB__(v2, "ZN6motion28CalorimetryReducedEmbeddings7predictERKNSt3__13mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_2fm9ArrayDataENS1_4lessIS8_EENS6_INS1_4pairIKS8_SA_EEEEEENS1_8functionIFvNS1_10shared_ptrIKNS9_16PredictionResultEEEEEEE3$_0"))
  {
    v4 = a1;
    v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN6motion28CalorimetryReducedEmbeddings7predictERKNSt3__13mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_2fm9ArrayDataENS1_4lessIS8_EENS6_INS1_4pairIKS8_SA_EEEEEENS1_8functionIFvNS1_10shared_ptrIKNS9_16PredictionResultEEEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
    a1 = v4;
    v3 = v5 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t motion::fm::ArrayData::BytesLength(motion::fm::ArrayData *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  for (i = 1; v1 != v2; i *= v4)
  {
    v4 = *v1++;
  }

  if (*this == 1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2 * (*this == 0);
  }

  return i << v5;
}

uint64_t motion::fm::ArrayData::NumElements(motion::fm::ArrayData *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 1;
  }

  v3 = 1;
  do
  {
    v4 = *v1++;
    v3 *= v4;
  }

  while (v1 != v2);
  return v3;
}

void motion::fm::Client::Client(uint64_t a1, void *a2)
{
  v2 = a2;
  operator new();
}

{
  v2 = a2;
  operator new();
}

void sub_245F60690(_Unwind_Exception *a1)
{
  MEMORY[0x24C195470](v2, 0x80C40803F642BLL);

  _Unwind_Resume(a1);
}

void sub_245F6072C(_Unwind_Exception *a1)
{
  MEMORY[0x24C195470](v2, 0x80C40803F642BLL);

  _Unwind_Resume(a1);
}

void motion::fm::Client::Client(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6;
  std::make_unique[abi:ne200100]<motion::fm::Client::Impl,std::vector<std::string> &,std::string&,int &,std::string&,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,0>();
}

{
  v6 = a6;
  std::make_unique[abi:ne200100]<motion::fm::Client::Impl,std::vector<std::string> &,std::string&,int &,std::string&,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,0>();
}

void sub_245F60964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a22);
  MEMORY[0x24C195470](v23, v22);
  _Unwind_Resume(a1);
}

void motion::fm::Client::sendModelManagerRequestAsync(void ***a1, motion::fm::conversion *this, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (*(a3 + 23) < 0)
  {
    v7 = a4;
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    a4 = v7;
    v6 = *(v7 + 24);
    if (!v6)
    {
LABEL_7:
      v13 = v6;
      goto LABEL_9;
    }
  }

  else
  {
    __p = *a3;
    v6 = *(a4 + 24);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v6 != a4)
  {
    v6 = (*(*v6 + 16))(v6);
    goto LABEL_7;
  }

  v13 = v12;
  (*(*v6 + 24))(v6, v12);
LABEL_9:
  motion::fm::Client::Impl::sendModelManagerRequestAsync(v5, this, &__p, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_13;
  }

  if (v13)
  {
    (*(*v13 + 40))(v13, v8, v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_245F60BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void motion::fm::Client::Impl::sendModelManagerRequestAsync(void **a1, motion::fm::conversion *this, uint64_t *a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = motion::fm::conversion::FromModelManagerCxx(this, this);
  v8 = *a1;
  if (*(a3 + 23) >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3321888768;
  v17[2] = ___ZN6motion2fm6Client4Impl28sendModelManagerRequestAsyncERKNS0_19ModelManagerRequestENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENS6_8functionIFvNS6_10shared_ptrIKNS0_20ModelManagerResponseEEEEEE_block_invoke;
  v17[3] = &__block_descriptor_72_ea8_40c79_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm20ModelManagerResponseEEEEEE_e58_v16__0___TtC15CoreMotionFDNML25CMFoundationModelResponse_8l;
  v17[4] = a1;
  v11 = *(a4 + 24);
  if (!v11)
  {
    goto LABEL_7;
  }

  if (v11 != a4)
  {
    v11 = (*(*v11 + 16))(v11);
LABEL_7:
    v19 = v11;
    goto LABEL_9;
  }

  v19 = v18;
  (*(*v11 + 24))(v11, v18);
LABEL_9:
  [v8 sendAsyncWithRequest:v7 loggingID:v10 completionHandler:v17];

  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))(v19, v12, v13, v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void *motion::fm::Client::Client(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void motion::fm::Client::Client(uint64_t a1, id **a2)
{
  v2 = (*a2)[1];
  v3 = **a2;
  v4 = v2;
  operator new();
}

id **motion::fm::Client::operator=(id **result, id **a2)
{
  if (result != a2)
  {
    v3 = (*a2)[1];
    v4 = **a2;
    operator new();
  }

  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;

    MEMORY[0x24C195470](v3, 0x80C40803F642BLL);
    return v4;
  }

  return result;
}

void motion::fm::Client::~Client(id **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {

    MEMORY[0x24C195470](v1, 0x80C40803F642BLL);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {

    MEMORY[0x24C195470](v1, 0x80C40803F642BLL);
  }
}

id motion::fm::conversion::NSStringFromCxx(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];

  return v2;
}

void motion::fm::conversion::CxxFromNSString(motion::fm::conversion *this@<X0>, _BYTE *a2@<X8>)
{
  v7 = this;
  v4 = [(motion::fm::conversion *)v7 UTF8String];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 > 0x16)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v4, v5);
  }

  a2[v6] = 0;
}

id motion::fm::conversion::NSArrayFromVector(uint64_t **a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1)];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if (*(v3 + 23) >= 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = *v3;
      }

      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      [v2 addObject:v6];

      v3 += 3;
    }

    while (v3 != v4);
  }

  v7 = [v2 copy];

  return v7;
}

_TtC15CoreMotionFDNML24CMFoundationModelRequest *motion::fm::conversion::FromModelManagerCxx(motion::fm::conversion *this, const motion::fm::ModelManagerRequest *a2)
{
  v3 = objc_alloc_init(_TtC15CoreMotionFDNML24CMFoundationModelRequest);
  v4 = *(this + 4);
  if (v4 != (this + 40))
  {
    do
    {
      v10 = (v4 + 32);
      if (*(v4 + 55) < 0)
      {
        v10 = *v10;
      }

      v11 = *(v4 + 18) - *(v4 + 8);
      v12 = *(v4 + 12) - *(v4 + 11);
      [CMFoundationModelRequest addArrayWithName:v3 type:"addArrayWithName:type:shape:dimensions:byteArray:byteLength:" shape:v10 dimensions:*(v4 + 56) byteArray:? byteLength:?];
      v13 = *(v4 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v4 + 2);
          v15 = *v14 == v4;
          v4 = v14;
        }

        while (!v15);
      }

      v4 = v14;
    }

    while (v14 != (this + 40));
  }

  [(CMFoundationModelRequest *)v3 setTimestamp:*this];
  v7 = *(this + 1);
  v6 = this + 8;
  v5 = v7;
  if (v6[23] >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  [(CMFoundationModelRequest *)v3 setModelName:v8];

  return v3;
}

void motion::fm::conversion::FromSwiftModelManager(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  v39.__r_.__value_.__r.__words[0] = &v39.__r_.__value_.__l.__size_;
  *&v39.__r_.__value_.__r.__words[1] = 0uLL;
  memset(&__p, 0, sizeof(__p));
  if (v3)
  {
    v36 = 0;
    [v3 getType:&v36];
    v38 = v36;
    [v4 getMachContinuousTimestamp:&v37];
    if (!v38)
    {
      *&v29.__r_.__value_.__r.__words[1] = 0uLL;
      v29.__r_.__value_.__r.__words[0] = &v29.__r_.__value_.__l.__size_;
      std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(&v39, v39.__r_.__value_.__l.__size_);
      v39 = v29;
      if (v29.__r_.__value_.__r.__words[2])
      {
        *(v39.__r_.__value_.__l.__size_ + 16) = &v39.__r_.__value_.__l.__size_;
        v29.__r_.__value_.__r.__words[0] = &v29.__r_.__value_.__l.__size_;
        *&v29.__r_.__value_.__r.__words[1] = 0uLL;
      }

      else
      {
        v39.__r_.__value_.__r.__words[0] = &v39.__r_.__value_.__l.__size_;
      }

      std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(&v29, v29.__r_.__value_.__l.__size_);
      v10 = [v4 resultKeys];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v12)
      {
        v28 = *v33;
        v25 = a2 + 24;
        obj = v11;
        while (2)
        {
          v13 = 0;
          if (v12 <= 1)
          {
            v14 = 1;
          }

          else
          {
            v14 = v12;
          }

          v27 = v14;
          do
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v32 + 1) + 8 * v13);
            if (v15)
            {
              v31 = -1;
              [v4 typeOfArrayWithKey:v15 type:&v31];
              if (v31 == 255)
              {
                motion::fm::conversion::CxxFromNSString(v15, &v29);
                v20 = std::string::insert(&v29, 0, "Issue retrieving array type from Swift response for key");
                v21 = v20->__r_.__value_.__r.__words[0];
                v41[0] = v20->__r_.__value_.__l.__size_;
                *(v41 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
                v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
                v20->__r_.__value_.__l.__size_ = 0;
                v20->__r_.__value_.__r.__words[2] = 0;
                v20->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                __p.__r_.__value_.__r.__words[0] = v21;
                __p.__r_.__value_.__l.__size_ = v41[0];
                *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v41 + 7);
                *(&__p.__r_.__value_.__s + 23) = v22;
                if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v29.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v30 = -1;
                [v4 dimensionOfArrayWithKey:v15 dim:&v30];
                if (v30 != 255)
                {
                  operator new();
                }

                MEMORY[0x24C195400](&__p, "Issue retrieving array dimension");
                *a2 = v37;
                *(a2 + 8) = v38;
                size = v39.__r_.__value_.__l.__size_;
                *(a2 + 16) = v39.__r_.__value_.__r.__words[0];
                *(a2 + 24) = size;
                v24 = v39.__r_.__value_.__r.__words[2];
                *(a2 + 32) = *(&v39.__r_.__value_.__l + 2);
                if (v24)
                {
                  *(*v25 + 16) = v25;
                  v39.__r_.__value_.__r.__words[0] = &v39.__r_.__value_.__l.__size_;
                  *&v39.__r_.__value_.__r.__words[1] = 0uLL;
                }

                else
                {
                  *(a2 + 16) = v25;
                }

                *(a2 + 40) = __p;
                memset(&__p, 0, sizeof(__p));
              }

              goto LABEL_37;
            }

            ++v13;
          }

          while (v13 != v27);
          v11 = obj;
          v12 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }

    if (v38 != 1)
    {
      goto LABEL_33;
    }

    v5 = [v4 errorMessage];
    v6 = v5;
    if (v5)
    {
      motion::fm::conversion::CxxFromNSString(v5, &v29);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v29;
    }

    else
    {
      MEMORY[0x24C195400](&__p, "Inference failed but received no error message.");
      *a2 = v37;
      *(a2 + 8) = v38;
      v7 = v39.__r_.__value_.__l.__size_;
      *(a2 + 16) = v39.__r_.__value_.__r.__words[0];
      *(a2 + 24) = v7;
      v8 = a2 + 24;
      v9 = v39.__r_.__value_.__r.__words[2];
      *(a2 + 32) = *(&v39.__r_.__value_.__l + 2);
      if (v9)
      {
        *(*v8 + 16) = v8;
        v39.__r_.__value_.__r.__words[0] = &v39.__r_.__value_.__l.__size_;
        *&v39.__r_.__value_.__r.__words[1] = 0uLL;
      }

      else
      {
        *(a2 + 16) = v8;
      }

      *(a2 + 40) = __p;
      memset(&__p, 0, sizeof(__p));
    }

    if (v6)
    {
LABEL_33:
      *a2 = v37;
      *(a2 + 8) = v38;
      v16 = v39.__r_.__value_.__l.__size_;
      *(a2 + 16) = v39.__r_.__value_.__r.__words[0];
      *(a2 + 24) = v16;
      v17 = a2 + 24;
      v18 = v39.__r_.__value_.__r.__words[2];
      *(a2 + 32) = *(&v39.__r_.__value_.__l + 2);
      if (v18)
      {
        *(*v17 + 16) = v17;
        v39.__r_.__value_.__r.__words[0] = &v39.__r_.__value_.__l.__size_;
        *&v39.__r_.__value_.__r.__words[1] = 0uLL;
      }

      else
      {
        *(a2 + 16) = v17;
      }

      *(a2 + 40) = __p;
      memset(&__p, 0, sizeof(__p));
    }
  }

  else
  {
    MEMORY[0x24C195400](&__p, "Response from Swift was nil.");
  }

LABEL_37:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(&v39, v39.__r_.__value_.__l.__size_);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_245F61B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  motion::fm::ModelManagerResponse::~ModelManagerResponse(&a36);

  _Unwind_Resume(a1);
}

void motion::fm::ArrayData::~ArrayData(motion::fm::ArrayData *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void motion::fm::ModelManagerResponse::~ModelManagerResponse(motion::fm::ModelManagerResponse *this)
{
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(this + 16, *(this + 3));
}

void ___ZN6motion2fm6Client4Impl28sendModelManagerRequestAsyncERKNS0_19ModelManagerRequestENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENS6_8functionIFvNS6_10shared_ptrIKNS0_20ModelManagerResponseEEEEEE_block_invoke(uint64_t a1, void *a2)
{
  v5[20] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  motion::fm::conversion::FromSwiftModelManager(v3, v5);
  operator new();
}

void sub_245F6204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<motion::fm::ModelManagerResponse>::~shared_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void ___ZN6motion2fm6Client4Impl28sendModelManagerRequestAsyncERKNS0_19ModelManagerRequestENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENS6_8functionIFvNS6_10shared_ptrIKNS0_20ModelManagerResponseEEEEEE_block_invoke_2(void *a1)
{
  v1 = a1[9];
  v4 = a1[8];
  v5 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[7];
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &v4);
  v3 = v5;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

uint64_t __copy_helper_block_ea8_32c79_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm20ModelManagerResponseEEEEEE64c60_ZTSNSt3__110shared_ptrIN6motion2fm20ModelManagerResponseEEE(void *a1, void *a2)
{
  result = a2[7];
  if (result)
  {
    if (result == a2 + 4)
    {
      a1[7] = a1 + 4;
      result = (*(*a2[7] + 24))(a2[7]);
    }

    else
    {
      result = (*(*result + 16))(result);
      a1[7] = result;
    }
  }

  else
  {
    a1[7] = 0;
  }

  v5 = a2[9];
  a1[8] = a2[8];
  a1[9] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_32c79_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm20ModelManagerResponseEEEEEE64c60_ZTSNSt3__110shared_ptrIN6motion2fm20ModelManagerResponseEEE(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  result = *(a1 + 56);
  if (result == v1)
  {
    v5 = *(*result + 32);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = *(*result + 40);
  }

  return v5();
}

uint64_t std::shared_ptr<motion::fm::ModelManagerResponse>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
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

uint64_t __copy_helper_block_ea8_40c79_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm20ModelManagerResponseEEEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  if (result)
  {
    if (result == a2 + 40)
    {
      *(a1 + 64) = a1 + 40;
      v4 = *(**(a2 + 64) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 64) = result;
    }
  }

  else
  {
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_40c79_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm20ModelManagerResponseEEEEEE(uint64_t a1)
{
  v1 = a1 + 40;
  result = *(a1 + 64);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_emplace<motion::fm::ModelManagerResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858DA060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C195470);
}

void std::__shared_ptr_emplace<motion::fm::ModelManagerResponse>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);

  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(a1 + 40, v2);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    while (v3 != v2)
    {
      v4 = *(v3 - 1);
      v3 -= 3;
      if (v4 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      while (v4 != v3)
      {
        v5 = *(v4 - 1);
        v4 -= 3;
        if (v5 < 0)
        {
          operator delete(*v4);
        }
      }

      v2[1] = v3;
      operator delete(**a1);
    }
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void *motion::fm::Client::Impl::Impl(void *a1, uint64_t **a2, uint64_t *a3, int a4, uint64_t *a5, void *a6)
{
  v11 = a6;
  v12 = [_TtC15CoreMotionFDNML23CMFoundationModelClient alloc];
  v13 = motion::fm::conversion::NSArrayFromVector(a2);
  if (*(a3 + 23) >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
  if (*(a5 + 23) >= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = *a5;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
  *a1 = [(CMFoundationModelClient *)v12 initWithSupportedAssetBundleIdentifiers:v13 useCaseID:v15 onBehalfOfPID:a4 loggingIdentifier:v17];

  a1[1] = v11;
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    result = *v3;
    if (*v3)
    {
      return result;
    }

LABEL_28:
    operator new();
  }

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

  do
  {
    while (1)
    {
      v7 = v2;
      v10 = v2[4];
      v8 = v2 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v2 = *v7;
      v3 = v7;
      if (!*v7)
      {
        goto LABEL_25;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      break;
    }

    v3 = v7 + 1;
    v2 = v7[1];
  }

  while (v2);
LABEL_25:
  result = *v3;
  if (!*v3)
  {
    goto LABEL_28;
  }

  return result;
}

void sub_245F62AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_245F62B4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  motion::fm::CoreMLModel::Impl::~Impl(va);
  _Unwind_Resume(a1);
}

void motion::fm::CoreMLModel::CoreMLModel()
{
  operator new();
}

{
  operator new();
}

void motion::fm::CoreMLModel::CoreMLModel(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  operator new();
}

{
  v3 = a3;
  operator new();
}

void sub_245F62C64(_Unwind_Exception *a1)
{
  MEMORY[0x24C195470](v2, 0x80C40D6874129);

  _Unwind_Resume(a1);
}

void sub_245F62D08(_Unwind_Exception *a1)
{
  MEMORY[0x24C195470](v2, 0x80C40D6874129);

  _Unwind_Resume(a1);
}

void motion::fm::CoreMLModel::CoreMLModel(motion::fm::CoreMLModel *this, const char *a2)
{
  operator new();
}

{
  operator new();
}

uint64_t motion::fm::CoreMLModel::predictAsync(void ***a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a3 + 24);
  if (v4)
  {
    v5 = a2;
    if (v4 == a3)
    {
      v9 = v8;
      (*(*v4 + 24))(v4, v8);
    }

    else
    {
      v9 = (*(*v4 + 16))(v4);
    }

    a2 = v5;
  }

  else
  {
    v9 = 0;
  }

  motion::fm::CoreMLModel::Impl::predictAsync(v3, a2, v8);
  result = v9;
  if (v9 == v8)
  {
    result = (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    result = (*(*v9 + 40))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245F62F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>::~function(va);
  _Unwind_Resume(a1);
}

void motion::fm::CoreMLModel::Impl::predictAsync(void **a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = motion::fm::conversion::FromCxx(a2);
  v6 = *a1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = ___ZNK6motion2fm11CoreMLModel4Impl12predictAsyncERKNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_9ArrayDataENS3_4lessISA_EENS8_INS3_4pairIKSA_SB_EEEEEENS3_8functionIFvNS3_10shared_ptrIKNS0_16PredictionResultEEEEEE_block_invoke;
  v13[3] = &__block_descriptor_72_ea8_40c75_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm16PredictionResultEEEEEE_e60_v24__0___TtC15CoreMotionFDNML15CMWrappedArrays_8__NSError_16l;
  v13[4] = a1;
  v7 = *(a3 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a3)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    v15 = v7;
    goto LABEL_6;
  }

  v15 = v14;
  (*(*v7 + 24))(v7, v14);
LABEL_6:
  [v6 predictAsyncFor:v5 completionHandler:v13];
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15, v8, v9, v10, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t std::function<void ()(std::shared_ptr<motion::fm::PredictionResult const>)>::~function(uint64_t a1)
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

void motion::fm::CoreMLModel::Impl::predict(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = motion::fm::conversion::FromCxx(a2);
  v6 = *a1;
  v20 = 0;
  v7 = [v6 predictFor:v5 error:&v20];
  v8 = v20;
  v9 = v8;
  *(a3 + 8) = 0;
  v10 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v11 = (a3 + 24);
  *a3 = a3 + 8;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  if (v7)
  {
    motion::fm::conversion::FromSwift(v7, &v18);
    std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(a3, *(a3 + 8));
    v12 = *(&v18 + 1);
    *a3 = v18;
    *(a3 + 8) = v12;
    v13 = v19;
    *(a3 + 16) = v19;
    if (v13)
    {
      *(*v10 + 16) = v10;
      *&v18 = &v18 + 8;
      *(&v18 + 1) = 0;
      v19 = 0;
    }

    else
    {
      *a3 = v10;
    }

    std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(&v18, *(&v18 + 1));
  }

  else
  {
    v14 = [v8 localizedDescription];
    v15 = [v14 UTF8String];
    v16 = strlen(v15);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 > 0x16)
    {
      operator new();
    }

    HIBYTE(v19) = v16;
    if (v16)
    {
      memmove(&v18, v15, v16);
    }

    *(&v18 + v17) = 0;
    if (*(a3 + 47) < 0)
    {
      operator delete(*v11);
    }

    *v11 = v18;
    *(a3 + 40) = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18) = 0;
  }
}

void sub_245F63390(_Unwind_Exception *a1)
{
  motion::fm::PredictionResult::~PredictionResult(v4);

  _Unwind_Resume(a1);
}

void *motion::fm::CoreMLModel::CoreMLModel(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void motion::fm::CoreMLModel::CoreMLModel(uint64_t a1, id **a2)
{
  v3 = **a2;
  v4 = (*a2)[2];
  operator new();
}

id **motion::fm::CoreMLModel::operator=(id **result, id **a2)
{
  if (result != a2)
  {
    v3 = **a2;
    v4 = (*a2)[2];
    operator new();
  }

  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;

    MEMORY[0x24C195470](v3, 0x80C40D6874129);
    return v4;
  }

  return result;
}

void motion::fm::CoreMLModel::~CoreMLModel(id **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {

    MEMORY[0x24C195470](v1, 0x80C40D6874129);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {

    MEMORY[0x24C195470](v1, 0x80C40D6874129);
  }
}

_TtC15CoreMotionFDNML15CMWrappedArrays *motion::fm::conversion::FromCxx(void *a1)
{
  v2 = objc_alloc_init(_TtC15CoreMotionFDNML15CMWrappedArrays);
  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      v7 = v4 + 4;
      if (*(v4 + 55) < 0)
      {
        v7 = *v7;
      }

      v8 = *(v4 + 18) - v4[8];
      v9 = v4[12] - v4[11];
      [CMWrappedArrays addArrayWithName:v2 type:"addArrayWithName:type:shape:dimensions:byteArray:byteLength:" shape:v7 dimensions:*(v4 + 56) byteArray:? byteLength:?];
      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v3);
  }

  return v2;
}

void motion::fm::conversion::FromSwift(void *a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  [v3 keys];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  obj = v10 = 0u;
  if ([obj countByEnumeratingWithState:&v9 objects:v13 count:16])
  {
    *v10;
    *v10;
    v4 = **(&v9 + 1);
    v8 = 0;
    [v3 typeOfArrayWithKey:v4 type:&v8];
    v7 = 0;
    [v3 dimensionOfArrayWithKey:v4 dim:&v7];
    operator new();
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_245F63B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(a11, *(a11 + 8));

  _Unwind_Resume(a1);
}

void **motion::fm::CoreMLModel::Impl::Impl(void **a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a4)
  {
    v18 = 0;
    v8 = &v18;
    v9 = [_TtC15CoreMotionFDNML13CMCoreMLModel fromBundlePath:a2 error:&v18];
  }

  else
  {
    v19 = 0;
    v8 = &v19;
    v9 = [_TtC15CoreMotionFDNML13CMCoreMLModel fromName:a2 error:&v19];
  }

  v10 = v9;
  v11 = *v8;
  v12 = *a1;
  *a1 = v10;

  v13 = a1[1];
  a1[1] = v11;
  v14 = v11;

  v15 = a1[2];
  a1[2] = v7;
  v16 = v7;

  return a1;
}

void ___ZNK6motion2fm11CoreMLModel4Impl12predictAsyncERKNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_9ArrayDataENS3_4lessISA_EENS8_INS3_4pairIKSA_SB_EEEEEENS3_8functionIFvNS3_10shared_ptrIKNS0_16PredictionResultEEEEEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v6 localizedDescription];
    v8 = [objc_claimAutoreleasedReturnValue() UTF8String];
    v9 = strlen(v8);
    if (v9 < 0x7FFFFFFFFFFFFFF8)
    {
      v10 = v9;
      if (v9 <= 0x16)
      {
        *(&__dst.__r_.__value_.__s + 23) = v9;
        if (v9)
        {
          memmove(&__dst, v8, v9);
        }

        __dst.__r_.__value_.__s.__data_[v10] = 0;
        v12 = 0;
        v13 = 0;
        v11 = &v12;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = __dst;
        }

        operator new();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  motion::fm::conversion::FromSwift(v5, &__dst);
  v12 = 0;
  v13 = 0;
  v11 = &v12;
  std::map<std::string,motion::fm::ArrayData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,motion::fm::ArrayData>,std::__tree_node<std::__value_type<std::string,motion::fm::ArrayData>,void *> *,long>>>(&v11, __dst.__r_.__value_.__l.__data_, &__dst.__r_.__value_.__l.__size_);
  memset(&__p, 0, sizeof(__p));
  operator new();
}

void sub_245F64320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, char *a18)
{
  std::shared_ptr<motion::fm::PredictionResult>::~shared_ptr[abi:ne200100](&a9);
  motion::fm::PredictionResult::~PredictionResult(&a11);
  std::__tree<std::__value_type<std::string,motion::fm::ArrayData>,std::__map_value_compare<std::string,std::__value_type<std::string,motion::fm::ArrayData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,motion::fm::ArrayData>>>::destroy(&__p, a18);

  _Unwind_Resume(a1);
}

void ___ZNK6motion2fm11CoreMLModel4Impl12predictAsyncERKNSt3__13mapINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_9ArrayDataENS3_4lessISA_EENS8_INS3_4pairIKSA_SB_EEEEEENS3_8functionIFvNS3_10shared_ptrIKNS0_16PredictionResultEEEEEE_block_invoke_2(void *a1)
{
  v1 = a1[9];
  v4 = a1[8];
  v5 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[7];
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &v4);
  v3 = v5;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

{
  v1 = a1[9];
  v4 = a1[8];
  v5 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[7];
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &v4);
  v3 = v5;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

uint64_t __copy_helper_block_ea8_32c75_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm16PredictionResultEEEEEE64c56_ZTSNSt3__110shared_ptrIN6motion2fm16PredictionResultEEE(void *a1, void *a2)
{
  result = a2[7];
  if (result)
  {
    if (result == a2 + 4)
    {
      a1[7] = a1 + 4;
      result = (*(*a2[7] + 24))(a2[7]);
    }

    else
    {
      result = (*(*result + 16))(result);
      a1[7] = result;
    }
  }

  else
  {
    a1[7] = 0;
  }

  v5 = a2[9];
  a1[8] = a2[8];
  a1[9] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_32c75_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm16PredictionResultEEEEEE64c56_ZTSNSt3__110shared_ptrIN6motion2fm16PredictionResultEEE(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  result = *(a1 + 56);
  if (result == v1)
  {
    v5 = *(*result + 32);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = *(*result + 40);
  }

  return v5();
}

uint64_t __copy_helper_block_ea8_40c75_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm16PredictionResultEEEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  if (result)
  {
    if (result == a2 + 40)
    {
      *(a1 + 64) = a1 + 40;
      v4 = *(**(a2 + 64) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 64) = result;
    }
  }

  else
  {
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_40c75_ZTSNSt3__18functionIFvNS_10shared_ptrIKN6motion2fm16PredictionResultEEEEEE(uint64_t a1)
{
  v1 = a1 + 40;
  result = *(a1 + 64);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

motion::fm::CoreMLModel::Impl *motion::fm::CoreMLModel::Impl::Impl(motion::fm::CoreMLModel::Impl *this, const char *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v8 = 0;
  v3 = [_TtC15CoreMotionFDNML13CMCoreMLModel fromName:a2 error:&v8];
  v4 = v8;
  v5 = *this;
  *this = v3;

  v6 = *(this + 1);
  *(this + 1) = v4;

  return this;
}

uint64_t sub_245F64910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_245F765D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_245F649D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_245F765D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_245F64A94()
{
  sub_245F64B6C();
  if (v0 <= 0x3F)
  {
    sub_245F765D8();
    if (v1 <= 0x3F)
    {
      sub_245F64EE4(319, &qword_27EE38B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_245F64B6C()
{
  if (!qword_27EE38B70)
  {
    type metadata accessor for CoreMotionFoundationModel_Array(255);
    v0 = sub_245F76838();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE38B70);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s15CoreMotionFDNML39CoreMotionFoundationModel_ArrayDataTypeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15CoreMotionFDNML39CoreMotionFoundationModel_ArrayDataTypeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_245F64C5C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F64C7C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_245F64CC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_245F765D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_245F64D80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_245F765D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_245F64E24()
{
  sub_245F64EE4(319, &qword_27EE38B90, MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_245F765D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_245F64EE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_245F64F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_245F765D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_245F6501C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_245F765D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_245F650E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_245F65118()
{
  sub_245F64B6C();
  if (v0 <= 0x3F)
  {
    sub_245F765D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_245F651B4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_245F651E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_245F6520C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F682D4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_245F65270()
{
  result = qword_27EE38BA8;
  if (!qword_27EE38BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38BA8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_245F65340()
{
  result = qword_27EE38BC0;
  if (!qword_27EE38BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38BC0);
  }

  return result;
}

unint64_t sub_245F65398()
{
  result = qword_27EE38BC8;
  if (!qword_27EE38BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38BC8);
  }

  return result;
}

unint64_t sub_245F653FC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_245F65414()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_245F65440@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_245F6545C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_245F65480()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_245F76A88();
  sub_245F76848();
  return sub_245F76A98();
}

uint64_t sub_245F654EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F6819C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_245F6553C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_245F76A88();
  sub_245F76848();
  return sub_245F76A98();
}

BOOL sub_245F655A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

unint64_t sub_245F655E4()
{
  result = qword_27EE38BD0;
  if (!qword_27EE38BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38BD0);
  }

  return result;
}

uint64_t sub_245F65668(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_245F656C0()
{
  result = qword_27EE38BE8;
  if (!qword_27EE38BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38BE8);
  }

  return result;
}

unint64_t sub_245F65718()
{
  result = qword_27EE38BF0;
  if (!qword_27EE38BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38BF0);
  }

  return result;
}

uint64_t sub_245F6576C()
{
  v0 = sub_245F76788();
  __swift_allocate_value_buffer(v0, qword_27EE38DE8);
  __swift_project_value_buffer(v0, qword_27EE38DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C70, &qword_245F79670);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C78, &qword_245F79678) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_245F78E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FLOAT32";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_245F76768();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FLOAT64";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "UINT8";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_245F76778();
}

uint64_t sub_245F659A0()
{
  v0 = sub_245F76788();
  __swift_allocate_value_buffer(v0, qword_27EE38E00);
  __swift_project_value_buffer(v0, qword_27EE38E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C70, &qword_245F79670);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C78, &qword_245F79678) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_245F78E80;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SUCCESS";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_245F76768();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FAILURE";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_245F76778();
}

uint64_t sub_245F65B8C()
{
  v0 = sub_245F76788();
  __swift_allocate_value_buffer(v0, qword_27EE38E18);
  __swift_project_value_buffer(v0, qword_27EE38E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C70, &qword_245F79670);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C78, &qword_245F79678) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_245F78E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shape";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_245F76768();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "values";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_245F76778();
}

uint64_t sub_245F65DA0()
{
  result = sub_245F76648();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_245F76668();
          break;
        case 2:
          sub_245F682D4();
          sub_245F76658();
          break;
        case 1:
          sub_245F76678();
          break;
      }

      result = sub_245F76648();
    }
  }

  return result;
}

uint64_t sub_245F65E7C()
{
  if (!*(*v0 + 16) || (result = sub_245F76718(), !v1))
  {
    v3 = v1;
    if (*(v0 + 8))
    {
      v11 = *(v0 + 8);
      v12 = *(v0 + 16);
      sub_245F682D4();
      result = sub_245F76728();
      if (v1)
      {
        return result;
      }

      v3 = 0;
    }

    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_15;
      }

      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
    }

    else
    {
      if (!v6)
      {
        v7 = v3;
        if ((v5 & 0xFF000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_14:
        result = sub_245F76738();
        if (v7)
        {
          return result;
        }

        goto LABEL_15;
      }

      v8 = v4;
      v9 = v4 >> 32;
    }

    v7 = v3;
    if (v8 != v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    v10 = v0 + *(type metadata accessor for CoreMotionFoundationModel_Array(0) + 28);
    return sub_245F765B8();
  }

  return result;
}

uint64_t sub_245F65FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = xmmword_245F78E90;
  v2 = a2 + *(a1 + 28);
  return sub_245F765C8();
}

uint64_t (*sub_245F66020(uint64_t a1, uint64_t a2))()
{
  result = nullsub_3;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_245F6607C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F67460(&qword_27EE38C80, type metadata accessor for CoreMotionFoundationModel_Array);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_245F66120(uint64_t a1)
{
  v2 = sub_245F67460(&qword_27EE38C30, type metadata accessor for CoreMotionFoundationModel_Array);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_245F66190()
{
  sub_245F67460(&qword_27EE38C30, type metadata accessor for CoreMotionFoundationModel_Array);

  return sub_245F766F8();
}

uint64_t sub_245F66214()
{
  v0 = sub_245F76788();
  __swift_allocate_value_buffer(v0, qword_27EE38E30);
  __swift_project_value_buffer(v0, qword_27EE38E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C70, &qword_245F79670);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C78, &qword_245F79678) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_245F78E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mach_continuous_timestamp";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_245F76768();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_name";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 12;
  *v11 = "input_arrays";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_245F76778();
}

uint64_t sub_245F66424()
{
  while (1)
  {
    result = sub_245F76648();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 12:
        sub_245F66C1C();
        break;
      case 2:
        sub_245F76698();
        break;
      case 1:
        sub_245F766A8();
        break;
    }
  }

  return result;
}

uint64_t sub_245F664D4()
{
  if (!*v0 || (result = sub_245F76758(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_245F76748(), !v1))
    {
      if (!*(v0[3] + 16) || (sub_245F765A8(), type metadata accessor for CoreMotionFoundationModel_Array(0), sub_245F67460(&qword_27EE38C30, type metadata accessor for CoreMotionFoundationModel_Array), sub_245F67460(&qword_27EE38C38, type metadata accessor for CoreMotionFoundationModel_Array), result = sub_245F76708(), !v1))
      {
        v5 = v0 + *(type metadata accessor for CoreMotionFoundationModel_Request(0) + 28);
        return sub_245F765B8();
      }
    }
  }

  return result;
}

uint64_t sub_245F66660@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  a2[3] = sub_245F6D310(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 28);
  return sub_245F765C8();
}

uint64_t (*sub_245F666C8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_4;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_245F66720(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F67460(&qword_27EE38C58, type metadata accessor for CoreMotionFoundationModel_Request);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_245F667C0(uint64_t a1)
{
  v2 = sub_245F67460(&qword_27EE38C18, type metadata accessor for CoreMotionFoundationModel_Request);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_245F6682C()
{
  sub_245F67460(&qword_27EE38C18, type metadata accessor for CoreMotionFoundationModel_Request);

  return sub_245F766F8();
}

uint64_t sub_245F668AC()
{
  v0 = sub_245F76788();
  __swift_allocate_value_buffer(v0, qword_27EE38E48);
  __swift_project_value_buffer(v0, qword_27EE38E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C70, &qword_245F79670);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C78, &qword_245F79678) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_245F78EA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mach_continuous_timestamp";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_245F76768();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "error_message";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "result_arrays";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  return sub_245F76778();
}

uint64_t sub_245F66B00()
{
  result = sub_245F76648();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          v3 = *(type metadata accessor for CoreMotionFoundationModel_Response(0) + 32);
          sub_245F76688();
        }

        else if (result == 5)
        {
          sub_245F66C1C();
        }
      }

      else if (result == 1)
      {
        sub_245F766A8();
      }

      else if (result == 2)
      {
        sub_245F6819C();
        sub_245F76658();
      }

      result = sub_245F76648();
    }
  }

  return result;
}

uint64_t sub_245F66C1C()
{
  sub_245F765A8();
  type metadata accessor for CoreMotionFoundationModel_Array(0);
  sub_245F67460(&qword_27EE38C30, type metadata accessor for CoreMotionFoundationModel_Array);
  sub_245F67460(&qword_27EE38C38, type metadata accessor for CoreMotionFoundationModel_Array);
  return sub_245F76638();
}

uint64_t sub_245F66D14()
{
  if (!*v0 || (result = sub_245F76758(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), sub_245F6819C(), result = sub_245F76728(), !v1))
    {
      result = sub_245F66ED0(v0);
      if (!v1)
      {
        if (*(*(v0 + 24) + 16))
        {
          sub_245F765A8();
          type metadata accessor for CoreMotionFoundationModel_Array(0);
          sub_245F67460(&qword_27EE38C30, type metadata accessor for CoreMotionFoundationModel_Array);
          sub_245F67460(&qword_27EE38C38, type metadata accessor for CoreMotionFoundationModel_Array);
          sub_245F76708();
        }

        v3 = v0 + *(type metadata accessor for CoreMotionFoundationModel_Response(0) + 28);
        return sub_245F765B8();
      }
    }
  }

  return result;
}

uint64_t sub_245F66ED0(uint64_t a1)
{
  result = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_245F76748();
  }

  return result;
}

uint64_t sub_245F66F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = sub_245F6D310(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 28);
  result = sub_245F765C8();
  v6 = (a2 + *(a1 + 32));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_245F66FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_245F765D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_245F67030(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_245F765D8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_245F670A4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_5;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_245F670FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F67460(&qword_27EE38C60, type metadata accessor for CoreMotionFoundationModel_Response);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_245F6719C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_245F76788();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_245F67238(uint64_t a1)
{
  v2 = sub_245F67460(&qword_27EE38C00, type metadata accessor for CoreMotionFoundationModel_Response);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_245F672A4()
{
  sub_245F76A88();
  sub_245F76848();
  return sub_245F76A98();
}

uint64_t sub_245F672FC()
{
  sub_245F67460(&qword_27EE38C00, type metadata accessor for CoreMotionFoundationModel_Response);

  return sub_245F766F8();
}

uint64_t sub_245F67378()
{
  sub_245F76A88();
  sub_245F76848();
  return sub_245F76A98();
}

uint64_t sub_245F67460(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245F67778@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_245F763E8();
    if (v10)
    {
      v11 = sub_245F76408();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_245F763F8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_245F763E8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_245F76408();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_245F763F8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_245F679A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_245F68328(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_245F68918(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_245F67778(v14, a3, a4, &v13);
  v10 = v4;
  sub_245F68918(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_245F67B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v85 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v75 - v9;
  MEMORY[0x28223BE20](v8);
  v83 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C98, &qword_245F79680);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = (&v75 - v18);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v79 = v16;
  v80 = a2;
  v20 = 0;
  v21 = *(a1 + 64);
  v75 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v76 = v25;
  v77 = v4;
  v82 = (&v75 - v18);
  v78 = a1;
  while (v24)
  {
    v81 = (v24 - 1) & v24;
    v29 = __clz(__rbit64(v24)) | (v20 << 6);
    v30 = v80;
LABEL_19:
    v35 = (*(a1 + 48) + 16 * v29);
    v37 = *v35;
    v36 = v35[1];
    v38 = v83;
    sub_245F6896C(*(a1 + 56) + *(v84 + 72) * v29, v83);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CA0, &qword_245F79688);
    v40 = *(v39 + 48);
    v41 = v79;
    *v79 = v37;
    *(v41 + 1) = v36;
    v42 = v38;
    v16 = v41;
    sub_245F689D0(v42, &v41[v40]);
    (*(*(v39 - 8) + 56))(v16, 0, 1, v39);

    v19 = v82;
LABEL_20:
    sub_245F68A34(v16, v19);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CA0, &qword_245F79688);
    v44 = (*(*(v43 - 8) + 48))(v19, 1, v43);
    v26 = v44 == 1;
    if (v44 == 1)
    {
      return v26;
    }

    v45 = *(v43 + 48);
    v46 = v19;
    v47 = *v19;
    v48 = v19[1];
    sub_245F689D0(v46 + v45, v10);
    v49 = sub_245F6C2D8(v47, v48);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_65;
    }

    v52 = *(v30 + 56) + *(v84 + 72) * v49;
    v53 = v85;
    result = sub_245F6896C(v52, v85);
    v54 = *v53;
    v55 = *v10;
    v56 = *(*v53 + 16);
    if (v56 != *(*v10 + 16))
    {
      goto LABEL_64;
    }

    if (v56 && v54 != v55)
    {
      v57 = (v54 + 32);
      v58 = (v55 + 32);
      while (*v57 == *v58)
      {
        ++v57;
        ++v58;
        if (!--v56)
        {
          goto LABEL_28;
        }
      }

LABEL_64:
      sub_245F68AA4(v85);
LABEL_65:
      sub_245F68AA4(v10);
      return 0;
    }

LABEL_28:
    v59 = v85[1];
    v60 = *(v10 + 1);
    if (v10[16] == 1)
    {
      if (v60)
      {
        if (v60 == 1)
        {
          if (v59 != 1)
          {
            goto LABEL_64;
          }
        }

        else if (v59 != 2)
        {
          goto LABEL_64;
        }
      }

      else if (v59)
      {
        goto LABEL_64;
      }
    }

    else if (v59 != v60)
    {
      goto LABEL_64;
    }

    v63 = v85[3];
    v62 = v85[4];
    v65 = *(v10 + 3);
    v64 = *(v10 + 4);
    v66 = v62 >> 62;
    v67 = v64 >> 62;
    if (v62 >> 62 == 3)
    {
      v68 = 0;
      if (!v63 && v62 == 0xC000000000000000 && v64 >> 62 == 3)
      {
        v68 = 0;
        if (!v65 && v64 == 0xC000000000000000)
        {
          goto LABEL_8;
        }
      }
    }

    else if (v66)
    {
      if (v66 == 1)
      {
        LODWORD(v68) = HIDWORD(v63) - v63;
        if (__OFSUB__(HIDWORD(v63), v63))
        {
          goto LABEL_72;
        }

        v68 = v68;
      }

      else
      {
        v70 = *(v63 + 16);
        v69 = *(v63 + 24);
        v71 = __OFSUB__(v69, v70);
        v68 = v69 - v70;
        if (v71)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v68 = BYTE6(v62);
    }

    if (v67 > 1)
    {
      if (v67 != 2)
      {
        if (v68)
        {
          goto LABEL_64;
        }

        goto LABEL_8;
      }

      v74 = *(v65 + 16);
      v73 = *(v65 + 24);
      v71 = __OFSUB__(v73, v74);
      v72 = v73 - v74;
      if (v71)
      {
        goto LABEL_69;
      }
    }

    else if (v67)
    {
      LODWORD(v72) = HIDWORD(v65) - v65;
      if (__OFSUB__(HIDWORD(v65), v65))
      {
        goto LABEL_70;
      }

      v72 = v72;
    }

    else
    {
      v72 = BYTE6(v64);
    }

    if (v68 != v72)
    {
      goto LABEL_64;
    }

    if (v68 >= 1)
    {
      sub_245F688C4(*(v10 + 3), *(v10 + 4));
      if ((sub_245F679A8(v63, v62, v65, v64) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

LABEL_8:
    v27 = *(v77 + 28);
    sub_245F765D8();
    sub_245F67460(&qword_27EE38C90, MEMORY[0x277D216C8]);
    v28 = v85;
    LOBYTE(v27) = sub_245F76858();
    sub_245F68AA4(v28);
    result = sub_245F68AA4(v10);
    a1 = v78;
    v24 = v81;
    v19 = v82;
    v25 = v76;
    if ((v27 & 1) == 0)
    {
      return v26;
    }
  }

  if (v25 <= v20 + 1)
  {
    v31 = v20 + 1;
  }

  else
  {
    v31 = v25;
  }

  v32 = v31 - 1;
  v30 = v80;
  while (1)
  {
    v33 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v33 >= v25)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CA0, &qword_245F79688);
      (*(*(v61 - 8) + 56))(v16, 1, 1, v61);
      v81 = 0;
      v20 = v32;
      goto LABEL_20;
    }

    v34 = *(v75 + 8 * v33);
    ++v20;
    if (v34)
    {
      v81 = (v34 - 1) & v34;
      v29 = __clz(__rbit64(v34)) | (v33 << 6);
      v20 = v33;
      goto LABEL_19;
    }
  }

  __break(1u);
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_245F6819C()
{
  result = qword_27EE38C68;
  if (!qword_27EE38C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38C68);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_245F682D4()
{
  result = qword_27EE38C88;
  if (!qword_27EE38C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38C88);
  }

  return result;
}

uint64_t sub_245F68328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_245F763E8();
  v11 = result;
  if (result)
  {
    result = sub_245F76408();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_245F763F8();
  sub_245F67778(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_245F683E0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_245F688C4(a3, a4);
          return sub_245F679A8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_245F68548(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 16))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v7 = *(v6 + 32);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_245F76A08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (sub_245F67B38(*(a1 + 24), *(a2 + 24)))
  {
    v13 = *(v6 + 28);
    sub_245F765D8();
    sub_245F67460(&qword_27EE38C90, MEMORY[0x277D216C8]);
    return sub_245F76858() & 1;
  }

  return 0;
}

uint64_t sub_245F68694(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_245F76A08() & 1) == 0 || (sub_245F67B38(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CoreMotionFoundationModel_Request(0) + 28);
  sub_245F765D8();
  sub_245F67460(&qword_27EE38C90, MEMORY[0x277D216C8]);
  return sub_245F76858() & 1;
}

void *sub_245F68774(void *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v8 = result[1];
    v9 = a2[1];
    if (*(a2 + 16) == 1)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          if (v8 != 1)
          {
            return 0;
          }

LABEL_20:
          if (sub_245F683E0(result[3], result[4], a2[3], a2[4]))
          {
            v10 = *(type metadata accessor for CoreMotionFoundationModel_Array(0) + 28);
            sub_245F765D8();
            sub_245F67460(&qword_27EE38C90, MEMORY[0x277D216C8]);
            return (sub_245F76858() & 1);
          }

          return 0;
        }

        if (v8 == 2)
        {
          goto LABEL_20;
        }
      }

      else if (!v8)
      {
        goto LABEL_20;
      }

      return 0;
    }

    if (v8 != v9)
    {
      return 0;
    }

    goto LABEL_20;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245F688C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_245F68918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_245F6896C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F689D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F68A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38C98, &qword_245F79680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F68AA4(uint64_t a1)
{
  v2 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CMFoundationModelRequest.init()()
{
  v1 = &v0[OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request];
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0xE000000000000000;
  *(v1 + 3) = sub_245F6D310(MEMORY[0x277D84F90]);
  v2 = &v1[*(type metadata accessor for CoreMotionFoundationModel_Request(0) + 28)];
  sub_245F765C8();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CMFoundationModelRequest(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

id CMFoundationModelRequest.init(serializedBytes:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_245F765F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for CoreMotionFoundationModel_Request(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v2 + OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request);
  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0xE000000000000000;
  v13[3] = sub_245F6D310(MEMORY[0x277D84F90]);
  v14 = v13 + *(v9 + 28);
  sub_245F765C8();
  v23 = a1;
  v24 = a2;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_245F688C4(a1, a2);
  sub_245F765E8();
  sub_245F6D830(&qword_27EE38C18, type metadata accessor for CoreMotionFoundationModel_Request);
  sub_245F766D8();
  if (v3)
  {
    sub_245F68918(a1, a2);
    sub_245F6D878(v13, type metadata accessor for CoreMotionFoundationModel_Request);
    type metadata accessor for CMFoundationModelRequest(0);
    v15 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v16 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_beginAccess();
    sub_245F6DA1C(v12, v13, type metadata accessor for CoreMotionFoundationModel_Request);
    swift_endAccess();
    v17 = type metadata accessor for CMFoundationModelRequest(0);
    v19.receiver = v2;
    v19.super_class = v17;
    v4 = objc_msgSendSuper2(&v19, sel_init);
    sub_245F68918(a1, a2);
  }

  return v4;
}

uint64_t sub_245F68F88()
{
  v48 = sub_245F76818();
  v1 = *(v48 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v48);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request;
  swift_beginAccess();
  v10 = *(v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CA8, &unk_245F796C0);
  result = sub_245F769D8();
  v12 = result;
  v13 = 0;
  v15 = v10 + 64;
  v14 = *(v10 + 64);
  v44 = result;
  v45 = v10;
  v16 = 1 << *(v10 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v47 = v1;
  v42 = v1 + 32;
  v43 = result + 64;
  v40 = v8;
  v41 = v4;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v49 = (v18 - 1) & v18;
LABEL_10:
      v23 = v20 | (v13 << 6);
      v24 = *(v45 + 56);
      v25 = (*(v45 + 48) + 16 * v23);
      v26 = v25[1];
      v51 = *v25;
      sub_245F6D7C8(v24 + *(v46 + 72) * v23, v8, type metadata accessor for CoreMotionFoundationModel_Array);
      v27 = *v8;
      v28 = *(*v8 + 16);
      v50 = v26;
      if (v28)
      {
        v52 = MEMORY[0x277D84F90];

        sub_245F6CEE4(0, v28, 0);
        v29 = v52;
        v30 = (v27 + 32);
        v31 = *(v52 + 16);
        do
        {
          v33 = *v30++;
          v32 = v33;
          v52 = v29;
          v34 = *(v29 + 24);
          if (v31 >= v34 >> 1)
          {
            sub_245F6CEE4((v34 > 1), v31 + 1, 1);
            v29 = v52;
          }

          *(v29 + 16) = v31 + 1;
          *(v29 + 8 * v31++ + 32) = v32;
          --v28;
        }

        while (v28);
        v8 = v40;
        v4 = v41;
      }

      else
      {
      }

      if (v8[16] == 1)
      {
        *(v8 + 1);
      }

      sub_245F688C4(*(v8 + 3), *(v8 + 4));
      sub_245F767F8();
      sub_245F6D878(v8, type metadata accessor for CoreMotionFoundationModel_Array);
      v12 = v44;
      *(v43 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v35 = (v12[6] + 16 * v23);
      v36 = v50;
      *v35 = v51;
      v35[1] = v36;
      result = (*(v47 + 32))(v12[7] + *(v47 + 72) * v23, v4, v48);
      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      v12[2] = v39;
      v18 = v49;
      if (!v49)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v19)
      {
        return v12;
      }

      v22 = *(v15 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v49 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_245F693A8()
{
  v1 = v0 + OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request;
  swift_beginAccess();
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);

  return v3;
}

void *sub_245F69400(uint64_t a1, unsigned __int8 a2, const void *a3, unsigned __int8 a4, _BYTE *a5, uint64_t a6)
{
  v31 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB0, &unk_245F798E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_245F768B8();
  v20 = v19;
  *(v18 + 24) = xmmword_245F78E90;
  v21 = &v18[*(v14 + 28)];
  sub_245F765C8();
  if (a2)
  {
    if (a2 == 2)
    {
      v23 = 1;
      v22 = 2;
    }

    else if (a2 == 1)
    {
      v22 = 1;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v22 = a2;
    }
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

  *(v18 + 1) = v22;
  v18[16] = v23;
  v24 = a4;
  if (a4)
  {
    v25 = sub_245F768F8();
    *(v25 + 16) = v24;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  result = memcpy((v25 + 32), a3, 4 * v24);
  *(v25 + 16) = v24;
  *v18 = v25;
  if (a6 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_245F764B8();
    v27 = sub_245F6D6C0(v31, a6);
    v29 = v28;
    sub_245F68918(*(v18 + 3), *(v18 + 4));
    *(v18 + 3) = v27;
    *(v18 + 4) = v29;
    sub_245F6D7C8(v18, v13, type metadata accessor for CoreMotionFoundationModel_Array);
    (*(v15 + 56))(v13, 0, 1, v14);
    swift_beginAccess();
    sub_245F696AC(v13, v30, v20);
    swift_endAccess();
    return sub_245F6D878(v18, type metadata accessor for CoreMotionFoundationModel_Array);
  }

  return result;
}

uint64_t sub_245F696AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB0, &unk_245F798E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_245F6D8E0(a1);
    sub_245F6C758(a2, a3, v10);

    return sub_245F6D8E0(v10);
  }

  else
  {
    sub_245F689D0(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_245F6CA9C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_245F698D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_245F69974()
{
  v1 = sub_245F768B8();
  v3 = v2;
  v4 = v0 + OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request;
  swift_beginAccess();
  v5 = *(v4 + 16);
  *(v4 + 8) = v1;
  *(v4 + 16) = v3;
}

id CMFoundationModelResponse.init()()
{
  v1 = &v0[OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  *(v1 + 3) = sub_245F6D310(MEMORY[0x277D84F90]);
  v2 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v3 = &v1[*(v2 + 28)];
  sub_245F765C8();
  v4 = &v1[*(v2 + 32)];
  v5 = type metadata accessor for CMFoundationModelResponse(0);
  *v4 = 0;
  *(v4 + 1) = 0;
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_245F69C0C()
{
  v1 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  swift_beginAccess();
  sub_245F6D7C8(v0 + v5, v4, type metadata accessor for CoreMotionFoundationModel_Response);
  sub_245F6D830(&qword_27EE38C00, type metadata accessor for CoreMotionFoundationModel_Response);
  v6 = sub_245F766C8();
  sub_245F6D878(v4, type metadata accessor for CoreMotionFoundationModel_Response);
  return v6;
}

uint64_t sub_245F69D4C(_BYTE *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  if (*(v3 + 16))
  {
    v5 = v5 != 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 <= 0xFF)
  {
    *a1 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_245F69E3C(void *a1)
{
  v3 = OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_245F69EE8()
{
  v1 = v0 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_245F6D134(*(v2 + 16), 0);
  v5 = sub_245F6D1B8(&v7, v4 + 4, v3, v2);

  sub_245F6D8D8();
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_245F6A044(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB0, &unk_245F798E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = v3 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  swift_beginAccess();
  v12 = *(v11 + 24);
  if (*(v12 + 16) && (v13 = sub_245F6C2D8(a1, a2), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for CoreMotionFoundationModel_Array(0);
    v18 = *(v17 - 8);
    sub_245F6D7C8(v16 + *(v18 + 72) * v15, v10, type metadata accessor for CoreMotionFoundationModel_Array);
    (*(v18 + 56))(v10, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for CoreMotionFoundationModel_Array(0);
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  }

  type metadata accessor for CoreMotionFoundationModel_Array(0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17))
  {
    return sub_245F6D8E0(v10);
  }

  v20 = *(v10 + 1);
  v21 = v10[16];
  result = sub_245F6D8E0(v10);
  if (v21)
  {
    goto LABEL_10;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v20 > 0xFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

LABEL_10:
  *a3 = v20;
  return result;
}

uint64_t sub_245F6A280(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB0, &unk_245F798E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v22 - v9);
  v11 = v3 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  swift_beginAccess();
  v12 = *(v11 + 24);
  if (*(v12 + 16) && (v13 = sub_245F6C2D8(a1, a2), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for CoreMotionFoundationModel_Array(0);
    v18 = *(v17 - 8);
    sub_245F6D7C8(v16 + *(v18 + 72) * v15, v10, type metadata accessor for CoreMotionFoundationModel_Array);
    (*(v18 + 56))(v10, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for CoreMotionFoundationModel_Array(0);
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  }

  type metadata accessor for CoreMotionFoundationModel_Array(0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17))
  {
    return sub_245F6D8E0(v10);
  }

  v20 = *v10;

  sub_245F6D8E0(v10);
  v21 = *(v20 + 16);

  if (v21 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    *a3 = v21;
  }

  return result;
}

uint64_t sub_245F6A4C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_245F76878();
  v10 = v9;
  v11 = a1;
  a5(v8, v10, a4);
}

uint64_t sub_245F6A540(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB0, &unk_245F798E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - v11);
  v13 = v4 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  swift_beginAccess();
  v14 = *(v13 + 24);
  if (*(v14 + 16) && (v15 = sub_245F6C2D8(a1, a2), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for CoreMotionFoundationModel_Array(0);
    v20 = *(v19 - 8);
    sub_245F6D7C8(v18 + *(v20 + 72) * v17, v12, type metadata accessor for CoreMotionFoundationModel_Array);
    (*(v20 + 56))(v12, 0, 1, v19);
  }

  else
  {
    v19 = type metadata accessor for CoreMotionFoundationModel_Array(0);
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  type metadata accessor for CoreMotionFoundationModel_Array(0);
  if ((*(*(v19 - 8) + 48))(v12, 1, v19))
  {
    return sub_245F6D8E0(v12);
  }

  v22 = *v12;

  sub_245F6D8E0(v12);
  if (*(v22 + 16) == a4)
  {
    memcpy(a3, (v22 + 32), 4 * a4);
  }
}

unint64_t sub_245F6A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = v4 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  result = swift_beginAccess();
  v18 = *(v16 + 24);
  if (*(v18 + 16))
  {
    result = sub_245F6C2D8(a1, a2);
    if (v19)
    {
      sub_245F6D7C8(*(v18 + 56) + *(v9 + 72) * result, v13, type metadata accessor for CoreMotionFoundationModel_Array);
      result = sub_245F689D0(v13, v15);
      v20 = *(v15 + 3);
      v21 = *(v15 + 4);
      v22 = v21 >> 62;
      if ((v21 >> 62) > 1)
      {
        if (v22 != 2)
        {
LABEL_15:
          if (!a4)
          {
            goto LABEL_16;
          }

          return sub_245F6D878(v15, type metadata accessor for CoreMotionFoundationModel_Array);
        }

        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        v26 = __OFSUB__(v24, v25);
        v23 = v24 - v25;
        if (!v26)
        {
          if (v23 < 0)
          {
            return sub_245F6D878(v15, type metadata accessor for CoreMotionFoundationModel_Array);
          }

          goto LABEL_12;
        }

        __break(1u);
      }

      else
      {
        if (!v22)
        {
          v23 = BYTE6(v21);
LABEL_12:
          if (v23 != a4)
          {
            return sub_245F6D878(v15, type metadata accessor for CoreMotionFoundationModel_Array);
          }

          if ((a4 & 0x8000000000000000) == 0)
          {
LABEL_16:
            sub_245F764C8();
            return sub_245F6D878(v15, type metadata accessor for CoreMotionFoundationModel_Array);
          }

          __break(1u);
          goto LABEL_15;
        }

        LODWORD(v23) = HIDWORD(v20) - v20;
        if (!__OFSUB__(HIDWORD(v20), v20))
        {
          v23 = v23;
          if ((v23 & 0x8000000000000000) != 0)
          {
            return sub_245F6D878(v15, type metadata accessor for CoreMotionFoundationModel_Array);
          }

          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_245F6AA58()
{
  v1 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  swift_beginAccess();
  sub_245F6D7C8(v0 + v6, v5, type metadata accessor for CoreMotionFoundationModel_Response);
  v7 = &v5[*(v2 + 40)];
  v9 = *v7;
  v8 = *(v7 + 1);

  sub_245F6D878(v5, type metadata accessor for CoreMotionFoundationModel_Response);
  if (v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

id sub_245F6AC88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id static CMFoundationModelResponse.genericError()()
{
  v0 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  *(v6 + 3) = sub_245F6D310(MEMORY[0x277D84F90]);
  v7 = &v6[*(v0 + 28)];
  sub_245F765C8();
  v8 = &v6[*(v0 + 32)];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v6 + 1) = 1;
  v6[16] = 1;
  *v6 = mach_continuous_time();
  *v8 = xmmword_245F796A0;
  sub_245F6D7C8(v6, v4, type metadata accessor for CoreMotionFoundationModel_Response);
  v9 = type metadata accessor for CMFoundationModelResponse(0);
  v10 = objc_allocWithZone(v9);
  v11 = v10 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  *(v11 + 24) = sub_245F6D310(MEMORY[0x277D84F90]);
  v12 = v11 + *(v0 + 28);
  sub_245F765C8();
  v13 = (v11 + *(v0 + 32));
  *v13 = 0;
  v13[1] = 0;
  swift_beginAccess();
  sub_245F6D948(v4, v11);
  swift_endAccess();
  v17.receiver = v10;
  v17.super_class = v9;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  sub_245F6D878(v4, type metadata accessor for CoreMotionFoundationModel_Response);
  sub_245F6D878(v6, type metadata accessor for CoreMotionFoundationModel_Response);
  return v14;
}

uint64_t static CMFoundationModelResponse.fromSuccess(_:)(uint64_t a1)
{
  v1[8] = a1;
  v2 = *(type metadata accessor for CoreMotionFoundationModel_Array(0) - 8);
  v1[9] = v2;
  v3 = *(v2 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_245F76818();
  v1[12] = v4;
  v5 = *(v4 - 8);
  v1[13] = v5;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB8, &qword_245F796D8) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v8 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v1[18] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245F6B08C, 0, 0);
}

uint64_t sub_245F6B08C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 64);
  *v1 = 0;
  v4 = MEMORY[0x277D84F90];
  *(v0 + 168) = sub_245F6D310(MEMORY[0x277D84F90]);
  v5 = v1 + *(v2 + 28);
  sub_245F765C8();
  v6 = *(v2 + 32);
  *(v0 + 224) = v6;
  v7 = (v1 + v6);
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_245F6D310(v4);
  v9 = *(v3 + 32);
  *(v0 + 228) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-(-1 << v9) < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v3 + 64);
  v61 = v8;
  *(v0 + 176) = v8;

  if (v12)
  {
    v13 = 0;
    v14 = *(v0 + 64);
LABEL_8:
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    v21 = (v12 - 1) & v12;
    v22 = __clz(__rbit64(v12)) | (v13 << 6);
    v23 = (*(v14 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    (*(v20 + 16))(v18, *(v14 + 56) + *(v20 + 72) * v22, v19);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
    v27 = *(v26 + 48);
    *v17 = v24;
    *(v17 + 1) = v25;
    (*(v20 + 32))(&v17[v27], v18, v19);
    (*(*(v26 - 8) + 56))(v17, 0, 1, v26);

    v16 = v13;
  }

  else
  {
    v15 = 0;
    v16 = ((63 - v11) >> 6) - 1;
    while (v16 != v15)
    {
      v13 = v15 + 1;
      v14 = *(v0 + 64);
      v12 = *(v14 + 8 * v15++ + 72);
      if (v12)
      {
        goto LABEL_8;
      }
    }

    v59 = *(v0 + 128);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
    (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
    v21 = 0;
  }

  *(v0 + 184) = v21;
  *(v0 + 192) = v16;
  v28 = *(v0 + 136);
  sub_245F6D9AC(*(v0 + 128), v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    v30 = *(v0 + 224);
    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v33 = *(v0 + 64);

    *(v32 + 24) = v61;
    *(v32 + 8) = 0;
    *(v32 + 16) = 1;
    *(v32 + v30) = xmmword_245F796B0;
    v34 = mach_continuous_time();
    v36 = *(v0 + 152);
    v35 = *(v0 + 160);
    v37 = *(v0 + 144);
    *v35 = v34;
    sub_245F6D7C8(v35, v36, type metadata accessor for CoreMotionFoundationModel_Response);
    v38 = type metadata accessor for CMFoundationModelResponse(0);
    v39 = objc_allocWithZone(v38);
    v40 = v39 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
    *v40 = 0;
    *(v40 + 8) = 0;
    *(v40 + 16) = 1;
    *(v40 + 24) = sub_245F6D310(MEMORY[0x277D84F90]);
    v41 = v40 + *(v37 + 28);
    sub_245F765C8();
    v42 = (v40 + *(v37 + 32));
    *v42 = 0;
    v42[1] = 0;
    swift_beginAccess();
    sub_245F6D948(v36, v40);
    swift_endAccess();
    *(v0 + 40) = v39;
    *(v0 + 48) = v38;
    v62 = objc_msgSendSuper2((v0 + 40), sel_init);
    v43 = *(v0 + 160);
    v45 = *(v0 + 128);
    v44 = *(v0 + 136);
    v47 = *(v0 + 112);
    v46 = *(v0 + 120);
    v49 = *(v0 + 80);
    v48 = *(v0 + 88);
    sub_245F6D878(*(v0 + 152), type metadata accessor for CoreMotionFoundationModel_Response);
    sub_245F6D878(v43, type metadata accessor for CoreMotionFoundationModel_Response);

    v50 = *(v0 + 8);

    return v50(v62);
  }

  else
  {
    v52 = *(v0 + 136);
    v54 = *(v0 + 104);
    v53 = *(v0 + 112);
    v55 = *(v0 + 96);
    *(v0 + 200) = *v52;
    *(v0 + 208) = *(v52 + 1);
    (*(v54 + 32))(v53, &v52[*(v29 + 48)], v55);
    v56 = swift_task_alloc();
    *(v0 + 216) = v56;
    *v56 = v0;
    v56[1] = sub_245F6B588;
    v57 = *(v0 + 112);
    v58 = *(v0 + 88);

    return sub_245F6BCFC(v58, v57);
  }
}

uint64_t sub_245F6B588()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_245F6B684, 0, 0);
}

uint64_t sub_245F6B684()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  sub_245F689D0(*(v0 + 88), *(v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 56) = v3;
  v5 = sub_245F6C2D8(v2, v1);
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v2) = v6;
  if (*(*(v0 + 176) + 24) >= v10)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v24 = v5;
    sub_245F6CCA0();
    v5 = v24;
    v16 = *(v0 + 208);
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  sub_245F6C408(v10, isUniquelyReferenced_nonNull_native);
  v13 = *(v0 + 56);
  v5 = sub_245F6C2D8(v12, v11);
  if ((v2 & 1) != (v14 & 1))
  {

    return sub_245F76A28();
  }

LABEL_8:
  v16 = *(v0 + 208);
  if (v2)
  {
LABEL_9:
    v17 = *(v0 + 104);
    v18 = *(v0 + 112);
    v19 = *(v0 + 96);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = v5;

    v23 = *(v0 + 56);
    sub_245F6DA1C(v20, v23[7] + *(v21 + 72) * v22, type metadata accessor for CoreMotionFoundationModel_Array);
    result = (*(v17 + 8))(v18, v19);
    goto LABEL_14;
  }

LABEL_12:
  v25 = *(v0 + 200);
  v26 = *(v0 + 104);
  v27 = *(v0 + 112);
  v28 = *(v0 + 96);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v23 = *(v0 + 56);
  v23[(v5 >> 6) + 8] |= 1 << v5;
  v31 = (v23[6] + 16 * v5);
  *v31 = v25;
  v31[1] = v16;
  sub_245F689D0(v29, v23[7] + *(v30 + 72) * v5);
  result = (*(v26 + 8))(v27, v28);
  v32 = v23[2];
  v9 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v9)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23[2] = v33;
LABEL_14:
  v34 = *(v0 + 184);
  v35 = *(v0 + 192);
  *(v0 + 176) = v23;
  v84 = v23;
  if (!v34)
  {
    v37 = ((1 << *(v0 + 228)) + 63) >> 6;
    if (v37 <= (v35 + 1))
    {
      v38 = v35 + 1;
    }

    else
    {
      v38 = ((1 << *(v0 + 228)) + 63) >> 6;
    }

    v39 = v38 - 1;
    while (1)
    {
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v82 = *(v0 + 128);
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
        (*(*(v83 - 8) + 56))(v82, 1, 1, v83);
        v45 = 0;
        goto LABEL_25;
      }

      v36 = *(v0 + 64);
      v34 = *(v36 + 8 * v40 + 64);
      ++v35;
      if (v34)
      {
        v35 = v40;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v36 = *(v0 + 64);
LABEL_24:
  v42 = *(v0 + 120);
  v41 = *(v0 + 128);
  v44 = *(v0 + 96);
  v43 = *(v0 + 104);
  v45 = (v34 - 1) & v34;
  v46 = __clz(__rbit64(v34)) | (v35 << 6);
  v47 = (*(v36 + 48) + 16 * v46);
  v49 = *v47;
  v48 = v47[1];
  (*(v43 + 16))(v42, *(v36 + 56) + *(v43 + 72) * v46, v44);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
  v51 = *(v50 + 48);
  *v41 = v49;
  *(v41 + 1) = v48;
  (*(v43 + 32))(&v41[v51], v42, v44);
  (*(*(v50 - 8) + 56))(v41, 0, 1, v50);

  v39 = v35;
LABEL_25:
  *(v0 + 184) = v45;
  *(v0 + 192) = v39;
  v52 = *(v0 + 136);
  sub_245F6D9AC(*(v0 + 128), v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
  if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
  {
    v54 = *(v0 + 224);
    v56 = *(v0 + 160);
    v55 = *(v0 + 168);
    v57 = *(v0 + 64);

    *(v56 + 24) = v84;
    *(v56 + 8) = 0;
    *(v56 + 16) = 1;
    *(v56 + v54) = xmmword_245F796B0;
    v58 = mach_continuous_time();
    v60 = *(v0 + 152);
    v59 = *(v0 + 160);
    v61 = *(v0 + 144);
    *v59 = v58;
    sub_245F6D7C8(v59, v60, type metadata accessor for CoreMotionFoundationModel_Response);
    v62 = type metadata accessor for CMFoundationModelResponse(0);
    v63 = objc_allocWithZone(v62);
    v64 = v63 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
    *v64 = 0;
    *(v64 + 8) = 0;
    *(v64 + 16) = 1;
    *(v64 + 24) = sub_245F6D310(MEMORY[0x277D84F90]);
    v65 = v64 + *(v61 + 28);
    sub_245F765C8();
    v66 = (v64 + *(v61 + 32));
    *v66 = 0;
    v66[1] = 0;
    swift_beginAccess();
    sub_245F6D948(v60, v64);
    swift_endAccess();
    *(v0 + 40) = v63;
    *(v0 + 48) = v62;
    v85 = objc_msgSendSuper2((v0 + 40), sel_init);
    v67 = *(v0 + 160);
    v69 = *(v0 + 128);
    v68 = *(v0 + 136);
    v71 = *(v0 + 112);
    v70 = *(v0 + 120);
    v73 = *(v0 + 80);
    v72 = *(v0 + 88);
    sub_245F6D878(*(v0 + 152), type metadata accessor for CoreMotionFoundationModel_Response);
    sub_245F6D878(v67, type metadata accessor for CoreMotionFoundationModel_Response);

    v74 = *(v0 + 8);

    return v74(v85);
  }

  else
  {
    v75 = *(v0 + 136);
    v77 = *(v0 + 104);
    v76 = *(v0 + 112);
    v78 = *(v0 + 96);
    *(v0 + 200) = *v75;
    *(v0 + 208) = *(v75 + 1);
    (*(v77 + 32))(v76, &v75[*(v53 + 48)], v78);
    v79 = swift_task_alloc();
    *(v0 + 216) = v79;
    *v79 = v0;
    v79[1] = sub_245F6B588;
    v80 = *(v0 + 112);
    v81 = *(v0 + 88);

    return sub_245F6BCFC(v81, v80);
  }
}

uint64_t sub_245F6BCFC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D00, &qword_245F79808);
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245F6BDF8, 0, 0);
}

uint64_t sub_245F6BDF8()
{
  v1 = v0[5];
  sub_245F767D8();
  if (swift_dynamicCastMetatype())
  {
    v2 = *(MEMORY[0x277CBFD90] + 4);
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_245F6BF40;
    v4 = v0[10];
    v5 = v0[5];
    v6 = MEMORY[0x277D83A90];
    v7 = MEMORY[0x277CBFDD8];
    v8 = MEMORY[0x277CBFDC8];
    v9 = MEMORY[0x277D83A90];

    return MEMORY[0x2821118D0](v4, v6, v9, v7, v8);
  }

  else
  {
    v10 = v0[6];
    v11 = v0[4];
    *v11 = MEMORY[0x277D84F90];
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    *(v11 + 24) = xmmword_245F78E90;
    v12 = v11 + *(v10 + 28);
    sub_245F765C8();
    v13 = v0[10];
    v14 = v0[7];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_245F6BF40()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_245F6C03C, 0, 0);
}

uint64_t sub_245F6C03C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  sub_245F76798();
  (*(v2 + 8))(v1, v3);
  v7 = v0[2];
  v8 = v0[3];
  *(v4 + 24) = xmmword_245F78E90;
  v9 = v4 + *(v6 + 28);
  sub_245F765C8();
  v10 = sub_245F76808();
  v11 = *(v10 + 16);
  if (v11)
  {
    v24 = v8;
    v25 = MEMORY[0x277D84F90];
    v12 = v10;
    sub_245F6CF04(0, v11, 0);
    result = v12;
    v14 = 32;
    v15 = v25;
    while (1)
    {
      v16 = *(result + v14);
      if ((v16 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v16))
      {
        goto LABEL_14;
      }

      v18 = *(v25 + 16);
      v17 = *(v25 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_245F6CF04((v17 > 1), v18 + 1, 1);
        result = v12;
      }

      *(v25 + 16) = v18 + 1;
      *(v25 + 4 * v18 + 32) = v16;
      v14 += 8;
      if (!--v11)
      {

        v8 = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_10:
    v19 = v0[7];
    v20 = v0[4];
    *v19 = v15;
    sub_245F68918(*(v4 + 24), *(v4 + 32));
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
    sub_245F689D0(v19, v20);
    v21 = v0[10];
    v22 = v0[7];

    v23 = v0[1];

    return v23();
  }

  return result;
}

_BYTE *sub_245F6C238@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = (a3 + 32);
    v7 = 1;
    while (1)
    {
      v8 = *v6++;
      v9 = v7 * v8;
      if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
      {
        goto LABEL_11;
      }

      v7 = v9;
      if (!--v5)
      {
        if (v9 != a2)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

  if (a2 != 1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      result = sub_245F6D6C0(result, 4 * a2);
      *a4 = result;
      a4[1] = v10;
      return result;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_245F6C2D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_245F76A88();
  sub_245F76898();
  v6 = sub_245F76A98();

  return sub_245F6C350(a1, a2, v6);
}

unint64_t sub_245F6C350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_245F76A08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_245F6C408(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CF8, &qword_245F79800);
  v44 = a2;
  result = sub_245F769E8();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_245F689D0(v31, v45);
      }

      else
      {
        sub_245F6D7C8(v31, v45, type metadata accessor for CoreMotionFoundationModel_Array);
      }

      v32 = *(v12 + 40);
      sub_245F76A88();
      sub_245F76898();
      result = sub_245F76A98();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_245F689D0(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_245F6C758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_245F6C2D8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_245F6CCA0();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for CoreMotionFoundationModel_Array(0);
    v22 = *(v15 - 8);
    sub_245F689D0(v14 + *(v22 + 72) * v9, a3);
    sub_245F6C8B0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for CoreMotionFoundationModel_Array(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_245F6C8B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_245F76998() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_245F76A88();

      sub_245F76898();
      v13 = sub_245F76A98();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for CoreMotionFoundationModel_Array(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_245F6CA9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_245F6C2D8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for CoreMotionFoundationModel_Array(0);
      return sub_245F6DA1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for CoreMotionFoundationModel_Array);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_245F6CCA0();
    goto LABEL_7;
  }

  sub_245F6C408(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_245F6C2D8(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_245F76A28();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_245F6CC08(v12, a2, a3, a1, v18);
}

uint64_t sub_245F6CC08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  result = sub_245F689D0(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_245F6CCA0()
{
  v1 = v0;
  v2 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CF8, &qword_245F79800);
  v5 = *v0;
  v6 = sub_245F769D8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_245F6D7C8(*(v5 + 56) + v27, v31, type metadata accessor for CoreMotionFoundationModel_Array);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_245F689D0(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_245F6CEE4(char *a1, int64_t a2, char a3)
{
  result = sub_245F6CF24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245F6CF04(char *a1, int64_t a2, char a3)
{
  result = sub_245F6D02C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245F6CF24(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D10, &qword_245F79818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_245F6D02C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CE8, &qword_245F797F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_245F6D134(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D08, &qword_245F79810);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 17;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 4);
  return v4;
}

void *sub_245F6D1B8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_245F6D310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D18, qword_245F79820);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CF8, &qword_245F79800);
    v8 = sub_245F769F8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_245F6E324(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_245F6C2D8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for CoreMotionFoundationModel_Array(0);
      result = sub_245F689D0(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245F6D4F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CF0, &qword_245F797F8);
    v3 = sub_245F769F8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_245F6C2D8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_245F6D608(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245F6D6C0(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_245F6D608(a1, &a1[a2]);
  }

  v3 = sub_245F76418();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_245F763D8();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_245F764A8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_245F6D790(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245F6D7C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_245F6D830(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245F6D878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245F6D8E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB0, &unk_245F798E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245F6D948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F6D9AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB8, &qword_245F796D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F6DA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id _s15CoreMotionFDNML25CMFoundationModelResponseC11fromFailureyACs5Error_pFZ_0()
{
  v0 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  *(&v17 - v5) = 0;
  *(v6 + 3) = sub_245F6D310(MEMORY[0x277D84F90]);
  v7 = &v6[*(v0 + 28)];
  sub_245F765C8();
  v8 = &v6[*(v0 + 32)];
  *v8 = 0;
  v8[1] = 0;
  *(v6 + 1) = 1;
  v6[16] = 1;
  swift_getErrorValue();
  *v8 = sub_245F76A38();
  v8[1] = v9;
  *v6 = mach_continuous_time();
  sub_245F6D7C8(v6, v4, type metadata accessor for CoreMotionFoundationModel_Response);
  v10 = type metadata accessor for CMFoundationModelResponse(0);
  v11 = objc_allocWithZone(v10);
  v12 = v11 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  *(v12 + 24) = sub_245F6D310(MEMORY[0x277D84F90]);
  v13 = v12 + *(v0 + 28);
  sub_245F765C8();
  v14 = (v12 + *(v0 + 32));
  *v14 = 0;
  v14[1] = 0;
  swift_beginAccess();
  sub_245F6D948(v4, v12);
  swift_endAccess();
  v18.receiver = v11;
  v18.super_class = v10;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  sub_245F6D878(v4, type metadata accessor for CoreMotionFoundationModel_Response);
  sub_245F6D878(v6, type metadata accessor for CoreMotionFoundationModel_Response);
  return v15;
}

id _s15CoreMotionFDNML25CMFoundationModelResponseC16fromErrorMessageyACSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  *(&v20 - v9) = 0;
  *(v10 + 3) = sub_245F6D310(MEMORY[0x277D84F90]);
  v11 = &v10[*(v4 + 28)];
  sub_245F765C8();
  v12 = &v10[*(v4 + 32)];
  *(v10 + 1) = 1;
  v10[16] = 1;
  *v12 = a1;
  *(v12 + 1) = a2;

  *v10 = mach_continuous_time();
  sub_245F6D7C8(v10, v8, type metadata accessor for CoreMotionFoundationModel_Response);
  v13 = type metadata accessor for CMFoundationModelResponse(0);
  v14 = objc_allocWithZone(v13);
  v15 = v14 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  *(v15 + 24) = sub_245F6D310(MEMORY[0x277D84F90]);
  v16 = v15 + *(v4 + 28);
  sub_245F765C8();
  v17 = (v15 + *(v4 + 32));
  *v17 = 0;
  v17[1] = 0;
  swift_beginAccess();
  sub_245F6D948(v8, v15);
  swift_endAccess();
  v21.receiver = v14;
  v21.super_class = v13;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  sub_245F6D878(v8, type metadata accessor for CoreMotionFoundationModel_Response);
  sub_245F6D878(v10, type metadata accessor for CoreMotionFoundationModel_Response);
  return v18;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_245F6DE64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_245F6DEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245F6E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_245F6E324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D18, qword_245F79820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id UAFPaths.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UAFPaths();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UAFPaths.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UAFPaths();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15CoreMotionFDNML8UAFPathsC26calorimetryWRMetConfigPathSSSgyFZ_0()
{
  v47[5] = *MEMORY[0x277D85DE8];
  v0 = sub_245F76448();
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = *(v40 + 64);
  MEMORY[0x28223BE20](v0);
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_245F76518();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245F76498();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D20, &qword_245F79858);
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  sub_245F764D8();
  v18 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  v19 = *(v18 + 8);
  sub_245F764F8();
  v23 = sub_245F764E8();
  MEMORY[0x24C194E20](v23);
  (*(v4 + 8))(v7, v3);
  v24 = [objc_opt_self() defaultManager];
  sub_245F76478();
  v25 = sub_245F76868();

  v46[0] = 0;
  v26 = [v24 contentsOfDirectoryAtPath:v25 error:v46];

  v27 = v46[0];
  if (!v26)
  {
    v35 = v46[0];
    v36 = sub_245F76438();

    swift_willThrow();
    (*(v44 + 8))(v13, v45);
    (*(v43 + 8))(v17, v14);

    goto LABEL_2;
  }

  v28 = sub_245F768E8();
  v29 = v27;

  v30 = *(v28 + 16);
  if (!v30)
  {
LABEL_10:

    (*(v44 + 8))(v13, v45);
    (*(v43 + 8))(v17, v14);
LABEL_2:
    v20 = 0;
    goto LABEL_3;
  }

  v31 = 0;
  v32 = (v28 + 40);
  while (1)
  {
    if (v31 >= *(v28 + 16))
    {
      __break(1u);
    }

    v34 = *(v32 - 1);
    v33 = *v32;

    if (sub_245F768C8())
    {
      break;
    }

    ++v31;
    v32 += 2;
    if (v30 == v31)
    {
      goto LABEL_10;
    }
  }

  v46[0] = v34;
  v46[1] = v33;
  (*(v40 + 104))(v39, *MEMORY[0x277CC91D8], v41);
  sub_245F6EB10();
  sub_245F76488();
  (*(v40 + 8))(v39, v41);

  v20 = sub_245F76478();
  v37 = v45;
  v38 = *(v44 + 8);
  v38(v42, v45);
  v38(v13, v37);
  (*(v43 + 8))(v17, v14);
LABEL_3:
  __swift_destroy_boxed_opaque_existential_1(v47);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_245F6EA48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x245F6EA50);
  }

  _Unwind_Resume(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_245F6EB10()
{
  result = qword_27EE38D28;
  if (!qword_27EE38D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38D28);
  }

  return result;
}

id CMFoundationModelClient.init()()
{
  v1 = OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession;
  *&v0[OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession] = 0;
  sub_245F76598();
  getpid();
  v2 = sub_245F76588();
  v3 = *&v0[v1];
  *&v0[v1] = v2;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CMFoundationModelClient();
  return objc_msgSendSuper2(&v5, sel_init);
}

id CMFoundationModelClient.__allocating_init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:loggingIdentifier:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession;
  *&v1[OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession] = 0;
  sub_245F76598();
  v3 = sub_245F76588();
  v4 = *&v1[v2];
  *&v1[v2] = v3;

  v6.receiver = v1;
  v6.super_class = v0;
  return objc_msgSendSuper2(&v6, sel_init);
}

id CMFoundationModelClient.init(supportedAssetBundleIdentifiers:useCaseID:onBehalfOfPID:loggingIdentifier:)()
{
  v1 = OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession;
  *&v0[OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession] = 0;
  sub_245F76598();
  v2 = sub_245F76588();
  v3 = *&v0[v1];
  *&v0[v1] = v2;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CMFoundationModelClient();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_245F6EEF0()
{
  if (*(v0 + OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession))
  {

    sub_245F76578();
  }

  return result;
}

uint64_t sub_245F6EFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *(*(sub_245F765F8() - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  v4[17] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = sub_245F76548();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v11 = type metadata accessor for CoreMotionFoundationModel_Request(0);
  v4[24] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245F6F15C, 0, 0);
}

uint64_t sub_245F6F15C()
{
  v1 = *(v0[15] + OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession);
  v0[26] = v1;
  if (v1)
  {
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[12];
    v5 = OBJC_IVAR____TtC15CoreMotionFDNML24CMFoundationModelRequest_request;
    swift_beginAccess();
    sub_245F6FE38(v4 + v5, v2, type metadata accessor for CoreMotionFoundationModel_Request);
    sub_245F6FDDC(&qword_27EE38C18, type metadata accessor for CoreMotionFoundationModel_Request);

    v6 = sub_245F766C8();
    v0[27] = v6;
    v0[28] = v7;
    v17 = v0[23];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v7;
    sub_245F6FEA0(v0[25], type metadata accessor for CoreMotionFoundationModel_Request);
    sub_245F76568();

    sub_245F688C4(v6, v20);
    MEMORY[0x24C194E50](v6, v20);
    v0[29] = sub_245F76558();
    v21 = *(MEMORY[0x277D29DF8] + 4);
    v24 = (*MEMORY[0x277D29DF8] + MEMORY[0x277D29DF8]);
    v22 = swift_task_alloc();
    v0[30] = v22;
    *v22 = v0;
    v22[1] = sub_245F6F428;
    v23 = v0[22];

    return v24(v23);
  }

  else
  {
    v8 = _s15CoreMotionFDNML25CMFoundationModelResponseC16fromErrorMessageyACSSFZ_0(0xD000000000000034, 0x8000000245F78580);
    v9 = v0[25];
    v11 = v0[22];
    v10 = v0[23];
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[16];

    v15 = v0[1];

    return v15(v8);
  }
}

uint64_t sub_245F6F428()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_245F6F8A0;
  }

  else
  {
    v3 = sub_245F6F53C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245F6F53C()
{
  v1 = *(v0 + 176);
  v2 = sub_245F76528();
  if (v3 >> 60 == 15)
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(v0 + 160);
    v11 = _s15CoreMotionFDNML25CMFoundationModelResponseC16fromErrorMessageyACSSFZ_0(0xD000000000000016, 0x8000000245F785C0);

    sub_245F68918(v6, v5);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v12 = *(v0 + 248);
    v13 = *(v0 + 152);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    v44 = v2;
    v45 = v3;
    sub_245F688C4(v2, v3);
    sub_245F765E8();
    sub_245F6FDDC(&qword_27EE38C00, type metadata accessor for CoreMotionFoundationModel_Response);
    sub_245F766D8();
    if (v12)
    {
      v16 = *(v0 + 224);
      v17 = *(v0 + 232);
      v18 = *(v0 + 216);
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      sub_245F68918(v18, v16);
      sub_245F6FE24(v44, v45);

      v19 = *(v0 + 208);
      v11 = _s15CoreMotionFDNML25CMFoundationModelResponseC11fromFailureyACs5Error_pFZ_0();
    }

    else
    {
      v20 = *(v0 + 144);
      v21 = *(v0 + 136);
      sub_245F6FE38(*(v0 + 152), v20, type metadata accessor for CoreMotionFoundationModel_Response);
      v22 = type metadata accessor for CMFoundationModelResponse(0);
      v23 = objc_allocWithZone(v22);
      v24 = v23 + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
      *v24 = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 1;
      *(v24 + 24) = sub_245F6D310(MEMORY[0x277D84F90]);
      v25 = v24 + *(v21 + 28);
      sub_245F765C8();
      v26 = (v24 + *(v21 + 32));
      *v26 = 0;
      v26[1] = 0;
      swift_beginAccess();
      sub_245F6D948(v20, v24);
      swift_endAccess();
      *(v0 + 80) = v23;
      *(v0 + 88) = v22;
      v11 = objc_msgSendSuper2((v0 + 80), sel_init);
      v28 = *(v0 + 224);
      v27 = *(v0 + 232);
      v30 = *(v0 + 208);
      v29 = *(v0 + 216);
      v31 = *(v0 + 168);
      v32 = *(v0 + 176);
      v34 = *(v0 + 152);
      v33 = *(v0 + 160);
      v35 = *(v0 + 144);

      sub_245F6FE24(v44, v45);
      sub_245F68918(v29, v28);

      sub_245F6FEA0(v35, type metadata accessor for CoreMotionFoundationModel_Response);
      sub_245F6FEA0(v34, type metadata accessor for CoreMotionFoundationModel_Response);
      (*(v31 + 8))(v32, v33);
    }
  }

  v36 = *(v0 + 200);
  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v40 = *(v0 + 144);
  v39 = *(v0 + 152);
  v41 = *(v0 + 128);

  v42 = *(v0 + 8);

  return v42(v11);
}

uint64_t sub_245F6F8A0()
{
  v1 = v0[29];
  sub_245F68918(v0[27], v0[28]);

  v2 = v0[31];
  v3 = v0[26];
  v4 = _s15CoreMotionFDNML25CMFoundationModelResponseC11fromFailureyACs5Error_pFZ_0();

  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[16];

  v11 = v0[1];

  return v11(v4);
}

uint64_t sub_245F6FB10(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_245F76878();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_245F6FBFC;

  return sub_245F6EFF4(v10, v7, v9);
}

uint64_t sub_245F6FBFC(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v11 = *v1;

  (*(v6 + 16))(v6, a1);
  _Block_release(*(v3 + 32));

  v9 = *(v11 + 8);

  return v9();
}

id CMFoundationModelClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CMFoundationModelClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_245F6FDDC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245F6FE24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_245F68918(a1, a2);
  }

  return a1;
}

uint64_t sub_245F6FE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_245F6FEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of CMFoundationModelClient.sendAsync(request:loggingID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x80);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_245F700BC;

  return v12(a1, a2, a3);
}

uint64_t sub_245F700BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_245F701B8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_245F70208()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_245F702C8;

  return sub_245F6FB10(v2, v3, v5, v4);
}

uint64_t sub_245F702C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_245F703BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_245F70590;

  return sub_245F73B1C(v2, v3, v5);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_245F704C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_245F70594;

  return sub_245F73C04(a1, v4, v5, v7);
}

uint64_t sub_245F705D0()
{
  v0 = sub_245F6D4F4(&unk_2858DA1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D48, &qword_245F798D8);
  result = swift_arrayDestroy();
  off_27EE38D40 = v0;
  return result;
}

uint64_t availableModelsToBundlePrefixes.getter()
{
  if (qword_27EE38B58 != -1)
  {
    swift_once();
  }
}

void *sub_245F706A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_245F6D134(*(a1 + 16), 0);
  v4 = sub_245F6D1B8(&v6, v3 + 4, v2, a1);
  sub_245F6D8D8();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_245F70730@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = xmmword_245F78E90;
  v2 = a1 + *(type metadata accessor for CoreMotionFoundationModel_Array(0) + 28);
  sub_245F765C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D00, &qword_245F79808);
  sub_245F76798();
  v3 = v14;
  v4 = sub_245F767B8();
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x277D84F90];
    v6 = v4;
    sub_245F6CF04(0, v5, 0);
    result = v6;
    v8 = 32;
    v9 = v15;
    while (1)
    {
      v10 = *(result + v8);
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v10))
      {
        goto LABEL_17;
      }

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_245F6CF04((v11 > 1), v12 + 1, 1);
        result = v6;
      }

      *(v15 + 16) = v12 + 1;
      *(v15 + 4 * v12 + 32) = v10;
      v8 += 8;
      if (!--v5)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_10:
    *a1 = v9;
    sub_245F68918(*(a1 + 24), *(a1 + 32));
    *(a1 + 24) = v3;
    *(a1 + 32) = v16;
    result = sub_245F76938();
    if (result == 65600)
    {
      v13 = 1;
    }

    else
    {
      if (result != 65568)
      {
        return result;
      }

      v13 = 0;
    }

    *(a1 + 8) = v13;
    *(a1 + 16) = 1;
  }

  return result;
}

_BYTE *sub_245F708FC@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = (a3 + 32);
    v7 = 1;
    while (1)
    {
      v8 = *v6++;
      v9 = v7 * v8;
      if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
      {
        goto LABEL_11;
      }

      v7 = v9;
      if (!--v5)
      {
        if (v9 != a2)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

  if (a2 != 1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      result = sub_245F6D6C0(result, 4 * a2);
      *a4 = result;
      a4[1] = v10;
      return result;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_245F709FC(uint64_t a1)
{
  result = MEMORY[0x24C195280](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_245F7428C(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_245F70B18(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D00, &qword_245F79808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v35 - v19);
  v21 = *(v2 + 16);
  if (!*(v21 + 16))
  {
    return 0;
  }

  v22 = sub_245F6C2D8(a1, a2);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  sub_245F6896C(*(v21 + 56) + *(v14 + 72) * v22, v18);
  sub_245F689D0(v18, v20);
  v24 = *v20;
  v25 = *(*v20 + 16);
  if (v25)
  {
    v35 = v6;
    v36 = MEMORY[0x277D84F90];
    sub_245F6CEE4(0, v25, 0);
    v26 = v36;
    v27 = (v24 + 32);
    v28 = *(v36 + 16);
    do
    {
      v30 = *v27++;
      v29 = v30;
      v36 = v26;
      v31 = *(v26 + 24);
      if (v28 >= v31 >> 1)
      {
        sub_245F6CEE4((v31 > 1), v28 + 1, 1);
        v26 = v36;
      }

      *(v26 + 16) = v28 + 1;
      *(v26 + 8 * v28++ + 32) = v29;
      --v25;
    }

    while (v25);
    v6 = v35;
  }

  sub_245F688C4(v20[3], v20[4]);
  sub_245F767A8();
  sub_245F76320(0, &qword_27EE38DC0, 0x277CBFF48);
  (*(v6 + 16))(v10, v12, v5);
  sub_245F76258();
  v33 = sub_245F76978();
  v34 = [objc_opt_self() featureValueWithMultiArray_];

  (*(v6 + 8))(v12, v5);
  sub_245F68AA4(v20);
  return v34;
}

uint64_t sub_245F70EBC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id CMWrappedArrays.init()()
{
  v1 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  *&v0[v1] = sub_245F6D310(MEMORY[0x277D84F90]);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CMWrappedArrays();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_245F70FA8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(type metadata accessor for CoreMotionFoundationModel_Array(0) - 8);
  v2[13] = v3;
  v4 = *(v3 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = sub_245F76818();
  v2[16] = v5;
  v6 = *(v5 - 8);
  v2[17] = v6;
  v7 = *(v6 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB8, &qword_245F796D8) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245F7111C, 0, 0);
}

uint64_t sub_245F7111C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  *(v0 + 176) = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  v4 = MEMORY[0x277D84F90];
  *(v1 + v3) = sub_245F6D310(MEMORY[0x277D84F90]);
  v5 = sub_245F6D310(v4);
  swift_beginAccess();
  v6 = *(v1 + v3);
  *(v1 + v3) = v5;

  v7 = *(v2 + 32);
  *(v0 + 224) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v2 + 64);
  if (v10)
  {
    v11 = 0;
    v12 = *(v0 + 88);
LABEL_8:
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v19 = (v10 - 1) & v10;
    v20 = __clz(__rbit64(v10)) | (v11 << 6);
    v21 = (*(v12 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    (*(v18 + 16))(v15, *(v12 + 56) + *(v18 + 72) * v20, v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
    v25 = *(v24 + 48);
    *v16 = v23;
    *(v16 + 1) = v22;
    (*(v18 + 32))(&v16[v25], v15, v17);
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);

    v14 = v11;
  }

  else
  {
    v13 = 0;
    v14 = ((63 - v9) >> 6) - 1;
    while (v14 != v13)
    {
      v11 = v13 + 1;
      v12 = *(v0 + 88);
      v10 = *(v12 + 8 * v13++ + 72);
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v47 = *(v0 + 160);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
    (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
    v19 = 0;
  }

  *(v0 + 184) = v19;
  *(v0 + 192) = v14;
  v26 = *(v0 + 168);
  sub_245F6D9AC(*(v0 + 160), v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    v28 = *(v0 + 88);
    v29 = *(v0 + 96);

    v30 = type metadata accessor for CMWrappedArrays();
    *(v0 + 64) = v29;
    *(v0 + 72) = v30;
    v31 = objc_msgSendSuper2((v0 + 64), sel_init);
    v33 = *(v0 + 160);
    v32 = *(v0 + 168);
    v35 = *(v0 + 144);
    v34 = *(v0 + 152);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);

    v38 = *(v0 + 8);

    return v38(v31);
  }

  else
  {
    v40 = *(v0 + 168);
    v42 = *(v0 + 136);
    v41 = *(v0 + 144);
    v43 = *(v0 + 128);
    *(v0 + 200) = *v40;
    *(v0 + 208) = *(v40 + 1);
    (*(v42 + 32))(v41, &v40[*(v27 + 48)], v43);
    v44 = swift_task_alloc();
    *(v0 + 216) = v44;
    *v44 = v0;
    v44[1] = sub_245F714F0;
    v45 = *(v0 + 144);
    v46 = *(v0 + 120);

    return sub_245F6BCFC(v46, v45);
  }
}

uint64_t sub_245F714F0()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_245F715EC, 0, 0);
}

uint64_t sub_245F715EC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  swift_beginAccess();
  sub_245F689D0(v5, v4);
  v7 = *(v6 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v3);
  *(v0 + 80) = v9;
  *(v6 + v3) = 0x8000000000000000;
  v10 = sub_245F6C2D8(v2, v1);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v1) = v11;
  if (*(v9 + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v26 = v10;
    sub_245F6CCA0();
    v10 = v26;
    v21 = *(v0 + 208);
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v17 = *(v0 + 200);
  v16 = *(v0 + 208);
  sub_245F6C408(v15, isUniquelyReferenced_nonNull_native);
  v18 = *(v0 + 80);
  v10 = sub_245F6C2D8(v17, v16);
  if ((v1 & 1) != (v19 & 1))
  {

    return sub_245F76A28();
  }

LABEL_8:
  v21 = *(v0 + 208);
  if (v1)
  {
LABEL_9:
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);
    v24 = v10;

    v25 = *(v0 + 80);
    sub_245F762BC(v23, v25[7] + *(v22 + 72) * v24);
    goto LABEL_14;
  }

LABEL_12:
  v27 = *(v0 + 200);
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v25 = *(v0 + 80);
  v25[(v10 >> 6) + 8] |= 1 << v10;
  v30 = (v25[6] + 16 * v10);
  *v30 = v27;
  v30[1] = v21;
  result = sub_245F689D0(v28, v25[7] + *(v29 + 72) * v10);
  v31 = v25[2];
  v14 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v14)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v25[2] = v32;
LABEL_14:
  v33 = *(v0 + 176);
  v34 = *(v0 + 136);
  v35 = *(v0 + 144);
  v36 = *(v0 + 128);
  v37 = *(v0 + 96);
  v38 = *(v37 + v33);
  *(v37 + v33) = v25;

  swift_endAccess();
  result = (*(v34 + 8))(v35, v36);
  v39 = *(v0 + 184);
  v40 = *(v0 + 192);
  if (!v39)
  {
    v42 = ((1 << *(v0 + 224)) + 63) >> 6;
    if (v42 <= (v40 + 1))
    {
      v43 = v40 + 1;
    }

    else
    {
      v43 = ((1 << *(v0 + 224)) + 63) >> 6;
    }

    v44 = v43 - 1;
    while (1)
    {
      v45 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v45 >= v42)
      {
        v77 = *(v0 + 160);
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
        (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
        v50 = 0;
        goto LABEL_25;
      }

      v41 = *(v0 + 88);
      v39 = *(v41 + 8 * v45 + 64);
      ++v40;
      if (v39)
      {
        v40 = v45;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v41 = *(v0 + 88);
LABEL_24:
  v47 = *(v0 + 152);
  v46 = *(v0 + 160);
  v48 = *(v0 + 128);
  v49 = *(v0 + 136);
  v50 = (v39 - 1) & v39;
  v51 = __clz(__rbit64(v39)) | (v40 << 6);
  v52 = (*(v41 + 48) + 16 * v51);
  v53 = *v52;
  v54 = v52[1];
  (*(v49 + 16))(v47, *(v41 + 56) + *(v49 + 72) * v51, v48);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
  v56 = *(v55 + 48);
  *v46 = v53;
  *(v46 + 1) = v54;
  (*(v49 + 32))(&v46[v56], v47, v48);
  (*(*(v55 - 8) + 56))(v46, 0, 1, v55);

  v44 = v40;
LABEL_25:
  *(v0 + 184) = v50;
  *(v0 + 192) = v44;
  v57 = *(v0 + 168);
  sub_245F6D9AC(*(v0 + 160), v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CC0, &qword_245F796E0);
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    v59 = *(v0 + 88);
    v60 = *(v0 + 96);

    v61 = type metadata accessor for CMWrappedArrays();
    *(v0 + 64) = v60;
    *(v0 + 72) = v61;
    v62 = objc_msgSendSuper2((v0 + 64), sel_init);
    v64 = *(v0 + 160);
    v63 = *(v0 + 168);
    v66 = *(v0 + 144);
    v65 = *(v0 + 152);
    v68 = *(v0 + 112);
    v67 = *(v0 + 120);

    v69 = *(v0 + 8);

    return v69(v62);
  }

  else
  {
    v70 = *(v0 + 168);
    v72 = *(v0 + 136);
    v71 = *(v0 + 144);
    v73 = *(v0 + 128);
    *(v0 + 200) = *v70;
    *(v0 + 208) = *(v70 + 1);
    (*(v72 + 32))(v71, &v70[*(v58 + 48)], v73);
    v74 = swift_task_alloc();
    *(v0 + 216) = v74;
    *v74 = v0;
    v74[1] = sub_245F714F0;
    v75 = *(v0 + 144);
    v76 = *(v0 + 120);

    return sub_245F6BCFC(v76, v75);
  }
}

uint64_t sub_245F71B48()
{
  v47 = sub_245F76818();
  v1 = *(v47 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v47);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  swift_beginAccess();
  v10 = *(v0 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CA8, &unk_245F796C0);
  v11 = sub_245F769D8();
  v12 = v11;
  v13 = v10 + 64;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v10 + 64);
  v17 = (v14 + 63) >> 6;
  v46 = v1;
  v42 = v1 + 32;
  v43 = v11 + 64;
  v48 = v10;

  v19 = 0;
  v44 = v12;
  v40 = v8;
  v41 = v4;
  if (v16)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v16));
      v49 = (v16 - 1) & v16;
LABEL_10:
      v23 = v20 | (v19 << 6);
      v24 = *(v48 + 56);
      v25 = (*(v48 + 48) + 16 * v23);
      v26 = v25[1];
      v51 = *v25;
      sub_245F6896C(v24 + *(v45 + 72) * v23, v8);
      v27 = *v8;
      v28 = *(*v8 + 16);
      v50 = v26;
      if (v28)
      {
        v52 = MEMORY[0x277D84F90];

        sub_245F6CEE4(0, v28, 0);
        v29 = v52;
        v30 = (v27 + 32);
        v31 = *(v52 + 16);
        do
        {
          v33 = *v30++;
          v32 = v33;
          v52 = v29;
          v34 = *(v29 + 24);
          if (v31 >= v34 >> 1)
          {
            sub_245F6CEE4((v34 > 1), v31 + 1, 1);
            v29 = v52;
          }

          *(v29 + 16) = v31 + 1;
          *(v29 + 8 * v31++ + 32) = v32;
          --v28;
        }

        while (v28);
        v8 = v40;
        v4 = v41;
      }

      else
      {
      }

      if (v8[16] == 1)
      {
        *(v8 + 1);
      }

      sub_245F688C4(*(v8 + 3), *(v8 + 4));
      sub_245F767F8();
      sub_245F68AA4(v8);
      v12 = v44;
      *(v43 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v35 = (v12[6] + 16 * v23);
      v36 = v50;
      *v35 = v51;
      v35[1] = v36;
      result = (*(v46 + 32))(v12[7] + *(v46 + 72) * v23, v4, v47);
      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      v12[2] = v39;
      v16 = v49;
      if (!v49)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return v12;
      }

      v22 = *(v13 + 8 * v19);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v49 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}