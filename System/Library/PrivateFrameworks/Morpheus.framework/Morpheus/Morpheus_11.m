uint64_t mlx::core::Copy::vjp@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  if (a1[1] - *a1 != 16)
  {
    mlx::core::Copy::vjp();
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::Copy::vjp();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v5 = a2[1];

  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a4, v4, v5, (v5 - v4) >> 4);
}

uint64_t mlx::core::Copy::jvp@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  if (a1[1] - *a1 != 16)
  {
    mlx::core::Copy::jvp();
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::Copy::jvp();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v5 = a2[1];

  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a4, v4, v5, (v5 - v4) >> 4);
}

void mlx::core::Copy::vmap(uint64_t a1, uint64_t ***a2, void *a3)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      v5 = *v3;
      v4 = v3[1];
      v6[0] = v5;
      v6[1] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      }

      mlx::core::copy(v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Copy::vmap();
  }

  mlx::core::Copy::vmap();
}

void sub_25A3189EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va1);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Cos::jvp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *a3;
      mlx::core::sin(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Cos::jvp();
  }

  mlx::core::Cos::jvp();
}

void sub_25A318B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Cos::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::cos(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Cos::vmap();
  }

  mlx::core::Cos::vmap();
}

void sub_25A318CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Cosh::jvp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *a3;
      mlx::core::sinh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Cosh::jvp();
  }

  mlx::core::Cosh::jvp();
}

void sub_25A318DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Cosh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::cosh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Cosh::vmap();
  }

  mlx::core::Cosh::vmap();
}

void sub_25A318F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::CustomTransforms::vjp(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1] - 16 * *(a1 + 20);
  memset(v17, 0, sizeof(v17));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v17, v9, v10, (v10 - v9) >> 4);
  v11 = *(a1 + 48);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v16);
  v13 = *a3;
  v12 = a3[1];
  while (v13 != v12)
  {
    std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(v16, v13++);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::reserve(a5, a4[1] - *a4);
  v15 = *a4;
  v14 = a4[1];
  while (v15 != v14)
  {
    std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a5, &v16[0][2 * *v15++]);
  }

  v18 = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v18);
  v16[0] = v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v16);
}

void sub_25A319070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void ***a16)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a16);
  a10 = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

    v15[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v11);
    }

    v12 = (16 * v8);
    v15[0] = 0;
    v15[1] = v12;
    v15[3] = 0;
    v13 = *a2;
    *v12 = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v15[2] = v12 + 1;
    std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, v15);
    v7 = a1[1];
    std::__split_buffer<mlx::core::array>::~__split_buffer(v15);
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
    a1[1] = v4 + 2;
  }

  a1[1] = v7;
  return v7 - 2;
}

void sub_25A3191C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void mlx::core::CustomTransforms::jvp(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1] - 16 * *(a1 + 20);
  memset(v10, 0, sizeof(v10));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v10, v7, v8, (v8 - v7) >> 4);
  v9 = *(a1 + 80);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v9 + 48))(v9, v10, a3, a4);
  v11 = v10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_25A319294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void mlx::core::CustomTransforms::vmap(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a2[1] - 16 * *(a1 + 20);
  v7 = v6 - *a2;
  memset(v15, 0, sizeof(v15));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v15, v5, v6, v7 >> 4);
  v8 = *a3;
  v9 = a3[1] - 4 * *(a1 + 20);
  v10 = (v9 - *a3) >> 2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v8, v9, v10);
  v11 = *(a1 + 112);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v11, v15, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  __p = v15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_25A319394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, char a12)
{
  __p = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *mlx::core::Depends::vjp@<X0>(mlx::core *a1@<X1>, void *a2@<X2>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      v10 = *v5;
      if (v10 >= (a2[1] - *a2) >> 4)
      {
        mlx::core::zeros_like((*a1 + 16 * v10), a1, v4);
      }

      result = std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a4, (*a2 + 16 * v10));
      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_25A319478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Divide::vjp@<X0>(uint64_t result@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a4 != *(a4 + 8))
  {
    if (**a4)
    {
      mlx::core::multiply(*a3, *a2, *(result + 8), *(result + 16) | 0x100000000);
    }

    mlx::core::divide(*a3, *a2 + 2, *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_25A3195DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mlx::core::array::~array(va);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::DivMod::vjp@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    mlx::core::zeros_like((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_25A319798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void sub_25A319888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(&a16);
  _Unwind_Resume(a1);
}

void mlx::core::Divide::jvp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = *MEMORY[0x277D85DE8];
  v4[0] = a4;
  v4[1] = a3;
  v4[2] = a2;
  v4[3] = a1;
  mlx::core::Divide::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v4, 0);
}

void sub_25A3199FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::Divide::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (*(**a1 + 4 * a2))
  {
    mlx::core::multiply((**(a1 + 8) + 16 * a2), **(a1 + 16), *(v2 + 8), *(v2 + 16) | 0x100000000);
  }

  v3 = *(a1 + 16);
  v4 = (**(a1 + 8) + 16 * a2);
  v5 = *(v2 + 8);
  v6 = (*v3 + 16);
  v7 = *(v2 + 16) | 0x100000000;

  mlx::core::divide(v4, v6, v5, v7);
}

void sub_25A319B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::Divide::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::divide(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A319CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void *mlx::core::Remainder::vjp@<X0>(void *result@<X0>, void **a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v5 = *a4;
  v6 = *(a4 + 8);
  if (*a4 != v6)
  {
    v9 = result;
    do
    {
      if (*v5)
      {
        mlx::core::divide(*a2, *a2 + 2, v9[1], *(v9 + 4) | 0x100000000);
      }

      result = std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a5, *a3);
      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_25A319E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::Remainder::jvp(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11[0] = a4;
  v11[1] = a3;
  v11[2] = a2;
  v11[3] = a1;
  mlx::core::Remainder::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v11, 0, &v10);
  if (a4[1] - *a4 >= 5uLL)
  {
    mlx::core::Remainder::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v11, 1u, &v9);
    mlx::core::add(&v10, &v9, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v12 = v10;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, &v12, v13, 1uLL);
  mlx::core::array::~array(&v12);
  mlx::core::array::~array(&v10);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_25A319FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Remainder::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _OWORD *a3@<X8>)
{
  if (*(**result + 4 * a2))
  {
    mlx::core::divide(**(result + 16), (**(result + 16) + 16), *(*(result + 24) + 8), *(*(result + 24) + 16) | 0x100000000);
  }

  v3 = *(**(result + 8) + 16 * a2);
  *a3 = v3;
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A31A104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::Remainder::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::remainder(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A31A254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::Equal::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::equal(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A31A3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Equal::vjp@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    mlx::core::zeros_like((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void mlx::core::Equal::jvp(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  mlx::core::broadcast_shapes(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  mlx::core::zeros(__p);
}

void sub_25A31A5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Erf::jvp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      mlx::core::array::array<double>();
    }

    mlx::core::Erf::jvp();
  }

  mlx::core::Erf::jvp();
}

void sub_25A31A798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  mlx::core::array::~array((v2 - 56));
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va3);
  _Unwind_Resume(a1);
}

void mlx::core::Erf::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::erf(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Erf::vmap();
  }

  mlx::core::Erf::vmap();
}

void sub_25A31A8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ErfInv::vjp(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  mlx::core::array::array<double>();
}

void sub_25A31AA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::ErfInv::jvp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      mlx::core::array::array<double>();
    }

    mlx::core::ErfInv::jvp();
  }

  mlx::core::ErfInv::jvp();
}

void sub_25A31AC30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  mlx::core::array::~array((v2 - 56));
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va3);
  _Unwind_Resume(a1);
}

void mlx::core::ErfInv::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::erfinv(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::ErfInv::vmap();
  }

  mlx::core::ErfInv::vmap();
}

void sub_25A31AD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void sub_25A31AE54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Exp::jvp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *a3;
      mlx::core::exp(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Exp::jvp();
  }

  mlx::core::Exp::jvp();
}

void sub_25A31AF68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Exp::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::exp(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Exp::vmap();
  }

  mlx::core::Exp::vmap();
}

void sub_25A31B084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Expm1::vjp(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *(**a5 + 56);
  mlx::core::array::array<float>();
}

void sub_25A31B1A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Expm1::jvp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *a3;
      mlx::core::exp(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Expm1::jvp();
  }

  mlx::core::Expm1::jvp();
}

void sub_25A31B2D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Expm1::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::expm1(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Expm1::vmap();
  }

  mlx::core::Expm1::vmap();
}

void sub_25A31B3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::ExpandDims::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::squeeze(*a2, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v5, &v6, 1uLL);
  mlx::core::array::~array(v5);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A31B4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::ExpandDims::jvp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::expand_dims(*a2, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v5, &v6, 1uLL);
  mlx::core::array::~array(v5);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A31B578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::ExpandDims::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, int **a3@<X2>, void *a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = **a3;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v9 = v18;
  v10 = v19;
  if (v18 != v19)
  {
    v11 = *a3;
    do
    {
      if (*v9 >= *v11)
      {
        ++*v9;
      }

      else
      {
        ++v8;
      }

      ++v9;
    }

    while (v9 != v10);
  }

  mlx::core::expand_dims(*a2, &v18, *(a1 + 8), *(a1 + 16) | 0x100000000, v21);
  memset(v17, 0, sizeof(v17));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v17, v21, &v22, 1uLL);
  v13 = v8;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v13, &__p, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v17, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  __p = v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(v21);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_25A31B70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 72));
  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::ExpandDims::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

uint64_t mlx::core::ExpandDims::output_shape@<X0>(uint64_t **a1@<X0>, int **a2@<X1>, std::vector<int> *a3@<X8>)
{
  v5 = *a1;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  a3->__begin_ = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3, *v5, v5[1], (v5[1] - *v5) >> 2);
  v8 = *a2;
  for (i = a2[1]; v8 != i; ++v8)
  {
    v9.__i_ = &a3->__begin_[*v8];
    __x = 1;
    result = std::vector<int>::insert(a3, v9, &__x).__i_;
  }

  return result;
}

void sub_25A31B840(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ExpandDims::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::ExpandDims::output_shape(*a2, (a1 + 24), &__p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v6, 1uLL);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A31B8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Flatten::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = ***a2;
  v8 = (a1 + 20);
  v9 = v7 + 4 * *(a1 + 20);
  v10 = v7 + 4 * *(a1 + 24) + 4;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v16, v9, v10, (v10 - v9) >> 2);
  v11 = *a3;
  v12 = *v8;
  *__p = *v16;
  v15 = v17;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  mlx::core::unflatten(v11, v12, __p, *(a1 + 8), *(a1 + 16) | 0x100000000, v18);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, v18, &v19, 1uLL);
  mlx::core::array::~array(v18);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_25A31BA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  mlx::core::array::~array(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Flatten::jvp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::flatten(*a2, *(a1 + 20), *(a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v5, &v6, 1uLL);
  mlx::core::array::~array(v5);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A31BB14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Flatten::vmap(uint64_t a1@<X0>, void **a2@<X1>, unsigned int **a3@<X2>, void *a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = **a3;
  v8 = *(a1 + 20);
  v7 = *(a1 + 24);
  v9 = (*a2)[1];
  *&v19 = **a2;
  *(&v19 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if (v6 >= v8)
  {
    if (v6 <= *(a1 + 24))
    {
      mlx::core::moveaxis(&v19, v6, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v17);
      ++v7;
      v8 = (v8 + 1);
      v10 = v17;
      v17 = 0uLL;
      v11 = *(&v19 + 1);
      v19 = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      mlx::core::array::~array(&v17);
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = v8 + v6 - v7;
    }
  }

  else
  {
    v8 = (v8 + 1);
    ++v7;
  }

  mlx::core::flatten(&v19, v8, v7, *(a1 + 8), *(a1 + 16) | 0x100000000, v20);
  v17 = 0uLL;
  v18 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v17, v20, &v21, 1uLL);
  v13 = v6;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v13, &__p, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v17, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  __p = &v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(v20);
  mlx::core::array::~array(&v19);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t mlx::core::Flatten::output_shape@<X0>(uint64_t **this@<X0>, const mlx::core::array *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v8 = *this;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a4, *v8, v8[1], (v8[1] - *v8) >> 2);
  result = mlx::core::array::shape(this, v5);
  v10 = result;
  v11 = a3 - v5;
  if (a3 > v5)
  {
    v12 = v5 + 1;
    do
    {
      result = mlx::core::array::shape(this, v12);
      v10 *= result;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v13 = *a4;
  v14 = 4 * a3;
  if (v14 != 4 * v5)
  {
    v15 = v13 + 4 * v5 + 4;
    v16 = (v15 + v14 - 4 * v5);
    v17 = a4[1];
    v18 = v17 - v16;
    if (v17 != v16)
    {
      result = memmove((v13 + 4 * v5 + 4), v16, v17 - v16);
      v13 = *a4;
    }

    a4[1] = v15 + v18;
  }

  *(v13 + 4 * v5) = v10;
  return result;
}

void sub_25A31BE48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Flatten::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::Flatten::output_shape(*a2, *(a1 + 20), *(a1 + 24), __p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, __p, &v6, 1uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A31BF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL mlx::core::FFT::is_equivalent(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(v5 + 8) - v4;
  v8 = a2 + 24;
  v7 = *(a2 + 24);
  return v6 == *(v8 + 8) - v7 && !memcmp(v4, v7, v6) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49);
}

void mlx::core::Unflatten::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::flatten(*a2, *(a1 + 20), *(a1 + 20) + ((*(a1 + 32) - *(a1 + 24)) >> 2) - 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v5, &v6, 1uLL);
  mlx::core::array::~array(v5);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A31C03C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Unflatten::jvp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a1 + 20);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  mlx::core::unflatten(v5, v6, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v11);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v11, &v12, 1uLL);
  mlx::core::array::~array(v11);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25A31C134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Unflatten::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, int **a3@<X2>, void *a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = **a3;
  v7 = *(a1 + 20);
  if (v6 <= v7)
  {
    v7 = (v7 + 1);
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
    v10 = v8 - v9;
  }

  else
  {
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
    v10 = v8 - v9;
    v6 = v6 + ((v8 - v9) >> 2) - 1;
  }

  v11 = *a2;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v17, v9, v8, v10 >> 2);
  mlx::core::unflatten(v11, v7, &v17, *(a1 + 8), *(a1 + 16) | 0x100000000, v21);
  memset(v20, 0, sizeof(v20));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v20, v21, &v22, 1uLL);
  v13 = v6;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v13, &__p, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v20, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  __p = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(v21);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_25A31C2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v17 - 72));
  if (a14)
  {
    a15 = a14;
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::Unflatten::is_equivalent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == *(a2 + 20) && (v3 = a1 + 24, v2 = *(a1 + 24), v4 = *(v3 + 8) - v2, v6 = a2 + 24, v5 = *(a2 + 24), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

char *mlx::core::Unflatten::output_shape@<X0>(uint64_t **a1@<X0>, int a2@<W1>, char **a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a4, *v7, v7[1], (v7[1] - *v7) >> 2);
  v8 = a3[1];
  v9 = *a3 + 4;
  v10 = *a4 + 4 * a2;
  *v10 = **a3;
  return std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a4, (v10 + 4), v9, v8, (v8 - v9) >> 2);
}

void sub_25A31C3FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Unflatten::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::Unflatten::output_shape(*a2, *(a1 + 20), (a1 + 24), __p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, __p, &v6, 1uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A31C4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::FFT::vmap(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a3;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v21, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 3);
  v6 = *v4;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *v6, v6[1], (v6[1] - *v6) >> 2);
  if ((v5 & 0x80000000) == 0)
  {
    v7 = v21;
    v8 = v22;
    if (v21 != v22)
    {
      v9 = *(a1 + 49);
      v10 = v18;
      do
      {
        v11 = *v7;
        if (*v7 >= v5)
        {
          *v7 = ++v11;
        }

        if (v9)
        {
          v12 = *(v10 + 4 * v11);
          v13 = v12 / 2;
          v14 = 2 * v12 - 2;
          if (*(a1 + 48) != 1)
          {
            v14 = v13 + 1;
          }

          *(v10 + 4 * v11) = v14;
        }

        ++v7;
      }

      while (v7 != v8);
    }
  }

  memset(v17, 0, sizeof(v17));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v17, v18, v19, (v19 - v18) >> 2);
  if (*(a1 + 49) == 1 && (*(a1 + 48) & 1) != 0)
  {
    v15 = &mlx::core::float32;
  }

  else
  {
    v15 = &mlx::core::complex64;
  }

  v16 = *v15;
  std::allocate_shared[abi:ne200100]<mlx::core::FFT,std::allocator<mlx::core::FFT>,mlx::core::Stream const&,std::vector<unsigned long> &,BOOL &,BOOL &,0>();
}

void sub_25A31C790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v26 - 88));
  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v26 - 104));
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  v28 = v25[3];
  if (v28)
  {
    v25[4] = v28;
    operator delete(v28);
  }

  v29 = v25[6];
  if (v29)
  {
    v25[7] = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void mlx::core::FFT::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (a2[1] - *a2 != 16)
  {
    mlx::core::FFT::vjp();
  }

  if (a4[1] - *a4 != 4)
  {
    mlx::core::FFT::vjp();
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v38 = 0;
  v39 = 0;
  v37 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v37, v9, v10, (v10 - v9) >> 3);
  v11 = *(a1 + 48);
  if (*(a1 + 49) == 1)
  {
    if (*(a1 + 48))
    {
      mlx::core::fft::fftn(*a3, &v37, *(a1 + 8), *(a1 + 16) | 0x100000000, &v36);
      v12 = (*(v36 + 8) - *v36) >> 2;
      LODWORD(v40) = 0;
      std::vector<int>::vector[abi:ne200100](&v42, v12);
      v13 = *v6;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *v13, v13[1], (v13[1] - *v13) >> 2);
      v31 = 0;
      v32 = 0;
      v30 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, v42, v43, (v43 - v42) >> 2);
      __p = 0;
      v28 = 0;
      v29 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v33, v34, (v34 - v33) >> 2);
      mlx::core::slice(&v36, &v30, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, &v40);
      v14 = v40;
      v40 = 0uLL;
      v15 = *(&v36 + 1);
      v36 = v14;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      mlx::core::array::~array(&v40);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, *v36, *(v36 + 8), (*(v36 + 8) - *v36) >> 2);
      v16 = v24;
      *(v24 + *(*(a1 + 32) - 8)) -= 2;
      memset(v23, 0, sizeof(v23));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v23, v16, v25, (v25 - v16) >> 2);
      v17 = *(a1 + 8);
      v18 = *(a1 + 16) | 0x100000000;
      mlx::core::full<float>(v23);
    }

    v40 = 0uLL;
    v41 = 0;
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    while (v19 != v20)
    {
      std::vector<int>::push_back[abi:ne200100](&v40, (**v6 + 4 * *v19++));
    }

    mlx::core::fft::fftn(*a3, &v40, &v37, *(a1 + 8), *(a1 + 16) | 0x100000000, v22);
    mlx::core::astype(v22, *(*v6 + 14), *(a1 + 8), *(a1 + 16) | 0x100000000, &v42);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, &v42, v44, 1uLL);
    mlx::core::array::~array(&v42);
    mlx::core::array::~array(v22);
    if (v40)
    {
      *(&v40 + 1) = v40;
      operator delete(v40);
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      mlx::core::fft::ifftn(*a3, &v37, *(a1 + 8), *(a1 + 16) | 0x100000000, &v40);
    }

    else
    {
      mlx::core::fft::fftn(*a3, &v37, *(a1 + 8), *(a1 + 16) | 0x100000000, &v40);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, &v40, &v41, 1uLL);
    mlx::core::array::~array(&v40);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_25A31CDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  mlx::core::array::~array((v38 - 96));
  mlx::core::array::~array(&a10);
  v40 = *(v38 - 144);
  if (v40)
  {
    *(v38 - 136) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 176);
  if (v41)
  {
    *(v38 - 168) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

void mlx::core::full<float>(uint64_t a1)
{
  *__p = *a1;
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  mlx::core::TypeToDtype<float>::operator mlx::core::Dtype();
  mlx::core::array::array<float>();
}

void sub_25A31D060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::FFT::jvp(uint64_t a1@<X0>, void *a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 != 16)
  {
    mlx::core::FFT::jvp();
  }

  if (a4[1] - *a4 != 4)
  {
    mlx::core::FFT::jvp();
  }

  v7 = *a3;
  if ((*(a1 + 48) & *(a1 + 49)) != 0)
  {
    mlx::core::fft::irfftn(v7, *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v9, &v10, 1uLL);
  }

  else if (*(a1 + 49))
  {
    mlx::core::fft::rfftn(v7, *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v9, &v10, 1uLL);
  }

  else
  {
    if (*(a1 + 48))
    {
      mlx::core::fft::ifftn(v7, *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
    }

    else
    {
      mlx::core::fft::fftn(v7, *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v9, &v10, 1uLL);
  }

  mlx::core::array::~array(v9);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_25A31D21C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Floor::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Floor::jvp();
  }

  mlx::core::Floor::jvp();
}

void sub_25A31D33C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Floor::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::floor(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Floor::vmap();
  }

  mlx::core::Floor::vmap();
}

void sub_25A31D448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Full::vjp(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - v4 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::multiply(*a3, v4, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Full::vjp();
  }

  mlx::core::Full::vjp();
}

void sub_25A31D540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Full::jvp@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  if (a1[1] - *a1 != 16)
  {
    mlx::core::Full::jvp();
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::Full::jvp();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v5 = a2[1];

  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a4, v4, v5, (v5 - v4) >> 4);
}

void mlx::core::Full::vmap(uint64_t a1, uint64_t ***a2, void *a3)
{
  __p[11] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      v4 = *v3;
      memset(__p, 0, 24);
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v4, v4[1], (v4[1] - *v4) >> 2);
      v5 = (*v3)[7];
      operator new();
    }

    mlx::core::Full::vmap();
  }

  mlx::core::Full::vmap();
}

void sub_25A31D7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a20);
  mlx::core::array::~array(&a21);
  mlx::core::array::~array(&a18);
  _Unwind_Resume(a1);
}

void mlx::core::Gather::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *a2 + 16;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(&v32, v7, v5, (v5 - v7) >> 4);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v29, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  memset(&v28, 0, sizeof(v28));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v28, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  v8 = *a3;
  v9 = a3[1];
  v10 = (*a3 + 1);
  v11 = **a3;
  if (v10 != v9)
  {
    v12 = (*a3 + 1);
    do
    {
      if ((*v12 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      ++v12;
      ++v10;
    }

    while (v12 != v9);
    v10 = a3[1];
  }

LABEL_6:
  if (v9 == v10)
  {
    if (v11 < 0)
    {
      LODWORD(v13) = -1;
    }

    else
    {
      LODWORD(v13) = **a3;
    }
  }

  else
  {
    v13 = *v10;
    if ((v9 - v8) >= 5)
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = v8[v15];
        if (v13 == v16)
        {
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if ((v16 & 0x80000000) != 0)
          {
LABEL_14:
            mlx::core::expand_dims((v32 + v14), v13, *(a1 + 8), *(a1 + 16) | 0x100000000);
          }

          mlx::core::moveaxis(v32 + v14, v16, v13, *(a1 + 8), *(a1 + 16) | 0x100000000, __x);
          v17 = *__x;
          memset(__x, 0, sizeof(__x));
          v18 = *(v32 + v14 + 8);
          *(v32 + v14) = v17;
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }

          mlx::core::array::~array(__x);
        }

        ++v15;
        v8 = *a3;
        v14 += 16;
      }

      while (v15 < a3[1] - *a3);
    }
  }

  if (v32 == v33)
  {
    if (v11 < 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v19 = (*(*v32 + 8) - **v32) >> 2;
    if (v11 < 0)
    {
      goto LABEL_35;
    }
  }

  v20 = v29;
  v21 = v30;
  while (v20 != v21)
  {
    if (*v20 >= *v8)
    {
      ++*v20;
    }

    ++v20;
  }

  if (v9 != v10)
  {
    v22 = mlx::core::array::shape(v6, *v8);
    mlx::core::arange(0, v22, *(a1 + 8), *(a1 + 16) | 0x100000000, v26);
  }

  begin = v28.__begin_;
  v24 = mlx::core::array::shape(v6, v13);
  v25.__i_ = &begin[v13];
  __x[0] = v24;
  std::vector<int>::insert(&v28, v25, __x);
LABEL_35:
  mlx::core::gather(v6, &v32, &v29, &v28, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A31DD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  mlx::core::array::~array(&a11);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  v29 = a26;
  if (a26)
  {
    *(v26 + 8) = a26;
    operator delete(v29);
  }

  a26 = (v27 - 144);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Gather::vjp@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, unsigned int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    v4 = result;
    v5 = **a3;
    if (v5 >= 1)
    {
      v6 = (*a2)[2 * v5];
      v7 = *(v4 + 8);
      v8 = v6[7] & 0xFFFFFFFFFFLL;
      v9 = *(v4 + 16) | 0x100000000;
      mlx::core::zeros(v6);
    }

    mlx::core::zeros_like(*a2, *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_25A31DF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::Gather::jvp(uint64_t a1, void *a2, uint64_t ***a3, void *a4)
{
  v9[5] = *MEMORY[0x277D85DE8];
  if (a4[1] - *a4 <= 4uLL && !**a4)
  {
    v6 = a2[1];
    v7 = *a2 + 16;
    memset(v9, 0, 24);
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v9, v7, v6, (v6 - v7) >> 4);
    mlx::core::gather(*a3, v9, (a1 + 24), a1 + 48, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[gather] Cannot calculate JVP with respect to indices.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A31E0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  mlx::core::array::~array(&a12);
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL mlx::core::Gather::is_equivalent(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11))
  {
    return memcmp(v9, v11, v10) == 0;
  }

  else
  {
    return 0;
  }
}

void mlx::core::GatherAxis::vmap(uint64_t a1, uint64_t ***a2, int **a3)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v6 = **a3;
  v5 = (*a3)[1];
  v7 = *a2;
  v8 = (*a2)[1];
  v18[0] = **a2;
  v18[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    v7 = *a2;
  }

  v10 = v7[2];
  v9 = v7[3];
  *&v17 = v10;
  *(&v17 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  if (v6 < 0 || v5 < 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      mlx::core::expand_dims(&v17, **a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    if ((v5 & 0x80000000) == 0)
    {
      mlx::core::expand_dims(v18, (*a3)[1], *(a1 + 8), *(a1 + 16) | 0x100000000);
    }
  }

  else
  {
    mlx::core::moveaxis(&v17, (*a3)[1], **a3, *(a1 + 8), *(a1 + 16) | 0x100000000, &v16);
    v11 = v16;
    v16 = 0uLL;
    v12 = *(&v17 + 1);
    v17 = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    mlx::core::array::~array(&v16);
    v13 = **a3;
    if ((v13 & 0x80000000) == 0)
    {
      v14 = *(a1 + 20);
      if (v14 >= v13)
      {
        v15 = v14 + 1;
LABEL_16:
        mlx::core::take_along_axis(v18, &v17, v15, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }
    }
  }

  v15 = *(a1 + 20);
  goto LABEL_16;
}

void sub_25A31E3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  mlx::core::array::~array(&a17);
  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::GatherAxis::vjp@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, unsigned int **a3@<X3>, void *a4@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    v4 = result;
    v5 = **a3;
    if (v5 >= 1)
    {
      v6 = (*a2)[2 * v5];
      v7 = *(v4 + 8);
      v8 = v6[7] & 0xFFFFFFFFFFLL;
      v9 = *(v4 + 16) | 0x100000000;
      mlx::core::zeros(v6);
    }

    mlx::core::zeros_like(*a2, *(result + 8), *(result + 16) | 0x100000000);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void mlx::core::GatherAxis::jvp(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a4[1] - *a4 <= 4uLL && !**a4)
  {
    mlx::core::take_along_axis(*a3, (*a2 + 16), *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[gather_axis] Cannot calculate JVP with respect to indices.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A31E83C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::GatherAxis::output_shapes(uint64_t a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 16);
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A31E910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Gather::output_shapes(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  if (a2[1] - *a2 < 0x11uLL || (v5 = *(*a2 + 16), v8 == v5))
  {
    v6 = 0;
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v8, *v5, v5[1], (v5[1] - *v5) >> 2);
    v6 = v8[1];
  }

  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v8, v6, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  *__p = *v8;
  v11 = v9;
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, __p, &v12, 1uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25A31EA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Greater::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::greater(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A31EBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Greater::vjp@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    mlx::core::zeros_like((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void mlx::core::Greater::jvp(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  mlx::core::broadcast_shapes(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  mlx::core::zeros(__p);
}

void sub_25A31ED94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::GreaterEqual::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::greater_equal(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A31EEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::GreaterEqual::vjp@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    mlx::core::zeros_like((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void mlx::core::GreaterEqual::jvp(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  mlx::core::broadcast_shapes(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  mlx::core::zeros(__p);
}

void sub_25A31F0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Imag::vjp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      mlx::core::array::array<mlx::core::complex64_t>();
    }

    mlx::core::Imag::vjp();
  }

  mlx::core::Imag::vjp();
}

void sub_25A31F200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Imag::jvp(uint64_t a1, void *a2, uint64_t ***a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::imag(*a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Imag::jvp();
  }

  mlx::core::Imag::jvp();
}

void sub_25A31F2F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Imag::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::imag(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Imag::vmap();
  }

  mlx::core::Imag::vmap();
}

void sub_25A31F400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Less::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::less(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A31F558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Less::vjp@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    mlx::core::zeros_like((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void mlx::core::Less::jvp(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  mlx::core::broadcast_shapes(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  mlx::core::zeros(__p);
}

void sub_25A31F738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::LessEqual::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::less_equal(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A31F894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::LessEqual::vjp@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    mlx::core::zeros_like((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void mlx::core::LessEqual::jvp(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  mlx::core::broadcast_shapes(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  mlx::core::zeros(__p);
}

void sub_25A31FA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Log::jvp(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - v4 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::divide(*a3, v4, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Log::jvp();
  }

  mlx::core::Log::jvp();
}

void sub_25A31FC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::Log::vmap(uint64_t a1, uint64_t ***a2, void *a3)
{
  __p[11] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      v4 = *v3;
      memset(__p, 0, 24);
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v4, v4[1], (v4[1] - *v4) >> 2);
      v5 = (*v3)[7];
      operator new();
    }

    mlx::core::Log::vmap();
  }

  mlx::core::Log::vmap();
}

void sub_25A31FE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a21);
  mlx::core::array::~array((v21 - 72));
  a21 = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a21);
  mlx::core::array::~array((v21 - 88));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Log1p::jvp(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *(**a2 + 56);
      v5 = *a3;
      mlx::core::array::array<float>();
    }

    mlx::core::Log1p::jvp();
  }

  mlx::core::Log1p::jvp();
}

void sub_25A320024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Log1p::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::log1p(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Log1p::vmap();
  }

  mlx::core::Log1p::vmap();
}

void sub_25A320150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalNot::jvp(uint64_t a1, void *a2, uint64_t ***a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::zeros_like(*a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::LogicalNot::jvp();
  }

  mlx::core::LogicalNot::jvp();
}

void sub_25A32026C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalNot::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::logical_not(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::LogicalNot::vmap();
  }

  mlx::core::LogicalNot::vmap();
}

void sub_25A320378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalAnd::vjp(uint64_t a1, void *a2, uint64_t ***a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 32)
  {
    mlx::core::zeros_like(*a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::LogicalAnd::vjp();
}

void sub_25A320484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalAnd::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 32)
  {
    if (a4[1] - *a4 < 9uLL)
    {
      mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::LogicalAnd::jvp();
  }

  mlx::core::LogicalAnd::jvp();
}

void sub_25A32057C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalAnd::vmap(uint64_t a1, void *a2, uint64_t a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 32)
  {
    if (*(a3 + 8) - *a3 == 8)
    {
      mlx::core::logical_and(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::LogicalAnd::vmap();
  }

  mlx::core::LogicalAnd::vmap();
}

void sub_25A3206F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalOr::vjp(uint64_t a1, void *a2, uint64_t ***a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 32)
  {
    mlx::core::zeros_like(*a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::LogicalOr::vjp();
}

void sub_25A320830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalOr::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 32)
  {
    if (a4[1] - *a4 < 9uLL)
    {
      mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::LogicalOr::jvp();
  }

  mlx::core::LogicalOr::jvp();
}

void sub_25A320928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalOr::vmap(uint64_t a1, void *a2, uint64_t a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 32)
  {
    if (*(a3 + 8) - *a3 == 8)
    {
      mlx::core::logical_or(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::LogicalOr::vmap();
  }

  mlx::core::LogicalOr::vmap();
}

void sub_25A320A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::LogAddExp::vjp(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = (*a2)[1];
  v7[0] = **a2;
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v5 = v2[2];
  v4 = v2[3];
  v6[0] = v5;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  mlx::core::subtract(v7, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A320C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::LogAddExp::jvp(uint64_t a1, void **a2)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = (*a2)[1];
  v7[0] = **a2;
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v5 = v2[2];
  v4 = v2[3];
  v6[0] = v5;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  mlx::core::subtract(v7, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A320ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a17);
  mlx::core::array::~array(&a19);
  mlx::core::array::~array(&a21);
  _Unwind_Resume(a1);
}

void mlx::core::LogAddExp::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = **(a1 + 8);
  if (*(**a1 + 4 * a2))
  {
    v4 = *(**(a1 + 16) + 56);
    mlx::core::array::array<float>();
  }

  v5 = *(a1 + 16);
  v7 = *v5;
  v6 = v5[1];
  v8[0] = v7;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  mlx::core::multiply((v3 + 16 * a2), v8, *(v2 + 8), *(v2 + 16) | 0x100000000);
}

void mlx::core::LogAddExp::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::logaddexp(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A321168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::LogSumExp::vmap(uint64_t a1, uint64_t ***a2, int **a3)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v3 = **a3;
  v4 = **a2;
  v5 = (*a2)[1];
  v6[0] = v4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  if (((v4[1] - *v4) >> 2) - 1 == v3)
  {
    mlx::core::swapaxes(v6, 0xFFFFFFFFLL, 4294967294, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::logsumexp(v6, -1, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void mlx::core::LogSumExp::vjp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    v4 = *a3;
    if (*(a3 + 8) - *a3 == 16)
    {
      v6 = -1;
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v6, __p, 1uLL);
      mlx::core::softmax(v3, __p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v8);
      mlx::core::multiply(v4, v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::LogSumExp::vjp();
  }

  mlx::core::LogSumExp::vjp();
}

void sub_25A3214F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  mlx::core::array::~array(&a16);
  mlx::core::array::~array(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::LogSumExp::jvp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    v4 = *a3;
    if (*(a3 + 8) - *a3 == 16)
    {
      v6 = -1;
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v6, __p, 1uLL);
      mlx::core::softmax(v3, __p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v8);
      mlx::core::multiply(v4, v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::LogSumExp::jvp();
  }

  mlx::core::LogSumExp::jvp();
}

void sub_25A321668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  mlx::core::array::~array(&a16);
  mlx::core::array::~array(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::LogSumExp::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v7, *v3, v3[1], (v3[1] - *v3) >> 2);
  v4 = v7;
  v5 = v8;
  *(v8 - 1) = 1;
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v4, v5, (v5 - v4) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v13, 1uLL);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A321788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Matmul::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<int>::vector[abi:ne200100](&v22, (*(**a3 + 8) - ***a3) >> 2);
  v8 = v22;
  v9 = v23;
  if (v22 != v23)
  {
    v10 = 0;
    v11 = (v23 - v22 - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = v22 + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  v17 = *(v9 - 2);
  *(v9 - 2) = *(v9 - 1);
  *(v9 - 1) = v17;
  if (*a4 != *(a4 + 8))
  {
    if (**a4)
    {
      v18 = *a2;
      memset(v20, 0, sizeof(v20));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v20, v22, v23, (v23 - v22) >> 2);
      mlx::core::transpose(v18, v20, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    v19 = *a2;
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v22, v23, (v23 - v22) >> 2);
    mlx::core::transpose(v19 + 2, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  if (v8)
  {
    v23 = v8;
    operator delete(v8);
  }
}

uint64_t mlx::core::Matmul::jvp@<X0>(uint64_t result@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*(a4 + 8) != *a4)
  {
    if (**a4)
    {
      mlx::core::matmul(*a2, *a3, *(result + 8), *(result + 16) | 0x100000000);
    }

    mlx::core::matmul(*a3, *a2 + 2, *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_25A321D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  *(v3 - 80) = v2;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v3 - 80));
  _Unwind_Resume(a1);
}

void mlx::core::Matmul::vmap(uint64_t a1, void **a2, unsigned int **a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = **a3;
  if (v7 < 1)
  {
    v8 = v6[1];
    v13[0] = *v6;
    v13[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis(v6, v7, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
  }

  v9 = *a2;
  v10 = (*a3)[1];
  if (v10 < 1)
  {
    v11 = v9[3];
    v12[0] = v9[2];
    v12[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis((v9 + 2), v10, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v12);
  }

  mlx::core::matmul(v13, v12, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void mlx::core::Matmul::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v9, *v4, v4[1], (v4[1] - *v4) >> 2);
  v5 = (*a1)[2][1];
  if (v5 == *(*a1)[2])
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = v9;
  v6 = v10;
  *(v10 - 1) = *(v5 - 4);
  __p = v7;
  v13 = v6;
  v14 = v11;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v15, 1uLL);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_25A3220A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Maximum::vjp(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = *a2;
  memset(v8, 0, sizeof(v8));
  if (*a3 != *(a3 + 8))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (**a3)
    {
      mlx::core::less_equal(v4, v4 + 2, v5, v6 | 0x100000000);
    }

    mlx::core::greater(v4, v4 + 2, v5, v6 | 0x100000000);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a4, 0, 0, 0);
  v7 = v8;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_25A3221EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, char a14)
{
  a12 = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void mlx::core::Maximum::jvp(uint64_t a1, void **a2, uint64_t a3, _DWORD **a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (**a4)
  {
    mlx::core::less_equal(v4, v4 + 2, v5, v6 | 0x100000000);
  }

  mlx::core::greater(v4, v4 + 2, v5, v6 | 0x100000000);
}

void sub_25A322404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Maximum::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::maximum(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A322574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Minimum::vjp@<X0>(uint64_t result@<X0>, void **a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = *a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (*a3 != *(a3 + 8))
  {
    v5 = *(result + 8);
    v6 = *(result + 16);
    if (**a3)
    {
      mlx::core::greater_equal(v4, v4 + 2, v5, v6 | 0x100000000);
    }

    mlx::core::less(v4, v4 + 2, v5, v6 | 0x100000000);
  }

  return result;
}

void sub_25A3226B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::Minimum::jvp(uint64_t a1, void **a2, uint64_t a3, _DWORD **a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (**a4)
  {
    mlx::core::greater_equal(v4, v4 + 2, v5, v6 | 0x100000000);
  }

  mlx::core::less(v4, v4 + 2, v5, v6 | 0x100000000);
}

void sub_25A3228C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Minimum::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::minimum(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A322A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void sub_25A322C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Multiply::vjp@<X0>(uint64_t result@<X0>, void *a2@<X1>, void **a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a4 != a4[1])
  {
    mlx::core::multiply((*a2 + 16 * (1 - **a4)), *a3, *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void mlx::core::Multiply::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::multiply(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A322E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::Select::jvp(uint64_t a1, void *a2, void *a3, int **a4)
{
  v4[7] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 48)
  {
    if (a3[1] - *a3 == 48)
    {
      v4[0] = a4;
      v4[1] = a2;
      v4[2] = a1;
      v4[3] = a3;
      mlx::core::Select::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(v4, **a4);
    }

    mlx::core::Select::jvp();
  }

  mlx::core::Select::jvp();
}

void sub_25A323004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Select::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0::operator()(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *(**a1 + 4 * a2);
  if (v4 != 1)
  {
    if (!v4)
    {
      v5 = **(a1 + 8);
      v6 = *(v3 + 8);
      v7 = *(v3 + 16) | 0x100000000;

      mlx::core::zeros_like(v5, v6, v7);
    }

    mlx::core::logical_not(**(a1 + 8), *(v3 + 8), *(v3 + 16) | 0x100000000);
  }

  v8 = **(a1 + 8);
  v10 = *v8;
  v9 = v8[1];
  v11[0] = v10;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, *(*(**(a1 + 24) + 16) + 56), *(v3 + 8), *(v3 + 16) | 0x100000000, v12);
  mlx::core::multiply(v12, (**(a1 + 24) + 16), *(v3 + 8), *(v3 + 16) | 0x100000000);
}

void sub_25A3231C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Select::vjp@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, void **a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  if (a2[1] - *a2 != 48)
  {
    mlx::core::Select::vjp();
  }

  if (a3[1] - *a3 != 16)
  {
    mlx::core::Select::vjp();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a4;
  v7 = a4[1];
  if (*a4 != v7)
  {
    v8 = result;
    do
    {
      v9 = *v6;
      if (*v6 == 2)
      {
        mlx::core::logical_not(*a2, *(result + 8), *(result + 16) | 0x100000000);
      }

      if (v9 == 1)
      {
        v10 = (*a2)[1];
        v11[0] = **a2;
        v11[1] = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        mlx::core::astype(v11, *(**a3 + 56), *(result + 8), *(result + 16) | 0x100000000, v12);
        mlx::core::multiply(v12, *a3, *(v8 + 8), *(v8 + 16) | 0x100000000);
      }

      if (!v9)
      {
        mlx::core::zeros_like(*a2, *(result + 8), *(result + 16) | 0x100000000);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_25A3233E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

void mlx::core::Select::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 == 48)
  {
    v4 = *a3;
    if (a3[1] - *a3 == 12)
    {
      if (*v4 == -1 && v4[1] == -1 && v4[2] == -1)
      {
        v63 = v3[1];
        *&v66 = *v3;
        *(&v66 + 1) = v63;
        if (v63)
        {
          atomic_fetch_add_explicit(v63 + 1, 1uLL, memory_order_relaxed);
        }

        v64 = v3[3];
        *&v67 = v3[2];
        *(&v67 + 1) = v64;
        if (v64)
        {
          atomic_fetch_add_explicit(v64 + 1, 1uLL, memory_order_relaxed);
        }

        v65 = v3[5];
        *&v68 = v3[4];
        *(&v68 + 1) = v65;
        if (v65)
        {
          atomic_fetch_add_explicit(v65 + 1, 1uLL, memory_order_relaxed);
        }

        v69 = -1;
      }

      else
      {
        v6 = *v3;
        v7 = v3[1];
        *&v85 = *v3;
        *(&v85 + 1) = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
          v3 = *a2;
        }

        v8 = v3[2];
        v9 = v3[3];
        *&v83 = v8;
        *(&v83 + 1) = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
          v3 = *a2;
        }

        v11 = v3[4];
        v10 = v3[5];
        *&v82 = v11;
        *(&v82 + 1) = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        v12 = v6[1] - *v6;
        v13 = v12 >> 2;
        v14 = **a3;
        v15 = (*a3)[1];
        if (v14 == -1)
        {
          ++v13;
        }

        v16 = v8[1] - *v8;
        v17 = v16 >> 2;
        if (v15 == -1)
        {
          ++v17;
        }

        v18 = v11[1] - *v11;
        v19 = v18 >> 2;
        v20 = (*a3)[2];
        if (v20 == -1)
        {
          ++v19;
        }

        if (v13 <= v17)
        {
          v13 = v17;
        }

        if (v13 <= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v13;
        }

        v22 = *(a1 + 8);
        v80 = *(a1 + 16);
        v81 = v21;
        v78[0] = v6;
        v78[1] = *(&v85 + 1);
        v79 = v22;
        if (*(&v85 + 1))
        {
          atomic_fetch_add_explicit((*(&v85 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v23 = *&v84.__begin_;
        v84.__begin_ = 0;
        v84.__end_ = 0;
        v24 = *(&v85 + 1);
        v85 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        mlx::core::array::~array(&v84);
        mlx::core::array::~array(v78);
        v77 = v83;
        if (*(&v83 + 1))
        {
          atomic_fetch_add_explicit((*(&v83 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v25 = *&v84.__begin_;
        v84.__begin_ = 0;
        v84.__end_ = 0;
        v26 = *(&v83 + 1);
        v83 = v25;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        mlx::core::array::~array(&v84);
        mlx::core::array::~array(&v77);
        v76 = v82;
        if (*(&v82 + 1))
        {
          atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v27 = v21 - (v16 >> 2);
        v28 = v14 + v21 - (v12 >> 2);
        v29 = v15 + v27;
        v30 = *&v84.__begin_;
        v84.__begin_ = 0;
        v84.__end_ = 0;
        v31 = *(&v82 + 1);
        v82 = v30;
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        mlx::core::array::~array(&v84);
        mlx::core::array::~array(&v76);
        if (v28 != v29)
        {
          v32 = v83;
          v75 = v83;
          if (*(&v83 + 1))
          {
            atomic_fetch_add_explicit((*(&v83 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          __x[0] = v29;
          std::vector<int>::vector[abi:ne200100](&v84, (v32[1] - *v32) >> 2);
          begin = v84.__begin_;
          end = v84.__end_;
          if (v84.__begin_ != v84.__end_)
          {
            v35 = 0;
            v36 = (v84.__end_ - v84.__begin_ - 4) >> 2;
            v37 = vdupq_n_s64(v36);
            v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v39 = v84.__begin_ + 2;
            do
            {
              v40 = vdupq_n_s64(v35);
              v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_25A99B0D0)));
              if (vuzp1_s16(v41, *v37.i8).u8[0])
              {
                *(v39 - 2) = v35;
              }

              if (vuzp1_s16(v41, *&v37).i8[2])
              {
                *(v39 - 1) = v35 + 1;
              }

              if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_25A99B0C0)))).i32[1])
              {
                *v39 = v35 + 2;
                v39[1] = v35 + 3;
              }

              v35 += 4;
              v39 += 4;
            }

            while (v38 != v35);
          }

          v42 = &begin[v29];
          v43 = (end - (v42 + 1));
          if (end != v42 + 1)
          {
            memmove(v42, v42 + 1, end - (v42 + 1));
            begin = v84.__begin_;
          }

          v84.__end_ = &v43[v42];
          v44.__i_ = &begin[v28];
          std::vector<int>::insert(&v84, v44, __x);
          v45 = v84.__begin_;
          v46 = v84.__end_;
          mlx::core::array::~array(&v75);
          v73 = 0;
          v74 = 0;
          *__x = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__x, v45, v46, v46 - v45);
          mlx::core::transpose(&v83, __x, *(a1 + 8), *(a1 + 16) | 0x100000000);
        }

        v47 = v20 + v21 - (v18 >> 2);
        if (v28 != v47)
        {
          v48 = v82;
          v71 = v82;
          if (*(&v82 + 1))
          {
            atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v70[0] = v20 + v21 - (v18 >> 2);
          std::vector<int>::vector[abi:ne200100](&v84, (v48[1] - *v48) >> 2);
          v49 = v84.__begin_;
          v50 = v84.__end_;
          if (v84.__begin_ != v84.__end_)
          {
            v51 = 0;
            v52 = (v84.__end_ - v84.__begin_ - 4) >> 2;
            v53 = vdupq_n_s64(v52);
            v54 = (v52 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v55 = v84.__begin_ + 2;
            do
            {
              v56 = vdupq_n_s64(v51);
              v57 = vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_25A99B0D0)));
              if (vuzp1_s16(v57, *v53.i8).u8[0])
              {
                *(v55 - 2) = v51;
              }

              if (vuzp1_s16(v57, *&v53).i8[2])
              {
                *(v55 - 1) = v51 + 1;
              }

              if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_25A99B0C0)))).i32[1])
              {
                *v55 = v51 + 2;
                v55[1] = v51 + 3;
              }

              v51 += 4;
              v55 += 4;
            }

            while (v54 != v51);
          }

          v58 = &v49[v47];
          v59 = (v50 - (v58 + 1));
          if (v50 != v58 + 1)
          {
            memmove(v58, v58 + 1, v50 - (v58 + 1));
            v49 = v84.__begin_;
          }

          v84.__end_ = &v59[v58];
          v60.__i_ = &v49[v28];
          std::vector<int>::insert(&v84, v60, v70);
          v61 = v84.__begin_;
          v62 = v84.__end_;
          mlx::core::array::~array(&v71);
          memset(&v84, 0, sizeof(v84));
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v84, v61, v62, v62 - v61);
          mlx::core::transpose(&v82, &v84, *(a1 + 8), *(a1 + 16) | 0x100000000);
        }

        v66 = v85;
        if (*(&v85 + 1))
        {
          atomic_fetch_add_explicit((*(&v85 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v67 = v83;
        if (*(&v83 + 1))
        {
          atomic_fetch_add_explicit((*(&v83 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v68 = v82;
        if (*(&v82 + 1))
        {
          atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v69 = v28;
        mlx::core::array::~array(&v82);
        mlx::core::array::~array(&v83);
        mlx::core::array::~array(&v85);
      }

      mlx::core::where(&v66, &v67, &v68, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Select::vmap();
  }

  mlx::core::Select::vmap();
}

void sub_25A323BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  v34 = *(v32 - 160);
  if (v34)
  {
    *(v32 - 152) = v34;
    operator delete(v34);
  }

  if (v31)
  {
    operator delete(v31);
  }

  mlx::core::array::~array((v32 - 192));
  mlx::core::array::~array((v32 - 176));
  mlx::core::array::~array((v32 - 128));
  _Unwind_Resume(a1);
}

void mlx::core::Negative::jvp(uint64_t a1, void *a2, uint64_t ***a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::negative(*a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Negative::jvp();
  }

  mlx::core::Negative::jvp();
}

void sub_25A323DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Negative::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::negative(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Negative::vmap();
  }

  mlx::core::Negative::vmap();
}

void sub_25A323EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::NotEqual::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[6] = *MEMORY[0x277D85DE8];
  mlx::core::not_equal(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A324004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va1);
  mlx::core::array::~array((v5 - 56));
  mlx::core::array::~array((v4 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::NotEqual::vjp@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    mlx::core::zeros_like((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void mlx::core::NotEqual::jvp(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  mlx::core::broadcast_shapes(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  mlx::core::zeros(__p);
}

void sub_25A3241C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Pad::vjp(uint64_t a1@<X0>, const void ****a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3[1] - *a3 != 4 || **a3)
  {
    mlx::core::Pad::vjp();
  }

  v6 = *a2;
  v7 = ((**a2)[1] - ***a2) >> 2;
  LODWORD(v25) = 0;
  std::vector<int>::vector[abi:ne200100](&v28, v7);
  v8 = *v6;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, *v8, v8[1], (v8[1] - *v8) >> 2);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = v28;
  if (v9 != v10)
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 72);
    v14 = v25;
    do
    {
      v15 = *v9++;
      v11[v15] = *(v12 + 4 * v15);
      v14[v15] -= *(v13 + 4 * v15);
    }

    while (v9 != v10);
  }

  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, v11, v29, (v29 - v11) >> 2);
  __p = 0;
  v18 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v25, v26, (v26 - v25) >> 2);
  mlx::core::slice(v6, &v20, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, &v23);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v30[0] = v23;
  v30[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, v30, &v31, 1uLL);
  mlx::core::array::~array(v30);
  mlx::core::array::~array(&v23);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_25A3243E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  mlx::core::array::~array((v19 - 56));
  mlx::core::array::~array(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  v21 = *(v19 - 80);
  if (v21)
  {
    *(v19 - 72) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Pad::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a4[1] - *a4 == 4 && !**a4)
  {
    v4 = *(**a3 + 56);
    mlx::core::array::array<int>();
  }

  mlx::core::Pad::jvp();
}

void sub_25A32457C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  mlx::core::array::~array(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a15);
  _Unwind_Resume(a1);
}

void mlx::core::Pad::vmap()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Pad vmap is NYI.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

BOOL mlx::core::Pad::is_equivalent(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4] - v4;
  v6 = a1[3];
  if (v5 == a1[4] - v6 && !memcmp(v4, v6, v5) && (v7 = a2[6], v8 = a2[7] - v7, v9 = a1[6], v8 == a1[7] - v9) && !memcmp(v7, v9, v8) && (v10 = a2[9], v11 = a2[10] - v10, v12 = a1[9], v11 == a1[10] - v12))
  {
    return memcmp(v10, v12, v11) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_25A3247B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Partition::jvp(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 16)
    {
      mlx::core::argpartition(*a2, *(a1 + 20), *(a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Partition::jvp();
  }

  mlx::core::Partition::jvp();
}

void sub_25A324920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Partition::vmap(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (a2[1] - *a2 == 16)
  {
    if (*(a3 + 8) - *a3 == 4)
    {
      v5 = **a3;
      v6 = *(a1 + 24);
      if (v5 >= 0 && v5 <= v6)
      {
        v8 = (v6 + 1);
      }

      else
      {
        v8 = v6;
      }

      mlx::core::partition(v4, v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Partition::vmap();
  }

  mlx::core::Partition::vmap();
}

void sub_25A324A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Power::vjp@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a3 != *(a3 + 8))
  {
    if (**a3)
    {
      v5 = *a4;
      mlx::core::log(*a2, *(result + 8), *(result + 16) | 0x100000000);
    }

    v6 = (**a2)[7];
    mlx::core::array::array<int>();
  }

  return result;
}

void sub_25A324CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  mlx::core::array::~array(&a9);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void sub_25A324EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  mlx::core::array::~array(&a17);
  a17 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  mlx::core::array::~array(&a12);
  _Unwind_Resume(a1);
}

void mlx::core::Power::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::power(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A325070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::QuantizedMatmul::vmap()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[QuantizedMatmul::vmap] NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx::core::QuantizedMatmul::vjp@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (*a4 != *(a4 + 8))
  {
    if (!**a4)
    {
      v6 = (*a3)[1];
      v16[0] = **a3;
      v16[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = *a2;
      v8 = (*a2)[3];
      v15[0] = (*a2)[2];
      v15[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
        v7 = *a2;
      }

      v9 = v7[5];
      v14[0] = v7[4];
      v14[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
        v7 = *a2;
      }

      v11 = v7[6];
      v10 = v7[7];
      v13[0] = v11;
      v13[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      }

      mlx::core::quantized_matmul(v16, v15, v14, v13, (*(result + 28) & 1) == 0, *(result + 20), *(result + 24), a5, *(result + 8), *(result + 16) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[QuantizedMatmul::vjp] no gradient wrt the quantized matrix yet.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_25A3252AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::QuantizedMatmul::jvp(uint64_t a1, uint64_t ***a2, void **a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (a4[1] - *a4 <= 4uLL && !**a4)
  {
    v8 = (*a3)[1];
    v18[0] = **a3;
    v18[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *a2;
    v10 = (*a2)[3];
    v17[0] = (*a2)[2];
    v17[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      v9 = *a2;
    }

    v11 = v9[5];
    v16[0] = v9[4];
    v16[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
      v9 = *a2;
    }

    v13 = v9[6];
    v12 = v9[7];
    v15[0] = v13;
    v15[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::quantized_matmul(v18, v17, v16, v15, *(a1 + 28), *(a1 + 20), *(a1 + 24), a8, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[QuantizedMatmul::jvp] No JVP wrt the quantized matrix yet.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A325498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  mlx::core::array::~array((v4 - 40));
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  mlx::core::array::~array((v4 - 56));
  _Unwind_Resume(a1);
}

void mlx::core::QuantizedMatmul::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *(*a2)[2];
  v4 = (*a2)[2][1];
  if (*(a1 + 28) == 1)
  {
    v6 = v4 - v5;
    if (v6 > 4)
    {
      v7 = *(v5 + v6 - 8);
      goto LABEL_6;
    }

LABEL_11:
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  if (v4 == v5)
  {
    goto LABEL_11;
  }

  v7 = 32 * *(v4 - 4) / *(a1 + 24);
LABEL_6:
  v8 = **a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v12, *v8, v8[1], (v8[1] - *v8) >> 2);
  v10 = v12;
  v9 = v13;
  *(v13 - 1) = v7;
  __p = v10;
  v16 = v9;
  v17 = v14;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v18, 1uLL);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25A32563C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::GatherQMM::vmap()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherQMM::vmap NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx::core::GatherQMM::vjp@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((*(result + 29) & 1) == 0)
  {
    v5 = *(result + 30);
  }

  v6 = *a4;
  if (*a4 != *(a4 + 8))
  {
    v7 = *a3;
    if (!*v6)
    {
      mlx::core::zeros_like(*a2, *(result + 8), *(result + 16) | 0x100000000);
    }

    v8 = *v6;
    exception = __cxa_allocate_exception(0x10uLL);
    v10 = exception;
    if (v8 < 4)
    {
      std::runtime_error::runtime_error(exception, "GatherQMM::vjp no gradient wrt the quantized matrix yet.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "GatherQMM::vjp cannot compute the gradient wrt the indices.");
    }

    __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_25A325950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  *(v33 - 96) = v31;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v33 - 96));
  _Unwind_Resume(a1);
}

void mlx::core::GatherQMM::jvp()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherQMM::jvp NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::RandomBits::vmap(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v25[7] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] - *a2 == 16)
  {
    v4 = *a3;
    if (a3[1] - *a3 == 4)
    {
      v6 = *v3;
      v7 = v3[1];
      v25[0] = v6;
      v25[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
        v4 = *a3;
      }

      v8 = *v4;
      v9 = (v6[1] - *v6) >> 2;
      if (v9 - 1 == *v4)
      {
        std::vector<int>::vector[abi:ne200100](&v24, v9);
        begin = v24.__begin_;
        end = v24.__end_;
        if (v24.__begin_ != v24.__end_)
        {
          v12 = 0;
          v13 = (v24.__end_ - v24.__begin_ - 4) >> 2;
          v14 = vdupq_n_s64(v13);
          v15 = (v13 + 4) & 0x7FFFFFFFFFFFFFFCLL;
          v16 = v24.__begin_ + 2;
          do
          {
            v17 = vdupq_n_s64(v12);
            v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0D0)));
            if (vuzp1_s16(v18, *v14.i8).u8[0])
            {
              *(v16 - 2) = v12;
            }

            if (vuzp1_s16(v18, *&v14).i8[2])
            {
              *(v16 - 1) = v12 + 1;
            }

            if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_25A99B0C0)))).i32[1])
            {
              *v16 = v12 + 2;
              v16[1] = v12 + 3;
            }

            v12 += 4;
            v16 += 4;
          }

          while (v15 != v12);
        }

        v19 = begin[v8];
        begin[v8] = begin[v8 - 1];
        begin[v8 - 1] = v19;
        memset(__p, 0, sizeof(__p));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, begin, end, end - begin);
        mlx::core::transpose(v25, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      memset(&v24, 0, sizeof(v24));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
      if ((v8 & 0x80000000) == 0)
      {
        v20.__i_ = &v24.__begin_[v8];
        std::vector<int>::insert(&v24, v20, (*v25[0] + 4 * v8));
      }

      v21 = *(a1 + 48);
      memset(v22, 0, sizeof(v22));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v22, v24.__begin_, v24.__end_, v24.__end_ - v24.__begin_);
      std::allocate_shared[abi:ne200100]<mlx::core::RandomBits,std::allocator<mlx::core::RandomBits>,mlx::core::Stream const&,std::vector<int> &,int &,0>();
    }

    mlx::core::RandomBits::vmap();
  }

  mlx::core::RandomBits::vmap();
}

void sub_25A325EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v26 + 24);
  if (v29)
  {
    *(v26 + 32) = v29;
    operator delete(v29);
  }

  mlx::core::array::~array((v27 - 128));
  _Unwind_Resume(a1);
}

BOOL mlx::core::RandomBits::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void mlx::core::Real::vjp(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (a2[1] - *a2 != 16)
  {
    mlx::core::Real::vjp();
  }

  if (a4[1] - *a4 != 4)
  {
    mlx::core::Real::vjp();
  }

  v7 = (*a3)[1];
  v9[0] = **a3;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    v6 = *a2;
  }

  mlx::core::astype(v9, *(*v6 + 56), *(a1 + 8), *(a1 + 16) | 0x100000000, v10);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v10, &v11, 1uLL);
  mlx::core::array::~array(v10);
  mlx::core::array::~array(v9);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_25A3260F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Real::jvp(uint64_t a1@<X0>, void *a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 != 16)
  {
    mlx::core::Real::jvp();
  }

  if (a4[1] - *a4 != 4)
  {
    mlx::core::Real::jvp();
  }

  mlx::core::real(*a3, *(a1 + 8), *(a1 + 16) | 0x100000000, v7);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v7, &v8, 1uLL);
  mlx::core::array::~array(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A3261E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Real::vmap(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Real::vmap();
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::Real::vmap();
  }

  mlx::core::real(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
  memset(v7, 0, sizeof(v7));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v7, v9, &v10, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v7, a3);
  v8 = v7;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v8);
  mlx::core::array::~array(v9);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A3262F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Reshape::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, std::vector<int>::value_type **a3@<X2>, void *a4@<X8>)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  __x = **a3;
  if ((__x & 0x80000000) == 0)
  {
    std::vector<int>::vector[abi:ne200100](&v28, ((*v6)[1] - **v6) >> 2);
    v7.__i_ = v28.__begin_;
    end = v28.__end_;
    if (v28.__begin_ != v28.__end_)
    {
      v9 = 0;
      v10 = (v28.__end_ - v28.__begin_ - 4) >> 2;
      v11 = vdupq_n_s64(v10);
      v12 = (v10 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v13 = v28.__begin_ + 2;
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_25A99B0D0)));
        if (vuzp1_s16(v15, *v11.i8).u8[0])
        {
          *(v13 - 2) = v9;
        }

        if (vuzp1_s16(v15, *&v11).i8[2])
        {
          *(v13 - 1) = v9 + 1;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_25A99B0C0)))).i32[1])
        {
          *v13 = v9 + 2;
          v13[1] = v9 + 3;
        }

        v9 += 4;
        v13 += 4;
      }

      while (v12 != v9);
    }

    v16 = &v7.__i_[__x];
    v17 = end - (v16 + 1);
    if (end != v16 + 1)
    {
      memmove(&v7.__i_[__x], v16 + 1, end - (v16 + 1));
      v7.__i_ = v28.__begin_;
    }

    v28.__end_ = (v16 + v17);
    std::vector<int>::insert(&v28, v7, &__x);
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v28.__begin_, v28.__end_, v28.__end_ - v28.__begin_);
    mlx::core::transpose(v6, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  mlx::core::reshape(v6, &v19, *(a1 + 8), *(a1 + 16) | 0x100000000, &v30);
  memset(&v28, 0, sizeof(v28));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v28, &v30, v31, 1uLL);
  v26 = __x;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v22, &v26, &v27, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, &v28, &v22);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  v22 = &v28;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v22);
  mlx::core::array::~array(&v30);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_25A3266AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t *__p, uint64_t *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  __p = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v26 - 96));
  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Reshape::vjp(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Reshape::vjp();
  }

  if (a4[1] - *a4 != 4)
  {
    mlx::core::Reshape::vjp();
  }

  if (**a4)
  {
    mlx::core::Reshape::vjp();
  }

  v7 = *a3;
  v8 = **a2;
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v8, v8[1], (v8[1] - *v8) >> 2);
  mlx::core::reshape(v7, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v13, &v14, 1uLL);
  mlx::core::array::~array(v13);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_25A3268C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Reshape::jvp(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 != 16)
  {
    mlx::core::Reshape::jvp();
  }

  if (a4[1] - *a4 != 4)
  {
    mlx::core::Reshape::jvp();
  }

  if (**a4)
  {
    mlx::core::Reshape::jvp();
  }

  v7 = *a3;
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  mlx::core::reshape(v7, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v12);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v12, &v13, 1uLL);
  mlx::core::array::~array(v12);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_25A326A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::Reshape::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

uint64_t mlx::core::Reshape::output_shape@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3 == *a2)
  {
    v8 = 1;
    goto LABEL_16;
  }

  v5 = 0;
  if (((v3 - *a2) >> 2) <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = (v3 - *a2) >> 2;
  }

  v7 = -1;
  v8 = 1;
  do
  {
    v9 = *(v4 + 4 * v5);
    if (v9 == -1)
    {
      if ((v7 & 0x80000000) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "[reshape] Reshape can only infer one dimension.");
        goto LABEL_20;
      }

      v7 = v5;
    }

    else
    {
      v8 *= v9;
    }

    ++v5;
  }

  while (v6 != v5);
  if (v8 && (v7 & 0x80000000) == 0)
  {
    v10 = *(*result + 48);
    *(v4 + 4 * v7) = v10 / v8;
    v8 *= (v10 / v8);
    goto LABEL_17;
  }

  if ((v7 & 0x80000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[reshape] Cannot infer the shape of an empty array");
LABEL_20:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

LABEL_16:
  v10 = *(*result + 48);
LABEL_17:
  if (v10 != v8)
  {
    v12 = result;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "[reshape] Cannot reshape array of size ", 39);
    v15 = MEMORY[0x25F851380](v14, *(*v12 + 48));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " into shape ", 12);
    v17 = mlx::core::operator<<(v16, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ".", 1);
    v18 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str[abi:ne200100](&v21, &v19);
    std::logic_error::logic_error(v18, &v19);
    v18->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v18, off_279921408, MEMORY[0x277D82610]);
  }

  *a3 = v4;
  a3[1] = v3;
  a3[2] = a2[2];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_25A326C70(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a8, MEMORY[0x277D82828]);
      MEMORY[0x25F8516C0](va);
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

void mlx::core::Reshape::output_shapes(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v6, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  mlx::core::Reshape::output_shape(v4, &v6, __p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, __p, &v10, 1uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_25A326DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Reduce::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void **a3@<X2>, void **a4@<X4>, void *a5@<X8>)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v7 = **a2;
  v8 = (*a2)[1];
  v43 = v7;
  v44 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = *a3;
  v10 = *(a1 + 20);
  if ((v10 - 4) < 2)
  {
    v14 = **a4;
    v15 = (*a4)[1];
    *&v47 = v14;
    *(&v47 + 1) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    if (v14[1] - *v14 != v7[1] - *v7)
    {
      mlx::core::expand_dims(&v47, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, &v42);
      v16 = *&v42.__begin_;
      v42.__begin_ = 0;
      v42.__end_ = 0;
      v17 = *(&v47 + 1);
      v47 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      mlx::core::array::~array(&v42);
    }

    mlx::core::equal(&v43, &v47, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  if (v10 == 3)
  {
    v18 = *(a1 + 8);
    v38 = *(a1 + 16);
    v36 = &v37;
    v37 = v18;
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    if ((v20 - v19) >= 5)
    {
      v47 = 0uLL;
      v48 = 0;
      memset(&v42, 0, sizeof(v42));
      v39 = 0;
      v40 = 0;
      v41 = 0;
      LODWORD(v45[0]) = 0;
      v21 = *v7;
      if (v7[1] != *v7)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(a1 + 24);
          if (v22 < ((*(a1 + 32) - v24) >> 2) && *(v24 + 4 * v22) == v23)
          {
            ++v22;
          }

          else
          {
            std::vector<int>::push_back[abi:ne200100](&v47, v45);
            v25 = SLODWORD(v45[0]);
            v26 = (v43[1] - *v43) >> 2;
            if (SLODWORD(v45[0]) < 0)
            {
              v25 = SLODWORD(v45[0]) + v26;
            }

            if (v26 <= v25)
            {
              std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
            }

            LODWORD(v35) = *(*v43 + 4 * v25);
            std::vector<int>::push_back[abi:ne200100](&v39, &v35);
            v23 = v45[0];
            v7 = v43;
            v21 = *v43;
          }

          LODWORD(v45[0]) = ++v23;
        }

        while (v23 < ((v7[1] - v21) >> 2));
        v19 = *(a1 + 24);
        v20 = *(a1 + 32);
      }

      while (v19 != v20)
      {
        LODWORD(v45[0]) = *v19;
        std::vector<int>::push_back[abi:ne200100](&v47, v45);
        v19 += 4;
      }

      LODWORD(v45[0]) = -1;
      std::vector<int>::push_back[abi:ne200100](&v39, v45);
      std::vector<int>::resize(&v42, (*(&v47 + 1) - v47) >> 2);
      v27 = v47;
      v28 = (*(&v47 + 1) - v47) >> 2;
      if (*(&v47 + 1) != v47)
      {
        v29 = 0;
        begin = v42.__begin_;
        if (v28 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = (*(&v47 + 1) - v47) >> 2;
        }

        do
        {
          begin[*(v27 + 4 * v29)] = v29;
          ++v29;
        }

        while (v31 != v29);
      }

      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v27, *(&v27 + 1), v28);
      mlx::core::transpose(&v43, __p, v37, v38 | 0x100000000);
    }

    mlx::core::Reduce::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0::operator()(&v36, &v43, v9, *v19);
  }

  if (v10 != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Reduce type VJP not yet implemented.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = v9[1];
  *&v47 = *v9;
  *(&v47 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v8 = v44;
  }

  v48 = v7;
  v49 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v39, &v47, v50, 2uLL);
  mlx::core::broadcast_arrays(&v39, *(a1 + 8), *(a1 + 16) | 0x100000000, &v42);
  v12 = *(v42.__begin_ + 1);
  v45[0] = *v42.__begin_;
  v45[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a5, v45, &v46, 1uLL);
  mlx::core::array::~array(v45);
  *&v35 = &v42;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v35);
  *&v35 = &v39;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v35);
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((&v47 + i));
  }

  mlx::core::array::~array(&v43);
  v32 = *MEMORY[0x277D85DE8];
}

void sub_25A327530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  mlx::core::array::~array((v33 - 144));
  mlx::core::array::~array(&a21);
  v35 = *(v33 - 120);
  if (v35)
  {
    *(v33 - 112) = v35;
    operator delete(v35);
  }

  mlx::core::array::~array(&a27);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  v36 = *(v33 - 192);
  if (v36)
  {
    *(v33 - 184) = v36;
    operator delete(v36);
  }

  v37 = *(v33 - 96);
  if (v37)
  {
    *(v33 - 88) = v37;
    operator delete(v37);
  }

  mlx::core::array::~array((v33 - 160));
  _Unwind_Resume(a1);
}

void sub_25A32781C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Reduce::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = **a3;
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = __p;
    v10 = v16;
    while (v9 != v10)
    {
      if (*v9 >= v8)
      {
        ++*v9;
      }

      ++v9;
    }
  }

  v11 = *a2;
  memset(v14, 0, sizeof(v14));
  v12 = *(a1 + 20);
  if (v12 > 2)
  {
    switch(v12)
    {
      case 3:
        mlx::core::prod(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
        std::vector<mlx::core::array>::push_back[abi:ne200100](v14, v13);
        break;
      case 4:
        mlx::core::min(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
        std::vector<mlx::core::array>::push_back[abi:ne200100](v14, v13);
        break;
      case 5:
        mlx::core::max(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
        std::vector<mlx::core::array>::push_back[abi:ne200100](v14, v13);
        break;
      default:
        goto LABEL_21;
    }
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      mlx::core::any(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
      std::vector<mlx::core::array>::push_back[abi:ne200100](v14, v13);
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_21;
      }

      mlx::core::sum(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
      std::vector<mlx::core::array>::push_back[abi:ne200100](v14, v13);
    }
  }

  else
  {
    mlx::core::all(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
    std::vector<mlx::core::array>::push_back[abi:ne200100](v14, v13);
  }

  mlx::core::array::~array(v13);
LABEL_21:
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<std::vector<mlx::core::array>&,std::vector<int> const&,0>(a4, v14, a3);
  v13[0] = v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v13);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_25A327A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  mlx::core::array::~array(&a9);
  a9 = &a11;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::Reduce::is_equivalent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == *(a2 + 20) && (v3 = a1 + 24, v2 = *(a1 + 24), v4 = *(v3 + 8) - v2, v6 = a2 + 24, v5 = *(a2 + 24), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Reduce::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = **a2;
  v12 = 0uLL;
  v11 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v11, *v5, v5[1], (v5[1] - *v5) >> 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  for (i = v11; v6 != v7; i[v9] = 1)
  {
    v9 = *v6++;
  }

  v14 = v12;
  __p = i;
  v11 = 0;
  v12 = 0uLL;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v15, 1uLL);
  if (__p)
  {
    *&v14 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    *&v12 = v11;
    operator delete(v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_25A327C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Round::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Round::jvp();
  }

  mlx::core::Round::jvp();
}

void sub_25A327D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Round::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::round(*a2, 0, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Round::vmap();
  }

  mlx::core::Round::vmap();
}

void sub_25A327E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Scan::vmap(uint64_t a1, uint64_t ***a2, _DWORD **a3)
{
  __p[11] = *MEMORY[0x277D85DE8];
  v4 = **a2;
  if (!v4[7])
  {
    *(a1 + 20);
  }

  if ((**a3 & 0x80000000) == 0)
  {
    v5 = *(a1 + 24);
  }

  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v4, v4[1], (v4[1] - *v4) >> 2);
  v6 = *(a1 + 24);
  operator new();
}

void sub_25A328090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char a22)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a21);
  mlx::core::array::~array((v22 - 88));
  a21 = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a21);
  mlx::core::array::~array(&a22);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Scan::vjp(uint64_t a1, uint64_t *a2, uint64_t ***a3, _DWORD **a4, void **a5)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (a2[1] - *a2 == 16)
  {
    if (!**a4)
    {
      v7 = *(a1 + 20);
      if (v7 != 4)
      {
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            mlx::core::cumsum(*a3, *(a1 + 24), (*(a1 + 28) & 1) == 0, *(a1 + 29), *(a1 + 8), *(a1 + 16) | 0x100000000);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "VJP is not implemented for cumulative min/max");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v9 = *v5;
        v8 = *(v5 + 8);
        v23 = v9;
        v24 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        mlx::core::cumprod(&v23, *(a1 + 24), *(a1 + 28), (*(a1 + 29) & 1) == 0, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      v11 = *v5;
      v10 = *(v5 + 8);
      v23 = v11;
      v24 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = (*a3)[1];
      v21 = **a3;
      v22 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
      }

      v13 = (*a5)[1];
      *&v19[28] = **a5;
      v20 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = 1;
      memset(v25, 0, 24);
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v25, &v18, v19, 1uLL);
      v14 = *(a1 + 8);
      v15 = v21[7] & 0xFFFFFFFFFFLL;
      v16 = *(a1 + 16) | 0x100000000;
      mlx::core::zeros(v25);
    }

    mlx::core::Scan::vjp();
  }

  mlx::core::Scan::vjp();
}

void mlx::core::Scan::jvp(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a3 + 8) - *a3 == 16)
  {
    if (!**a4)
    {
      if (*(a1 + 20) == 2)
      {
        mlx::core::cumsum(*a3, *(a1 + 24), *(a1 + 28), *(a1 + 29), *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "JVP is not implemented for cumulative prod/min/max");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::Scan::jvp();
  }

  mlx::core::Scan::jvp();
}

BOOL mlx::core::Scatter::is_equivalent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == *(a2 + 20) && (v3 = a1 + 24, v2 = *(a1 + 24), v4 = *(v3 + 8) - v2, v6 = a2 + 24, v5 = *(a2 + 24), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Scatter::vjp(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X2>, int **a4@<X3>, void **a5@<X4>, void *a6@<X8>)
{
  v7 = *(a1 + 20);
  if (v7 >= 3 && v7 != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[scatter] VJP not implemented for scatter_prod");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = *a5;
  v14 = (*(a2 + 8) - 16);
  v34 = *a2;
  memset(v38, 0, sizeof(v38));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v38, (v34 + 2), v14, (v14 - (v34 + 2)) >> 4);
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v16 = *a4;
  v15 = a4[1];
  if (*a4 != v15)
  {
    while (1)
    {
      v17 = *v16;
      if (v17)
      {
        break;
      }

      v25 = *(a1 + 20);
      if (v25 < 2)
      {
        mlx::core::equal(v13, v34, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (v25 != 2)
      {
        if (v25 == 4)
        {
          v26 = *a3;
          mlx::core::zeros_like(v14, *(a1 + 8), *(a1 + 16) | 0x100000000);
        }

LABEL_31:
        v32 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v32, "");
        goto LABEL_32;
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a6, *a3);
      if (++v16 == v15)
      {
        goto LABEL_29;
      }
    }

    if (((*(a2 + 8) - *a2) >> 4) - 1 == v17)
    {
      v18 = *(a1 + 20);
      if (v18 < 2)
      {
        v27 = **a3;
        v36 = 0;
        v37 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v27, v27[1], (v27[1] - *v27) >> 2);
        v28 = *(a1 + 24);
        v29 = *(a1 + 32);
        if (v28 != v29)
        {
          v30 = __p;
          do
          {
            v31 = *v28++;
            v30[v31] = 1;
          }

          while (v28 != v29);
        }

        mlx::core::gather(*a3, v38, (a1 + 24), &__p, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (v18 == 4 || v18 == 2)
      {
        v20 = **a3;
        v36 = 0;
        v37 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v20, v20[1], (v20[1] - *v20) >> 2);
        v21 = *(a1 + 24);
        v22 = *(a1 + 32);
        if (v21 != v22)
        {
          v23 = __p;
          do
          {
            v24 = *v21++;
            v23[v24] = 1;
          }

          while (v21 != v22);
        }

        mlx::core::gather(*a3, v38, (a1 + 24), &__p, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      goto LABEL_31;
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v32, "[scatter] Cannot calculate VJP with respect to indices.");
LABEL_32:
    v32->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v32, off_279921408, MEMORY[0x277D82610]);
  }

LABEL_29:
  __p = v38;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void mlx::core::Scatter::jvp()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[scatter] JVP not yet implemented");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Scatter::vmap(uint64_t a1, uint64_t *a2, int **a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v7 = (v5 - v4) >> 4;
  if (v7 <= 1)
  {
    mlx::core::Scatter::vmap();
  }

  if (v7 != a3[1] - *a3)
  {
    mlx::core::Scatter::vmap();
  }

  v31 = 0uLL;
  v32 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(&v31, v4, v5, v7);
  memset(v30, 0, sizeof(v30));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v30, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v9 = *a3;
  v10 = a3[1];
  v11 = **a3;
  v29 = v11;
  v12 = v9;
  if (v9 != v10)
  {
    do
    {
      v11 = *v12;
      if ((*v12 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      ++v12;
    }

    while (v12 != v10);
    v11 = *v10;
    v12 = v10;
  }

LABEL_7:
  if ((v11 & 0x80000000) == 0)
  {
    v13 = mlx::core::array::shape((v31 + 4 * (v12 - v9)), v11);
    if (v29 < 0)
    {
      v29 = 0;
      mlx::core::expand_dims(v31, 0, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    v14 = *a3;
    if ((a3[1] - *a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = 0;
      v16 = 16;
      do
      {
        v17 = v14[v15 + 1];
        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        mlx::core::moveaxis(v31 + v16, v17, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, __p);
        v18 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v19 = *(v31 + v16 + 8);
        *(v31 + v16) = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        mlx::core::array::~array(__p);
        if ((*a3)[v15 + 1] < 0)
        {
LABEL_16:
          v20 = *(v31 + v16);
          __p[1] = 0;
          v28 = 0;
          __p[0] = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v20, v20[1], (v20[1] - *v20) >> 2);
          mlx::core::expand_dims((v31 + v16), 0, *(a1 + 8), *(a1 + 16) | 0x100000000);
        }

        v21 = *(v30[0] + 4 * v15);
        if (v21 >= v29)
        {
          *(v30[0] + 4 * v15) = v21 + 1;
        }

        v14 = *a3;
        v22 = v15 + 2;
        ++v15;
        v16 += 16;
      }

      while (a3[1] - *a3 - 1 > v22);
    }

    mlx::core::arange((*(*(v31 + 16) + 56) & 0xFFFFFFFFFFLL), *(a1 + 8), *(a1 + 16) | 0x100000000, &v26, v13);
  }

  v23 = *v31;
  v24 = *(*v31 + 56);
  memset(v25, 0, sizeof(v25));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v25, *v23, v23[1], (v23[1] - *v23) >> 2);
  std::allocate_shared[abi:ne200100]<mlx::core::Scatter,std::allocator<mlx::core::Scatter>,mlx::core::Stream const&,mlx::core::Scatter::ReduceType &,std::vector<int> &,0>();
}

void sub_25A3298AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(&a25);
  v30 = *(v28 - 152);
  if (v30)
  {
    *(v28 - 144) = v30;
    operator delete(v30);
  }

  *(v28 - 152) = v28 - 128;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v28 - 152));
  _Unwind_Resume(a1);
}

mlx::core::array *std::vector<mlx::core::array>::insert(uint64_t a1, __n128 *a2, __n128 *a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v18[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v15);
    }

    v18[0] = 0;
    v18[1] = (16 * v16);
    v18[2] = (16 * v16);
    v18[3] = 0;
    std::__split_buffer<mlx::core::array>::emplace_back<mlx::core::array>(v18, a3);
    v4 = std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, v18, v4);
    std::__split_buffer<mlx::core::array>::~__split_buffer(v18);
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    *(a1 + 8) = v6 + 1;
  }

  else
  {
    std::vector<mlx::core::array>::__move_range(a1, a2, v6, &a2[1]);
    v8 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v9 = *(v4 + 1);
    *v4 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return v4;
}

void sub_25A329B4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *mlx::core::ScatterAxis::vjp@<X0>(void *result@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v6 = *a4;
  v7 = *(a4 + 8);
  if (*a4 != v7)
  {
    v9 = result;
    do
    {
      if (*v6 == 2)
      {
        mlx::core::take_along_axis(*a3, (v5 + 16), *(v9 + 6), v9[1], *(v9 + 4) | 0x100000000);
      }

      if (*v6)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "[scatter_axis] Cannot calculate VJP with respect to indices.");
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      if (*(v9 + 5) == 1)
      {
        v11 = *a3;
        mlx::core::zeros_like((v5 + 32), v9[1], *(v9 + 4) | 0x100000000);
      }

      result = std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a5, *a3);
      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_25A329CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a9);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void mlx::core::ScatterAxis::jvp(uint64_t a1, uint64_t ***a2, void ***a3, char **a4)
{
  __p[14] = *MEMORY[0x277D85DE8];
  v5 = *a4;
  v6 = a4[1];
  if (*a4 != v6)
  {
    v7 = *a4;
    do
    {
      if (*v7 == 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "[scatter_axis] Cannot calculate JVP with respect to indices.");
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      v7 += 4;
    }

    while (v7 != v6);
  }

  if (v6 - v5 == 8)
  {
    v8 = **a2;
    memset(__p, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v8, v8[1], (v8[1] - *v8) >> 2);
    v9 = (**a2)[7];
    operator new();
  }

  if (*v5)
  {
    mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v10 = (*a3)[1];
  __p[12] = **a3;
  __p[13] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  if (**a4 == 2)
  {
    v11 = (*a3)[1];
    v15[3] = **a3;
    v15[4] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    v12 = **a2;
    memset(v15, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v15, *v12, v12[1], (v12[1] - *v12) >> 2);
    v13 = (**a2)[7];
    operator new();
  }

  mlx::core::zeros_like(*a2 + 4, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void mlx::core::ScatterAxis::vmap(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int **a3@<X2>, void *a4@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = a3[1];
  if (*a3 == v8)
  {
LABEL_4:
    v11 = **a2;
    memset(v25, 0, sizeof(v25));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v25, *v11, v11[1], (v11[1] - *v11) >> 2);
    v12 = *(**a2 + 56);
    operator new();
  }

  while (1)
  {
    v10 = *v7;
    if ((v10 & 0x80000000) == 0)
    {
      break;
    }

    if (++v7 == v8)
    {
      goto LABEL_4;
    }
  }

  memset(v26, 0, sizeof(v26));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v26, *a2, a2[1], (a2[1] - *a2) >> 4);
  v13 = *a3;
  if (a3[1] != *a3)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v13[v15];
      if ((v16 & 0x80000000) != 0)
      {
        mlx::core::expand_dims((v26[0] + v14), v10, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (v10 != v16)
      {
        mlx::core::moveaxis(v26[0] + v14, v16, v10, *(a1 + 8), *(a1 + 16) | 0x100000000, __p);
        v17 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v18 = *(v26[0] + v14 + 8);
        *(v26[0] + v14) = v17;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        mlx::core::array::~array(__p);
      }

      ++v15;
      v13 = *a3;
      v14 += 16;
    }

    while (v15 < a3[1] - *a3);
  }

  v19 = *(a1 + 24);
  if (v19 < v10)
  {
    v20 = v19;
  }

  else
  {
    v20 = (v19 + 1);
  }

  if (*(a1 + 20))
  {
    (mlx::core::put_along_axis)(v30, v26[0], v26[0] + 16, v26[0] + 32, v20, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  else
  {
    (mlx::core::scatter_add_axis)(v30, v26[0], v26[0] + 16, v26[0] + 32, v20, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(__p, v30, &v31, 1uLL);
  v22 = v10;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v27, &v22, __p, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, __p, &v27);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  v27 = __p;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v27);
  mlx::core::array::~array(v30);
  __p[0] = v26;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](__p);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_25A32A6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  v24 = *(v22 - 112);
  if (v24)
  {
    *(v22 - 104) = v24;
    operator delete(v24);
  }

  *(v22 - 112) = &__p;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v22 - 112));
  mlx::core::array::~array((v22 - 88));
  __p = &a22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void mlx::core::ScatterAxis::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A32A87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Sigmoid::vjp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *(**a5 + 56);
  mlx::core::array::array<float>();
}

void sub_25A32A9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Sigmoid::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::sigmoid(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sigmoid::jvp();
  }

  mlx::core::Sigmoid::jvp();
}

void sub_25A32AB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Sigmoid::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::sigmoid(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sigmoid::vmap();
  }

  mlx::core::Sigmoid::vmap();
}

void sub_25A32ACCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Sign::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v5 = (*v4)[7];
      v6 = *(a1 + 8);
      v7 = *(a1 + 16) | 0x100000000;
      mlx::core::zeros(*v4);
    }

    mlx::core::Sign::jvp();
  }

  mlx::core::Sign::jvp();
}

void sub_25A32ADF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Sign::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::sign(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sign::vmap();
  }

  mlx::core::Sign::vmap();
}

void sub_25A32AEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Sin::jvp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *a3;
      mlx::core::cos(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sin::jvp();
  }

  mlx::core::Sin::jvp();
}

void sub_25A32B048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Sin::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::sin(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sin::vmap();
  }

  mlx::core::Sin::vmap();
}

void sub_25A32B164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Sinh::jvp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v4 = *a3;
      mlx::core::cosh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sinh::jvp();
  }

  mlx::core::Sinh::jvp();
}

void sub_25A32B2B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Sinh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::sinh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sinh::vmap();
  }

  mlx::core::Sinh::vmap();
}

void sub_25A32B3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Slice::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, unsigned int **a3@<X2>, void *a4@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  memset(&v33, 0, sizeof(v33));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  memset(&v32, 0, sizeof(v32));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v32, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  memset(&v31, 0, sizeof(v31));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v31, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  v8 = **a3;
  v9 = *a2;
  if ((v8 & 0x80000000) == 0)
  {
    v10.__i_ = &v33.__begin_[v8];
    __x[0] = 0;
    std::vector<int>::insert(&v33, v10, __x);
    begin = v32.__begin_;
    __x[0] = mlx::core::array::shape(v9, v8);
    v12.__i_ = &begin[v8];
    std::vector<int>::insert(&v32, v12, __x);
    __x[0] = 1;
    v13.__i_ = &v31.__begin_[v8];
    std::vector<int>::insert(&v31, v13, __x);
  }

  v26 = 0;
  v27 = 0;
  v25 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, v33.__begin_, v33.__end_, v33.__end_ - v33.__begin_);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, v32.__begin_, v32.__end_, v32.__end_ - v32.__begin_);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, v31.__begin_, v31.__end_, v31.__end_ - v31.__begin_);
  mlx::core::slice(v9, &v25, &v22, &v19, *(a1 + 8), *(a1 + 16) | 0x100000000, v34);
  *__x = 0;
  v29 = 0;
  v30 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(__x, v34, &v35, 1uLL);
  v15 = v8;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v15, &__p, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, __x, &__p);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  __p = __x;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(v34);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v31.__begin_)
  {
    v31.__end_ = v31.__begin_;
    operator delete(v31.__begin_);
  }

  if (v32.__begin_)
  {
    v32.__end_ = v32.__begin_;
    operator delete(v32.__begin_);
  }

  if (v33.__begin_)
  {
    v33.__end_ = v33.__begin_;
    operator delete(v33.__begin_);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_25A32B690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    v25[1] = __p;
    operator delete(__p);
  }

  v27 = v25[3];
  if (v27)
  {
    v25[4] = v27;
    operator delete(v27);
  }

  v28 = v25[6];
  if (v28)
  {
    v25[7] = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Slice::vjp(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::Slice::vjp();
}

void sub_25A32B8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  mlx::core::array::~array((v18 - 56));
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  mlx::core::array::~array(&a18);
  _Unwind_Resume(a1);
}

void mlx::core::Slice::jvp(uint64_t a1@<X0>, void *a2@<X1>, const void ****a3@<X2>, void *a4@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 != 16)
  {
    mlx::core::Slice::jvp();
  }

  v6 = *a3;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v14, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v11, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  __p = 0;
  v9 = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  mlx::core::slice(v6, &v14, &v11, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v17);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, v17, &v18, 1uLL);
  mlx::core::array::~array(v17);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25A32BAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  mlx::core::array::~array((v16 - 56));
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::Slice::is_equivalent(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11) && !memcmp(v9, v11, v10) && (v12 = a1[9], v13 = a1[10] - v12, v14 = a2[9], v13 == a2[10] - v14))
  {
    return memcmp(v12, v14, v13) == 0;
  }

  else
  {
    return 0;
  }
}

void mlx::core::SliceUpdate::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, char **a3@<X2>, void *a4@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 != 32)
  {
    mlx::core::SliceUpdate::vmap();
  }

  if (a3[1] - *a3 != 8)
  {
    mlx::core::SliceUpdate::vmap();
  }

  memset(&v52, 0, sizeof(v52));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v52, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  memset(&v51, 0, sizeof(v51));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v51, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  memset(&v50, 0, sizeof(v50));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v50, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  v8 = *a2;
  v9 = (*a2)[1];
  v49[0] = **a2;
  v49[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    v8 = *a2;
  }

  v11 = v8[2];
  v10 = v8[3];
  *&v48 = v11;
  *(&v48 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v12 = *a3;
  v13 = **a3;
  v14 = *(v12 + 1);
  if (__PAIR64__(v14, v13) == -1)
  {
    v44 = 0;
    v45 = 0;
    v43 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v43, v52.__begin_, v52.__end_, v52.__end_ - v52.__begin_);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v40, v51.__begin_, v51.__end_, v51.__end_ - v51.__begin_);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v37, v50.__begin_, v50.__end_, v50.__end_ - v50.__begin_);
    mlx::core::slice_update(v49, &v48, &v43, &v40, &v37, *(a1 + 8), *(a1 + 16) | 0x100000000, &v53);
    memset(__x, 0, sizeof(__x));
    v47 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(__x, &v53, &v54, 1uLL);
    v34 = -1;
    __p[1] = 0;
    v36 = 0;
    __p[0] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v34, __p, 1uLL);
    std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, __x, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    __p[0] = __x;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](__p);
    mlx::core::array::~array(&v53);
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    v15 = v43;
    if (v43)
    {
      v44 = v43;
LABEL_35:
      operator delete(v15);
    }
  }

  else
  {
    if (v13 == -1)
    {
      mlx::core::expand_dims(v49, v14, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    if (v14 == -1)
    {
      mlx::core::expand_dims(&v48, v13, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    if (v13 != v14)
    {
      mlx::core::moveaxis(&v48, v14, v13, *(a1 + 8), *(a1 + 16) | 0x100000000, __x);
      v16 = *__x;
      memset(__x, 0, sizeof(__x));
      v17 = *(&v48 + 1);
      v48 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      mlx::core::array::~array(__x);
    }

    v18.__i_ = &v52.__begin_[v13];
    __x[0] = 0;
    std::vector<int>::insert(&v52, v18, __x);
    v19 = (v49[0][1] - *v49[0]) >> 2;
    v20 = v13 + v19;
    if (v13 >= 0)
    {
      v20 = v13;
    }

    if (v19 <= v20)
    {
      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    v21 = v13;
    __x[0] = *(*v49[0] + 4 * v20);
    v22.__i_ = &v51.__begin_[v21];
    std::vector<int>::insert(&v51, v22, __x);
    __x[0] = 1;
    v23.__i_ = &v50.__begin_[v21];
    std::vector<int>::insert(&v50, v23, __x);
    v32 = 0;
    v33 = 0;
    v31 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v31, v52.__begin_, v52.__end_, v52.__end_ - v52.__begin_);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v28, v51.__begin_, v51.__end_, v51.__end_ - v51.__begin_);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, v50.__begin_, v50.__end_, v50.__end_ - v50.__begin_);
    mlx::core::slice_update(v49, &v48, &v31, &v28, &v25, *(a1 + 8), *(a1 + 16) | 0x100000000, &v53);
    memset(__x, 0, sizeof(__x));
    v47 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(__x, &v53, &v54, 1uLL);
    v34 = v13;
    __p[1] = 0;
    v36 = 0;
    __p[0] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v34, __p, 1uLL);
    std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, __x, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    __p[0] = __x;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](__p);
    mlx::core::array::~array(&v53);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    v15 = v31;
    if (v31)
    {
      v32 = v31;
      goto LABEL_35;
    }
  }

  mlx::core::array::~array(&v48);
  mlx::core::array::~array(v49);
  if (v50.__begin_)
  {
    v50.__end_ = v50.__begin_;
    operator delete(v50.__begin_);
  }

  if (v51.__begin_)
  {
    v51.__end_ = v51.__begin_;
    operator delete(v51.__begin_);
  }

  if (v52.__begin_)
  {
    v52.__end_ = v52.__begin_;
    operator delete(v52.__begin_);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_25A32C17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array((v32 - 176));
  mlx::core::array::~array((v32 - 160));
  v34 = *(v32 - 144);
  if (v34)
  {
    *(v32 - 136) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 120);
  if (v35)
  {
    *(v32 - 112) = v35;
    operator delete(v35);
  }

  v36 = *(v32 - 96);
  if (v36)
  {
    *(v32 - 88) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void mlx::core::SliceUpdate::vjp(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void ****a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a2;
  if (a2[1] - *a2 != 32)
  {
    mlx::core::SliceUpdate::vjp();
  }

  v7 = *a3;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v8 = *a4;
  v9 = *(a4 + 8);
  if (*a4 != v9)
  {
    do
    {
      if (!*v8)
      {
        mlx::core::zeros_like((v6 + 16), *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v17, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v14, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
      __p = 0;
      v12 = 0;
      v13 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
      mlx::core::slice(v7, &v17, &v14, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v20);
      std::vector<mlx::core::array>::push_back[abi:ne200100](a5, v20);
      mlx::core::array::~array(v20);
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      ++v8;
    }

    while (v8 != v9);
  }
}

void sub_25A32C540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  *(v23 - 64) = v22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v23 - 64));
  _Unwind_Resume(a1);
}

void mlx::core::SliceUpdate::jvp(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 != 32)
  {
    mlx::core::SliceUpdate::jvp();
  }

  v6 = *a3;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v14, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v11, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  __p = 0;
  v9 = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  mlx::core::slice_update(v6, (v6 + 16), &v14, &v11, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, &v17);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, &v17, &v18, 1uLL);
  mlx::core::array::~array(&v17);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25A32C76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  mlx::core::array::~array((v16 - 56));
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::SliceUpdate::is_equivalent(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11) && !memcmp(v9, v11, v10) && (v12 = a1[9], v13 = a1[10] - v12, v14 = a2[9], v13 == a2[10] - v14))
  {
    return memcmp(v12, v14, v13) == 0;
  }

  else
  {
    return 0;
  }
}

void mlx::core::DynamicSlice::vmap(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (((*a3)[1] & 0x80000000) != 0)
  {
    v4 = *a2;
    v5 = **a3;
    memset(&v18, 0, sizeof(v18));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v16, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = v16[0];
      v7 = v16[1];
      while (v6 != v7)
      {
        if (*v6 >= v5)
        {
          ++*v6;
        }

        ++v6;
      }

      begin = v18.__begin_;
      v9 = mlx::core::array::shape(v4, v5);
      v10.__i_ = &begin[v5];
      __x[0] = v9;
      std::vector<int>::insert(&v18, v10, __x);
    }

    *v13 = *v16;
    v14 = v17;
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    v12 = v18;
    memset(&v18, 0, sizeof(v18));
    mlx::core::slice(v4, (v4 + 2), v13, &v12, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[DynamicSlice::vmap] vmap over start indices not yet supported.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::DynamicSlice::vjp(uint64_t a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (**a4 != 1 && *(a4 + 8) - *a4 < 5uLL)
  {
    mlx::core::zeros_like(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[DynamicSlice::vjp] Not supported for start indices.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A32CCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  mlx::core::array::~array(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a12);
  _Unwind_Resume(a1);
}

void mlx::core::DynamicSlice::jvp(uint64_t a1, uint64_t *a2, uint64_t ***a3)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *a2;
  memset(v7, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v7, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  mlx::core::slice(v4, v5 + 16, v7, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A32CE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  mlx::core::array::~array(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::DynamicSlice::is_equivalent(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11))
  {
    return memcmp(v9, v11, v10) == 0;
  }

  else
  {
    return 0;
  }
}

void mlx::core::DynamicSlice::output_shapes(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_25A32CF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::DynamicSliceUpdate::vmap(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v22[7] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = (*a2)[1];
  v22[0] = **a2;
  v22[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    v4 = *a2;
  }

  v6 = v4[3];
  *&v21 = v4[2];
  *(&v21 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    v4 = *a2;
  }

  v7 = *a3;
  if (((*a3)[2] & 0x80000000) != 0)
  {
    v8 = *v7;
    v9 = v7[1];
    if (v8 != -1 || v9 != -1)
    {
      if (v8 == -1)
      {
        mlx::core::expand_dims(v22, v9, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (v9 == -1)
      {
        mlx::core::expand_dims(&v21, v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (v8 != v9)
      {
        mlx::core::moveaxis(&v21, v9, v8, *(a1 + 8), *(a1 + 16) | 0x100000000, __p);
        v11 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v12 = *(&v21 + 1);
        v21 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        mlx::core::array::~array(__p);
      }

      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
      v13 = __p[0];
      v14 = __p[1];
      if (__p[0] != __p[1])
      {
        v15 = __p[0];
        do
        {
          if (*v15 >= v8)
          {
            ++*v15;
          }

          ++v15;
        }

        while (v15 != v14);
      }

      v17[0] = v13;
      v17[1] = v14;
      v17[2] = v20;
      __p[1] = 0;
      v20 = 0;
      __p[0] = 0;
      mlx::core::slice_update(v22, &v21, (v4 + 4), v17, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    memset(v18, 0, sizeof(v18));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v18, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
    mlx::core::slice_update(v22, &v21, (v4 + 4), v18, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[DynamicSliceUpdate::vmap] vmap over start indices not yet supported.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A32D438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a23);
  mlx::core::array::~array(&a25);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::DynamicSliceUpdate::vjp@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t ***a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a3;
  v6 = *a2;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v7 = *a4;
  if (*a4 != *(a4 + 8))
  {
    v8 = result;
    if (*v7 != 1)
    {
      if (!*v7)
      {
        mlx::core::zeros_like((v6 + 16), *(result + 8), *(result + 16) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[DynamicSliceUpdate::vjp] Not supported for start indices");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    memset(v12, 0, sizeof(v12));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, *(result + 24), *(result + 32), (*(result + 32) - *(result + 24)) >> 2);
    v9 = *(v6 + 16);
    memset(v11, 0, sizeof(v11));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v11, *v9, v9[1], (v9[1] - *v9) >> 2);
    mlx::core::slice(v5, v6 + 32, v12, v11, *(v8 + 8), *(v8 + 16) | 0x100000000);
  }

  return result;
}

void sub_25A32D72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 64) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 64));
  _Unwind_Resume(a1);
}

void mlx::core::DynamicSliceUpdate::jvp(uint64_t a1, uint64_t *a2, uint64_t ***a3)
{
  __p[5] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *a2;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  mlx::core::slice_update(v4, v4 + 2, v5 + 32, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A32D8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::DynamicSliceUpdate::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void mlx::core::Softmax::vmap(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Softmax::vmap();
  }

  v7 = *a3;
  if (a3[1] - *a3 != 4)
  {
    mlx::core::Softmax::vmap();
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  v10 = *v7;
  if ((v10 & 0x80000000) != 0 || (((*v5)[1] - **v5) >> 2) - 1 <= v10)
  {
    LODWORD(v12[0]) = -2;
    std::vector<int>::push_back[abi:ne200100](&__p, v12);
  }

  else
  {
    LODWORD(v12[0]) = -1;
    std::vector<int>::push_back[abi:ne200100](&__p, v12);
  }

  mlx::core::softmax(*a2, &__p, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v17);
  memset(v12, 0, sizeof(v12));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v12, v17, &v18, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v12, a3);
  v16 = v12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v16);
  mlx::core::array::~array(v17);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25A32DA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Softmax::vjp(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (*(a3 + 8) - *a3 == 16)
    {
      mlx::core::multiply(*a5, *a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Softmax::vjp();
  }

  mlx::core::Softmax::vjp();
}

void sub_25A32DC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array(&a16);
  mlx::core::array::~array(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a18);
  _Unwind_Resume(a1);
}

void mlx::core::Softmax::jvp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (*(a3 + 8) - *a3 == 16)
    {
      v6 = -1;
      v9 = 0;
      v10 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v6, &v7, 1uLL);
      mlx::core::softmax(v3, &__p, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v11);
      if (__p)
      {
        v9 = __p;
        operator delete(__p);
      }

      mlx::core::multiply(v11, *a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Softmax::jvp();
  }

  mlx::core::Softmax::jvp();
}

void sub_25A32DE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a11);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(&a15);
  mlx::core::array::~array((v18 - 72));
  _Unwind_Resume(a1);
}

void mlx::core::Sort::vmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (*(a3 + 8) - *a3 == 4)
    {
      v5 = **a3;
      v6 = *(a1 + 20);
      if (v5 >= 0 && v5 <= v6)
      {
        v8 = (v6 + 1);
      }

      else
      {
        v8 = v6;
      }

      mlx::core::sort(v4, v8, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sort::vmap();
  }

  mlx::core::Sort::vmap();
}

void sub_25A32E034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Sort::jvp(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 16)
    {
      mlx::core::argsort(*a2, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sort::jvp();
  }

  mlx::core::Sort::jvp();
}

void sub_25A32E1B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Split::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  v6 = **a3;
  v7 = *(a1 + 48);
  if (v6 >= 0 && v6 <= v7)
  {
    v9 = (v7 + 1);
  }

  else
  {
    v9 = v7;
  }

  mlx::core::split(*a2, (a1 + 24), v9, *(a1 + 8), *(a1 + 16) | 0x100000000, &v13);
  v10 = *a3;
  std::vector<int>::vector[abi:ne200100](&v11, (*(&v13 + 1) - v13) >> 4);
  *a4 = v13;
  *(a4 + 16) = v14;
  v14 = 0;
  v13 = 0uLL;
  *(a4 + 24) = v11;
  *(a4 + 40) = v12;
  *&v11 = &v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void mlx::core::Split::vjp(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v6, *a2, a2[1], (a2[1] - *a2) >> 4);
  mlx::core::concatenate(v6, *(a1 + 48), *(a1 + 8), *(a1 + 16) | 0x100000000, v8);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v8, &v9, 1uLL);
  mlx::core::array::~array(v8);
  v7 = v6;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v7);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_25A32E398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  mlx::core::array::~array(va2);
  va_copy(v7, va);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

BOOL mlx::core::Split::is_equivalent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && (v3 = a1 + 24, v2 = *(a1 + 24), v4 = *(v3 + 8) - v2, v6 = a2 + 24, v5 = *(a2 + 24), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Square::jvp(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a3[1] - *a3 == 16)
    {
      v3 = *(**a2 + 56);
      mlx::core::array::array<int>();
    }

    mlx::core::Square::jvp();
  }

  mlx::core::Square::jvp();
}

void sub_25A32E580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Square::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::square(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Square::vmap();
  }

  mlx::core::Square::vmap();
}

void sub_25A32E6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Sqrt::vjp(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void **a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(a2 + 8) - v5 == 16)
  {
    if (a3[1] - *a3 == 16)
    {
      v7 = *(*v5 + 56);
      if (*(a1 + 20) == 1)
      {
        mlx::core::divide(*a5, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      mlx::core::array::array<double>();
    }

    mlx::core::Sqrt::vjp();
  }

  mlx::core::Sqrt::vjp();
}

void sub_25A32E8B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va3);
  _Unwind_Resume(a1);
}

void mlx::core::Sqrt::jvp(uint64_t a1, uint64_t ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) == 1)
  {
    mlx::core::rsqrt(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  mlx::core::sqrt(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A32EAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Sqrt::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      if (*(a1 + 20) == 1)
      {
        mlx::core::rsqrt(v4, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      mlx::core::sqrt(v4, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Sqrt::vmap();
  }

  mlx::core::Sqrt::vmap();
}

void sub_25A32EC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void sub_25A32ED50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Subtract::vjp(uint64_t a1@<X0>, void **a2@<X2>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      v9 = *v4;
      v10 = (*a2)[1];
      *&v11 = **a2;
      *(&v11 + 1) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      if (v9 == 1)
      {
        mlx::core::negative(&v11, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      std::vector<mlx::core::array>::emplace_back<mlx::core::array const&>(a4, &v11);
      mlx::core::array::~array(&v11);
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_25A32EE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::Subtract::jvp(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (**a3 == 1)
  {
    mlx::core::negative(v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v7 = *(v6 + 8);
  *&v12 = *v6;
  *(&v12 + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (a3[1] - *a3 >= 5uLL)
  {
    v8 = *a2;
    if (*(*a3 + 4) == 1)
    {
      mlx::core::negative((v8 + 16), *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    v9 = *(v8 + 24);
    v11[0] = *(v8 + 16);
    v11[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    mlx::core::add(&v12, v11, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v13 = v12;
  if (*(&v12 + 1))
  {
    atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, &v13, v14, 1uLL);
  mlx::core::array::~array(&v13);
  mlx::core::array::~array(&v12);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_25A32F004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Subtract::vmap(uint64_t a1, uint64_t a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  mlx::core::subtract(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A32F164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::Squeeze::vjp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::expand_dims(*a2, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v5, &v6, 1uLL);
  mlx::core::array::~array(v5);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A32F264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Squeeze::jvp(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::squeeze(*a2, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v5, &v6, 1uLL);
  mlx::core::array::~array(v5);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A32F31C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Squeeze::vmap(uint64_t a1@<X0>, uint64_t ***a2@<X1>, int **a3@<X2>, void *a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = **a3;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v9 = v18;
  v10 = v19;
  if (v18 != v19)
  {
    v11 = *a3;
    do
    {
      if (*v9 >= *v11)
      {
        ++*v9;
      }

      else
      {
        --v8;
      }

      ++v9;
    }

    while (v9 != v10);
  }

  mlx::core::squeeze(*a2, &v18, *(a1 + 8), *(a1 + 16) | 0x100000000, v21);
  memset(v17, 0, sizeof(v17));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v17, v21, &v22, 1uLL);
  v13 = v8;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v13, &__p, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v17, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  __p = v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(v21);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_25A32F4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 72));
  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::Squeeze::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void mlx::core::Squeeze::output_shape(uint64_t **this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *this;
  v5 = **this;
  if ((*this)[1] != v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (v9 < ((a2[1] - *a2) >> 2) && v8 == *(*a2 + 4 * v9))
      {
        ++v9;
      }

      else
      {
        v10 = mlx::core::array::shape(this, v8);
        std::vector<int>::push_back[abi:ne200100](a3, &v10);
        v4 = *this;
        v5 = **this;
      }

      ++v8;
    }

    while (v8 < (v4[1] - v5) >> 2);
  }
}

void sub_25A32F618(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Squeeze::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  mlx::core::Squeeze::output_shape(*a2, (a1 + 24), __p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, __p, &v6, 1uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A32F6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Tan::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::cos(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Tan::jvp();
  }

  mlx::core::Tan::jvp();
}

void sub_25A32F838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Tan::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::tan(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Tan::vmap();
  }

  mlx::core::Tan::vmap();
}

void sub_25A32F960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::Tanh::jvp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::cosh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Tanh::jvp();
  }

  mlx::core::Tanh::jvp();
}

void sub_25A32FAD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::Tanh::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::tanh(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Tanh::vmap();
  }

  mlx::core::Tanh::vmap();
}

void sub_25A32FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::BitwiseInvert::vmap(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      mlx::core::bitwise_invert(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::BitwiseInvert::vmap();
  }

  mlx::core::BitwiseInvert::vmap();
}

void sub_25A32FD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::BlockMaskedMM::vjp(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a2;
  std::vector<int>::vector[abi:ne200100](&v24, (*(**a2 + 8) - ***a2) >> 2);
  v7 = v25;
  if (v24 != v25)
  {
    v8 = 0;
    v9 = (v25 - v24 - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = (v24 + 8);
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_25A99B0D0)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_25A99B0C0)))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v12 += 4;
    }

    while (v11 != v8);
  }

  v15 = *(v7 - 8);
  *(v7 - 8) = *(v7 - 4);
  *(v7 - 4) = v15;
  v16 = *a1;
  v17 = a1[1] - *a1;
  if (v17 == 80 || v17 == 48)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v18 = a3[1];
  if (*a3 == v18)
  {
    if (v17 <= 0x30)
    {
      v23 = 0;
LABEL_22:
      if (!v23 || *(*(v16 + 16 * v22 + 16) + 56))
      {
        v20 = *(*v6 + 56);
        mlx::core::array::array<int>();
      }

LABEL_25:
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[BlockMaskedMM] Cannot calculate VJP with respect to BOOLean masks.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    v23 = 1;
  }

  else
  {
    v19 = *(v18 - 4);
    v23 = v19 == v22 + 1;
    if (v19 != v22)
    {
      goto LABEL_22;
    }
  }

  if (!*(*(v16 + 16 * v22) + 56))
  {
    goto LABEL_25;
  }

  goto LABEL_22;
}

void sub_25A330FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(v18 - 112);
  if (v20)
  {
    *(v18 - 104) = v20;
    operator delete(v20);
  }

  *(v18 - 112) = a18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v18 - 112));
  _Unwind_Resume(a1);
}

void sub_25A3313F8()
{
  v1 = *(v0 - 232);
  if (v1)
  {
    *(v0 - 224) = v1;
    JUMPOUT(0x25A331408);
  }

  JUMPOUT(0x25A3313B8);
}

void mlx::core::BlockMaskedMM::vjp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<mlx::core::array> const&)::$_0::operator()(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *a2;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v44, *v10, v10[1], (v10[1] - *v10) >> 2);
  v47 = -3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v47, &v48, 2uLL);
  mlx::core::expand_dims(a2, &__p, *(v9 + 8), *(v9 + 16) | 0x100000000, &v43);
  v11 = v43;
  v43 = 0uLL;
  v12 = *(a2 + 8);
  *a2 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v43);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  v13 = *a2;
  v41 = 0;
  v42 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  v14 = __p;
  v15 = v41 - __p;
  v16 = *(v9 + 20);
  *(__p + ((((v41 - __p) << 30) - 0x100000000) >> 30)) = v16;
  *&v14[((v15 << 30) - 0x300000000) >> 30] = v16;
  mlx::core::broadcast_to(a2, &__p, *(v9 + 8), *(v9 + 16) | 0x100000000, &v43);
  v17 = v43;
  v43 = 0uLL;
  v18 = *(a2 + 8);
  *a2 = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  mlx::core::array::~array(&v43);
  v19 = v44;
  v20 = v45;
  v21 = v45 - v44;
  v22 = ((v45 - v44) << 30) - 0x200000000;
  *&v44[v22 >> 30] *= *(v9 + 20);
  v23 = (v21 << 30) - 0x100000000;
  *&v19[v23 >> 30] *= *(v9 + 20);
  v38 = 0;
  v39 = 0;
  v37 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v37, v19, v20, v21 >> 2);
  mlx::core::reshape(a2, &v37, *(v9 + 8), *(v9 + 16) | 0x100000000, &v43);
  v24 = v43;
  v43 = 0uLL;
  v25 = *(a2 + 8);
  *a2 = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = v21 << 30;
  v27 = v22 >> 32;
  v28 = v23 >> 32;
  mlx::core::array::~array(&v43);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  v29 = v44;
  *&v44[4 * v27] = a3;
  *&v29[4 * v28] = a4;
  LODWORD(v47) = 0;
  std::vector<int>::vector[abi:ne200100](v36, v26 >> 32);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, v44, v45, (v45 - v44) >> 2);
  mlx::core::slice(a2, v36, &v33, *(v9 + 8), *(v9 + 16) | 0x100000000, &v43);
  v30 = v43;
  v43 = 0uLL;
  v31 = *(a2 + 8);
  *a2 = v30;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  mlx::core::array::~array(&v43);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  *a5 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_25A331724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v21 = *(v19 - 104);
  if (v21)
  {
    *(v19 - 96) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A331AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 96);
  if (v28)
  {
    *(v26 - 88) = v28;
    operator delete(v28);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  mlx::core::array::~array(&a26);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::GatherMM::vjp@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*(**a3 + 8) - ***a3 <= 4uLL)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = (**a2)[1];
  if (v5 == ***a2)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  if ((*(result + 20) & 1) == 0)
  {
    v6 = *(result + 21);
  }

  v7 = *a4;
  if (*a4 != *(a4 + 8))
  {
    v8 = *(**a3 + 8);
    v12 = *(v8 - 4);
    v13 = *(v8 - 8);
    v9 = *(v5 - 4);
    if (*v7 != 1)
    {
      if (!*v7)
      {
        mlx::core::zeros_like(*a2, *(result + 8), *(result + 16) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[GatherMM] Cannot calculate VJP with respect to indices.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    mlx::core::zeros_like(*a2 + 2, *(result + 8), *(result + 16) | 0x100000000);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A3321AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46, int a47, __int16 a48, char a49, char a50)
{
  *(v51 - 168) = v50;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v51 - 168));
  _Unwind_Resume(a1);
}

void mlx::core::Transpose::vjp(uint64_t a1, void *a2, uint64_t ***a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      v6 = (a1 + 24);
      v7 = (a1 + 32);
      std::vector<int>::vector[abi:ne200100](&v14, (*(a1 + 32) - *(a1 + 24)) >> 2);
      v8 = *v6;
      v9 = v14;
      if (*v7 != *v6)
      {
        v10 = 0;
        v11 = (*v7 - *v6) >> 2;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        do
        {
          v9[*(v8 + 4 * v10)] = v10;
          ++v10;
        }

        while (v11 != v10);
      }

      v12 = *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v9, v15, (v15 - v9) >> 2);
      mlx::core::transpose(v12, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Transpose::vjp();
  }

  mlx::core::Transpose::vjp();
}

void sub_25A332500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  mlx::core::array::~array(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Transpose::jvp(uint64_t a1, void *a2, uint64_t a3)
{
  __p[5] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    v3 = *a3;
    if (*(a3 + 8) - *a3 == 16)
    {
      memset(__p, 0, 24);
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
      mlx::core::transpose(v3, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Transpose::jvp();
  }

  mlx::core::Transpose::jvp();
}

void sub_25A33264C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Transpose::vmap(uint64_t a1, uint64_t a2, char **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      v5 = **a3;
      __x = v5;
      if ((v5 & 0x80000000) == 0)
      {
        v8 = *(a1 + 24);
        v9 = *(a1 + 32);
        v7 = (a1 + 24);
        if (v8 != v9)
        {
          v10 = *(a1 + 24);
          do
          {
            if (*v10 >= v5)
            {
              ++*v10;
            }

            ++v10;
          }

          while (v10 != v9);
        }

        v11.__i_ = &v8[v5];
        std::vector<int>::insert(v7, v11, &__x);
        v3 = *a2;
      }

      memset(v12, 0, sizeof(v12));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
      mlx::core::transpose(v3, v12, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Transpose::vmap();
  }

  mlx::core::Transpose::vmap();
}

void sub_25A33282C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v16 - 56));
  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::Transpose::is_equivalent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void mlx::core::Transpose::output_shapes(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = ((**a2)[1] - ***a2) >> 2;
  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](&v15, v6);
  v7 = *(a1 + 24);
  v8 = v15;
  v9 = *(a1 + 32) - v7;
  if (v9)
  {
    v10 = v9 >> 2;
    v11 = **v5;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v12 = v15;
    do
    {
      v13 = *v7++;
      *v12++ = *(v11 + 4 * v13);
      --v10;
    }

    while (v10);
  }

  v18 = v16;
  __p = v8;
  v15 = 0;
  v16 = 0uLL;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a3, &__p, &v19, 1uLL);
  if (__p)
  {
    *&v18 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    *&v16 = v15;
    operator delete(v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_25A3329E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::NumberOfElements::vmap(uint64_t *a1, void *a2, int **a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v9, a1[3], a1[4], (a1[4] - a1[3]) >> 2);
      v5 = **a3;
      if ((v5 & 0x80000000) == 0)
      {
        v6 = v9;
        v7 = v10;
        while (v6 != v7)
        {
          if (*v6 >= v5)
          {
            ++*v6;
          }

          ++v6;
        }
      }

      v8 = *(a1 + 52);
      std::allocate_shared[abi:ne200100]<mlx::core::NumberOfElements,std::allocator<mlx::core::NumberOfElements>,mlx::core::Stream const&,std::vector<int> &,BOOL &,mlx::core::Dtype &,0>();
    }

    mlx::core::NumberOfElements::vmap();
  }

  mlx::core::NumberOfElements::vmap();
}

void sub_25A332C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v24 - 72));
  mlx::core::array::~array((v24 - 112));
  v26 = *(v23 + 16);
  if (v26)
  {
    *(v23 + 24) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::NumberOfElements::is_equivalent(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(v5 + 8) - v4;
  v8 = a2 + 24;
  v7 = *(a2 + 24);
  return v6 == *(v8 + 8) - v7 && !memcmp(v4, v7, v6) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52);
}

void mlx::core::SVD::vmap(uint64_t a1, uint64_t *a2, unsigned int **a3)
{
  v5 = **a3;
  v11 = v5 >> 31;
  v6 = *a2;
  if (v5 < 1)
  {
    v7 = *(v6 + 8);
    v10[0] = *v6;
    v10[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis(v6, v5, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v10);
  }

  if (*(a1 + 20))
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  std::vector<int>::vector[abi:ne200100](__p, v8);
  mlx::core::linalg::svd(v10, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_25A332E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array((v14 - 48));
  _Unwind_Resume(a1);
}

void mlx::core::Inverse::vmap(uint64_t a1, uint64_t *a2, int **a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (**a3 < 1)
  {
    v5 = *(v4 + 8);
    v6[0] = *v4;
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    mlx::core::moveaxis(v4, **a3, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v6);
  }

  mlx::core::linalg::inv(v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void mlx::core::View::vmap(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::View::vmap();
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::View::vmap();
  }

  mlx::core::view(*a2, (a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
  memset(v7, 0, sizeof(v7));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v7, v9, &v10, 1uLL);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<true,0>(a4, v7, a3);
  v8 = v7;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v8);
  mlx::core::array::~array(v9);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A333154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void *mlx::core::View::print(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "View ", 5);

  return mlx::core::operator<<(v3, (a1 + 20));
}

void mlx::core::Hadamard::vmap(uint64_t a1, uint64_t a2, char **a3)
{
  v6[7] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 4)
    {
      v5 = **a3;
      if ((((*v4)[1] - **v4) >> 2) - 1 == v5)
      {
        mlx::core::moveaxis(v4, v5, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v6);
        mlx::core::hadamard_transform(v6, *(a1 + 20) | 0x100000000, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      mlx::core::hadamard_transform(v4, *(a1 + 20) | 0x100000000, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Hadamard::vmap();
  }

  mlx::core::Hadamard::vmap();
}

void sub_25A3333DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *__p, char *a18)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  __p = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array((v18 - 56));
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a15);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Hadamard::vjp(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2[1] - *a2 != 16)
  {
    mlx::core::Hadamard::vjp();
  }

  if (a4[1] - *a4 != 4)
  {
    mlx::core::Hadamard::vjp();
  }

  v4 = *(*a1 + 16);

  return v4();
}

void mlx::core::Hadamard::jvp(uint64_t a1, void *a2, uint64_t ***a3, void *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    if (a4[1] - *a4 == 4)
    {
      mlx::core::hadamard_transform(*a3, *(a1 + 20) | 0x100000000, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    mlx::core::Hadamard::jvp();
  }

  mlx::core::Hadamard::jvp();
}

void sub_25A33359C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::vmap_binary_op(std::vector<mlx::core::array> const&,std::vector<int> const&,mlx::core::Stream const&)::$_0::operator()<mlx::core::array>(uint64_t a1@<X0>, uint64_t **a2@<X1>, const void ***a3@<X8>)
{
  v6 = *a2;
  memset(&v13, 0, sizeof(v13));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v13, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7.__i_ = v13.__begin_;
  v8 = *(a1 + 12) - (v13.__end_ - v13.__begin_);
  __x = 1;
  std::vector<int>::insert(&v13, v7, v8, &__x);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v13.__begin_, v13.__end_, v13.__end_ - v13.__begin_);
  mlx::core::reshape(a2, &__p, *a1, *(a1 + 8) | 0x100000000, a3);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v13.__begin_)
  {
    v13.__end_ = v13.__begin_;
    operator delete(v13.__begin_);
  }
}

void sub_25A3336A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void *std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<std::vector<mlx::core::array>&,std::vector<int> const&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_25A333740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    std::vector<mlx::core::array>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = *(a1 + 16) - *a1;
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

      std::vector<mlx::core::array>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        mlx::core::array::operator=(v8, v6);
        v6 += 2;
        v8 += 16;
      }

      while (v6 != a3);
      v12 = *(a1 + 8);
    }

    while (v12 != v8)
    {
      mlx::core::array::~array((v12 - 16));
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13);
    if (v12 != v8)
    {
      do
      {
        mlx::core::array::operator=(v8, v6);
        v6 += 2;
        v8 += 16;
        v13 -= 16;
      }

      while (v13);
      v12 = *(a1 + 8);
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = v14[1];
        *v16 = *v14;
        v16[1] = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
        v16 += 2;
        v15 += 16;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v15;
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *,false>(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v81 = *(a2 - 1);
        v82 = *v10;
        if (*(**a3 + 4 * v81) < *(**a3 + 4 * v82))
        {
          *v10 = v81;
          *(a2 - 1) = v82;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v89 = v10 + 1;
      v90 = v10[1];
      v91 = v10 + 2;
      v92 = v10[2];
      v93 = *v10;
      v94 = **a3;
      v95 = *(v94 + 4 * v90);
      v96 = *v10;
      result = *(v94 + 4 * v96);
      v97 = v92;
      v98 = *(v94 + 4 * v92);
      if (v95 >= result)
      {
        if (v98 < v95)
        {
          *v89 = v92;
          *v91 = v90;
          result = *(v94 + 4 * v92);
          v96 = v90;
          v99 = v10;
          v100 = v10 + 1;
          v97 = v90;
          if (result < *(v94 + 4 * v93))
          {
            goto LABEL_180;
          }

LABEL_182:
          v147 = *(a2 - 1);
          if (*(v94 + 4 * v147) < *(v94 + 4 * v97))
          {
            *v91 = v147;
            *(a2 - 1) = v90;
            v148 = *v91;
            v149 = *v89;
            if (*(v94 + 4 * v148) < *(v94 + 4 * v149))
            {
              v10[1] = v148;
              v10[2] = v149;
              v150 = *v10;
              if (*(v94 + 4 * v148) < *(v94 + 4 * v150))
              {
                *v10 = v148;
                v10[1] = v150;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v98 < v95)
        {
          v99 = v10;
          v100 = v10 + 2;
          v90 = *v10;
          goto LABEL_180;
        }

        *v10 = v90;
        v10[1] = v93;
        result = *(v94 + 4 * v92);
        v99 = v10 + 1;
        v100 = v10 + 2;
        v90 = v93;
        if (result < *(v94 + 4 * v93))
        {
LABEL_180:
          *v99 = v92;
          *v100 = v93;
          v97 = v96;
          goto LABEL_182;
        }
      }

      v90 = v92;
      goto LABEL_182;
    }

    if (v11 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v101 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v102 = 0;
            v103 = **a3;
            v104 = v10;
            do
            {
              v105 = v104[1];
              v106 = *v104;
              v104 = v101;
              if (*(v103 + 4 * v105) < *(v103 + 4 * v106))
              {
                v107 = v102;
                while (1)
                {
                  *(v10 + v107 + 4) = v106;
                  if (!v107)
                  {
                    break;
                  }

                  v106 = *(v10 + v107 - 4);
                  v107 -= 4;
                  if (*(v103 + 4 * v105) >= *(v103 + 4 * v106))
                  {
                    v108 = (v10 + v107 + 4);
                    goto LABEL_124;
                  }
                }

                v108 = v10;
LABEL_124:
                *v108 = v105;
              }

              v101 = v104 + 1;
              v102 += 4;
            }

            while (v104 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v142 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v143 = **a3;
          do
          {
            v144 = v9[1];
            v145 = *v9;
            v9 = v142;
            if (*(v143 + 4 * v144) < *(v143 + 4 * v145))
            {
              do
              {
                *v142 = v145;
                v145 = *(v142 - 2);
                --v142;
              }

              while (*(v143 + 4 * v144) < *(v143 + 4 * v145));
              *v142 = v144;
            }

            v142 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v109 = (v11 - 2) >> 1;
        v110 = *a3;
        v111 = v109;
        do
        {
          v112 = v111;
          if (v109 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = &v10[v113];
            v115 = *v114;
            if (2 * v112 + 2 >= v11)
            {
              v116 = *v110;
            }

            else
            {
              v116 = *v110;
              if (*(*v110 + 4 * v115) < *(*v110 + 4 * v114[1]))
              {
                v115 = v114[1];
                ++v114;
                v113 = 2 * v112 + 2;
              }
            }

            v117 = &v10[v112];
            v118 = *v117;
            if (*(v116 + 4 * v115) >= *(v116 + 4 * *v117))
            {
              do
              {
                v119 = v114;
                *v117 = v115;
                if (v109 < v113)
                {
                  break;
                }

                v120 = (2 * v113) | 1;
                v114 = &v10[v120];
                v113 = 2 * v113 + 2;
                v115 = *v114;
                if (v113 >= v11)
                {
                  v113 = v120;
                }

                else if (*(v116 + 4 * v115) >= *(v116 + 4 * v114[1]))
                {
                  v113 = v120;
                }

                else
                {
                  v115 = v114[1];
                  ++v114;
                }

                v117 = v119;
              }

              while (*(v116 + 4 * v115) >= *(v116 + 4 * v118));
              *v119 = v118;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        do
        {
          v121 = 0;
          v122 = *v10;
          v123 = *a3;
          v124 = v10;
          do
          {
            v125 = &v124[v121];
            v126 = v125 + 1;
            v127 = v125[1];
            result = 2 * v121;
            v128 = (2 * v121) | 1;
            v121 = 2 * v121 + 2;
            if (v121 >= v11)
            {
              v121 = v128;
            }

            else
            {
              v130 = v125[2];
              v129 = v125 + 2;
              result = v130;
              if (*(*v123 + 4 * v127) >= *(*v123 + 4 * v130))
              {
                v121 = v128;
              }

              else
              {
                v127 = result;
                v126 = v129;
              }
            }

            *v124 = v127;
            v124 = v126;
          }

          while (v121 <= ((v11 - 2) >> 1));
          if (v126 == --a2)
          {
            *v126 = v122;
          }

          else
          {
            *v126 = *a2;
            *a2 = v122;
            v131 = (v126 - v10 + 4) >> 2;
            v132 = v131 < 2;
            v133 = v131 - 2;
            if (!v132)
            {
              v134 = v133 >> 1;
              v135 = &v10[v134];
              v136 = *v135;
              v137 = *v126;
              v138 = *v123;
              if (*(v138 + 4 * v136) < *(v138 + 4 * *v126))
              {
                do
                {
                  v139 = v135;
                  *v126 = v136;
                  if (!v134)
                  {
                    break;
                  }

                  v134 = (v134 - 1) >> 1;
                  v135 = &v10[v134];
                  v136 = *v135;
                  v126 = v139;
                }

                while (*(v138 + 4 * v136) < *(v138 + 4 * v137));
                *v139 = v137;
              }
            }
          }

          v132 = v11-- <= 2;
        }

        while (!v132);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 4 * v17);
      if (v19 >= *(v14 + 4 * *v10))
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v23 = *v12;
          v24 = *v10;
          if (*(v14 + 4 * v23) < *(v14 + 4 * v24))
          {
            *v10 = v23;
            *v12 = v24;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v27 = *(a2 - 1);
        if (*(v14 + 4 * v27) < *(v14 + 4 * v18))
        {
          *v12 = v27;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v10[1];
      v31 = *(v14 + 4 * v29);
      v32 = *(a2 - 2);
      v33 = *(v14 + 4 * v32);
      if (v31 >= *(v14 + 4 * v30))
      {
        if (v33 < v31)
        {
          *v28 = v32;
          *(a2 - 2) = v29;
          v34 = *v28;
          v35 = v10[1];
          if (*(v14 + 4 * v34) < *(v14 + 4 * v35))
          {
            v10[1] = v34;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          v10[1] = v32;
          goto LABEL_39;
        }

        v10[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (*(v14 + 4 * v37) < *(v14 + 4 * v30))
        {
          *v28 = v37;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v40 = v12[1];
      v38 = v12 + 1;
      v39 = v40;
      v41 = v10[2];
      v42 = *(v14 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v14 + 4 * v43);
      if (v42 >= *(v14 + 4 * v41))
      {
        if (v44 < v42)
        {
          *v38 = v43;
          *(a2 - 3) = v39;
          v45 = *v38;
          v46 = v10[2];
          if (*(v14 + 4 * v45) < *(v14 + 4 * v46))
          {
            v10[2] = v45;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v44 < v42)
        {
          v10[2] = v43;
          goto LABEL_48;
        }

        v10[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (*(v14 + 4 * v47) < *(v14 + 4 * v41))
        {
          *v38 = v47;
LABEL_48:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = *(v14 + 4 * v48);
      v51 = *v38;
      v52 = *(v14 + 4 * *v38);
      if (v50 >= *(v14 + 4 * *v28))
      {
        if (v52 >= v50)
        {
          goto LABEL_56;
        }

        *v13 = v51;
        *v38 = v48;
        v38 = v13;
        LODWORD(v48) = v49;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v50)
      {
        *v28 = v48;
        *v13 = v49;
        v28 = v13;
        LODWORD(v48) = v51;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v49;
LABEL_56:
          v53 = *v10;
          *v10 = v48;
          *v13 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v38 = v49;
      goto LABEL_56;
    }

    v20 = *v10;
    v21 = *v13;
    v22 = *(v14 + 4 * v20);
    if (v22 >= *(v14 + 4 * *v13))
    {
      if (v16 < v22)
      {
        *v10 = v15;
        *(a2 - 1) = v20;
        v25 = *v10;
        v26 = *v13;
        if (*(v14 + 4 * v25) < *(v14 + 4 * v26))
        {
          *v13 = v25;
          *v10 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v22)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v21;
      goto LABEL_57;
    }

    *v13 = v20;
    *v10 = v21;
    v36 = *(a2 - 1);
    if (*(v14 + 4 * v36) < *(v14 + 4 * v21))
    {
      *v10 = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v10;
    if (a5)
    {
      v55 = *(v14 + 4 * v54);
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v10[++v56];
      }

      while (*(v14 + 4 * v57) < v55);
      v58 = &v10[v56];
      v59 = a2;
      if (v56 == 1)
      {
        v59 = a2;
        do
        {
          if (v58 >= v59)
          {
            break;
          }

          v61 = *--v59;
        }

        while (*(v14 + 4 * v61) >= v55);
      }

      else
      {
        do
        {
          v60 = *--v59;
        }

        while (*(v14 + 4 * v60) >= v55);
      }

      if (v58 >= v59)
      {
        v69 = v58 - 1;
      }

      else
      {
        v62 = *v59;
        v63 = v57;
        v64 = v58;
        v65 = v59;
        do
        {
          *v64 = v62;
          *v65 = v63;
          v66 = *(v14 + 4 * v54);
          do
          {
            v67 = v64[1];
            ++v64;
            v63 = v67;
          }

          while (*(v14 + 4 * v67) < v66);
          do
          {
            v68 = *--v65;
            v62 = v68;
          }

          while (*(v14 + 4 * v68) >= v66);
        }

        while (v64 < v65);
        v69 = v64 - 1;
      }

      if (v69 != v10)
      {
        *v10 = *v69;
      }

      *v69 = v54;
      if (v58 < v59)
      {
        goto LABEL_81;
      }

      v70 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *>(v10, v69, a3);
      v10 = v69 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *>(v69 + 1, a2, a3);
      if (result)
      {
        a2 = v69;
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *,false>(v9, v69, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v69 + 1;
      }
    }

    else
    {
      v55 = *(v14 + 4 * v54);
      if (*(v14 + 4 * *(v10 - 1)) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(v14 + 4 * *(a2 - 1)))
      {
        v72 = v10 + 1;
        do
        {
          v10 = v72;
          if (v72 >= a2)
          {
            break;
          }

          ++v72;
        }

        while (v55 >= *(v14 + 4 * *v10));
      }

      else
      {
        do
        {
          v71 = v10[1];
          ++v10;
        }

        while (v55 >= *(v14 + 4 * v71));
      }

      v73 = a2;
      if (v10 < a2)
      {
        v73 = a2;
        do
        {
          v74 = *--v73;
        }

        while (v55 < *(v14 + 4 * v74));
      }

      if (v10 < v73)
      {
        v75 = *v10;
        v76 = *v73;
        do
        {
          *v10 = v76;
          *v73 = v75;
          v77 = *(v14 + 4 * v54);
          do
          {
            v78 = v10[1];
            ++v10;
            v75 = v78;
          }

          while (v77 >= *(v14 + 4 * v78));
          do
          {
            v79 = *--v73;
            v76 = v79;
          }

          while (v77 < *(v14 + 4 * v79));
        }

        while (v10 < v73);
      }

      v80 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v80;
      }

      a5 = 0;
      *v80 = v54;
    }
  }

  v83 = *v10;
  v84 = v10[1];
  v85 = **a3;
  v86 = *(v85 + 4 * v84);
  v87 = *(a2 - 1);
  v88 = *(v85 + 4 * v87);
  if (v86 >= *(v85 + 4 * *v10))
  {
    if (v88 < v86)
    {
      v10[1] = v87;
      *(a2 - 1) = v84;
      v141 = *v10;
      v140 = v10[1];
      if (*(v85 + 4 * v140) < *(v85 + 4 * v141))
      {
        *v10 = v140;
        v10[1] = v141;
      }
    }
  }

  else
  {
    if (v88 >= v86)
    {
      *v10 = v84;
      v10[1] = v83;
      v146 = *(a2 - 1);
      if (*(v85 + 4 * v146) >= *(v85 + 4 * v83))
      {
        return result;
      }

      v10[1] = v146;
    }

    else
    {
      *v10 = v87;
    }

    *(a2 - 1) = v83;
  }

  return result;
}