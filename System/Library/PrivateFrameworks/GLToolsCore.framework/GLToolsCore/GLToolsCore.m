void *GPUTools::SM::GL::operator<<(void *a1, int *a2)
{
  v3 = *a2;
  if (*a2 == 1)
  {
    v4 = "GL_ONE";
    v5 = a1;
    v6 = 6;
  }

  else if (v3)
  {
    v7 = dy_string_from_enum(v3);
    v6 = strlen(v7);
    v5 = a1;
    v4 = v7;
  }

  else
  {
    v4 = "GL_ZERO";
    v5 = a1;
    v6 = 7;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4, v6);
  return a1;
}

{
  v3 = dy_string_from_enum(*a2);
  v4 = strlen(v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  return a1;
}

{
  v2 = a1;
  if (*a2)
  {
    v3 = dy_string_from_enum(*a2);
    v4 = strlen(v3);
    a1 = v2;
    v5 = v3;
  }

  else
  {
    v5 = "GL_NO_ERROR";
    v4 = 11;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v5, v4);
  return v2;
}

void *GPUTools::SM::GL::operator<<(void *a1, _DWORD *a2)
{
  if (*a2)
  {
    v3 = "GL_TRUE";
    v4 = 7;
  }

  else
  {
    v3 = "GL_FALSE";
    v4 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C255670](v13, a1);
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

  MEMORY[0x24C255680](v13);
  return a1;
}

void sub_24C0F303C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C255680](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24C0F301CLL);
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

void sub_24C0F3270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *GPUTools::SM::GL::BindingPoint::BindingPoint(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void sub_24C0F401C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x24C255700](v8, 0x10B0C40F47DA5FCLL);
  std::unique_ptr<GPUTools::FD::Function>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

GPUTools::FD::Function *std::unique_ptr<GPUTools::FD::Function>::reset[abi:ne200100](GPUTools::FD::Function **a1, GPUTools::FD::Function *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    GPUTools::FD::Function::~Function(result);

    JUMPOUT(0x24C255700);
  }

  return result;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

const char *dy_string_from_error(int a1)
{
  if (!a1)
  {
    return "no error";
  }

  if (a1 == 32817)
  {
    return "table too large";
  }

  if ((a1 - 1280) > 6)
  {
    return 0;
  }

  return gGLErrorStrings[a1 - 1280];
}

char *format_bitfield(void *a1, uint64_t a2, unsigned int a3, int a4, char *__s, size_t __size)
{
  v7 = __s;
  if (!a3)
  {
    if (!__s)
    {
      __size = 2;
      v7 = malloc_type_malloc(2uLL, 0xAD65C89DuLL);
    }

    strlcpy(v7, "0", __size);
    return v7;
  }

  v8 = a2;
  v9 = a1;
  if (!a2)
  {
    v12 = a3;
    if (__s)
    {
      *__s = 0;
LABEL_37:
      v28 = strlen(v7);
      snprintf(&v7[v28], __size - v28, "0x%lx", v12);
      return v7;
    }

    v25 = a4;
    v22 = 1;
    v20 = a3;
    goto LABEL_21;
  }

  if (a2 == 1)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v15 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v16 = a1;
    do
    {
      v13 |= *v16;
      v14 |= v16[5];
      v16 += 10;
      v15 -= 2;
    }

    while (v15);
    v11 = v14 | v13;
    if (v10 == a2)
    {
      goto LABEL_12;
    }
  }

  v17 = a2 - v10;
  v18 = &a1[5 * v10];
  do
  {
    v19 = *v18;
    v18 += 5;
    v11 |= v19;
    --v17;
  }

  while (v17);
LABEL_12:
  v20 = a3;
  v12 = ~v11 & a3;
  if (__s)
  {
    goto LABEL_25;
  }

  v21 = 4;
  if (!a4)
  {
    v21 = 2;
  }

  v22 = 1;
  v23 = a1;
  v24 = a2;
  do
  {
    if ((*v23 & a3) != 0)
    {
      v22 += v23[v21] + 3;
    }

    v23 += 5;
    --v24;
  }

  while (v24);
  v25 = a4;
LABEL_21:
  if (v12)
  {
    __size = v22 + 13;
  }

  else
  {
    __size = v22;
  }

  v7 = malloc_type_malloc(__size, 0x2A55EB37uLL);
  a4 = v25;
LABEL_25:
  *v7 = 0;
  v26 = 0;
  if (v8)
  {
    if (a4)
    {
      v27 = 3;
    }

    else
    {
      v27 = 1;
    }

    do
    {
      if ((*v9 & v20) != 0)
      {
        if (v26)
        {
          strlcat(v7, " | ", __size);
        }

        strlcat(v7, v9[v27], __size);
        v26 = 1;
      }

      v9 += 5;
      --v8;
    }

    while (v8);
  }

  if (v12)
  {
    if (v26)
    {
      strlcat(v7, " | ", __size);
    }

    goto LABEL_37;
  }

  return v7;
}

char *dy_string_from_pipeline_stages(unsigned int a1, int a2, char *__s, size_t __size)
{
  v4 = __size;
  v5 = __s;
  if (a1 == -1)
  {
    if (!__s)
    {
      v4 = 8;
      v5 = malloc_type_malloc(8uLL, 0x3C58335uLL);
    }

    if (a2)
    {
      v8 = "AllShaders";
    }

    else
    {
      v8 = "GL_ALL_SHADER_BITS";
    }

    strlcpy(v5, v8, v4);
    return v5;
  }

  else
  {

    return format_bitfield(dy_string_from_pipeline_stages_pipeline_stages_bits, 5, a1, a2, __s, __size);
  }
}

char *dy_string_from_client_attrib_mask(unsigned int a1, int a2, char *__s, size_t __size)
{
  v4 = __size;
  v5 = __s;
  if (a1 == -1)
  {
    if (!__s)
    {
      v4 = 8;
      v5 = malloc_type_malloc(8uLL, 0x5765C73CuLL);
    }

    if (a2)
    {
      v8 = "ClientAllAttribs";
    }

    else
    {
      v8 = "GL_CLIENT_ALL_ATTRIB_BITS";
    }

    strlcpy(v5, v8, v4);
    return v5;
  }

  else
  {

    return format_bitfield(dy_string_from_client_attrib_mask_client_attrib_bits, 2, a1, a2, __s, __size);
  }
}

char *dy_string_from_attrib_mask(unsigned int a1, int a2, char *__s, size_t __size)
{
  v4 = __size;
  v5 = __s;
  if (a1 == 0xFFFFF)
  {
    if (!__s)
    {
      v4 = 8;
      v5 = malloc_type_malloc(8uLL, 0x322AF755uLL);
    }

    if (a2)
    {
      v7 = "AllAttribs";
    }

    else
    {
      v7 = "GL_ALL_ATTRIB_BITS";
    }

    strlcpy(v5, v7, v4);
    return v5;
  }

  else
  {

    return format_bitfield(dy_string_from_attrib_mask_attrib_bits, 20, a1, a2, __s, __size);
  }
}

const char *dy_glsl_type_string_from_enum(int a1)
{
  if (a1 > 35663)
  {
    switch(a1)
    {
      case 35664:
        result = "vec2";
        break;
      case 35665:
        result = "vec3";
        break;
      case 35666:
        result = "vec4";
        break;
      case 35667:
        result = "ivec2";
        break;
      case 35668:
        result = "ivec3";
        break;
      case 35669:
        result = "ivec4";
        break;
      case 35670:
        result = "BOOL";
        break;
      case 35671:
        result = "bvec2";
        break;
      case 35672:
        result = "bvec3";
        break;
      case 35673:
        result = "bvec4";
        break;
      case 35674:
        result = "mat2";
        break;
      case 35675:
        result = "mat3";
        break;
      case 35676:
        result = "mat4";
        break;
      case 35677:
      case 35681:
      case 35683:
      case 35684:
        return "Unknown";
      case 35678:
        result = "sampler2D";
        break;
      case 35679:
        result = "sampler3D";
        break;
      case 35680:
        result = "samplerCube";
        break;
      case 35682:
        result = "sampler2DShadow";
        break;
      case 35685:
        result = "mat2x3";
        break;
      case 35686:
        result = "mat2x4";
        break;
      case 35687:
        result = "mat3x2";
        break;
      case 35688:
        result = "mat3x4";
        break;
      case 35689:
        result = "mat4x2";
        break;
      case 35690:
        result = "mat4x3";
        break;
      default:
        switch(a1)
        {
          case 36289:
            result = "sampler2DArray";
            break;
          case 36292:
            result = "sampler2DArrayShadow";
            break;
          case 36293:
            result = "samplerCubeShadow";
            break;
          case 36294:
            result = "uvec2";
            break;
          case 36295:
            result = "uvec3";
            break;
          case 36296:
            result = "uvec4";
            break;
          case 36298:
            result = "isampler2D";
            break;
          case 36299:
            result = "isampler3D";
            break;
          case 36300:
            result = "isamplerCube";
            break;
          case 36303:
            result = "isampler2DArray";
            break;
          case 36306:
            result = "usampler2D";
            break;
          case 36307:
            result = "usampler3D";
            break;
          case 36308:
            result = "usamplerCube";
            break;
          case 36311:
            result = "usampler2DArray";
            break;
          default:
            return "Unknown";
        }

        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 5124:
        return "int";
      case 5125:
        return "uint";
      case 5126:
        return "float";
      default:
        return "Unknown";
    }
  }

  return result;
}

const char *dy_short_tex_target_string_from_enum(int a1)
{
  if (a1 > 34066)
  {
    if (a1 != 35866)
    {
      if (a1 == 34067)
      {
        return "Cube Map";
      }

      return "Unknown";
    }

    return "2D Array";
  }

  else
  {
    if (a1 != 3553)
    {
      if (a1 == 32879)
      {
        return "3D";
      }

      return "Unknown";
    }

    return "2D";
  }
}

const char *dy_short_cube_face_string_from_enum(int a1)
{
  if ((a1 - 34069) > 5)
  {
    return "Unknown";
  }

  else
  {
    return off_27916F020[a1 - 34069];
  }
}

const char *dy_binding_point_string_from_enum(int a1)
{
  if (a1 > 35724)
  {
    if (a1 > 36009)
    {
      if (a1 > 36661)
      {
        if (a1 == 36662)
        {
          return "Copy Read Buffer";
        }

        if (a1 == 36663)
        {
          return "Copy Write Buffer";
        }
      }

      else
      {
        if (a1 == 36010)
        {
          return "Read Framebuffer";
        }

        if (a1 == 36389)
        {
          return "Transform Feedback";
        }
      }
    }

    else if (a1 > 36005)
    {
      if (a1 == 36006)
      {
        return "Draw Framebuffer";
      }

      if (a1 == 36007)
      {
        return "Renderbuffer";
      }
    }

    else
    {
      if (a1 == 35725)
      {
        return "Current Program";
      }

      if (a1 == 35983)
      {
        return "Transform Feedback Buffer";
      }
    }
  }

  else if (a1 > 35052)
  {
    if (a1 > 35096)
    {
      if (a1 == 35097)
      {
        return "Sampler";
      }

      if (a1 == 35368)
      {
        return "Uniform Buffer";
      }
    }

    else
    {
      if (a1 == 35053)
      {
        return "Pixel Pack Buffer";
      }

      if (a1 == 35055)
      {
        return "Pixel Unpack Buffer";
      }
    }
  }

  else if (a1 > 34963)
  {
    if (a1 == 34964)
    {
      return "Array Buffer";
    }

    if (a1 == 34965)
    {
      return "Element Array Buffer";
    }
  }

  else
  {
    if (a1 == 33370)
    {
      return "Program Pipeline";
    }

    if (a1 == 34229)
    {
      return "Vertex Array";
    }
  }

  return "Unknown";
}

const char *dy_buffer_string_from_enum(int a1)
{
  if (a1 > 35344)
  {
    if (a1 > 36661)
    {
      if (a1 == 36663)
      {
        return "Copy Write Buffer";
      }

      if (a1 == 36662)
      {
        return "Copy Read Buffer";
      }
    }

    else
    {
      if (a1 == 35345)
      {
        return "Uniform Buffer";
      }

      if (a1 == 35982)
      {
        return "TF Buffer";
      }
    }
  }

  else if (a1 > 35050)
  {
    if (a1 == 35051)
    {
      return "Pixel Pack Buffer";
    }

    if (a1 == 35052)
    {
      return "Pixel Unpack Buffer";
    }
  }

  else
  {
    if (a1 == 34962)
    {
      return "Array Buffer";
    }

    if (a1 == 34963)
    {
      return "Element Array Buffer";
    }
  }

  return "Buffer";
}

const char *dy_query_target_string_from_enum(int a1)
{
  v1 = &unk_24C1371BE;
  if (a1 == 36202)
  {
    v1 = "Any Samples Passed Conservative";
  }

  if (a1 == 35976)
  {
    v2 = "Transform Feedback Primitives Written";
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 35887)
  {
    return "Any Samples Passed";
  }

  else
  {
    return v2;
  }
}

void sub_24C0F7478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24C0F8780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
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

void sub_24C0F8CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t DYGetGLGuestAppClient()
{
  result = _guestAppClientGL;
  if (!_guestAppClientGL)
  {
    DYGetGLGuestAppClient_cold_1();
  }

  return result;
}

id DYSetGLGuestAppClient(void *a1)
{
  result = a1;
  _guestAppClientGL = result;
  return result;
}

uint64_t DYSetContextRemappingBlock(uint64_t a1)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v2 = g_interpose_api;

  return MEMORY[0x282162460](a1, v2);
}

uint64_t init_interpose_api(void *a1)
{
  v1 = DYGetGLInterposeDylibPath();
  v2 = dlopen(v1, 272);
  if (!v2)
  {
    init_interpose_api();
LABEL_20:
    v5 = dy_abort();
    return DYHarvestRenderbuffer(v5);
  }

  v3 = v2;
  g_interpose_api = dlsym(v2, "add_per_function_profiling_data");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "HarvestRenderbuffer");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "HarvestRenderbufferInfo");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "ReserveGLObjectsAPI");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "ReserveGLVAOsAPI");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "ReserveGLProgramAPI");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "ReserveGLShaderAPI");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "ReserveGLFenceSyncAPI");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "CreatePrivateGLProgram");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "CreatePrivateGLShader");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "CreatePrivateGLProgramPipeline");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "gDYContextRemappingBlock");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "gDYResourceUpdateCallbackBlock");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  g_interpose_api = dlsym(v3, "gEncodeNameReservationSPI");
  if (!g_interpose_api)
  {
    goto LABEL_20;
  }

  return dlclose(v3);
}

uint64_t DYHarvestRenderbuffer(uint64_t a1, uint64_t a2)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v4 = g_interpose_api;

  return v4(a1, a2);
}

uint64_t DYHarvestRenderbufferInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v8 = g_interpose_api;

  return v8(a1, a2, a3, a4);
}

uint64_t DYAddPerFunctionProfilingData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v6 = g_interpose_api;

  return v6(a1, a2, a3);
}

void DYSetNameReservationEncoding(char a1)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  *g_interpose_api = a1;
}

uint64_t DYReserveGLVAOs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v6 = g_interpose_api;

  return v6(a1, a2, a3);
}

uint64_t DYReserveGLProgram(uint64_t a1, uint64_t a2)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v4 = g_interpose_api;

  return v4(a1, a2);
}

uint64_t DYReserveGLShader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v6 = g_interpose_api;

  return v6(a1, a2, a3);
}

uint64_t DYReserveGLFenceSync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v8 = g_interpose_api;

  return v8(a1, a2, a3, a4);
}

uint64_t DYCreatePrivateGLProgram(uint64_t a1)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v2 = g_interpose_api;

  return v2(a1);
}

uint64_t DYCreatePrivateGLShader(uint64_t a1, uint64_t a2)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v4 = g_interpose_api;

  return v4(a1, a2);
}

uint64_t DYCreatePrivateGLProgramPipeline(uint64_t a1)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v2 = g_interpose_api;

  return v2(a1);
}

uint64_t DYSetResourceUpdateCallbackBlock(uint64_t a1)
{
  if (g_interpose_api_once != -1)
  {
    DYSetContextRemappingBlock_cold_1();
  }

  v2 = g_interpose_api;

  return MEMORY[0x282162460](a1, v2);
}

const char *dy_string_from_enum(int a1)
{
  if (a1 > 24719)
  {
    if (a1 < 0x10000)
    {
      switch(a1)
      {
        case 24720:
          result = "GL_PN_TRIANGLES_ATI";
          break;
        case 24721:
          result = "GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI";
          break;
        case 24722:
          result = "GL_PN_TRIANGLES_POINT_MODE_ATI";
          break;
        case 24723:
          result = "GL_PN_TRIANGLES_NORMAL_MODE_ATI";
          break;
        case 24724:
          result = "GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI";
          break;
        case 24725:
          result = "GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI";
          break;
        case 24726:
          result = "GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI";
          break;
        case 24727:
          result = "GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI";
          break;
        case 24728:
          result = "GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI";
          break;
        case 24755:
          result = "GL_POINT_CULL_MODE_ATI";
          break;
        case 24756:
          result = "GL_POINT_CULL_CENTER_ATI";
          break;
        case 24757:
          result = "GL_POINT_CULL_CLIP_ATI";
          break;
        case 32768:
          result = "GL_ABGR_EXT";
          break;
        case 32769:
          result = "GL_CONSTANT_COLOR";
          break;
        case 32770:
          result = "GL_ONE_MINUS_CONSTANT_COLOR";
          break;
        case 32771:
          result = "GL_CONSTANT_ALPHA";
          break;
        case 32772:
          result = "GL_ONE_MINUS_CONSTANT_ALPHA";
          break;
        case 32773:
          result = "GL_BLEND_COLOR";
          break;
        case 32774:
          result = "GL_FUNC_ADD";
          break;
        case 32775:
          result = "GL_MIN";
          break;
        case 32776:
          result = "GL_MAX";
          break;
        case 32777:
          result = "GL_BLEND_EQUATION_RGB";
          break;
        case 32778:
          result = "GL_FUNC_SUBTRACT";
          break;
        case 32779:
          result = "GL_FUNC_REVERSE_SUBTRACT";
          break;
        case 32784:
          result = "GL_CONVOLUTION_1D";
          break;
        case 32785:
          result = "GL_CONVOLUTION_2D";
          break;
        case 32786:
          result = "GL_SEPARABLE_2D";
          break;
        case 32787:
          result = "GL_CONVOLUTION_BORDER_MODE";
          break;
        case 32788:
          result = "GL_CONVOLUTION_FILTER_SCALE";
          break;
        case 32789:
          result = "GL_CONVOLUTION_FILTER_BIAS";
          break;
        case 32790:
          result = "GL_REDUCE";
          break;
        case 32791:
          result = "GL_CONVOLUTION_FORMAT";
          break;
        case 32792:
          result = "GL_CONVOLUTION_WIDTH";
          break;
        case 32793:
          result = "GL_CONVOLUTION_HEIGHT";
          break;
        case 32794:
          result = "GL_MAX_CONVOLUTION_WIDTH";
          break;
        case 32795:
          result = "GL_MAX_CONVOLUTION_HEIGHT";
          break;
        case 32796:
          result = "GL_POST_CONVOLUTION_RED_SCALE";
          break;
        case 32797:
          result = "GL_POST_CONVOLUTION_GREEN_SCALE";
          break;
        case 32798:
          result = "GL_POST_CONVOLUTION_BLUE_SCALE";
          break;
        case 32799:
          result = "GL_POST_CONVOLUTION_ALPHA_SCALE";
          break;
        case 32800:
          result = "GL_POST_CONVOLUTION_RED_BIAS";
          break;
        case 32801:
          result = "GL_POST_CONVOLUTION_GREEN_BIAS";
          break;
        case 32802:
          result = "GL_POST_CONVOLUTION_BLUE_BIAS";
          break;
        case 32803:
          result = "GL_POST_CONVOLUTION_ALPHA_BIAS";
          break;
        case 32804:
          result = "GL_HISTOGRAM";
          break;
        case 32805:
          result = "GL_PROXY_HISTOGRAM";
          break;
        case 32806:
          result = "GL_HISTOGRAM_WIDTH";
          break;
        case 32807:
          result = "GL_HISTOGRAM_FORMAT";
          break;
        case 32808:
          result = "GL_HISTOGRAM_RED_SIZE";
          break;
        case 32809:
          result = "GL_HISTOGRAM_GREEN_SIZE";
          break;
        case 32810:
          result = "GL_HISTOGRAM_BLUE_SIZE";
          break;
        case 32811:
          result = "GL_HISTOGRAM_ALPHA_SIZE";
          break;
        case 32812:
          result = "GL_HISTOGRAM_LUMINANCE_SIZE";
          break;
        case 32813:
          result = "GL_HISTOGRAM_SINK";
          break;
        case 32814:
          result = "GL_MINMAX";
          break;
        case 32815:
          result = "GL_MINMAX_FORMAT";
          break;
        case 32816:
          result = "GL_MINMAX_SINK";
          break;
        case 32817:
          result = "GL_TABLE_TOO_LARGE";
          break;
        case 32818:
          result = "GL_UNSIGNED_BYTE_3_3_2";
          break;
        case 32819:
          result = "GL_UNSIGNED_SHORT_4_4_4_4";
          break;
        case 32820:
          result = "GL_UNSIGNED_SHORT_5_5_5_1";
          break;
        case 32821:
          result = "GL_UNSIGNED_INT_8_8_8_8";
          break;
        case 32822:
          result = "GL_UNSIGNED_INT_10_10_10_2";
          break;
        case 32823:
          result = "GL_POLYGON_OFFSET_FILL";
          break;
        case 32824:
          result = "GL_POLYGON_OFFSET_FACTOR";
          break;
        case 32825:
          result = "GL_POLYGON_OFFSET_BIAS_EXT";
          break;
        case 32826:
          result = "GL_RESCALE_NORMAL";
          break;
        case 32827:
          result = "GL_ALPHA4";
          break;
        case 32828:
          result = "GL_ALPHA8";
          break;
        case 32829:
          result = "GL_ALPHA12";
          break;
        case 32830:
          result = "GL_ALPHA16";
          break;
        case 32831:
          result = "GL_LUMINANCE4";
          break;
        case 32832:
          result = "GL_LUMINANCE8";
          break;
        case 32833:
          result = "GL_LUMINANCE12";
          break;
        case 32834:
          result = "GL_LUMINANCE16";
          break;
        case 32835:
          result = "GL_LUMINANCE4_ALPHA4";
          break;
        case 32836:
          result = "GL_LUMINANCE6_ALPHA2";
          break;
        case 32837:
          result = "GL_LUMINANCE8_ALPHA8";
          break;
        case 32838:
          result = "GL_LUMINANCE12_ALPHA4";
          break;
        case 32839:
          result = "GL_LUMINANCE12_ALPHA12";
          break;
        case 32840:
          result = "GL_LUMINANCE16_ALPHA16";
          break;
        case 32841:
          result = "GL_INTENSITY";
          break;
        case 32842:
          result = "GL_INTENSITY4";
          break;
        case 32843:
          result = "GL_INTENSITY8";
          break;
        case 32844:
          result = "GL_INTENSITY12";
          break;
        case 32845:
          result = "GL_INTENSITY16";
          break;
        case 32846:
          result = "GL_RGB2_EXT";
          break;
        case 32847:
          result = "GL_RGB4";
          break;
        case 32848:
          result = "GL_RGB5";
          break;
        case 32849:
          result = "GL_RGB8";
          break;
        case 32850:
          result = "GL_RGB10";
          break;
        case 32851:
          result = "GL_RGB12";
          break;
        case 32852:
          result = "GL_RGB16";
          break;
        case 32853:
          result = "GL_RGBA2";
          break;
        case 32854:
          result = "GL_RGBA4";
          break;
        case 32855:
          result = "GL_RGB5_A1";
          break;
        case 32856:
          result = "GL_RGBA8";
          break;
        case 32857:
          result = "GL_RGB10_A2";
          break;
        case 32858:
          result = "GL_RGBA12";
          break;
        case 32859:
          result = "GL_RGBA16";
          break;
        case 32860:
          result = "GL_TEXTURE_RED_SIZE";
          break;
        case 32861:
          result = "GL_TEXTURE_GREEN_SIZE";
          break;
        case 32862:
          result = "GL_TEXTURE_BLUE_SIZE";
          break;
        case 32863:
          result = "GL_TEXTURE_ALPHA_SIZE";
          break;
        case 32864:
          result = "GL_TEXTURE_LUMINANCE_SIZE";
          break;
        case 32865:
          result = "GL_TEXTURE_INTENSITY_SIZE";
          break;
        case 32866:
          result = "GL_REPLACE_EXT";
          break;
        case 32867:
          result = "GL_PROXY_TEXTURE_1D";
          break;
        case 32868:
          result = "GL_PROXY_TEXTURE_2D";
          break;
        case 32869:
          result = "GL_TEXTURE_TOO_LARGE_EXT";
          break;
        case 32870:
          result = "GL_TEXTURE_PRIORITY";
          break;
        case 32871:
          result = "GL_TEXTURE_RESIDENT";
          break;
        case 32872:
          result = "GL_TEXTURE_BINDING_1D";
          break;
        case 32873:
          result = "GL_TEXTURE_BINDING_2D";
          break;
        case 32874:
          result = "GL_TEXTURE_BINDING_3D";
          break;
        case 32875:
          result = "GL_PACK_SKIP_IMAGES";
          break;
        case 32876:
          result = "GL_PACK_IMAGE_HEIGHT";
          break;
        case 32877:
          result = "GL_UNPACK_SKIP_IMAGES";
          break;
        case 32878:
          result = "GL_UNPACK_IMAGE_HEIGHT";
          break;
        case 32879:
          result = "GL_TEXTURE_3D";
          break;
        case 32880:
          result = "GL_PROXY_TEXTURE_3D";
          break;
        case 32881:
          result = "GL_TEXTURE_DEPTH";
          break;
        case 32882:
          result = "GL_TEXTURE_WRAP_R";
          break;
        case 32883:
          result = "GL_MAX_3D_TEXTURE_SIZE";
          break;
        case 32884:
          result = "GL_VERTEX_ARRAY";
          break;
        case 32885:
          result = "GL_NORMAL_ARRAY";
          break;
        case 32886:
          result = "GL_COLOR_ARRAY";
          break;
        case 32887:
          result = "GL_INDEX_ARRAY";
          break;
        case 32888:
          result = "GL_TEXTURE_COORD_ARRAY";
          break;
        case 32889:
          result = "GL_EDGE_FLAG_ARRAY";
          break;
        case 32890:
          result = "GL_VERTEX_ARRAY_SIZE";
          break;
        case 32891:
          result = "GL_VERTEX_ARRAY_TYPE";
          break;
        case 32892:
          result = "GL_VERTEX_ARRAY_STRIDE";
          break;
        case 32893:
          result = "GL_VERTEX_ARRAY_COUNT_EXT";
          break;
        case 32894:
          result = "GL_NORMAL_ARRAY_TYPE";
          break;
        case 32895:
          result = "GL_NORMAL_ARRAY_STRIDE";
          break;
        case 32896:
          result = "GL_NORMAL_ARRAY_COUNT_EXT";
          break;
        case 32897:
          result = "GL_COLOR_ARRAY_SIZE";
          break;
        case 32898:
          result = "GL_COLOR_ARRAY_TYPE";
          break;
        case 32899:
          result = "GL_COLOR_ARRAY_STRIDE";
          break;
        case 32900:
          result = "GL_COLOR_ARRAY_COUNT_EXT";
          break;
        case 32901:
          result = "GL_INDEX_ARRAY_TYPE";
          break;
        case 32902:
          result = "GL_INDEX_ARRAY_STRIDE";
          break;
        case 32903:
          result = "GL_INDEX_ARRAY_COUNT_EXT";
          break;
        case 32904:
          result = "GL_TEXTURE_COORD_ARRAY_SIZE";
          break;
        case 32905:
          result = "GL_TEXTURE_COORD_ARRAY_TYPE";
          break;
        case 32906:
          result = "GL_TEXTURE_COORD_ARRAY_STRIDE";
          break;
        case 32907:
          result = "GL_TEXTURE_COORD_ARRAY_COUNT_EXT";
          break;
        case 32908:
          result = "GL_EDGE_FLAG_ARRAY_STRIDE";
          break;
        case 32909:
          result = "GL_EDGE_FLAG_ARRAY_COUNT_EXT";
          break;
        case 32910:
          result = "GL_VERTEX_ARRAY_POINTER";
          break;
        case 32911:
          result = "GL_NORMAL_ARRAY_POINTER";
          break;
        case 32912:
          result = "GL_COLOR_ARRAY_POINTER";
          break;
        case 32913:
          result = "GL_INDEX_ARRAY_POINTER";
          break;
        case 32914:
          result = "GL_TEXTURE_COORD_ARRAY_POINTER";
          break;
        case 32915:
          result = "GL_EDGE_FLAG_ARRAY_POINTER";
          break;
        case 32925:
          result = "GL_MULTISAMPLE";
          break;
        case 32926:
          result = "GL_SAMPLE_ALPHA_TO_COVERAGE";
          break;
        case 32927:
          result = "GL_SAMPLE_ALPHA_TO_ONE";
          break;
        case 32928:
          result = "GL_SAMPLE_COVERAGE";
          break;
        case 32936:
          result = "GL_SAMPLE_BUFFERS";
          break;
        case 32937:
          result = "GL_SAMPLES";
          break;
        case 32938:
          result = "GL_SAMPLE_COVERAGE_VALUE";
          break;
        case 32939:
          result = "GL_SAMPLE_COVERAGE_INVERT";
          break;
        case 32945:
          result = "GL_COLOR_MATRIX";
          break;
        case 32946:
          result = "GL_COLOR_MATRIX_STACK_DEPTH";
          break;
        case 32947:
          result = "GL_MAX_COLOR_MATRIX_STACK_DEPTH";
          break;
        case 32948:
          result = "GL_POST_COLOR_MATRIX_RED_SCALE";
          break;
        case 32949:
          result = "GL_POST_COLOR_MATRIX_GREEN_SCALE";
          break;
        case 32950:
          result = "GL_POST_COLOR_MATRIX_BLUE_SCALE";
          break;
        case 32951:
          result = "GL_POST_COLOR_MATRIX_ALPHA_SCALE";
          break;
        case 32952:
          result = "GL_POST_COLOR_MATRIX_RED_BIAS";
          break;
        case 32953:
          result = "GL_POST_COLOR_MATRIX_GREEN_BIAS";
          break;
        case 32954:
          result = "GL_POST_COLOR_MATRIX_BLUE_BIAS";
          break;
        case 32955:
          result = "GL_POST_COLOR_MATRIX_ALPHA_BIAS";
          break;
        case 32959:
          result = "GL_TEXTURE_COMPARE_FAIL_VALUE_ARB";
          break;
        case 32968:
          result = "GL_BLEND_DST_RGB";
          break;
        case 32969:
          result = "GL_BLEND_SRC_RGB";
          break;
        case 32970:
          result = "GL_BLEND_DST_ALPHA";
          break;
        case 32971:
          result = "GL_BLEND_SRC_ALPHA";
          break;
        case 32976:
          result = "GL_COLOR_TABLE";
          break;
        case 32977:
          result = "GL_POST_CONVOLUTION_COLOR_TABLE";
          break;
        case 32978:
          result = "GL_POST_COLOR_MATRIX_COLOR_TABLE";
          break;
        case 32979:
          result = "GL_PROXY_COLOR_TABLE";
          break;
        case 32980:
          result = "GL_PROXY_POST_CONVOLUTION_COLOR_TABLE";
          break;
        case 32981:
          result = "GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE";
          break;
        case 32982:
          result = "GL_COLOR_TABLE_SCALE";
          break;
        case 32983:
          result = "GL_COLOR_TABLE_BIAS";
          break;
        case 32984:
          result = "GL_COLOR_TABLE_FORMAT";
          break;
        case 32985:
          result = "GL_COLOR_TABLE_WIDTH";
          break;
        case 32986:
          result = "GL_COLOR_TABLE_RED_SIZE";
          break;
        case 32987:
          result = "GL_COLOR_TABLE_GREEN_SIZE";
          break;
        case 32988:
          result = "GL_COLOR_TABLE_BLUE_SIZE";
          break;
        case 32989:
          result = "GL_COLOR_TABLE_ALPHA_SIZE";
          break;
        case 32990:
          result = "GL_COLOR_TABLE_LUMINANCE_SIZE";
          break;
        case 32991:
          result = "GL_COLOR_TABLE_INTENSITY_SIZE";
          break;
        case 32992:
          result = "GL_BGR";
          break;
        case 32993:
          result = "GL_BGRA";
          break;
        case 32994:
          result = "GL_COLOR_INDEX1_EXT";
          break;
        case 32995:
          result = "GL_COLOR_INDEX2_EXT";
          break;
        case 32996:
          result = "GL_COLOR_INDEX4_EXT";
          break;
        case 32997:
          result = "GL_COLOR_INDEX8_EXT";
          break;
        case 32998:
          result = "GL_COLOR_INDEX12_EXT";
          break;
        case 32999:
          result = "GL_COLOR_INDEX16_EXT";
          break;
        case 33000:
          result = "GL_MAX_ELEMENTS_VERTICES";
          break;
        case 33001:
          result = "GL_MAX_ELEMENTS_INDICES";
          break;
        case 33005:
          result = "GL_TEXTURE_INDEX_SIZE_EXT";
          break;
        case 33008:
          result = "GL_CLIP_VOLUME_CLIPPING_HINT_EXT";
          break;
        case 33062:
          result = "GL_POINT_SIZE_MIN";
          break;
        case 33063:
          result = "GL_POINT_SIZE_MAX";
          break;
        case 33064:
          result = "GL_POINT_FADE_THRESHOLD_SIZE";
          break;
        case 33065:
          result = "GL_POINT_DISTANCE_ATTENUATION";
          break;
        case 33069:
          result = "GL_CLAMP_TO_BORDER";
          break;
        case 33071:
          result = "GL_CLAMP_TO_EDGE";
          break;
        case 33082:
          result = "GL_TEXTURE_MIN_LOD";
          break;
        case 33083:
          result = "GL_TEXTURE_MAX_LOD";
          break;
        case 33084:
          result = "GL_TEXTURE_BASE_LEVEL";
          break;
        case 33085:
          result = "GL_TEXTURE_MAX_LEVEL";
          break;
        case 33104:
          result = "GL_IGNORE_BORDER_HP";
          break;
        case 33105:
          result = "GL_CONSTANT_BORDER";
          break;
        case 33107:
          result = "GL_REPLICATE_BORDER";
          break;
        case 33108:
          result = "GL_CONVOLUTION_BORDER_COLOR";
          break;
        case 33169:
          result = "GL_GENERATE_MIPMAP";
          break;
        case 33170:
          result = "GL_GENERATE_MIPMAP_HINT";
          break;
        case 33189:
          result = "GL_DEPTH_COMPONENT16";
          break;
        case 33190:
          result = "GL_DEPTH_COMPONENT24";
          break;
        case 33191:
          result = "GL_DEPTH_COMPONENT32";
          break;
        case 33192:
          result = "GL_ARRAY_ELEMENT_LOCK_FIRST_EXT";
          break;
        case 33193:
          result = "GL_ARRAY_ELEMENT_LOCK_COUNT_EXT";
          break;
        case 33272:
          result = "GL_LIGHT_MODEL_COLOR_CONTROL";
          break;
        case 33273:
          result = "GL_SINGLE_COLOR";
          break;
        case 33274:
          result = "GL_SEPARATE_SPECULAR_COLOR";
          break;
        case 33275:
          result = "GL_SHARED_TEXTURE_PALETTE_EXT";
          break;
        case 33280:
          result = "GL_TEXT_FRAGMENT_SHADER_ATI";
          break;
        case 33296:
          result = "GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING";
          break;
        case 33297:
          result = "GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE";
          break;
        case 33298:
          result = "GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE";
          break;
        case 33299:
          result = "GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE";
          break;
        case 33300:
          result = "GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE";
          break;
        case 33301:
          result = "GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE";
          break;
        case 33302:
          result = "GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE";
          break;
        case 33303:
          result = "GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE";
          break;
        case 33304:
          result = "GL_FRAMEBUFFER_DEFAULT";
          break;
        case 33305:
          result = "GL_FRAMEBUFFER_UNDEFINED";
          break;
        case 33306:
          result = "GL_DEPTH_STENCIL_ATTACHMENT";
          break;
        case 33307:
          result = "GL_MAJOR_VERSION";
          break;
        case 33308:
          result = "GL_MINOR_VERSION";
          break;
        case 33309:
          result = "GL_NUM_EXTENSIONS";
          break;
        case 33310:
          result = "GL_CONTEXT_FLAGS";
          break;
        case 33317:
          result = "GL_COMPRESSED_RED";
          break;
        case 33318:
          result = "GL_COMPRESSED_RG";
          break;
        case 33319:
          result = "GL_RG";
          break;
        case 33320:
          result = "GL_RG_INTEGER";
          break;
        case 33321:
          result = "GL_R8";
          break;
        case 33322:
          result = "GL_R16";
          break;
        case 33323:
          result = "GL_RG8";
          break;
        case 33324:
          result = "GL_RG16";
          break;
        case 33325:
          result = "GL_R16F";
          break;
        case 33326:
          result = "GL_R32F";
          break;
        case 33327:
          result = "GL_RG16F";
          break;
        case 33328:
          result = "GL_RG32F";
          break;
        case 33329:
          result = "GL_R8I";
          break;
        case 33330:
          result = "GL_R8UI";
          break;
        case 33331:
          result = "GL_R16I";
          break;
        case 33332:
          result = "GL_R16UI";
          break;
        case 33333:
          result = "GL_R32I";
          break;
        case 33334:
          result = "GL_R32UI";
          break;
        case 33335:
          result = "GL_RG8I";
          break;
        case 33336:
          result = "GL_RG8UI";
          break;
        case 33337:
          result = "GL_RG16I";
          break;
        case 33338:
          result = "GL_RG16UI";
          break;
        case 33339:
          result = "GL_RG32I";
          break;
        case 33340:
          result = "GL_RG32UI";
          break;
        case 33344:
          result = "GL_SYNC_CL_EVENT_ARB";
          break;
        case 33345:
          result = "GL_SYNC_CL_EVENT_COMPLETE_ARB";
          break;
        case 33367:
          result = "GL_PROGRAM_BINARY_RETRIEVABLE_HINT";
          break;
        case 33368:
          result = "GL_PROGRAM_SEPARABLE";
          break;
        case 33369:
          result = "GL_ACTIVE_PROGRAM";
          break;
        case 33370:
          result = "GL_PROGRAM_PIPELINE_BINDING";
          break;
        case 33371:
          result = "GL_MAX_VIEWPORTS";
          break;
        case 33372:
          result = "GL_VIEWPORT_SUBPIXEL_BITS";
          break;
        case 33373:
          result = "GL_VIEWPORT_BOUNDS_RANGE";
          break;
        case 33374:
          result = "GL_LAYER_PROVOKING_VERTEX";
          break;
        case 33375:
          result = "GL_VIEWPORT_INDEX_PROVOKING_VERTEX";
          break;
        case 33376:
          result = "GL_UNDEFINED_VERTEX";
          break;
        case 33503:
          result = "GL_TEXTURE_IMMUTABLE_LEVELS";
          break;
        case 33510:
          result = "GL_SAMPLER";
          break;
        case 33634:
          result = "GL_UNSIGNED_BYTE_2_3_3_REV";
          break;
        case 33635:
          result = "GL_UNSIGNED_SHORT_5_6_5";
          break;
        case 33636:
          result = "GL_UNSIGNED_SHORT_5_6_5_REV";
          break;
        case 33637:
          result = "GL_UNSIGNED_SHORT_4_4_4_4_REV";
          break;
        case 33638:
          result = "GL_UNSIGNED_SHORT_1_5_5_5_REV";
          break;
        case 33639:
          result = "GL_UNSIGNED_INT_8_8_8_8_REV";
          break;
        case 33640:
          result = "GL_UNSIGNED_INT_2_10_10_10_REV";
          break;
        case 33648:
          result = "GL_MIRRORED_REPEAT";
          break;
        case 33776:
          result = "GL_COMPRESSED_RGB_S3TC_DXT1_EXT";
          break;
        case 33777:
          result = "GL_COMPRESSED_RGBA_S3TC_DXT1_EXT";
          break;
        case 33778:
          result = "GL_COMPRESSED_RGBA_S3TC_DXT3_EXT";
          break;
        case 33779:
          result = "GL_COMPRESSED_RGBA_S3TC_DXT5_EXT";
          break;
        case 33872:
          result = "GL_FOG_COORD_SRC";
          break;
        case 33873:
          result = "GL_FOG_COORD";
          break;
        case 33874:
          result = "GL_FRAGMENT_DEPTH";
          break;
        case 33875:
          result = "GL_CURRENT_FOG_COORDINATE_EXT";
          break;
        case 33876:
          result = "GL_FOG_COORD_ARRAY_TYPE";
          break;
        case 33877:
          result = "GL_FOG_COORD_ARRAY_STRIDE";
          break;
        case 33878:
          result = "GL_FOG_COORD_ARRAY_POINTER";
          break;
        case 33879:
          result = "GL_FOG_COORD_ARRAY";
          break;
        case 33880:
          result = "GL_COLOR_SUM";
          break;
        case 33881:
          result = "GL_CURRENT_SECONDARY_COLOR";
          break;
        case 33882:
          result = "GL_SECONDARY_COLOR_ARRAY_SIZE";
          break;
        case 33883:
          result = "GL_SECONDARY_COLOR_ARRAY_TYPE";
          break;
        case 33884:
          result = "GL_SECONDARY_COLOR_ARRAY_STRIDE";
          break;
        case 33885:
          result = "GL_SECONDARY_COLOR_ARRAY_POINTER";
          break;
        case 33886:
          result = "GL_SECONDARY_COLOR_ARRAY";
          break;
        case 33887:
          result = "GL_CURRENT_RASTER_SECONDARY_COLOR";
          break;
        case 33901:
          result = "GL_ALIASED_POINT_SIZE_RANGE";
          break;
        case 33902:
          result = "GL_ALIASED_LINE_WIDTH_RANGE";
          break;
        case 33984:
          result = "GL_TEXTURE0";
          break;
        case 33985:
          result = "GL_TEXTURE1";
          break;
        case 33986:
          result = "GL_TEXTURE2";
          break;
        case 33987:
          result = "GL_TEXTURE3";
          break;
        case 33988:
          result = "GL_TEXTURE4";
          break;
        case 33989:
          result = "GL_TEXTURE5";
          break;
        case 33990:
          result = "GL_TEXTURE6";
          break;
        case 33991:
          result = "GL_TEXTURE7";
          break;
        case 33992:
          result = "GL_TEXTURE8";
          break;
        case 33993:
          result = "GL_TEXTURE9";
          break;
        case 33994:
          result = "GL_TEXTURE10";
          break;
        case 33995:
          result = "GL_TEXTURE11";
          break;
        case 33996:
          result = "GL_TEXTURE12";
          break;
        case 33997:
          result = "GL_TEXTURE13";
          break;
        case 33998:
          result = "GL_TEXTURE14";
          break;
        case 33999:
          result = "GL_TEXTURE15";
          break;
        case 34000:
          result = "GL_TEXTURE16";
          break;
        case 34001:
          result = "GL_TEXTURE17";
          break;
        case 34002:
          result = "GL_TEXTURE18";
          break;
        case 34003:
          result = "GL_TEXTURE19";
          break;
        case 34004:
          result = "GL_TEXTURE20";
          break;
        case 34005:
          result = "GL_TEXTURE21";
          break;
        case 34006:
          result = "GL_TEXTURE22";
          break;
        case 34007:
          result = "GL_TEXTURE23";
          break;
        case 34008:
          result = "GL_TEXTURE24";
          break;
        case 34009:
          result = "GL_TEXTURE25";
          break;
        case 34010:
          result = "GL_TEXTURE26";
          break;
        case 34011:
          result = "GL_TEXTURE27";
          break;
        case 34012:
          result = "GL_TEXTURE28";
          break;
        case 34013:
          result = "GL_TEXTURE29";
          break;
        case 34014:
          result = "GL_TEXTURE30";
          break;
        case 34015:
          result = "GL_TEXTURE31";
          break;
        case 34016:
          result = "GL_ACTIVE_TEXTURE";
          break;
        case 34017:
          result = "GL_CLIENT_ACTIVE_TEXTURE";
          break;
        case 34018:
          result = "GL_MAX_TEXTURE_UNITS";
          break;
        case 34019:
          result = "GL_TRANSPOSE_MODELVIEW_MATRIX";
          break;
        case 34020:
          result = "GL_TRANSPOSE_PROJECTION_MATRIX";
          break;
        case 34021:
          result = "GL_TRANSPOSE_TEXTURE_MATRIX";
          break;
        case 34022:
          result = "GL_TRANSPOSE_COLOR_MATRIX";
          break;
        case 34023:
          result = "GL_SUBTRACT";
          break;
        case 34024:
          result = "GL_MAX_RENDERBUFFER_SIZE";
          break;
        case 34025:
          result = "GL_COMPRESSED_ALPHA";
          break;
        case 34026:
          result = "GL_COMPRESSED_LUMINANCE";
          break;
        case 34027:
          result = "GL_COMPRESSED_LUMINANCE_ALPHA";
          break;
        case 34028:
          result = "GL_COMPRESSED_INTENSITY";
          break;
        case 34029:
          result = "GL_COMPRESSED_RGB";
          break;
        case 34030:
          result = "GL_COMPRESSED_RGBA";
          break;
        case 34031:
          result = "GL_TEXTURE_COMPRESSION_HINT";
          break;
        case 34032:
          result = "GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER";
          break;
        case 34033:
          result = "GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER";
          break;
        case 34037:
          result = "GL_TEXTURE_RECTANGLE";
          break;
        case 34038:
          result = "GL_TEXTURE_BINDING_RECTANGLE";
          break;
        case 34039:
          result = "GL_PROXY_TEXTURE_RECTANGLE";
          break;
        case 34040:
          result = "GL_MAX_RECTANGLE_TEXTURE_SIZE";
          break;
        case 34041:
          result = "GL_DEPTH_STENCIL";
          break;
        case 34042:
          result = "GL_UNSIGNED_INT_24_8";
          break;
        case 34045:
          result = "GL_MAX_TEXTURE_LOD_BIAS";
          break;
        case 34046:
          result = "GL_TEXTURE_MAX_ANISOTROPY_EXT";
          break;
        case 34047:
          result = "GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT";
          break;
        case 34048:
          result = "GL_TEXTURE_FILTER_CONTROL";
          break;
        case 34049:
          result = "GL_TEXTURE_LOD_BIAS";
          break;
        case 34052:
          result = "GL_MAX_SHININESS_NV";
          break;
        case 34053:
          result = "GL_MAX_SPOT_EXPONENT_NV";
          break;
        case 34055:
          result = "GL_INCR_WRAP";
          break;
        case 34056:
          result = "GL_DECR_WRAP";
          break;
        case 34058:
          result = "GL_MODELVIEW1_ARB";
          break;
        case 34065:
          result = "GL_NORMAL_MAP";
          break;
        case 34066:
          result = "GL_REFLECTION_MAP";
          break;
        case 34067:
          result = "GL_TEXTURE_CUBE_MAP";
          break;
        case 34068:
          result = "GL_TEXTURE_BINDING_CUBE_MAP";
          break;
        case 34069:
          result = "GL_TEXTURE_CUBE_MAP_POSITIVE_X";
          break;
        case 34070:
          result = "GL_TEXTURE_CUBE_MAP_NEGATIVE_X";
          break;
        case 34071:
          result = "GL_TEXTURE_CUBE_MAP_POSITIVE_Y";
          break;
        case 34072:
          result = "GL_TEXTURE_CUBE_MAP_NEGATIVE_Y";
          break;
        case 34073:
          result = "GL_TEXTURE_CUBE_MAP_POSITIVE_Z";
          break;
        case 34074:
          result = "GL_TEXTURE_CUBE_MAP_NEGATIVE_Z";
          break;
        case 34075:
          result = "GL_PROXY_TEXTURE_CUBE_MAP";
          break;
        case 34076:
          result = "GL_MAX_CUBE_MAP_TEXTURE_SIZE";
          break;
        case 34077:
          result = "GL_VERTEX_ARRAY_RANGE_APPLE";
          break;
        case 34078:
          result = "GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE";
          break;
        case 34079:
          result = "GL_VERTEX_ARRAY_STORAGE_HINT_APPLE";
          break;
        case 34080:
          result = "GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE";
          break;
        case 34081:
          result = "GL_VERTEX_ARRAY_RANGE_POINTER_APPLE";
          break;
        case 34082:
          result = "GL_REGISTER_COMBINERS_NV";
          break;
        case 34083:
          result = "GL_VARIABLE_A_NV";
          break;
        case 34084:
          result = "GL_VARIABLE_B_NV";
          break;
        case 34085:
          result = "GL_VARIABLE_C_NV";
          break;
        case 34086:
          result = "GL_VARIABLE_D_NV";
          break;
        case 34087:
          result = "GL_VARIABLE_E_NV";
          break;
        case 34088:
          result = "GL_VARIABLE_F_NV";
          break;
        case 34089:
          result = "GL_VARIABLE_G_NV";
          break;
        case 34090:
          result = "GL_CONSTANT_COLOR0_NV";
          break;
        case 34091:
          result = "GL_CONSTANT_COLOR1_NV";
          break;
        case 34092:
          result = "GL_PRIMARY_COLOR_NV";
          break;
        case 34093:
          result = "GL_SECONDARY_COLOR_NV";
          break;
        case 34094:
          result = "GL_SPARE0_NV";
          break;
        case 34095:
          result = "GL_SPARE1_NV";
          break;
        case 34096:
          result = "GL_DISCARD_NV";
          break;
        case 34097:
          result = "GL_E_TIMES_F_NV";
          break;
        case 34098:
          result = "GL_SPARE0_PLUS_SECONDARY_COLOR_NV";
          break;
        case 34099:
          result = "GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV";
          break;
        case 34100:
          result = "GL_MULTISAMPLE_FILTER_HINT_NV";
          break;
        case 34101:
          result = "GL_PER_STAGE_CONSTANTS_NV";
          break;
        case 34102:
          result = "GL_UNSIGNED_IDENTITY_NV";
          break;
        case 34103:
          result = "GL_UNSIGNED_INVERT_NV";
          break;
        case 34104:
          result = "GL_EXPAND_NORMAL_NV";
          break;
        case 34105:
          result = "GL_EXPAND_NEGATE_NV";
          break;
        case 34106:
          result = "GL_HALF_BIAS_NORMAL_NV";
          break;
        case 34107:
          result = "GL_HALF_BIAS_NEGATE_NV";
          break;
        case 34108:
          result = "GL_SIGNED_IDENTITY_NV";
          break;
        case 34109:
          result = "GL_SIGNED_NEGATE_NV";
          break;
        case 34110:
          result = "GL_SCALE_BY_TWO_NV";
          break;
        case 34111:
          result = "GL_SCALE_BY_FOUR_NV";
          break;
        case 34112:
          result = "GL_SCALE_BY_ONE_HALF_NV";
          break;
        case 34113:
          result = "GL_BIAS_BY_NEGATIVE_ONE_HALF_NV";
          break;
        case 34114:
          result = "GL_COMBINER_INPUT_NV";
          break;
        case 34115:
          result = "GL_COMBINER_MAPPING_NV";
          break;
        case 34116:
          result = "GL_COMBINER_COMPONENT_USAGE_NV";
          break;
        case 34117:
          result = "GL_COMBINER_AB_DOT_PRODUCT_NV";
          break;
        case 34118:
          result = "GL_COMBINER_CD_DOT_PRODUCT_NV";
          break;
        case 34119:
          result = "GL_COMBINER_MUX_SUM_NV";
          break;
        case 34120:
          result = "GL_COMBINER_SCALE_NV";
          break;
        case 34121:
          result = "GL_COMBINER_BIAS_NV";
          break;
        case 34122:
          result = "GL_COMBINER_AB_OUTPUT_NV";
          break;
        case 34123:
          result = "GL_COMBINER_CD_OUTPUT_NV";
          break;
        case 34124:
          result = "GL_COMBINER_SUM_OUTPUT_NV";
          break;
        case 34125:
          result = "GL_MAX_GENERAL_COMBINERS_NV";
          break;
        case 34126:
          result = "GL_NUM_GENERAL_COMBINERS_NV";
          break;
        case 34127:
          result = "GL_COLOR_SUM_CLAMP_NV";
          break;
        case 34128:
          result = "GL_COMBINER0_NV";
          break;
        case 34129:
          result = "GL_COMBINER1_NV";
          break;
        case 34130:
          result = "GL_COMBINER2_NV";
          break;
        case 34131:
          result = "GL_COMBINER3_NV";
          break;
        case 34132:
          result = "GL_COMBINER4_NV";
          break;
        case 34133:
          result = "GL_COMBINER5_NV";
          break;
        case 34134:
          result = "GL_COMBINER6_NV";
          break;
        case 34135:
          result = "GL_COMBINER7_NV";
          break;
        case 34138:
          result = "GL_FOG_DISTANCE_MODE_NV";
          break;
        case 34139:
          result = "GL_EYE_RADIAL_NV";
          break;
        case 34140:
          result = "GL_EYE_PLANE_ABSOLUTE_NV";
          break;
        case 34160:
          result = "GL_COMBINE";
          break;
        case 34161:
          result = "GL_COMBINE_RGB";
          break;
        case 34162:
          result = "GL_COMBINE_ALPHA";
          break;
        case 34163:
          result = "GL_RGB_SCALE";
          break;
        case 34164:
          result = "GL_ADD_SIGNED";
          break;
        case 34165:
          result = "GL_INTERPOLATE";
          break;
        case 34166:
          result = "GL_CONSTANT";
          break;
        case 34167:
          result = "GL_PRIMARY_COLOR";
          break;
        case 34168:
          result = "GL_PREVIOUS";
          break;
        case 34176:
          result = "GL_SRC0_RGB";
          break;
        case 34177:
          result = "GL_SRC1_RGB";
          break;
        case 34178:
          result = "GL_SRC2_RGB";
          break;
        case 34184:
          result = "GL_SRC0_ALPHA";
          break;
        case 34185:
          result = "GL_SRC1_ALPHA";
          break;
        case 34186:
          result = "GL_SRC2_ALPHA";
          break;
        case 34192:
          result = "GL_OPERAND0_RGB";
          break;
        case 34193:
          result = "GL_OPERAND1_RGB";
          break;
        case 34194:
          result = "GL_OPERAND2_RGB";
          break;
        case 34200:
          result = "GL_OPERAND0_ALPHA";
          break;
        case 34201:
          result = "GL_OPERAND1_ALPHA";
          break;
        case 34202:
          result = "GL_OPERAND2_ALPHA";
          break;
        case 34224:
          result = "GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE";
          break;
        case 34225:
          result = "GL_TRANSFORM_HINT_APPLE";
          break;
        case 34226:
          result = "GL_UNPACK_CLIENT_STORAGE_APPLE";
          break;
        case 34227:
          result = "GL_BUFFER_OBJECT_APPLE";
          break;
        case 34228:
          result = "GL_STORAGE_CLIENT_APPLE";
          break;
        case 34229:
          result = "GL_VERTEX_ARRAY_BINDING";
          break;
        case 34230:
          result = "GL_TEXTURE_MINIMIZE_STORAGE_APPLE";
          break;
        case 34231:
          result = "GL_TEXTURE_RANGE_LENGTH_APPLE";
          break;
        case 34232:
          result = "GL_TEXTURE_RANGE_POINTER_APPLE";
          break;
        case 34233:
          result = "GL_YCBCR_422_APPLE";
          break;
        case 34234:
          result = "GL_UNSIGNED_SHORT_8_8_APPLE";
          break;
        case 34235:
          result = "GL_UNSIGNED_SHORT_8_8_REV_APPLE";
          break;
        case 34236:
          result = "GL_TEXTURE_STORAGE_HINT_APPLE";
          break;
        case 34237:
          result = "GL_STORAGE_PRIVATE_APPLE";
          break;
        case 34238:
          result = "GL_STORAGE_CACHED_APPLE";
          break;
        case 34239:
          result = "GL_STORAGE_SHARED_APPLE";
          break;
        case 34336:
          result = "GL_VERTEX_PROGRAM_ARB";
          break;
        case 34337:
          result = "GL_VERTEX_STATE_PROGRAM_NV";
          break;
        case 34338:
          result = "GL_VERTEX_ATTRIB_ARRAY_ENABLED";
          break;
        case 34339:
          result = "GL_VERTEX_ATTRIB_ARRAY_SIZE";
          break;
        case 34340:
          result = "GL_VERTEX_ATTRIB_ARRAY_STRIDE";
          break;
        case 34341:
          result = "GL_VERTEX_ATTRIB_ARRAY_TYPE";
          break;
        case 34342:
          result = "GL_CURRENT_VERTEX_ATTRIB";
          break;
        case 34343:
          result = "GL_PROGRAM_LENGTH_ARB";
          break;
        case 34344:
          result = "GL_PROGRAM_STRING_ARB";
          break;
        case 34345:
          result = "GL_MODELVIEW_PROJECTION_NV";
          break;
        case 34346:
          result = "GL_IDENTITY_NV";
          break;
        case 34347:
          result = "GL_INVERSE_NV";
          break;
        case 34348:
          result = "GL_TRANSPOSE_NV";
          break;
        case 34349:
          result = "GL_INVERSE_TRANSPOSE_NV";
          break;
        case 34350:
          result = "GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB";
          break;
        case 34351:
          result = "GL_MAX_PROGRAM_MATRICES_ARB";
          break;
        case 34352:
          result = "GL_MATRIX0_NV";
          break;
        case 34353:
          result = "GL_MATRIX1_NV";
          break;
        case 34354:
          result = "GL_MATRIX2_NV";
          break;
        case 34355:
          result = "GL_MATRIX3_NV";
          break;
        case 34356:
          result = "GL_MATRIX4_NV";
          break;
        case 34357:
          result = "GL_MATRIX5_NV";
          break;
        case 34358:
          result = "GL_MATRIX6_NV";
          break;
        case 34359:
          result = "GL_MATRIX7_NV";
          break;
        case 34368:
          result = "GL_CURRENT_MATRIX_STACK_DEPTH_ARB";
          break;
        case 34369:
          result = "GL_CURRENT_MATRIX_ARB";
          break;
        case 34370:
          result = "GL_PROGRAM_POINT_SIZE";
          break;
        case 34371:
          result = "GL_VERTEX_PROGRAM_TWO_SIDE";
          break;
        case 34372:
          result = "GL_PROGRAM_PARAMETER_NV";
          break;
        case 34373:
          result = "GL_VERTEX_ATTRIB_ARRAY_POINTER";
          break;
        case 34374:
          result = "GL_PROGRAM_TARGET_NV";
          break;
        case 34375:
          result = "GL_PROGRAM_RESIDENT_NV";
          break;
        case 34376:
          result = "GL_TRACK_MATRIX_NV";
          break;
        case 34377:
          result = "GL_TRACK_MATRIX_TRANSFORM_NV";
          break;
        case 34378:
          result = "GL_VERTEX_PROGRAM_BINDING_NV";
          break;
        case 34379:
          result = "GL_PROGRAM_ERROR_POSITION_ARB";
          break;
        case 34380:
          result = "GL_OFFSET_TEXTURE_RECTANGLE_NV";
          break;
        case 34381:
          result = "GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV";
          break;
        case 34382:
          result = "GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV";
          break;
        case 34383:
          result = "GL_DEPTH_CLAMP";
          break;
        case 34384:
          result = "GL_VERTEX_ATTRIB_ARRAY0_NV";
          break;
        case 34385:
          result = "GL_VERTEX_ATTRIB_ARRAY1_NV";
          break;
        case 34386:
          result = "GL_VERTEX_ATTRIB_ARRAY2_NV";
          break;
        case 34387:
          result = "GL_VERTEX_ATTRIB_ARRAY3_NV";
          break;
        case 34388:
          result = "GL_VERTEX_ATTRIB_ARRAY4_NV";
          break;
        case 34389:
          result = "GL_VERTEX_ATTRIB_ARRAY5_NV";
          break;
        case 34390:
          result = "GL_VERTEX_ATTRIB_ARRAY6_NV";
          break;
        case 34391:
          result = "GL_VERTEX_ATTRIB_ARRAY7_NV";
          break;
        case 34392:
          result = "GL_VERTEX_ATTRIB_ARRAY8_NV";
          break;
        case 34393:
          result = "GL_VERTEX_ATTRIB_ARRAY9_NV";
          break;
        case 34394:
          result = "GL_VERTEX_ATTRIB_ARRAY10_NV";
          break;
        case 34395:
          result = "GL_VERTEX_ATTRIB_ARRAY11_NV";
          break;
        case 34396:
          result = "GL_VERTEX_ATTRIB_ARRAY12_NV";
          break;
        case 34397:
          result = "GL_VERTEX_ATTRIB_ARRAY13_NV";
          break;
        case 34398:
          result = "GL_VERTEX_ATTRIB_ARRAY14_NV";
          break;
        case 34399:
          result = "GL_VERTEX_ATTRIB_ARRAY15_NV";
          break;
        case 34400:
          result = "GL_MAP1_VERTEX_ATTRIB0_4_NV";
          break;
        case 34401:
          result = "GL_MAP1_VERTEX_ATTRIB1_4_NV";
          break;
        case 34402:
          result = "GL_MAP1_VERTEX_ATTRIB2_4_NV";
          break;
        case 34403:
          result = "GL_MAP1_VERTEX_ATTRIB3_4_NV";
          break;
        case 34404:
          result = "GL_MAP1_VERTEX_ATTRIB4_4_NV";
          break;
        case 34405:
          result = "GL_MAP1_VERTEX_ATTRIB5_4_NV";
          break;
        case 34406:
          result = "GL_MAP1_VERTEX_ATTRIB6_4_NV";
          break;
        case 34407:
          result = "GL_MAP1_VERTEX_ATTRIB7_4_NV";
          break;
        case 34408:
          result = "GL_MAP1_VERTEX_ATTRIB8_4_NV";
          break;
        case 34409:
          result = "GL_MAP1_VERTEX_ATTRIB9_4_NV";
          break;
        case 34410:
          result = "GL_MAP1_VERTEX_ATTRIB10_4_NV";
          break;
        case 34411:
          result = "GL_MAP1_VERTEX_ATTRIB11_4_NV";
          break;
        case 34412:
          result = "GL_MAP1_VERTEX_ATTRIB12_4_NV";
          break;
        case 34413:
          result = "GL_MAP1_VERTEX_ATTRIB13_4_NV";
          break;
        case 34414:
          result = "GL_MAP1_VERTEX_ATTRIB14_4_NV";
          break;
        case 34415:
          result = "GL_MAP1_VERTEX_ATTRIB15_4_NV";
          break;
        case 34416:
          result = "GL_MAP2_VERTEX_ATTRIB0_4_NV";
          break;
        case 34417:
          result = "GL_MAP2_VERTEX_ATTRIB1_4_NV";
          break;
        case 34418:
          result = "GL_MAP2_VERTEX_ATTRIB2_4_NV";
          break;
        case 34419:
          result = "GL_MAP2_VERTEX_ATTRIB3_4_NV";
          break;
        case 34420:
          result = "GL_MAP2_VERTEX_ATTRIB4_4_NV";
          break;
        case 34421:
          result = "GL_MAP2_VERTEX_ATTRIB5_4_NV";
          break;
        case 34422:
          result = "GL_MAP2_VERTEX_ATTRIB6_4_NV";
          break;
        case 34423:
          result = "GL_PROGRAM_BINDING_ARB";
          break;
        case 34424:
          result = "GL_MAP2_VERTEX_ATTRIB8_4_NV";
          break;
        case 34425:
          result = "GL_MAP2_VERTEX_ATTRIB9_4_NV";
          break;
        case 34426:
          result = "GL_MAP2_VERTEX_ATTRIB10_4_NV";
          break;
        case 34427:
          result = "GL_MAP2_VERTEX_ATTRIB11_4_NV";
          break;
        case 34428:
          result = "GL_MAP2_VERTEX_ATTRIB12_4_NV";
          break;
        case 34429:
          result = "GL_MAP2_VERTEX_ATTRIB13_4_NV";
          break;
        case 34430:
          result = "GL_MAP2_VERTEX_ATTRIB14_4_NV";
          break;
        case 34431:
          result = "GL_MAP2_VERTEX_ATTRIB15_4_NV";
          break;
        case 34464:
          result = "GL_TEXTURE_COMPRESSED_IMAGE_SIZE";
          break;
        case 34465:
          result = "GL_TEXTURE_COMPRESSED";
          break;
        case 34466:
          result = "GL_NUM_COMPRESSED_TEXTURE_FORMATS";
          break;
        case 34467:
          result = "GL_COMPRESSED_TEXTURE_FORMATS";
          break;
        case 34468:
          result = "GL_MAX_VERTEX_UNITS_ARB";
          break;
        case 34469:
          result = "GL_ACTIVE_VERTEX_UNITS_ARB";
          break;
        case 34470:
          result = "GL_WEIGHT_SUM_UNITY_ARB";
          break;
        case 34471:
          result = "GL_VERTEX_BLEND_ARB";
          break;
        case 34472:
          result = "GL_CURRENT_WEIGHT_ARB";
          break;
        case 34473:
          result = "GL_WEIGHT_ARRAY_TYPE_ARB";
          break;
        case 34474:
          result = "GL_WEIGHT_ARRAY_STRIDE_ARB";
          break;
        case 34475:
          result = "GL_WEIGHT_ARRAY_SIZE_ARB";
          break;
        case 34476:
          result = "GL_WEIGHT_ARRAY_POINTER_ARB";
          break;
        case 34477:
          result = "GL_WEIGHT_ARRAY_ARB";
          break;
        case 34478:
          result = "GL_DOT3_RGB";
          break;
        case 34479:
          result = "GL_DOT3_RGBA";
          break;
        case 34521:
          result = "GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV";
          break;
        case 34522:
          result = "GL_UNSIGNED_INT_S8_S8_8_8_NV";
          break;
        case 34523:
          result = "GL_UNSIGNED_INT_8_8_S8_S8_REV_NV";
          break;
        case 34524:
          result = "GL_DSDT_MAG_INTENSITY_NV";
          break;
        case 34525:
          result = "GL_SHADER_CONSISTENT_NV";
          break;
        case 34526:
          result = "GL_TEXTURE_SHADER_NV";
          break;
        case 34527:
          result = "GL_SHADER_OPERATION_NV";
          break;
        case 34528:
          result = "GL_CULL_MODES_NV";
          break;
        case 34529:
          result = "GL_OFFSET_TEXTURE_MATRIX_NV";
          break;
        case 34530:
          result = "GL_OFFSET_TEXTURE_SCALE_NV";
          break;
        case 34531:
          result = "GL_OFFSET_TEXTURE_BIAS_NV";
          break;
        case 34532:
          result = "GL_PREVIOUS_TEXTURE_INPUT_NV";
          break;
        case 34533:
          result = "GL_CONST_EYE_NV";
          break;
        case 34534:
          result = "GL_PASS_THROUGH_NV";
          break;
        case 34535:
          result = "GL_CULL_FRAGMENT_NV";
          break;
        case 34536:
          result = "GL_OFFSET_TEXTURE_2D_NV";
          break;
        case 34537:
          result = "GL_DEPENDENT_AR_TEXTURE_2D_NV";
          break;
        case 34538:
          result = "GL_DEPENDENT_GB_TEXTURE_2D_NV";
          break;
        case 34540:
          result = "GL_DOT_PRODUCT_NV";
          break;
        case 34541:
          result = "GL_DOT_PRODUCT_DEPTH_REPLACE_NV";
          break;
        case 34542:
          result = "GL_DOT_PRODUCT_TEXTURE_2D_NV";
          break;
        case 34543:
          result = "GL_DOT_PRODUCT_TEXTURE_3D_NV";
          break;
        case 34544:
          result = "GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV";
          break;
        case 34545:
          result = "GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV";
          break;
        case 34546:
          result = "GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV";
          break;
        case 34547:
          result = "GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV";
          break;
        case 34548:
          result = "GL_HILO_NV";
          break;
        case 34549:
          result = "GL_DSDT_NV";
          break;
        case 34550:
          result = "GL_DSDT_MAG_NV";
          break;
        case 34551:
          result = "GL_DSDT_MAG_VIB_NV";
          break;
        case 34552:
          result = "GL_HILO16_NV";
          break;
        case 34553:
          result = "GL_SIGNED_HILO_NV";
          break;
        case 34554:
          result = "GL_SIGNED_HILO16_NV";
          break;
        case 34555:
          result = "GL_SIGNED_RGBA_NV";
          break;
        case 34556:
          result = "GL_SIGNED_RGBA8_NV";
          break;
        case 34558:
          result = "GL_SIGNED_RGB_NV";
          break;
        case 34559:
          result = "GL_SIGNED_RGB8_NV";
          break;
        case 34561:
          result = "GL_SIGNED_LUMINANCE_NV";
          break;
        case 34562:
          result = "GL_SIGNED_LUMINANCE8_NV";
          break;
        case 34563:
          result = "GL_SIGNED_LUMINANCE_ALPHA_NV";
          break;
        case 34564:
          result = "GL_SIGNED_LUMINANCE8_ALPHA8_NV";
          break;
        case 34565:
          result = "GL_SIGNED_ALPHA_NV";
          break;
        case 34566:
          result = "GL_SIGNED_ALPHA8_NV";
          break;
        case 34567:
          result = "GL_SIGNED_INTENSITY_NV";
          break;
        case 34568:
          result = "GL_SIGNED_INTENSITY8_NV";
          break;
        case 34569:
          result = "GL_DSDT8_NV";
          break;
        case 34570:
          result = "GL_DSDT8_MAG8_NV";
          break;
        case 34571:
          result = "GL_DSDT8_MAG8_INTENSITY8_NV";
          break;
        case 34572:
          result = "GL_SIGNED_RGB_UNSIGNED_ALPHA_NV";
          break;
        case 34573:
          result = "GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV";
          break;
        case 34574:
          result = "GL_HI_SCALE_NV";
          break;
        case 34575:
          result = "GL_LO_SCALE_NV";
          break;
        case 34576:
          result = "GL_DS_SCALE_NV";
          break;
        case 34577:
          result = "GL_DT_SCALE_NV";
          break;
        case 34578:
          result = "GL_MAGNITUDE_SCALE_NV";
          break;
        case 34579:
          result = "GL_VIBRANCE_SCALE_NV";
          break;
        case 34580:
          result = "GL_HI_BIAS_NV";
          break;
        case 34581:
          result = "GL_LO_BIAS_NV";
          break;
        case 34582:
          result = "GL_DS_BIAS_NV";
          break;
        case 34583:
          result = "GL_DT_BIAS_NV";
          break;
        case 34584:
          result = "GL_MAGNITUDE_BIAS_NV";
          break;
        case 34585:
          result = "GL_VIBRANCE_BIAS_NV";
          break;
        case 34586:
          result = "GL_TEXTURE_BORDER_VALUES_NV";
          break;
        case 34587:
          result = "GL_TEXTURE_HI_SIZE_NV";
          break;
        case 34588:
          result = "GL_TEXTURE_LO_SIZE_NV";
          break;
        case 34589:
          result = "GL_TEXTURE_DS_SIZE_NV";
          break;
        case 34590:
          result = "GL_TEXTURE_DT_SIZE_NV";
          break;
        case 34591:
          result = "GL_TEXTURE_MAG_SIZE_NV";
          break;
        case 34594:
          result = "GL_MODELVIEW2_ARB";
          break;
        case 34595:
          result = "GL_MODELVIEW3_ARB";
          break;
        case 34596:
          result = "GL_MODELVIEW4_ARB";
          break;
        case 34597:
          result = "GL_MODELVIEW5_ARB";
          break;
        case 34598:
          result = "GL_MODELVIEW6_ARB";
          break;
        case 34599:
          result = "GL_MODELVIEW7_ARB";
          break;
        case 34600:
          result = "GL_MODELVIEW8_ARB";
          break;
        case 34601:
          result = "GL_MODELVIEW9_ARB";
          break;
        case 34602:
          result = "GL_MODELVIEW10_ARB";
          break;
        case 34603:
          result = "GL_MODELVIEW11_ARB";
          break;
        case 34604:
          result = "GL_MODELVIEW12_ARB";
          break;
        case 34605:
          result = "GL_MODELVIEW13_ARB";
          break;
        case 34606:
          result = "GL_MODELVIEW14_ARB";
          break;
        case 34607:
          result = "GL_MODELVIEW15_ARB";
          break;
        case 34608:
          result = "GL_MODELVIEW16_ARB";
          break;
        case 34609:
          result = "GL_MODELVIEW17_ARB";
          break;
        case 34610:
          result = "GL_MODELVIEW18_ARB";
          break;
        case 34611:
          result = "GL_MODELVIEW19_ARB";
          break;
        case 34612:
          result = "GL_MODELVIEW20_ARB";
          break;
        case 34613:
          result = "GL_MODELVIEW21_ARB";
          break;
        case 34614:
          result = "GL_MODELVIEW22_ARB";
          break;
        case 34615:
          result = "GL_MODELVIEW23_ARB";
          break;
        case 34616:
          result = "GL_MODELVIEW24_ARB";
          break;
        case 34617:
          result = "GL_MODELVIEW25_ARB";
          break;
        case 34618:
          result = "GL_MODELVIEW26_ARB";
          break;
        case 34619:
          result = "GL_MODELVIEW27_ARB";
          break;
        case 34620:
          result = "GL_MODELVIEW28_ARB";
          break;
        case 34621:
          result = "GL_MODELVIEW29_ARB";
          break;
        case 34622:
          result = "GL_MODELVIEW30_ARB";
          break;
        case 34623:
          result = "GL_MODELVIEW31_ARB";
          break;
        case 34625:
          result = "GL_PROGRAM_BINARY_LENGTH";
          break;
        case 34626:
          result = "GL_MIRROR_CLAMP_EXT";
          break;
        case 34627:
          result = "GL_MIRROR_CLAMP_TO_EDGE_EXT";
          break;
        case 34628:
          result = "GL_MODULATE_ADD_ATI";
          break;
        case 34629:
          result = "GL_MODULATE_SIGNED_ADD_ATI";
          break;
        case 34630:
          result = "GL_MODULATE_SUBTRACT_ATI";
          break;
        case 34660:
          result = "GL_BUFFER_SIZE";
          break;
        case 34661:
          result = "GL_BUFFER_USAGE";
          break;
        case 34685:
          result = "GL_MIN_WEIGHTED_ATI";
          break;
        case 34686:
          result = "GL_MAX_WEIGHTED_ATI";
          break;
        case 34814:
          result = "GL_NUM_PROGRAM_BINARY_FORMATS";
          break;
        case 34815:
          result = "GL_PROGRAM_BINARY_FORMATS";
          break;
        case 34816:
          result = "GL_STENCIL_BACK_FUNC";
          break;
        case 34817:
          result = "GL_STENCIL_BACK_FAIL";
          break;
        case 34818:
          result = "GL_STENCIL_BACK_PASS_DEPTH_FAIL";
          break;
        case 34819:
          result = "GL_STENCIL_BACK_PASS_DEPTH_PASS";
          break;
        case 34820:
          result = "GL_FRAGMENT_PROGRAM_ARB";
          break;
        case 34821:
          result = "GL_PROGRAM_ALU_INSTRUCTIONS_ARB";
          break;
        case 34822:
          result = "GL_PROGRAM_TEX_INSTRUCTIONS_ARB";
          break;
        case 34823:
          result = "GL_PROGRAM_TEX_INDIRECTIONS_ARB";
          break;
        case 34824:
          result = "GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB";
          break;
        case 34825:
          result = "GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB";
          break;
        case 34826:
          result = "GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB";
          break;
        case 34827:
          result = "GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB";
          break;
        case 34828:
          result = "GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB";
          break;
        case 34829:
          result = "GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB";
          break;
        case 34830:
          result = "GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB";
          break;
        case 34831:
          result = "GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB";
          break;
        case 34832:
          result = "GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB";
          break;
        case 34836:
          result = "GL_RGBA32F";
          break;
        case 34837:
          result = "GL_RGB32F";
          break;
        case 34838:
          result = "GL_ALPHA32F_ARB";
          break;
        case 34839:
          result = "GL_INTENSITY32F_ARB";
          break;
        case 34840:
          result = "GL_LUMINANCE32F_ARB";
          break;
        case 34841:
          result = "GL_LUMINANCE_ALPHA32F_ARB";
          break;
        case 34842:
          result = "GL_RGBA16F";
          break;
        case 34843:
          result = "GL_RGB16F";
          break;
        case 34844:
          result = "GL_ALPHA16F_ARB";
          break;
        case 34845:
          result = "GL_INTENSITY16F_ARB";
          break;
        case 34846:
          result = "GL_LUMINANCE16F_ARB";
          break;
        case 34847:
          result = "GL_LUMINANCE_ALPHA16F_ARB";
          break;
        case 34848:
          result = "GL_RGBA_FLOAT_MODE_ARB";
          break;
        case 34852:
          result = "GL_MAX_DRAW_BUFFERS";
          break;
        case 34853:
          result = "GL_DRAW_BUFFER0";
          break;
        case 34854:
          result = "GL_DRAW_BUFFER1";
          break;
        case 34855:
          result = "GL_DRAW_BUFFER2";
          break;
        case 34856:
          result = "GL_DRAW_BUFFER3";
          break;
        case 34857:
          result = "GL_DRAW_BUFFER4";
          break;
        case 34858:
          result = "GL_DRAW_BUFFER5";
          break;
        case 34859:
          result = "GL_DRAW_BUFFER6";
          break;
        case 34860:
          result = "GL_DRAW_BUFFER7";
          break;
        case 34861:
          result = "GL_DRAW_BUFFER8";
          break;
        case 34862:
          result = "GL_DRAW_BUFFER9";
          break;
        case 34863:
          result = "GL_DRAW_BUFFER10";
          break;
        case 34864:
          result = "GL_DRAW_BUFFER11";
          break;
        case 34865:
          result = "GL_DRAW_BUFFER12";
          break;
        case 34866:
          result = "GL_DRAW_BUFFER13";
          break;
        case 34867:
          result = "GL_DRAW_BUFFER14";
          break;
        case 34868:
          result = "GL_DRAW_BUFFER15";
          break;
        case 34871:
          result = "GL_COMPRESSED_LUMINANCE_ALPHA_3DC_ATI";
          break;
        case 34877:
          result = "GL_BLEND_EQUATION_ALPHA";
          break;
        case 34880:
          result = "GL_MATRIX_PALETTE_OES";
          break;
        case 34882:
          result = "GL_MAX_PALETTE_MATRICES_OES";
          break;
        case 34883:
          result = "GL_CURRENT_PALETTE_MATRIX_OES";
          break;
        case 34884:
          result = "GL_MATRIX_INDEX_ARRAY_OES";
          break;
        case 34886:
          result = "GL_MATRIX_INDEX_ARRAY_SIZE_OES";
          break;
        case 34887:
          result = "GL_MATRIX_INDEX_ARRAY_TYPE_OES";
          break;
        case 34888:
          result = "GL_MATRIX_INDEX_ARRAY_STRIDE_OES";
          break;
        case 34889:
          result = "GL_MATRIX_INDEX_ARRAY_POINTER_OES";
          break;
        case 34890:
          result = "GL_TEXTURE_DEPTH_SIZE";
          break;
        case 34891:
          result = "GL_DEPTH_TEXTURE_MODE";
          break;
        case 34892:
          result = "GL_TEXTURE_COMPARE_MODE";
          break;
        case 34893:
          result = "GL_TEXTURE_COMPARE_FUNC";
          break;
        case 34894:
          result = "GL_COMPARE_REF_TO_TEXTURE";
          break;
        case 34895:
          result = "GL_TEXTURE_CUBE_MAP_SEAMLESS";
          break;
        case 34896:
          result = "GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV";
          break;
        case 34897:
          result = "GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV";
          break;
        case 34898:
          result = "GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV";
          break;
        case 34899:
          result = "GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV";
          break;
        case 34900:
          result = "GL_OFFSET_HILO_TEXTURE_2D_NV";
          break;
        case 34901:
          result = "GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV";
          break;
        case 34902:
          result = "GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV";
          break;
        case 34903:
          result = "GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV";
          break;
        case 34904:
          result = "GL_DEPENDENT_HILO_TEXTURE_2D_NV";
          break;
        case 34905:
          result = "GL_DEPENDENT_RGB_TEXTURE_3D_NV";
          break;
        case 34906:
          result = "GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV";
          break;
        case 34907:
          result = "GL_DOT_PRODUCT_PASS_THROUGH_NV";
          break;
        case 34908:
          result = "GL_DOT_PRODUCT_TEXTURE_1D_NV";
          break;
        case 34909:
          result = "GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV";
          break;
        case 34910:
          result = "GL_HILO8_NV";
          break;
        case 34911:
          result = "GL_SIGNED_HILO8_NV";
          break;
        case 34912:
          result = "GL_FORCE_BLUE_TO_ONE_NV";
          break;
        case 34913:
          result = "GL_POINT_SPRITE";
          break;
        case 34914:
          result = "GL_COORD_REPLACE";
          break;
        case 34915:
          result = "GL_POINT_SPRITE_R_MODE_NV";
          break;
        case 34916:
          result = "GL_QUERY_COUNTER_BITS";
          break;
        case 34917:
          result = "GL_CURRENT_QUERY";
          break;
        case 34918:
          result = "GL_QUERY_RESULT";
          break;
        case 34919:
          result = "GL_QUERY_RESULT_AVAILABLE";
          break;
        case 34921:
          result = "GL_MAX_VERTEX_ATTRIBS";
          break;
        case 34922:
          result = "GL_VERTEX_ATTRIB_ARRAY_NORMALIZED";
          break;
        case 34924:
          result = "GL_MAX_TESS_CONTROL_INPUT_COMPONENTS";
          break;
        case 34925:
          result = "GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS";
          break;
        case 34929:
          result = "GL_MAX_TEXTURE_COORDS";
          break;
        case 34930:
          result = "GL_MAX_TEXTURE_IMAGE_UNITS";
          break;
        case 34932:
          result = "GL_PROGRAM_ERROR_STRING_ARB";
          break;
        case 34933:
          result = "GL_PROGRAM_FORMAT_ASCII_ARB";
          break;
        case 34934:
          result = "GL_PROGRAM_FORMAT_ARB";
          break;
        case 34943:
          result = "GL_GEOMETRY_SHADER_INVOCATIONS";
          break;
        case 34960:
          result = "GL_DEPTH_BOUNDS_TEST_EXT";
          break;
        case 34961:
          result = "GL_DEPTH_BOUNDS_EXT";
          break;
        case 34962:
          result = "GL_ARRAY_BUFFER";
          break;
        case 34963:
          result = "GL_ELEMENT_ARRAY_BUFFER";
          break;
        case 34964:
          result = "GL_ARRAY_BUFFER_BINDING";
          break;
        case 34965:
          result = "GL_ELEMENT_ARRAY_BUFFER_BINDING";
          break;
        case 34966:
          result = "GL_VERTEX_ARRAY_BUFFER_BINDING";
          break;
        case 34967:
          result = "GL_NORMAL_ARRAY_BUFFER_BINDING";
          break;
        case 34968:
          result = "GL_COLOR_ARRAY_BUFFER_BINDING";
          break;
        case 34969:
          result = "GL_INDEX_ARRAY_BUFFER_BINDING";
          break;
        case 34970:
          result = "GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING";
          break;
        case 34971:
          result = "GL_EDGE_FLAG_ARRAY_BUFFER_BINDING";
          break;
        case 34972:
          result = "GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING";
          break;
        case 34973:
          result = "GL_FOG_COORD_ARRAY_BUFFER_BINDING";
          break;
        case 34974:
          result = "GL_WEIGHT_ARRAY_BUFFER_BINDING";
          break;
        case 34975:
          result = "GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING";
          break;
        case 34976:
          result = "GL_PROGRAM_INSTRUCTIONS_ARB";
          break;
        case 34977:
          result = "GL_MAX_PROGRAM_INSTRUCTIONS_ARB";
          break;
        case 34978:
          result = "GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB";
          break;
        case 34979:
          result = "GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB";
          break;
        case 34980:
          result = "GL_PROGRAM_TEMPORARIES_ARB";
          break;
        case 34981:
          result = "GL_MAX_PROGRAM_TEMPORARIES_ARB";
          break;
        case 34982:
          result = "GL_PROGRAM_NATIVE_TEMPORARIES_ARB";
          break;
        case 34983:
          result = "GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB";
          break;
        case 34984:
          result = "GL_PROGRAM_PARAMETERS_ARB";
          break;
        case 34985:
          result = "GL_MAX_PROGRAM_PARAMETERS_ARB";
          break;
        case 34986:
          result = "GL_PROGRAM_NATIVE_PARAMETERS_ARB";
          break;
        case 34987:
          result = "GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB";
          break;
        case 34988:
          result = "GL_PROGRAM_ATTRIBS_ARB";
          break;
        case 34989:
          result = "GL_MAX_PROGRAM_ATTRIBS_ARB";
          break;
        case 34990:
          result = "GL_PROGRAM_NATIVE_ATTRIBS_ARB";
          break;
        case 34991:
          result = "GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB";
          break;
        case 34992:
          result = "GL_PROGRAM_ADDRESS_REGISTERS_ARB";
          break;
        case 34993:
          result = "GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB";
          break;
        case 34994:
          result = "GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB";
          break;
        case 34995:
          result = "GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB";
          break;
        case 34996:
          result = "GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB";
          break;
        case 34997:
          result = "GL_MAX_PROGRAM_ENV_PARAMETERS_ARB";
          break;
        case 34998:
          result = "GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB";
          break;
        case 34999:
          result = "GL_TRANSPOSE_CURRENT_MATRIX_ARB";
          break;
        case 35000:
          result = "GL_READ_ONLY";
          break;
        case 35001:
          result = "GL_WRITE_ONLY";
          break;
        case 35002:
          result = "GL_READ_WRITE";
          break;
        case 35003:
          result = "GL_BUFFER_ACCESS";
          break;
        case 35004:
          result = "GL_BUFFER_MAPPED";
          break;
        case 35005:
          result = "GL_BUFFER_MAP_POINTER";
          break;
        case 35007:
          result = "GL_TIME_ELAPSED";
          break;
        case 35008:
          result = "GL_MATRIX0_ARB";
          break;
        case 35009:
          result = "GL_MATRIX1_ARB";
          break;
        case 35010:
          result = "GL_MATRIX2_ARB";
          break;
        case 35011:
          result = "GL_MATRIX3_ARB";
          break;
        case 35012:
          result = "GL_MATRIX4_ARB";
          break;
        case 35013:
          result = "GL_MATRIX5_ARB";
          break;
        case 35014:
          result = "GL_MATRIX6_ARB";
          break;
        case 35015:
          result = "GL_MATRIX7_ARB";
          break;
        case 35016:
          result = "GL_MATRIX8_ARB";
          break;
        case 35017:
          result = "GL_MATRIX9_ARB";
          break;
        case 35018:
          result = "GL_MATRIX10_ARB";
          break;
        case 35019:
          result = "GL_MATRIX11_ARB";
          break;
        case 35020:
          result = "GL_MATRIX12_ARB";
          break;
        case 35021:
          result = "GL_MATRIX13_ARB";
          break;
        case 35022:
          result = "GL_MATRIX14_ARB";
          break;
        case 35023:
          result = "GL_MATRIX15_ARB";
          break;
        case 35024:
          result = "GL_MATRIX16_ARB";
          break;
        case 35025:
          result = "GL_MATRIX17_ARB";
          break;
        case 35026:
          result = "GL_MATRIX18_ARB";
          break;
        case 35027:
          result = "GL_MATRIX19_ARB";
          break;
        case 35028:
          result = "GL_MATRIX20_ARB";
          break;
        case 35029:
          result = "GL_MATRIX21_ARB";
          break;
        case 35030:
          result = "GL_MATRIX22_ARB";
          break;
        case 35031:
          result = "GL_MATRIX23_ARB";
          break;
        case 35032:
          result = "GL_MATRIX24_ARB";
          break;
        case 35033:
          result = "GL_MATRIX25_ARB";
          break;
        case 35034:
          result = "GL_MATRIX26_ARB";
          break;
        case 35035:
          result = "GL_MATRIX27_ARB";
          break;
        case 35036:
          result = "GL_MATRIX28_ARB";
          break;
        case 35037:
          result = "GL_MATRIX29_ARB";
          break;
        case 35038:
          result = "GL_MATRIX30_ARB";
          break;
        case 35039:
          result = "GL_MATRIX31_ARB";
          break;
        case 35040:
          result = "GL_STREAM_DRAW";
          break;
        case 35041:
          result = "GL_STREAM_READ";
          break;
        case 35042:
          result = "GL_STREAM_COPY";
          break;
        case 35044:
          result = "GL_STATIC_DRAW";
          break;
        case 35045:
          result = "GL_STATIC_READ";
          break;
        case 35046:
          result = "GL_STATIC_COPY";
          break;
        case 35048:
          result = "GL_DYNAMIC_DRAW";
          break;
        case 35049:
          result = "GL_DYNAMIC_READ";
          break;
        case 35050:
          result = "GL_DYNAMIC_COPY";
          break;
        case 35051:
          result = "GL_PIXEL_PACK_BUFFER";
          break;
        case 35052:
          result = "GL_PIXEL_UNPACK_BUFFER";
          break;
        case 35053:
          result = "GL_PIXEL_PACK_BUFFER_BINDING";
          break;
        case 35055:
          result = "GL_PIXEL_UNPACK_BUFFER_BINDING";
          break;
        case 35056:
          result = "GL_DEPTH24_STENCIL8";
          break;
        case 35057:
          result = "GL_TEXTURE_STENCIL_SIZE";
          break;
        case 35060:
          result = "GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV";
          break;
        case 35061:
          result = "GL_MAX_PROGRAM_CALL_DEPTH_NV";
          break;
        case 35062:
          result = "GL_MAX_PROGRAM_IF_DEPTH_NV";
          break;
        case 35063:
          result = "GL_MAX_PROGRAM_LOOP_DEPTH_NV";
          break;
        case 35064:
          result = "GL_MAX_PROGRAM_LOOP_COUNT_NV";
          break;
        case 35065:
          result = "GL_SRC1_COLOR";
          break;
        case 35066:
          result = "GL_ONE_MINUS_SRC1_COLOR";
          break;
        case 35067:
          result = "GL_ONE_MINUS_SRC1_ALPHA";
          break;
        case 35068:
          result = "GL_MAX_DUAL_SOURCE_DRAW_BUFFERS";
          break;
        case 35069:
          result = "GL_VERTEX_ATTRIB_ARRAY_INTEGER";
          break;
        case 35070:
          result = "GL_VERTEX_ATTRIB_ARRAY_DIVISOR";
          break;
        case 35071:
          result = "GL_MAX_ARRAY_TEXTURE_LAYERS";
          break;
        case 35076:
          result = "GL_MIN_PROGRAM_TEXEL_OFFSET";
          break;
        case 35077:
          result = "GL_MAX_PROGRAM_TEXEL_OFFSET";
          break;
        case 35088:
          result = "GL_STENCIL_TEST_TWO_SIDE_EXT";
          break;
        case 35089:
          result = "GL_ACTIVE_STENCIL_FACE_EXT";
          break;
        case 35090:
          result = "GL_MIRROR_CLAMP_TO_BORDER_EXT";
          break;
        case 35092:
          result = "GL_SAMPLES_PASSED";
          break;
        case 35094:
          result = "GL_GEOMETRY_VERTICES_OUT";
          break;
        case 35095:
          result = "GL_GEOMETRY_INPUT_TYPE";
          break;
        case 35096:
          result = "GL_GEOMETRY_OUTPUT_TYPE";
          break;
        case 35097:
          result = "GL_SAMPLER_BINDING";
          break;
        case 35098:
          result = "GL_CLAMP_VERTEX_COLOR_ARB";
          break;
        case 35099:
          result = "GL_CLAMP_FRAGMENT_COLOR_ARB";
          break;
        case 35100:
          result = "GL_CLAMP_READ_COLOR";
          break;
        case 35101:
          result = "GL_FIXED_ONLY";
          break;
        case 35196:
          result = "GL_ARRAY_REV_COMPS_IN_4_BYTES_ATI";
          break;
        case 35210:
          result = "GL_POINT_SIZE_ARRAY_TYPE_OES";
          break;
        case 35211:
          result = "GL_POINT_SIZE_ARRAY_STRIDE_OES";
          break;
        case 35212:
          result = "GL_POINT_SIZE_ARRAY_POINTER_OES";
          break;
        case 35213:
          result = "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES";
          break;
        case 35214:
          result = "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES";
          break;
        case 35215:
          result = "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES";
          break;
        case 35328:
          result = "GL_VERTEX_ATTRIB_MAP1_APPLE";
          break;
        case 35329:
          result = "GL_VERTEX_ATTRIB_MAP2_APPLE";
          break;
        case 35330:
          result = "GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE";
          break;
        case 35331:
          result = "GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE";
          break;
        case 35332:
          result = "GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE";
          break;
        case 35333:
          result = "GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE";
          break;
        case 35334:
          result = "GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE";
          break;
        case 35335:
          result = "GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE";
          break;
        case 35336:
          result = "GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE";
          break;
        case 35337:
          result = "GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE";
          break;
        case 35338:
          result = "GL_DRAW_PIXELS_APPLE";
          break;
        case 35339:
          result = "GL_FENCE_APPLE";
          break;
        case 35340:
          result = "GL_ELEMENT_ARRAY_APPLE";
          break;
        case 35341:
          result = "GL_ELEMENT_ARRAY_TYPE_APPLE";
          break;
        case 35342:
          result = "GL_ELEMENT_ARRAY_POINTER_APPLE";
          break;
        case 35343:
          result = "GL_COLOR_FLOAT_APPLE";
          break;
        case 35344:
          result = "GL_MIN_PBUFFER_VIEWPORT_DIMS_APPLE";
          break;
        case 35345:
          result = "GL_UNIFORM_BUFFER";
          break;
        case 35346:
          result = "GL_BUFFER_SERIALIZED_MODIFY_APPLE";
          break;
        case 35347:
          result = "GL_BUFFER_FLUSHING_UNMAP_APPLE";
          break;
        case 35348:
          result = "GL_AUX_DEPTH_STENCIL_APPLE";
          break;
        case 35349:
          result = "GL_PACK_ROW_BYTES_APPLE";
          break;
        case 35350:
          result = "GL_UNPACK_ROW_BYTES_APPLE";
          break;
        case 35351:
          result = "GL_PACK_IMAGE_BYTES_APPLE";
          break;
        case 35352:
          result = "GL_UNPACK_IMAGE_BYTES_APPLE";
          break;
        case 35353:
          result = "GL_RELEASED_APPLE";
          break;
        case 35354:
          result = "GL_VOLATILE_APPLE";
          break;
        case 35355:
          result = "GL_RETAINED_APPLE";
          break;
        case 35356:
          result = "GL_UNDEFINED_APPLE";
          break;
        case 35357:
          result = "GL_PURGEABLE_APPLE";
          break;
        case 35358:
          result = "GL_PRIVATE_EXTENSIONS_APPLE";
          break;
        case 35359:
          result = "GL_RGB_422_APPLE";
          break;
        case 35366:
          result = "GL_VERTEX_POINT_SIZE_APPLE";
          break;
        case 35367:
          result = "GL_CURRENT_POINT_SIZE_APPLE";
          break;
        case 35368:
          result = "GL_UNIFORM_BUFFER_BINDING";
          break;
        case 35369:
          result = "GL_UNIFORM_BUFFER_START";
          break;
        case 35370:
          result = "GL_UNIFORM_BUFFER_SIZE";
          break;
        case 35371:
          result = "GL_MAX_VERTEX_UNIFORM_BLOCKS";
          break;
        case 35372:
          result = "GL_MAX_GEOMETRY_UNIFORM_BLOCKS";
          break;
        case 35373:
          result = "GL_MAX_FRAGMENT_UNIFORM_BLOCKS";
          break;
        case 35374:
          result = "GL_MAX_COMBINED_UNIFORM_BLOCKS";
          break;
        case 35375:
          result = "GL_MAX_UNIFORM_BUFFER_BINDINGS";
          break;
        case 35376:
          result = "GL_MAX_UNIFORM_BLOCK_SIZE";
          break;
        case 35377:
          result = "GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS";
          break;
        case 35378:
          result = "GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS";
          break;
        case 35379:
          result = "GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS";
          break;
        case 35380:
          result = "GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT";
          break;
        case 35381:
          result = "GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH";
          break;
        case 35382:
          result = "GL_ACTIVE_UNIFORM_BLOCKS";
          break;
        case 35383:
          result = "GL_UNIFORM_TYPE";
          break;
        case 35384:
          result = "GL_UNIFORM_SIZE";
          break;
        case 35385:
          result = "GL_UNIFORM_NAME_LENGTH";
          break;
        case 35386:
          result = "GL_UNIFORM_BLOCK_INDEX";
          break;
        case 35387:
          result = "GL_UNIFORM_OFFSET";
          break;
        case 35388:
          result = "GL_UNIFORM_ARRAY_STRIDE";
          break;
        case 35389:
          result = "GL_UNIFORM_MATRIX_STRIDE";
          break;
        case 35390:
          result = "GL_UNIFORM_IS_ROW_MAJOR";
          break;
        case 35391:
          result = "GL_UNIFORM_BLOCK_BINDING";
          break;
        case 35392:
          result = "GL_UNIFORM_BLOCK_DATA_SIZE";
          break;
        case 35393:
          result = "GL_UNIFORM_BLOCK_NAME_LENGTH";
          break;
        case 35394:
          result = "GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS";
          break;
        case 35395:
          result = "GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES";
          break;
        case 35396:
          result = "GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER";
          break;
        case 35397:
          result = "GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER";
          break;
        case 35398:
          result = "GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER";
          break;
        case 35400:
          result = "GL_TEXTURE_SRGB_DECODE_EXT";
          break;
        case 35401:
          result = "GL_DECODE_EXT";
          break;
        case 35402:
          result = "GL_SKIP_DECODE_EXT";
          break;
        case 35403:
          result = "GL_MAGIC_MIPMAP_APPLE";
          break;
        case 35407:
          result = "GL_PROGRAM_PIPELINE_OBJECT_EXT";
          break;
        case 35408:
          result = "GL_RGB_YCBCR_422_APPLE";
          break;
        case 35409:
          result = "GL_RGB_RAW_422_APPLE";
          break;
        case 35410:
          result = "GL_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT";
          break;
        case 35411:
          result = "GL_SYNC_OBJECT_APPLE";
          break;
        case 35412:
          result = "GL_COMPRESSED_SRGB_PVRTC_2BPPV1_EXT";
          break;
        case 35413:
          result = "GL_COMPRESSED_SRGB_PVRTC_4BPPV1_EXT";
          break;
        case 35414:
          result = "GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV1_EXT";
          break;
        case 35415:
          result = "GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV1_EXT";
          break;
        case 35416:
          result = "GL_CUBIC_APPLE";
          break;
        case 35417:
          result = "GL_CUBIC_MIPMAP_NEAREST_APPLE";
          break;
        case 35418:
          result = "GL_CUBIC_MIPMAP_LINEAR_APPLE";
          break;
        case 35419:
          result = "GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_TARGET_APPLE";
          break;
        case 35420:
          result = "GL_COMPRESSED_RGBA_ASTC_4x2_APPLE";
          break;
        case 35421:
          result = "GL_COMPRESSED_RGBA_ASTC_8x4_APPLE";
          break;
        case 35422:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x2_APPLE";
          break;
        case 35423:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x4_APPLE";
          break;
        case 35424:
          result = "GL_UNIFORM_REFERENCED_BY_VERTEX_SHADER_APPLE";
          break;
        case 35425:
          result = "GL_UNIFORM_REFERENCED_BY_TESS_CONTROL_SHADER_APPLE";
          break;
        case 35426:
          result = "GL_UNIFORM_REFERENCED_BY_TESS_EVAL_SHADER_APPLE";
          break;
        case 35427:
          result = "GL_UNIFORM_REFERENCED_BY_GEOMETRY_SHADER_APPLE";
          break;
        case 35428:
          result = "GL_UNIFORM_REFERENCED_BY_FRAGMENT_SHADER_APPLE";
          break;
        case 35429:
          result = "GL_YCBCR8_420_2PLANE_APPLE";
          break;
        case 35430:
          result = "GL_YCBCR8_422_1PLANE_APPLE";
          break;
        case 35431:
          result = "GL_YCBCR8_422_2PLANE_APPLE";
          break;
        case 35432:
          result = "GL_YCBCR8_444_2PLANE_APPLE";
          break;
        case 35433:
          result = "GL_YCBCR10_444_1PLANE_APPLE";
          break;
        case 35434:
          result = "GL_YCBCR10_422_2PLANE_APPLE";
          break;
        case 35435:
          result = "GL_YCBCR10_420_2PLANE_APPLE";
          break;
        case 35436:
          result = "GL_YCBCR10_444_2PLANE_APPLE";
          break;
        case 35437:
          result = "GL_SRGB_YCBCR8_420_2PLANE_APPLE";
          break;
        case 35438:
          result = "GL_SRGB_YCBCR8_422_1PLANE_APPLE";
          break;
        case 35439:
          result = "GL_SRGB_YCBCR8_422_2PLANE_APPLE";
          break;
        case 35440:
          result = "GL_SRGB_YCBCR8_444_2PLANE_APPLE";
          break;
        case 35441:
          result = "GL_SRGB_YCBCR10_444_1PLANE_APPLE";
          break;
        case 35442:
          result = "GL_SRGB_YCBCR10_422_2PLANE_APPLE";
          break;
        case 35443:
          result = "GL_SRGB_YCBCR10_420_2PLANE_APPLE";
          break;
        case 35444:
          result = "GL_SRGB_YCBCR10_444_2PLANE_APPLE";
          break;
        case 35445:
          result = "GL_FUNC_OVERRIDE_BLEND_SOURCE_COLOR_APPLE";
          break;
        case 35446:
          result = "GL_ARGBV16_XR10_APPLE";
          break;
        case 35447:
          result = "GL_SRGB_ARGBV16_XR10_APPLE";
          break;
        case 35448:
          result = "GL_SR8_APPLE";
          break;
        case 35449:
          result = "GL_FRAMEBUFFER_TILE_ORDER_ROT_APPLE";
          break;
        case 35450:
          result = "GL_FRAMEBUFFER_TILE_ORDER_ROT_0_APPLE";
          break;
        case 35451:
          result = "GL_FRAMEBUFFER_TILE_ORDER_ROT_90_APPLE";
          break;
        case 35452:
          result = "GL_FRAMEBUFFER_TILE_ORDER_ROT_180_APPLE";
          break;
        case 35453:
          result = "GL_FRAMEBUFFER_TILE_ORDER_ROT_270_APPLE";
          break;
        case 35454:
          result = "GL_VERTEX_STORAGE_MEMORY_COHERENT_APPLE";
          break;
        case 35455:
          result = "GL_TEXTURE_STORAGE_MEMORY_COHERENT_APPLE";
          break;
        case 35632:
          result = "GL_FRAGMENT_SHADER";
          break;
        case 35633:
          result = "GL_VERTEX_SHADER";
          break;
        case 35648:
          result = "GL_PROGRAM_OBJECT_EXT";
          break;
        case 35656:
          result = "GL_SHADER_OBJECT_EXT";
          break;
        case 35657:
          result = "GL_MAX_FRAGMENT_UNIFORM_COMPONENTS";
          break;
        case 35658:
          result = "GL_MAX_VERTEX_UNIFORM_COMPONENTS";
          break;
        case 35659:
          result = "GL_MAX_VARYING_COMPONENTS";
          break;
        case 35660:
          result = "GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS";
          break;
        case 35661:
          result = "GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS";
          break;
        case 35662:
          result = "GL_OBJECT_TYPE_ARB";
          break;
        case 35663:
          result = "GL_SHADER_TYPE";
          break;
        case 35664:
          result = "GL_FLOAT_VEC2";
          break;
        case 35665:
          result = "GL_FLOAT_VEC3";
          break;
        case 35666:
          result = "GL_FLOAT_VEC4";
          break;
        case 35667:
          result = "GL_INT_VEC2";
          break;
        case 35668:
          result = "GL_INT_VEC3";
          break;
        case 35669:
          result = "GL_INT_VEC4";
          break;
        case 35670:
          result = "GL_BOOL";
          break;
        case 35671:
          result = "GL_BOOL_VEC2";
          break;
        case 35672:
          result = "GL_BOOL_VEC3";
          break;
        case 35673:
          result = "GL_BOOL_VEC4";
          break;
        case 35674:
          result = "GL_FLOAT_MAT2";
          break;
        case 35675:
          result = "GL_FLOAT_MAT3";
          break;
        case 35676:
          result = "GL_FLOAT_MAT4";
          break;
        case 35677:
          result = "GL_SAMPLER_1D";
          break;
        case 35678:
          result = "GL_SAMPLER_2D";
          break;
        case 35679:
          result = "GL_SAMPLER_3D";
          break;
        case 35680:
          result = "GL_SAMPLER_CUBE";
          break;
        case 35681:
          result = "GL_SAMPLER_1D_SHADOW";
          break;
        case 35682:
          result = "GL_SAMPLER_2D_SHADOW";
          break;
        case 35683:
          result = "GL_SAMPLER_2D_RECT";
          break;
        case 35684:
          result = "GL_SAMPLER_2D_RECT_SHADOW";
          break;
        case 35685:
          result = "GL_FLOAT_MAT2x3";
          break;
        case 35686:
          result = "GL_FLOAT_MAT2x4";
          break;
        case 35687:
          result = "GL_FLOAT_MAT3x2";
          break;
        case 35688:
          result = "GL_FLOAT_MAT3x4";
          break;
        case 35689:
          result = "GL_FLOAT_MAT4x2";
          break;
        case 35690:
          result = "GL_FLOAT_MAT4x3";
          break;
        case 35712:
          result = "GL_DELETE_STATUS";
          break;
        case 35713:
          result = "GL_COMPILE_STATUS";
          break;
        case 35714:
          result = "GL_LINK_STATUS";
          break;
        case 35715:
          result = "GL_VALIDATE_STATUS";
          break;
        case 35716:
          result = "GL_INFO_LOG_LENGTH";
          break;
        case 35717:
          result = "GL_ATTACHED_SHADERS";
          break;
        case 35718:
          result = "GL_ACTIVE_UNIFORMS";
          break;
        case 35719:
          result = "GL_ACTIVE_UNIFORM_MAX_LENGTH";
          break;
        case 35720:
          result = "GL_SHADER_SOURCE_LENGTH";
          break;
        case 35721:
          result = "GL_ACTIVE_ATTRIBUTES";
          break;
        case 35722:
          result = "GL_ACTIVE_ATTRIBUTE_MAX_LENGTH";
          break;
        case 35723:
          result = "GL_FRAGMENT_SHADER_DERIVATIVE_HINT";
          break;
        case 35724:
          result = "GL_SHADING_LANGUAGE_VERSION";
          break;
        case 35725:
          result = "GL_CURRENT_PROGRAM";
          break;
        case 35728:
          result = "GL_PALETTE4_RGB8_OES";
          break;
        case 35729:
          result = "GL_PALETTE4_RGBA8_OES";
          break;
        case 35730:
          result = "GL_PALETTE4_R5_G6_B5_OES";
          break;
        case 35731:
          result = "GL_PALETTE4_RGBA4_OES";
          break;
        case 35732:
          result = "GL_PALETTE4_RGB5_A1_OES";
          break;
        case 35733:
          result = "GL_PALETTE8_RGB8_OES";
          break;
        case 35734:
          result = "GL_PALETTE8_RGBA8_OES";
          break;
        case 35735:
          result = "GL_PALETTE8_R5_G6_B5_OES";
          break;
        case 35736:
          result = "GL_PALETTE8_RGBA4_OES";
          break;
        case 35737:
          result = "GL_PALETTE8_RGB5_A1_OES";
          break;
        case 35738:
          result = "GL_IMPLEMENTATION_COLOR_READ_TYPE";
          break;
        case 35739:
          result = "GL_IMPLEMENTATION_COLOR_READ_FORMAT";
          break;
        case 35740:
          result = "GL_POINT_SIZE_ARRAY_OES";
          break;
        case 35741:
          result = "GL_TEXTURE_CROP_RECT_OES";
          break;
        case 35742:
          result = "GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES";
          break;
        case 35743:
          result = "GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES";
          break;
        case 35840:
          result = "GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG";
          break;
        case 35841:
          result = "GL_COMPRESSED_RGB_PVRTC_2BPPV1_IMG";
          break;
        case 35842:
          result = "GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG";
          break;
        case 35843:
          result = "GL_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG";
          break;
        case 35856:
          result = "GL_TEXTURE_RED_TYPE";
          break;
        case 35857:
          result = "GL_TEXTURE_GREEN_TYPE";
          break;
        case 35858:
          result = "GL_TEXTURE_BLUE_TYPE";
          break;
        case 35859:
          result = "GL_TEXTURE_ALPHA_TYPE";
          break;
        case 35860:
          result = "GL_TEXTURE_LUMINANCE_TYPE_ARB";
          break;
        case 35861:
          result = "GL_TEXTURE_INTENSITY_TYPE_ARB";
          break;
        case 35862:
          result = "GL_TEXTURE_DEPTH_TYPE";
          break;
        case 35863:
          result = "GL_UNSIGNED_NORMALIZED";
          break;
        case 35864:
          result = "GL_TEXTURE_1D_ARRAY";
          break;
        case 35865:
          result = "GL_PROXY_TEXTURE_1D_ARRAY";
          break;
        case 35866:
          result = "GL_TEXTURE_2D_ARRAY";
          break;
        case 35867:
          result = "GL_PROXY_TEXTURE_2D_ARRAY";
          break;
        case 35868:
          result = "GL_TEXTURE_BINDING_1D_ARRAY";
          break;
        case 35869:
          result = "GL_TEXTURE_BINDING_2D_ARRAY";
          break;
        case 35881:
          result = "GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS";
          break;
        case 35882:
          result = "GL_TEXTURE_BUFFER";
          break;
        case 35883:
          result = "GL_MAX_TEXTURE_BUFFER_SIZE";
          break;
        case 35884:
          result = "GL_TEXTURE_BINDING_BUFFER";
          break;
        case 35885:
          result = "GL_TEXTURE_BUFFER_DATA_STORE_BINDING";
          break;
        case 35887:
          result = "GL_ANY_SAMPLES_PASSED";
          break;
        case 35894:
          result = "GL_SAMPLE_SHADING";
          break;
        case 35895:
          result = "GL_MIN_SAMPLE_SHADING_VALUE";
          break;
        case 35898:
          result = "GL_R11F_G11F_B10F";
          break;
        case 35899:
          result = "GL_UNSIGNED_INT_10F_11F_11F_REV";
          break;
        case 35900:
          result = "GL_RGBA_SIGNED_COMPONENTS_EXT";
          break;
        case 35901:
          result = "GL_RGB9_E5";
          break;
        case 35902:
          result = "GL_UNSIGNED_INT_5_9_9_9_REV";
          break;
        case 35903:
          result = "GL_TEXTURE_SHARED_SIZE";
          break;
        case 35904:
          result = "GL_SRGB";
          break;
        case 35905:
          result = "GL_SRGB8";
          break;
        case 35906:
          result = "GL_SRGB_ALPHA";
          break;
        case 35907:
          result = "GL_SRGB8_ALPHA8";
          break;
        case 35908:
          result = "GL_SLUMINANCE_ALPHA";
          break;
        case 35909:
          result = "GL_SLUMINANCE8_ALPHA8";
          break;
        case 35910:
          result = "GL_SLUMINANCE";
          break;
        case 35911:
          result = "GL_SLUMINANCE8";
          break;
        case 35912:
          result = "GL_COMPRESSED_SRGB";
          break;
        case 35913:
          result = "GL_COMPRESSED_SRGB_ALPHA";
          break;
        case 35914:
          result = "GL_COMPRESSED_SLUMINANCE";
          break;
        case 35915:
          result = "GL_COMPRESSED_SLUMINANCE_ALPHA";
          break;
        case 35916:
          result = "GL_COMPRESSED_SRGB_S3TC_DXT1_EXT";
          break;
        case 35917:
          result = "GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT";
          break;
        case 35918:
          result = "GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT";
          break;
        case 35919:
          result = "GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT";
          break;
        case 35958:
          result = "GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH";
          break;
        case 35967:
          result = "GL_TRANSFORM_FEEDBACK_BUFFER_MODE";
          break;
        case 35968:
          result = "GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS";
          break;
        case 35971:
          result = "GL_TRANSFORM_FEEDBACK_VARYINGS";
          break;
        case 35972:
          result = "GL_TRANSFORM_FEEDBACK_BUFFER_START";
          break;
        case 35973:
          result = "GL_TRANSFORM_FEEDBACK_BUFFER_SIZE";
          break;
        case 35975:
          result = "GL_PRIMITIVES_GENERATED";
          break;
        case 35976:
          result = "GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN";
          break;
        case 35977:
          result = "GL_RASTERIZER_DISCARD";
          break;
        case 35978:
          result = "GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS";
          break;
        case 35979:
          result = "GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS";
          break;
        case 35980:
          result = "GL_INTERLEAVED_ATTRIBS";
          break;
        case 35981:
          result = "GL_SEPARATE_ATTRIBS";
          break;
        case 35982:
          result = "GL_TRANSFORM_FEEDBACK_BUFFER";
          break;
        case 35983:
          result = "GL_TRANSFORM_FEEDBACK_BUFFER_BINDING";
          break;
        case 36000:
          result = "GL_POINT_SPRITE_COORD_ORIGIN";
          break;
        case 36001:
          result = "GL_LOWER_LEFT";
          break;
        case 36002:
          result = "GL_UPPER_LEFT";
          break;
        case 36003:
          result = "GL_STENCIL_BACK_REF";
          break;
        case 36004:
          result = "GL_STENCIL_BACK_VALUE_MASK";
          break;
        case 36005:
          result = "GL_STENCIL_BACK_WRITEMASK";
          break;
        case 36006:
          result = "GL_FRAMEBUFFER_BINDING";
          break;
        case 36007:
          result = "GL_RENDERBUFFER_BINDING";
          break;
        case 36008:
          result = "GL_READ_FRAMEBUFFER";
          break;
        case 36009:
          result = "GL_DRAW_FRAMEBUFFER";
          break;
        case 36010:
          result = "GL_READ_FRAMEBUFFER_BINDING";
          break;
        case 36011:
          result = "GL_RENDERBUFFER_SAMPLES";
          break;
        case 36012:
          result = "GL_DEPTH_COMPONENT32F";
          break;
        case 36013:
          result = "GL_DEPTH32F_STENCIL8";
          break;
        case 36048:
          result = "GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE";
          break;
        case 36049:
          result = "GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME";
          break;
        case 36050:
          result = "GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL";
          break;
        case 36051:
          result = "GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE";
          break;
        case 36052:
          result = "GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER";
          break;
        case 36053:
          result = "GL_FRAMEBUFFER_COMPLETE";
          break;
        case 36054:
          result = "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT";
          break;
        case 36055:
          result = "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT";
          break;
        case 36057:
          result = "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS";
          break;
        case 36058:
          result = "GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT";
          break;
        case 36059:
          result = "GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER";
          break;
        case 36060:
          result = "GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER";
          break;
        case 36061:
          result = "GL_FRAMEBUFFER_UNSUPPORTED";
          break;
        case 36063:
          result = "GL_MAX_COLOR_ATTACHMENTS";
          break;
        case 36064:
          result = "GL_COLOR_ATTACHMENT0";
          break;
        case 36065:
          result = "GL_COLOR_ATTACHMENT1";
          break;
        case 36066:
          result = "GL_COLOR_ATTACHMENT2";
          break;
        case 36067:
          result = "GL_COLOR_ATTACHMENT3";
          break;
        case 36068:
          result = "GL_COLOR_ATTACHMENT4";
          break;
        case 36069:
          result = "GL_COLOR_ATTACHMENT5";
          break;
        case 36070:
          result = "GL_COLOR_ATTACHMENT6";
          break;
        case 36071:
          result = "GL_COLOR_ATTACHMENT7";
          break;
        case 36072:
          result = "GL_COLOR_ATTACHMENT8";
          break;
        case 36073:
          result = "GL_COLOR_ATTACHMENT9";
          break;
        case 36074:
          result = "GL_COLOR_ATTACHMENT10";
          break;
        case 36075:
          result = "GL_COLOR_ATTACHMENT11";
          break;
        case 36076:
          result = "GL_COLOR_ATTACHMENT12";
          break;
        case 36077:
          result = "GL_COLOR_ATTACHMENT13";
          break;
        case 36078:
          result = "GL_COLOR_ATTACHMENT14";
          break;
        case 36079:
          result = "GL_COLOR_ATTACHMENT15";
          break;
        case 36096:
          result = "GL_DEPTH_ATTACHMENT";
          break;
        case 36128:
          result = "GL_STENCIL_ATTACHMENT";
          break;
        case 36160:
          result = "GL_FRAMEBUFFER";
          break;
        case 36161:
          result = "GL_RENDERBUFFER";
          break;
        case 36162:
          result = "GL_RENDERBUFFER_WIDTH";
          break;
        case 36163:
          result = "GL_RENDERBUFFER_HEIGHT";
          break;
        case 36164:
          result = "GL_RENDERBUFFER_INTERNAL_FORMAT";
          break;
        case 36166:
          result = "GL_STENCIL_INDEX1";
          break;
        case 36167:
          result = "GL_STENCIL_INDEX4";
          break;
        case 36168:
          result = "GL_STENCIL_INDEX8";
          break;
        case 36169:
          result = "GL_STENCIL_INDEX16";
          break;
        case 36176:
          result = "GL_RENDERBUFFER_RED_SIZE";
          break;
        case 36177:
          result = "GL_RENDERBUFFER_GREEN_SIZE";
          break;
        case 36178:
          result = "GL_RENDERBUFFER_BLUE_SIZE";
          break;
        case 36179:
          result = "GL_RENDERBUFFER_ALPHA_SIZE";
          break;
        case 36180:
          result = "GL_RENDERBUFFER_DEPTH_SIZE";
          break;
        case 36181:
          result = "GL_RENDERBUFFER_STENCIL_SIZE";
          break;
        case 36182:
          result = "GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE";
          break;
        case 36183:
          result = "GL_MAX_SAMPLES";
          break;
        case 36193:
          result = "GL_HALF_FLOAT_OES";
          break;
        case 36194:
          result = "GL_RGB565";
          break;
        case 36201:
          result = "GL_PRIMITIVE_RESTART_FIXED_INDEX";
          break;
        case 36202:
          result = "GL_ANY_SAMPLES_PASSED_CONSERVATIVE";
          break;
        case 36203:
          result = "GL_MAX_ELEMENT_INDEX";
          break;
        case 36208:
          result = "GL_RGBA32UI";
          break;
        case 36209:
          result = "GL_RGB32UI";
          break;
        case 36210:
          result = "GL_ALPHA32UI_EXT";
          break;
        case 36211:
          result = "GL_INTENSITY32UI_EXT";
          break;
        case 36212:
          result = "GL_LUMINANCE32UI_EXT";
          break;
        case 36213:
          result = "GL_LUMINANCE_ALPHA32UI_EXT";
          break;
        case 36214:
          result = "GL_RGBA16UI";
          break;
        case 36215:
          result = "GL_RGB16UI";
          break;
        case 36216:
          result = "GL_ALPHA16UI_EXT";
          break;
        case 36217:
          result = "GL_INTENSITY16UI_EXT";
          break;
        case 36218:
          result = "GL_LUMINANCE16UI_EXT";
          break;
        case 36219:
          result = "GL_LUMINANCE_ALPHA16UI_EXT";
          break;
        case 36220:
          result = "GL_RGBA8UI";
          break;
        case 36221:
          result = "GL_RGB8UI";
          break;
        case 36222:
          result = "GL_ALPHA8UI_EXT";
          break;
        case 36223:
          result = "GL_INTENSITY8UI_EXT";
          break;
        case 36224:
          result = "GL_LUMINANCE8UI_EXT";
          break;
        case 36225:
          result = "GL_LUMINANCE_ALPHA8UI_EXT";
          break;
        case 36226:
          result = "GL_RGBA32I";
          break;
        case 36227:
          result = "GL_RGB32I";
          break;
        case 36228:
          result = "GL_ALPHA32I_EXT";
          break;
        case 36229:
          result = "GL_INTENSITY32I_EXT";
          break;
        case 36230:
          result = "GL_LUMINANCE32I_EXT";
          break;
        case 36231:
          result = "GL_LUMINANCE_ALPHA32I_EXT";
          break;
        case 36232:
          result = "GL_RGBA16I";
          break;
        case 36233:
          result = "GL_RGB16I";
          break;
        case 36234:
          result = "GL_ALPHA16I_EXT";
          break;
        case 36235:
          result = "GL_INTENSITY16I_EXT";
          break;
        case 36236:
          result = "GL_LUMINANCE16I_EXT";
          break;
        case 36237:
          result = "GL_LUMINANCE_ALPHA16I_EXT";
          break;
        case 36238:
          result = "GL_RGBA8I";
          break;
        case 36239:
          result = "GL_RGB8I";
          break;
        case 36240:
          result = "GL_ALPHA8I_EXT";
          break;
        case 36241:
          result = "GL_INTENSITY8I_EXT";
          break;
        case 36242:
          result = "GL_LUMINANCE8I_EXT";
          break;
        case 36243:
          result = "GL_LUMINANCE_ALPHA8I_EXT";
          break;
        case 36244:
          result = "GL_RED_INTEGER";
          break;
        case 36245:
          result = "GL_GREEN_INTEGER";
          break;
        case 36246:
          result = "GL_BLUE_INTEGER";
          break;
        case 36247:
          result = "GL_ALPHA_INTEGER_EXT";
          break;
        case 36248:
          result = "GL_RGB_INTEGER";
          break;
        case 36249:
          result = "GL_RGBA_INTEGER";
          break;
        case 36250:
          result = "GL_BGR_INTEGER";
          break;
        case 36251:
          result = "GL_BGRA_INTEGER";
          break;
        case 36252:
          result = "GL_LUMINANCE_INTEGER_EXT";
          break;
        case 36253:
          result = "GL_LUMINANCE_ALPHA_INTEGER_EXT";
          break;
        case 36254:
          result = "GL_RGBA_INTEGER_MODE_EXT";
          break;
        case 36255:
          result = "GL_INT_2_10_10_10_REV";
          break;
        case 36263:
          result = "GL_FRAMEBUFFER_ATTACHMENT_LAYERED";
          break;
        case 36264:
          result = "GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS";
          break;
        case 36265:
          result = "GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT";
          break;
        case 36269:
          result = "GL_FLOAT_32_UNSIGNED_INT_24_8_REV";
          break;
        case 36270:
          result = "GL_SHADER_INCLUDE_ARB";
          break;
        case 36281:
          result = "GL_FRAMEBUFFER_SRGB";
          break;
        case 36282:
          result = "GL_FRAMEBUFFER_SRGB_CAPABLE_EXT";
          break;
        case 36283:
          result = "GL_COMPRESSED_RED_RGTC1";
          break;
        case 36284:
          result = "GL_COMPRESSED_SIGNED_RED_RGTC1";
          break;
        case 36285:
          result = "GL_COMPRESSED_RG_RGTC2";
          break;
        case 36286:
          result = "GL_COMPRESSED_SIGNED_RG_RGTC2";
          break;
        case 36288:
          result = "GL_SAMPLER_1D_ARRAY";
          break;
        case 36289:
          result = "GL_SAMPLER_2D_ARRAY";
          break;
        case 36290:
          result = "GL_SAMPLER_BUFFER";
          break;
        case 36291:
          result = "GL_SAMPLER_1D_ARRAY_SHADOW";
          break;
        case 36292:
          result = "GL_SAMPLER_2D_ARRAY_SHADOW";
          break;
        case 36293:
          result = "GL_SAMPLER_CUBE_SHADOW";
          break;
        case 36294:
          result = "GL_UNSIGNED_INT_VEC2";
          break;
        case 36295:
          result = "GL_UNSIGNED_INT_VEC3";
          break;
        case 36296:
          result = "GL_UNSIGNED_INT_VEC4";
          break;
        case 36297:
          result = "GL_INT_SAMPLER_1D";
          break;
        case 36298:
          result = "GL_INT_SAMPLER_2D";
          break;
        case 36299:
          result = "GL_INT_SAMPLER_3D";
          break;
        case 36300:
          result = "GL_INT_SAMPLER_CUBE";
          break;
        case 36301:
          result = "GL_INT_SAMPLER_2D_RECT";
          break;
        case 36302:
          result = "GL_INT_SAMPLER_1D_ARRAY";
          break;
        case 36303:
          result = "GL_INT_SAMPLER_2D_ARRAY";
          break;
        case 36304:
          result = "GL_INT_SAMPLER_BUFFER";
          break;
        case 36305:
          result = "GL_UNSIGNED_INT_SAMPLER_1D";
          break;
        case 36306:
          result = "GL_UNSIGNED_INT_SAMPLER_2D";
          break;
        case 36307:
          result = "GL_UNSIGNED_INT_SAMPLER_3D";
          break;
        case 36308:
          result = "GL_UNSIGNED_INT_SAMPLER_CUBE";
          break;
        case 36309:
          result = "GL_UNSIGNED_INT_SAMPLER_2D_RECT";
          break;
        case 36310:
          result = "GL_UNSIGNED_INT_SAMPLER_1D_ARRAY";
          break;
        case 36311:
          result = "GL_UNSIGNED_INT_SAMPLER_2D_ARRAY";
          break;
        case 36312:
          result = "GL_UNSIGNED_INT_SAMPLER_BUFFER";
          break;
        case 36313:
          result = "GL_GEOMETRY_SHADER";
          break;
        case 36314:
          result = "GL_GEOMETRY_VERTICES_OUT_EXT";
          break;
        case 36315:
          result = "GL_GEOMETRY_INPUT_TYPE_EXT";
          break;
        case 36316:
          result = "GL_GEOMETRY_OUTPUT_TYPE_EXT";
          break;
        case 36317:
          result = "GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT";
          break;
        case 36318:
          result = "GL_MAX_VERTEX_VARYING_COMPONENTS_EXT";
          break;
        case 36319:
          result = "GL_MAX_GEOMETRY_UNIFORM_COMPONENTS";
          break;
        case 36320:
          result = "GL_MAX_GEOMETRY_OUTPUT_VERTICES";
          break;
        case 36321:
          result = "GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS";
          break;
        case 36322:
          result = "GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT";
          break;
        case 36323:
          result = "GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT";
          break;
        case 36324:
          result = "GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT";
          break;
        case 36325:
          result = "GL_ACTIVE_SUBROUTINES";
          break;
        case 36326:
          result = "GL_ACTIVE_SUBROUTINE_UNIFORMS";
          break;
        case 36327:
          result = "GL_MAX_SUBROUTINES";
          break;
        case 36328:
          result = "GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS";
          break;
        case 36329:
          result = "GL_NAMED_STRING_LENGTH_ARB";
          break;
        case 36330:
          result = "GL_NAMED_STRING_TYPE_ARB";
          break;
        case 36333:
          result = "GL_MAX_BINDABLE_UNIFORM_SIZE_EXT";
          break;
        case 36334:
          result = "GL_UNIFORM_BUFFER_EXT";
          break;
        case 36335:
          result = "GL_UNIFORM_BUFFER_BINDING_EXT";
          break;
        case 36336:
          result = "GL_LOW_FLOAT";
          break;
        case 36337:
          result = "GL_MEDIUM_FLOAT";
          break;
        case 36338:
          result = "GL_HIGH_FLOAT";
          break;
        case 36339:
          result = "GL_LOW_INT";
          break;
        case 36340:
          result = "GL_MEDIUM_INT";
          break;
        case 36341:
          result = "GL_HIGH_INT";
          break;
        case 36344:
          result = "GL_SHADER_BINARY_FORMATS";
          break;
        case 36345:
          result = "GL_NUM_SHADER_BINARY_FORMATS";
          break;
        case 36346:
          result = "GL_SHADER_COMPILER";
          break;
        case 36347:
          result = "GL_MAX_VERTEX_UNIFORM_VECTORS";
          break;
        case 36348:
          result = "GL_MAX_VARYING_VECTORS";
          break;
        case 36349:
          result = "GL_MAX_FRAGMENT_UNIFORM_VECTORS";
          break;
        case 36371:
          result = "GL_QUERY_WAIT";
          break;
        case 36372:
          result = "GL_QUERY_NO_WAIT";
          break;
        case 36373:
          result = "GL_QUERY_BY_REGION_WAIT";
          break;
        case 36374:
          result = "GL_QUERY_BY_REGION_NO_WAIT";
          break;
        case 36382:
          result = "GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS";
          break;
        case 36383:
          result = "GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS";
          break;
        case 36386:
          result = "GL_TRANSFORM_FEEDBACK";
          break;
        case 36387:
          result = "GL_TRANSFORM_FEEDBACK_PAUSED";
          break;
        case 36388:
          result = "GL_TRANSFORM_FEEDBACK_ACTIVE";
          break;
        case 36389:
          result = "GL_TRANSFORM_FEEDBACK_BINDING";
          break;
        case 36392:
          result = "GL_TIMESTAMP";
          break;
        case 36418:
          result = "GL_TEXTURE_SWIZZLE_R";
          break;
        case 36419:
          result = "GL_TEXTURE_SWIZZLE_G";
          break;
        case 36420:
          result = "GL_TEXTURE_SWIZZLE_B";
          break;
        case 36421:
          result = "GL_TEXTURE_SWIZZLE_A";
          break;
        case 36422:
          result = "GL_TEXTURE_SWIZZLE_RGBA";
          break;
        case 36423:
          result = "GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS";
          break;
        case 36424:
          result = "GL_ACTIVE_SUBROUTINE_MAX_LENGTH";
          break;
        case 36425:
          result = "GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH";
          break;
        case 36426:
          result = "GL_NUM_COMPATIBLE_SUBROUTINES";
          break;
        case 36427:
          result = "GL_COMPATIBLE_SUBROUTINES";
          break;
        case 36428:
          result = "GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION";
          break;
        case 36429:
          result = "GL_FIRST_VERTEX_CONVENTION";
          break;
        case 36430:
          result = "GL_LAST_VERTEX_CONVENTION";
          break;
        case 36431:
          result = "GL_PROVOKING_VERTEX";
          break;
        case 36432:
          result = "GL_SAMPLE_POSITION";
          break;
        case 36433:
          result = "GL_SAMPLE_MASK";
          break;
        case 36434:
          result = "GL_SAMPLE_MASK_VALUE";
          break;
        case 36441:
          result = "GL_MAX_SAMPLE_MASK_WORDS";
          break;
        case 36442:
          result = "GL_MAX_GEOMETRY_SHADER_INVOCATIONS";
          break;
        case 36443:
          result = "GL_MIN_FRAGMENT_INTERPOLATION_OFFSET";
          break;
        case 36444:
          result = "GL_MAX_FRAGMENT_INTERPOLATION_OFFSET";
          break;
        case 36445:
          result = "GL_FRAGMENT_INTERPOLATION_OFFSET_BITS";
          break;
        case 36446:
          result = "GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET";
          break;
        case 36447:
          result = "GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET";
          break;
        case 36464:
          result = "GL_MAX_TRANSFORM_FEEDBACK_BUFFERS";
          break;
        case 36465:
          result = "GL_MAX_VERTEX_STREAMS";
          break;
        case 36466:
          result = "GL_PATCH_VERTICES";
          break;
        case 36467:
          result = "GL_PATCH_DEFAULT_INNER_LEVEL";
          break;
        case 36468:
          result = "GL_PATCH_DEFAULT_OUTER_LEVEL";
          break;
        case 36469:
          result = "GL_TESS_CONTROL_OUTPUT_VERTICES";
          break;
        case 36470:
          result = "GL_TESS_GEN_MODE";
          break;
        case 36471:
          result = "GL_TESS_GEN_SPACING";
          break;
        case 36472:
          result = "GL_TESS_GEN_VERTEX_ORDER";
          break;
        case 36473:
          result = "GL_TESS_GEN_POINT_MODE";
          break;
        case 36474:
          result = "GL_ISOLINES";
          break;
        case 36475:
          result = "GL_FRACTIONAL_ODD";
          break;
        case 36476:
          result = "GL_FRACTIONAL_EVEN";
          break;
        case 36477:
          result = "GL_MAX_PATCH_VERTICES";
          break;
        case 36478:
          result = "GL_MAX_TESS_GEN_LEVEL";
          break;
        case 36479:
          result = "GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS";
          break;
        case 36480:
          result = "GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS";
          break;
        case 36481:
          result = "GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS";
          break;
        case 36482:
          result = "GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS";
          break;
        case 36483:
          result = "GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS";
          break;
        case 36484:
          result = "GL_MAX_TESS_PATCH_COMPONENTS";
          break;
        case 36485:
          result = "GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS";
          break;
        case 36486:
          result = "GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS";
          break;
        case 36487:
          result = "GL_TESS_EVALUATION_SHADER";
          break;
        case 36488:
          result = "GL_TESS_CONTROL_SHADER";
          break;
        case 36489:
          result = "GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS";
          break;
        case 36490:
          result = "GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS";
          break;
        case 36662:
          result = "GL_COPY_READ_BUFFER";
          break;
        case 36663:
          result = "GL_COPY_WRITE_BUFFER";
          break;
        case 36671:
          result = "GL_DRAW_INDIRECT_BUFFER";
          break;
        case 36675:
          result = "GL_DRAW_INDIRECT_BUFFER_BINDING";
          break;
        case 36678:
          result = "GL_DOUBLE_MAT2";
          break;
        case 36679:
          result = "GL_DOUBLE_MAT3";
          break;
        case 36680:
          result = "GL_DOUBLE_MAT4";
          break;
        case 36681:
          result = "GL_DOUBLE_MAT2x3";
          break;
        case 36682:
          result = "GL_DOUBLE_MAT2x4";
          break;
        case 36683:
          result = "GL_DOUBLE_MAT3x2";
          break;
        case 36684:
          result = "GL_DOUBLE_MAT3x4";
          break;
        case 36685:
          result = "GL_DOUBLE_MAT4x2";
          break;
        case 36686:
          result = "GL_DOUBLE_MAT4x3";
          break;
        case 36756:
          result = "GL_R8_SNORM";
          break;
        case 36757:
          result = "GL_RG8_SNORM";
          break;
        case 36758:
          result = "GL_RGB8_SNORM";
          break;
        case 36759:
          result = "GL_RGBA8_SNORM";
          break;
        case 36760:
          result = "GL_R16_SNORM";
          break;
        case 36761:
          result = "GL_RG16_SNORM";
          break;
        case 36762:
          result = "GL_RGB16_SNORM";
          break;
        case 36763:
          result = "GL_RGBA16_SNORM";
          break;
        case 36764:
          result = "GL_SIGNED_NORMALIZED";
          break;
        case 36765:
          result = "GL_PRIMITIVE_RESTART";
          break;
        case 36766:
          result = "GL_PRIMITIVE_RESTART_INDEX";
          break;
        case 36767:
          result = "GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB";
          break;
        case 36860:
          result = "GL_DOUBLE_VEC2";
          break;
        case 36861:
          result = "GL_DOUBLE_VEC3";
          break;
        case 36862:
          result = "GL_DOUBLE_VEC4";
          break;
        case 36873:
          result = "GL_TEXTURE_CUBE_MAP_ARRAY";
          break;
        case 36874:
          result = "GL_TEXTURE_BINDING_CUBE_MAP_ARRAY";
          break;
        case 36875:
          result = "GL_PROXY_TEXTURE_CUBE_MAP_ARRAY";
          break;
        case 36876:
          result = "GL_SAMPLER_CUBE_MAP_ARRAY";
          break;
        case 36877:
          result = "GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW";
          break;
        case 36878:
          result = "GL_INT_SAMPLER_CUBE_MAP_ARRAY";
          break;
        case 36879:
          result = "GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY";
          break;
        case 36975:
          result = "GL_RGB10_A2UI";
          break;
        case 37050:
          result = "GL_SCALED_RESOLVE_FASTEST_EXT";
          break;
        case 37051:
          result = "GL_SCALED_RESOLVE_NICEST_EXT";
          break;
        case 37120:
          result = "GL_TEXTURE_2D_MULTISAMPLE";
          break;
        case 37121:
          result = "GL_PROXY_TEXTURE_2D_MULTISAMPLE";
          break;
        case 37122:
          result = "GL_TEXTURE_2D_MULTISAMPLE_ARRAY";
          break;
        case 37123:
          result = "GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY";
          break;
        case 37124:
          result = "GL_TEXTURE_BINDING_2D_MULTISAMPLE";
          break;
        case 37125:
          result = "GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY";
          break;
        case 37126:
          result = "GL_TEXTURE_SAMPLES";
          break;
        case 37127:
          result = "GL_TEXTURE_FIXED_SAMPLE_LOCATIONS";
          break;
        case 37128:
          result = "GL_SAMPLER_2D_MULTISAMPLE";
          break;
        case 37129:
          result = "GL_INT_SAMPLER_2D_MULTISAMPLE";
          break;
        case 37130:
          result = "GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE";
          break;
        case 37131:
          result = "GL_SAMPLER_2D_MULTISAMPLE_ARRAY";
          break;
        case 37132:
          result = "GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY";
          break;
        case 37133:
          result = "GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY";
          break;
        case 37134:
          result = "GL_MAX_COLOR_TEXTURE_SAMPLES";
          break;
        case 37135:
          result = "GL_MAX_DEPTH_TEXTURE_SAMPLES";
          break;
        case 37136:
          result = "GL_MAX_INTEGER_SAMPLES";
          break;
        case 37137:
          result = "GL_MAX_SERVER_WAIT_TIMEOUT";
          break;
        case 37138:
          result = "GL_OBJECT_TYPE";
          break;
        case 37139:
          result = "GL_SYNC_CONDITION";
          break;
        case 37140:
          result = "GL_SYNC_STATUS";
          break;
        case 37141:
          result = "GL_SYNC_FLAGS";
          break;
        case 37142:
          result = "GL_SYNC_FENCE";
          break;
        case 37143:
          result = "GL_SYNC_GPU_COMMANDS_COMPLETE";
          break;
        case 37144:
          result = "GL_UNSIGNALED";
          break;
        case 37145:
          result = "GL_SIGNALED";
          break;
        case 37146:
          result = "GL_ALREADY_SIGNALED";
          break;
        case 37147:
          result = "GL_TIMEOUT_EXPIRED";
          break;
        case 37148:
          result = "GL_CONDITION_SATISFIED";
          break;
        case 37149:
          result = "GL_WAIT_FAILED";
          break;
        case 37151:
          result = "GL_BUFFER_ACCESS_FLAGS";
          break;
        case 37152:
          result = "GL_BUFFER_MAP_LENGTH";
          break;
        case 37153:
          result = "GL_BUFFER_MAP_OFFSET";
          break;
        case 37154:
          result = "GL_MAX_VERTEX_OUTPUT_COMPONENTS";
          break;
        case 37155:
          result = "GL_MAX_GEOMETRY_INPUT_COMPONENTS";
          break;
        case 37156:
          result = "GL_MAX_GEOMETRY_OUTPUT_COMPONENTS";
          break;
        case 37157:
          result = "GL_MAX_FRAGMENT_INPUT_COMPONENTS";
          break;
        case 37158:
          result = "GL_CONTEXT_PROFILE_MASK";
          break;
        case 37167:
          result = "GL_TEXTURE_IMMUTABLE_FORMAT";
          break;
        case 37201:
          result = "GL_BUFFER_OBJECT_EXT";
          break;
        case 37203:
          result = "GL_QUERY_OBJECT_EXT";
          break;
        case 37204:
          result = "GL_VERTEX_ARRAY_OBJECT_EXT";
          break;
        case 37488:
          result = "GL_COMPRESSED_R11_EAC";
          break;
        case 37489:
          result = "GL_COMPRESSED_SIGNED_R11_EAC";
          break;
        case 37490:
          result = "GL_COMPRESSED_RG11_EAC";
          break;
        case 37491:
          result = "GL_COMPRESSED_SIGNED_RG11_EAC";
          break;
        case 37492:
          result = "GL_COMPRESSED_RGB8_ETC2";
          break;
        case 37493:
          result = "GL_COMPRESSED_SRGB8_ETC2";
          break;
        case 37494:
          result = "GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2";
          break;
        case 37495:
          result = "GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2";
          break;
        case 37496:
          result = "GL_COMPRESSED_RGBA8_ETC2_EAC";
          break;
        case 37497:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC";
          break;
        case 37760:
          result = "GL_NUM_SAMPLE_COUNTS";
          break;
        case 37793:
          result = "GL_BGRA8_EXT";
          break;
        case 37808:
          result = "GL_COMPRESSED_RGBA_ASTC_4x4_KHR";
          break;
        case 37809:
          result = "GL_COMPRESSED_RGBA_ASTC_5x4_KHR";
          break;
        case 37810:
          result = "GL_COMPRESSED_RGBA_ASTC_5x5_KHR";
          break;
        case 37811:
          result = "GL_COMPRESSED_RGBA_ASTC_6x5_KHR";
          break;
        case 37812:
          result = "GL_COMPRESSED_RGBA_ASTC_6x6_KHR";
          break;
        case 37813:
          result = "GL_COMPRESSED_RGBA_ASTC_8x5_KHR";
          break;
        case 37814:
          result = "GL_COMPRESSED_RGBA_ASTC_8x6_KHR";
          break;
        case 37815:
          result = "GL_COMPRESSED_RGBA_ASTC_8x8_KHR";
          break;
        case 37816:
          result = "GL_COMPRESSED_RGBA_ASTC_10x5_KHR";
          break;
        case 37817:
          result = "GL_COMPRESSED_RGBA_ASTC_10x6_KHR";
          break;
        case 37818:
          result = "GL_COMPRESSED_RGBA_ASTC_10x8_KHR";
          break;
        case 37819:
          result = "GL_COMPRESSED_RGBA_ASTC_10x10_KHR";
          break;
        case 37820:
          result = "GL_COMPRESSED_RGBA_ASTC_12x10_KHR";
          break;
        case 37821:
          result = "GL_COMPRESSED_RGBA_ASTC_12x12_KHR";
          break;
        case 37840:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR";
          break;
        case 37841:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR";
          break;
        case 37842:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR";
          break;
        case 37843:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR";
          break;
        case 37844:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR";
          break;
        case 37845:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR";
          break;
        case 37846:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR";
          break;
        case 37847:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR";
          break;
        case 37848:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR";
          break;
        case 37849:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR";
          break;
        case 37850:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR";
          break;
        case 37851:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR";
          break;
        case 37852:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR";
          break;
        case 37853:
          result = "GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR";
          break;
        case 37874:
          result = "GL_XRSRGB10_APPLE";
          break;
        case 37875:
          result = "GL_YCBCR10_422_2PLANE_PACKED_APPLE";
          break;
        case 37876:
          result = "GL_YCBCR10_420_2PLANE_PACKED_APPLE";
          break;
        case 37877:
          result = "GL_YCBCR10_444_2PLANE_PACKED_APPLE";
          break;
        case 37878:
          result = "GL_SRGB_YCBCR10_422_2PLANE_PACKED_APPLE";
          break;
        case 37879:
          result = "GL_SRGB_YCBCR10_420_2PLANE_PACKED_APPLE";
          break;
        case 37880:
          result = "GL_SRGB_YCBCR10_444_2PLANE_PACKED_APPLE";
          break;
        case 37881:
          result = "GL_XRSRGB10_PLANE_A8_PLANE_APPLE";
          break;
        case 37882:
          result = "GL_UNSIGNED_INT_2_10_10_10_PLANE_UNSIGNED_BYTE_PLANE_APPLE";
          break;
        case 37883:
          result = "GL_RGB8_420_2PLANE_APPLE";
          break;
        case 37884:
          result = "GL_RGB8_422_2PLANE_APPLE";
          break;
        case 37885:
          result = "GL_RGB8_444_2PLANE_APPLE";
          break;
        case 37886:
          result = "GL_COMPRESSED_RGBA_ASTC_4x2_LOWPRECISION_APPLE";
          break;
        case 37887:
          result = "GL_COMPRESSED_RGBA_ASTC_4x4_LOWPRECISION_APPLE";
          break;
        case 37888:
          result = "GL_COMPRESSED_RGBA_ASTC_5x4_LOWPRECISION_APPLE";
          break;
        case 37889:
          result = "GL_COMPRESSED_RGBA_ASTC_5x5_LOWPRECISION_APPLE";
          break;
        case 37890:
          result = "GL_COMPRESSED_RGBA_ASTC_6x5_LOWPRECISION_APPLE";
          break;
        case 37891:
          result = "GL_COMPRESSED_RGBA_ASTC_6x6_LOWPRECISION_APPLE";
          break;
        case 37892:
          result = "GL_COMPRESSED_RGBA_ASTC_8x4_LOWPRECISION_APPLE";
          break;
        case 37893:
          result = "GL_COMPRESSED_RGBA_ASTC_8x5_LOWPRECISION_APPLE";
          break;
        case 37894:
          result = "GL_COMPRESSED_RGBA_ASTC_8x6_LOWPRECISION_APPLE";
          break;
        case 37895:
          result = "GL_COMPRESSED_RGBA_ASTC_8x8_LOWPRECISION_APPLE";
          break;
        case 37896:
          result = "GL_COMPRESSED_RGBA_ASTC_10x5_LOWPRECISION_APPLE";
          break;
        case 37897:
          result = "GL_COMPRESSED_RGBA_ASTC_10x6_LOWPRECISION_APPLE";
          break;
        case 37898:
          result = "GL_COMPRESSED_RGBA_ASTC_10x8_LOWPRECISION_APPLE";
          break;
        case 37899:
          result = "GL_COMPRESSED_RGBA_ASTC_10x10_LOWPRECISION_APPLE";
          break;
        case 37900:
          result = "GL_COMPRESSED_RGBA_ASTC_12x10_LOWPRECISION_APPLE";
          break;
        case 37901:
          result = "GL_COMPRESSED_RGBA_ASTC_12x12_LOWPRECISION_APPLE";
          break;
        default:
          return 0;
      }

      return result;
    }

    if (a1 >= 0x80000)
    {
      switch(a1)
      {
        case 0x80000:
          return "GL_SCISSOR_BIT";
        case 0xFFFFF:
          return "GL_ALL_ATTRIB_BITS";
        case 0x20000000:
          return "GL_MULTISAMPLE_BIT";
      }
    }

    else
    {
      switch(a1)
      {
        case 0x10000:
          return "GL_EVAL_BIT";
        case 0x20000:
          return "GL_LIST_BIT";
        case 0x40000:
          return "GL_TEXTURE_BIT";
      }
    }

    return 0;
  }

  if (a1 > 4095)
  {
    if (a1 > 7168)
    {
      if (a1 <= 10494)
      {
        if (a1 <= 8703)
        {
          if (a1 > 7936)
          {
            if (a1 <= 0x2000)
            {
              if (a1 <= 7938)
              {
                if (a1 == 7937)
                {
                  return "GL_RENDERER";
                }

                else
                {
                  return "GL_VERSION";
                }
              }

              if (a1 == 7939)
              {
                return "GL_EXTENSIONS";
              }

              if (a1 == 0x2000)
              {
                return "GL_S";
              }
            }

            else
            {
              if (a1 <= 8194)
              {
                if (a1 == 8193)
                {
                  return "GL_T";
                }

                else
                {
                  return "GL_R";
                }
              }

              switch(a1)
              {
                case 8195:
                  return "GL_Q";
                case 8448:
                  return "GL_MODULATE";
                case 8449:
                  return "GL_DECAL";
              }
            }
          }

          else if (a1 <= 7679)
          {
            if (a1 > 7423)
            {
              if (a1 == 7424)
              {
                return "GL_FLAT";
              }

              if (a1 == 7425)
              {
                return "GL_SMOOTH";
              }
            }

            else
            {
              if (a1 == 7169)
              {
                return "GL_FEEDBACK";
              }

              if (a1 == 7170)
              {
                return "GL_SELECT";
              }
            }
          }

          else
          {
            if (a1 <= 7681)
            {
              if (a1 == 7680)
              {
                return "GL_KEEP";
              }

              else
              {
                return "GL_REPLACE";
              }
            }

            switch(a1)
            {
              case 7682:
                return "GL_INCR";
              case 7683:
                return "GL_DECR";
              case 7936:
                return "GL_VENDOR";
            }
          }
        }

        else if (a1 <= 9727)
        {
          if (a1 <= 9216)
          {
            if (a1 > 8959)
            {
              if (a1 == 8960)
              {
                return "GL_TEXTURE_ENV";
              }

              if (a1 == 9216)
              {
                return "GL_EYE_LINEAR";
              }
            }

            else
            {
              if (a1 == 8704)
              {
                return "GL_TEXTURE_ENV_MODE";
              }

              if (a1 == 8705)
              {
                return "GL_TEXTURE_ENV_COLOR";
              }
            }
          }

          else if (a1 <= 9471)
          {
            if (a1 == 9217)
            {
              return "GL_OBJECT_LINEAR";
            }

            if (a1 == 9218)
            {
              return "GL_SPHERE_MAP";
            }
          }

          else
          {
            switch(a1)
            {
              case 9472:
                return "GL_TEXTURE_GEN_MODE";
              case 9473:
                return "GL_OBJECT_PLANE";
              case 9474:
                return "GL_EYE_PLANE";
            }
          }
        }

        else if (a1 > 9986)
        {
          if (a1 <= 10240)
          {
            if (a1 == 9987)
            {
              return "GL_LINEAR_MIPMAP_LINEAR";
            }

            if (a1 == 10240)
            {
              return "GL_TEXTURE_MAG_FILTER";
            }
          }

          else
          {
            switch(a1)
            {
              case 10241:
                return "GL_TEXTURE_MIN_FILTER";
              case 10242:
                return "GL_TEXTURE_WRAP_S";
              case 10243:
                return "GL_TEXTURE_WRAP_T";
            }
          }
        }

        else
        {
          if (a1 > 9983)
          {
            if (a1 == 9984)
            {
              return "GL_NEAREST_MIPMAP_NEAREST";
            }

            if (a1 == 9985)
            {
              return "GL_LINEAR_MIPMAP_NEAREST";
            }

            return "GL_NEAREST_MIPMAP_LINEAR";
          }

          if (a1 == 9728)
          {
            return "GL_NEAREST";
          }

          if (a1 == 9729)
          {
            return "GL_LINEAR";
          }
        }

        return 0;
      }

      if (a1 >= 12288)
      {
        if (a1 >= 0x4000)
        {
          if (a1 <= 16387)
          {
            if (a1 > 16385)
            {
              if (a1 == 16386)
              {
                return "GL_LIGHT2";
              }

              else
              {
                return "GL_LIGHT3";
              }
            }

            else if (a1 == 0x4000)
            {
              return "GL_LIGHT0";
            }

            else
            {
              return "GL_LIGHT1";
            }
          }

          if (a1 <= 16389)
          {
            if (a1 == 16388)
            {
              return "GL_LIGHT4";
            }

            else
            {
              return "GL_LIGHT5";
            }
          }

          if (a1 == 16390)
          {
            return "GL_LIGHT6";
          }

          if (a1 == 16391)
          {
            return "GL_LIGHT7";
          }
        }

        else
        {
          if (a1 <= 12291)
          {
            if (a1 > 12289)
            {
              if (a1 == 12290)
              {
                return "GL_CLIP_DISTANCE2";
              }

              else
              {
                return "GL_CLIP_DISTANCE3";
              }
            }

            else if (a1 == 12288)
            {
              return "GL_CLIP_DISTANCE0";
            }

            else
            {
              return "GL_CLIP_DISTANCE1";
            }
          }

          if (a1 <= 12293)
          {
            if (a1 == 12292)
            {
              return "GL_CLIP_DISTANCE4";
            }

            else
            {
              return "GL_CLIP_DISTANCE5";
            }
          }

          if (a1 == 12294)
          {
            return "GL_CLIP_DISTANCE6";
          }

          if (a1 == 12295)
          {
            return "GL_CLIP_DISTANCE7";
          }
        }

        return 0;
      }

      if (a1 <= 10751)
      {
        switch(a1)
        {
          case 10495:
            return "GL_TEXTURE_SUBIMAGE_SYNC";
          case 10496:
            return "GL_CLAMP";
          case 10497:
            return "GL_REPEAT";
        }

        return 0;
      }

      switch(a1)
      {
        case 10752:
          result = "GL_POLYGON_OFFSET_UNITS";
          break;
        case 10753:
          result = "GL_POLYGON_OFFSET_POINT";
          break;
        case 10754:
          result = "GL_POLYGON_OFFSET_LINE";
          break;
        case 10768:
          result = "GL_R3_G3_B2";
          break;
        case 10784:
          result = "GL_V2F";
          break;
        case 10785:
          result = "GL_V3F";
          break;
        case 10786:
          result = "GL_C4UB_V2F";
          break;
        case 10787:
          result = "GL_C4UB_V3F";
          break;
        case 10788:
          result = "GL_C3F_V3F";
          break;
        case 10789:
          result = "GL_N3F_V3F";
          break;
        case 10790:
          result = "GL_C4F_N3F_V3F";
          break;
        case 10791:
          result = "GL_T2F_V3F";
          break;
        case 10792:
          result = "GL_T4F_V4F";
          break;
        case 10793:
          result = "GL_T2F_C4UB_V3F";
          break;
        case 10794:
          result = "GL_T2F_C3F_V3F";
          break;
        case 10795:
          result = "GL_T2F_N3F_V3F";
          break;
        case 10796:
          result = "GL_T2F_C4F_N3F_V3F";
          break;
        case 10797:
          result = "GL_T4F_C4F_N3F_V4F";
          break;
        default:
          return 0;
      }
    }

    else
    {
      if (a1 > 5631)
      {
        if (a1 > 6402)
        {
          if (a1 <= 6408)
          {
            if (a1 > 6405)
            {
              if (a1 == 6406)
              {
                return "GL_ALPHA";
              }

              else if (a1 == 6407)
              {
                return "GL_RGB";
              }

              else
              {
                return "GL_RGBA";
              }
            }

            else if (a1 == 6403)
            {
              return "GL_RED";
            }

            else if (a1 == 6404)
            {
              return "GL_GREEN";
            }

            else
            {
              return "GL_BLUE";
            }
          }

          if (a1 <= 6911)
          {
            switch(a1)
            {
              case 6409:
                return "GL_LUMINANCE";
              case 6410:
                return "GL_LUMINANCE_ALPHA";
              case 6656:
                return "GL_BITMAP";
            }
          }

          else
          {
            if (a1 <= 6913)
            {
              if (a1 == 6912)
              {
                return "GL_POINT";
              }

              else
              {
                return "GL_LINE";
              }
            }

            if (a1 == 6914)
            {
              return "GL_FILL";
            }

            if (a1 == 7168)
            {
              return "GL_RENDER";
            }
          }
        }

        else if (a1 <= 5889)
        {
          if (a1 <= 5634)
          {
            if (a1 == 5632)
            {
              return "GL_EMISSION";
            }

            if (a1 == 5633)
            {
              return "GL_SHININESS";
            }

            return "GL_AMBIENT_AND_DIFFUSE";
          }

          switch(a1)
          {
            case 5635:
              return "GL_COLOR_INDEXES";
            case 5888:
              return "GL_MODELVIEW";
            case 5889:
              return "GL_PROJECTION";
          }
        }

        else if (a1 <= 6145)
        {
          switch(a1)
          {
            case 5890:
              return "GL_TEXTURE";
            case 6144:
              return "GL_COLOR";
            case 6145:
              return "GL_DEPTH";
          }
        }

        else
        {
          if (a1 > 6400)
          {
            if (a1 == 6401)
            {
              return "GL_STENCIL_INDEX";
            }

            else
            {
              return "GL_DEPTH_COMPONENT";
            }
          }

          if (a1 == 6146)
          {
            return "GL_STENCIL";
          }

          if (a1 == 6400)
          {
            return "GL_COLOR_INDEX";
          }
        }

        return 0;
      }

      if (a1 <= 4863)
      {
        if (a1 > 4608)
        {
          if (a1 <= 4612)
          {
            if (a1 > 4610)
            {
              if (a1 == 4611)
              {
                return "GL_POSITION";
              }

              else
              {
                return "GL_SPOT_DIRECTION";
              }
            }

            else if (a1 == 4609)
            {
              return "GL_DIFFUSE";
            }

            else
            {
              return "GL_SPECULAR";
            }
          }

          if (a1 <= 4614)
          {
            if (a1 == 4613)
            {
              return "GL_SPOT_EXPONENT";
            }

            else
            {
              return "GL_SPOT_CUTOFF";
            }
          }

          switch(a1)
          {
            case 4615:
              return "GL_CONSTANT_ATTENUATION";
            case 4616:
              return "GL_LINEAR_ATTENUATION";
            case 4617:
              return "GL_QUADRATIC_ATTENUATION";
          }
        }

        else if (a1 <= 4100)
        {
          if (a1 > 4098)
          {
            if (a1 == 4099)
            {
              return "GL_TEXTURE_INTERNAL_FORMAT";
            }

            else
            {
              return "GL_TEXTURE_BORDER_COLOR";
            }
          }

          if (a1 == 4096)
          {
            return "GL_TEXTURE_WIDTH";
          }

          if (a1 == 4097)
          {
            return "GL_TEXTURE_HEIGHT";
          }
        }

        else if (a1 <= 4352)
        {
          if (a1 == 4101)
          {
            return "GL_TEXTURE_BORDER";
          }

          if (a1 == 4352)
          {
            return "GL_DONT_CARE";
          }
        }

        else
        {
          switch(a1)
          {
            case 4353:
              return "GL_FASTEST";
            case 4354:
              return "GL_NICEST";
            case 4608:
              return "GL_AMBIENT";
          }
        }

        return 0;
      }

      switch(a1)
      {
        case 5120:
          return "GL_BYTE";
        case 5121:
          return "GL_UNSIGNED_BYTE";
        case 5122:
          return "GL_SHORT";
        case 5123:
          return "GL_UNSIGNED_SHORT";
        case 5124:
          return "GL_INT";
        case 5125:
          return "GL_UNSIGNED_INT";
        case 5126:
          return "GL_FLOAT";
        case 5127:
          return "GL_2_BYTES";
        case 5128:
          return "GL_3_BYTES";
        case 5129:
          return "GL_4_BYTES";
        case 5130:
          return "GL_DOUBLE";
        case 5131:
          return "GL_HALF_FLOAT";
        case 5132:
          return "GL_FIXED";
        case 5133:
        case 5134:
        case 5135:
        case 5136:
        case 5137:
        case 5138:
        case 5139:
        case 5140:
        case 5141:
        case 5142:
        case 5143:
        case 5144:
        case 5145:
        case 5146:
        case 5147:
        case 5148:
        case 5149:
        case 5150:
        case 5151:
        case 5152:
        case 5153:
        case 5154:
        case 5155:
        case 5156:
        case 5157:
        case 5158:
        case 5159:
        case 5160:
        case 5161:
        case 5162:
        case 5163:
        case 5164:
        case 5165:
        case 5166:
        case 5167:
        case 5168:
        case 5169:
        case 5170:
        case 5171:
        case 5172:
        case 5173:
        case 5174:
        case 5175:
        case 5176:
        case 5177:
        case 5178:
        case 5179:
        case 5180:
        case 5181:
        case 5182:
        case 5183:
        case 5184:
        case 5185:
        case 5186:
        case 5187:
        case 5188:
        case 5189:
        case 5190:
        case 5191:
        case 5192:
        case 5193:
        case 5194:
        case 5195:
        case 5196:
        case 5197:
        case 5198:
        case 5199:
        case 5200:
        case 5201:
        case 5202:
        case 5203:
        case 5204:
        case 5205:
        case 5206:
        case 5207:
        case 5208:
        case 5209:
        case 5210:
        case 5211:
        case 5212:
        case 5213:
        case 5214:
        case 5215:
        case 5216:
        case 5217:
        case 5218:
        case 5219:
        case 5220:
        case 5221:
        case 5222:
        case 5223:
        case 5224:
        case 5225:
        case 5226:
        case 5227:
        case 5228:
        case 5229:
        case 5230:
        case 5231:
        case 5232:
        case 5233:
        case 5234:
        case 5235:
        case 5236:
        case 5237:
        case 5238:
        case 5239:
        case 5240:
        case 5241:
        case 5242:
        case 5243:
        case 5244:
        case 5245:
        case 5246:
        case 5247:
        case 5248:
        case 5249:
        case 5250:
        case 5251:
        case 5252:
        case 5253:
        case 5254:
        case 5255:
        case 5256:
        case 5257:
        case 5258:
        case 5259:
        case 5260:
        case 5261:
        case 5262:
        case 5263:
        case 5264:
        case 5265:
        case 5266:
        case 5267:
        case 5268:
        case 5269:
        case 5270:
        case 5271:
        case 5272:
        case 5273:
        case 5274:
        case 5275:
        case 5276:
        case 5277:
        case 5278:
        case 5279:
        case 5280:
        case 5281:
        case 5282:
        case 5283:
        case 5284:
        case 5285:
        case 5286:
        case 5287:
        case 5288:
        case 5289:
        case 5290:
        case 5291:
        case 5292:
        case 5293:
        case 5294:
        case 5295:
        case 5296:
        case 5297:
        case 5298:
        case 5299:
        case 5300:
        case 5301:
        case 5302:
        case 5303:
        case 5304:
        case 5305:
        case 5306:
        case 5307:
        case 5308:
        case 5309:
        case 5310:
        case 5311:
        case 5312:
        case 5313:
        case 5314:
        case 5315:
        case 5316:
        case 5317:
        case 5318:
        case 5319:
        case 5320:
        case 5321:
        case 5322:
        case 5323:
        case 5324:
        case 5325:
        case 5326:
        case 5327:
        case 5328:
        case 5329:
        case 5330:
        case 5331:
        case 5332:
        case 5333:
        case 5334:
        case 5335:
        case 5336:
        case 5337:
        case 5338:
        case 5339:
        case 5340:
        case 5341:
        case 5342:
        case 5343:
        case 5344:
        case 5345:
        case 5346:
        case 5347:
        case 5348:
        case 5349:
        case 5350:
        case 5351:
        case 5352:
        case 5353:
        case 5354:
        case 5355:
        case 5356:
        case 5357:
        case 5358:
        case 5359:
        case 5360:
        case 5361:
        case 5362:
        case 5363:
        case 5364:
        case 5365:
        case 5366:
        case 5367:
        case 5368:
        case 5369:
        case 5370:
        case 5371:
        case 5372:
        case 5373:
        case 5374:
        case 5375:
          return 0;
        case 5376:
          return "GL_CLEAR";
        case 5377:
          return "GL_AND";
        case 5378:
          return "GL_AND_REVERSE";
        case 5379:
          return "GL_COPY";
        case 5380:
          return "GL_AND_INVERTED";
        case 5381:
          return "GL_NOOP";
        case 5382:
          return "GL_XOR";
        case 5383:
          return "GL_OR";
        case 5384:
          return "GL_NOR";
        case 5385:
          return "GL_EQUIV";
        case 5386:
          return "GL_INVERT";
        case 5387:
          return "GL_OR_REVERSE";
        case 5388:
          return "GL_COPY_INVERTED";
        case 5389:
          return "GL_OR_INVERTED";
        case 5390:
          return "GL_NAND";
        case 5391:
          return "GL_SET";
        default:
          if (a1 == 4864)
          {
            result = "GL_COMPILE";
          }

          else
          {
            if (a1 != 4865)
            {
              return 0;
            }

            result = "GL_COMPILE_AND_EXECUTE";
          }

          break;
      }
    }
  }

  else if (a1 <= 775)
  {
    if (a1 > 256)
    {
      if (a1 > 517)
      {
        if (a1 > 770)
        {
          if (a1 <= 772)
          {
            if (a1 == 771)
            {
              return "GL_ONE_MINUS_SRC_ALPHA";
            }

            else
            {
              return "GL_DST_ALPHA";
            }
          }

          else if (a1 == 773)
          {
            return "GL_ONE_MINUS_DST_ALPHA";
          }

          else if (a1 == 774)
          {
            return "GL_DST_COLOR";
          }

          else
          {
            return "GL_ONE_MINUS_DST_COLOR";
          }
        }

        if (a1 > 767)
        {
          if (a1 == 768)
          {
            return "GL_SRC_COLOR";
          }

          if (a1 == 769)
          {
            return "GL_ONE_MINUS_SRC_COLOR";
          }

          return "GL_SRC_ALPHA";
        }

        if (a1 == 518)
        {
          return "GL_GEQUAL";
        }

        if (a1 == 519)
        {
          return "GL_ALWAYS";
        }
      }

      else
      {
        if (a1 > 512)
        {
          if (a1 <= 514)
          {
            if (a1 == 513)
            {
              return "GL_LESS";
            }

            else
            {
              return "GL_EQUAL";
            }
          }

          else if (a1 == 515)
          {
            return "GL_LEQUAL";
          }

          else if (a1 == 516)
          {
            return "GL_GREATER";
          }

          else
          {
            return "GL_NOTEQUAL";
          }
        }

        if (a1 <= 258)
        {
          if (a1 == 257)
          {
            return "GL_LOAD";
          }

          else
          {
            return "GL_RETURN";
          }
        }

        switch(a1)
        {
          case 259:
            return "GL_MULT";
          case 260:
            return "GL_ADD";
          case 512:
            return "GL_NEVER";
        }
      }

      return 0;
    }

    v2 = a1 + 1;
    result = "GL_FALSE";
    switch(v2)
    {
      case 0:
        result = "GL_INVALID_INDEX";
        break;
      case 1:
        return result;
      case 2:
        result = "GL_TRUE";
        break;
      case 3:
        result = "GL_LINE_LOOP";
        break;
      case 4:
        result = "GL_LINE_STRIP";
        break;
      case 5:
        result = "GL_TRIANGLES";
        break;
      case 6:
        result = "GL_TRIANGLE_STRIP";
        break;
      case 7:
        result = "GL_TRIANGLE_FAN";
        break;
      case 8:
        result = "GL_QUADS";
        break;
      case 9:
        result = "GL_QUAD_STRIP";
        break;
      case 10:
        result = "GL_POLYGON";
        break;
      case 11:
        result = "GL_LINES_ADJACENCY";
        break;
      case 12:
        result = "GL_LINE_STRIP_ADJACENCY";
        break;
      case 13:
        result = "GL_TRIANGLES_ADJACENCY";
        break;
      case 14:
        result = "GL_TRIANGLE_STRIP_ADJACENCY";
        break;
      case 15:
        result = "GL_PATCHES";
        break;
      case 16:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        return 0;
      case 17:
        result = "GL_MAP_FLUSH_EXPLICIT_BIT";
        break;
      case 33:
        result = "GL_MAP_UNSYNCHRONIZED_BIT";
        break;
      case 65:
        result = "GL_LIGHTING_BIT";
        break;
      case 129:
        result = "GL_FOG_BIT";
        break;
      default:
        if ("GL_FALSE" != 256)
        {
          return 0;
        }

        result = "GL_ACCUM";
        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 1280:
        result = "GL_INVALID_ENUM";
        break;
      case 1281:
        result = "GL_INVALID_VALUE";
        break;
      case 1282:
        result = "GL_INVALID_OPERATION";
        break;
      case 1283:
        result = "GL_STACK_OVERFLOW";
        break;
      case 1284:
        result = "GL_STACK_UNDERFLOW";
        break;
      case 1285:
        result = "GL_OUT_OF_MEMORY";
        break;
      case 1286:
        result = "GL_INVALID_FRAMEBUFFER_OPERATION";
        break;
      case 1287:
      case 1288:
      case 1289:
      case 1290:
      case 1291:
      case 1292:
      case 1293:
      case 1294:
      case 1295:
      case 1296:
      case 1297:
      case 1298:
      case 1299:
      case 1300:
      case 1301:
      case 1302:
      case 1303:
      case 1304:
      case 1305:
      case 1306:
      case 1307:
      case 1308:
      case 1309:
      case 1310:
      case 1311:
      case 1312:
      case 1313:
      case 1314:
      case 1315:
      case 1316:
      case 1317:
      case 1318:
      case 1319:
      case 1320:
      case 1321:
      case 1322:
      case 1323:
      case 1324:
      case 1325:
      case 1326:
      case 1327:
      case 1328:
      case 1329:
      case 1330:
      case 1331:
      case 1332:
      case 1333:
      case 1334:
      case 1335:
      case 1336:
      case 1337:
      case 1338:
      case 1339:
      case 1340:
      case 1341:
      case 1342:
      case 1343:
      case 1344:
      case 1345:
      case 1346:
      case 1347:
      case 1348:
      case 1349:
      case 1350:
      case 1351:
      case 1352:
      case 1353:
      case 1354:
      case 1355:
      case 1356:
      case 1357:
      case 1358:
      case 1359:
      case 1360:
      case 1361:
      case 1362:
      case 1363:
      case 1364:
      case 1365:
      case 1366:
      case 1367:
      case 1368:
      case 1369:
      case 1370:
      case 1371:
      case 1372:
      case 1373:
      case 1374:
      case 1375:
      case 1376:
      case 1377:
      case 1378:
      case 1379:
      case 1380:
      case 1381:
      case 1382:
      case 1383:
      case 1384:
      case 1385:
      case 1386:
      case 1387:
      case 1388:
      case 1389:
      case 1390:
      case 1391:
      case 1392:
      case 1393:
      case 1394:
      case 1395:
      case 1396:
      case 1397:
      case 1398:
      case 1399:
      case 1400:
      case 1401:
      case 1402:
      case 1403:
      case 1404:
      case 1405:
      case 1406:
      case 1407:
      case 1408:
      case 1409:
      case 1410:
      case 1411:
      case 1412:
      case 1413:
      case 1414:
      case 1415:
      case 1416:
      case 1417:
      case 1418:
      case 1419:
      case 1420:
      case 1421:
      case 1422:
      case 1423:
      case 1424:
      case 1425:
      case 1426:
      case 1427:
      case 1428:
      case 1429:
      case 1430:
      case 1431:
      case 1432:
      case 1433:
      case 1434:
      case 1435:
      case 1436:
      case 1437:
      case 1438:
      case 1439:
      case 1440:
      case 1441:
      case 1442:
      case 1443:
      case 1444:
      case 1445:
      case 1446:
      case 1447:
      case 1448:
      case 1449:
      case 1450:
      case 1451:
      case 1452:
      case 1453:
      case 1454:
      case 1455:
      case 1456:
      case 1457:
      case 1458:
      case 1459:
      case 1460:
      case 1461:
      case 1462:
      case 1463:
      case 1464:
      case 1465:
      case 1466:
      case 1467:
      case 1468:
      case 1469:
      case 1470:
      case 1471:
      case 1472:
      case 1473:
      case 1474:
      case 1475:
      case 1476:
      case 1477:
      case 1478:
      case 1479:
      case 1480:
      case 1481:
      case 1482:
      case 1483:
      case 1484:
      case 1485:
      case 1486:
      case 1487:
      case 1488:
      case 1489:
      case 1490:
      case 1491:
      case 1492:
      case 1493:
      case 1494:
      case 1495:
      case 1496:
      case 1497:
      case 1498:
      case 1499:
      case 1500:
      case 1501:
      case 1502:
      case 1503:
      case 1504:
      case 1505:
      case 1506:
      case 1507:
      case 1508:
      case 1509:
      case 1510:
      case 1511:
      case 1512:
      case 1513:
      case 1514:
      case 1515:
      case 1516:
      case 1517:
      case 1518:
      case 1519:
      case 1520:
      case 1521:
      case 1522:
      case 1523:
      case 1524:
      case 1525:
      case 1526:
      case 1527:
      case 1528:
      case 1529:
      case 1530:
      case 1531:
      case 1532:
      case 1533:
      case 1534:
      case 1535:
      case 1541:
      case 1542:
      case 1543:
      case 1544:
      case 1545:
      case 1546:
      case 1547:
      case 1548:
      case 1549:
      case 1550:
      case 1551:
      case 1552:
      case 1553:
      case 1554:
      case 1555:
      case 1556:
      case 1557:
      case 1558:
      case 1559:
      case 1560:
      case 1561:
      case 1562:
      case 1563:
      case 1564:
      case 1565:
      case 1566:
      case 1567:
      case 1568:
      case 1569:
      case 1570:
      case 1571:
      case 1572:
      case 1573:
      case 1574:
      case 1575:
      case 1576:
      case 1577:
      case 1578:
      case 1579:
      case 1580:
      case 1581:
      case 1582:
      case 1583:
      case 1584:
      case 1585:
      case 1586:
      case 1587:
      case 1588:
      case 1589:
      case 1590:
      case 1591:
      case 1592:
      case 1593:
      case 1594:
      case 1595:
      case 1596:
      case 1597:
      case 1598:
      case 1599:
      case 1600:
      case 1601:
      case 1602:
      case 1603:
      case 1604:
      case 1605:
      case 1606:
      case 1607:
      case 1608:
      case 1609:
      case 1610:
      case 1611:
      case 1612:
      case 1613:
      case 1614:
      case 1615:
      case 1616:
      case 1617:
      case 1618:
      case 1619:
      case 1620:
      case 1621:
      case 1622:
      case 1623:
      case 1624:
      case 1625:
      case 1626:
      case 1627:
      case 1628:
      case 1629:
      case 1630:
      case 1631:
      case 1632:
      case 1633:
      case 1634:
      case 1635:
      case 1636:
      case 1637:
      case 1638:
      case 1639:
      case 1640:
      case 1641:
      case 1642:
      case 1643:
      case 1644:
      case 1645:
      case 1646:
      case 1647:
      case 1648:
      case 1649:
      case 1650:
      case 1651:
      case 1652:
      case 1653:
      case 1654:
      case 1655:
      case 1656:
      case 1657:
      case 1658:
      case 1659:
      case 1660:
      case 1661:
      case 1662:
      case 1663:
      case 1664:
      case 1665:
      case 1666:
      case 1667:
      case 1668:
      case 1669:
      case 1670:
      case 1671:
      case 1672:
      case 1673:
      case 1674:
      case 1675:
      case 1676:
      case 1677:
      case 1678:
      case 1679:
      case 1680:
      case 1681:
      case 1682:
      case 1683:
      case 1684:
      case 1685:
      case 1686:
      case 1687:
      case 1688:
      case 1689:
      case 1690:
      case 1691:
      case 1692:
      case 1693:
      case 1694:
      case 1695:
      case 1696:
      case 1697:
      case 1698:
      case 1699:
      case 1700:
      case 1701:
      case 1702:
      case 1703:
      case 1704:
      case 1705:
      case 1706:
      case 1707:
      case 1708:
      case 1709:
      case 1710:
      case 1711:
      case 1712:
      case 1713:
      case 1714:
      case 1715:
      case 1716:
      case 1717:
      case 1718:
      case 1719:
      case 1720:
      case 1721:
      case 1722:
      case 1723:
      case 1724:
      case 1725:
      case 1726:
      case 1727:
      case 1728:
      case 1729:
      case 1730:
      case 1731:
      case 1732:
      case 1733:
      case 1734:
      case 1735:
      case 1736:
      case 1737:
      case 1738:
      case 1739:
      case 1740:
      case 1741:
      case 1742:
      case 1743:
      case 1744:
      case 1745:
      case 1746:
      case 1747:
      case 1748:
      case 1749:
      case 1750:
      case 1751:
      case 1752:
      case 1753:
      case 1754:
      case 1755:
      case 1756:
      case 1757:
      case 1758:
      case 1759:
      case 1760:
      case 1761:
      case 1762:
      case 1763:
      case 1764:
      case 1765:
      case 1766:
      case 1767:
      case 1768:
      case 1769:
      case 1770:
      case 1771:
      case 1772:
      case 1773:
      case 1774:
      case 1775:
      case 1776:
      case 1777:
      case 1778:
      case 1779:
      case 1780:
      case 1781:
      case 1782:
      case 1783:
      case 1784:
      case 1785:
      case 1786:
      case 1787:
      case 1788:
      case 1789:
      case 1790:
      case 1791:
      case 1800:
      case 1801:
      case 1802:
      case 1803:
      case 1804:
      case 1805:
      case 1806:
      case 1807:
      case 1808:
      case 1809:
      case 1810:
      case 1811:
      case 1812:
      case 1813:
      case 1814:
      case 1815:
      case 1816:
      case 1817:
      case 1818:
      case 1819:
      case 1820:
      case 1821:
      case 1822:
      case 1823:
      case 1824:
      case 1825:
      case 1826:
      case 1827:
      case 1828:
      case 1829:
      case 1830:
      case 1831:
      case 1832:
      case 1833:
      case 1834:
      case 1835:
      case 1836:
      case 1837:
      case 1838:
      case 1839:
      case 1840:
      case 1841:
      case 1842:
      case 1843:
      case 1844:
      case 1845:
      case 1846:
      case 1847:
      case 1848:
      case 1849:
      case 1850:
      case 1851:
      case 1852:
      case 1853:
      case 1854:
      case 1855:
      case 1856:
      case 1857:
      case 1858:
      case 1859:
      case 1860:
      case 1861:
      case 1862:
      case 1863:
      case 1864:
      case 1865:
      case 1866:
      case 1867:
      case 1868:
      case 1869:
      case 1870:
      case 1871:
      case 1872:
      case 1873:
      case 1874:
      case 1875:
      case 1876:
      case 1877:
      case 1878:
      case 1879:
      case 1880:
      case 1881:
      case 1882:
      case 1883:
      case 1884:
      case 1885:
      case 1886:
      case 1887:
      case 1888:
      case 1889:
      case 1890:
      case 1891:
      case 1892:
      case 1893:
      case 1894:
      case 1895:
      case 1896:
      case 1897:
      case 1898:
      case 1899:
      case 1900:
      case 1901:
      case 1902:
      case 1903:
      case 1904:
      case 1905:
      case 1906:
      case 1907:
      case 1908:
      case 1909:
      case 1910:
      case 1911:
      case 1912:
      case 1913:
      case 1914:
      case 1915:
      case 1916:
      case 1917:
      case 1918:
      case 1919:
      case 1920:
      case 1921:
      case 1922:
      case 1923:
      case 1924:
      case 1925:
      case 1926:
      case 1927:
      case 1928:
      case 1929:
      case 1930:
      case 1931:
      case 1932:
      case 1933:
      case 1934:
      case 1935:
      case 1936:
      case 1937:
      case 1938:
      case 1939:
      case 1940:
      case 1941:
      case 1942:
      case 1943:
      case 1944:
      case 1945:
      case 1946:
      case 1947:
      case 1948:
      case 1949:
      case 1950:
      case 1951:
      case 1952:
      case 1953:
      case 1954:
      case 1955:
      case 1956:
      case 1957:
      case 1958:
      case 1959:
      case 1960:
      case 1961:
      case 1962:
      case 1963:
      case 1964:
      case 1965:
      case 1966:
      case 1967:
      case 1968:
      case 1969:
      case 1970:
      case 1971:
      case 1972:
      case 1973:
      case 1974:
      case 1975:
      case 1976:
      case 1977:
      case 1978:
      case 1979:
      case 1980:
      case 1981:
      case 1982:
      case 1983:
      case 1984:
      case 1985:
      case 1986:
      case 1987:
      case 1988:
      case 1989:
      case 1990:
      case 1991:
      case 1992:
      case 1993:
      case 1994:
      case 1995:
      case 1996:
      case 1997:
      case 1998:
      case 1999:
      case 2000:
      case 2001:
      case 2002:
      case 2003:
      case 2004:
      case 2005:
      case 2006:
      case 2007:
      case 2008:
      case 2009:
      case 2010:
      case 2011:
      case 2012:
      case 2013:
      case 2014:
      case 2015:
      case 2016:
      case 2017:
      case 2018:
      case 2019:
      case 2020:
      case 2021:
      case 2022:
      case 2023:
      case 2024:
      case 2025:
      case 2026:
      case 2027:
      case 2028:
      case 2029:
      case 2030:
      case 2031:
      case 2032:
      case 2033:
      case 2034:
      case 2035:
      case 2036:
      case 2037:
      case 2038:
      case 2039:
      case 2040:
      case 2041:
      case 2042:
      case 2043:
      case 2044:
      case 2045:
      case 2046:
      case 2047:
      case 2050:
      case 2051:
      case 2052:
      case 2053:
      case 2054:
      case 2055:
      case 2056:
      case 2057:
      case 2058:
      case 2059:
      case 2060:
      case 2061:
      case 2062:
      case 2063:
      case 2064:
      case 2065:
      case 2066:
      case 2067:
      case 2068:
      case 2069:
      case 2070:
      case 2071:
      case 2072:
      case 2073:
      case 2074:
      case 2075:
      case 2076:
      case 2077:
      case 2078:
      case 2079:
      case 2080:
      case 2081:
      case 2082:
      case 2083:
      case 2084:
      case 2085:
      case 2086:
      case 2087:
      case 2088:
      case 2089:
      case 2090:
      case 2091:
      case 2092:
      case 2093:
      case 2094:
      case 2095:
      case 2096:
      case 2097:
      case 2098:
      case 2099:
      case 2100:
      case 2101:
      case 2102:
      case 2103:
      case 2104:
      case 2105:
      case 2106:
      case 2107:
      case 2108:
      case 2109:
      case 2110:
      case 2111:
      case 2112:
      case 2113:
      case 2114:
      case 2115:
      case 2116:
      case 2117:
      case 2118:
      case 2119:
      case 2120:
      case 2121:
      case 2122:
      case 2123:
      case 2124:
      case 2125:
      case 2126:
      case 2127:
      case 2128:
      case 2129:
      case 2130:
      case 2131:
      case 2132:
      case 2133:
      case 2134:
      case 2135:
      case 2136:
      case 2137:
      case 2138:
      case 2139:
      case 2140:
      case 2141:
      case 2142:
      case 2143:
      case 2144:
      case 2145:
      case 2146:
      case 2147:
      case 2148:
      case 2149:
      case 2150:
      case 2151:
      case 2152:
      case 2153:
      case 2154:
      case 2155:
      case 2156:
      case 2157:
      case 2158:
      case 2159:
      case 2160:
      case 2161:
      case 2162:
      case 2163:
      case 2164:
      case 2165:
      case 2166:
      case 2167:
      case 2168:
      case 2169:
      case 2170:
      case 2171:
      case 2172:
      case 2173:
      case 2174:
      case 2175:
      case 2176:
      case 2177:
      case 2178:
      case 2179:
      case 2180:
      case 2181:
      case 2182:
      case 2183:
      case 2184:
      case 2185:
      case 2186:
      case 2187:
      case 2188:
      case 2189:
      case 2190:
      case 2191:
      case 2192:
      case 2193:
      case 2194:
      case 2195:
      case 2196:
      case 2197:
      case 2198:
      case 2199:
      case 2200:
      case 2201:
      case 2202:
      case 2203:
      case 2204:
      case 2205:
      case 2206:
      case 2207:
      case 2208:
      case 2209:
      case 2210:
      case 2211:
      case 2212:
      case 2213:
      case 2214:
      case 2215:
      case 2216:
      case 2217:
      case 2218:
      case 2219:
      case 2220:
      case 2221:
      case 2222:
      case 2223:
      case 2224:
      case 2225:
      case 2226:
      case 2227:
      case 2228:
      case 2229:
      case 2230:
      case 2231:
      case 2232:
      case 2233:
      case 2234:
      case 2235:
      case 2236:
      case 2237:
      case 2238:
      case 2239:
      case 2240:
      case 2241:
      case 2242:
      case 2243:
      case 2244:
      case 2245:
      case 2246:
      case 2247:
      case 2248:
      case 2249:
      case 2250:
      case 2251:
      case 2252:
      case 2253:
      case 2254:
      case 2255:
      case 2256:
      case 2257:
      case 2258:
      case 2259:
      case 2260:
      case 2261:
      case 2262:
      case 2263:
      case 2264:
      case 2265:
      case 2266:
      case 2267:
      case 2268:
      case 2269:
      case 2270:
      case 2271:
      case 2272:
      case 2273:
      case 2274:
      case 2275:
      case 2276:
      case 2277:
      case 2278:
      case 2279:
      case 2280:
      case 2281:
      case 2282:
      case 2283:
      case 2284:
      case 2285:
      case 2286:
      case 2287:
      case 2288:
      case 2289:
      case 2290:
      case 2291:
      case 2292:
      case 2293:
      case 2294:
      case 2295:
      case 2296:
      case 2297:
      case 2298:
      case 2299:
      case 2300:
      case 2301:
      case 2302:
      case 2303:
      case 2306:
      case 2307:
      case 2308:
      case 2309:
      case 2310:
      case 2311:
      case 2312:
      case 2313:
      case 2314:
      case 2315:
      case 2316:
      case 2317:
      case 2318:
      case 2319:
      case 2320:
      case 2321:
      case 2322:
      case 2323:
      case 2324:
      case 2325:
      case 2326:
      case 2327:
      case 2328:
      case 2329:
      case 2330:
      case 2331:
      case 2332:
      case 2333:
      case 2334:
      case 2335:
      case 2336:
      case 2337:
      case 2338:
      case 2339:
      case 2340:
      case 2341:
      case 2342:
      case 2343:
      case 2344:
      case 2345:
      case 2346:
      case 2347:
      case 2348:
      case 2349:
      case 2350:
      case 2351:
      case 2352:
      case 2353:
      case 2354:
      case 2355:
      case 2356:
      case 2357:
      case 2358:
      case 2359:
      case 2360:
      case 2361:
      case 2362:
      case 2363:
      case 2364:
      case 2365:
      case 2366:
      case 2367:
      case 2368:
      case 2369:
      case 2370:
      case 2371:
      case 2372:
      case 2373:
      case 2374:
      case 2375:
      case 2376:
      case 2377:
      case 2378:
      case 2379:
      case 2380:
      case 2381:
      case 2382:
      case 2383:
      case 2384:
      case 2385:
      case 2386:
      case 2387:
      case 2388:
      case 2389:
      case 2390:
      case 2391:
      case 2392:
      case 2393:
      case 2394:
      case 2395:
      case 2396:
      case 2397:
      case 2398:
      case 2399:
      case 2400:
      case 2401:
      case 2402:
      case 2403:
      case 2404:
      case 2405:
      case 2406:
      case 2407:
      case 2408:
      case 2409:
      case 2410:
      case 2411:
      case 2412:
      case 2413:
      case 2414:
      case 2415:
      case 2416:
      case 2417:
      case 2418:
      case 2419:
      case 2420:
      case 2421:
      case 2422:
      case 2423:
      case 2424:
      case 2425:
      case 2426:
      case 2427:
      case 2428:
      case 2429:
      case 2430:
      case 2431:
      case 2432:
      case 2433:
      case 2434:
      case 2435:
      case 2436:
      case 2437:
      case 2438:
      case 2439:
      case 2440:
      case 2441:
      case 2442:
      case 2443:
      case 2444:
      case 2445:
      case 2446:
      case 2447:
      case 2448:
      case 2449:
      case 2450:
      case 2451:
      case 2452:
      case 2453:
      case 2454:
      case 2455:
      case 2456:
      case 2457:
      case 2458:
      case 2459:
      case 2460:
      case 2461:
      case 2462:
      case 2463:
      case 2464:
      case 2465:
      case 2466:
      case 2467:
      case 2468:
      case 2469:
      case 2470:
      case 2471:
      case 2472:
      case 2473:
      case 2474:
      case 2475:
      case 2476:
      case 2477:
      case 2478:
      case 2479:
      case 2480:
      case 2481:
      case 2482:
      case 2483:
      case 2484:
      case 2485:
      case 2486:
      case 2487:
      case 2488:
      case 2489:
      case 2490:
      case 2491:
      case 2492:
      case 2493:
      case 2494:
      case 2495:
      case 2496:
      case 2497:
      case 2498:
      case 2499:
      case 2500:
      case 2501:
      case 2502:
      case 2503:
      case 2504:
      case 2505:
      case 2506:
      case 2507:
      case 2508:
      case 2509:
      case 2510:
      case 2511:
      case 2512:
      case 2513:
      case 2514:
      case 2515:
      case 2516:
      case 2517:
      case 2518:
      case 2519:
      case 2520:
      case 2521:
      case 2522:
      case 2523:
      case 2524:
      case 2525:
      case 2526:
      case 2527:
      case 2528:
      case 2529:
      case 2530:
      case 2531:
      case 2532:
      case 2533:
      case 2534:
      case 2535:
      case 2536:
      case 2537:
      case 2538:
      case 2539:
      case 2540:
      case 2541:
      case 2542:
      case 2543:
      case 2544:
      case 2545:
      case 2546:
      case 2547:
      case 2548:
      case 2549:
      case 2550:
      case 2551:
      case 2552:
      case 2553:
      case 2554:
      case 2555:
      case 2556:
      case 2557:
      case 2558:
      case 2559:
      case 2563:
      case 2564:
      case 2565:
      case 2566:
      case 2567:
      case 2568:
      case 2569:
      case 2570:
      case 2571:
      case 2572:
      case 2573:
      case 2574:
      case 2575:
      case 2576:
      case 2577:
      case 2578:
      case 2579:
      case 2580:
      case 2581:
      case 2582:
      case 2583:
      case 2584:
      case 2585:
      case 2586:
      case 2587:
      case 2588:
      case 2589:
      case 2590:
      case 2591:
      case 2592:
      case 2593:
      case 2594:
      case 2595:
      case 2596:
      case 2597:
      case 2598:
      case 2599:
      case 2600:
      case 2601:
      case 2602:
      case 2603:
      case 2604:
      case 2605:
      case 2606:
      case 2607:
      case 2608:
      case 2609:
      case 2610:
      case 2611:
      case 2612:
      case 2613:
      case 2614:
      case 2615:
      case 2616:
      case 2617:
      case 2618:
      case 2619:
      case 2620:
      case 2621:
      case 2622:
      case 2623:
      case 2624:
      case 2625:
      case 2626:
      case 2627:
      case 2628:
      case 2629:
      case 2630:
      case 2631:
      case 2632:
      case 2633:
      case 2634:
      case 2635:
      case 2636:
      case 2637:
      case 2638:
      case 2639:
      case 2640:
      case 2641:
      case 2642:
      case 2643:
      case 2644:
      case 2645:
      case 2646:
      case 2647:
      case 2648:
      case 2649:
      case 2650:
      case 2651:
      case 2652:
      case 2653:
      case 2654:
      case 2655:
      case 2656:
      case 2657:
      case 2658:
      case 2659:
      case 2660:
      case 2661:
      case 2662:
      case 2663:
      case 2664:
      case 2665:
      case 2666:
      case 2667:
      case 2668:
      case 2669:
      case 2670:
      case 2671:
      case 2672:
      case 2673:
      case 2674:
      case 2675:
      case 2676:
      case 2677:
      case 2678:
      case 2679:
      case 2680:
      case 2681:
      case 2682:
      case 2683:
      case 2684:
      case 2685:
      case 2686:
      case 2687:
      case 2688:
      case 2689:
      case 2690:
      case 2691:
      case 2692:
      case 2693:
      case 2694:
      case 2695:
      case 2696:
      case 2697:
      case 2698:
      case 2699:
      case 2700:
      case 2701:
      case 2702:
      case 2703:
      case 2704:
      case 2705:
      case 2706:
      case 2707:
      case 2708:
      case 2709:
      case 2710:
      case 2711:
      case 2712:
      case 2713:
      case 2714:
      case 2715:
      case 2716:
      case 2717:
      case 2718:
      case 2719:
      case 2720:
      case 2721:
      case 2722:
      case 2723:
      case 2724:
      case 2725:
      case 2726:
      case 2727:
      case 2728:
      case 2729:
      case 2730:
      case 2731:
      case 2732:
      case 2733:
      case 2734:
      case 2735:
      case 2736:
      case 2737:
      case 2738:
      case 2739:
      case 2740:
      case 2741:
      case 2742:
      case 2743:
      case 2744:
      case 2745:
      case 2746:
      case 2747:
      case 2748:
      case 2749:
      case 2750:
      case 2751:
      case 2752:
      case 2753:
      case 2754:
      case 2755:
      case 2756:
      case 2757:
      case 2758:
      case 2759:
      case 2760:
      case 2761:
      case 2762:
      case 2763:
      case 2764:
      case 2765:
      case 2766:
      case 2767:
      case 2768:
      case 2769:
      case 2770:
      case 2771:
      case 2772:
      case 2773:
      case 2774:
      case 2775:
      case 2776:
      case 2777:
      case 2778:
      case 2779:
      case 2780:
      case 2781:
      case 2782:
      case 2783:
      case 2784:
      case 2785:
      case 2786:
      case 2787:
      case 2788:
      case 2789:
      case 2790:
      case 2791:
      case 2792:
      case 2793:
      case 2794:
      case 2795:
      case 2796:
      case 2797:
      case 2798:
      case 2799:
      case 2800:
      case 2801:
      case 2802:
      case 2803:
      case 2804:
      case 2805:
      case 2806:
      case 2807:
      case 2808:
      case 2809:
      case 2810:
      case 2811:
      case 2812:
      case 2813:
      case 2814:
      case 2815:
      case 2826:
      case 2827:
      case 2828:
      case 2829:
      case 2830:
      case 2831:
      case 2836:
      case 2837:
      case 2838:
      case 2839:
      case 2840:
      case 2841:
      case 2842:
      case 2843:
      case 2844:
      case 2845:
      case 2846:
      case 2847:
      case 2855:
      case 2856:
      case 2857:
      case 2858:
      case 2859:
      case 2860:
      case 2861:
      case 2862:
      case 2863:
      case 2868:
      case 2869:
      case 2870:
      case 2871:
      case 2872:
      case 2873:
      case 2874:
      case 2875:
      case 2876:
      case 2877:
      case 2878:
      case 2879:
      case 2887:
      case 2888:
      case 2889:
      case 2890:
      case 2891:
      case 2892:
      case 2893:
      case 2894:
      case 2895:
      case 2904:
      case 2905:
      case 2906:
      case 2907:
      case 2908:
      case 2909:
      case 2910:
      case 2911:
      case 2919:
      case 2920:
      case 2921:
      case 2922:
      case 2923:
      case 2924:
      case 2925:
      case 2926:
      case 2927:
      case 2933:
      case 2934:
      case 2935:
      case 2936:
      case 2937:
      case 2938:
      case 2939:
      case 2940:
      case 2941:
      case 2942:
      case 2943:
      case 2945:
      case 2946:
      case 2947:
      case 2948:
      case 2949:
      case 2950:
      case 2951:
      case 2952:
      case 2953:
      case 2954:
      case 2955:
      case 2956:
      case 2957:
      case 2958:
      case 2959:
      case 2969:
      case 2970:
      case 2971:
      case 2972:
      case 2973:
      case 2974:
      case 2975:
      case 2985:
      case 2986:
      case 2987:
      case 2988:
      case 2989:
      case 2990:
      case 2991:
      case 2994:
      case 2995:
      case 2996:
      case 2997:
      case 2998:
      case 2999:
      case 3000:
      case 3001:
      case 3002:
      case 3003:
      case 3004:
      case 3005:
      case 3006:
      case 3007:
      case 3011:
      case 3012:
      case 3013:
      case 3014:
      case 3015:
      case 3016:
      case 3017:
      case 3018:
      case 3019:
      case 3020:
      case 3021:
      case 3022:
      case 3023:
      case 3025:
      case 3026:
      case 3027:
      case 3028:
      case 3029:
      case 3030:
      case 3031:
      case 3032:
      case 3033:
      case 3034:
      case 3035:
      case 3036:
      case 3037:
      case 3038:
      case 3039:
      case 3043:
      case 3044:
      case 3045:
      case 3046:
      case 3047:
      case 3048:
      case 3049:
      case 3050:
      case 3051:
      case 3052:
      case 3053:
      case 3054:
      case 3055:
      case 3059:
      case 3060:
      case 3061:
      case 3062:
      case 3063:
      case 3064:
      case 3065:
      case 3066:
      case 3067:
      case 3068:
      case 3069:
      case 3070:
      case 3071:
      case 3075:
      case 3076:
      case 3077:
      case 3078:
      case 3079:
      case 3080:
      case 3081:
      case 3082:
      case 3083:
      case 3084:
      case 3085:
      case 3086:
      case 3087:
      case 3090:
      case 3091:
      case 3092:
      case 3093:
      case 3094:
      case 3095:
      case 3096:
      case 3097:
      case 3098:
      case 3099:
      case 3100:
      case 3101:
      case 3102:
      case 3103:
      case 3108:
      case 3109:
      case 3110:
      case 3111:
      case 3112:
      case 3113:
      case 3114:
      case 3115:
      case 3116:
      case 3117:
      case 3118:
      case 3119:
      case 3124:
      case 3125:
      case 3126:
      case 3127:
      case 3128:
      case 3129:
      case 3130:
      case 3131:
      case 3132:
      case 3133:
      case 3134:
      case 3135:
      case 3137:
      case 3138:
      case 3139:
      case 3140:
      case 3141:
      case 3142:
      case 3143:
      case 3144:
      case 3145:
      case 3146:
      case 3147:
      case 3148:
      case 3149:
      case 3150:
      case 3151:
      case 3157:
      case 3158:
      case 3159:
      case 3160:
      case 3161:
      case 3162:
      case 3163:
      case 3164:
      case 3165:
      case 3166:
      case 3167:
      case 3172:
      case 3173:
      case 3174:
      case 3175:
      case 3176:
      case 3177:
      case 3178:
      case 3179:
      case 3180:
      case 3181:
      case 3182:
      case 3183:
      case 3194:
      case 3195:
      case 3196:
      case 3197:
      case 3198:
      case 3199:
      case 3200:
      case 3201:
      case 3202:
      case 3203:
      case 3204:
      case 3205:
      case 3206:
      case 3207:
      case 3208:
      case 3209:
      case 3210:
      case 3211:
      case 3212:
      case 3213:
      case 3214:
      case 3215:
      case 3216:
      case 3217:
      case 3218:
      case 3219:
      case 3220:
      case 3221:
      case 3222:
      case 3223:
      case 3224:
      case 3225:
      case 3226:
      case 3227:
      case 3228:
      case 3229:
      case 3230:
      case 3231:
      case 3232:
      case 3233:
      case 3234:
      case 3235:
      case 3236:
      case 3237:
      case 3238:
      case 3239:
      case 3240:
      case 3241:
      case 3242:
      case 3243:
      case 3244:
      case 3245:
      case 3246:
      case 3247:
      case 3258:
      case 3259:
      case 3260:
      case 3261:
      case 3262:
      case 3263:
      case 3264:
      case 3265:
      case 3266:
      case 3267:
      case 3268:
      case 3269:
      case 3270:
      case 3271:
      case 3272:
      case 3273:
      case 3274:
      case 3275:
      case 3276:
      case 3277:
      case 3278:
      case 3279:
      case 3280:
      case 3281:
      case 3282:
      case 3283:
      case 3284:
      case 3285:
      case 3286:
      case 3287:
      case 3288:
      case 3289:
      case 3290:
      case 3291:
      case 3292:
      case 3293:
      case 3294:
      case 3295:
      case 3296:
      case 3297:
      case 3298:
      case 3299:
      case 3300:
      case 3301:
      case 3302:
      case 3303:
      case 3304:
      case 3305:
      case 3306:
      case 3307:
      case 3308:
      case 3309:
      case 3310:
      case 3311:
      case 3318:
      case 3319:
      case 3320:
      case 3321:
      case 3322:
      case 3323:
      case 3324:
      case 3325:
      case 3326:
      case 3327:
      case 3334:
      case 3335:
      case 3336:
      case 3337:
      case 3338:
      case 3339:
      case 3340:
      case 3341:
      case 3342:
      case 3343:
      case 3360:
      case 3361:
      case 3362:
      case 3363:
      case 3364:
      case 3365:
      case 3366:
      case 3367:
      case 3368:
      case 3369:
      case 3370:
      case 3371:
      case 3372:
      case 3373:
      case 3374:
      case 3375:
      case 3388:
      case 3389:
      case 3390:
      case 3391:
      case 3392:
      case 3393:
      case 3394:
      case 3395:
      case 3396:
      case 3397:
      case 3398:
      case 3399:
      case 3400:
      case 3401:
      case 3402:
      case 3403:
      case 3404:
      case 3405:
      case 3406:
      case 3407:
      case 3420:
      case 3421:
      case 3422:
      case 3423:
      case 3424:
      case 3425:
      case 3426:
      case 3427:
      case 3428:
      case 3429:
      case 3430:
      case 3431:
      case 3432:
      case 3433:
      case 3434:
      case 3435:
      case 3436:
      case 3437:
      case 3438:
      case 3439:
      case 3441:
      case 3442:
      case 3443:
      case 3444:
      case 3445:
      case 3446:
      case 3447:
      case 3448:
      case 3449:
      case 3450:
      case 3451:
      case 3452:
      case 3453:
      case 3454:
      case 3455:
      case 3457:
      case 3458:
      case 3459:
      case 3460:
      case 3461:
      case 3462:
      case 3463:
      case 3464:
      case 3465:
      case 3466:
      case 3467:
      case 3468:
      case 3469:
      case 3470:
      case 3471:
      case 3481:
      case 3482:
      case 3483:
      case 3484:
      case 3485:
      case 3486:
      case 3487:
      case 3488:
      case 3489:
      case 3490:
      case 3491:
      case 3492:
      case 3493:
      case 3494:
      case 3495:
      case 3496:
      case 3497:
      case 3498:
      case 3499:
      case 3500:
      case 3501:
      case 3502:
      case 3503:
      case 3513:
      case 3514:
      case 3515:
      case 3516:
      case 3517:
      case 3518:
      case 3519:
      case 3520:
      case 3521:
      case 3522:
      case 3523:
      case 3524:
      case 3525:
      case 3526:
      case 3527:
      case 3528:
      case 3529:
      case 3530:
      case 3531:
      case 3532:
      case 3533:
      case 3534:
      case 3535:
      case 3540:
      case 3541:
      case 3542:
      case 3543:
      case 3544:
      case 3545:
      case 3546:
      case 3547:
      case 3548:
      case 3549:
      case 3550:
      case 3551:
      case 3554:
      case 3555:
      case 3556:
      case 3557:
      case 3558:
      case 3559:
      case 3560:
      case 3561:
      case 3562:
      case 3563:
      case 3564:
      case 3565:
      case 3566:
      case 3567:
        return 0;
      case 1536:
        result = "GL_2D";
        break;
      case 1537:
        result = "GL_3D";
        break;
      case 1538:
        result = "GL_3D_COLOR";
        break;
      case 1539:
        result = "GL_3D_COLOR_TEXTURE";
        break;
      case 1540:
        result = "GL_4D_COLOR_TEXTURE";
        break;
      case 1792:
        result = "GL_PASS_THROUGH_TOKEN";
        break;
      case 1793:
        result = "GL_POINT_TOKEN";
        break;
      case 1794:
        result = "GL_LINE_TOKEN";
        break;
      case 1795:
        result = "GL_POLYGON_TOKEN";
        break;
      case 1796:
        result = "GL_BITMAP_TOKEN";
        break;
      case 1797:
        result = "GL_DRAW_PIXEL_TOKEN";
        break;
      case 1798:
        result = "GL_COPY_PIXEL_TOKEN";
        break;
      case 1799:
        result = "GL_LINE_RESET_TOKEN";
        break;
      case 2048:
        result = "GL_EXP";
        break;
      case 2049:
        result = "GL_EXP2";
        break;
      case 2304:
        result = "GL_CW";
        break;
      case 2305:
        result = "GL_CCW";
        break;
      case 2560:
        result = "GL_COEFF";
        break;
      case 2561:
        result = "GL_ORDER";
        break;
      case 2562:
        result = "GL_DOMAIN";
        break;
      case 2816:
        result = "GL_CURRENT_COLOR";
        break;
      case 2817:
        result = "GL_CURRENT_INDEX";
        break;
      case 2818:
        result = "GL_CURRENT_NORMAL";
        break;
      case 2819:
        result = "GL_CURRENT_TEXTURE_COORDS";
        break;
      case 2820:
        result = "GL_CURRENT_RASTER_COLOR";
        break;
      case 2821:
        result = "GL_CURRENT_RASTER_INDEX";
        break;
      case 2822:
        result = "GL_CURRENT_RASTER_TEXTURE_COORDS";
        break;
      case 2823:
        result = "GL_CURRENT_RASTER_POSITION";
        break;
      case 2824:
        result = "GL_CURRENT_RASTER_POSITION_VALID";
        break;
      case 2825:
        result = "GL_CURRENT_RASTER_DISTANCE";
        break;
      case 2832:
        result = "GL_POINT_SMOOTH";
        break;
      case 2833:
        result = "GL_POINT_SIZE";
        break;
      case 2834:
        result = "GL_POINT_SIZE_RANGE";
        break;
      case 2835:
        result = "GL_POINT_SIZE_GRANULARITY";
        break;
      case 2848:
        result = "GL_LINE_SMOOTH";
        break;
      case 2849:
        result = "GL_LINE_WIDTH";
        break;
      case 2850:
        result = "GL_SMOOTH_LINE_WIDTH_RANGE";
        break;
      case 2851:
        result = "GL_SMOOTH_LINE_WIDTH_GRANULARITY";
        break;
      case 2852:
        result = "GL_LINE_STIPPLE";
        break;
      case 2853:
        result = "GL_LINE_STIPPLE_PATTERN";
        break;
      case 2854:
        result = "GL_LINE_STIPPLE_REPEAT";
        break;
      case 2864:
        result = "GL_LIST_MODE";
        break;
      case 2865:
        result = "GL_MAX_LIST_NESTING";
        break;
      case 2866:
        result = "GL_LIST_BASE";
        break;
      case 2867:
        result = "GL_LIST_INDEX";
        break;
      case 2880:
        result = "GL_POLYGON_MODE";
        break;
      case 2881:
        result = "GL_POLYGON_SMOOTH";
        break;
      case 2882:
        result = "GL_POLYGON_STIPPLE";
        break;
      case 2883:
        result = "GL_EDGE_FLAG";
        break;
      case 2884:
        result = "GL_CULL_FACE";
        break;
      case 2885:
        result = "GL_CULL_FACE_MODE";
        break;
      case 2886:
        result = "GL_FRONT_FACE";
        break;
      case 2896:
        result = "GL_LIGHTING";
        break;
      case 2897:
        result = "GL_LIGHT_MODEL_LOCAL_VIEWER";
        break;
      case 2898:
        result = "GL_LIGHT_MODEL_TWO_SIDE";
        break;
      case 2899:
        result = "GL_LIGHT_MODEL_AMBIENT";
        break;
      case 2900:
        result = "GL_SHADE_MODEL";
        break;
      case 2901:
        result = "GL_COLOR_MATERIAL_FACE";
        break;
      case 2902:
        result = "GL_COLOR_MATERIAL_PARAMETER";
        break;
      case 2903:
        result = "GL_COLOR_MATERIAL";
        break;
      case 2912:
        result = "GL_FOG";
        break;
      case 2913:
        result = "GL_FOG_INDEX";
        break;
      case 2914:
        result = "GL_FOG_DENSITY";
        break;
      case 2915:
        result = "GL_FOG_START";
        break;
      case 2916:
        result = "GL_FOG_END";
        break;
      case 2917:
        result = "GL_FOG_MODE";
        break;
      case 2918:
        result = "GL_FOG_COLOR";
        break;
      case 2928:
        result = "GL_DEPTH_RANGE";
        break;
      case 2929:
        result = "GL_DEPTH_TEST";
        break;
      case 2930:
        result = "GL_DEPTH_WRITEMASK";
        break;
      case 2931:
        result = "GL_DEPTH_CLEAR_VALUE";
        break;
      case 2932:
        result = "GL_DEPTH_FUNC";
        break;
      case 2944:
        result = "GL_ACCUM_CLEAR_VALUE";
        break;
      case 2960:
        result = "GL_STENCIL_TEST";
        break;
      case 2961:
        result = "GL_STENCIL_CLEAR_VALUE";
        break;
      case 2962:
        result = "GL_STENCIL_FUNC";
        break;
      case 2963:
        result = "GL_STENCIL_VALUE_MASK";
        break;
      case 2964:
        result = "GL_STENCIL_FAIL";
        break;
      case 2965:
        result = "GL_STENCIL_PASS_DEPTH_FAIL";
        break;
      case 2966:
        result = "GL_STENCIL_PASS_DEPTH_PASS";
        break;
      case 2967:
        result = "GL_STENCIL_REF";
        break;
      case 2968:
        result = "GL_STENCIL_WRITEMASK";
        break;
      case 2976:
        result = "GL_MATRIX_MODE";
        break;
      case 2977:
        result = "GL_NORMALIZE";
        break;
      case 2978:
        result = "GL_VIEWPORT";
        break;
      case 2979:
        result = "GL_MODELVIEW_STACK_DEPTH";
        break;
      case 2980:
        result = "GL_PROJECTION_STACK_DEPTH";
        break;
      case 2981:
        result = "GL_TEXTURE_STACK_DEPTH";
        break;
      case 2982:
        result = "GL_MODELVIEW_MATRIX";
        break;
      case 2983:
        result = "GL_PROJECTION_MATRIX";
        break;
      case 2984:
        result = "GL_TEXTURE_MATRIX";
        break;
      case 2992:
        result = "GL_ATTRIB_STACK_DEPTH";
        break;
      case 2993:
        result = "GL_CLIENT_ATTRIB_STACK_DEPTH";
        break;
      case 3008:
        result = "GL_ALPHA_TEST";
        break;
      case 3009:
        result = "GL_ALPHA_TEST_FUNC";
        break;
      case 3010:
        result = "GL_ALPHA_TEST_REF";
        break;
      case 3024:
        result = "GL_DITHER";
        break;
      case 3040:
        result = "GL_BLEND_DST";
        break;
      case 3041:
        result = "GL_BLEND_SRC";
        break;
      case 3042:
        result = "GL_BLEND";
        break;
      case 3056:
        result = "GL_LOGIC_OP_MODE";
        break;
      case 3057:
        result = "GL_INDEX_LOGIC_OP";
        break;
      case 3058:
        result = "GL_COLOR_LOGIC_OP";
        break;
      case 3072:
        result = "GL_AUX_BUFFERS";
        break;
      case 3073:
        result = "GL_DRAW_BUFFER";
        break;
      case 3074:
        result = "GL_READ_BUFFER";
        break;
      case 3088:
        result = "GL_SCISSOR_BOX";
        break;
      case 3089:
        result = "GL_SCISSOR_TEST";
        break;
      case 3104:
        result = "GL_INDEX_CLEAR_VALUE";
        break;
      case 3105:
        result = "GL_INDEX_WRITEMASK";
        break;
      case 3106:
        result = "GL_COLOR_CLEAR_VALUE";
        break;
      case 3107:
        result = "GL_COLOR_WRITEMASK";
        break;
      case 3120:
        result = "GL_INDEX_MODE";
        break;
      case 3121:
        result = "GL_RGBA_MODE";
        break;
      case 3122:
        result = "GL_DOUBLEBUFFER";
        break;
      case 3123:
        result = "GL_STEREO";
        break;
      case 3136:
        result = "GL_RENDER_MODE";
        break;
      case 3152:
        result = "GL_PERSPECTIVE_CORRECTION_HINT";
        break;
      case 3153:
        result = "GL_POINT_SMOOTH_HINT";
        break;
      case 3154:
        result = "GL_LINE_SMOOTH_HINT";
        break;
      case 3155:
        result = "GL_POLYGON_SMOOTH_HINT";
        break;
      case 3156:
        result = "GL_FOG_HINT";
        break;
      case 3168:
        result = "GL_TEXTURE_GEN_S";
        break;
      case 3169:
        result = "GL_TEXTURE_GEN_T";
        break;
      case 3170:
        result = "GL_TEXTURE_GEN_R";
        break;
      case 3171:
        result = "GL_TEXTURE_GEN_Q";
        break;
      case 3184:
        result = "GL_PIXEL_MAP_I_TO_I";
        break;
      case 3185:
        result = "GL_PIXEL_MAP_S_TO_S";
        break;
      case 3186:
        result = "GL_PIXEL_MAP_I_TO_R";
        break;
      case 3187:
        result = "GL_PIXEL_MAP_I_TO_G";
        break;
      case 3188:
        result = "GL_PIXEL_MAP_I_TO_B";
        break;
      case 3189:
        result = "GL_PIXEL_MAP_I_TO_A";
        break;
      case 3190:
        result = "GL_PIXEL_MAP_R_TO_R";
        break;
      case 3191:
        result = "GL_PIXEL_MAP_G_TO_G";
        break;
      case 3192:
        result = "GL_PIXEL_MAP_B_TO_B";
        break;
      case 3193:
        result = "GL_PIXEL_MAP_A_TO_A";
        break;
      case 3248:
        result = "GL_PIXEL_MAP_I_TO_I_SIZE";
        break;
      case 3249:
        result = "GL_PIXEL_MAP_S_TO_S_SIZE";
        break;
      case 3250:
        result = "GL_PIXEL_MAP_I_TO_R_SIZE";
        break;
      case 3251:
        result = "GL_PIXEL_MAP_I_TO_G_SIZE";
        break;
      case 3252:
        result = "GL_PIXEL_MAP_I_TO_B_SIZE";
        break;
      case 3253:
        result = "GL_PIXEL_MAP_I_TO_A_SIZE";
        break;
      case 3254:
        result = "GL_PIXEL_MAP_R_TO_R_SIZE";
        break;
      case 3255:
        result = "GL_PIXEL_MAP_G_TO_G_SIZE";
        break;
      case 3256:
        result = "GL_PIXEL_MAP_B_TO_B_SIZE";
        break;
      case 3257:
        result = "GL_PIXEL_MAP_A_TO_A_SIZE";
        break;
      case 3312:
        result = "GL_UNPACK_SWAP_BYTES";
        break;
      case 3313:
        result = "GL_UNPACK_LSB_FIRST";
        break;
      case 3314:
        result = "GL_UNPACK_ROW_LENGTH";
        break;
      case 3315:
        result = "GL_UNPACK_SKIP_ROWS";
        break;
      case 3316:
        result = "GL_UNPACK_SKIP_PIXELS";
        break;
      case 3317:
        result = "GL_UNPACK_ALIGNMENT";
        break;
      case 3328:
        result = "GL_PACK_SWAP_BYTES";
        break;
      case 3329:
        result = "GL_PACK_LSB_FIRST";
        break;
      case 3330:
        result = "GL_PACK_ROW_LENGTH";
        break;
      case 3331:
        result = "GL_PACK_SKIP_ROWS";
        break;
      case 3332:
        result = "GL_PACK_SKIP_PIXELS";
        break;
      case 3333:
        result = "GL_PACK_ALIGNMENT";
        break;
      case 3344:
        result = "GL_MAP_COLOR";
        break;
      case 3345:
        result = "GL_MAP_STENCIL";
        break;
      case 3346:
        result = "GL_INDEX_SHIFT";
        break;
      case 3347:
        result = "GL_INDEX_OFFSET";
        break;
      case 3348:
        result = "GL_RED_SCALE";
        break;
      case 3349:
        result = "GL_RED_BIAS";
        break;
      case 3350:
        result = "GL_ZOOM_X";
        break;
      case 3351:
        result = "GL_ZOOM_Y";
        break;
      case 3352:
        result = "GL_GREEN_SCALE";
        break;
      case 3353:
        result = "GL_GREEN_BIAS";
        break;
      case 3354:
        result = "GL_BLUE_SCALE";
        break;
      case 3355:
        result = "GL_BLUE_BIAS";
        break;
      case 3356:
        result = "GL_ALPHA_SCALE";
        break;
      case 3357:
        result = "GL_ALPHA_BIAS";
        break;
      case 3358:
        result = "GL_DEPTH_SCALE";
        break;
      case 3359:
        result = "GL_DEPTH_BIAS";
        break;
      case 3376:
        result = "GL_MAX_EVAL_ORDER";
        break;
      case 3377:
        result = "GL_MAX_LIGHTS";
        break;
      case 3378:
        result = "GL_MAX_CLIP_DISTANCES";
        break;
      case 3379:
        result = "GL_MAX_TEXTURE_SIZE";
        break;
      case 3380:
        result = "GL_MAX_PIXEL_MAP_TABLE";
        break;
      case 3381:
        result = "GL_MAX_ATTRIB_STACK_DEPTH";
        break;
      case 3382:
        result = "GL_MAX_MODELVIEW_STACK_DEPTH";
        break;
      case 3383:
        result = "GL_MAX_NAME_STACK_DEPTH";
        break;
      case 3384:
        result = "GL_MAX_PROJECTION_STACK_DEPTH";
        break;
      case 3385:
        result = "GL_MAX_TEXTURE_STACK_DEPTH";
        break;
      case 3386:
        result = "GL_MAX_VIEWPORT_DIMS";
        break;
      case 3387:
        result = "GL_MAX_CLIENT_ATTRIB_STACK_DEPTH";
        break;
      case 3408:
        result = "GL_SUBPIXEL_BITS";
        break;
      case 3409:
        result = "GL_INDEX_BITS";
        break;
      case 3410:
        result = "GL_RED_BITS";
        break;
      case 3411:
        result = "GL_GREEN_BITS";
        break;
      case 3412:
        result = "GL_BLUE_BITS";
        break;
      case 3413:
        result = "GL_ALPHA_BITS";
        break;
      case 3414:
        result = "GL_DEPTH_BITS";
        break;
      case 3415:
        result = "GL_STENCIL_BITS";
        break;
      case 3416:
        result = "GL_ACCUM_RED_BITS";
        break;
      case 3417:
        result = "GL_ACCUM_GREEN_BITS";
        break;
      case 3418:
        result = "GL_ACCUM_BLUE_BITS";
        break;
      case 3419:
        result = "GL_ACCUM_ALPHA_BITS";
        break;
      case 3440:
        result = "GL_NAME_STACK_DEPTH";
        break;
      case 3456:
        result = "GL_AUTO_NORMAL";
        break;
      case 3472:
        result = "GL_MAP1_COLOR_4";
        break;
      case 3473:
        result = "GL_MAP1_INDEX";
        break;
      case 3474:
        result = "GL_MAP1_NORMAL";
        break;
      case 3475:
        result = "GL_MAP1_TEXTURE_COORD_1";
        break;
      case 3476:
        result = "GL_MAP1_TEXTURE_COORD_2";
        break;
      case 3477:
        result = "GL_MAP1_TEXTURE_COORD_3";
        break;
      case 3478:
        result = "GL_MAP1_TEXTURE_COORD_4";
        break;
      case 3479:
        result = "GL_MAP1_VERTEX_3";
        break;
      case 3480:
        result = "GL_MAP1_VERTEX_4";
        break;
      case 3504:
        result = "GL_MAP2_COLOR_4";
        break;
      case 3505:
        result = "GL_MAP2_INDEX";
        break;
      case 3506:
        result = "GL_MAP2_NORMAL";
        break;
      case 3507:
        result = "GL_MAP2_TEXTURE_COORD_1";
        break;
      case 3508:
        result = "GL_MAP2_TEXTURE_COORD_2";
        break;
      case 3509:
        result = "GL_MAP2_TEXTURE_COORD_3";
        break;
      case 3510:
        result = "GL_MAP2_TEXTURE_COORD_4";
        break;
      case 3511:
        result = "GL_MAP2_VERTEX_3";
        break;
      case 3512:
        result = "GL_MAP2_VERTEX_4";
        break;
      case 3536:
        result = "GL_MAP1_GRID_DOMAIN";
        break;
      case 3537:
        result = "GL_MAP1_GRID_SEGMENTS";
        break;
      case 3538:
        result = "GL_MAP2_GRID_DOMAIN";
        break;
      case 3539:
        result = "GL_MAP2_GRID_SEGMENTS";
        break;
      case 3552:
        result = "GL_TEXTURE_1D";
        break;
      case 3553:
        result = "GL_TEXTURE_2D";
        break;
      case 3568:
        result = "GL_FEEDBACK_BUFFER_POINTER";
        break;
      case 3569:
        result = "GL_FEEDBACK_BUFFER_SIZE";
        break;
      case 3570:
        result = "GL_FEEDBACK_BUFFER_TYPE";
        break;
      case 3571:
        result = "GL_SELECTION_BUFFER_POINTER";
        break;
      case 3572:
        result = "GL_SELECTION_BUFFER_SIZE";
        break;
      default:
        switch(a1)
        {
          case 1024:
            result = "GL_FRONT_LEFT";
            break;
          case 1025:
            result = "GL_FRONT_RIGHT";
            break;
          case 1026:
            result = "GL_BACK_LEFT";
            break;
          case 1027:
            result = "GL_BACK_RIGHT";
            break;
          case 1028:
            result = "GL_FRONT";
            break;
          case 1029:
            result = "GL_BACK";
            break;
          case 1030:
            result = "GL_LEFT";
            break;
          case 1031:
            result = "GL_RIGHT";
            break;
          case 1032:
            result = "GL_FRONT_AND_BACK";
            break;
          case 1033:
            result = "GL_AUX0";
            break;
          case 1034:
            result = "GL_AUX1";
            break;
          case 1035:
            result = "GL_AUX2";
            break;
          case 1036:
            result = "GL_AUX3";
            break;
          default:
            if (a1 != 776)
            {
              return 0;
            }

            result = "GL_SRC_ALPHA_SATURATE";
            break;
        }

        break;
    }
  }

  return result;
}