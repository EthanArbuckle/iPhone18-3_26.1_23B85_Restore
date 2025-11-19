void mlx::core::distributed::mpi::anonymous namespace::mpi(mlx::core::distributed::mpi::_anonymous_namespace_ *this)
{
  {
    if (v1)
    {
    }
  }
}

void mlx::core::distributed::mpi::init(mlx::core::distributed::mpi *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  {
    v4 = off_27FA05AB8(0, 0);
    if (!v4)
    {
      if ((byte_27FA05BD8 & 1) == 0)
      {
        off_27FA05BE0(2, qword_27FA05B78, &qword_27FA05BC8);
        off_27FA05BE8(&qword_27FA05BC8);
        off_27FA05BE0(2, qword_27FA05B78, &qword_27FA05BD0);
        off_27FA05BE8(&qword_27FA05BD0);
        byte_27FA05BD8 = 1;
      }

      operator new();
    }
  }

  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot initialize MPI");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
}

void *mlx::core::distributed::mpi::anonymous namespace::MPIWrapper::MPIWrapper(mlx::core::distributed::mpi::_anonymous_namespace_::MPIWrapper *this)
{
  v16 = *MEMORY[0x277D85DE8];
  byte_27FA05BD8 = 0;
  result = dlopen("libmpi.dylib", 10);
  if (result)
  {
    v2 = dlsym(result, "MPI_Get_library_version");
    result = dlerror();
    if (!result)
    {
      v13 = 0;
      v2(__s, &v13);
      v3 = v13;
      if (v13 >= 8)
      {
        v9 = &__s[v13];
        v10 = __s;
        v11 = v13;
        do
        {
          if (v11 == 7)
          {
            break;
          }

          v12 = memchr(v10, 79, v11 - 7);
          if (!v12)
          {
            break;
          }

          if (*v12 == 0x49504D206E65704FLL)
          {
            if (v12 == v9 || v12 - __s == -1)
            {
              break;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            result = dlerror();
            if (result)
            {
              goto LABEL_5;
            }

            goto LABEL_6;
          }

          v10 = v12 + 1;
          v11 = v9 - v10;
        }

        while (v9 - v10 >= 8);
      }

      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "[mpi] MPI found but it does not appear to be Open MPI.", 54);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "MLX requires Open MPI but this is ", 34);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, __s, v3);
      std::ios_base::getloc((v6 + *(*v6 - 24)));
      v7 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      (v7->__vftable[2].~facet_0)(v7, 10);
      std::locale::~locale(&v14);
      std::ostream::put();
      result = std::ostream::flush();
    }

LABEL_5:
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25F851300](v13, a1);
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

  MEMORY[0x25F851310](v13);
  return a1;
}

void sub_25A233FE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25F851310](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25A233FC4);
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

void sub_25A234218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2799213F8, MEMORY[0x277D825F0]);
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

__int16 mlx::core::distributed::mpi::anonymous namespace::simple_sum<half>@<H0>(short float *a1@<X0>, short float *a2@<X1>, int *a3@<X2>)
{
  if (*a3 >= 1)
  {
    v3 = *a3 + 1;
    do
    {
      v4 = *a1++;
      *&result = v4 + *a2;
      *a2++ = *&result;
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

unsigned __int16 *mlx::core::distributed::mpi::anonymous namespace::simple_sum<mlx::core::_MLX_BFloat16>(unsigned __int16 *result, _WORD *a2, int *a3)
{
  if (*a3 >= 1)
  {
    v3 = *a3 + 1;
    do
    {
      v4 = COERCE_FLOAT(*result << 16) + COERCE_FLOAT(*a2 << 16);
      *a2++ = (LODWORD(v4) + (HIWORD(LODWORD(v4)) & 1u) + 0x7FFF) >> 16;
      ++result;
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

short float *mlx::core::distributed::mpi::anonymous namespace::simple_max<half>(short float *result, short float *a2, int *a3)
{
  if (*a3 >= 1)
  {
    v3 = *a3 + 1;
    do
    {
      v4 = *a2;
      v5 = *result++;
      v6 = v5;
      if (*a2 < v5)
      {
        v4 = v6;
      }

      *a2++ = v4;
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

unsigned __int16 *mlx::core::distributed::mpi::anonymous namespace::simple_max<mlx::core::_MLX_BFloat16>(unsigned __int16 *result, _WORD *a2, int *a3)
{
  if (*a3 >= 1)
  {
    v3 = *a3 + 1;
    do
    {
      v4 = *a2;
      v6 = *result++;
      v5 = v6;
      if (COERCE_FLOAT(v4 << 16) < COERCE_FLOAT(v6 << 16))
      {
        LOWORD(v4) = v5;
      }

      *a2++ = v4;
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

float *mlx::core::distributed::mpi::anonymous namespace::simple_max<mlx::core::complex64_t>(float *result, float *a2, int *a3)
{
  if (*a3 >= 1)
  {
    v3 = *a3 + 1;
    v4 = result + 1;
    do
    {
      v5 = *(v4 - 1);
      if (v5 > *a2 || (v6 = a2, v5 == *a2) && (v6 = a2, *v4 > a2[1]))
      {
        v6 = result;
      }

      *a2 = *v6;
      a2 += 2;
      result += 2;
      --v3;
      v4 += 2;
    }

    while (v3 > 1);
  }

  return result;
}

short float *mlx::core::distributed::mpi::anonymous namespace::simple_min<half>(short float *result, short float *a2, int *a3)
{
  if (*a3 >= 1)
  {
    v3 = *a3 + 1;
    do
    {
      v4 = *result++;
      v5 = v4;
      if (v4 >= *a2)
      {
        v5 = *a2;
      }

      *a2++ = v5;
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

unsigned __int16 *mlx::core::distributed::mpi::anonymous namespace::simple_min<mlx::core::_MLX_BFloat16>(unsigned __int16 *result, unsigned __int16 *a2, int *a3)
{
  if (*a3 >= 1)
  {
    v3 = *a3 + 1;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (COERCE_FLOAT(v5 << 16) >= COERCE_FLOAT(*a2 << 16))
      {
        v4 = *a2;
      }

      *a2++ = v4;
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

float *mlx::core::distributed::mpi::anonymous namespace::simple_min<mlx::core::complex64_t>(float *result, float *a2, int *a3)
{
  if (*a3 >= 1)
  {
    v3 = *a3 + 1;
    v4 = result + 1;
    do
    {
      v5 = *(v4 - 1);
      if (*a2 > v5 || (v6 = a2, *a2 == v5) && (v6 = a2, a2[1] > *v4))
      {
        v6 = result;
      }

      *a2 = *v6;
      a2 += 2;
      result += 2;
      --v3;
      v4 += 2;
    }

    while (v3 > 1);
  }

  return result;
}

void std::__shared_ptr_emplace<mlx::core::distributed::mpi::MPIGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE2E68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void mlx::core::distributed::mpi::MPIGroup::~MPIGroup(mlx::core::distributed::mpi::MPIGroup *this)
{
  mlx::core::distributed::mpi::MPIGroup::~MPIGroup(this);

  JUMPOUT(0x25F851760);
}

{
  *this = &unk_286BE2EB8;
  if (*(this + 16) == 1)
  {
    {
      off_27FA05AC0();
    }
  }

  else
  {
    off_27FA05AF0(this + 8);
  }
}

mlx::core::distributed::mpi::_anonymous_namespace_ *mlx::core::distributed::mpi::MPIGroup::rank(mlx::core::distributed::mpi::MPIGroup *this)
{
  v3 = this + 20;
  result = *(this + 5);
  if ((result & 0x80000000) != 0)
  {
    off_27FA05AC8(*(this + 1), v3);
    return *(this + 5);
  }

  return result;
}

mlx::core::distributed::mpi::_anonymous_namespace_ *mlx::core::distributed::mpi::MPIGroup::size(mlx::core::distributed::mpi::MPIGroup *this)
{
  v3 = this + 24;
  result = *(this + 6);
  if ((result & 0x80000000) != 0)
  {
    off_27FA05AD0(*(this + 1), v3);
    return *(this + 6);
  }

  return result;
}

void mlx::core::distributed::mpi::MPIGroup::split(mlx::core::distributed::mpi::MPIGroup *this, uint64_t a2, mlx::core::distributed::mpi::MPIGroup *a3)
{
  v3 = a3;
  v5 = this;
  if ((a3 & 0x80000000) != 0)
  {
    this = (*(*this + 16))(this);
    v3 = this;
  }

  v7 = 0;
  if (!off_27FA05AE8(*(v5 + 1), a2, v3, &v7))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "MPI could not split this group");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::mpi::MPIGroup::all_sum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v10 = *a2;
  v11 = *(*a2 + 152);
  if (v11 == *(*a3 + 152))
  {
    v11 = 1;
  }

  v19 = *(*a3 + 152);
  v20 = v11;
  v18 = *(v10 + 48);
  v12 = *(*a2 + 56);
  v13 = 96;
  if (v12 == 12)
  {
    v13 = 112;
  }

  v14 = v12 == 9;
  v15 = 104;
  if (!v14)
  {
    v15 = v13;
  }

  mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(command_encoder, &qword_27FA05AD8, &v20, &v19, &v18, &v17, &v16, (a1 + 8));
}

void mlx::core::distributed::mpi::MPIGroup::all_gather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v9 = *a2;
  v17 = *(*a2 + 152);
  v16 = *(v9 + 48);
  v14 = *(*a3 + 152);
  v15 = v11;
  v13 = *(*a2 + 48);
  mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(command_encoder, &qword_27FA05AE0, &v17, &v16, &v15, &v14, &v13, &v12, (a1 + 8));
}

void mlx::core::distributed::mpi::MPIGroup::send(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v14 = a3;
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v8 = *(*a2 + 152);
  v12 = *(*a2 + 48);
  v13 = v8;
  v10 = 0;
  mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(command_encoder, &qword_27FA05AF8, &v13, &v12, &v11, &v14, &v10, (a1 + 8));
}

void mlx::core::distributed::mpi::MPIGroup::recv(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v9 = *(*a2 + 48);
  v10[0] = *(*a2 + 152);
  v10[1] = v9;
  v11 = a3;
  v12 = *(a1 + 8);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, v10);
}

void mlx::core::distributed::mpi::MPIGroup::all_max(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v10 = *a2;
  v11 = *(*a2 + 152);
  if (v11 == *(*a3 + 152))
  {
    v11 = 1;
  }

  v17 = *(*a3 + 152);
  v18 = v11;
  v16 = *(v10 + 48);
  v12 = *(*a2 + 56) - 9;
  if (v12 > 4)
  {
    v13 = &qword_27FA05B28;
  }

  else
  {
    v13 = *(&off_279921450 + v12);
  }

  v14 = *v13;
  mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(command_encoder, &qword_27FA05AD8, &v18, &v17, &v16, &v15, &v14, (a1 + 8));
}

void mlx::core::distributed::mpi::MPIGroup::all_min(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v10 = *a2;
  v11 = *(*a2 + 152);
  if (v11 == *(*a3 + 152))
  {
    v11 = 1;
  }

  v17 = *(*a3 + 152);
  v18 = v11;
  v16 = *(v10 + 48);
  v12 = *(*a2 + 56) - 9;
  if (v12 > 4)
  {
    v13 = &qword_27FA05B48;
  }

  else
  {
    v13 = *(&off_279921478 + v12);
  }

  v14 = *v13;
  mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(command_encoder, &qword_27FA05AD8, &v18, &v17, &v16, &v15, &v14, (a1 + 8));
}

void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(mlx::core::scheduler *a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v9;
  v10 = *a3;
  *&v18 = *a2;
  *(&v18 + 1) = v10;
  v11 = *a5;
  *&v19 = *a4;
  *(&v19 + 1) = v11;
  v12 = *a7;
  *&v20 = *a6;
  *(&v20 + 1) = v12;
  v21 = *a8;
  v13 = mlx::core::scheduler::scheduler(a1);
  if (v9)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>>(*(v13[1] + 8 * *a1), &v18);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v13);
  *&v16[0] = *a1;
  DWORD2(v16[0]) = *(a1 + 2);
  v16[1] = v18;
  v16[2] = v19;
  v16[3] = v20;
  v17 = v21;
  v15 = mlx::core::scheduler::scheduler(v14);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1}>(*(v15[1] + 8 * *a1), v16);
}

uint64_t mlx::core::distributed::mpi::anonymous namespace::MPIWrapper::datatype(uint64_t result)
{
  switch(*(*result + 56))
  {
    case 0:
      result = qword_27FA05B68;
      break;
    case 1:
      result = qword_27FA05B78;
      break;
    case 2:
      result = qword_27FA05B88;
      break;
    case 3:
      result = qword_27FA05B98;
      break;
    case 4:
      result = qword_27FA05BA8;
      break;
    case 5:
      result = qword_27FA05B70;
      break;
    case 6:
      result = qword_27FA05B80;
      break;
    case 7:
      result = qword_27FA05B90;
      break;
    case 8:
      result = qword_27FA05BA0;
      break;
    case 9:
      result = qword_27FA05BC8;
      break;
    case 0xA:
      result = qword_27FA05BB0;
      break;
    case 0xB:
      result = qword_27FA05BB8;
      break;
    case 0xC:
      result = qword_27FA05BD0;
      break;
    case 0xD:
      result = qword_27FA05BC0;
      break;
    default:
      return result;
  }

  return result;
}

void mlx::core::scheduler::Scheduler::notify_new_task(uint64_t a1)
{
  std::mutex::lock((a1 + 144));
  ++*a1;
  std::mutex::unlock((a1 + 144));

  std::condition_variable::notify_all((a1 + 96));
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A235014(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v11 = a2[2];
  v12 = a2[3];
  v13 = *(a2 + 8);
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 24) = 0;
  operator new();
}

void *std::deque<std::function<void ()(void)>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::function<void ()(void)> *,std::allocator<std::function<void ()(void)> *>>::emplace_back<std::function<void ()(void)> *&>(a1, &v10);
}

void sub_25A23530C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::function<void ()(void)> *,std::allocator<std::function<void ()(void)> *>>::emplace_back<std::function<void ()(void)> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(result, v11);
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
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::function<void ()(void)> *,std::allocator<std::function<void ()(void)> *>>::emplace_front<std::function<void ()(void)> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<std::function<void ()(void)> *,std::allocator<std::function<void ()(void)> *> &>::emplace_back<std::function<void ()(void)> *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(result[4], v11);
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
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::function<void ()(void)> *,std::allocator<std::function<void ()(void)> *> &>::emplace_front<std::function<void ()(void)> *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE2F48;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = (*(a1 + 24))(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>(int (*&)(void const*,void *,int,void *,void *,void *) &&,void const*,void *,unsigned long,void *,void *,void *&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::scheduler::Scheduler::notify_task_completion(uint64_t a1)
{
  std::mutex::lock((a1 + 144));
  --*a1;
  std::mutex::unlock((a1 + 144));

  std::condition_variable::notify_all((a1 + 96));
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A235A90(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 6);
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>,std::allocator<std::__bind<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE2FD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>,std::allocator<std::__bind<int (*&)(void const*,void *,int,void *,void *,void *),void const*,void *,unsigned long,void *,void *,void *&>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(mlx::core::scheduler *a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7, void *a8, uint64_t *a9)
{
  v10 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v10;
  v11 = *a3;
  *&v19 = *a2;
  *(&v19 + 1) = v11;
  v12 = *a5;
  *&v20 = *a4;
  *(&v20 + 1) = v12;
  v13 = *a7;
  *&v21 = *a6;
  *(&v21 + 1) = v13;
  v14 = *a9;
  *&v22 = *a8;
  *(&v22 + 1) = v14;
  v15 = mlx::core::scheduler::scheduler(a1);
  if (v10)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>>(*(v15[1] + 8 * *a1), &v19);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v15);
  *&v18[0] = *a1;
  DWORD2(v18[0]) = *(a1 + 2);
  v18[1] = v19;
  v18[2] = v20;
  v18[3] = v21;
  v18[4] = v22;
  v17 = mlx::core::scheduler::scheduler(v16);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1}>(*(v17[1] + 8 * *a1), v18);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A235EC0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE3070;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = (*(a1 + 24))(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>(int (*&)(void const*,int,void *,void *,int,void *,void *) &&,void const*,unsigned long,void *,void *,unsigned long,void *,void *&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A236250(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>,std::allocator<std::__bind<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE30F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>,std::allocator<std::__bind<int (*&)(void const*,int,void *,void *,int,void *,void *),void const*,unsigned long,void *,void *,unsigned long,void *,void *&>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(mlx::core::scheduler *a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5, _DWORD *a6, _DWORD *a7, void *a8)
{
  v9 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v9;
  v10 = *a3;
  *&v16 = *a2;
  *(&v16 + 1) = v10;
  v11 = *a5;
  *&v17 = *a4;
  *(&v17 + 1) = v11;
  LODWORD(v11) = *a7;
  LODWORD(v18) = *a6;
  DWORD1(v18) = v11;
  *(&v18 + 1) = *a8;
  v12 = mlx::core::scheduler::scheduler(a1);
  if (v9)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>>(*(v12[1] + 8 * *a1), &v16);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v12);
  *&v15[0] = *a1;
  DWORD2(v15[0]) = *(a1 + 2);
  v15[1] = v16;
  v15[2] = v17;
  v15[3] = v18;
  v14 = mlx::core::scheduler::scheduler(v13);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1}>(*(v14[1] + 8 * *a1), v15);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A23666C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE3188;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = (*(a1 + 24))(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>(int (*&)(void const*,int,void *,int,int,void *) &&,void const*,unsigned long,void *,int &,int,void *&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A2369DC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>,std::allocator<std::__bind<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE3208;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>,std::allocator<std::__bind<int (*&)(void const*,int,void *,int,int,void *),void const*,unsigned long,void *,int &,int,void *&>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = *(a2 + 16);
  v10 = *a2;
  *v11 = v4;
  *&v11[16] = *(a2 + 32);
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v9[0] = *v11;
  *(v9 + 9) = *&v11[9];
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A236DF4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  *(v8 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed3mpi8MPIGroup4recvERNS3_5arrayEiNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE32A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed3mpi8MPIGroup4recvERNS3_5arrayEiNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v2 = off_27FA05B00(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), 0xFFFFFFFFLL, *(a1 + 56), v4);
  v3 = mlx::core::scheduler::scheduler(v2);
  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed3mpi8MPIGroup4recvERNS3_5arrayEiNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A2371A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE3320;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<mlx::core::distributed::mpi::MPIGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL mlx::core::linalg::check_cpu_stream(uint64_t a1, const void **a2)
{
  v8.__r_.__value_.__r.__words[0] = mlx::core::to_stream(*a1, *(a1 + 8));
  LODWORD(v8.__r_.__value_.__r.__words[1]) = v3;
  v9 = 1;
  result = mlx::core::operator==(v8.__r_.__value_.__r.__words + 1, &v9);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v6 = a2;
    v7 = exception;
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" This op is not yet supported on the GPU. Explicitly pass a CPU stream to run it.", v6, &v8.__r_.__value_.__l.__data_);
    std::logic_error::logic_error(v7, &v8);
    v7->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v7, off_279921408, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_25A23758C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t mlx::core::linalg::check_float(uint64_t result, uint64_t a2)
{
  v13 = result;
  if ((result & 0xFFFFFFFE) != 0xA)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v12);
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

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " Arrays must have type float32 or float64. ", 43);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Received array with type ", 25);
    v9 = mlx::core::operator<<(v8, &v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v12, &v11);
    std::logic_error::logic_error(exception, &v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_25A23778C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_25A237918(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](v1);
  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](a1 + 112);
  return a1;
}

uint64_t mlx::core::linalg::at_least_float(unsigned int *a1)
{
  if (mlx::core::issubdtype(a1, &mlx::core::inexact))
  {
    v2 = *a1 | (*(a1 + 4) << 32);
    v3 = (*(a1 + 5) << 40) | (*(a1 + 7) << 56);
  }

  else
  {
    v2 = mlx::core::promote_types(a1, &mlx::core::float32);
    v3 = 0;
  }

  return v3 | v2 & 0xFFFFFFFFFFLL;
}

void mlx::core::linalg::norm(uint64_t **a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 8) - *a2 < 9uLL)
    {

      mlx::core::linalg::l2_norm(a1, a2, a3, a4, a5);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[linalg::norm] Received too many axes for norm.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::flatten(a1, a4, a5, v15);
  v9 = 0;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v10, &v9, v10, 1uLL);
  *__p = *v10;
  v13 = v11;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  v14 = 1;
  mlx::core::linalg::norm(v15, __p, a3, a4, a5);
  if (v14 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  mlx::core::array::~array(v15);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

void mlx::core::linalg::l2_norm(uint64_t **a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v8 = (*a1)[7];
  v9 = v8;
  v10 = BYTE4(v8);
  if (mlx::core::issubdtype(&v9, &mlx::core::complexfloating))
  {
    mlx::core::abs(a1, a4, a5);
  }

  mlx::core::square(a1, a4, a5);
}

void sub_25A237EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::linalg::norm(uint64_t **a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5, double a6)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 24))
  {
    if (&v22 == a2)
    {
      begin = 0;
      end = 0;
    }

    else
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v22, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      begin = v22.__begin_;
      end = v22.__end_;
    }
  }

  else
  {
    std::vector<int>::resize(&v22, ((*a1)[1] - **a1) >> 2);
    begin = v22.__begin_;
    end = v22.__end_;
    if (v22.__begin_ == v22.__end_)
    {
      end = v22.__begin_;
    }

    else
    {
      v13 = 0;
      v14 = (v22.__end_ - v22.__begin_ - 4) >> 2;
      v15 = vdupq_n_s64(v14);
      v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v17 = v22.__begin_ + 2;
      do
      {
        v18 = vdupq_n_s64(v13);
        v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_25A99B0D0)));
        if (vuzp1_s16(v19, *v15.i8).u8[0])
        {
          *(v17 - 2) = v13;
        }

        if (vuzp1_s16(v19, *&v15).i8[2])
        {
          *(v17 - 1) = v13 + 1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_25A99B0C0)))).i32[1])
        {
          *v17 = v13 + 2;
          v17[1] = v13 + 3;
        }

        v13 += 4;
        v17 += 4;
      }

      while (v16 != v13);
    }
  }

  v20 = end - begin;
  if (v20 != 2)
  {
    if (v20 == 1)
    {
      mlx::core::linalg::vector_norm(a1, &v22, a3, a4, a5, a6);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[linalg::norm] Received too many axes for norm.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::linalg::matrix_norm(a1, &v22, a6, a3, a4, a5);
}

void sub_25A238154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  __cxa_free_exception(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void mlx::core::linalg::vector_norm(uint64_t **a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5, double a6)
{
  v12 = (*a1)[7];
  v13 = v12;
  v14 = BYTE4(v12);
  mlx::core::linalg::at_least_float(&v13);
  if (a6 == 0.0)
  {
    mlx::core::TypeToDtype<int>::operator mlx::core::Dtype();
    mlx::core::array::array<int>();
  }

  if (a6 == 1.0)
  {
    mlx::core::abs(a1, a4, a5);
  }

  if (a6 == 2.0)
  {
    mlx::core::linalg::l2_norm(a1, a2, a3, a4, a5);
  }

  if (a6 == INFINITY)
  {
    mlx::core::abs(a1, a4, a5);
  }

  if (a6 == -INFINITY)
  {
    mlx::core::abs(a1, a4, a5);
  }

  mlx::core::abs(a1, a4, a5);
}

void sub_25A2384B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a23);
  mlx::core::array::~array(&a21);
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::linalg::matrix_norm(uint64_t **a1, unsigned int **a2, double a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = (*a1)[7];
  LODWORD(__p[0]) = v11;
  BYTE4(__p[0]) = BYTE4(v11);
  mlx::core::linalg::at_least_float(__p);
  v12 = *a2;
  v13 = **a2;
  v14 = *(v12 + 4);
  if (a3 == -1.0)
  {
    mlx::core::abs(a1, a5, a6);
  }

  if (a3 == 1.0)
  {
    mlx::core::abs(a1, a5, a6);
  }

  if (a3 == INFINITY)
  {
    mlx::core::abs(a1, a5, a6);
  }

  if (a3 == -INFINITY)
  {
    mlx::core::abs(a1, a5, a6);
  }

  if (a3 == 2.0 || a3 == -2.0)
  {
    if ((v13 & 0x80000000) != 0)
    {
      v13 = v13 + (((*a1)[1] - **a1) >> 2);
    }

    if ((v14 & 0x80000000) != 0)
    {
      v14 = v14 + (((*a1)[1] - **a1) >> 2);
    }

    if (v13 <= v14)
    {
      mlx::core::moveaxis(a1, v14, 0xFFFFFFFFLL, a5, a6, __p);
      mlx::core::moveaxis(__p, v13, 4294967294, a5, a6, &v18);
    }

    else
    {
      mlx::core::moveaxis(a1, v13, 0xFFFFFFFFLL, a5, a6, __p);
      mlx::core::moveaxis(__p, v14, 0xFFFFFFFFLL, a5, a6, &v18);
    }

    mlx::core::array::~array(__p);
    mlx::core::linalg::svd(&v18, 0, a5, a6);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[linalg::norm] Invalid ord ", 27);
  v16 = MEMORY[0x25F851340](v15, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " for matrix norm.", 17);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](__p, &v18);
  std::logic_error::logic_error(exception, &v18);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A238B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void mlx::core::linalg::norm(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, mlx::core *a5@<X4>, uint64_t a6@<X5>, uint64_t **a7@<X8>)
{
  memset(&v33, 0, sizeof(v33));
  if (*(a3 + 24))
  {
    if (&v33 == a3)
    {
      begin = 0;
      end = 0;
    }

    else
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v33, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      begin = v33.__begin_;
      end = v33.__end_;
    }
  }

  else
  {
    std::vector<int>::resize(&v33, ((*a1)[1] - **a1) >> 2);
    begin = v33.__begin_;
    end = v33.__end_;
    if (v33.__begin_ == v33.__end_)
    {
      end = v33.__begin_;
    }

    else
    {
      v15 = 0;
      v16 = (v33.__end_ - v33.__begin_ - 4) >> 2;
      v17 = vdupq_n_s64(v16);
      v18 = (v16 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v19 = v33.__begin_ + 2;
      do
      {
        v20 = vdupq_n_s64(v15);
        v21 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v20, xmmword_25A99B0D0)));
        if (vuzp1_s16(v21, *v17.i8).u8[0])
        {
          *(v19 - 2) = v15;
        }

        if (vuzp1_s16(v21, *&v17).i8[2])
        {
          *(v19 - 1) = v15 + 1;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v20, xmmword_25A99B0C0)))).i32[1])
        {
          *v19 = v15 + 2;
          v19[1] = v15 + 3;
        }

        v15 += 4;
        v19 += 4;
      }

      while (v18 != v15);
    }
  }

  if (end - begin == 8)
  {
    mlx::core::linalg::matrix_norm(a1, a2, &v33, a4, a5, a6, a7);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v32);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "[linalg::norm] Norm '", 21);
  v23 = *(a2 + 23);
  if (v23 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = *(a2 + 8);
  }

  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "' only supported for matrices,", 30);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " but received ", 14);
  v29 = MEMORY[0x25F851380](v28, v33.__end_ - v33.__begin_);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " axis/axes.", 11);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v32, &v31);
  std::logic_error::logic_error(exception, &v31);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A238F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      v20 = *(v18 - 88);
      if (v20)
      {
        *(v18 - 80) = v20;
        operator delete(v20);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void mlx::core::linalg::matrix_norm(uint64_t **a1@<X0>, unsigned __int16 *a2@<X1>, unsigned int **a3@<X2>, uint64_t a4@<X3>, mlx::core *a5@<X4>, uint64_t a6@<X5>, uint64_t **a7@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 1) != 1 || **a2 != 102)
    {
      if (*(a2 + 1) != 3 || (**a2 == 29286 ? (v14 = *(*a2 + 2) == 111) : (v14 = 0), !v14))
      {
        if (*(a2 + 1) != 3)
        {
          goto LABEL_36;
        }

        v13 = *a2;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v11 = *(a2 + 23);
    if (v11 == 1)
    {
      if (*a2 != 102)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_36;
      }

      v12 = *a2 == 29286 && *(a2 + 2) == 111;
      v13 = a2;
      if (!v12)
      {
LABEL_19:
        v15 = *v13;
        v16 = *(v13 + 2);
        if (v15 == 30062 && v16 == 99)
        {
          v18 = **a3;
          if ((v18 & 0x80000000) != 0)
          {
            v18 = v18 + (((*a1)[1] - **a1) >> 2);
          }

          v19 = (*a3)[1];
          if ((v19 & 0x80000000) != 0)
          {
            v19 = v19 + (((*a1)[1] - **a1) >> 2);
          }

          if (v18 <= v19)
          {
            mlx::core::moveaxis(a1, v19, 0xFFFFFFFFLL, a5, a6, &__p);
            mlx::core::moveaxis(&__p, v18, 4294967294, a5, a6, a7);
          }

          else
          {
            mlx::core::moveaxis(a1, v18, 0xFFFFFFFFLL, a5, a6, &__p);
            mlx::core::moveaxis(&__p, v19, 0xFFFFFFFFLL, a5, a6, a7);
          }

          mlx::core::array::~array(&__p);
          mlx::core::linalg::svd(a7, 0, a5, a6);
        }

LABEL_36:
        std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "[linalg::norm] Invalid ord value '", 34);
        v22 = *(a2 + 23);
        if (v22 >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        if (v22 >= 0)
        {
          v24 = *(a2 + 23);
        }

        else
        {
          v24 = *(a2 + 1);
        }

        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "' for matrix norm.", 18);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](&__p, &v28);
        std::logic_error::logic_error(exception, &v28);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  mlx::core::linalg::l2_norm(a1, a3, a4, a5, a6);
}

void sub_25A2393A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (*(v13 - 89) < 0)
  {
    operator delete(*(v13 - 112));
    if ((v12 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v12)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v11);
  goto LABEL_6;
}

void mlx::core::linalg::qr(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v36[27] = *MEMORY[0x277D85DE8];
  v26[0] = a2;
  v26[1] = a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "[linalg::qr]");
  mlx::core::linalg::check_cpu_stream(v26, &__p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  v6 = (*a1)[7];
  std::string::basic_string[abi:ne200100]<0>(&__p, "[linalg::qr]");
  mlx::core::linalg::check_float(v6 & 0xFFFFFFFFFFLL, &__p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  v7 = *a1;
  if (((*a1)[1] - **a1) > 4)
  {
    v8 = (*a1)[1];
    v10 = *(v8 - 8);
    v9 = *(v8 - 4);
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    memset(&v25, 0, sizeof(v25));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, *v7, v7[1], (v7[1] - *v7) >> 2);
    *(v25.__r_.__value_.__l.__size_ - 4) = v11;
    v12 = *a1;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, *v12, v12[1], (v12[1] - *v12) >> 2);
    v14 = v22;
    v13 = v23;
    *(v23 - 8) = v11;
    __p = *&v25.__r_.__value_.__l.__data_;
    v15 = v25.__r_.__value_.__r.__words[2];
    memset(&v25, 0, sizeof(v25));
    v32 = v15;
    v33 = v14;
    v34 = v13;
    v35 = v24;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    memset(v21, 0, sizeof(v21));
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v21, &__p, v36, 2uLL);
    v16 = (*a1)[7];
    v27 = v16;
    v28 = BYTE4(v16);
    v29 = v16;
    v30 = BYTE4(v16);
    memset(v20, 0, sizeof(v20));
    std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype const*,mlx::core::Dtype const*>(v20, &v27, &__p, 2uLL);
    mlx::core::to_stream(a2, a3);
    operator new();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "[linalg::qr] Arrays must have >= 2 dimensions. Received array with ", 67);
  v18 = MEMORY[0x25F851380](v17, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " dimensions.", 12);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](&__p, &v25);
  std::logic_error::logic_error(exception, &v25);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A23988C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v48 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a42);
      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v47);
  goto LABEL_6;
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

uint64_t mlx::core::array::shape(uint64_t **this, int a2)
{
  v2 = **this;
  v3 = ((*this)[1] - v2) >> 2;
  v4 = a2;
  if (a2 < 0)
  {
    v4 = v3 + a2;
  }

  if (v3 <= v4)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 4 * v4);
}

void mlx::core::linalg::svd(uint64_t **a1, char a2, mlx::core *a3, uint64_t a4)
{
  v51[24] = *MEMORY[0x277D85DE8];
  v37[0] = a3;
  v37[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::svd]");
  mlx::core::linalg::check_cpu_stream(v37, __p);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*a1)[7];
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::svd]");
  mlx::core::linalg::check_float(v8 & 0xFFFFFFFFFFLL, __p);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *a1;
  v10 = **a1;
  v11 = ((*a1)[1] - v10) >> 2;
  v12 = v11 - 1;
  if (v11 > 1)
  {
    v13 = v11 - 2;
    v14 = *(v10 + 4 * (v11 - 2));
    v15 = *(v10 + 4 * v12);
    memset(&v36, 0, sizeof(v36));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v36, *v9, v9[1], (v9[1] - *v9) >> 2);
    v16 = v36.__r_.__value_.__r.__words[0];
    v17 = v36.__r_.__value_.__l.__size_ - 4;
    v36.__r_.__value_.__l.__size_ -= 4;
    if (v15 >= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v15;
    }

    *(v36.__r_.__value_.__r.__words[0] + 4 * v13) = v18;
    if (a2)
    {
      v19 = *a1;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v44, *v19, v19[1], (v19[1] - *v19) >> 2);
      v20 = v44;
      *(v44 + 4 * v13) = v14;
      *(v20 + 4 * v12) = v14;
      v21 = *a1;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, *v21, v21[1], (v21[1] - *v21) >> 2);
      v22 = v30;
      *(v30 + v13) = v15;
      v22[v12] = v15;
      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v44, v45, (v45 - v44) >> 2);
      memset(v49, 0, sizeof(v49));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v49, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_, (v36.__r_.__value_.__l.__size_ - v36.__r_.__value_.__r.__words[0]) >> 2);
      memset(v50, 0, sizeof(v50));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v50, v30, v31, (v31 - v30) >> 2);
      memset(v29, 0, sizeof(v29));
      std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v29, __p, v51, 3uLL);
      v23 = (*a1)[7];
      v38 = v23;
      v39 = BYTE4(v23);
      v40 = v23;
      v41 = BYTE4(v23);
      v42 = v23;
      v43 = BYTE4(v23);
      memset(v28, 0, sizeof(v28));
      std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype const*,mlx::core::Dtype const*>(v28, &v38, &v44, 3uLL);
      mlx::core::to_stream(a3, a4);
      operator new();
    }

    v33 = v16;
    v34 = v17;
    v35 = v36.__r_.__value_.__r.__words[2];
    memset(&v36, 0, sizeof(v36));
    v24 = (*a1)[7];
    mlx::core::to_stream(a3, a4);
    operator new();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[linalg::svd] Input array must have >= 2 dimensions. Received array with ", 73);
  v26 = MEMORY[0x25F851380](v25, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " dimensions.", 12);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](__p, &v36);
  std::logic_error::logic_error(exception, &v36);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A23A060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((v54 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a48);
      _Unwind_Resume(a1);
    }
  }

  else if (!v54)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v53);
  goto LABEL_6;
}

void mlx::core::linalg::inv_impl(uint64_t **a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v18[0] = a4;
  v18[1] = a5;
  std::string::basic_string[abi:ne200100]<0>(&__p, "[linalg::inv]");
  mlx::core::linalg::check_cpu_stream(v18, &__p);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v8 = (*a1)[7];
  std::string::basic_string[abi:ne200100]<0>(&__p, "[linalg::inv]");
  mlx::core::linalg::check_float(v8 & 0xFFFFFFFFFFLL, &__p);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v9 = **a1;
  v10 = (*a1)[1];
  if ((v10 - v9) > 4)
  {
    if (*(v10 - 4) == *(v10 - 8))
    {
      memset(v16, 0, sizeof(v16));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v16, v9, v10, (v10 - v9) >> 2);
      v11 = (*a1)[7];
      mlx::core::to_stream(a4, a5);
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[linalg::inv] Inverses are only defined for square matrices.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "[linalg::inv] Arrays must have >= 2 dimensions. Received array with ", 68);
  v13 = MEMORY[0x25F851380](v12, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " dimensions.", 12);
  v14 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](&__p, &v17);
  std::logic_error::logic_error(v14, &v17);
  v14->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v14, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A23A530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a26);
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

void mlx::core::linalg::cholesky(uint64_t **a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v17[0] = a3;
  v17[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(&__p, "[linalg::cholesky]");
  mlx::core::linalg::check_cpu_stream(v17, &__p);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  v7 = (*a1)[7];
  std::string::basic_string[abi:ne200100]<0>(&__p, "[linalg::cholesky]");
  mlx::core::linalg::check_float(v7 & 0xFFFFFFFFFFLL, &__p);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  v8 = **a1;
  v9 = (*a1)[1];
  if ((v9 - v8) > 4)
  {
    if (*(v9 - 4) == *(v9 - 8))
    {
      memset(v15, 0, sizeof(v15));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v15, v8, v9, (v9 - v8) >> 2);
      v10 = (*a1)[7];
      mlx::core::to_stream(a3, a4);
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[linalg::cholesky] Cholesky decomposition is only defined for square matrices.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "[linalg::cholesky] Arrays must have >= 2 dimensions. Received array with ", 73);
  v12 = MEMORY[0x25F851380](v11, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " dimensions.", 12);
  v13 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](&__p, &v16);
  std::logic_error::logic_error(v13, &v16);
  v13->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v13, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A23A91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a26);
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

void mlx::core::linalg::pinv(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v14[0] = a2;
  v14[1] = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::pinv]");
  mlx::core::linalg::check_cpu_stream(v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = (*a1)[7];
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::pinv]");
  mlx::core::linalg::check_float(v6 & 0xFFFFFFFFFFLL, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (((*a1)[1] - **a1) > 4)
  {
    *((*a1)[1] - 4);
    *((*a1)[1] - 8);
    mlx::core::linalg::svd(a1, 1, a2, a3);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[linalg::pinv] Arrays must have >= 2 dimensions. Received array ", 64);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "with ", 5);
  v9 = MEMORY[0x25F851380](v8, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " dimensions.", 12);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](__p, &v11);
  std::logic_error::logic_error(exception, &v11);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A23AF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48)
{
  if (a47 < 0)
  {
    operator delete(__p);
    if ((v49 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a48);
      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v48);
  goto LABEL_6;
}

void sub_25A23B140(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x25A23B128);
}

void mlx::core::linalg::cholesky_inv(uint64_t **a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::cholesky_inv]");
  mlx::core::linalg::check_cpu_stream(v16, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*a1)[7];
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::cholesky_inv]");
  mlx::core::linalg::check_float(v8 & 0xFFFFFFFFFFLL, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (((*a1)[1] - **a1) > 4)
  {
    if (*((*a1)[1] - 4) == *((*a1)[1] - 8))
    {
      mlx::core::linalg::inv_impl(a1, 1, a2, a3, a4);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[linalg::cholesky_inv] Cholesky inverse is only defined for square matrices.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[linalg::cholesky_inv] Arrays must have >= 2 dimensions. Received array with ", 77);
  v10 = MEMORY[0x25F851380](v9, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " dimensions.", 12);
  v11 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](__p, &v13);
  std::logic_error::logic_error(v11, &v13);
  v11->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v11, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A23B3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void mlx::core::linalg::cross(uint64_t **this, uint64_t **a2, int a3, mlx::core *a4, uint64_t a5)
{
  v35[0] = a3;
  mlx::core::linalg::cross(mlx::core::array const&,mlx::core::array const&,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(v35, this);
  mlx::core::linalg::cross(mlx::core::array const&,mlx::core::array const&,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(v35, a2);
  v10 = mlx::core::array::shape(this, a3);
  v11 = mlx::core::array::shape(a2, a3);
  v12 = (*this)[7];
  LODWORD(v34[0]) = v12;
  BYTE4(v34[0]) = BYTE4(v12);
  v13 = (*a2)[7];
  LODWORD(v33[0]) = v13;
  BYTE4(v33[0]) = BYTE4(v13);
  v14 = mlx::core::promote_types(v34, v33);
  v15 = *this;
  memset(v34, 0, sizeof(v34));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v34, *v15, v15[1], (v15[1] - *v15) >> 2);
  v16 = *a2;
  memset(v33, 0, sizeof(v33));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v33, *v16, v16[1], (v16[1] - *v16) >> 2);
  if (a3 < 0)
  {
    *(v34[0] + (*this)[1] - **this + 4 * a3) = 3;
    v17 = (((*a2)[1] - **a2) >> 2) + a3;
  }

  else
  {
    v17 = a3;
    *(v34[0] + 4 * a3) = 3;
  }

  *(v33[0] + 4 * v17) = 3;
  mlx::core::broadcast_shapes(v34, v33, v32);
  v18 = (((v32[1] - v32[0]) >> 2) & (a3 >> 31)) + a3;
  if (v10 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  *(v32[0] + 4 * v18) = v19;
  v20 = this[1];
  v30[0] = *this;
  v30[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v30, v14, a4, a5, v27);
  mlx::core::broadcast_to(v27, v32, a4, a5, v31);
  v21 = v18;
  mlx::core::array::~array(v27);
  mlx::core::array::~array(v30);
  if (v11 == 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  *(v32[0] + 4 * v21) = v22;
  v23 = a2[1];
  v28[0] = *a2;
  v28[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v28, v14, a4, a5, v27);
  mlx::core::broadcast_to(v27, v32, a4, a5, v29);
  mlx::core::array::~array(v27);
  mlx::core::array::~array(v28);
  mlx::core::split(v31, v19, v21, v24, 0, v27);
  mlx::core::split(v29, v22, v21, v25, 0, v26);
  if (v10 == 2 && v11 == 2)
  {
    mlx::core::zeros_like(v27[0], a4, a5);
  }

  if (v11 != 2)
  {
    if (v10 != 2)
    {
      mlx::core::multiply(v27[0] + 2, (v26[0] + 32), a4, a5);
    }

    mlx::core::multiply(v27[0] + 2, (v26[0] + 32), a4, a5);
  }

  mlx::core::multiply(v27[0] + 4, (v26[0] + 16), a4, a5);
}

void sub_25A23BA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void ****a17, uint64_t a18, void ***a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  mlx::core::array::~array(&a17);
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a15);
  a17 = &a19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  a19 = &a22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  a22 = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a22);
  mlx::core::array::~array(&a30);
  mlx::core::array::~array((v30 - 184));
  v32 = *(v30 - 168);
  if (v32)
  {
    *(v30 - 160) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 144);
  if (v33)
  {
    *(v30 - 136) = v33;
    operator delete(v33);
  }

  v34 = *(v30 - 120);
  if (v34)
  {
    *(v30 - 112) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_25A23BB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  mlx::core::array::~array(va);
  JUMPOUT(0x25A23BB28);
}

void sub_25A23BB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  mlx::core::array::~array(va);
  JUMPOUT(0x25A23BB30);
}

uint64_t mlx::core::linalg::cross(mlx::core::array const&,mlx::core::array const&,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(int *a1, uint64_t **this)
{
  if (*a1 >= (((*this)[1] - **this) >> 2))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "[linalg::cross] axis ", 21);
    v7 = MEMORY[0x25F851360](v6, *a1);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " invalid for array with ", 24);
    v9 = MEMORY[0x25F851380](v8, ((*this)[1] - **this) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v12, &v11);
    std::logic_error::logic_error(exception, &v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (mlx::core::array::shape(this, *a1) < 2 || (result = mlx::core::array::shape(this, *a1), result >= 4))
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v5, "[linalg::cross] The specified axis must have size 2 or 3.");
    __cxa_throw(v5, off_279921408, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_25A23BD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *std::vector<mlx::core::array>::push_back[abi:ne200100](void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
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

    v14[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(result, v11);
    }

    v12 = (16 * v8);
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    v13 = *a2;
    *v12 = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14[2] = v12 + 1;
    std::vector<mlx::core::array>::__swap_out_circular_buffer(result, v14);
    v7 = v3[1];
    result = std::__split_buffer<mlx::core::array>::~__split_buffer(v14);
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

  v3[1] = v7;
  return result;
}

void sub_25A23BE90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<mlx::core::array>::push_back[abi:ne200100](void *result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v15 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(result, v10);
    }

    v11 = 0;
    v12 = (16 * v7);
    v14 = 0;
    *v12 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v13 = 16 * v7 + 16;
    std::vector<mlx::core::array>::__swap_out_circular_buffer(result, &v11);
    v6 = v3[1];
    result = std::__split_buffer<mlx::core::array>::~__split_buffer(&v11);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void sub_25A23BF84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::linalg::validate_eigh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlx::core::linalg::check_cpu_stream(a2, a3);
  result = mlx::core::linalg::check_float(*(*a1 + 56) & 0xFFFFFFFFFFLL, a3);
  if (*(*a1 + 8) - **a1 <= 4uLL)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    if (v6 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = *(a3 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Arrays must have >= 2 dimensions. Received array with ", 55);
    v11 = MEMORY[0x25F851380](v10, (*(*a1 + 8) - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v15, &v14);
    std::logic_error::logic_error(exception, &v14);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (*(*(*a1 + 8) - 4) != *(*(*a1 + 8) - 8))
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" Only defined for square matrices.", a3, &v15.__r_.__value_.__l.__data_);
    std::logic_error::logic_error(v13, &v15);
    v13->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v13, off_279921408, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_25A23C14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void mlx::core::linalg::eigvalsh(uint64_t **a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v14[0] = a3;
  v14[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(v12, "[linalg::eigvalsh]");
  mlx::core::linalg::validate_eigh(a1, v14, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v7 = **a1;
  v8 = (*a1)[1] - 4;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v10, v7, v8, (v8 - v7) >> 2);
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  v9 = (*a1)[7];
  mlx::core::to_stream(a3, a4);
  std::allocate_shared[abi:ne200100]<mlx::core::Eigh,std::allocator<mlx::core::Eigh>,mlx::core::Stream,std::string &,BOOL,0>();
}

void sub_25A23C39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  *(v26 - 96) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 96));
  mlx::core::array::~array((v26 - 88));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void mlx::core::linalg::eigh(uint64_t **a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v19[0] = a3;
  v19[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::eigh]");
  mlx::core::linalg::validate_eigh(a1, v19, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a1;
  v8 = (*a1)[1] - 4;
  memset(v24, 0, sizeof(v24));
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v24, v7, v8, (v8 - v7) >> 2);
  v9 = *a1;
  memset(v25, 0, sizeof(v25));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v25, *v9, v9[1], (v9[1] - *v9) >> 2);
  memset(v16, 0, sizeof(v16));
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v16, v24, &v26, 2uLL);
  v10 = (*a1)[7];
  v20 = v10;
  v21 = BYTE4(v10);
  v22 = v10;
  v23 = BYTE4(v10);
  memset(v15, 0, sizeof(v15));
  std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype const*,mlx::core::Dtype const*>(v15, &v20, v24, 2uLL);
  v13 = mlx::core::to_stream(a3, a4);
  v14 = v11;
  v12 = 1;
  std::allocate_shared[abi:ne200100]<mlx::core::Eigh,std::allocator<mlx::core::Eigh>,mlx::core::Stream,std::string &,BOOL,0>();
}

void sub_25A23C6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, char *__p, char *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  *(v34 - 160) = v33;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v34 - 160));
  mlx::core::array::~array((v34 - 152));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  __p = &a22;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v36 = (v34 - 88);
  v37 = -48;
  while (1)
  {
    v38 = *(v36 - 1);
    if (v38)
    {
      *v36 = v38;
      operator delete(v38);
    }

    v36 -= 3;
    v37 += 24;
    if (!v37)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t mlx::core::linalg::validate_lu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlx::core::linalg::check_cpu_stream(a2, a3);
  result = mlx::core::linalg::check_float(*(*a1 + 56) & 0xFFFFFFFFFFLL, a3);
  if (*(*a1 + 8) - **a1 <= 4uLL)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    if (v6 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = *(a3 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Arrays must have >= 2 dimensions. Received array with ", 55);
    v11 = MEMORY[0x25F851380](v10, (*(*a1 + 8) - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    std::logic_error::logic_error(exception, &v13);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_25A23C8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::linalg::lu_helper(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = **a1;
  v7 = (*a1)[1];
  v8 = *(v7 - 8);
  v9 = *(v7 - 4);
  __src = 0;
  v34 = 0;
  v35 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__src, v6, v7 - 8, (v7 - 8 - v6) >> 2);
  v10 = v34;
  if (v34 >= v35)
  {
    v13 = __src;
    v14 = v34 - __src;
    v15 = (v34 - __src) >> 2;
    v16 = v15 + 1;
    if ((v15 + 1) >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v17 = v35 - __src;
    if ((v35 - __src) >> 1 > v16)
    {
      v16 = v17 >> 1;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
    v19 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v19);
    }

    v20 = (4 * v15);
    if (v9 >= v8)
    {
      v21 = v8;
    }

    else
    {
      v21 = v9;
    }

    v22 = &v20[-((v34 - __src) >> 2)];
    *v20 = v21;
    v12 = v20 + 1;
    memcpy(v22, v13, v14);
    v23 = __src;
    __src = v22;
    v34 = v12;
    v35 = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    if (v9 >= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

    *v34 = v11;
    v12 = v10 + 1;
  }

  v34 = v12;
  v24 = **a1;
  v25 = (*a1)[1] - 4;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v30, v24, v25, (v25 - v24) >> 2);
  v26 = *a1;
  memset(v42, 0, sizeof(v42));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v42, *v26, v26[1], (v26[1] - *v26) >> 2);
  memset(v43, 0, sizeof(v43));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v43, __src, v34, (v34 - __src) >> 2);
  memset(v44, 0, sizeof(v44));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v44, v30, v31, (v31 - v30) >> 2);
  memset(v29, 0, sizeof(v29));
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v29, v42, &v45, 3uLL);
  v27 = (*a1)[7];
  v36 = v27;
  v37 = BYTE4(v27);
  v38 = 3;
  v39 = 4;
  v40 = 3;
  v41 = 4;
  memset(__p, 0, sizeof(__p));
  std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype const*,mlx::core::Dtype const*>(__p, &v36, v42, 3uLL);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A23CCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::linalg::lu(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v6[1] = a3;
  std::string::basic_string[abi:ne200100]<0>(&v7, "[linalg::lu]");
  mlx::core::linalg::validate_lu(a1, v6, &v7);
  if (v8 < 0)
  {
    operator delete(v7);
  }

  mlx::core::linalg::lu_helper(a1, a2, a3);
}

void sub_25A23D244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a26)
  {
    operator delete(a26);
  }

  v33 = *(v31 - 128);
  if (v33)
  {
    *(v31 - 120) = v33;
    operator delete(v33);
  }

  mlx::core::array::~array(&a31);
  mlx::core::array::~array((v31 - 192));
  *(v31 - 128) = v31 - 168;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v31 - 128));
  _Unwind_Resume(a1);
}

void sub_25A23D33C()
{
  if (*(v0 - 105) < 0)
  {
    operator delete(*(v0 - 128));
  }

  JUMPOUT(0x25A23D31CLL);
}

void mlx::core::linalg::lu_factor(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::lu_factor]");
  mlx::core::linalg::validate_lu(a1, v8, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  mlx::core::linalg::lu_helper(a1, a2, a3);
}

void sub_25A23D424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::linalg::validate_solve(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  mlx::core::linalg::check_cpu_stream(a3, a4);
  if (((*a1)[1] - **a1) <= 4)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v60);
    v13 = *(a4 + 23);
    if (v13 >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    if (v13 >= 0)
    {
      v15 = *(a4 + 23);
    }

    else
    {
      v15 = *(a4 + 8);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v14, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " First input must have >= 2 dimensions. ", 40);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Received array with ", 20);
    v19 = MEMORY[0x25F851380](v18, ((*a1)[1] - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v60, &v59);
    std::logic_error::logic_error(exception, &v59);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v7 = (*a2)[1] - **a2;
  if (!v7)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v60);
    v21 = *(a4 + 23);
    if (v21 >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    if (v21 >= 0)
    {
      v23 = *(a4 + 23);
    }

    else
    {
      v23 = *(a4 + 8);
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " Second input must have >= 1 dimensions. ", 41);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Received array with ", 20);
    v27 = MEMORY[0x25F851380](v26, ((*a2)[1] - **a2) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " dimensions.", 12);
    v28 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v60, &v59);
    std::logic_error::logic_error(v28, &v59);
    v28->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v28, off_279921408, MEMORY[0x277D82610]);
  }

  v8 = *((*a1)[1] - 4);
  if (v8 != *((*a1)[1] - 8))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v60);
    v29 = *(a4 + 23);
    if (v29 >= 0)
    {
      v30 = a4;
    }

    else
    {
      v30 = *a4;
    }

    if (v29 >= 0)
    {
      v31 = *(a4 + 23);
    }

    else
    {
      v31 = *(a4 + 8);
    }

    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v30, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " First input must be a square matrix. ", 38);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Received array with shape ", 26);
    v35 = mlx::core::operator<<(v34, *a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ".", 1);
    v36 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v60, &v59);
    std::logic_error::logic_error(v36, &v59);
    v36->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v36, off_279921408, MEMORY[0x277D82610]);
  }

  if (v7 > 4)
  {
    v9 = -2;
  }

  else
  {
    v9 = -1;
  }

  if (v8 != mlx::core::array::shape(a2, v9))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v60);
    v37 = *(a4 + 23);
    if (v37 >= 0)
    {
      v38 = a4;
    }

    else
    {
      v38 = *a4;
    }

    if (v37 >= 0)
    {
      v39 = *(a4 + 23);
    }

    else
    {
      v39 = *(a4 + 8);
    }

    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v38, v39);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " Last dimension of first input with shape ", 42);
    v42 = mlx::core::operator<<(v41, *a1);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " must match second to last dimension of", 39);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " second input with shape ", 25);
    v45 = mlx::core::operator<<(v44, *a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ".", 1);
    v46 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v60, &v59);
    std::logic_error::logic_error(v46, &v59);
    v46->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v46, off_279921408, MEMORY[0x277D82610]);
  }

  v10 = (*a1)[7];
  LODWORD(v60[0]) = v10;
  BYTE4(v60[0]) = BYTE4(v10);
  v11 = (*a2)[7];
  LODWORD(v59.__r_.__value_.__l.__data_) = v11;
  v59.__r_.__value_.__s.__data_[4] = BYTE4(v11);
  result = mlx::core::promote_types(v60, &v59);
  if ((result & 0xFFFFFFFE) != 0xA)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v60);
    v47 = *(a4 + 23);
    if (v47 >= 0)
    {
      v48 = a4;
    }

    else
    {
      v48 = *a4;
    }

    if (v47 >= 0)
    {
      v49 = *(a4 + 23);
    }

    else
    {
      v49 = *(a4 + 8);
    }

    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v48, v49);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " Input arrays must promote to float32 or float64.  Received arrays with type ", 77);
    v52 = (*a1)[7];
    LODWORD(v59.__r_.__value_.__l.__data_) = v52;
    v59.__r_.__value_.__s.__data_[4] = BYTE4(v52);
    v53 = mlx::core::operator<<(v51, &v59);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " and ", 5);
    v55 = (*a2)[7];
    LODWORD(v58) = v55;
    BYTE4(v58) = BYTE4(v55);
    v56 = mlx::core::operator<<(v54, &v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ".", 1);
    v57 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v60, &v59);
    std::logic_error::logic_error(v57, &v59);
    v57->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v57, off_279921408, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_25A23D978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void mlx::core::linalg::solve(uint64_t **a1, uint64_t **a2, mlx::core *a3, uint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::solve]");
  mlx::core::linalg::validate_solve(a1, a2, v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  mlx::core::linalg::lu(a1, a3, a4);
}

void sub_25A23DB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  mlx::core::array::~array(&a13);
  a13 = &a16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_25A23DBC8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x25A23DBC0);
}

void mlx::core::linalg::solve_triangular(uint64_t **a1, uint64_t **a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  std::string::basic_string[abi:ne200100]<0>(__p, "[linalg::solve_triangular]");
  mlx::core::linalg::validate_solve(a1, a2, v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  mlx::core::linalg::inv_impl(a1, 1, a3, a4, a5);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A23DDB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
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

void sub_25A23E130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<int *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A23E450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<mlx::core::array::ArrayDesc>::__shared_ptr_emplace[abi:ne200100]<std::vector<int>,mlx::core::Dtype &,std::allocator<mlx::core::array::ArrayDesc>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3418;
  std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype &,mlx::core::array::ArrayDesc*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::array::ArrayDesc>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype &,mlx::core::array::ArrayDesc*>(uint64_t a1, uint64_t a2, void *a3)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  mlx::core::array::ArrayDesc::ArrayDesc(a1, __p, *a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_25A23E64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(mlx::core::allocator::Buffer),std::allocator<void (*)(mlx::core::allocator::Buffer)>,void ()(mlx::core::allocator::Buffer)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE3468;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(mlx::core::allocator::Buffer),std::allocator<void (*)(mlx::core::allocator::Buffer)>,void ()(mlx::core::allocator::Buffer)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279921400, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A23E950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A23E9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int> const*,std::vector<int> const*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
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

uint64_t std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype const*,mlx::core::Dtype const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlx::core::Dtype>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A23ECD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mlx::core::Dtype>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlx::core::array>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<mlx::core::array>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        mlx::core::array::~array((v4 - 16));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25A23F010(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

mlx::core::array *std::vector<mlx::core::array>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = *v8;
      *v8 = 0;
      *(v8 + 1) = 0;
      v8 = (v8 + 16);
    }

    while (v8 != v5);
    do
    {
      mlx::core::array::~array(result);
      result = (v10 + 16);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v11 = *a1;
  *a1 = v7;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<mlx::core::array>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    mlx::core::array::~array((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlx::core::array>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A23F214(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F8515F0](a1 + 8);
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

void sub_25A23F2C4(_Unwind_Exception *a1)
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

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void sub_25A23F4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<double *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A23F81C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlx::core::QRF>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::SVD>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Inverse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE35B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Cholesky>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void sub_25A23FB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<float *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A23FE9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<mlx::core::Eigh>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::string &,BOOL,std::allocator<mlx::core::Eigh>,0>(void *a1, uint64_t *a2, uint64_t a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3658;
  std::construct_at[abi:ne200100]<mlx::core::Eigh,mlx::core::Stream,std::string &,BOOL,mlx::core::Eigh*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Eigh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::Eigh,mlx::core::Stream,std::string &,BOOL,mlx::core::Eigh*>(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a3, *(a3 + 8));
  }

  else
  {
    v10 = *a3;
  }

  v8 = *a4;
  *(a1 + 16) = v7;
  *a1 = &unk_286BF41A8;
  *(a1 + 8) = v6;
  *(a1 + 24) = v10;
  *(a1 + 48) = v8;
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
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__shared_ptr_emplace<mlx::core::LUF>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE36A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t mlx::core::allocator::malloc(mlx::core::allocator *this)
{
  v2 = mlx::core::allocator::allocator(this);
  result = (**v2)(v2, this);
  if (this)
  {
    if (!result)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "[malloc] Unable to allocate ", 28);
      v5 = MEMORY[0x25F851380](v4, this);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " bytes.", 7);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str[abi:ne200100](&v9, v7);
      MEMORY[0x25F851100](exception, v7);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_25A240330(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
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

uint64_t mlx::core::allocator::free(mlx::core::allocator *a1)
{
  v1 = *(*mlx::core::allocator::allocator(a1) + 8);

  return v1();
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

_BYTE *std::stringbuf::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5[0] = std::stringbuf::view[abi:ne200100](a1);
  v5[1] = v3;
  return std::string::basic_string<std::string_view,0>(a2, v5);
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void mlx::core::arange(void *a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v18[33] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8 = fabs(a6) == INFINITY;
    if (fabs(a5) != INFINITY && !v8)
    {
      if (fabs(a7) == INFINITY && (a5 < a6 && a7 > 0.0 || a5 > a6 && a7 < 0.0))
      {
        *v18 = a5;
        mlx::core::array::array<double>(a4, v18, 1, a1);
      }

      v12 = ceil((a6 - a5) / a7);
      if (v12 <= 2147483650.0)
      {
        LODWORD(v17.__r_.__value_.__l.__data_) = v12 & ~(v12 >> 31);
        memset(__p, 0, sizeof(__p));
        std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v17, v17.__r_.__value_.__r.__words + 4, 1uLL);
        mlx::core::to_stream(a2, a3);
        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[arange] Maximum size exceeded.");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[arange] Cannot compute length.");
    }

    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v18);
  v13 = mlx::core::operator<<(v18, &mlx::core::BOOL_);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " not supported for arange.", 26);
  v14 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v18, &v17);
  std::logic_error::logic_error(v14, &v17);
  v14->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v14, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A240914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::arange(mlx::core *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v11 = mlx::core::to_stream(a1, a2);

  mlx::core::arange(0x40000000ALL, v11, v10 | 0x100000000, a3, a4, a5, a6);
}

void mlx::core::arange(void *a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = mlx::core::to_stream(a2, a3);

  mlx::core::arange(a1, v11, v10 | 0x100000000, a4, a5, a6, 1.0);
}

void mlx::core::arange(mlx::core *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = mlx::core::to_stream(a1, a2);

  mlx::core::arange(0x40000000ALL, v9, v8 | 0x100000000, a3, a4, a5, 1.0);
}

void mlx::core::arange(void *a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = mlx::core::to_stream(a2, a3);

  mlx::core::arange(a1, v9, v8 | 0x100000000, a4, 0.0, a5, 1.0);
}

void mlx::core::arange(mlx::core *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = mlx::core::to_stream(a1, a2);

  mlx::core::arange(0x40000000ALL, v7, v6 | 0x100000000, a3, 0.0, a4, 1.0);
}

void mlx::core::arange(int a1@<W0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v11 = mlx::core::to_stream(a4, a5);

  mlx::core::arange(0x400000007, v11, v10 | 0x100000000, a6, v7, v8, v9);
}

void mlx::core::arange(int a1@<W0>, int a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1;
  v7 = a2;
  v9 = mlx::core::to_stream(a3, a4);

  mlx::core::arange(0x400000007, v9, v8 | 0x100000000, a5, v6, v7, 1.0);
}

void mlx::core::arange(int a1@<W0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v7 = mlx::core::to_stream(a2, a3);

  mlx::core::arange(0x400000007, v7, v6 | 0x100000000, a4, 0.0, v5, 1.0);
}

void mlx::core::linspace(uint64_t a1, double a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v14[33] = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) == 0)
  {
    if (a1 == 1)
    {
      *v14 = a2;
      v6 = mlx::core::TypeToDtype<double>::operator mlx::core::Dtype();
      mlx::core::array::array<double>(v12, v14, 1, (v6 & 0xFFFFFFFFFFLL));
    }

    v7 = mlx::core::to_stream(a4, a5);
    mlx::core::arange(0x40000000ALL, v7, v8 | 0x100000000, &v13, 0.0, a1, 1.0);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v14);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "[linspace] number of samples, ", 30);
  v10 = MEMORY[0x25F851360](v9, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", must be non-negative.", 23);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v14, &v13);
  std::logic_error::logic_error(exception, &v13);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A241038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a28);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

uint64_t **mlx::core::astype@<X0>(uint64_t **result@<X0>, int a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *result;
  if (a2 != *(*result + 14))
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v13, *v6, v6[1], (v6[1] - *v6) >> 2);
    *__p = *v13;
    v12 = v14;
    v13[1] = 0;
    v14 = 0;
    v13[0] = 0;
    mlx::core::to_stream(a3, a4);
    operator new();
  }

  v7 = result[1];
  *a5 = v6;
  a5[1] = v7;
  *result = 0;
  result[1] = 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2412F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  *(v21 - 88) = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  mlx::core::array::~array((v21 - 80));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void mlx::core::divide(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v22) = v8;
  BYTE4(v22) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v21[0]) = v9;
  BYTE4(v21[0]) = BYTE4(v9);
  v10 = mlx::core::promote_types(&v22, v21);
  LODWORD(v24[0]) = v10;
  BYTE4(v24[0]) = BYTE4(v10);
  v12 = a1[1];
  v20[0] = *a1;
  v20[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v20, v11, a3, a4, v24);
  v13 = a2[1];
  v19[0] = *a2;
  v19[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = mlx::core::to_stream(a3, a4);
  mlx::core::astype(v19, v11, v14, v15 | 0x100000000, &v25);
  memset(v21, 0, sizeof(v21));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v21, v24, &v26, 2uLL);
  mlx::core::broadcast_arrays(v21, a3, a4, &v22);
  v23 = v21;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v23);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v24[i]);
  }

  mlx::core::array::~array(v19);
  mlx::core::array::~array(v20);
  v17 = *v22;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v17, v17[1], (v17[1] - *v17) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A241604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::subtract(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A241958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::add(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A241CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::multiply(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A242000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::as_strided(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = a4;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v15, *a2, a2[1], (a2[1] - *a2) >> 2);
  v9 = *(*a1 + 56);
  *__p = *v15;
  v14 = v16;
  v15[1] = 0;
  v16 = 0;
  v15[0] = 0;
  v11 = mlx::core::to_stream(a5, a6);
  v12 = v10;
  std::allocate_shared[abi:ne200100]<mlx::core::AsStrided,std::allocator<mlx::core::AsStrided>,mlx::core::Stream,std::vector<int>,std::vector<long long>,unsigned long &,0>();
}

void sub_25A242280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  *(v25 - 96) = v24;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v25 - 96));
  mlx::core::array::~array((v25 - 88));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

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

void mlx::core::copy(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v10, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  *__p = *v10;
  v9 = v11;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A2424CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  *(v21 - 88) = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  mlx::core::array::~array((v21 - 80));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void mlx::core::full(uint64_t *a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    v9 = *a1;
    do
    {
      if ((*v9 & 0x80000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "[full] Negative dimensions not allowed.");
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v13, v7, v8, (v8 - v7) >> 2);
  *__p = *v13;
  v12 = v14;
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  mlx::core::to_stream(a4, a5);
  operator new();
}

void sub_25A242780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  *(v25 - 112) = v24;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v25 - 112));
  mlx::core::array::~array((v25 - 104));
  mlx::core::array::~array(&a12);
  mlx::core::array::~array(&a9);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::broadcast_to@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = **a1;
  v12 = v10[1] - v11;
  v13 = *a2;
  if (v12 != a2[1] - v13 || (result = memcmp(v11, v13, v12), result))
  {
    mlx::core::broadcast_shapes(v10, a2, &v25);
    if (*(&v25 + 1) - v25 == a2[1] - *a2 && !memcmp(v25, *a2, *(&v25 + 1) - v25))
    {
      v26 = 0;
      v25 = 0uLL;
      v16 = (*a1)[7];
      mlx::core::to_stream(a3, a4);
      std::allocate_shared[abi:ne200100]<mlx::core::Broadcast,std::allocator<mlx::core::Broadcast>,mlx::core::Stream,std::vector<int> const&,0>();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v24);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Cannot broadcast array of shape ", 32);
    v20 = mlx::core::operator<<(v19, *a1);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " into shape ", 12);
    v22 = mlx::core::operator<<(v21, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v24, &v27);
    std::logic_error::logic_error(exception, &v27);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v18 = a1[1];
  *a5 = v10;
  a5[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A242AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a23);
      v28 = *(v26 - 128);
      if (v28)
      {
        *(v26 - 120) = v28;
        operator delete(v28);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::full(__int128 *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v4 = *(*a2 + 56);
  v5 = *a1;
  v10 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v8 = *a2;
  *__p = v5;
  *a2 = 0;
  a2[1] = 0;
  v6 = mlx::core::to_stream(a3, a4);
  mlx::core::full(__p, &v8, v4 & 0xFFFFFFFFFFLL, v6, v7 | 0x100000000);
}

void sub_25A242C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  mlx::core::array::~array(&a9);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::zeros(uint64_t *a1)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *a1, a1[1], (a1[1] - *a1) >> 2);
  mlx::core::array::array<int>();
}

void sub_25A242CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::zeros_like(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[7];
  mlx::core::to_stream(a2, a3);

  mlx::core::zeros(v3);
}

void mlx::core::ones(uint64_t *a1)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *a1, a1[1], (a1[1] - *a1) >> 2);
  mlx::core::array::array<int>();
}

void sub_25A242E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ones_like(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[7];
  mlx::core::to_stream(a2, a3);

  mlx::core::ones(v3);
}

void mlx::core::eye(int a1, int a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  if (a1 >= 1 && a2 > 0)
  {
    v6[0] = a1;
    v6[1] = a2;
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, v6, v7, 2uLL);
    mlx::core::zeros(__p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[eye] N and M must be positive integers.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A2432E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__split_buffer<mlx::core::array>::~__split_buffer(&__p);
  mlx::core::array::~array(&a9);
  a9 = &a21;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a9);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::tri(int a1, uint64_t a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v6 = a1;
  v7 = mlx::core::to_stream(a5, a6);
  mlx::core::arange(0x400000007, v7, v8 | 0x100000000, v9, 0.0, v6, 1.0);
}

void sub_25A243520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a15);
  _Unwind_Resume(a1);
}

void mlx::core::expand_dims(uint64_t **a1, int a2, mlx::core *a3, uint64_t a4)
{
  v7 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v7, __p, 1uLL);
  mlx::core::expand_dims_impl(a1, __p, a3, a4);
}

void sub_25A2435F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::greater_equal(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A24389C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::tril(uint64_t a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  if (*(*a1 + 8) - **a1 > 4uLL)
  {
    mlx::core::tri(*(*(*a1 + 8) - 8), *(*(*a1 + 8) - 4), a2, *(*a1 + 56) & 0xFFFFFFFFFFLL, a3, a4);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[tril] array must be at least 2-D");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::where(uint64_t **a1, void *a2, void *a3, mlx::core *a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a1[1];
  v22[0] = *a1;
  v22[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v22, 0, a4, a5, &v23);
  mlx::core::array::~array(v22);
  v10 = *(*a2 + 56);
  LODWORD(v26[0]) = v10;
  BYTE4(v26[0]) = BYTE4(v10);
  v11 = *(*a3 + 56);
  LODWORD(v21) = v11;
  BYTE4(v21) = BYTE4(v11);
  v12 = mlx::core::promote_types(v26, &v21);
  v26[0] = v23;
  v26[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a2[1];
  v19[0] = *a2;
  v19[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v19, v12, a4, a5, &v27);
  v14 = a3[1];
  v18[0] = *a3;
  v18[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v18, v12, a4, a5, &v28);
  memset(v20, 0, sizeof(v20));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v20, v26, &v29, 3uLL);
  mlx::core::broadcast_arrays(v20, a4, a5, &v21);
  v25 = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v25);
  for (i = 4; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v26[i]);
  }

  mlx::core::array::~array(v18);
  mlx::core::array::~array(v19);
  v16 = *v21;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v16, v16[1], (v16[1] - *v16) >> 2);
  mlx::core::to_stream(a4, a5);
  operator new();
}

void sub_25A243DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 - 120) = v27;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v28 - 120));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v28 - 120) = &a24;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v28 - 120));
  mlx::core::array::~array((v28 - 144));
  _Unwind_Resume(a1);
}

void mlx::core::triu(uint64_t a1, int a2, mlx::core *a3, uint64_t a4)
{
  if (*(*a1 + 8) - **a1 > 4uLL)
  {
    mlx::core::tri(*(*(*a1 + 8) - 8), *(*(*a1 + 8) - 4), (a2 - 1), *(*a1 + 56) & 0xFFFFFFFFFFLL, a3, a4);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[triu] array must be at least 2-D");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

uint64_t mlx::core::reshape@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = **a1;
  v11 = v9[1] - v10;
  v13 = *a2;
  v12 = *(a2 + 8);
  v14 = v12 - *a2;
  if (v11 != v14 || (result = memcmp(v10, *a2, v11), result))
  {
    v20 = 0;
    v21 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v13, v12, v14 >> 2);
    mlx::core::Reshape::output_shape(a1, &__p, v22);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    v22[1] = 0;
    v23 = 0;
    v22[0] = 0;
    v16 = *(*a1 + 56);
    mlx::core::to_stream(a3, a4);
    std::allocate_shared[abi:ne200100]<mlx::core::Reshape,std::allocator<mlx::core::Reshape>,mlx::core::Stream,std::vector<int>,0>();
  }

  v18 = *(a1 + 8);
  *a5 = v9;
  a5[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2441E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  *(v27 - 112) = v26;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v27 - 112));
  mlx::core::array::~array((v27 - 104));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::unflatten@<X0>(uint64_t **this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = a3[1];
  if (*a3 == v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[unflatten] Shape to unflatten to cannot be empty.");
LABEL_21:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v11 = ((*this)[1] - **this) >> 2;
  v12 = v11 & (a2 >> 31);
  v13 = (v12 + a2);
  if (v12 + a2 < 0 || v13 >= v11)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v43);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "[unflatten] Invalid axes ", 25);
    v29 = MEMORY[0x25F851360](v28, v13);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " for array with ", 16);
    v31 = MEMORY[0x25F851380](v30, ((*this)[1] - **this) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " dimensions.", 12);
    v32 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v43, &v45);
    std::logic_error::logic_error(v32, &v45);
    v32->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v32, off_279921408, MEMORY[0x277D82610]);
  }

  v17 = 0;
  v18 = (v8 - v7) >> 2;
  if (v18 <= 1)
  {
    v18 = 1;
  }

  v19 = -1;
  v20 = 1;
  do
  {
    v21 = *(v7 + 4 * v17);
    if (v21 != -1)
    {
      v20 *= v21;
      goto LABEL_11;
    }

    if ((v19 & 0x80000000) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[Unflatten] Can only infer one dimension.");
      goto LABEL_21;
    }

    v19 = v17;
LABEL_11:
    ++v17;
  }

  while (v18 != v17);
  if ((v19 & 0x80000000) == 0)
  {
    v22 = mlx::core::array::shape(this, v13) / v20;
    *(*a3 + 4 * v19) = v22;
    v20 *= v22;
  }

  result = mlx::core::array::shape(this, v13);
  if (v20 != result)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v43);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "[Unflatten] Cannot unflatten axis ", 34);
    v34 = MEMORY[0x25F851360](v33, a2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " with size ", 11);
    v36 = mlx::core::array::shape(this, v13);
    v37 = MEMORY[0x25F851360](v35, v36);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " into shape ", 12);
    v39 = mlx::core::operator<<(v38, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ".", 1);
    v40 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v43, &v45);
    std::logic_error::logic_error(v40, &v45);
    v40->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v40, off_279921408, MEMORY[0x277D82610]);
  }

  if (a3[1] - *a3 != 4)
  {
    mlx::core::Unflatten::output_shape(this, v13, a3, v43);
    *__p = *v43;
    v42 = v44;
    v43[1] = 0;
    v44 = 0;
    v43[0] = 0;
    v25 = (*this)[7];
    mlx::core::to_stream(a4, a5);
    operator new();
  }

  v24 = this[1];
  *a6 = *this;
  a6[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A244718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (*(v22 - 89) < 0)
  {
    operator delete(*(v22 - 112));
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void mlx::core::flatten(uint64_t **this@<X0>, uint64_t a2@<X1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30[33] = *MEMORY[0x277D85DE8];
  v11 = **this;
  v10 = (*this)[1];
  v12 = (v10 - v11) >> 2;
  if (((v12 & (a3 >> 31)) + a3) >= v12 - 1)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = (v12 & (a3 >> 31)) + a3;
  }

  if (v10 == v11)
  {
    LODWORD(v30[0]) = 1;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v27, v30, v30 + 4, 1uLL);
    mlx::core::reshape(this, &v27, a4, a5, a6);
    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }
  }

  else
  {
    v15 = ((v12 & (a2 >> 31)) + a2) & ~(((v12 & (a2 >> 31)) + a2) >> 31);
    if (v13 < v15)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[flatten] start_axis must be less than or equal to end_axis");
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    if (v15 >= v12)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v30);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "[flatten] Invalid start_axis ", 29);
      v21 = MEMORY[0x25F851360](v20, a2);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " for array with ", 16);
      v23 = MEMORY[0x25F851360](v22, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " dimensions.", 12);
      v24 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v30, &v26);
      std::logic_error::logic_error(v24, &v26);
      v24->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v24, off_279921408, MEMORY[0x277D82610]);
    }

    if (v15 != v13)
    {
      mlx::core::Flatten::output_shape(this, (((v12 & (a2 >> 31)) + a2) & ~(((v12 & (a2 >> 31)) + a2) >> 31)), v13, &__p);
      v17 = (*this)[7];
      mlx::core::to_stream(a4, a5);
      operator new();
    }

    v16 = this[1];
    *a6 = *this;
    *(a6 + 8) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_25A244B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a26);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

void mlx::core::hadamard_transform(uint64_t **a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if ((a2 & 0x100000000) == 0)
  {
    v8 = v7[1];
    if (v8 == *v7)
    {
      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    v9 = 1.0 / sqrt(*(v8 - 4));
  }

  v10 = v7[7];
  v15 = v10;
  v16 = BYTE4(v10);
  v11 = mlx::core::issubdtype(&v15, &mlx::core::floating);
  v12 = *a1;
  if (v11)
  {
    v13 = v12[7] & 0xFFFFFFFFFFLL;
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v12, v12[1], (v12[1] - *v12) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A244E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  mlx::core::array::~array(&a20);
  mlx::core::array::~array(&a9);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::squeeze_impl(uint64_t **this, int **a2, mlx::core *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = a2[1];
  while (v8 != v9)
  {
    v10 = (*this)[1] - **this;
    if (*v8 >= 0)
    {
      v11 = *v8;
    }

    else
    {
      v11 = (v10 >> 2) + *v8;
    }

    if (v11 >= v10 >> 2)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v26);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "[squeeze] Invalid axes ", 23);
      v20 = MEMORY[0x25F851360](v19, *v8);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " for array with ", 16);
      v22 = MEMORY[0x25F851380](v21, ((*this)[1] - **this) >> 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " dimensions.", 12);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v26, &v28);
      std::logic_error::logic_error(exception, &v28);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    if (mlx::core::array::shape(this, v11) != 1)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v26);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "[squeeze] Cannot squeeze axis ", 30);
      v14 = MEMORY[0x25F851360](v13, *v8);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " with size ", 11);
      v16 = mlx::core::array::shape(this, *v8);
      v17 = MEMORY[0x25F851360](v15, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " which is not equal to 1.", 25);
      v18 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v26, &v28);
      std::logic_error::logic_error(v18, &v28);
      v18->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v18, off_279921408, MEMORY[0x277D82610]);
    }

    *v8++ = v11;
  }

  mlx::core::Squeeze::output_shape(this, a2, v26);
  *__p = *v26;
  v25 = v27;
  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  v12 = (*this)[7];
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A245228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (*(v22 - 89) < 0)
  {
    operator delete(*(v22 - 112));
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t **mlx::core::squeeze@<X0>(uint64_t **result@<X0>, int **a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v5 = result;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v20 = 0;
    v21 = 0;
    v19 = &v20;
    while (1)
    {
      v12 = *v7;
      if (*v7 < 0)
      {
        v12 += ((*v5)[1] - **v5) >> 2;
      }

      LODWORD(v17[0]) = v12;
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v19, v17);
      if (++v7 == v8)
      {
        if (v21 == a2[1] - *a2)
        {
          std::vector<int>::vector[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,0>(v17, v19, &v20);
          *__p = *v17;
          v16 = v18;
          v17[1] = 0;
          v18 = 0;
          v17[0] = 0;
          mlx::core::squeeze_impl(v5, __p, a3, a4);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "[squeeze] Received duplicate axes.");
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }
    }
  }

  v13 = result[1];
  *a5 = *result;
  a5[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void mlx::core::squeeze(uint64_t **a1, int a2, mlx::core *a3, uint64_t a4)
{
  v7 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v7, __p, 1uLL);
  mlx::core::squeeze_impl(a1, __p, a3, a4);
}

void sub_25A245558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::squeeze(uint64_t **this, mlx::core *a2, uint64_t a3)
{
  v13 = 0;
  v6 = 0uLL;
  *v12 = 0u;
  v11 = 0;
  if ((*this)[1] == **this)
  {
    v8 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    do
    {
      if (mlx::core::array::shape(this, v7) == 1)
      {
        std::vector<int>::push_back[abi:ne200100](v12, &v11);
      }

      v7 = ++v11;
    }

    while (v7 < ((*this)[1] - **this) >> 2);
    v6 = *v12;
    v8 = v13;
  }

  *__p = v6;
  v10 = v8;
  v12[1] = 0;
  v13 = 0;
  v12[0] = 0;
  mlx::core::squeeze_impl(this, __p, a2, a3);
}

void sub_25A245668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
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

void mlx::core::expand_dims_impl(uint64_t **a1, int **a2, mlx::core *a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    v9 = v7 - *a2 + (((*a1)[1] - **a1) >> 2);
    do
    {
      v10 = *v8;
      if ((v10 & 0x80000000) != 0)
      {
        v10 = v9 + v10;
      }

      if (v10 >= v9)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v18);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "[expand_dims] Invalid axis ", 27);
        v13 = MEMORY[0x25F851360](v12, *v8);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " for output array with ", 23);
        v15 = MEMORY[0x25F851380](v14, ((*a1)[1] - **a1) >> 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " dimensions.", 12);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v18, &v19);
        std::logic_error::logic_error(exception, &v19);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      *v8++ = v10;
    }

    while (v8 != v7);
  }

  mlx::core::ExpandDims::output_shape(a1, a2, v18);
  __p = v18[0];
  memset(v18, 0, 24);
  v11 = (*a1)[7];
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A245A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t **mlx::core::expand_dims@<X0>(uint64_t **result@<X0>, int **a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v7 = result;
  v9 = *a2;
  v10 = a2[1];
  v11 = *a2;
  if (v11 != v10)
  {
    std::set<int>::set[abi:ne200100]<std::__wrap_iter<int const*>>(&v27, v11, v10);
    if (v29 == a2[1] - *a2)
    {
      std::__tree<int>::destroy(&v27, v28);
      v14 = **v7;
      v13 = (*v7)[1];
      v16 = *a2;
      v15 = a2[1];
      v28 = 0;
      v29 = 0;
      v27 = &v28;
      if (v16 == v15)
      {
        v18 = 0;
        v19 = v15;
      }

      else
      {
        v17 = ((v15 - v16) >> 2) + ((v13 - v14) >> 2);
        do
        {
          LODWORD(v25[0]) = (v17 & (*v16 >> 31)) + *v16;
          std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v27, v25);
          ++v16;
        }

        while (v16 != v15);
        v18 = v29;
        v15 = *a2;
        v19 = a2[1];
      }

      if (v18 == v19 - v15)
      {
        std::vector<int>::vector[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,0>(v25, v27, &v28);
        *__p = *v25;
        v24 = v26;
        v25[1] = 0;
        v26 = 0;
        v25[0] = 0;
        mlx::core::expand_dims_impl(v7, __p, a3, a4);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[expand_dims] Received duplicate axes.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v21, "[expand_dims] Received duplicate axes.");
    v21->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v21, off_279921408, MEMORY[0x277D82610]);
  }

  v20 = result[1];
  *a5 = *result;
  a5[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void mlx::core::slice(const void ***a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, mlx::core *a5@<X4>, uint64_t a6@<X5>, int ***a7@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8) - *a2;
  v10 = *a1;
  if (v9 != (*a1)[1] - **a1 || (v13 = a3[1], v14 = *a3, v15 = v13 - *a3, v15 != v9) || *(a4 + 8) - *a4 != v9)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "[slice] Invalid number of indices or strides for ", 49);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "array with dimension ", 21);
    v29 = MEMORY[0x25F851380](v28, ((*a1)[1] - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v37, &v36);
    std::logic_error::logic_error(exception, &v36);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v34 = 0;
  v35 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v14, v13, v15 >> 2);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v31 = a7;
  v19 = __s1;
  if (v37 == 1)
  {
    v20 = v39;
    v21 = v39 - __s1;
    goto LABEL_10;
  }

  v22 = *a1;
  v20 = v39;
  v21 = v39 - __s1;
  v23 = **a1;
  if (v39 - __s1 != (*a1)[1] - v23 || memcmp(__s1, v23, v39 - __s1))
  {
LABEL_10:
    memset(v32, 0, sizeof(v32));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v32, v19, v20, v21 >> 2);
    v24 = (*a1)[7];
    mlx::core::to_stream(a5, a6);
    std::allocate_shared[abi:ne200100]<mlx::core::Slice,std::allocator<mlx::core::Slice>,mlx::core::Stream,std::vector<int>,std::vector<int>,std::vector<int>,0>();
  }

  v26 = a1[1];
  *v31 = v22;
  v31[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  if (__s1)
  {
    v39 = __s1;
    operator delete(__s1);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_25A2460E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a30);
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

void mlx::core::anonymous namespace::normalize_slice(int **a1@<X0>, int **a2@<X1>, int **a3@<X2>, _DWORD **a4@<X3>, uint64_t a5@<X8>)
{
  std::vector<int>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v10 = *a1;
  v11 = 0;
  v12 = a1[1] - *a1;
  if (v12)
  {
    v13 = v12 >> 2;
    v14 = *a2;
    v15 = *a3;
    v16 = *a4;
    v17 = __p;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v19 = *v10++;
      v18 = v19;
      v20 = (v19 & (*v14 >> 31)) + *v14;
      v21 = *v15++;
      v22 = (v18 & (v21 >> 31)) + v21;
      if ((*v16 & 0x80000000) != 0)
      {
        v28 = v18 - 1;
        if (v18 - 1 >= v20)
        {
          v28 = v20;
        }

        if (v22 < 0)
        {
          v29 = -1;
        }

        else
        {
          v29 = v22;
        }

        *v14 = v28;
        if (v29 >= v28)
        {
          v29 = v28;
        }

        v27 = (v28 + ~(*v16 + v29)) / -*v16;
        v11 = 1;
      }

      else
      {
        if (v18 < v20)
        {
          v20 = v18;
        }

        v23 = v20 & ~(v20 >> 31);
        if (v18 >= v22)
        {
          v18 = v22;
        }

        v24 = v18 & ~(v18 >> 31);
        *v14 = v23;
        v25 = v24 >= v23;
        v26 = v24 - v23;
        if (!v25)
        {
          v26 = 0;
        }

        v27 = (v26 + *v16 - 1) / *v16;
      }

      *v17 = v27;
      if (v27 == 1)
      {
        *v16 = 1;
      }

      ++v17;
      ++v16;
      ++v14;
      --v13;
    }

    while (v13);
  }

  *a5 = v11;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 8) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a5 + 8, __p, v31, (v31 - __p) >> 2);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }
}

void sub_25A246328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::slice(const void ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, int ***a6@<X8>)
{
  *v15 = *a2;
  v16 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v13 = *a3;
  v14 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::vector<int>::vector[abi:ne200100](__p, ((*a1)[1] - **a1) >> 2);
  v10 = mlx::core::to_stream(a4, a5);
  mlx::core::slice(a1, v15, v13, __p, v10, v11 | 0x100000000, a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

void sub_25A246434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::slice(uint64_t **a1, uint64_t a2, int **a3, uint64_t *a4, mlx::core *a5, uint64_t a6)
{
  v31[33] = *MEMORY[0x277D85DE8];
  v10 = *a4;
  v11 = a4[1];
  v12 = v11 - *a4;
  v14 = **a1;
  v13 = (*a1)[1];
  if (v12 == v13 - v14)
  {
    if (v13 != v14)
    {
      v15 = 0;
      do
      {
        v16 = *(*a4 + 4 * v15);
        if (v16 > mlx::core::array::shape(a1, v15))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v31);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "[slice] Invalid slice size ", 27);
          v20 = mlx::core::operator<<(v19, a4);
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " for array with shape ", 22);
          v22 = mlx::core::operator<<(v21, *a1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ".", 1);
          exception = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](v31, &v30);
          std::logic_error::logic_error(exception, &v30);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
        }

        ++v15;
      }

      while (v15 < ((*a1)[1] - **a1) >> 2);
      v10 = *a4;
      v11 = a4[1];
      v12 = v11 - *a4;
    }

    memset(&v30, 0, sizeof(v30));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, v10, v11, v12 >> 2);
    __p = v30;
    memset(&v30, 0, sizeof(v30));
    v17 = (*a1)[7];
    v27 = mlx::core::to_stream(a5, a6);
    v28 = v18;
    std::allocate_shared[abi:ne200100]<mlx::core::DynamicSlice,std::allocator<mlx::core::DynamicSlice>,mlx::core::Stream,std::vector<int>,std::vector<int>,0>();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v31);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "[slice] Invalid slice size for array with ", 42);
  v25 = MEMORY[0x25F851380](v24, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " dimensions.", 12);
  v26 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v31, &v30);
  std::logic_error::logic_error(v26, &v30);
  v26->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v26, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A246814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v31 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a30);
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v30);
  goto LABEL_6;
}

void mlx::core::anonymous namespace::normalize_dynamic_slice_inputs(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = *(*a2 + 48);
  if (v9 > (*(*a1 + 8) - **a1) >> 2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v49);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, a4, a5);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " Invalid number of starting positions for ", 42);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "array with dimension ", 21);
    v27 = MEMORY[0x25F851380](v26, (*(*a1 + 8) - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v49, &v48);
    std::logic_error::logic_error(exception, &v48);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (v8[1] - *v8 >= 5uLL)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v49);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, a4, a5);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " array of starting indices ", 27);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "must be zero or one dimensional but has dimension ", 50);
    v32 = MEMORY[0x25F851380](v31, (*(*a2 + 8) - **a2) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ".", 1);
    v33 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v49, &v48);
    std::logic_error::logic_error(v33, &v48);
    v33->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v33, off_279921408, MEMORY[0x277D82610]);
  }

  if (v9 != a3[1] - *a3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v49);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, a4, a5);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " Number of starting indices ", 28);
    v36 = MEMORY[0x25F851380](v35, *(*a2 + 48));
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " does not match number of axes ", 31);
    v38 = MEMORY[0x25F851380](v37, a3[1] - *a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ".", 1);
    v39 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v49, &v48);
    std::logic_error::logic_error(v39, &v48);
    v39->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v39, off_279921408, MEMORY[0x277D82610]);
  }

  v12 = v8[7];
  LODWORD(v49[0]) = v12;
  BYTE4(v49[0]) = BYTE4(v12);
  if ((mlx::core::issubdtype(v49, &mlx::core::integer) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v49);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, a4, a5);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " Start indices must be integers, got type ", 42);
    v42 = *(*a2 + 56);
    LODWORD(v48.__r_.__value_.__l.__data_) = v42;
    v48.__r_.__value_.__s.__data_[4] = BYTE4(v42);
    v43 = mlx::core::operator<<(v41, &v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ".", 1);
    v44 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v49, &v48);
    std::logic_error::logic_error(v44, &v48);
    v44->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v44, off_279921408, MEMORY[0x277D82610]);
  }

  v13 = *a3;
  v14 = a3[1];
  if (*a3 != v14)
  {
    v15 = (*(*a1 + 8) - **a1) >> 2;
    v16 = *a3;
    do
    {
      v17 = *v16;
      if ((v17 & 0x80000000) != 0)
      {
        v17 = v15 + v17;
      }

      if (v17 >= v15)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v49);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, a4, a5);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " Invalid axis ", 14);
        v20 = MEMORY[0x25F851360](v19, *v16);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " for array with dimension ", 26);
        v22 = MEMORY[0x25F851380](v21, (*(*a1 + 8) - **a1) >> 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ".", 1);
        v23 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v49, &v48);
        std::logic_error::logic_error(v23, &v48);
        v23->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v23, off_279921408, MEMORY[0x277D82610]);
      }

      *v16++ = v17;
    }

    while (v16 != v14);
  }

  std::set<int>::set[abi:ne200100]<std::__wrap_iter<int *>>(&v48, v13, v14);
  if (v48.__r_.__value_.__r.__words[2] != a3[1] - *a3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v49);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, a4, a5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " Repeat axes not allowed.", 25);
    v46 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v49, &v47);
    std::logic_error::logic_error(v46, &v47);
    v46->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v46, off_279921408, MEMORY[0x277D82610]);
  }

  std::__tree<int>::destroy(&v48, v48.__r_.__value_.__l.__size_);
}

void sub_25A246E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::slice_update(int ***a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, mlx::core *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 8) - *a3;
  v11 = *a1;
  if (v10 != (*a1)[1] - **a1 || (v14 = *a4, v15 = a4[1], v16 = v15 - *a4, v16 != v10) || *(a5 + 8) - *a5 != v10)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v34);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "[slice_update] Invalid number of indices or strides for ", 56);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "array with dimension ", 21);
    v26 = MEMORY[0x25F851380](v25, (*a1)[1] - **a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v34, v37);
    std::logic_error::logic_error(exception, v37);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v32 = 0;
  v33 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v14, v15, v16 >> 2);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  v20 = a2[1];
  v29[0] = *a2;
  v29[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v29, *(*a1 + 14), a6, a7, v37);
  mlx::core::broadcast_to(v37, &v35, a6, a7, &v30);
  mlx::core::array::~array(v37);
  mlx::core::array::~array(v29);
  v21 = *a1;
  if ((v34 & 1) != 0 || v36 - v35 != v21[1] - *v21 || memcmp(v35, *v21, v36 - v35))
  {
    memset(v28, 0, sizeof(v28));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v28, *v21, v21[1], (v21[1] - *v21) >> 2);
    v22 = (*a1)[7];
    mlx::core::to_stream(a6, a7);
    std::allocate_shared[abi:ne200100]<mlx::core::SliceUpdate,std::allocator<mlx::core::SliceUpdate>,mlx::core::Stream,std::vector<int>,std::vector<int>,std::vector<int>,0>();
  }

  *a8 = v30;
  v30 = 0uLL;
  mlx::core::array::~array(&v30);
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_25A2472F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32)
{
  if (*(v34 - 97) < 0)
  {
    operator delete(*(v34 - 120));
    if ((v33 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a30);
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

void mlx::core::slice_update(int ***a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, mlx::core *a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  *v15 = *a3;
  v16 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *v13 = *a4;
  v14 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  std::vector<int>::vector[abi:ne200100](__p, (*a1)[1] - **a1);
  mlx::core::slice_update(a1, a2, v15, v13, __p, a5, a6, a7);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

void sub_25A2474E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::slice_update(uint64_t **a1, uint64_t **a2, uint64_t a3, int **a4, mlx::core *a5, uint64_t a6)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v11 = *a2;
  memset(__dst, 0, sizeof(__dst));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__dst, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = **a1;
  v13 = (((*a1)[1] - v12) >> 2) - (((*a2)[1] - **a2) >> 2);
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(__dst, __dst[0], v12, &v12[4 * v13], v13);
  v14 = v13;
  v15 = *a1;
  if (v13 < (((*a1)[1] - **a1) >> 2))
  {
    v16 = __dst[0];
    do
    {
      v17 = mlx::core::array::shape(a1, v14);
      v18 = v16[v14];
      if (v17 < v18)
      {
        v18 = v17;
      }

      v16 = __dst[0];
      *(__dst[0] + v14++) = v18;
      v15 = *a1;
    }

    while (v14 < ((*a1)[1] - **a1) >> 2);
  }

  v19 = *a4;
  v20 = a4[1];
  if (*a4 != v20)
  {
    v21 = __dst[0];
    do
    {
      v22 = *v19;
      if (v13 > v22)
      {
        v21[v22] = 1;
      }

      ++v19;
    }

    while (v19 != v20);
  }

  v23 = a2[1];
  v27[0] = *a2;
  v27[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
    v15 = *a1;
  }

  mlx::core::astype(v27, v15[7], a5, a6, v30);
  mlx::core::broadcast_to(v30, __dst, a5, a6, &v28);
  mlx::core::array::~array(v30);
  mlx::core::array::~array(v27);
  v24 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v24, v24[1], (v24[1] - *v24) >> 2);
  v25 = (*a1)[7];
  mlx::core::to_stream(a5, a6);
  operator new();
}

void sub_25A24789C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a24);
  for (i = 32; i != -16; i -= 16)
  {
    mlx::core::array::~array((&a25 + i));
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void mlx::core::split(uint64_t **this@<X0>, int **a2@<X1>, uint64_t a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v78[31] = *MEMORY[0x277D85DE8];
  v8 = *this;
  v9 = (*this)[1] - **this;
  if (a3 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = (v9 >> 2) + a3;
  }

  v75 = v10;
  if (v10 >= v9 >> 2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v76);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "Invalid axis (", 14);
    v55 = MEMORY[0x25F851360](v54, a3);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ") passed to split", 17);
    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " for array with shape ", 22);
    v58 = mlx::core::operator<<(v57, *this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v76, &v74);
    std::logic_error::logic_error(exception, &v74);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v13 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    if ((v12 - v13) <= 0x27)
    {
      v16 = (v13 + 1);
      while (v16 != v12)
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v16 += 4;
        if (v17 < v18)
        {
          goto LABEL_20;
        }
      }

      if (*v13 >= 1)
      {
        v20 = *(v12 - 1);
        v21 = mlx::core::array::shape(this, v10);
        v8 = *this;
        if (v20 < v21)
        {
          v22 = a2[1] - *a2;
          v23 = v8[7];
          LODWORD(v74.__r_.__value_.__l.__data_) = v23;
          v74.__r_.__value_.__s.__data_[4] = BYTE4(v23);
          std::vector<mlx::core::Dtype>::vector[abi:ne200100](&v76, v22 + 1);
          v24 = *this;
          std::vector<std::vector<int>>::vector[abi:ne200100](&v74, a2[1] - *a2 + 1);
          v25 = *a2;
          v26 = v74.__r_.__value_.__r.__words[0];
          *(*v74.__r_.__value_.__l.__data_ + 4 * v10) = **a2;
          v27 = a2[1] - v25;
          if (v27 >= 2)
          {
            v28 = (v26 + 24);
            v29 = v25 + 1;
            v30 = v27 - 1;
            do
            {
              v31 = *v28;
              v28 += 3;
              *(v31 + 4 * v10) = *v29 - *(v29 - 1);
              ++v29;
              --v30;
            }

            while (v30);
          }

          v32 = mlx::core::array::shape(this, v10) - *(a2[1] - 1);
          v72 = v74.__r_.__value_.__r.__words[0];
          v33 = *&v74.__r_.__value_.__r.__words[1];
          *(*(v74.__r_.__value_.__l.__size_ - 24) + 4 * v10) = v32;
          v73 = v33;
          memset(&v74, 0, sizeof(v74));
          v69 = mlx::core::to_stream(a4, a5);
          v70 = v34;
          std::allocate_shared[abi:ne200100]<mlx::core::Split,std::allocator<mlx::core::Split>,mlx::core::Stream,std::vector<int> const&,unsigned long &,0>();
        }
      }
    }

LABEL_20:
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v35 = (v8[1] - *v8) >> 2;
    LODWORD(v76) = 0;
    std::vector<int>::vector[abi:ne200100](&v74, v35);
    v36 = *this;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v66, *v36, v36[1], (v36[1] - *v36) >> 2);
    v37 = *a2;
    v38 = a2[1] - *a2;
    if (v38 == -4)
    {
      v39 = v66;
      if (!v66)
      {
LABEL_44:
        if (v74.__r_.__value_.__r.__words[0])
        {
          v74.__r_.__value_.__l.__size_ = v74.__r_.__value_.__r.__words[0];
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v40 = 0;
      v41 = v38 >> 2;
      do
      {
        if (v41 <= v40)
        {
          v42 = mlx::core::array::shape(this, v10);
        }

        else
        {
          v42 = v37[v40];
        }

        *(v66 + v10) = v42;
        v64 = 0;
        v65 = 0;
        v63 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v63, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_, (v74.__r_.__value_.__l.__size_ - v74.__r_.__value_.__r.__words[0]) >> 2);
        __p = 0;
        v61 = 0;
        v62 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v66, v67, (v67 - v66) >> 2);
        v43 = mlx::core::to_stream(a4, a5);
        mlx::core::slice(this, &v63, &__p, v43, v44 | 0x100000000, &v71);
        v46 = a6[1];
        v45 = a6[2];
        if (v46 >= v45)
        {
          v48 = (v46 - *a6) >> 4;
          if ((v48 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v49 = v45 - *a6;
          v50 = v49 >> 3;
          if (v49 >> 3 <= (v48 + 1))
          {
            v50 = v48 + 1;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFF0)
          {
            v51 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v50;
          }

          v78[2] = a6;
          if (v51)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a6, v51);
          }

          v76 = 0;
          v77 = (16 * v48);
          v78[1] = 0;
          *v77 = v71;
          v71 = 0uLL;
          v78[0] = 16 * v48 + 16;
          std::vector<mlx::core::array>::__swap_out_circular_buffer(a6, &v76);
          v47 = a6[1];
          std::__split_buffer<mlx::core::array>::~__split_buffer(&v76);
        }

        else
        {
          *v46 = v71;
          v47 = v46 + 1;
          v71 = 0uLL;
        }

        a6[1] = v47;
        mlx::core::array::~array(&v71);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        v39 = v66;
        *(v74.__r_.__value_.__r.__words[0] + 4 * v10) = *(v66 + v10);
        ++v40;
        v37 = *a2;
        v41 = a2[1] - *a2;
      }

      while (v41 + 1 > v40);
    }

    v67 = v39;
    operator delete(v39);
    goto LABEL_44;
  }

  v19 = this[1];
  v76 = v8;
  v77 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a6, &v76, v78, 1uLL);
  mlx::core::array::~array(&v76);
LABEL_46:
  v52 = *MEMORY[0x277D85DE8];
}

void sub_25A247F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a38);
      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

void mlx::core::split(uint64_t **this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = (*this)[1] - **this;
  v10 = (v9 >> 2) + a3;
  if (a3 >= 0)
  {
    v10 = a3;
  }

  if (v10 >= v9 >> 2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Invalid axis ", 13);
    v28 = MEMORY[0x25F851360](v27, a3);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " passed to split", 16);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " for array with shape ", 22);
    v31 = mlx::core::operator<<(v30, *this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&__p, &v41);
    std::logic_error::logic_error(exception, &v41);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v14 = mlx::core::array::shape(this, a3);
  v15 = ldiv(v14, a2);
  if (v15.rem)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Array split does not result in sub arrays with equal size:", 58);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " attempting ", 12);
    v35 = MEMORY[0x25F851360](v34, a2);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " splits along axis ", 19);
    v37 = MEMORY[0x25F851360](v36, a3);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " for shape ", 11);
    v39 = mlx::core::operator<<(v38, *this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ".", 1);
    v40 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&__p, &v41);
    std::logic_error::logic_error(v40, &v41);
    v40->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v40, off_279921408, MEMORY[0x277D82610]);
  }

  std::vector<int>::vector[abi:ne200100](&__p, a2 - 1);
  if (v43 != __p)
  {
    v16 = (v43 - __p) >> 2;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = vdupq_n_s64(v16 - 1);
    v18 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = xmmword_25A99B0C0;
    v20 = xmmword_25A99B0D0;
    v21 = __p + 8;
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(4uLL);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v17, v20));
      v25 = vaddq_s64(v20, v22);
      if (vuzp1_s16(v24, *v17.i8).u8[0])
      {
        *(v21 - 2) = v25.i32[0] * LODWORD(v15.quot);
      }

      if (vuzp1_s16(v24, *&v17).i8[2])
      {
        *(v21 - 1) = v25.i32[2] * LODWORD(v15.quot);
      }

      v26 = vaddq_s64(v19, v22);
      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v19))).i32[1])
      {
        *v21 = v26.i32[0] * LODWORD(v15.quot);
        v21[1] = v26.i32[2] * LODWORD(v15.quot);
      }

      v19 = vaddq_s64(v19, v23);
      v20 = vaddq_s64(v20, v23);
      v21 += 4;
      v18 -= 4;
    }

    while (v18);
  }

  mlx::core::split(this, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }
}

void sub_25A24842C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_25A248480(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x25A248478);
}

void mlx::core::split(uint64_t **a1@<X0>, uint64_t a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = mlx::core::to_stream(a3, a4);

  mlx::core::split(a1, a2, 0, v9, v8 | 0x100000000, a5);
}

void mlx::core::meshgrid(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a2;
  v10 = *(a3 + 23);
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (v10 != 2)
    {
      goto LABEL_52;
    }

    v11 = a3;
    if (*a3 == 31096)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3[1] != 2 || **a3 != 31096)
  {
    if (a3[1] != 2)
    {
      goto LABEL_52;
    }

    v11 = *a3;
LABEL_9:
    if (*v11 == 27241)
    {
      goto LABEL_10;
    }

LABEL_52:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[meshgrid] Invalid indexing value. Valid values are 'xy' and 'ij'.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

LABEL_10:
  v13 = *a1;
  v12 = a1[1];
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = 0;
  v14 = v12 - v13;
  v15 = v14 >> 4;
  if (v14)
  {
    v39 = a3;
    v16 = 0;
    v17 = 0;
    if (v15 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v14 >> 4;
    }

    do
    {
      *v51 = 1;
      std::vector<int>::vector[abi:ne200100](v50, v15);
      v19 = v50[0];
      *(v50[0] + v17) = -1;
      v20 = *a1;
      __p = v19;
      v48 = *&v50[1];
      memset(v50, 0, 24);
      mlx::core::reshape(v20 + v16, &__p, a4, a5, &v49);
      v22 = *(a6 + 8);
      v21 = *(a6 + 16);
      if (v22 >= v21)
      {
        v24 = (v22 - *a6) >> 4;
        if ((v24 + 1) >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v25 = v21 - *a6;
        v26 = v25 >> 3;
        if (v25 >> 3 <= (v24 + 1))
        {
          v26 = v24 + 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF0)
        {
          v27 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        v53 = a6;
        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a6, v27);
        }

        *v51 = 0;
        *&v51[8] = 16 * v24;
        v52 = 0;
        **&v51[8] = v49;
        v49 = 0uLL;
        *&v51[16] = 16 * v24 + 16;
        std::vector<mlx::core::array>::__swap_out_circular_buffer(a6, v51);
        v23 = *(a6 + 8);
        std::__split_buffer<mlx::core::array>::~__split_buffer(v51);
      }

      else
      {
        *v22 = v49;
        v23 = v22 + 1;
        v49 = 0uLL;
      }

      *(a6 + 8) = v23;
      mlx::core::array::~array(&v49);
      if (__p)
      {
        *&v48 = __p;
        operator delete(__p);
      }

      if (v50[0])
      {
        v50[1] = v50[0];
        operator delete(v50[0]);
      }

      ++v17;
      v16 += 16;
    }

    while (v18 != v17);
    a3 = v39;
    v10 = *(v39 + 23);
    v7 = a2;
  }

  if ((v10 & 0x80) != 0)
  {
    if (a3[1] != 2)
    {
      goto LABEL_48;
    }

    a3 = *a3;
  }

  else if (v10 != 2)
  {
    goto LABEL_48;
  }

  if (v15 >= 2 && *a3 == 31096)
  {
    LODWORD(v50[0]) = 1;
    std::vector<int>::vector[abi:ne200100](v51, v15);
    v28 = *a1;
    v29 = *v51;
    *(*v51 + 4) = *(**a1 + 48);
    v45 = 0;
    v46 = 0;
    v44 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v44, v29, *&v51[8], (*&v51[8] - v29) >> 2);
    mlx::core::reshape(v28, &v44, a4, a5, v50);
    v30 = *a6;
    v31 = *v50;
    v50[0] = 0;
    v50[1] = 0;
    v32 = *(v30 + 8);
    *v30 = v31;
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    mlx::core::array::~array(v50);
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    v33 = *v51;
    *(*v51 + 4) = 1;
    v34 = *a1 + 16;
    *v33 = *(*v34 + 48);
    v42 = v33;
    v43 = *&v51[8];
    memset(v51, 0, sizeof(v51));
    mlx::core::reshape(v34, &v42, a4, a5, v50);
    v35 = *a6;
    v36 = *v50;
    v50[0] = 0;
    v50[1] = 0;
    v37 = *(v35 + 24);
    *(v35 + 16) = v36;
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    mlx::core::array::~array(v50);
    if (v42)
    {
      *&v43 = v42;
      operator delete(v42);
    }

    if (*v51)
    {
      *&v51[8] = *v51;
      operator delete(*v51);
    }
  }

LABEL_48:
  if ((v7 & 1) == 0)
  {
    mlx::core::broadcast_arrays(a6, a4, a5, v51);
    std::vector<mlx::core::array>::__vdeallocate(a6);
    *a6 = *v51;
    *(a6 + 16) = *&v51[16];
    memset(v51, 0, sizeof(v51));
    v50[0] = v51;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v50);
  }
}

void sub_25A248914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 128);
  if (v26)
  {
    *(v24 - 120) = v26;
    operator delete(v26);
  }

  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void mlx::core::broadcast_arrays(uint64_t a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = (v8 - *a1) >> 4;
  if (v9 > 1)
  {
    mlx::core::Broadcast::output_shape(a1, &v24);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (mlx::core::detail::InTracing::in_dynamic_tracing(v12))
    {
      v21 = 0uLL;
      v22 = 0;
      if (*a1 != *(a1 + 8))
      {
        mlx::core::stop_gradient(*a1, a2, a3);
      }

      v26[0] = &v21;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v26);
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      if (*a1 != v14)
      {
        do
        {
          v15 = **v13;
          v16 = (*v13)[1] - v15;
          v18 = v24;
          v17 = v25;
          if (v16 != v25 - v24 || memcmp(v15, v24, v16))
          {
            memset(v23, 0, sizeof(v23));
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v23, v18, v17, (v17 - v18) >> 2);
            v19 = (*v13)[7];
            mlx::core::to_stream(a2, a3);
            std::allocate_shared[abi:ne200100]<mlx::core::Broadcast,std::allocator<mlx::core::Broadcast>,mlx::core::Stream,std::vector<int> &,0>();
          }

          std::vector<mlx::core::array>::push_back[abi:ne200100](a4, v13);
          v13 += 2;
        }

        while (v13 != v14);
      }
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v10 = *MEMORY[0x277D85DE8];

    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a4, v7, v8, v9);
  }
}

void sub_25A249040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a27);
  v39 = *(v37 - 192);
  if (v39)
  {
    *(v37 - 184) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void *mlx::core::clip@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = *(a2 + 16);
  if ((v7 & 1) == 0 && (*(a3 + 16) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "At most one of a_min and a_max may be None");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v8 = result[1];
  *a6 = *result;
  a6[1] = v8;
  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_7:
    mlx::core::maximum(a6, a2, a4, a5);
  }

  atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (*(a3 + 16) == 1)
  {
    mlx::core::minimum(a6, a3, a4, a5);
  }

  return result;
}

void mlx::core::maximum(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A2495B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::minimum(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A249904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

uint64_t mlx::core::concatenate@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v6 = *result;
  v7 = (*(result + 8) - *result) >> 4;
  if (v7 != 1)
  {
    if (v7)
    {
      v11 = result;
      v12 = ((*v6)[1] - **v6) >> 2;
      std::string::basic_string[abi:ne200100]<0>(__p, "[concatenate] ");
      v13 = mlx::core::normalize_axis_index(a2, v12, __p);
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = **v11;
      v47[1] = 0;
      v48 = 0;
      v47[0] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v47, *v14, v14[1], (v14[1] - *v14) >> 2);
      v15 = v47[0];
      *(v47[0] + v13) = 0;
      v16 = *v11;
      v17 = v11[1];
      if (*v11 != v17)
      {
        do
        {
          v18 = *v16;
          v19 = **v16;
          v20 = (*v16)[1];
          if (v20 - v19 != v47[1] - v15)
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](__p);
            v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[concatenate] All the input arrays must have the same number of ", 64);
            v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "dimensions. However, got arrays with dimensions ", 48);
            v41 = MEMORY[0x25F851380](v40, (v47[1] - v47[0]) >> 2);
            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " and ", 5);
            v43 = MEMORY[0x25F851380](v42, ((*v16)[1] - **v16) >> 2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ".", 1);
            exception = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](__p, &v49);
            std::logic_error::logic_error(exception, &v49);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
          }

          if (v20 != v19)
          {
            v21 = 0;
            do
            {
              if (v13 != v21)
              {
                v22 = mlx::core::array::shape(v16, v21);
                if (v22 != *(v47[0] + v21))
                {
                  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
                  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[concatenate] All the input array dimensions must match exactly ", 64);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "except for the concatenation axis. However, the provided shapes are ", 68);
                  v33 = *v11;
                  v34 = v11[1];
                  if (*v11 != v34)
                  {
                    do
                    {
                      v35 = mlx::core::operator<<(__p, *v33);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", ", 2);
                      v33 += 2;
                    }

                    while (v33 != v34);
                  }

                  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "and the concatenation axis is ", 30);
                  v37 = MEMORY[0x25F851360](v36, a2);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ".", 1);
                  v38 = __cxa_allocate_exception(0x10uLL);
                  std::ostringstream::str[abi:ne200100](__p, &v49);
                  std::logic_error::logic_error(v38, &v49);
                  v38->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v38, off_279921408, MEMORY[0x277D82610]);
                }

                v18 = *v16;
                v19 = **v16;
              }

              ++v21;
            }

            while (v21 < (v18[1] - v19) >> 2);
          }

          v23 = mlx::core::array::shape(v16, v13);
          v15 = v47[0];
          *(v47[0] + v13) += v23;
          v16 += 2;
        }

        while (v16 != v17);
      }

      v24 = mlx::core::result_type(v11);
      v25 = *v11;
      v26 = v11[1];
      v27 = v24;
      if (*v11 != v26)
      {
        do
        {
          v28 = v25[1];
          v46[0] = *v25;
          v46[1] = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
          }

          mlx::core::astype(v46, v27, a3, a4, __p);
          v29 = *__p;
          __p[0] = 0;
          __p[1] = 0;
          v30 = v25[1];
          *v25 = v29;
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          mlx::core::array::~array(__p);
          mlx::core::array::~array(v46);
          v25 += 2;
        }

        while (v25 != v26);
      }

      v47[1] = 0;
      v48 = 0;
      v47[0] = 0;
      mlx::core::to_stream(a3, a4);
      operator new();
    }

    v45 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v45, "[concatenate] No arrays provided for concatenation");
    __cxa_throw(v45, off_279921408, MEMORY[0x277D82610]);
  }

  *a5 = *v6;
  v31 = v6[1];
  a5[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A249EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((v48 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a30);
      if (a21)
      {
        operator delete(a21);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v47);
  goto LABEL_6;
}

void mlx::core::concatenate(uint64_t *a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    do
    {
      mlx::core::flatten(v8, 0, ((*(*v8 + 8) - **v8) >> 2) - 1, a2, a3, &v13);
      v10 = v13;
      v13 = 0uLL;
      v11 = *(v8 + 8);
      *v8 = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      mlx::core::array::~array(&v13);
      v8 += 16;
    }

    while (v8 != v9);
    v8 = *a1;
    v9 = a1[1];
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = a1[2];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  mlx::core::concatenate(v12, 0, a2, a3, a4);
  *&v13 = v12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_25A24A1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::stack(const void ****a1@<X0>, uint64_t a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a1;
  if (*a1 == v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[stack] No arrays provided for stacking");
LABEL_12:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v13 = **v7;
  v14 = (*v7)[1] - v13;
  do
  {
    v15 = **v7;
    if (v14 != (*v7)[1] - v15 || memcmp(v13, v15, v14))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[stack] All arrays must have the same shape");
      goto LABEL_12;
    }

    v7 += 2;
  }

  while (v7 != v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, "[stack] ");
  v16 = mlx::core::normalize_axis_index(a2, (v14 >> 2) + 1, &__p);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<mlx::core::array>::reserve(&v19, (a1[1] - *a1) >> 4);
  if (*a1 != a1[1])
  {
    mlx::core::expand_dims(*a1, v16, a3, a4);
  }

  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v18, v19, v20, (v20 - v19) >> 4);
  mlx::core::concatenate(v18, a2, a3, a4, a5);
  __p = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void *std::vector<mlx::core::array>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25A24A5A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void mlx::core::repeat(uint64_t **a1@<X0>, std::vector<int>::value_type a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  __x = a2;
  v12 = ((*a1)[1] - **a1) >> 2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "[repeat] ");
  v13 = mlx::core::normalize_axis_index(a3, v12, &__p);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[repeat] Number of repeats cannot be negative");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (a2 == 1)
  {
    v14 = a1[1];
    *a6 = *a1;
    a6[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (a2)
    {
      v15 = *a1;
      memset(&__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v15, v15[1], (v15[1] - *v15) >> 2);
      v16.__i_ = &__p.__begin_[v13 + 1];
      std::vector<int>::insert(&__p, v16, &__x);
      mlx::core::expand_dims(a1, v13 + 1, a4, a5);
    }

    mlx::core::array::array(a6, 0, 0, (*a1)[7] & 0xFFFFFFFFFFLL);
  }
}

void sub_25A24A824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(v20);
  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int const&>(&v26, __x);
    v16.__i_ = v27;
    memcpy(v28, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v27;
    *&v28 = v28 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
      v9 = this->__end_;
    }

    v23 = v9 <= __x || i > __x;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *i = __x[v24];
  }

  return i;
}

void sub_25A24AA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::repeat(uint64_t **a1@<X0>, std::vector<int>::value_type a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  mlx::core::flatten(a1, 0, (((*a1)[1] - **a1) >> 2) - 1, a3, a4, v9);
  mlx::core::repeat(v9, a2, 0, a3, a4, a5);
  mlx::core::array::~array(v9);
}

void mlx::core::tile(uint64_t **a1@<X0>, std::vector<int> *a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v10 = *a1;
  memset(&v35, 0, sizeof(v35));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v35, *v10, v10[1], (v10[1] - *v10) >> 2);
  begin = a2->__begin_;
  v12 = a2->__end_ - a2->__begin_;
  v13.__i_ = v35.__begin_;
  end = v35.__end_;
  v15 = v35.__end_ - v35.__begin_;
  if (v15 > v12)
  {
    __x[0] = 1;
    v16.__i_ = begin;
    std::vector<int>::insert(a2, v16, v15 - v12, __x);
    v13.__i_ = v35.__begin_;
    end = v35.__end_;
    v12 = a2->__end_ - a2->__begin_;
    v15 = v35.__end_ - v35.__begin_;
  }

  if (v12 > v15)
  {
    __x[0] = 1;
    std::vector<int>::insert(&v35, v13, v12 - v15, __x);
    v13.__i_ = v35.__begin_;
    end = v35.__end_;
  }

  v34 = 0;
  v17 = 0uLL;
  *__x = 0u;
  v32 = 0;
  *v31 = 0u;
  v30 = 0;
  *v29 = 0u;
  if (end == v13.__i_)
  {
    v20 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      if (a2->__begin_[v18] != 1)
      {
        LODWORD(v28) = 1;
        std::vector<int>::push_back[abi:ne200100](__x, &v28);
        std::vector<int>::push_back[abi:ne200100](v31, &a2->__begin_[v18]);
        v13.__i_ = v35.__begin_;
      }

      std::vector<int>::push_back[abi:ne200100](__x, &v13.__i_[v18]);
      std::vector<int>::push_back[abi:ne200100](v31, &v35.__begin_[v18]);
      LODWORD(v28) = v35.__begin_[v18] * a2->__begin_[v18];
      std::vector<int>::push_back[abi:ne200100](v29, &v28);
      ++v19;
      v13.__i_ = v35.__begin_;
      ++v18;
    }

    while (v19 < v35.__end_ - v35.__begin_);
    v17 = *__x;
    v20 = v34;
  }

  *__p = v17;
  v27 = v20;
  v34 = 0;
  memset(__x, 0, sizeof(__x));
  mlx::core::reshape(a1, __p, a3, a4, &v28);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  mlx::core::broadcast_to(&v28, v31, a3, a4, &v25);
  v21 = v25;
  v25 = 0uLL;
  v22 = *(&v28 + 1);
  v28 = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  mlx::core::array::~array(&v25);
  *v23 = *v29;
  v24 = v30;
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  mlx::core::reshape(&v28, v23, a3, a4, a5);
  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  mlx::core::array::~array(&v28);
  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  if (*__x)
  {
    *&__x[2] = *__x;
    operator delete(*__x);
  }

  if (v35.__begin_)
  {
    v35.__end_ = v35.__begin_;
    operator delete(v35.__begin_);
  }
}

void sub_25A24ADB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  v27 = *(v25 - 104);
  if (v27)
  {
    *(v25 - 96) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  if (!__n)
  {
    return __position.__i_;
  }

  v5 = __x;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    v15 = end - __position.__i_;
    v16 = this->__end_;
    v17 = __n;
    if (__n <= end - __position.__i_)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v17 = v15 >> 2;
    v16 = &end[__n - (v15 >> 2)];
    v19 = *__x;
    v20 = (4 * __n - v15 - 4) >> 2;
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v20);
    v23 = (end + 2);
    do
    {
      v24 = vdupq_n_s64(v18);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_25A99B0D0)));
      if (vuzp1_s16(v25, *v22.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(v25, *&v22).i8[2])
      {
        *(v23 - 1) = v19;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_25A99B0C0)))).i32[1])
      {
        *v23 = v19;
        v23[1] = v19;
      }

      v18 += 4;
      v23 += 4;
    }

    while (v21 != v18);
    this->__end_ = v16;
    if (end != __position.__i_)
    {
LABEL_21:
      v26 = &__position.__i_[__n];
      v27 = &v16[-__n];
      v28 = v16;
      if (v27 < end)
      {
        v28 = v16;
        do
        {
          v29 = *v27++;
          *v28++ = v29;
        }

        while (v27 < end);
      }

      this->__end_ = v28;
      if (v16 != v26)
      {
        memmove(&__position.__i_[__n], __position.__i_, v16 - v26);
      }

      if (__position.__i_ <= v5)
      {
        if (this->__end_ <= v5)
        {
          v30 = 0;
        }

        else
        {
          v30 = __n;
        }

        v5 += v30;
      }

      v31 = 0;
      v32 = *v5;
      v33 = vdupq_n_s64(v17 - 1);
      v34 = (__position.__i_ + 2);
      do
      {
        v35 = vdupq_n_s64(v31);
        v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_25A99B0D0)));
        if (vuzp1_s16(v36, *v33.i8).u8[0])
        {
          *(v34 - 2) = v32;
        }

        if (vuzp1_s16(v36, *&v33).i8[2])
        {
          *(v34 - 1) = v32;
        }

        if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_25A99B0C0)))).i32[1])
        {
          *v34 = v32;
          v34[1] = v32;
        }

        v31 += 4;
        v34 += 4;
      }

      while (((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
    }

    return __position.__i_;
  }

  begin = this->__begin_;
  v11 = __n + end - this->__begin_;
  if (v11 >> 62)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = __position.__i_ - begin;
  v13 = value - begin;
  if (v13 >> 1 > v11)
  {
    v11 = v13 >> 1;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v14 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v14);
  }

  v38 = 0;
  v37 = 4 * (v12 >> 2);
  v39 = *__x;
  v40 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v41 = vdupq_n_s64(v40);
  v42 = v40 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v43 = (v37 + 8);
  do
  {
    v44 = vdupq_n_s64(v38);
    v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_25A99B0D0)));
    if (vuzp1_s16(v45, *v41.i8).u8[0])
    {
      *(v43 - 2) = v39;
    }

    if (vuzp1_s16(v45, *&v41).i8[2])
    {
      *(v43 - 1) = v39;
    }

    if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_25A99B0C0)))).i32[1])
    {
      *v43 = v39;
      v43[1] = v39;
    }

    v38 += 4;
    v43 += 4;
  }

  while (v42 != v38);
  memcpy((v37 + 4 * __n), __position.__i_, this->__end_ - __position.__i_);
  v46 = this->__begin_;
  v47 = (v37 + 4 * __n + this->__end_ - __position.__i_);
  this->__end_ = __position.__i_;
  v48 = (__position.__i_ - v46);
  v49 = (v37 - (__position.__i_ - v46));
  memcpy(v49, v46, v48);
  v50 = this->__begin_;
  this->__begin_ = v49;
  this->__end_ = v47;
  this->__end_cap_.__value_ = 0;
  if (v50)
  {
    operator delete(v50);
  }

  return v37;
}

void sub_25A24B6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36)
{
  v38 = *(v36 - 152);
  if (v38)
  {
    *(v36 - 144) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 128);
  if (v39)
  {
    *(v36 - 120) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 104);
  if (v40)
  {
    *(v36 - 96) = v40;
    operator delete(v40);
  }

  mlx::core::array::~array((v36 - 80));
  _Unwind_Resume(a1);
}

void mlx::core::pad(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, mlx::core *a7, uint64_t a8)
{
  v55[33] = *MEMORY[0x277D85DE8];
  v9 = a2[1] - *a2;
  if (v9 != a3[1] - *a3 || v9 != a4[1] - *a4)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v55);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Invalid number of padding sizes passed to pad ", 46);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "with axes of size ", 18);
    MEMORY[0x25F851380](v45, (a2[1] - *a2) >> 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v55, &v54);
    std::logic_error::logic_error(exception, &v54);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v16 = *a1;
  memset(&v54, 0, sizeof(v54));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v54, *v16, v16[1], (v16[1] - *v16) >> 2);
  v18 = *a2;
  v19 = a2[1] - *a2;
  if (v19)
  {
    v20 = 0;
    v21 = v19 >> 2;
    v22 = *a3;
    v23 = *a4;
    v24 = *a1;
    v25 = v54.__r_.__value_.__r.__words[0];
    if (v21 <= 1)
    {
      v21 = 1;
    }

    do
    {
      v26 = *(v22 + 4 * v20);
      if (v26 < 0)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v55);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Invalid low padding size (", 26);
        v33 = MEMORY[0x25F851360](v32, *(*a3 + 4 * v20));
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") passed to pad", 15);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " for axis ", 10);
        v36 = MEMORY[0x25F851360](v35, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ". Padding sizes must be non-negative", 36);
        v37 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v55, &v53);
        std::logic_error::logic_error(v37, &v53);
        v37->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v37, off_279921408, MEMORY[0x277D82610]);
      }

      v27 = *(v23 + 4 * v20);
      if (v27 < 0)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v55);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Invalid high padding size (", 27);
        v39 = MEMORY[0x25F851360](v38, *(*a4 + 4 * v20));
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ") passed to pad", 15);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " for axis ", 10);
        v42 = MEMORY[0x25F851360](v41, v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ". Padding sizes must be non-negative", 36);
        v43 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v55, &v53);
        std::logic_error::logic_error(v43, &v53);
        v43->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v43, off_279921408, MEMORY[0x277D82610]);
      }

      v28 = *(v18 + 4 * v20);
      if ((v28 & 0x80000000) != 0)
      {
        v28 += (v24[1] - *v24) >> 2;
      }

      *(v25 + 4 * v28) += v27 + v26;
      ++v20;
    }

    while (v21 != v20);
  }

  if (*(a6 + 23) < 0)
  {
    if (*(a6 + 8) == 8 && **a6 == 0x746E6174736E6F63)
    {
LABEL_15:
      memset(&v54, 0, sizeof(v54));
      v31 = *(*a1 + 56);
      mlx::core::to_stream(a7, a8);
      std::allocate_shared[abi:ne200100]<mlx::core::Pad,std::allocator<mlx::core::Pad>,mlx::core::Stream,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,0>();
    }

    if (*(a6 + 8) != 4)
    {
LABEL_25:
      std::ostringstream::basic_ostringstream[abi:ne200100](v55);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Invalid padding mode (", 22);
      v48 = *(a6 + 23);
      if (v48 >= 0)
      {
        v49 = a6;
      }

      else
      {
        v49 = *a6;
      }

      if (v48 >= 0)
      {
        v50 = *(a6 + 23);
      }

      else
      {
        v50 = *(a6 + 8);
      }

      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ") passed to pad", 15);
      v52 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v55, &v53);
      std::logic_error::logic_error(v52, &v53);
      v52->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v52, off_279921408, MEMORY[0x277D82610]);
    }

    v30 = *a6;
  }

  else
  {
    v29 = *(a6 + 23);
    v30 = a6;
    if (v29 != 4)
    {
      if (v29 == 8 && *a6 == 0x746E6174736E6F63)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  if (*v30 == 1701274725)
  {
    mlx::core::edge_pad(a1, v17, a3, a4, &v54);
  }

  goto LABEL_25;
}