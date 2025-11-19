void *GTFunctionDecoder::Decode(uint64_t a1, unsigned int *a2)
{
  *(a1 + 8) = 0;
  v4 = *(a1 + 12);
  v5 = *a1;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    *(a1 + 12) = 32;
    v5 = malloc_type_realloc(v5, 0x4300uLL, 0x10B0040F47DA5FCuLL);
    *a1 = v5;
    v6 = *(a1 + 8);
  }

  *(a1 + 8) = v6 + 1;
  GTFunctionDecoder::_decode(&v5[67 * v6], a2, *(a1 + 16), 16);
  if ((*(a2 + 33) & 0x10) != 0)
  {
    do
    {
      v10 = *a2;
      v11 = *(a1 + 8);
      v12 = *a1;
      if (v11 == *(a1 + 12))
      {
        if (v11 >= 1)
        {
          v13 = 2 * v11;
        }

        else
        {
          v13 = 32;
        }

        *(a1 + 12) = v13;
        v12 = malloc_type_realloc(v12, 536 * v13, 0x10B0040F47DA5FCuLL);
        *a1 = v12;
        v11 = *(a1 + 8);
      }

      a2 = (a2 + v10);
      *(a1 + 8) = v11 + 1;
      GTFunctionDecoder::_decode(&v12[67 * v11], a2, *(a1 + 16), 16);
    }

    while ((*(a2 + 33) & 0x20) == 0);
  }

  v7 = *(a1 + 8);
  result = *a1;
  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      v9 = 1;
LABEL_18:
      v16 = &result[67 * v9];
      v17 = v7 - v9;
      do
      {
        *(v16 - 2) = v16;
        v16 += 536;
        --v17;
      }

      while (v17);
      goto LABEL_20;
    }

    v9 = (v7 - 1) | 1;
    v14 = (result + 67);
    v15 = (v7 - 1) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v14 - 2) = v14;
      *(v14 + 65) = v14 + 536;
      v14 += 1072;
      v15 -= 2;
    }

    while (v15);
    if (v7 - 1 != ((v7 - 1) & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  result[67 * v7 - 2] = 0;
  return result;
}

void sub_24D6876A8(_Unwind_Exception *a1)
{
  v4 = std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::~__hash_table(v2);
  MEMORY[0x253030980](v4, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::~__hash_table(uint64_t a1)
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

void *std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::__emplace_unique_key_args<long long,std::pair<long long const,objc_object  {objcproto8NSObject}>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<long long,objc_object  {objcproto8NSObject}*>,std::__unordered_map_hasher<long long,objc_object  {objcproto8NSObject}*,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,objc_object  {objcproto8NSObject}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto8NSObject}*>>::remove@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
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
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

unint64_t GPUTools::VMBuffer::round_size(unint64_t this)
{
  if (3 * *MEMORY[0x277D85FA0] <= this)
  {
    return (this + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  }

  else
  {
    return 3 * *MEMORY[0x277D85FA0];
  }
}

GPUTools::VMBuffer *GPUTools::VMBuffer::VMBuffer(GPUTools::VMBuffer *this, unint64_t a2, uint64_t a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 5) = 1;
  GPUTools::VMBuffer::_dealloc(this);
  GPUTools::VMBuffer::_alloc(this, a2, a3);
  return this;
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 5) = 1;
  GPUTools::VMBuffer::_dealloc(this);
  GPUTools::VMBuffer::_alloc(this, a2, a3);
  return this;
}

uint64_t GPUTools::VMBuffer::alloc(GPUTools::VMBuffer *this, unint64_t a2, uint64_t a3)
{
  GPUTools::VMBuffer::_dealloc(this);

  return GPUTools::VMBuffer::_alloc(this, a2, a3);
}

void GPUTools::VMBuffer::~VMBuffer(GPUTools::VMBuffer *this)
{
  GPUTools::VMBuffer::_dealloc(this);
}

{
  GPUTools::VMBuffer::_dealloc(this);
}

void *GPUTools::VMBuffer::_dealloc(void *this)
{
  if (*this)
  {
    v1 = this;
    this = MEMORY[0x253031720](*MEMORY[0x277D85F48], *this, *MEMORY[0x277D85FA0] + this[1] + this[1] * this[2]);
    v1[1] = 0;
    v1[2] = 0;
    *v1 = 0;
  }

  return this;
}

uint64_t GPUTools::VMBuffer::_alloc(GPUTools::VMBuffer *this, unint64_t a2, uint64_t a3)
{
  v4 = 0;
  address = 0;
  v5 = MEMORY[0x277D85FA0];
  if (3 * *MEMORY[0x277D85FA0] <= a2)
  {
    v6 = (a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  }

  else
  {
    v6 = 3 * *MEMORY[0x277D85FA0];
  }

  v7 = v6 + v6 * a3;
  v8 = MEMORY[0x277D85F48];
  do
  {
    v9 = *v8;
    v10 = *v5 + v7;
    v11 = vm_allocate(*v8, &address, v10, 1);
    if (!v11)
    {
      v12 = v5;
      v13 = this;
      v14 = address;
      target_address = address + v6;
      v15 = a3;
      if (a3)
      {
        while (1)
        {
          v11 = MEMORY[0x253031720](v9);
          if (v11)
          {
            break;
          }

          cur_protection = 0;
          v11 = vm_remap(v9, &target_address, v6, 0, 0, v9, address, 0, &cur_protection + 1, &cur_protection, 2u);
          if (v11)
          {
            break;
          }

          target_address += v6;
          if (!--v15)
          {
            v14 = address;
            goto LABEL_11;
          }
        }

        this = v13;
        v5 = v12;
      }

      else
      {
LABEL_11:
        this = v13;
        v5 = v12;
        v11 = MEMORY[0x253031740](v9, v14 + v10 - *v12, *v12, 0, 0);
        if (!v11)
        {
          *this = address;
          *(this + 1) = v6;
          *(this + 2) = a3;
          return 1;
        }
      }

      v8 = MEMORY[0x277D85F48];
    }

    mach_error_string(v11);
    DYLog(3, "<VMBuffer: %p> allocation failed: %s", v16, v17, v18, v19, v20, v21, this);
    MEMORY[0x253031720](*v8, address, *v5 + v7);
    ++v4;
  }

  while (v4 != 5);
  return 0;
}

uint64_t GPUTools::VMBuffer::resize(GPUTools::VMBuffer *this, unint64_t a2)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = *(this + 2);
  result = GPUTools::VMBuffer::_alloc(this, a2, v5);
  if (result)
  {
    if (v4 >= *(this + 1))
    {
      v7 = *(this + 1);
    }

    else
    {
      v7 = v4;
    }

    v8 = MEMORY[0x277D85F48];
    v9 = vm_copy(*MEMORY[0x277D85F48], v3, v7, *this);
    if (v9)
    {
      mach_error_string(v9);
      DYLog(3, "<VMBuffer: %p> vm_copy failed: %s", v10, v11, v12, v13, v14, v15, this);
      GPUTools::VMBuffer::_dealloc(this);
      return 0;
    }

    else
    {
      MEMORY[0x253031720](*v8, v3, *MEMORY[0x277D85FA0] + v4 + v4 * v5);
      return 1;
    }
  }

  return result;
}

void *GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(void *this, char *a2)
{
  *this = &unk_2860A9068;
  this[1] = a2;
  return this;
}

{
  *this = &unk_2860A9068;
  this[1] = a2;
  return this;
}

void GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(GPUTools::FB::VAListArgumentProvider *this)
{
  *this = &unk_2860A9068;
}

{
  *this = &unk_2860A9068;
}

{
  *this = &unk_2860A9068;
  JUMPOUT(0x253030980);
}

uint64_t GPUTools::FB::FunctionArgumentProvider::GenFormatString(GPUTools::FB::FunctionArgumentProvider *this, const GPUTools::FD::Argument *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v3 = *(this + 11);
  if ((v3 & 1) != 0 || (v3 & 2) != 0)
  {
    std::ostream::put();
    MEMORY[0x253030880](&v13, *(this + 10));
  }

  v4 = *(this + 11);
  if ((v4 & 4) != 0)
  {
    std::ostream::put();
    v4 = *(this + 11);
  }

  if ((v4 & 8) != 0)
  {
    std::ostream::put();
    if (*(this + 3))
    {
      std::ostream::put();
      goto LABEL_11;
    }
  }

  else if ((v4 & 0x10) != 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "V<", 2);
LABEL_11:
    v5 = 1;
    goto LABEL_13;
  }

  v5 = 0;
LABEL_13:
  v6 = "ub";
  switch(*(this + 3))
  {
    case 0:
      if (*(this + 2) != 13)
      {
        __assert_rtn("static std::string GPUTools::FB::FunctionArgumentProvider::GenFormatString(const GPUTools::FD::Argument &)", "", 0, "argument.core_type == Argument::Type::Pointer");
      }

      break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x13:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
      goto LABEL_32;
    case 2:
    case 0x11:
      goto LABEL_27;
    case 4:
      v6 = "us";
      goto LABEL_27;
    case 6:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
      v6 = "ui";
      goto LABEL_27;
    case 8:
    case 0x1A:
      v6 = "uw";
      goto LABEL_27;
    case 0xC:
      v6 = "ul";
LABEL_27:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v6, 2);
      break;
    case 0x10:
      dy_abort("objc objects cannot be encoded in function buffers", 98);
    case 0x12:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
      v7 = *(this + 2);
      if (v7 != 6 && v7 != 9 && v7 != 8)
      {
        dy_abort("invalid core type for GL enum: %u", 98);
      }

      goto LABEL_32;
    case 0x28:
      v9 = *(this + 2);
      if (v9 != 12 && v9 != 6)
      {
        dy_abort("invalid core type for GL shader: %u", 98);
      }

      goto LABEL_32;
    case 0x29:
      v8 = *(this + 2);
      if (v8 != 12 && v8 != 6)
      {
        dy_abort("invalid core type for GL program: %u", 98);
      }

LABEL_32:
      std::ostream::put();
      break;
    default:
      break;
  }

  if (v5)
  {
    std::ostream::put();
  }

  std::stringbuf::str();
  v12[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v10;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x253030940](&v17);
}

void sub_24D689B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x277D82818]);
  MEMORY[0x253030940](&a26);
  _Unwind_Resume(a1);
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

void sub_24D689E68(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x253030940](v1);
  _Unwind_Resume(a1);
}

GPUTools::FB::FunctionArgumentProvider *GPUTools::FB::FunctionArgumentProvider::FunctionArgumentProvider(GPUTools::FB::FunctionArgumentProvider *this, const GPUTools::FD::CoreFunction *a2, int a3)
{
  *this = &unk_2860A90D0;
  *(this + 1) = 0;
  v5 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2;
  *(this + 40) = 0u;
  v6 = (this + 40);
  *(this + 56) = 0u;
  v7 = *(a2 + 5);
  if (a3)
  {
    v8 = 24;
  }

  else
  {
    v8 = 48;
  }

  if (a3)
  {
    v7 = 1;
  }

  v9 = v7;
  std::vector<std::pair<dy_polymorphic_scalar_t,BOOL>>::reserve(this + 1, v7);
  if (v9)
  {
    v11 = 0;
    v12 = a2 + v8;
    do
    {
      v13 = &v12[24 * v11];
      GPUTools::FB::FunctionArgumentProvider::GenFormatString(__p, v13, v10);
      if ((v40 & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      if ((v40 & 0x80u) == 0)
      {
        v15 = v40;
      }

      else
      {
        v15 = __p[1];
      }

      std::string::append(v6, v14, v15);
      v16 = *(v13 + 11);
      if ((v16 & 2) != 0)
      {
        v3 = malloc_type_malloc(8 * *(v13 + 10), 0x80040B8603338uLL);
        if (!v3)
        {
          __assert_rtn("GPUTools::FB::FunctionArgumentProvider::FunctionArgumentProvider(const GPUTools::FD::CoreFunction &, BOOL)", "", 0, "ppArrays");
        }

        v18 = malloc_type_malloc(4 * *(v13 + 10), 0x100004052888210uLL);
        if (!v18)
        {
          __assert_rtn("GPUTools::FB::FunctionArgumentProvider::FunctionArgumentProvider(const GPUTools::FD::CoreFunction &, BOOL)", "", 0, "pLengths");
        }

        CoreTypeSize = GPUTools::FD::Argument::GetCoreTypeSize(*(v13 + 2));
        v20 = *(v13 + 10);
        if (*(v13 + 10))
        {
          v21 = 0;
          v22 = *v13;
          v23 = *v13 + 4;
          do
          {
            v24 = *v13 + *(v23 - 4);
            *(v3 + 8 * v21) = v24;
            v25 = v21 + 1;
            if (v21 + 1 >= v20)
            {
              v26 = (v13 + 2);
            }

            else
            {
              v26 = v23;
            }

            v18[v21] = (v22 + *v26 - v24) / CoreTypeSize;
            v23 += 4;
            ++v21;
          }

          while (v20 != v25);
        }

        *&v38 = v18;
        BYTE8(v38) = 1;
        std::vector<std::pair<dy_polymorphic_scalar_t,BOOL>>::push_back[abi:ne200100](v5, &v38);
        *&v38 = v3;
        BYTE8(v38) = 1;
        std::vector<std::pair<dy_polymorphic_scalar_t,BOOL>>::push_back[abi:ne200100](v5, &v38);
        goto LABEL_59;
      }

      if ((v16 & 0x18) != 0 || *(v13 + 3) == 14)
      {
        if ((v16 & 0x40) != 0)
        {
          v3 = malloc_type_malloc(8 * *(v13 + 10), 0x10040436913F5uLL);
          if (!v3)
          {
            __assert_rtn("GPUTools::FB::FunctionArgumentProvider::FunctionArgumentProvider(const GPUTools::FD::CoreFunction &, BOOL)", "", 0, "ppStrings");
          }

          v28 = GPUTools::FD::Argument::ViewAsCStringArray(&v12[24 * v11]);
          v29 = *(v13 + 10);
          if (*(v13 + 10))
          {
            v30 = 0;
            v31 = *(v28 + 22);
            do
            {
              v32 = *v28;
              if ((v31 & 0x40) != 0)
              {
                v33 = *(v32 + 4 * v30) + v32;
              }

              else
              {
                v33 = *(v32 + 8 * v30);
              }

              *(v3 + 8 * v30++) = v33;
            }

            while (v29 != v30);
          }

          *&v38 = v3;
          BYTE8(v38) = 1;
          std::vector<std::pair<dy_polymorphic_scalar_t,BOOL>>::push_back[abi:ne200100](v5, &v38);
          goto LABEL_59;
        }
      }

      else if ((v16 & 1) == 0)
      {
        v27 = *(v13 + 2);
        if (v27 <= 6)
        {
          if ((v27 - 1) < 2)
          {
            v34 = **v13;
            v35 = v3 & 0xFFFFFFFFFFFFFF00;
          }

          else
          {
            if ((v27 - 3) >= 2)
            {
              if ((v27 - 5) >= 2)
              {
                goto LABEL_66;
              }

              goto LABEL_56;
            }

            v34 = **v13;
            v35 = v3 & 0xFFFFFFFFFFFF0000;
          }
        }

        else
        {
          if (v27 > 9)
          {
            if ((v27 - 11) >= 2 && v27 != 10)
            {
              if (v27 != 13)
              {
                goto LABEL_66;
              }

              v3 = *v13;
              goto LABEL_58;
            }

LABEL_52:
            v3 = **v13;
LABEL_58:
            *&v38 = v3;
            BYTE8(v38) = 0;
            std::vector<std::pair<dy_polymorphic_scalar_t,BOOL>>::push_back[abi:ne200100](v5, &v38);
            goto LABEL_59;
          }

          if ((v27 - 7) < 2)
          {
            goto LABEL_52;
          }

          if (v27 != 9)
          {
LABEL_66:
            dy_abort("invalid core type: %u", *(v13 + 2));
          }

LABEL_56:
          v34 = **v13;
          v35 = v3 & 0xFFFFFFFF00000000;
        }

        v3 = v35 | v34;
        goto LABEL_58;
      }

      v3 = *v13;
      *&v38 = *v13;
      BYTE8(v38) = 0;
      std::vector<std::pair<dy_polymorphic_scalar_t,BOOL>>::push_back[abi:ne200100](v5, &v38);
LABEL_59:
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v9);
  }

  return this;
}

void sub_24D68A29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(a11 + 63) < 0)
  {
    operator delete(*v20);
  }

  v22 = *v19;
  if (*v19)
  {
    *(a11 + 16) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<dy_polymorphic_scalar_t,BOOL>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<dy_polymorphic_scalar_t,BOOL>>>(result, a2);
    }

    std::vector<GPUTools::FB::Fbuf>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::pair<dy_polymorphic_scalar_t,BOOL>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<GPUTools::FB::Fbuf>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<dy_polymorphic_scalar_t,BOOL>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void GPUTools::FB::FunctionArgumentProvider::~FunctionArgumentProvider(GPUTools::FB::FunctionArgumentProvider *this)
{
  *this = &unk_2860A90D0;
  v2 = *(this + 1);
  v3 = *(this + 2);
  while (v2 != v3)
  {
    if (*(v2 + 8))
    {
      free(*v2);
    }

    v2 += 16;
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

{
  GPUTools::FB::FunctionArgumentProvider::~FunctionArgumentProvider(this);

  JUMPOUT(0x253030980);
}

void GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(GPUTools::FB::FIFOArgumentProvider *this)
{
  *this = &unk_2860A9138;
  std::deque<dy_polymorphic_scalar_t>::~deque[abi:ne200100](this + 1);
}

{
  *this = &unk_2860A9138;
  std::deque<dy_polymorphic_scalar_t>::~deque[abi:ne200100](this + 1);
}

{
  *this = &unk_2860A9138;
  std::deque<dy_polymorphic_scalar_t>::~deque[abi:ne200100](this + 1);

  JUMPOUT(0x253030980);
}

void *GPUTools::FB::FIFOArgumentProvider::push(GPUTools::FB::FIFOArgumentProvider *this, unsigned int a2)
{
  v3 = a2;
  return std::deque<dy_polymorphic_scalar_t>::push_back(this + 1, &v3);
}

{
  v3 = a2;
  return std::deque<dy_polymorphic_scalar_t>::push_back(this + 1, &v3);
}

void *GPUTools::FB::FIFOArgumentProvider::push(GPUTools::FB::FIFOArgumentProvider *this, uint64_t a2)
{
  v3 = a2;
  return std::deque<dy_polymorphic_scalar_t>::push_back(this + 1, &v3);
}

{
  v3 = a2;
  return std::deque<dy_polymorphic_scalar_t>::push_back(this + 1, &v3);
}

void GPUTools::FB::FIFOPointerArgumentProvider::~FIFOPointerArgumentProvider(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  *this = &unk_2860A91A0;
  std::deque<dy_polymorphic_scalar_t>::~deque[abi:ne200100](this + 1);
}

{
  *this = &unk_2860A91A0;
  std::deque<dy_polymorphic_scalar_t>::~deque[abi:ne200100](this + 1);
}

{
  *this = &unk_2860A91A0;
  std::deque<dy_polymorphic_scalar_t>::~deque[abi:ne200100](this + 1);

  JUMPOUT(0x253030980);
}

uint64_t GPUTools::FB::FIFOArgumentProvider::GetUInt8(GPUTools::FB::FIFOArgumentProvider *this)
{
  v1 = *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOArgumentProvider::GetUInt16(GPUTools::FB::FIFOArgumentProvider *this)
{
  v1 = *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOArgumentProvider::GetUInt32(GPUTools::FB::FIFOArgumentProvider *this)
{
  v1 = *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOArgumentProvider::GetUInt64(GPUTools::FB::FIFOArgumentProvider *this)
{
  v1 = *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOArgumentProvider::GetUIntPtr(GPUTools::FB::FIFOArgumentProvider *this)
{
  v1 = *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

float GPUTools::FB::FIFOArgumentProvider::GetFloat(GPUTools::FB::FIFOArgumentProvider *this)
{
  v1 = *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

double GPUTools::FB::FIFOArgumentProvider::GetDouble(GPUTools::FB::FIFOArgumentProvider *this)
{
  v1 = *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOArgumentProvider::GetVoidPointer(GPUTools::FB::FIFOArgumentProvider *this)
{
  v1 = *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOArgumentProvider::GetCharPointer(GPUTools::FB::FIFOArgumentProvider *this)
{
  v1 = *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::VAListArgumentProvider::GetUInt8(GPUTools::FB::VAListArgumentProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = v1 + 8;
  return *v1;
}

uint64_t GPUTools::FB::VAListArgumentProvider::GetUInt16(GPUTools::FB::VAListArgumentProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = v1 + 4;
  return *v1;
}

uint64_t GPUTools::FB::VAListArgumentProvider::GetUInt32(GPUTools::FB::VAListArgumentProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = v1 + 2;
  return *v1;
}

uint64_t GPUTools::FB::VAListArgumentProvider::GetUInt64(GPUTools::FB::VAListArgumentProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = v1 + 8;
  return *v1;
}

uint64_t GPUTools::FB::VAListArgumentProvider::GetUIntPtr(GPUTools::FB::VAListArgumentProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = v1 + 8;
  return *v1;
}

float GPUTools::FB::VAListArgumentProvider::GetFloat(GPUTools::FB::VAListArgumentProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = v1 + 8;
  return *v1;
}

double GPUTools::FB::VAListArgumentProvider::GetDouble(GPUTools::FB::VAListArgumentProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = v1 + 8;
  return *v1;
}

uint64_t GPUTools::FB::VAListArgumentProvider::GetVoidPointer(GPUTools::FB::VAListArgumentProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = v1 + 8;
  return *v1;
}

uint64_t GPUTools::FB::VAListArgumentProvider::GetCharPointer(GPUTools::FB::VAListArgumentProvider *this)
{
  v1 = *(this + 1);
  *(this + 1) = v1 + 8;
  return *v1;
}

uint64_t GPUTools::FB::FunctionArgumentProvider::GetUInt8(GPUTools::FB::FunctionArgumentProvider *this)
{
  v1 = *(this + 8);
  *(this + 8) = v1 + 1;
  return *(*(this + 1) + 16 * v1);
}

uint64_t GPUTools::FB::FunctionArgumentProvider::GetUInt16(GPUTools::FB::FunctionArgumentProvider *this)
{
  v1 = *(this + 8);
  *(this + 8) = v1 + 1;
  return *(*(this + 1) + 16 * v1);
}

uint64_t GPUTools::FB::FunctionArgumentProvider::GetUInt32(GPUTools::FB::FunctionArgumentProvider *this)
{
  v1 = *(this + 8);
  *(this + 8) = v1 + 1;
  return *(*(this + 1) + 16 * v1);
}

uint64_t GPUTools::FB::FunctionArgumentProvider::GetUInt64(GPUTools::FB::FunctionArgumentProvider *this)
{
  v1 = *(this + 8);
  *(this + 8) = v1 + 1;
  return *(*(this + 1) + 16 * v1);
}

uint64_t GPUTools::FB::FunctionArgumentProvider::GetUIntPtr(GPUTools::FB::FunctionArgumentProvider *this)
{
  v1 = *(this + 8);
  *(this + 8) = v1 + 1;
  return *(*(this + 1) + 16 * v1);
}

float GPUTools::FB::FunctionArgumentProvider::GetFloat(GPUTools::FB::FunctionArgumentProvider *this)
{
  v1 = *(this + 8);
  *(this + 8) = v1 + 1;
  return *(*(this + 1) + 16 * v1);
}

double GPUTools::FB::FunctionArgumentProvider::GetDouble(GPUTools::FB::FunctionArgumentProvider *this)
{
  v1 = *(this + 8);
  *(this + 8) = v1 + 1;
  return *(*(this + 1) + 16 * v1);
}

uint64_t GPUTools::FB::FunctionArgumentProvider::GetVoidPointer(GPUTools::FB::FunctionArgumentProvider *this)
{
  v1 = *(this + 8);
  *(this + 8) = v1 + 1;
  return *(*(this + 1) + 16 * v1);
}

uint64_t GPUTools::FB::FunctionArgumentProvider::GetCharPointer(GPUTools::FB::FunctionArgumentProvider *this)
{
  v1 = *(this + 8);
  *(this + 8) = v1 + 1;
  return *(*(this + 1) + 16 * v1);
}

uint64_t GPUTools::FB::FIFOPointerArgumentProvider::GetUInt8(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  v1 = **(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOPointerArgumentProvider::GetUInt16(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  v1 = **(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOPointerArgumentProvider::GetUInt32(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  v1 = **(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOPointerArgumentProvider::GetUInt64(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  v1 = **(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOPointerArgumentProvider::GetUIntPtr(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  v1 = **(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

float GPUTools::FB::FIFOPointerArgumentProvider::GetFloat(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  v1 = **(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

double GPUTools::FB::FIFOPointerArgumentProvider::GetDouble(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  v1 = **(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOPointerArgumentProvider::GetVoidPointer(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  v1 = **(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t GPUTools::FB::FIFOPointerArgumentProvider::GetCharPointer(GPUTools::FB::FIFOPointerArgumentProvider *this)
{
  v1 = **(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL));
  *(this + 40) = vaddq_s64(*(this + 40), xmmword_24D6A9290);
  std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  return v1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::deque<dy_polymorphic_scalar_t>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<dy_polymorphic_scalar_t *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<dy_polymorphic_scalar_t *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<dy_polymorphic_scalar_t>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2530308F0](a1 + 8);
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

void sub_24D68B48C(_Unwind_Exception *a1)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2530307E0](v13, a1);
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

  MEMORY[0x2530307F0](v13);
  return a1;
}

void sub_24D68B6FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2530307F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24D68B6DCLL);
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

void sub_24D68B930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<dy_polymorphic_scalar_t,BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::deque<dy_polymorphic_scalar_t>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<dy_polymorphic_scalar_t>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<dy_polymorphic_scalar_t>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<dy_polymorphic_scalar_t *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<dy_polymorphic_scalar_t *>::emplace_back<dy_polymorphic_scalar_t *&>(a1, &v10);
}

void sub_24D68BBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<dy_polymorphic_scalar_t *>::emplace_back<dy_polymorphic_scalar_t *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<dy_polymorphic_scalar_t *>>(result, v11);
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

const void **std::__split_buffer<dy_polymorphic_scalar_t *>::emplace_front<dy_polymorphic_scalar_t *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<dy_polymorphic_scalar_t *>>(result, v9);
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

void *std::__split_buffer<dy_polymorphic_scalar_t *>::emplace_back<dy_polymorphic_scalar_t *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<dy_polymorphic_scalar_t *>>(result[4], v11);
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

const void **std::__split_buffer<dy_polymorphic_scalar_t *>::emplace_front<dy_polymorphic_scalar_t *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<dy_polymorphic_scalar_t *>>(result[4], v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<dy_polymorphic_scalar_t *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::deque<dy_polymorphic_vector_t>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<dy_polymorphic_vector_t>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<dy_polymorphic_vector_t>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<dy_polymorphic_scalar_t *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<dy_polymorphic_scalar_t *>::emplace_back<dy_polymorphic_scalar_t *&>(a1, &v10);
}

void sub_24D68C278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float *DYVec3Set(float *result, float a2, float a3, float a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

float32_t DYVec3Scale(float32x2_t *a1, float32x2_t *a2, float a3)
{
  *a2 = vmul_n_f32(*a1, a3);
  result = a1[1].f32[0] * a3;
  a2[1].f32[0] = result;
  return result;
}

float32_t DYVec3Add(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  *a3 = vadd_f32(*a1, *a2);
  result = a1[1].f32[0] + a2[1].f32[0];
  a3[1].f32[0] = result;
  return result;
}

float32_t DYVec3Subtract(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  *a3 = vsub_f32(*a1, *a2);
  result = a1[1].f32[0] - a2[1].f32[0];
  a3[1].f32[0] = result;
  return result;
}

float32_t DYVec3Normalize(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[1].f32[0];
  v3 = *a1;
  v4 = vmul_f32(v3, v3);
  *v4.i32 = sqrtf((*&v4.i32[1] + (v3.f32[0] * v3.f32[0])) + (v2 * v2));
  *a2 = vdiv_f32(*a1, vdup_lane_s32(v4, 0));
  result = v2 / *v4.i32;
  a2[1].f32[0] = result;
  return result;
}

float DYVec3Distance(float *a1, float *a2)
{
  v2 = a1[1] - a2[1];
  v3 = a1[2] - a2[2];
  return sqrtf(((v2 * v2) + ((*a1 - *a2) * (*a1 - *a2))) + (v3 * v3));
}

float DYVec3DistanceSquared(float *a1, float *a2)
{
  v2 = a1[1] - a2[1];
  v3 = a1[2] - a2[2];
  return ((v2 * v2) + ((*a1 - *a2) * (*a1 - *a2))) + (v3 * v3);
}

float DYVec3CrossProduct(float *a1, float *a2, float *a3)
{
  v4 = a2[1];
  v3 = a2[2];
  v6 = a1[1];
  v5 = a1[2];
  v7 = (v6 * v3) - (v4 * v5);
  result = (*a2 * v5) - (*a1 * v3);
  v9 = (*a1 * v4) - (*a2 * v6);
  *a3 = v7;
  a3[1] = result;
  a3[2] = v9;
  return result;
}

float32_t DYVec3Lerp(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float a4)
{
  *a3 = vmla_n_f32(*a1, vsub_f32(*a2, *a1), a4);
  result = a1[1].f32[0] + ((a2[1].f32[0] - a1[1].f32[0]) * a4);
  a3[1].f32[0] = result;
  return result;
}

float DYVec3Reflect(float *a1, float *a2, float *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = sqrtf(((v3 * v3) + (*a2 * *a2)) + (v4 * v4));
  v6 = *a2 / v5;
  v7 = v3 / v5;
  v8 = v4 / v5;
  v9 = a1[1];
  v10 = a1[2];
  v11 = ((v9 * v7) + (v6 * *a1)) + (v8 * v10);
  v12 = v11 + v11;
  *a3 = *a1 - (v6 * v12);
  a3[1] = v9 - (v7 * v12);
  result = v10 - (v8 * v12);
  a3[2] = result;
  return result;
}

float DYVec3Project(float *a1, float *a2, float *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = sqrtf(((v3 * v3) + (*a2 * *a2)) + (v4 * v4));
  v6 = *a2 / v5;
  v7 = v3 / v5;
  v8 = v4 / v5;
  v9 = ((a1[1] * v7) + (v6 * *a1)) + (v8 * a1[2]);
  *a3 = v6 * v9;
  a3[1] = v7 * v9;
  result = v8 * v9;
  a3[2] = v8 * v9;
  return result;
}

void *PrettifyFenumString(void *result, int a2, int a3)
{
  if (result)
  {
    v5 = result;
    if ([result hasPrefix:@"kDYFE"])
    {
      v5 = [v5 substringFromIndex:5];
    }

    v6 = [v5 rangeOfString:@"_"];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:@" " options:0 range:{v6, v7}];
    }

    v8 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:@":"];
    v9 = @"+";
    if (!a2)
    {
      v9 = @"-";
    }

    if (a3)
    {
      v10 = @":";
    }

    else
    {
      v10 = &stru_2860A9480;
    }

    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%@%@]", v9, v8, v10];
  }

  return result;
}

double DYMtxIdentity(_OWORD *a1)
{
  *a1 = xmmword_24D6A92A0;
  a1[1] = xmmword_24D6A92B0;
  result = 0.0;
  a1[2] = xmmword_24D6A92C0;
  a1[3] = xmmword_24D6A92D0;
  return result;
}

double DYMtxScale(uint64_t a1, float a2, float a3, float a4)
{
  *a1 = a2;
  *(a1 + 20) = a3;
  *(a1 + 40) = a4;
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 1065353216;
  return result;
}

double DYMtxTranslate(uint64_t a1, float a2, float a3, float a4)
{
  *(a1 + 48) = a2;
  *(a1 + 52) = a3;
  *(a1 + 56) = a4;
  *a1 = xmmword_24D6A92A0;
  *(a1 + 16) = xmmword_24D6A92B0;
  result = 0.0;
  *(a1 + 32) = xmmword_24D6A92C0;
  *(a1 + 60) = 1065353216;
  return result;
}

double DYMtxRotateZ(uint64_t a1, float a2)
{
  v3 = __sincosf_stret((a2 * 3.1416) / 180.0);
  *a1 = v3.__cosval;
  *(a1 + 4) = v3.__sinval;
  *(a1 + 16) = -v3.__sinval;
  *(a1 + 20) = v3.__cosval;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_24D6A92A0;
  result = 0.0078125;
  *(a1 + 56) = 0x3F80000000000000;
  return result;
}

float DYMtxRotateAxis(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v9 = __sincosf_stret((a2 * 3.1416) / 180.0);
  v20 = 0.0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  DYVec3Set(&v17, a3, a4, a5);
  DYVec3Normalize(&v17, &v19);
  v10 = v19;
  v11 = v20;
  v12 = ((v19.f32[0] * v19.f32[1]) * (1.0 - v9.__cosval)) - (v20 * v9.__sinval);
  v13 = v19.f32[0] * v20;
  v14 = (v9.__sinval * v20) + ((v19.f32[0] * v19.f32[1]) * (1.0 - v9.__cosval));
  v15 = (v9.__sinval * v19.f32[1]) + ((v19.f32[0] * v20) * (1.0 - v9.__cosval));
  *a1 = v9.__cosval + ((v19.f32[0] * v19.f32[0]) * (1.0 - v9.__cosval));
  *(a1 + 4) = v14;
  *(a1 + 16) = v12;
  *(a1 + 20) = v9.__cosval + ((v10.f32[1] * v10.f32[1]) * (1.0 - v9.__cosval));
  *(a1 + 32) = v15;
  *(a1 + 36) = ((v10.f32[1] * v11) * (1.0 - v9.__cosval)) - (v10.f32[0] * v9.__sinval);
  *(a1 + 8) = (v13 * (1.0 - v9.__cosval)) - (v10.f32[1] * v9.__sinval);
  *(a1 + 24) = (v9.__sinval * v10.f32[0]) + ((v10.f32[1] * v11) * (1.0 - v9.__cosval));
  result = v9.__cosval + ((v11 * v11) * (1.0 - v9.__cosval));
  *(a1 + 40) = result;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 48) = 0;
  *(a1 + 44) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1065353216;
  return result;
}

float DYMtxTranspose(uint64_t a1, _DWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = *(a1 + 24);
  v9 = *(a1 + 28);
  v10 = *(a1 + 32);
  v11 = *(a1 + 36);
  v12 = *(a1 + 40);
  v13 = *(a1 + 44);
  v14 = *(a1 + 48);
  v15 = *(a1 + 52);
  v16 = *(a1 + 56);
  v17 = *(a1 + 60);
  *a2 = *a1;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v14;
  a2[4] = v3;
  a2[5] = v7;
  a2[6] = v11;
  a2[7] = v15;
  a2[8] = v4;
  a2[9] = v8;
  a2[10] = v12;
  a2[11] = v16;
  a2[12] = v5;
  a2[13] = v9;
  a2[14] = v13;
  a2[15] = v17;
  return result;
}

float DYMtxSubtract(float *a1, float *a2, float *a3)
{
  *a3 = *a1 - *a2;
  a3[4] = a1[4] - a2[4];
  a3[8] = a1[8] - a2[8];
  a3[12] = a1[12] - a2[12];
  a3[1] = a1[1] - a2[1];
  a3[5] = a1[5] - a2[5];
  a3[9] = a1[9] - a2[9];
  a3[13] = a1[13] - a2[13];
  a3[2] = a1[2] - a2[2];
  a3[6] = a1[6] - a2[6];
  a3[10] = a1[10] - a2[10];
  a3[14] = a1[14] - a2[14];
  a3[3] = a1[3] - a2[3];
  a3[7] = a1[7] - a2[7];
  a3[11] = a1[11] - a2[11];
  result = a1[15] - a2[15];
  a3[15] = result;
  return result;
}

float DYMtxConcat(float *a1, float *a2, float *a3)
{
  v3 = a2[1];
  v4 = a1[1];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a1[8];
  v9 = a1[9];
  v12 = a1[12];
  v11 = a1[13];
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v16 = a2[7];
  v49 = ((((*a1 * v13) + 0.0) + (v6 * v14)) + (v10 * v15)) + (v12 * v16);
  v50 = ((((*a1 * *a2) + 0.0) + (v6 * v3)) + (v10 * v7)) + (v12 * v8);
  v17 = a2[8];
  v18 = a2[9];
  v19 = a2[10];
  v20 = a2[11];
  v21 = ((((*a1 * v17) + 0.0) + (v6 * v18)) + (v10 * v19)) + (v12 * v20);
  v22 = a2[12];
  v23 = a2[13];
  v25 = a2[14];
  v24 = a2[15];
  v26 = ((((*a1 * v22) + 0.0) + (v6 * v23)) + (v10 * v25)) + (v12 * v24);
  v27 = ((((v4 * *a2) + 0.0) + (v5 * v3)) + (v9 * v7)) + (v11 * v8);
  v28 = ((((v4 * v13) + 0.0) + (v5 * v14)) + (v9 * v15)) + (v11 * v16);
  v29 = ((((v4 * v17) + 0.0) + (v5 * v18)) + (v9 * v19)) + (v11 * v20);
  v30 = ((((v4 * v22) + 0.0) + (v5 * v23)) + (v9 * v25)) + (v11 * v24);
  v31 = a1[2];
  v32 = a1[3];
  v33 = a1[6];
  v34 = a1[7];
  v35 = ((v31 * *a2) + 0.0) + (v33 * v3);
  v36 = ((v31 * v13) + 0.0) + (v33 * v14);
  v37 = ((v31 * v17) + 0.0) + (v33 * v18);
  v38 = ((v31 * v22) + 0.0) + (v33 * v23);
  v40 = a1[10];
  v39 = a1[11];
  v41 = v35 + (v40 * v7);
  v42 = v36 + (v40 * v15);
  v43 = v37 + (v40 * v19);
  v44 = v38 + (v40 * v25);
  v46 = a1[14];
  v45 = a1[15];
  v47 = ((((v32 * *a2) + 0.0) + (v34 * a2[1])) + (v39 * v7)) + (v45 * v8);
  *a3 = v50;
  a3[1] = v27;
  a3[2] = v41 + (v46 * v8);
  a3[3] = v47;
  a3[4] = v49;
  a3[5] = v28;
  a3[6] = v42 + (v46 * v16);
  a3[7] = ((((v32 * v13) + 0.0) + (v34 * v14)) + (v39 * v15)) + (v45 * v16);
  a3[8] = v21;
  a3[9] = v29;
  a3[10] = v43 + (v46 * v20);
  a3[11] = ((((v32 * v17) + 0.0) + (v34 * v18)) + (v39 * v19)) + (v45 * v20);
  a3[12] = v26;
  a3[13] = v30;
  result = ((((v32 * v22) + 0.0) + (v34 * v23)) + (v39 * v25)) + (v45 * v24);
  a3[14] = v44 + (v46 * v24);
  a3[15] = result;
  return result;
}

float32x2_t DYMtxMultVec3(float32x2_t *a1, float *a2, float32x2_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a1[7].f32[0] + (((v3 * a1[3].f32[0]) + (a1[1].f32[0] * *a2)) + (a1[5].f32[0] * v4));
  result = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(a1[2], v3), *a1, *a2), a1[4], v4), a1[6]);
  *a3 = result;
  a3[1].f32[0] = v5;
  return result;
}

float32x2_t DYMtxMult3x3Vec3(float32x2_t *a1, float *a2, float32x2_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = ((v3 * a1[3].f32[0]) + (a1[1].f32[0] * *a2)) + (a1[5].f32[0] * v4);
  result = a1[4];
  *a3 = vmla_n_f32(vmla_n_f32(vmul_n_f32(a1[2], v3), *a1, *a2), result, v4);
  a3[1].f32[0] = v5;
  return result;
}

float32x4_t DYMtxMultVec4(float32x4_t *a1, float *a2, float32x4_t *a3)
{
  result = a1[2];
  *a3 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a1[1], a2[1]), *a1, *a2), result, a2[2]), a1[3], a2[3]);
  return result;
}

float DYMtxFrobeniusNorm(float *a1)
{
  v1 = a1[3];
  v2 = a1[7];
  v3 = a1[11];
  v4 = a1[14];
  v5 = a1[15];
  return sqrtf(((((((((((((((((*a1 * *a1) + 0.0) + (a1[4] * a1[4])) + (a1[8] * a1[8])) + (a1[12] * a1[12])) + (a1[1] * a1[1])) + (a1[5] * a1[5])) + (a1[9] * a1[9])) + (a1[13] * a1[13])) + (a1[2] * a1[2])) + (a1[6] * a1[6])) + (a1[10] * a1[10])) + (v4 * v4)) + (v1 * v1)) + (v2 * v2)) + (v3 * v3)) + (v5 * v5));
}

double DYMtxFrustum(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  *a1 = (a6 + a6) / (a3 - a2);
  *(a1 + 20) = (a6 + a6) / (a5 - a4);
  *(a1 + 32) = (a2 + a3) / (a3 - a2);
  *(a1 + 36) = (a4 + a5) / (a5 - a4);
  *(a1 + 52) = 0;
  *(a1 + 40) = -(a6 + a7) / (a7 - a6);
  *(a1 + 56) = ((a7 * -2.0) * a6) / (a7 - a6);
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 4) = 0;
  *(a1 + 24) = 0;
  *&result = 3212836864;
  *(a1 + 44) = 3212836864;
  *(a1 + 60) = 0;
  return result;
}

double DYMtxOrtho(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  *a1 = 2.0 / (a3 - a2);
  *(a1 + 20) = 2.0 / (a5 - a4);
  *(a1 + 48) = -(a2 + a3) / (a3 - a2);
  *(a1 + 52) = -(a4 + a5) / (a5 - a4);
  *(a1 + 40) = -2.0 / (a7 - a6);
  *(a1 + 56) = -(a6 + a7) / (a7 - a6);
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  return result;
}

float DYMtxGetColumnMajor(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 28) = *(a1 + 28);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 52) = *(a1 + 52);
  *(a2 + 56) = *(a1 + 56);
  result = *(a1 + 60);
  *(a2 + 60) = result;
  return result;
}

float DYMtxSetColumnMajor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 60);
  *(a1 + 60) = result;
  return result;
}

float *DYMtxInverse(float *result, int a2, float *a3)
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = result[10];
  v4 = result[14];
  v5 = result[5];
  v6 = result[6];
  v7 = result[9];
  v8 = result[13];
  v9 = result[1];
  v10 = result[2];
  v11 = result[15];
  v12 = result[11];
  v13 = (v3 * v11) - (v12 * v4);
  v14 = result[7];
  v15 = (v6 * v11) - (v14 * v4);
  v16 = (v6 * v12) - (v14 * v3);
  v17 = (((v5 * v13) + 0.0) - (v7 * v15)) + (v8 * v16);
  v18 = result[3];
  v19 = (v10 * v11) - (v18 * v4);
  v20 = (v10 * v12) - (v18 * v3);
  v21 = (((v9 * v13) + 0.0) - (v7 * v19)) + (v8 * v20);
  v22 = -v21;
  v23 = (v10 * v14) - (v18 * v6);
  v24 = (((v9 * v15) + 0.0) - (v5 * v19)) + (v8 * v23);
  v25 = (((v9 * v16) + 0.0) - (v5 * v20)) + (v7 * v23);
  v26 = -v25;
  v27 = ((((v17 * *result) + 0.0) - (v21 * result[4])) + (v24 * result[8])) - (v25 * result[12]);
  v28 = result[10];
  v29 = result[14];
  v30 = result[6];
  v31 = result[2];
  v32 = result[11];
  v33 = (v28 * v11) - (v32 * v29);
  v34 = result[4];
  v35 = result[7];
  v36 = (v30 * v11) - (v35 * v29);
  v37 = result[8];
  v38 = (v30 * v32) - (v35 * v28);
  v39 = result[12];
  v40 = -((((v34 * v33) + 0.0) - (v37 * v36)) + (v39 * v38));
  v41 = result[3];
  v42 = (v31 * v11) - (v41 * v29);
  v43 = (v31 * v32) - (v41 * v28);
  v44 = (((*result * v33) + 0.0) - (v37 * v42)) + (v39 * v43);
  v45 = (v31 * v35) - (v41 * v30);
  v103 = v24;
  v104 = -((((*result * v36) + 0.0) - (v34 * v42)) + (v39 * v45));
  v46 = ((*result * v38) + 0.0) - (v34 * v43);
  v47 = result[9];
  v48 = result[13];
  v49 = v34;
  v50 = result[5];
  v51 = v39;
  v52 = result[1];
  v53 = v46 + (v37 * v45);
  v54 = result[15];
  v106 = v26;
  v107 = v53;
  v55 = result[11];
  v56 = (v47 * v54) - (v55 * v48);
  v57 = (v50 * v54) - (v35 * v48);
  v58 = (v50 * v55) - (v35 * v47);
  v97 = v40;
  v98 = (((v49 * v56) + 0.0) - (v37 * v57)) + (v51 * v58);
  v59 = result[3];
  v60 = (v52 * v54) - (v59 * v48);
  v61 = (v52 * v55) - (v59 * v47);
  v100 = v44;
  v101 = -((((*result * v56) + 0.0) - (v37 * v60)) + (v51 * v61));
  v62 = ((*result * v57) + 0.0) - (v49 * v60);
  v63 = (v52 * v35) - (v59 * v50);
  v64 = v62 + (v51 * v63);
  v65 = -((((*result * v58) + 0.0) - (v49 * v61)) + (v37 * v63));
  v66 = v47;
  v67 = result[14];
  v68 = result[10];
  v69 = result[13];
  v70 = (v66 * v67) - (v68 * v69);
  v71 = result[4];
  v72 = result[5];
  v73 = result[6];
  v74 = (v72 * v67) - (v73 * v69);
  v75 = v37;
  v76 = (v72 * v68) - (v73 * v66);
  v77 = result[12];
  v78 = result[1];
  v99 = v22;
  v79 = result[2];
  v80 = (v78 * v67) - (v79 * v69);
  v81 = (v78 * v68) - (v79 * v66);
  v102 = (((*result * v70) + 0.0) - (v75 * v80)) + (v77 * v81);
  v82 = (v78 * v73) - (v79 * v72);
  v105 = -((((*result * v74) + 0.0) - (v71 * v80)) + (v77 * v82));
  v108 = (((*result * v76) + 0.0) - (v71 * v81)) + (v75 * v82);
  if (v27 != 0.0)
  {
    v83 = 1.0 / v27;
    v84 = 4;
    if (a2)
    {
      v85 = 4;
    }

    else
    {
      v85 = 1;
    }

    a3[v85] = (1.0 / v27) * v99;
    v86 = 8;
    if (a2)
    {
      v87 = 8;
    }

    else
    {
      v87 = 2;
    }

    a3[v87] = v83 * v103;
    if (a2)
    {
      v88 = 12;
    }

    else
    {
      v88 = 3;
    }

    a3[v88] = v83 * v106;
    if (a2)
    {
      v84 = 1;
    }

    a3[v84] = v83 * v97;
    v89 = 9;
    if (a2)
    {
      v90 = 9;
    }

    else
    {
      v90 = 6;
    }

    if (a2)
    {
      v91 = 13;
    }

    else
    {
      v91 = 7;
    }

    a3[5] = v83 * v100;
    a3[v90] = v83 * v104;
    a3[v91] = v83 * v107;
    if (a2)
    {
      v86 = 2;
    }

    a3[v86] = v83 * v98;
    if (a2)
    {
      v89 = 6;
    }

    a3[v89] = v83 * v101;
    v92 = 14;
    if (a2)
    {
      v93 = 14;
    }

    else
    {
      v93 = 11;
    }

    a3[v93] = v83 * v65;
    a3[10] = v83 * v64;
    if (a2)
    {
      v94 = 3;
    }

    else
    {
      v94 = 12;
    }

    a3[v94] = v83 * -((((v71 * v70) + 0.0) - (v75 * v74)) + (v77 * v76));
    *a3 = v83 * v17;
    if (a2)
    {
      v95 = 7;
    }

    else
    {
      v95 = 13;
    }

    a3[v95] = v83 * v102;
    if (a2)
    {
      v92 = 11;
    }

    a3[v92] = v83 * v105;
    a3[15] = v83 * v108;
  }

  v96 = *MEMORY[0x277D85DE8];
  return result;
}

float DYMtxNormalizedFrobeniusNormDelta(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v34 = a2[1];
  v35 = *a2;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a2[4];
  v33 = a2[5];
  v8 = a1[8];
  v7 = a1[9];
  v10 = a2[8];
  v9 = a2[9];
  v12 = a1[12];
  v11 = a1[13];
  v14 = a2[12];
  v13 = a2[13];
  v16 = a1[2];
  v15 = a1[3];
  v18 = a2[2];
  v17 = a2[3];
  v19 = a1[6];
  v20 = a1[7];
  v21 = a2[6];
  v22 = a2[7];
  v24 = a1[10];
  v23 = a1[11];
  v25 = a2[10];
  v26 = a2[11];
  v28 = a1[14];
  v27 = a1[15];
  v29 = a2[14];
  v30 = a2[15];
  v31 = (((((((((((((((((v2 - v35) * (v2 - v35)) + 0.0) + ((v5 - v6) * (v5 - v6))) + ((v8 - v10) * (v8 - v10))) + ((v12 - v14) * (v12 - v14))) + ((v3 - v34) * (v3 - v34))) + ((v4 - v33) * (v4 - v33))) + ((v7 - v9) * (v7 - v9))) + ((v11 - v13) * (v11 - v13))) + ((v16 - v18) * (v16 - v18))) + ((v19 - v21) * (v19 - v21))) + ((v24 - v25) * (v24 - v25))) + ((v28 - v29) * (v28 - v29))) + ((v15 - v17) * (v15 - v17))) + ((v20 - v22) * (v20 - v22))) + ((v23 - v26) * (v23 - v26))) + ((v27 - v30) * (v27 - v30));
  return sqrtf(v31) / ((sqrtf(((((((((((((((((v2 * v2) + 0.0) + (v5 * v5)) + (v8 * v8)) + (v12 * v12)) + (v3 * v3)) + (v4 * v4)) + (v7 * v7)) + (v11 * v11)) + (v16 * v16)) + (v19 * v19)) + (v24 * v24)) + (v28 * v28)) + (v15 * v15)) + (v20 * v20)) + (v23 * v23)) + (v27 * v27)) + sqrtf(((((((((((((((((v35 * v35) + 0.0) + (v6 * v6)) + (v10 * v10)) + (v14 * v14)) + (v34 * v34)) + (v33 * v33)) + (v9 * v9)) + (v13 * v13)) + (v18 * v18)) + (v21 * v21)) + (v25 * v25)) + (v29 * v29)) + (v17 * v17)) + (v22 * v22)) + (v26 * v26)) + (v30 * v30))) * 0.5);
}

BOOL DYMtxDecomposition(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float *a5)
{
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v10 = *(a1 + 12);
  v11 = *(a1 + 28);
  v12 = *(a1 + 44);
  v13 = *(a1 + 60);
  v14 = *(a1 + 16);
  v170 = *a1;
  v171 = v14;
  *v172 = *(a1 + 32);
  *&v172[12] = *(a1 + 44);
  v170.i32[3] = 0;
  v171.i32[3] = 0;
  *&v172[12] = 0;
  *&v172[28] = 1065353216;
  DYMtxInverse(v170.f32, 1, &v173);
  result = 0;
  if (fabsf(v16) >= 0.0001)
  {
    v17 = (((*&v174 * v11) + (*&v173 * v10)) + (*&v175 * v12)) + (*&v176 * v13);
    v18 = (((v11 * *(&v174 + 1)) + (*(&v173 + 1) * v10)) + (*(&v175 + 1) * v12)) + (*(&v176 + 1) * v13);
    v19 = (((v11 * *(&v174 + 2)) + (*(&v173 + 2) * v10)) + (*(&v175 + 2) * v12)) + (*(&v176 + 2) * v13);
    v20 = (((v11 * *(&v174 + 3)) + (*(&v173 + 3) * v10)) + (*(&v175 + 3) * v12)) + (*(&v176 + 3) * v13);
    *a2 = 1065353216;
    *(a2 + 16) = 0x3F80000000000000;
    *(a2 + 32) = 0;
    *(a2 + 48) = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 40) = 1065353216;
    *(a2 + 56) = 0;
    *(a2 + 12) = v17;
    *(a2 + 28) = v18;
    *(a2 + 44) = v19;
    *(a2 + 60) = v20;
    v21 = *&v172[24];
    *a3 = xmmword_24D6A92A0;
    *(a3 + 16) = xmmword_24D6A92B0;
    *(a3 + 32) = xmmword_24D6A92C0;
    *(a3 + 48) = *&v172[16];
    *(a3 + 56) = v21;
    *(a3 + 60) = 1065353216;
    *&v172[16] = xmmword_24D6A92D0;
    a4[2] = *v172;
    a4[3] = xmmword_24D6A92D0;
    v22 = v171;
    *a4 = v170;
    a4[1] = v22;
    v23 = 19;
    do
    {
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      DYMtxInverse(a4->f32, 1, v166.f32);
      v24 = a4[1];
      _Q25.i64[0] = 0x3F0000003F000000;
      _Q25.i64[1] = 0x3F0000003F000000;
      v26 = vmulq_f32(vaddq_f32(*a4, v166), _Q25);
      _Q2 = vsubq_f32(v26, *a4);
      _S5 = _Q2.i32[1];
      _KR00_8 = _Q2.i64[1];
      v30 = vmulq_f32(vaddq_f32(v24, v167), _Q25);
      _Q3 = vsubq_f32(v30, v24);
      _S4 = _Q3.i32[1];
      _KR08_8 = _Q3.i64[1];
      v34 = a4[2];
      v35 = a4[3];
      v36 = vmulq_f32(vaddq_f32(v34, v168), _Q25);
      _Q19 = vsubq_f32(v36, v34);
      _S23 = _Q19.i32[1];
      _S24 = _Q19.i32[2];
      v40 = vmulq_f32(vaddq_f32(v35, v169), _Q25);
      _Q20 = vsubq_f32(v40, v35);
      _Q25.i32[0] = _Q19.i32[3];
      __asm { FMLA            S16, S5, V2.S[1] }

      _S5 = _Q20.i32[1];
      __asm
      {
        FMLA            S16, S4, V3.S[1]
        FMLA            S16, S23, V19.S[1]
        FMLA            S16, S5, V20.S[1]
      }

      _S4 = _Q20.i32[2];
      __asm
      {
        FMLA            S16, S6, V2.S[2]
        FMLA            S16, S17, V3.S[2]
        FMLA            S16, S24, V19.S[2]
        FMLA            S16, S4, V20.S[2]
        FMLA            S16, S7, V2.S[3]
      }

      _Q2.i32[0] = _Q20.i32[3];
      __asm
      {
        FMLA            S16, S18, V3.S[3]
        FMLA            S16, S25, V19.S[3]
        FMLA            S16, S2, V20.S[3]
      }

      *a4 = v26;
      a4[1] = v30;
      a4[2] = v36;
      a4[3] = v40;
    }

    while (sqrtf(_S16) >= 0.000001 && v23-- != 0);
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    DYMtxInverse(a4->f32, 0, v166.f32);
    v60 = ((((v166.f32[0] * v171.f32[0]) + 0.0) + (v167.f32[0] * v171.f32[1])) + (v168.f32[0] * v171.f32[2])) + (v169.f32[0] * v171.f32[3]);
    v61 = *&v172[24];
    v62 = ((((v166.f32[0] * *v172) + 0.0) + (v167.f32[0] * *&v172[4])) + (v168.f32[0] * *&v172[8])) + (v169.f32[0] * *&v172[12]);
    v63 = *&v172[28];
    v64 = ((((v166.f32[0] * 0.0) + 0.0) + (v167.f32[0] * *&v172[20])) + (v168.f32[0] * *&v172[24])) + (v169.f32[0] * *&v172[28]);
    v65 = ((((v166.f32[1] * v170.f32[0]) + 0.0) + (v167.f32[1] * v170.f32[1])) + (v168.f32[1] * v170.f32[2])) + (v169.f32[1] * 0.0);
    v66 = ((((v166.f32[1] * v171.f32[0]) + 0.0) + (v167.f32[1] * v171.f32[1])) + (v168.f32[1] * v171.f32[2])) + (v169.f32[1] * v171.f32[3]);
    v67 = ((((v166.f32[1] * *v172) + 0.0) + (v167.f32[1] * *&v172[4])) + (v168.f32[1] * *&v172[8])) + (v169.f32[1] * *&v172[12]);
    v68 = ((((v166.f32[1] * 0.0) + 0.0) + (v167.f32[1] * *&v172[20])) + (v168.f32[1] * *&v172[24])) + (v169.f32[1] * *&v172[28]);
    v69 = v168.f32[3];
    v70 = v169.f32[3];
    v71 = ((((v166.f32[2] * v170.f32[0]) + 0.0) + (v167.f32[2] * v170.f32[1])) + (v168.f32[2] * v170.f32[2])) + (v169.f32[2] * 0.0);
    v72 = ((((v166.f32[2] * v171.f32[0]) + 0.0) + (v167.f32[2] * v171.f32[1])) + (v168.f32[2] * v171.f32[2])) + (v169.f32[2] * v171.f32[3]);
    v73 = ((((v166.f32[2] * *v172) + 0.0) + (v167.f32[2] * *&v172[4])) + (v168.f32[2] * *&v172[8])) + (v169.f32[2] * *&v172[12]);
    v74 = ((((v166.f32[2] * 0.0) + 0.0) + (v167.f32[2] * *&v172[20])) + (v168.f32[2] * *&v172[24])) + (v169.f32[2] * *&v172[28]);
    v75 = ((((v166.f32[3] * v170.f32[0]) + 0.0) + (v167.f32[3] * v170.f32[1])) + (v168.f32[3] * v170.f32[2])) + (v169.f32[3] * 0.0);
    v76 = ((((v166.f32[3] * v171.f32[0]) + 0.0) + (v167.f32[3] * v171.f32[1])) + (v168.f32[3] * v171.f32[2])) + (v169.f32[3] * v171.f32[3]);
    v77 = ((((v166.f32[3] * *v172) + 0.0) + (v167.f32[3] * *&v172[4])) + (v168.f32[3] * *&v172[8])) + (v169.f32[3] * *&v172[12]);
    v78 = ((v166.f32[3] * 0.0) + 0.0) + (v167.f32[3] * *&v172[20]);
    *a5 = ((((v166.f32[0] * v170.f32[0]) + 0.0) + (v167.f32[0] * v170.f32[1])) + (v168.f32[0] * v170.f32[2])) + (v169.f32[0] * 0.0);
    a5[1] = v65;
    a5[2] = v71;
    a5[3] = v75;
    a5[4] = v60;
    a5[5] = v66;
    a5[6] = v72;
    a5[7] = v76;
    a5[8] = v62;
    a5[9] = v67;
    a5[10] = v73;
    a5[11] = v77;
    a5[12] = v64;
    a5[13] = v68;
    a5[14] = v74;
    a5[15] = (v78 + (v69 * v61)) + (v70 * v63);
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    DYMtxConcat(a4->f32, a5, &v162);
    v79 = *(a3 + 4);
    v80 = *(a3 + 16);
    v81 = *(a3 + 20);
    v82 = *(a3 + 32);
    v83 = *(a3 + 36);
    v84 = *(a3 + 48);
    v85 = *(a3 + 52);
    v159 = ((((*a3 * *&v162) + 0.0) + (v80 * *(&v162 + 1))) + (v82 * *(&v162 + 2))) + (v84 * *(&v162 + 3));
    v161 = ((((*a3 * *&v163) + 0.0) + (v80 * *(&v163 + 1))) + (v82 * *(&v163 + 2))) + (v84 * *(&v163 + 3));
    v160 = ((((*a3 * *&v164) + 0.0) + (v80 * *(&v164 + 1))) + (v82 * *(&v164 + 2))) + (v84 * *(&v164 + 3));
    v86 = ((((*a3 * *&v165) + 0.0) + (v80 * *(&v165 + 1))) + (v82 * *(&v165 + 2))) + (v84 * *(&v165 + 3));
    v87 = ((((v79 * *&v162) + 0.0) + (v81 * *(&v162 + 1))) + (v83 * *(&v162 + 2))) + (v85 * *(&v162 + 3));
    v88 = ((((v79 * *&v163) + 0.0) + (v81 * *(&v163 + 1))) + (v83 * *(&v163 + 2))) + (v85 * *(&v163 + 3));
    v89 = ((((v79 * *&v164) + 0.0) + (v81 * *(&v164 + 1))) + (v83 * *(&v164 + 2))) + (v85 * *(&v164 + 3));
    v90 = ((((v79 * *&v165) + 0.0) + (v81 * *(&v165 + 1))) + (v83 * *(&v165 + 2))) + (v85 * *(&v165 + 3));
    v92 = *(a3 + 8);
    v91 = *(a3 + 12);
    v94 = *(a3 + 24);
    v93 = *(a3 + 28);
    v95 = ((v92 * *&v162) + 0.0) + (v94 * *(&v162 + 1));
    v96 = ((v92 * *&v163) + 0.0) + (v94 * *(&v163 + 1));
    v97 = ((v92 * *&v164) + 0.0) + (v94 * *(&v164 + 1));
    v98 = ((v92 * *&v165) + 0.0) + (v94 * *(&v165 + 1));
    v100 = *(a3 + 40);
    v99 = *(a3 + 44);
    v101 = v95 + (v100 * *(&v162 + 2));
    v102 = v96 + (v100 * *(&v163 + 2));
    v103 = v97 + (v100 * *(&v164 + 2));
    v104 = v98 + (v100 * *(&v165 + 2));
    v106 = *(a3 + 56);
    v105 = *(a3 + 60);
    v107 = v101 + (v106 * *(&v162 + 3));
    v108 = v102 + (v106 * *(&v163 + 3));
    v109 = v103 + (v106 * *(&v164 + 3));
    v110 = v104 + (v106 * *(&v165 + 3));
    v111 = ((((v91 * *&v162) + 0.0) + (v93 * *(&v162 + 1))) + (v99 * *(&v162 + 2))) + (v105 * *(&v162 + 3));
    v112 = ((((v91 * *&v163) + 0.0) + (v93 * *(&v163 + 1))) + (v99 * *(&v163 + 2))) + (v105 * *(&v163 + 3));
    v113 = ((((v91 * *&v164) + 0.0) + (v93 * *(&v164 + 1))) + (v99 * *(&v164 + 2))) + (v105 * *(&v164 + 3));
    v114 = ((((v91 * *&v165) + 0.0) + (v93 * *(&v165 + 1))) + (v99 * *(&v165 + 2))) + (v105 * *(&v165 + 3));
    v115 = *(a2 + 4);
    v116 = *(a2 + 16);
    v117 = *(a2 + 20);
    v118 = *(a2 + 32);
    v119 = *(a2 + 36);
    v121 = *(a2 + 48);
    v120 = *(a2 + 52);
    v157 = ((((*a2 * v161) + 0.0) + (v116 * v88)) + (v118 * v108)) + (v121 * v112);
    v158 = ((((*a2 * v159) + 0.0) + (v116 * v87)) + (v118 * v107)) + (v121 * v111);
    v156 = ((((*a2 * v160) + 0.0) + (v116 * v89)) + (v118 * v109)) + (v121 * v113);
    v122 = ((((*a2 * v86) + 0.0) + (v116 * v90)) + (v118 * v110)) + (v121 * v114);
    v123 = ((((v115 * v159) + 0.0) + (v117 * v87)) + (v119 * v107)) + (v120 * v111);
    v124 = ((((v115 * v161) + 0.0) + (v117 * v88)) + (v119 * v108)) + (v120 * v112);
    v125 = ((((v115 * v160) + 0.0) + (v117 * v89)) + (v119 * v109)) + (v120 * v113);
    v126 = ((((v115 * v86) + 0.0) + (v117 * v90)) + (v119 * v110)) + (v120 * v114);
    v127 = *(a2 + 8);
    v128 = *(a2 + 12);
    v129 = *(a2 + 24);
    v130 = *(a2 + 28);
    v131 = ((v127 * v159) + 0.0) + (v129 * v87);
    v132 = ((v127 * v161) + 0.0) + (v129 * v88);
    v133 = ((v127 * v160) + 0.0) + (v129 * v89);
    v134 = ((v127 * v86) + 0.0) + (v129 * v90);
    v135 = *(a2 + 40);
    v136 = *(a2 + 44);
    v137 = v132 + (v135 * v108);
    v138 = v133 + (v135 * v109);
    v139 = v134 + (v135 * v110);
    v140 = *(a2 + 56);
    v141 = *(a2 + 60);
    v142 = (v131 + (v135 * v107)) + (v140 * v111);
    v143 = v137 + (v140 * v112);
    v144 = v138 + (v140 * v113);
    v145 = v139 + (v140 * v114);
    v146 = ((((v128 * v159) + 0.0) + (v130 * v87)) + (v136 * v107)) + (v141 * v111);
    v147 = ((((v128 * v161) + 0.0) + (v130 * v88)) + (v136 * v108)) + (v141 * v112);
    v148 = ((((v128 * v160) + 0.0) + (v130 * v89)) + (v136 * v109)) + (v141 * v113);
    v149 = ((((v128 * v86) + 0.0) + (v130 * v90)) + (v136 * v110)) + (v141 * v114);
    v150 = *(a1 + 12);
    v151 = v142 - *(a1 + 8);
    v152 = *(a1 + 28);
    v153 = *(a1 + 44);
    v154 = *(a1 + 60);
    v155 = (((((((((((((((((v158 - *a1) * (v158 - *a1)) + 0.0) + ((v157 - *(a1 + 16)) * (v157 - *(a1 + 16)))) + ((v156 - *(a1 + 32)) * (v156 - *(a1 + 32)))) + ((v122 - *(a1 + 48)) * (v122 - *(a1 + 48)))) + ((v123 - *(a1 + 4)) * (v123 - *(a1 + 4)))) + ((v124 - *(a1 + 20)) * (v124 - *(a1 + 20)))) + ((v125 - *(a1 + 36)) * (v125 - *(a1 + 36)))) + ((v126 - *(a1 + 52)) * (v126 - *(a1 + 52)))) + (v151 * v151)) + ((v143 - *(a1 + 24)) * (v143 - *(a1 + 24)))) + ((v144 - *(a1 + 40)) * (v144 - *(a1 + 40)))) + ((v145 - *(a1 + 56)) * (v145 - *(a1 + 56)))) + ((v146 - v150) * (v146 - v150))) + ((v147 - v152) * (v147 - v152))) + ((v148 - v153) * (v148 - v153))) + ((v149 - v154) * (v149 - v154));
    return (sqrtf(v155) / sqrtf(((((((((((((((((v158 * v158) + 0.0) + (v157 * v157)) + (v156 * v156)) + (v122 * v122)) + (v123 * v123)) + (v124 * v124)) + (v125 * v125)) + (v126 * v126)) + (v142 * v142)) + (v143 * v143)) + (v144 * v144)) + (v145 * v145)) + (v146 * v146)) + (v147 * v147)) + (v148 * v148)) + (v149 * v149))) <= 0.0001;
  }

  return result;
}

uint64_t DYMtxTridiagonalDecomposition(float *a1, float32x2_t *a2, int *a3, double a4, double a5, double a6, double a7, double a8)
{
  v11 = 0;
  v12 = 0;
  v173 = *MEMORY[0x277D85DE8];
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v13 = *(a1 + 3);
  v15 = *a1;
  v14 = *(a1 + 1);
  *(a3 + 2) = *(a1 + 2);
  *(a3 + 3) = v13;
  *a3 = v15;
  *(a3 + 1) = v14;
  *a2->f32 = xmmword_24D6A92A0;
  *a2[2].f32 = xmmword_24D6A92B0;
  v16 = 1;
  *a2[4].f32 = xmmword_24D6A92C0;
  *a2[6].f32 = xmmword_24D6A92D0;
  do
  {
    v17 = v16;
    v169 = 0uLL;
    v18 = &a3[v12 + v11 * 4];
    v19 = v18[4];
    v169.f32[v11 + 1] = v19;
    v20 = (v19 * v19) + 0.0;
    if (v11 != 2)
    {
      v21 = v18[8];
      v169.f32[v11 + 2] = v21;
      v20 = v20 + (v21 * v21);
      if (v11 != 1)
      {
        v22 = v18[12];
        v169.f32[v11 + 3] = v22;
        v20 = v20 + (v22 * v22);
      }
    }

    v169.f32[v12 + 1] = sqrtf(v20) + v169.f32[v12 + 1];
    _S5 = v169.i32[1];
    __asm { FMLA            S0, S5, V3.S[1] }

    _S1 = v169.i32[2];
    __asm { FMLA            S0, S1, V3.S[2] }

    _S2 = v169.i32[3];
    __asm { FMLA            S0, S2, V3.S[3] }

    if (_S0 >= 1.0e-10)
    {
      *&a8 = _S0 * 0.5;
      _Q17 = vdupq_lane_s32(*&a8, 0);
      _D1 = vsub_f32(1065353216, vdiv_f32(vmul_lane_f32(*&vextq_s8(v169, v169, 4uLL), *v169.f32, 1), *_Q17.f32));
      _Q0 = vsubq_f32(xmmword_24D6A92A0, vdivq_f32(vmulq_n_f32(v169, v169.f32[0]), _Q17));
      _S20 = *a3;
      _S25 = a3[1];
      __asm { FMLA            S5, S25, V0.S[1] }

      _S27 = a3[2];
      _S28 = *(a3 + 3);
      __asm
      {
        FMLA            S5, S27, V0.S[2]
        FMLA            S5, S28, V0.S[3]
      }

      _S29 = a3[4];
      _S22 = a3[5];
      __asm { FMLA            S6, S22, V0.S[1] }

      _S18 = a3[6];
      _S21 = *(a3 + 7);
      __asm
      {
        FMLA            S6, S18, V0.S[2]
        FMLA            S6, S21, V0.S[3]
      }

      _S23 = a3[8];
      _S19 = a3[9];
      __asm { FMLA            S16, S19, V0.S[1] }

      *&v53 = 0.0 - ((v169.f32[3] * v169.f32[1]) / *&a8);
      _D3 = vsub_f32(1065353216, vdiv_f32(vmul_laneq_f32(*&vextq_s8(v169, v169, 8uLL), v169, 2), *_Q17.f32));
      _S24 = a3[10];
      _S26 = *(a3 + 11);
      __asm
      {
        FMLA            S16, S24, V0.S[2]
        FMLA            S16, S26, V0.S[3]
        FMLA            S17, S20, V0.S[1]
        FMLA            S17, S27, V1.S[1]
      }

      _Q17.f32[0] = _Q17.f32[0] + (*&v53 * _S28);
      __asm
      {
        FMLA            S30, S20, V0.S[2]
        FMLA            S31, S20, V0.S[3]
        FMLA            S13, S29, V0.S[1]
        FMLA            S30, S25, V1.S[1]
        FMLA            S20, S28, V3.S[1]
        FMLA            S30, S29, V0.S[2]
        FMLA            S25, S27, V3.S[1]
      }

      v66 = 1.0 - ((v169.f32[3] * v169.f32[3]) / *&a8);
      _S7 = _S25 + (v66 * _S28);
      __asm { FMLA            S25, S29, V0.S[3] }

      _S31 = a3[12];
      _S14 = a3[13];
      __asm
      {
        FMLA            S29, S14, V0.S[1]
        FMLA            S27, S18, V1.S[1]
      }

      _S27 = _S27 + (*&v53 * _S21);
      __asm
      {
        FMLA            S30, S22, V1.S[1]
        FMLA            S22, S23, V0.S[1]
        FMLA            S22, S24, V1.S[1]
      }

      _S28 = _S22 + (*&v53 * _S26);
      __asm
      {
        FMLA            S22, S21, V3.S[1]
        FMLA            S25, S18, V3.S[1]
        FMLA            S30, S23, V0.S[2]
      }

      _S18 = _S25 + (v66 * _S21);
      __asm
      {
        FMLA            S21, S23, V0.S[3]
        FMLA            S23, S31, V0.S[1]
        FMLA            S30, S19, V1.S[1]
        FMLA            S25, S26, V3.S[1]
        FMLA            S21, S31, V0.S[2]
        FMLA            S19, S24, V3.S[1]
      }

      _S19 = _S19 + (v66 * _S26);
      __asm { FMLA            S24, S31, V0.S[3] }

      _S26 = a3[14];
      _S31 = *(a3 + 15);
      __asm
      {
        FMLA            S29, S26, V0.S[2]
        FMLA            S29, S31, V0.S[3]
        FMLA            S23, S26, V1.S[1]
      }

      *(&v166 + 4) = _D1;
      _S30 = _S23 + (*&v53 * _S31);
      __asm { FMLA            S21, S14, V1.S[1] }

      LODWORD(v166) = _Q0.i32[1];
      __asm
      {
        FMLA            S23, S31, V3.S[1]
        FMLA            S21, S26, V3.S[1]
      }

      _S21 = _S21 + (v66 * _S31);
      __asm
      {
        FMLA            S24, S5, V0.S[1]
        FMLA            S31, S5, V0.S[2]
        FMLA            S13, S5, V0.S[3]
        FMLA            S5, S6, V0.S[1]
        FMLA            S5, S16, V0.S[2]
        FMLA            S5, S29, V0.S[3]
        FMLA            S24, S16, V1.S[1]
      }

      v107 = _S24 + (_S29 * *&v53);
      __asm
      {
        FMLA            S31, S6, V1.S[1]
        FMLA            S24, S29, V3.S[1]
        FMLA            S6, S16, V3.S[1]
      }

      v111 = _S6 + (_S29 * v66);
      __asm
      {
        FMLA            S29, S17, V0.S[1]
        FMLA            S31, S17, V0.S[2]
        FMLA            S13, S17, V0.S[3]
        FMLA            S16, S27, V0.S[1]
        FMLA            S16, S28, V0.S[2]
        FMLA            S16, S30, V0.S[3]
        FMLA            S17, S28, V1.S[1]
      }

      v118 = _Q17.f32[0] + (_S30 * *&v53);
      __asm
      {
        FMLA            S31, S27, V1.S[1]
        FMLA            S17, S30, V3.S[1]
        FMLA            S27, S28, V3.S[1]
      }

      v121 = _S27 + (_S30 * v66);
      __asm
      {
        FMLA            S30, S20, V0.S[1]
        FMLA            S31, S20, V0.S[2]
        FMLA            S13, S20, V0.S[3]
        FMLA            S28, S22, V0.S[1]
        FMLA            S28, S25, V0.S[2]
        FMLA            S30, S25, V1.S[1]
        FMLA            S31, S22, V1.S[1]
        FMLA            S22, S25, V3.S[1]
        FMLA            S25, S7, V0.S[1]
        FMLA            S25, S19, V1.S[1]
        FMLA            S31, S7, V0.S[2]
        FMLA            S31, S18, V1.S[1]
      }

      _D1.i32[0] = _Q0.i32[2];
      v165 = _Q0;
      LODWORD(v168) = _Q0.i32[3];
      __asm { FMLA            S28, S23, V0.S[3] }

      v135 = _S30 + (_S23 * *&v53);
      __asm { FMLA            S20, S23, V3.S[1] }

      v137 = _S22 + (_S23 * v66);
      __asm
      {
        FMLA            S23, S7, V0.S[3]
        FMLA            S7, S18, V0.S[1]
        FMLA            S7, S19, V0.S[2]
        FMLA            S7, S21, V0.S[3]
        FMLA            S0, S19, V3.S[1]
      }

      *&v167 = _D1;
      *(&v167 + 1) = _D3;
      __asm { FMLA            S18, S21, V3.S[1] }

      HIDWORD(v166) = v53;
      *(&v168 + 4) = __PAIR64__(_D3.u32[1], v53);
      *(&v168 + 3) = v66;
      *a3 = _S5;
      a3[1] = _S16;
      a3[2] = _S28;
      a3[3] = _S7;
      *(a3 + 4) = v107;
      *(a3 + 5) = v118;
      *(a3 + 6) = v135;
      *(a3 + 7) = _S25 + (_S21 * *&v53);
      a3[8] = _S24;
      a3[9] = _Q17.i32[0];
      a3[10] = _S20;
      a3[11] = _S18;
      *(a3 + 12) = v111;
      *(a3 + 13) = v121;
      *(a3 + 14) = v137;
      *(a3 + 15) = _Q0.f32[0] + (_S21 * v66);
      DYMtxConcat(a2, v165.f32, a2);
    }

    v16 = 0;
    ++v11;
    v12 = 1;
  }

  while ((v17 & 1) != 0);
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v160 = *a2;
  v161 = a2[1];
  v157 = a2[2];
  v162 = a2[3];
  v158 = a2[4];
  v163 = a2[5];
  v159 = a2[6];
  v164 = a2[7];
  DYMtxConcat(a2, a3, v169.f32);
  v143 = vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(0, v169, v160, 1), v170, v157, 1), v171, v158, 1), v172, v159, 1);
  v144 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, v169, v161.f32[0]), v170, v162.f32[0]), v171, v163.f32[0]);
  v145 = vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(0, v169, v161, 1), v170, v162, 1), v171, v163, 1), v172, v164, 1);
  v169 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, v169, v160.f32[0]), v170, v157.f32[0]), v171, v158.f32[0]), v172, v159.f32[0]);
  v170 = v143;
  v171 = vmlaq_n_f32(v144, v172, v164.f32[0]);
  v172 = v145;
  if (DYMtxNormalizedFrobeniusNormDelta(a1, v169.f32) > 0.0001)
  {
    goto LABEL_16;
  }

  v146 = *(a3 + 8);
  v148 = *(a3 + 12);
  v147 = *(a3 + 13);
  v150 = *(a3 + 2);
  v149 = *(a3 + 3);
  v151 = *(a3 + 7);
  v152 = *(a3 + 11);
  v153 = *(a3 + 15);
  v154 = sqrtf(((((((((((((((((*a3 * *a3) + 0.0) + (*(a3 + 4) * *(a3 + 4))) + (v146 * v146)) + (v148 * v148)) + (*(a3 + 1) * *(a3 + 1))) + (*(a3 + 5) * *(a3 + 5))) + (*(a3 + 9) * *(a3 + 9))) + (v147 * v147)) + (v150 * v150)) + (*(a3 + 6) * *(a3 + 6))) + (*(a3 + 10) * *(a3 + 10))) + (*(a3 + 14) * *(a3 + 14))) + (v149 * v149)) + (v151 * v151)) + (v152 * v152)) + (v153 * v153));
  if ((fabsf(v146) / v154) > 0.0001 || (a3[8] = 0, (fabsf(v148) / v154) > 0.0001) || (a3[12] = 0, (fabsf(v147) / v154) > 0.0001) || (a3[13] = 0, (fabsf(v150) / v154) > 0.0001) || (a3[2] = 0, (fabsf(v149) / v154) > 0.0001) || (a3[3] = 0, (fabsf(v151) / v154) > 0.0001))
  {
LABEL_16:
    result = 0;
  }

  else
  {
    a3[7] = 0;
    result = 1;
  }

  v156 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DYMtxEigenDecomposition(float *a1, _OWORD *a2, _DWORD *a3, double a4, double a5, double a6, double a7, double a8)
{
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  memset(v206, 0, sizeof(v206));
  result = DYMtxTridiagonalDecomposition(a1, &v207, v206, 0.0, a5, a6, a7, a8);
  if (result)
  {
    v12 = 0;
    v14 = *(v206 + 1);
    v13 = *v206;
    v16 = *(&v206[2] + 1);
    v15 = *&v206[2];
    v18 = *(&v206[3] + 1);
    v17 = *&v206[3];
    v19 = *(v206 + 3);
    v20 = *(v206 + 2);
    v21 = *(&v206[1] + 3);
    v193 = *(&v206[1] + 1);
    v22 = *&v206[1];
    v195 = *(&v206[2] + 3);
    v23 = *(&v206[2] + 2);
    v197 = *(&v206[1] + 2);
    v24 = *(&v206[3] + 3);
    v25 = *(&v206[3] + 2);
    v27 = *(&v207 + 1);
    v26 = *&v207;
    v29 = *(&v208 + 1);
    v28 = *&v208;
    v31 = *(&v209 + 1);
    v30 = *&v209;
    v192 = v210;
    v32 = *(&v207 + 2);
    v33 = *(&v208 + 2);
    v188 = *(&v207 + 3);
    v189 = *(&v208 + 3);
    v35 = *(&v209 + 3);
    v34 = *(&v209 + 2);
    v36 = *(&v210 + 3);
    LODWORD(v191) = DWORD2(v210);
    do
    {
      v37 = sqrtf(((((((((((((v22 * v22) + 0.0) + (v15 * v15)) + (v17 * v17)) + (v14 * v14)) + (v16 * v16)) + (v18 * v18)) + (v20 * v20)) + (v197 * v197)) + (v25 * v25)) + (v19 * v19)) + (v21 * v21)) + (v195 * v195));
      if (v37 < 0.0000001 && (v37 / sqrtf(((((((((((((((((v13 * v13) + 0.0) + (v22 * v22)) + (v15 * v15)) + (v17 * v17)) + (v14 * v14)) + (v193 * v193)) + (v16 * v16)) + (v18 * v18)) + (v20 * v20)) + (v197 * v197)) + (v23 * v23)) + (v25 * v25)) + (v19 * v19)) + (v21 * v21)) + (v195 * v195)) + (v24 * v24))) < 0.0000001)
      {
        break;
      }

      v200 = v15;
      v38 = 6;
      v39 = &unk_24D6A930C;
      do
      {
        v40 = *(v39 - 1);
        v41 = *v39;
        v42 = *(&v206[v41] + v40);
        if (fabsf(v42) >= 0.0000001)
        {
          v43 = (*(&v206[v41] + v41) - *(&v206[v40] + v40)) / (v42 + v42);
          v44 = 1.0 / (fabsf(v43) + sqrtf((v43 * v43) + 1.0));
          if (v43 >= 0.0)
          {
            v45 = v44;
          }

          else
          {
            v45 = -v44;
          }

          v46 = 1.0 / sqrtf((v45 * v45) + 1.0);
          v202 = xmmword_24D6A92A0;
          v203 = xmmword_24D6A92B0;
          v204 = xmmword_24D6A92C0;
          v205 = xmmword_24D6A92D0;
          v47 = (&v202 + v40);
          v47[v40] = v46;
          v48 = (&v202 + v41);
          v48[v41] = v46;
          v48[v40] = v45 * v46;
          v47[v41] = -(v45 * v46);
          v184 = v31;
          v185 = v30;
          v182 = v25;
          v177 = v34;
          v170 = v33;
          v180 = v24;
          *(&v191 + 1) = v36;
          v49 = ((((*&v202 * v13) + 0.0) + (*(&v202 + 1) * v14)) + (*(&v202 + 2) * v20)) + (*(&v202 + 3) * v19);
          v50 = ((((*&v203 * v13) + 0.0) + (*(&v203 + 1) * v14)) + (*(&v203 + 2) * v20)) + (*(&v203 + 3) * v19);
          v51 = ((((*&v204 * v13) + 0.0) + (*(&v204 + 1) * v14)) + (*(&v204 + 2) * v20)) + (*(&v204 + 3) * v19);
          v52 = ((((*&v205 * v13) + 0.0) + (*(&v205 + 1) * v14)) + (*(&v205 + 2) * v20)) + (*(&v205 + 3) * v19);
          v53 = (((*&v204 * v22) + 0.0) + (*(&v204 + 1) * v193)) + (*(&v204 + 2) * v197);
          v54 = (((*&v205 * v22) + 0.0) + (*(&v205 + 1) * v193)) + (*(&v205 + 2) * v197);
          v55 = ((((*&v202 * v22) + 0.0) + (*(&v202 + 1) * v193)) + (*(&v202 + 2) * v197)) + (*(&v202 + 3) * v21);
          v56 = ((((*&v203 * v22) + 0.0) + (*(&v203 + 1) * v193)) + (*(&v203 + 2) * v197)) + (*(&v203 + 3) * v21);
          v57 = v53 + (*(&v204 + 3) * v21);
          v58 = v54 + (*(&v205 + 3) * v21);
          v169 = ((v50 * *&v202) + 0.0) + (v56 * *(&v202 + 1));
          v168 = ((v50 * *&v203) + 0.0) + (v56 * *(&v203 + 1));
          v59 = ((v50 * *&v204) + 0.0) + (v56 * *(&v204 + 1));
          v167 = ((v50 * *&v205) + 0.0) + (v56 * *(&v205 + 1));
          v166 = ((v52 * *&v202) + 0.0) + (v58 * *(&v202 + 1));
          v165 = ((v52 * *&v203) + 0.0) + (v58 * *(&v203 + 1));
          v164 = ((v52 * *&v204) + 0.0) + (v58 * *(&v204 + 1));
          v163 = ((v52 * *&v205) + 0.0) + (v58 * *(&v205 + 1));
          v162 = ((v26 * *&v202) + 0.0) + (v28 * *(&v202 + 1));
          v175 = ((v27 * *&v202) + 0.0) + (v29 * *(&v202 + 1));
          v161 = ((v27 * *&v203) + 0.0) + (v29 * *(&v203 + 1));
          v160 = ((v27 * *&v204) + 0.0) + (v29 * *(&v204 + 1));
          v174 = ((v27 * *&v205) + 0.0) + (v29 * *(&v205 + 1));
          v173 = ((v32 * *&v202) + 0.0) + (v170 * *(&v202 + 1));
          v159 = ((v32 * *&v203) + 0.0) + (v170 * *(&v203 + 1));
          v158 = ((v32 * *&v204) + 0.0) + (v170 * *(&v204 + 1));
          v172 = ((v32 * *&v205) + 0.0) + (v170 * *(&v205 + 1));
          v171 = ((v188 * *&v202) + 0.0) + (v189 * *(&v202 + 1));
          v157 = ((v188 * *&v203) + 0.0) + (v189 * *(&v203 + 1));
          v156 = ((v188 * *&v204) + 0.0) + (v189 * *(&v204 + 1));
          v60 = ((((*&v202 * v200) + 0.0) + (*(&v202 + 1) * v16)) + (*(&v202 + 2) * v23)) + (*(&v202 + 3) * v195);
          v61 = ((((*&v203 * v200) + 0.0) + (*(&v203 + 1) * v16)) + (*(&v203 + 2) * v23)) + (*(&v203 + 3) * v195);
          v62 = ((((*&v204 * v200) + 0.0) + (*(&v204 + 1) * v16)) + (*(&v204 + 2) * v23)) + (*(&v204 + 3) * v195);
          v63 = ((((*&v205 * v200) + 0.0) + (*(&v205 + 1) * v16)) + (*(&v205 + 2) * v23)) + (*(&v205 + 3) * v195);
          v64 = (((v49 * *&v202) + 0.0) + (v55 * *(&v202 + 1))) + (v60 * *(&v202 + 2));
          v65 = (((v49 * *&v203) + 0.0) + (v55 * *(&v203 + 1))) + (v60 * *(&v203 + 2));
          v66 = (((v49 * *&v204) + 0.0) + (v55 * *(&v204 + 1))) + (v60 * *(&v204 + 2));
          v67 = (((v49 * *&v205) + 0.0) + (v55 * *(&v205 + 1))) + (v60 * *(&v205 + 2));
          v68 = (((v26 * *&v203) + 0.0) + (v28 * *(&v203 + 1))) + (v30 * *(&v203 + 2));
          v198 = (((v26 * *&v204) + 0.0) + (v28 * *(&v204 + 1))) + (v30 * *(&v204 + 2));
          v69 = (((v26 * *&v205) + 0.0) + (v28 * *(&v205 + 1))) + (v30 * *(&v205 + 2));
          v190 = (((v188 * *&v205) + 0.0) + (v189 * *(&v205 + 1))) + (v35 * *(&v205 + 2));
          v70 = ((((*&v202 * v17) + 0.0) + (*(&v202 + 1) * v18)) + (*(&v202 + 2) * v182)) + (*(&v202 + 3) * v180);
          v71 = ((((*&v203 * v17) + 0.0) + (*(&v203 + 1) * v18)) + (*(&v203 + 2) * v182)) + (*(&v203 + 3) * v180);
          v72 = ((((*&v204 * v17) + 0.0) + (*(&v204 + 1) * v18)) + (*(&v204 + 2) * v182)) + (*(&v204 + 3) * v180);
          v73 = ((((*&v205 * v17) + 0.0) + (*(&v205 + 1) * v18)) + (*(&v205 + 2) * v182)) + (*(&v205 + 3) * v180);
          v13 = v64 + (v70 * *(&v202 + 3));
          v22 = v65 + (v70 * *(&v203 + 3));
          *&v74 = v66 + (v70 * *(&v204 + 3));
          *&v75 = v67 + (v70 * *(&v205 + 3));
          *&v76 = (v169 + (v61 * *(&v202 + 2))) + (v71 * *(&v202 + 3));
          *&v77 = (v168 + (v61 * *(&v203 + 2))) + (v71 * *(&v203 + 3));
          *&v78 = (v59 + (v61 * *(&v204 + 2))) + (v71 * *(&v204 + 3));
          v18 = (v167 + (v61 * *(&v205 + 2))) + (v71 * *(&v205 + 3));
          *&v79 = ((((v51 * *&v202) + 0.0) + (v57 * *(&v202 + 1))) + (v62 * *(&v202 + 2))) + (v72 * *(&v202 + 3));
          *&v80 = ((((v51 * *&v203) + 0.0) + (v57 * *(&v203 + 1))) + (v62 * *(&v203 + 2))) + (v72 * *(&v203 + 3));
          *&v81 = ((((v51 * *&v204) + 0.0) + (v57 * *(&v204 + 1))) + (v62 * *(&v204 + 2))) + (v72 * *(&v204 + 3));
          *&v82 = ((((v51 * *&v205) + 0.0) + (v57 * *(&v205 + 1))) + (v62 * *(&v205 + 2))) + (v72 * *(&v205 + 3));
          *&v83 = (v166 + (v63 * *(&v202 + 2))) + (v73 * *(&v202 + 3));
          v21 = (v165 + (v63 * *(&v203 + 2))) + (v73 * *(&v203 + 3));
          *&v84 = (v164 + (v63 * *(&v204 + 2))) + (v73 * *(&v204 + 3));
          *&v85 = (v163 + (v63 * *(&v205 + 2))) + (v73 * *(&v205 + 3));
          v186 = (v162 + (v185 * *(&v202 + 2))) + (*&v192 * *(&v202 + 3));
          v86 = v68 + (*&v192 * *(&v203 + 3));
          v87 = v198 + (*&v192 * *(&v204 + 3));
          v88 = (v175 + (v184 * *(&v202 + 2))) + (*(&v192 + 1) * *(&v202 + 3));
          v89 = (v161 + (v184 * *(&v203 + 2))) + (*(&v192 + 1) * *(&v203 + 3));
          v90 = (v160 + (v184 * *(&v204 + 2))) + (*(&v192 + 1) * *(&v204 + 3));
          *&v192 = v69 + (*&v192 * *(&v205 + 3));
          *(&v192 + 1) = (v174 + (v184 * *(&v205 + 2))) + (*(&v192 + 1) * *(&v205 + 3));
          v32 = (v173 + (v177 * *(&v202 + 2))) + (*&v191 * *(&v202 + 3));
          v91 = (v159 + (v177 * *(&v203 + 2))) + (*&v191 * *(&v203 + 3));
          v92 = (v158 + (v177 * *(&v204 + 2))) + (*&v191 * *(&v204 + 3));
          *&v191 = (v172 + (v177 * *(&v205 + 2))) + (*&v191 * *(&v205 + 3));
          v93 = (v171 + (v35 * *(&v202 + 2))) + (*(&v191 + 1) * *(&v202 + 3));
          v94 = (v157 + (v35 * *(&v203 + 2))) + (*(&v191 + 1) * *(&v203 + 3));
          v35 = (v156 + (v35 * *(&v204 + 2))) + (*(&v191 + 1) * *(&v204 + 3));
          v16 = *&v78;
          v36 = v190 + (*(&v191 + 1) * *(&v205 + 3));
          v17 = *&v75;
          *&v206[0] = __PAIR64__(v76, LODWORD(v13));
          *(&v206[0] + 1) = __PAIR64__(v83, v79);
          *&v206[1] = __PAIR64__(v77, LODWORD(v22));
          v193 = *&v77;
          v195 = *&v84;
          v197 = *&v80;
          v200 = *&v74;
          *(&v206[1] + 1) = __PAIR64__(LODWORD(v21), v80);
          *&v206[2] = __PAIR64__(v78, v74);
          v23 = *&v81;
          *(&v206[2] + 1) = __PAIR64__(v84, v81);
          v14 = *&v76;
          v188 = v93;
          v189 = v94;
          v20 = *&v79;
          v34 = v92;
          *&v206[3] = __PAIR64__(LODWORD(v18), v75);
          v33 = v91;
          v31 = v90;
          v29 = v89;
          v25 = *&v82;
          *(&v206[3] + 1) = __PAIR64__(v85, v82);
          v24 = *&v85;
          v27 = v88;
          v30 = v87;
          v28 = v86;
          v26 = v186;
          v19 = *&v83;
        }

        v39 += 2;
        --v38;
      }

      while (v38);
      ++v12;
      v15 = v200;
    }

    while (v12 != 50);
    *(v206 + 4) = 0uLL;
    v95 = v28;
    v96 = ((((v26 * *v206) + 0.0) + (v28 * 0.0)) + (v30 * 0.0)) + (*&v192 * 0.0);
    v187 = v30;
    v97 = v26;
    *(&v206[1] + 1) = 0;
    *&v206[2] = 0;
    v98 = ((((v26 * 0.0) + 0.0) + (v28 * *(&v206[1] + 1))) + (v30 * 0.0)) + (*&v192 * 0.0);
    v99 = v29;
    v201 = v206[0];
    *(&v206[2] + 12) = 0uLL;
    v196 = ((v97 * 0.0) + 0.0) + (v28 * 0.0);
    v199 = DWORD1(v206[1]);
    v100 = ((((v27 * *v206) + 0.0) + (v29 * 0.0)) + (v31 * 0.0)) + (*(&v192 + 1) * 0.0);
    v101 = (((v188 * *v206) + 0.0) + (v189 * 0.0)) + (v35 * 0.0);
    v102 = ((((v27 * 0.0) + 0.0) + (v29 * *(&v206[1] + 1))) + (v31 * 0.0)) + (*(&v192 + 1) * 0.0);
    v103 = v35;
    v104 = ((((v32 * *v206) + 0.0) + (v33 * 0.0)) + (v34 * 0.0)) + (*&v191 * 0.0);
    v105 = v101 + (v36 * 0.0);
    *(&v191 + 1) = v36;
    v194 = ((v27 * 0.0) + 0.0) + (v99 * 0.0);
    v106 = ((((v32 * 0.0) + 0.0) + (v33 * *(&v206[1] + 1))) + (v34 * 0.0)) + (*&v191 * 0.0);
    v179 = ((((v188 * 0.0) + 0.0) + (v189 * *(&v206[1] + 1))) + (v103 * 0.0)) + (v36 * 0.0);
    v107 = v27;
    v183 = ((v32 * 0.0) + 0.0) + (v33 * 0.0);
    v108 = v97;
    v181 = ((v96 * v97) + 0.0) + (v98 * v95);
    v109 = ((v96 * v107) + 0.0) + (v98 * v99);
    v110 = ((v96 * v32) + 0.0) + (v98 * v33);
    v176 = ((v100 * v97) + 0.0) + (v102 * v95);
    v178 = ((v96 * v188) + 0.0) + (v98 * v189);
    v111 = ((v100 * v107) + 0.0) + (v102 * v99);
    v112 = ((v100 * v32) + 0.0) + (v102 * v33);
    v113 = ((v100 * v188) + 0.0) + (v102 * v189);
    v114 = ((v104 * v108) + 0.0) + (v106 * v95);
    v115 = ((v104 * v107) + 0.0) + (v106 * v99);
    v116 = ((v104 * v32) + 0.0) + (v106 * v33);
    v117 = ((v104 * v188) + 0.0) + (v106 * v189);
    *(&v207 + 3) = v188;
    *&v208 = __PAIR64__(LODWORD(v99), LODWORD(v95));
    v118 = ((v105 * v107) + 0.0) + (v179 * v99);
    *(&v208 + 1) = __PAIR64__(LODWORD(v189), LODWORD(v33));
    *&v207 = v108;
    *(&v207 + 4) = __PAIR64__(LODWORD(v32), LODWORD(v107));
    v119 = DWORD2(v206[2]);
    v120 = (v196 + (v30 * *(&v206[2] + 2))) + (*&v192 * 0.0);
    v121 = (v194 + (v31 * *(&v206[2] + 2))) + (*(&v192 + 1) * 0.0);
    v122 = (v183 + (v34 * *(&v206[2] + 2))) + (*&v191 * 0.0);
    v123 = ((((v188 * 0.0) + 0.0) + (v189 * 0.0)) + (v103 * *(&v206[2] + 2))) + (v36 * 0.0);
    v124 = v194 + (v31 * 0.0);
    v125 = v109 + (v120 * v31);
    v126 = v176 + (v121 * v187);
    v127 = v111 + (v121 * v31);
    v128 = v112 + (v121 * v34);
    v129 = v113 + (v121 * v103);
    v130 = v114 + (v122 * v187);
    v131 = v115 + (v122 * v31);
    v132 = v116 + (v122 * v34);
    v133 = v117 + (v122 * v103);
    v134 = (((v105 * v108) + 0.0) + (v179 * v95)) + (v123 * v187);
    *&v209 = __PAIR64__(LODWORD(v31), LODWORD(v187));
    v135 = v118 + (v123 * v31);
    *(&v209 + 1) = __PAIR64__(LODWORD(v103), LODWORD(v34));
    v136 = (((v105 * v32) + 0.0) + (v179 * v33)) + (v123 * v34);
    *&v210 = v192;
    *(&v210 + 1) = v191;
    v137 = v210;
    a2[2] = v209;
    a2[3] = v137;
    v138 = HIDWORD(v206[3]);
    v139 = (v196 + (v187 * 0.0)) + (*&v192 * *(&v206[3] + 3));
    *&v140 = (v181 + (v120 * v187)) + (v139 * *&v192);
    *&v141 = v125 + (v139 * *(&v192 + 1));
    *&v142 = (v110 + (v120 * v34)) + (v139 * *&v191);
    *&v143 = (v178 + (v120 * v103)) + (v139 * v36);
    v144 = v124 + (*(&v192 + 1) * *(&v206[3] + 3));
    *&v145 = v126 + (v144 * *&v192);
    *&v146 = v127 + (v144 * *(&v192 + 1));
    *&v147 = v128 + (v144 * *&v191);
    *&v148 = v129 + (v144 * v36);
    v149 = (v183 + (v34 * 0.0)) + (*&v191 * *(&v206[3] + 3));
    v150 = v130 + (v149 * *&v192);
    v151 = v131 + (v149 * *(&v192 + 1));
    v152 = v132 + (v149 * *&v191);
    v153 = v133 + (v149 * v36);
    v154 = ((((v188 * 0.0) + 0.0) + (v189 * 0.0)) + (v103 * 0.0)) + (v36 * *(&v206[3] + 3));
    v155 = v208;
    *a2 = v207;
    a2[1] = v155;
    *a3 = v201;
    a3[1] = v199;
    a3[2] = v119;
    a3[3] = v138;
    *&v202 = __PAIR64__(v145, v140);
    *(&v202 + 2) = v150;
    *(&v202 + 3) = v134 + (v154 * *&v192);
    *&v203 = __PAIR64__(v146, v141);
    *(&v203 + 2) = v151;
    *(&v203 + 3) = v135 + (v154 * *(&v192 + 1));
    *&v204 = __PAIR64__(v147, v142);
    *(&v204 + 2) = v152;
    *(&v204 + 3) = v136 + (v154 * *&v191);
    *&v205 = __PAIR64__(v148, v143);
    *(&v205 + 2) = v153;
    *(&v205 + 3) = ((((v105 * v188) + 0.0) + (v179 * v189)) + (v123 * v103)) + (v154 * v36);
    return DYMtxNormalizedFrobeniusNormDelta(a1, &v202) <= 0.0001;
  }

  return result;
}

void DYAddInternalDataNameEntries(uint64_t a1, uint64_t a2)
{
  if (sInternalDataNameTableOnce != -1)
  {
    DYAddInternalDataNameEntries_cold_1();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __DYAddInternalDataNameEntries_block_invoke;
  v4[3] = &__block_descriptor_tmp_2;
  v4[4] = a2;
  v4[5] = a1;
  dispatch_sync(sInternalDataNameTableQueue, v4);
}

uint64_t *__DYAddInternalDataNameEntries_block_invoke(uint64_t *result)
{
  if (result[4])
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    do
    {
      result = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int const&,char const* const&>(spInternalDataNameMap, (v1[5] + v2));
      ++v3;
      v2 += 16;
    }

    while (v3 < v1[4]);
  }

  return result;
}

void DYInternalDataTypeAsString(int a1@<W0>, std::string *a2@<X8>)
{
  if (sInternalDataNameTableOnce != -1)
  {
    DYAddInternalDataNameEntries_cold_1();
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x4002000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  __p = 0;
  v13 = 0;
  v14 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___Z26DYInternalDataTypeAsStringi_block_invoke;
  v5[3] = &unk_27930D128;
  v6 = a1;
  v5[4] = &v7;
  dispatch_sync(sInternalDataNameTableQueue, v5);
  if (*(v8 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, v8[5], v8[6]);
  }

  else
  {
    v4 = *(v8 + 5);
    a2->__r_.__value_.__r.__words[2] = v8[7];
    *&a2->__r_.__value_.__l.__data_ = v4;
  }

  _Block_object_dispose(&v7, 8);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }
}

void sub_24D68F3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  _Block_object_dispose(&a15, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

std::string *___Z26DYInternalDataTypeAsStringi_block_invoke(uint64_t a1)
{
  result = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::find<int>(spInternalDataNameMap, (a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = (*(*(a1 + 32) + 8) + 40);

    return std::string::operator=(v4, v3 + 1);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[8]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[8]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D68F680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D68F738(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[20]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[20]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D68FA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D68FB30(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[21]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[21]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D68FD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D68FE0C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[16]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[16]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D690030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D6900E8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[15]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[15]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D69030C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D6903C4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[34]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[34]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D6905E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D6906A0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[17]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[17]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D6908C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D69097C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[12]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[12]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D690BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D690C58(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[11]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[11]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D690E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D690F34(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[31]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[31]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D691158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D691210(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[23]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[23]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D691434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D6914EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[13]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[13]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D691710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D6917C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int,char const(&)[29]>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int,char const(&)[29]>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D6919EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D691AA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,int const&,char const* const&>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__construct_node_hash<int const&,char const* const&>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D691CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D691D80(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::find<int>(void *a1, int *a2)
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
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
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

uint64_t _log_assert(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x277D85DE8];
  __vsprintf_chk(v12, 0, 0x200uLL, a4, &a9);
  if (_log_assert_once != -1)
  {
    _log_assert_cold_1();
  }

  v9 = _log_assert_assertLogger;
  if (os_log_type_enabled(_log_assert_assertLogger, OS_LOG_TYPE_ERROR))
  {
    _log_assert_cold_2(v12, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

void ___log_assert_block_invoke()
{
  _log_assert_assertLogger = os_log_create("com.apple.gdt", "assertions");
  if (!_log_assert_assertLogger)
  {
    v0 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ___log_assert_block_invoke_cold_1();
    }

    _log_assert_assertLogger = v0;
  }
}

char *DYArgumentsCLIDecode(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 8);
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(a3 + 16) + v8;
      v10 = *(v9 + 32);
      v13 = v9 + 40;
      v12 = *(v9 + 40);
      v11 = *(v13 + 8);
      if (v10)
      {
        if (v10 == 2 || v10 == 1)
        {
          *(v11 + a4) = v12;
        }
      }

      else
      {
        *(v11 + a4) = v12 != 0;
      }

      v8 += 56;
    }

    while (56 * v7 != v8);
  }

  if (a1 <= 1)
  {
    return 0;
  }

  LODWORD(v14) = 1;
  while (v7 < 1)
  {
LABEL_33:
    LODWORD(v14) = v14 + 1;
    if (v14 >= a1)
    {
      return 0;
    }
  }

  v15 = 0;
  while (1)
  {
    v16 = *(a2 + 8 * v14);
    v17 = *(a3 + 16) + 56 * v15;
    v18 = strlen(*v17);
    v19 = strncmp(v16, *v17, v18);
    v20 = *(v17 + 8);
    if (v20)
    {
      v21 = strlen(*(v17 + 8));
      v22 = strncmp(v16, v20, v21) == 0;
    }

    else
    {
      v22 = 0;
    }

    if (v19)
    {
      v23 = !v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      goto LABEL_32;
    }

    v24 = *(v17 + 32);
    if (!v24)
    {
      *(*(v17 + 48) + a4) = 1;
      goto LABEL_32;
    }

    if (v24 == 2)
    {
      break;
    }

    if (v24 == 1)
    {
      v14 = v14 + 1;
      if (v14 == a1)
      {
        v30 = 1931016013;
        goto LABEL_39;
      }

      *(*(v17 + 48) + a4) = *(a2 + 8 * v14);
    }

LABEL_32:
    if (++v15 == v7)
    {
      goto LABEL_33;
    }
  }

  v14 = v14 + 1;
  if (v14 == a1)
  {
    v30 = 1668605536;
LABEL_39:
    v28 = malloc_type_calloc(0x400uLL, 1uLL, v30);
    snprintf(v28, 0x400uLL, "missing argument for %s");
    return v28;
  }

  v25 = *(a2 + 8 * v14);
  v26 = strlen(v25);
  if (!v26)
  {
LABEL_30:
    *(*(v17 + 48) + a4) = atoi(v25);
    goto LABEL_32;
  }

  v27 = 0;
  while ((v25[v27] - 48) < 0xA)
  {
    if (v26 == ++v27)
    {
      goto LABEL_30;
    }
  }

  v28 = malloc_type_calloc(0x400uLL, 1uLL, 0x8FCF2993uLL);
  snprintf(v28, 0x400uLL, "%s is not valid number for %s");
  return v28;
}

char *DYArgumentsCLIHelp(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (*(a1 + 8))
    {
      v3 = strlen(*v1);
      v4 = getprogname();
      v5 = snprintf(DYArgumentsCLIHelp_buffer, 0x10000uLL, "%s - %s\n\n", v4, *a1);
      v6 = 0x10000 - v5;
      v7 = getprogname();
      v8 = snprintf(&DYArgumentsCLIHelp_buffer[v5], v6, "usage: %s ", v7);
      if (*(a1 + 8) < 1)
      {
        v19 = v5;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = *(a1 + 16);
        v32 = v8;
        LODWORD(v12) = v8;
        do
        {
          v13 = &DYArgumentsCLIHelp_buffer[v5];
          v14 = snprintf(&v13[v12], 0x10000 - v5, "[%s", *(v11 + v9)) + v12;
          v15 = *(a1 + 16) + v9;
          if (*(v15 + 32))
          {
            LODWORD(v14) = snprintf(&v13[v14], 0x10000 - v5, " %s", *(v15 + 24)) + v14;
          }

          v12 = snprintf(&v13[v14], 0x10000 - v5, "] ") + v14;
          ++v10;
          if (v12 > 80 || (v16 = *(a1 + 8), v10 == v16))
          {
            v17 = v5 + snprintf(&v13[v12], 0x10000 - v5, "\n");
            v5 = snprintf(&DYArgumentsCLIHelp_buffer[v12 + v17], 0x10000 - v17, "%*s", v32, "") + v12 + v17;
            LODWORD(v16) = *(a1 + 8);
            LODWORD(v12) = 0;
          }

          v11 = *(a1 + 16);
          v18 = strlen(*(v11 + v9));
          if (v18 > v3)
          {
            v3 = v18;
          }

          v9 += 56;
        }

        while (v10 < v16);
        v19 = v5;
        v6 = 0x10000 - v5;
        v8 = v12;
      }

      v20 = snprintf(&DYArgumentsCLIHelp_buffer[v19 + v8], v6, "\noptions:\n") + v5;
      if (*(a1 + 8) >= 1)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = (*(a1 + 16) + v21);
          if (v23[1])
          {
            v24 = v23[1];
          }

          else
          {
            v24 = "  ";
          }

          v25 = strlen(*v23);
          v26 = snprintf(__str, 0x400uLL, "%s %s%*s %s", v24, *v23, v3 - v25, "", v23[2]);
          v27 = *(a1 + 16);
          v28 = *(v27 + v21 + 32);
          if (v28 == 2)
          {
            snprintf(&__str[v26], 0x400uLL, " [default = %zu]", *(v27 + v21 + 40));
          }

          else if (v28 == 1)
          {
            v29 = *(v27 + v21 + 40);
            if (v29)
            {
              snprintf(&__str[v26], 0x400uLL, " [default = %s]", v29);
            }
          }

          v20 += snprintf(&DYArgumentsCLIHelp_buffer[v20], 0x10000 - v20, "\t%s\n", __str);
          ++v22;
          v21 += 56;
        }

        while (v22 < *(a1 + 8));
      }

      DYArgumentsCLIHelp_buffer[v20] = 10;
      v1 = (v20 + 1);
    }

    else
    {
      v1 = 0;
    }
  }

  DYArgumentsCLIHelp_buffer[v1] = 0;
  v30 = *MEMORY[0x277D85DE8];
  return DYArgumentsCLIHelp_buffer;
}

uint64_t GPUTools::AlignmentBuffer::CopyAndAlign(GPUTools::AlignmentBuffer *this, const void *__src, size_t __n, uint64_t a4)
{
  v7 = *(this + 1);
  v8 = (a4 + *(this + 2) - 1) & -a4;
  v9 = v8 + __n;
  if (v8 + __n <= v7)
  {
    v11 = *this;
  }

  else
  {
    if (v7)
    {
      if (v9 <= 2 * v7)
      {
        v10 = 2 * v7;
      }

      else
      {
        v10 = v8 + __n;
      }

      *(this + 1) = v10;
      v11 = reallocf(*this, v10);
      *this = v11;
      if (!v11)
      {
        GPUTools::AlignmentBuffer::CopyAndAlign();
      }
    }

    else
    {
      if (v9 <= *(this + 3))
      {
        v12 = *(this + 3);
      }

      else
      {
        v12 = v8 + __n;
      }

      *(this + 1) = v12;
      v11 = malloc_type_malloc(v12, 0x9CAE7AD4uLL);
      *this = v11;
      if (!v11)
      {
        GPUTools::AlignmentBuffer::CopyAndAlign();
      }
    }

    if ((v11 & 0xF) != 0)
    {
      dy_abort("misaligned misaligned values buffer: %p, required alignment=16", v11);
    }
  }

  memcpy(&v11[v8], __src, __n);
  *(this + 2) = v9;
  return v8;
}

void *GPUTools::Statistics::Statistics(void *result, void *a2, std::vector<unsigned int>::size_type __n)
{
  result[8] = 0;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  if (!a2 || !__n)
  {
    return result;
  }

  v5 = __n - 1;
  if (__n == 1)
  {
    v6 = *a2;
    v7 = a2[1];
    result[2] = *a2;
    result[3] = v6;
    *result = v6;
    result[1] = v6;
    result[4] = v6;
    result[5] = v6;
    v7 *= 2;
    result[6] = v7 * v6;
    result[7] = v7;
    result[8] = v6;
    return result;
  }

  v8 = result;
  memset(&v65, 0, sizeof(v65));
  std::vector<unsigned int>::__append(&v65, __n);
  begin = v65.__begin_;
  v10 = v8[5];
  if (__n <= 7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  v11 = 0;
  if (v5 == -1)
  {
    v13 = 0;
    do
    {
LABEL_8:
      begin[v11] = v12;
      v14 = a2[2 * v11 + 1];
      v13 += v14;
      v10 += a2[2 * v11] * v14;
      v11 = ++v12;
    }

    while (v12 < __n);
    goto LABEL_9;
  }

  v13 = 0;
  if (HIDWORD(v5))
  {
    goto LABEL_8;
  }

  v11 = __n & 0x1FFFFFFF8;
  v12 = __n & 0xFFFFFFF8;
  v21 = 0uLL;
  v22 = v8[5];
  v23 = (a2 + 8);
  v24.i64[0] = 0x400000004;
  v24.i64[1] = 0x400000004;
  v25.i64[0] = 0x800000008;
  v25.i64[1] = 0x800000008;
  v26 = xmmword_24D6A9370;
  v27 = (v65.__begin_ + 4);
  v28 = __n & 0x1FFFFFFF8;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  do
  {
    v27[-1] = v26;
    *v27 = vaddq_s32(v26, v24);
    v35 = v23 - 8;
    v66 = vld2q_f64(v35);
    v36 = v23 - 4;
    v67 = vld2q_f64(v36);
    v37 = v23;
    v68 = vld2q_f64(v37);
    v37 += 4;
    v69 = vld2q_f64(v37);
    v32 = vaddq_s64(v67.val[1], v32);
    v31 = vaddq_s64(v66.val[1], v31);
    v33 = vaddq_s64(v68.val[1], v33);
    *&v66.val[0].f64[0] *= *&v66.val[1].f64[0];
    v34 = vaddq_s64(v69.val[1], v34);
    *&v66.val[1].f64[0] = *&v67.val[0].f64[0] * *&v67.val[1].f64[0];
    *&v66.val[0].f64[1] *= *&v66.val[1].f64[1];
    *&v66.val[1].f64[1] = *&v67.val[0].f64[1] * *&v67.val[1].f64[1];
    *&v67.val[0].f64[0] = *&v69.val[0].f64[0] * *&v69.val[1].f64[0];
    *&v67.val[0].f64[1] = *&v69.val[0].f64[1] * *&v69.val[1].f64[1];
    *&v67.val[1].f64[0] = *&v68.val[0].f64[0] * *&v68.val[1].f64[0];
    *&v67.val[1].f64[1] = *&v68.val[0].f64[1] * *&v68.val[1].f64[1];
    v21 = vaddq_s64(v21, v66.val[1]);
    v22 = vaddq_s64(v22, v66.val[0]);
    v29 = vaddq_s64(v29, v67.val[1]);
    v30 = vaddq_s64(v30, v67.val[0]);
    v26 = vaddq_s32(v26, v25);
    v23 += 16;
    v27 += 2;
    v28 -= 8;
  }

  while (v28);
  v10 = vaddvq_s64(vaddq_s64(vaddq_s64(v29, v22), vaddq_s64(v30, v21)));
  v13 = vaddvq_s64(vaddq_s64(vaddq_s64(v33, v31), vaddq_s64(v34, v32)));
  if (v11 != __n)
  {
    goto LABEL_8;
  }

LABEL_9:
  v8[5] = v10;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 0x40000000;
  v64[2] = ___ZN8GPUTools10StatisticsC2EPKNS0_7elementEm_block_invoke;
  v64[3] = &__block_descriptor_tmp_3;
  v64[4] = a2;
  qsort_b(begin, __n, 4uLL, v64);
  v15 = 0;
  v16 = 0;
  v17 = v8[5] + (v13 >> 1);
  v18 = v65.__begin_;
  *v8 = a2[2 * *v65.__begin_];
  v8[4] = a2[2 * v18[v5]];
  v8[5] = v17 / v13;
  v19 = 2 * v13;
  while (1)
  {
    v20 = v18[v16];
    v15 += 4 * a2[2 * v20 + 1];
    if (v15 == v19)
    {
      v38 = (a2[2 * v18[v16 + 1]] + a2[2 * v20]) >> 1;
      goto LABEL_22;
    }

    if (v15 > v19)
    {
      break;
    }

    if (__n == ++v16)
    {
      goto LABEL_23;
    }
  }

  v38 = a2[2 * v20];
LABEL_22:
  v8[2] = v38;
LABEL_23:
  v39 = 0;
  v40 = 0;
  while (1)
  {
    v39 += 4 * a2[2 * v18[v40] + 1];
    v41 = v39 - v13;
    if (v39 > v13)
    {
      break;
    }

    if (__n == ++v40)
    {
      v40 = __n;
      break;
    }
  }

  if (v5 >= v40)
  {
    v42 = 0;
    do
    {
      v42 += 4 * a2[2 * v18[v5] + 1];
      if (v42 > v13)
      {
        break;
      }

      --v5;
    }

    while (v5 >= v40);
  }

  else
  {
    v42 = 0;
  }

  v43 = v42 - v13;
  v44 = &v18[v40];
  v45 = *v44;
  if (v40 == v5)
  {
    v46 = &a2[2 * v45];
    v48 = *v46;
    v47 = v46[1];
    v8[3] = v48;
    v8[1] = v48;
    v19 = v43 + v41 - 4 * v47;
    v8[7] = v19;
    v49 = v19 * v48;
  }

  else
  {
    if (v41 == 4 * a2[2 * v45 + 1])
    {
      v50 = a2[2 * v45];
      v51 = (v50 + a2[2 * *(v44 - 1)]) >> 1;
    }

    else
    {
      v50 = a2[2 * v45];
      v51 = v50;
    }

    v8[1] = v51;
    v52 = &v18[v5];
    v53 = a2[2 * *v52];
    v54 = v53;
    if (v43 == 4 * a2[2 * *v52 + 1])
    {
      v54 = (a2[2 * v52[1]] + v53) >> 1;
    }

    v8[3] = v54;
    v8[7] = v19;
    v49 = v50 * v41 + v53 * v43;
    v55 = v40 + 1;
    if (v40 + 1 < v5)
    {
      v56 = v5 + ~v40;
      if (v56 < 2)
      {
        goto LABEL_44;
      }

      v57 = 0;
      v55 += v56 & 0xFFFFFFFFFFFFFFFELL;
      v58 = v44 + 2;
      v59 = v56 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v60 = &a2[2 * *(v58 - 1)];
        v49 += 4 * *v60 * v60[1];
        v57 += 4 * a2[2 * *v58] * a2[2 * *v58 + 1];
        v58 += 2;
        v59 -= 2;
      }

      while (v59);
      v49 += v57;
      if (v56 != (v56 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_44:
        v61 = v5 - v55;
        v62 = &v18[v55];
        do
        {
          v63 = *v62++;
          v49 += 4 * a2[2 * v63] * a2[2 * v63 + 1];
          --v61;
        }

        while (v61);
      }
    }
  }

  v8[6] = v49;
  v8[8] = (v49 + (v19 >> 1)) / v19;
  v65.__end_ = v18;
  operator delete(v18);
  return v8;
}

void sub_24D6942D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN8GPUTools10StatisticsC2EPKNS0_7elementEm_block_invoke(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16 * *a2);
  v5 = *(v3 + 16 * *a3);
  v6 = v4 >= v5;
  v7 = v4 > v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::vector<GPUTools::FB::Fbuf>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * __n;
    bzero(v11, 4 * __n);
    memcpy(0, begin, v6);
    this->__begin_ = 0;
    this->__end_ = &v11[v12];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t GPUTools::SM::DecodeArgumentToString(std::string *a1, uint64_t a2, int a3, unsigned int a4)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
  v9 = *(a2 + 22);
  if (v9)
  {
    if (*(a2 + 20) <= a4)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
LABEL_3:
    if (a3)
    {
      goto LABEL_46;
    }

    v10 = "";
LABEL_12:
    MEMORY[0x253030790](a1, v10);
    goto LABEL_46;
  }

  v11 = *a2;
  if (!*a2)
  {
    if (a3)
    {
      std::string::push_back(a1, 32);
      std::string::append(a1, "null");
      goto LABEL_46;
    }

    v10 = "null";
    goto LABEL_12;
  }

  switch(*(a2 + 8))
  {
    case 1:
    case 2:
      LOBYTE(__p[0]) = v11[a4];
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, __p, 1);
      goto LABEL_35;
    case 3:
      MEMORY[0x253030870](&v25, *&v11[2 * a4]);
      goto LABEL_35;
    case 4:
      MEMORY[0x253030880](&v25, *&v11[2 * a4]);
      goto LABEL_35;
    case 5:
      v12 = *&v11[4 * a4];
      if (*(a2 + 12) == 19)
      {
        v8.n128_f64[0] = vcvtd_n_f64_s32(v12, 0x10uLL);
        goto LABEL_22;
      }

      MEMORY[0x253030830](&v25, v12);
      goto LABEL_35;
    case 6:
      v14 = *&v11[4 * a4];
      goto LABEL_34;
    case 7:
      MEMORY[0x253030890](&v25, *&v11[8 * a4]);
      goto LABEL_35;
    case 8:
      MEMORY[0x2530308A0](&v25, *&v11[8 * a4]);
      goto LABEL_35;
    case 9:
      v15 = *&v11[4 * a4];
      std::ostream::operator<<();
      goto LABEL_35;
    case 0xA:
      v8.n128_u64[0] = *&v11[8 * a4];
LABEL_22:
      MEMORY[0x253030810](&v25, v8);
      goto LABEL_35;
    case 0xB:
      MEMORY[0x253030850](&v25, *&v11[8 * a4]);
      goto LABEL_35;
    case 0xC:
      MEMORY[0x253030860](&v25, *&v11[8 * a4]);
      goto LABEL_35;
    case 0xD:
      if ((v9 & 0x10) != 0)
      {
        v14 = GPUTools::FD::Argument::ViewAsGLObjectName(a2);
LABEL_34:
        MEMORY[0x253030840](&v25, v14);
      }

      else if ((v9 & 8) != 0 || *(a2 + 12) == 14)
      {
        if (v9)
        {
          v19 = GPUTools::FD::Argument::ViewAsCStringArray(a2);
          v20 = *v19;
          if ((*(v19 + 22) & 0x40) != 0)
          {
            v21 = (*(v20 + 4 * a4) + v20);
          }

          else
          {
            v21 = *(v20 + 8 * a4);
          }

          v22 = strlen(v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, v21, v22);
        }

        else
        {
          v13 = strlen(*a2);
LABEL_28:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, v11, v13);
        }
      }

LABEL_35:
      if (a3)
      {
        std::string::append(a1, " ");
        std::stringbuf::str();
        if (v24 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        std::string::append(a1, v16);
      }

      else
      {
        std::stringbuf::str();
        if (v24 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        MEMORY[0x253030790](a1, v17);
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      break;
    default:
      v11 = "UnknownParameterType";
      v13 = 20;
      goto LABEL_28;
  }

LABEL_46:
  v25 = *MEMORY[0x277D82828];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x277D82828] + 24);
  v26 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  return MEMORY[0x253030940](&v29);
}

void sub_24D694850(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8, MEMORY[0x277D82828]);
  MEMORY[0x253030940](va);
  _Unwind_Resume(a1);
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

void sub_24D694A18(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x253030940](v1);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::SM::__DYDecodeArgumentDispatch(std::string *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = a2 + 24 * a3;
  result = GPUTools::SM::DecodeArgumentToString(a1, v6 + 48, 0, 0);
  if (a4 >= 2)
  {
    v8 = 1;
    do
    {
      result = GPUTools::SM::DecodeArgumentToString(a1, v6 + 48, 1, v8++);
    }

    while (a4 != v8);
  }

  return result;
}

float GPUTools::SM::__DYDecodeArgumentDispatch(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  memset(v7, 0, sizeof(v7));
  GPUTools::SM::DYDecodeArgumentToVecNType<GPUTools::SM::VecN<float,16u>>(v7, a2, a3, a4, a5);
  return DYMtxSetColumnMajor(a1, v7);
}

{
  v8 = 0.0;
  v7 = 0;
  GPUTools::SM::DYDecodeArgumentToVecNType<GPUTools::SM::VecN<float,3u>>(&v7, a2, a3, a4, a5);
  *a1 = v7;
  result = v8;
  *(a1 + 8) = v8;
  return result;
}

void GPUTools::SM::DYDecodeArgumentToVecNType<GPUTools::SM::VecN<float,16u>>(_DWORD *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v6 = a2 + 48;
  v7 = a2 + 48 + 24 * a3;
  if (*(v7 + 22))
  {
    v11 = *(v7 + 20);
    if (v11 >= a4)
    {
      v11 = a4;
    }

    if (v11 >= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      do
      {
        *a1++ = GPUTools::FD::Argument::ViewAsScalarArray<float>(v7, a5++).n128_u32[0];
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v8 = a3;
    v9 = *(a2 + 10) - a3;
    if (v9 >= a4)
    {
      v9 = a4;
    }

    if (v9)
    {
      if (v9 >= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      do
      {
        *a1++ = GPUTools::FD::Argument::ViewAsScalarArray<float>(v6 + 24 * v8++, 0).n128_u32[0];
        --v10;
      }

      while (v10);
    }
  }
}

double GPUTools::SM::__DYDecodeArgumentDispatch(_OWORD *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = 0uLL;
  GPUTools::SM::DYDecodeArgumentToVecNType<GPUTools::SM::VecN<float,4u>>(&v7, a2, a3, a4, a5);
  result = *&v7;
  *a1 = v7;
  return result;
}

void GPUTools::SM::DYDecodeArgumentToVecNType<GPUTools::SM::VecN<float,4u>>(_DWORD *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v6 = a2 + 48;
  v7 = a2 + 48 + 24 * a3;
  if (*(v7 + 22))
  {
    v11 = *(v7 + 20);
    if (v11 >= a4)
    {
      v11 = a4;
    }

    if (v11 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      do
      {
        *a1++ = GPUTools::FD::Argument::ViewAsScalarArray<float>(v7, a5++).n128_u32[0];
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v8 = a3;
    v9 = *(a2 + 10) - a3;
    if (v9 >= a4)
    {
      v9 = a4;
    }

    if (v9)
    {
      if (v9 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v9;
      }

      do
      {
        *a1++ = GPUTools::FD::Argument::ViewAsScalarArray<float>(v6 + 24 * v8++, 0).n128_u32[0];
        --v10;
      }

      while (v10);
    }
  }
}

void GPUTools::SM::DYDecodeArgumentToVecNType<GPUTools::SM::VecN<float,3u>>(_DWORD *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v6 = a2 + 48;
  v7 = a2 + 48 + 24 * a3;
  if (*(v7 + 22))
  {
    v11 = *(v7 + 20);
    if (v11 >= a4)
    {
      v11 = a4;
    }

    if (v11 >= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      do
      {
        *a1++ = GPUTools::FD::Argument::ViewAsScalarArray<float>(v7, a5++).n128_u32[0];
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v8 = a3;
    v9 = *(a2 + 10) - a3;
    if (v9 >= a4)
    {
      v9 = a4;
    }

    if (v9)
    {
      if (v9 >= 3)
      {
        v10 = 3;
      }

      else
      {
        v10 = v9;
      }

      do
      {
        *a1++ = GPUTools::FD::Argument::ViewAsScalarArray<float>(v6 + 24 * v8++, 0).n128_u32[0];
        --v10;
      }

      while (v10);
    }
  }
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

__n128 GPUTools::FD::Argument::ViewAsScalarArray<float>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 22);
  if (v2)
  {
    result.n128_u32[0] = 0;
    if (*(a1 + 20) <= a2)
    {
      return result;
    }
  }

  else
  {
    result.n128_u32[0] = 0;
    if (a2)
    {
      return result;
    }
  }

  switch(*(a1 + 8))
  {
    case 1:
      v5 = *(*a1 + a2);
      goto LABEL_17;
    case 2:
      result.n128_u8[0] = *(*a1 + a2);
      goto LABEL_21;
    case 3:
      v5 = *(*a1 + 2 * a2);
      goto LABEL_17;
    case 4:
      result.n128_u16[0] = *(*a1 + 2 * a2);
      goto LABEL_21;
    case 5:
      v5 = *(*a1 + 4 * a2);
      if (*(a1 + 12) == 19)
      {
        v4 = vcvtd_n_f64_s32(v5, 0x10uLL);
LABEL_13:
        result.n128_f32[0] = v4;
      }

      else
      {
LABEL_17:
        result.n128_f32[0] = v5;
      }

      break;
    case 6:
      result.n128_u32[0] = *(*a1 + 4 * a2);
LABEL_21:
      result.n128_f32[0] = result.n128_u32[0];
      return result;
    case 7:
    case 0xB:
      result.n128_f32[0] = *(*a1 + 8 * a2);
      return result;
    case 8:
    case 0xC:
      result.n128_f32[0] = *(*a1 + 8 * a2);
      return result;
    case 9:
      result.n128_u32[0] = *(*a1 + 4 * a2);
      return result;
    case 0xA:
      v4 = *(*a1 + 8 * a2);
      goto LABEL_13;
    case 0xD:
      if ((v2 & 0x10) != 0)
      {
        result.n128_f32[0] = GPUTools::FD::Argument::ViewAsGLObjectName(a1);
      }

      return result;
    default:
      return result;
  }

  return result;
}

unint64_t handle_exit(void)
{
  result = [_gWeakAppClients count];
  if (result)
  {
    v1 = 0;
    v2 = 0;
    do
    {
      v3 = [_gWeakAppClients pointerAtIndex:v1];
      [v3 atexit];

      v1 = ++v2;
      result = [_gWeakAppClients count];
    }

    while (result > v2);
  }

  return result;
}

uint64_t GPUTools::FB::Stream::Flush(GPUTools::FB::Stream *this)
{
  for (i = (this + 56); atomic_exchange(i, 1u) == 1; i = (this + 56))
  {
      ;
    }
  }

  v3 = *(this + 5);
  result = (*(*(this + 5) + 16))();
  *(this + 2) = *(this + 1) + 8;
  *(this + 60) = 1;
  atomic_store(0, this + 14);
  return result;
}

uint64_t std::unordered_map<void const*,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,std::string> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,std::string> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__construct_node_hash<std::pair<void const* const,std::string> const&>();
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D697A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D697AF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unordered_map<unsigned long long,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::string> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::string> const&>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__construct_node_hash<std::pair<unsigned long long const,std::string> const&>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24D697E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D697EE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t dy_dispatch(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11)
{
  switch(a3)
  {
    case 2:
      v11 = *(a1 + 2736);
      goto LABEL_564;
    case 3:
      v107 = *(a1 + 8);
      goto LABEL_531;
    case 6:
      v12 = *(a1 + 4784);
      goto LABEL_520;
    case 9:
      v12 = *(a1 + 5096);
      goto LABEL_574;
    case 10:
      v11 = *(a1 + 5568);
      goto LABEL_564;
    case 11:
      v13 = *(a1 + 5040);
      goto LABEL_494;
    case 12:
      v12 = *(a1 + 5136);
      goto LABEL_574;
    case 13:
      v13 = *(a1 + 5560);
      goto LABEL_559;
    case 15:
      v40 = *(a1 + 5544);
      goto LABEL_412;
    case 17:
      v12 = *(a1 + 5376);
      goto LABEL_574;
    case 19:
      v12 = *(a1 + 5328);
      goto LABEL_574;
    case 20:
      v12 = *(a1 + 40);
      goto LABEL_574;
    case 23:
      v23 = *(a1 + 2696);
      goto LABEL_474;
    case 24:
      v11 = *(a1 + 2704);
      goto LABEL_564;
    case 25:
      v12 = *(a1 + 3664);
      goto LABEL_574;
    case 26:
      v12 = *(a1 + 56);
      goto LABEL_574;
    case 27:
      v15 = *(a1 + 2688);
      goto LABEL_507;
    case 28:
      v37 = *(a1 + 6040);
      v62 = **(a4 + 8);
      v63 = **(a4 + 16);
      v64 = **(a4 + 24);
      v65 = **(a4 + 32);
      v66 = **(a4 + 40);
      v67 = **(a4 + 48);
      v68 = **(a4 + 56);
      v69 = **(a4 + 64);
      v95 = **(a4 + 72);
      HIDWORD(v153) = **(a4 + 72);
      LODWORD(v154) = **(a4 + 80);
      goto LABEL_390;
    case 29:
      v15 = *(a1 + 5168);
      v24 = **(a4 + 8);
      v17 = **(a4 + 16);
      v25 = *(a4 + 32);
      v19 = **(a4 + 24);
      v20 = *v25;
      v21 = a2;
      v22 = v24;

      return v15(v21, v22, v17, v19, v20);
    case 31:
      v15 = *(a1 + 5176);
      v16 = **(a4 + 8);
      v17 = **(a4 + 16);
      v18 = *(a4 + 32);
      v19 = **(a4 + 24);
      v20 = *v18;
      v21 = a2;
      v22 = v16;

      return v15(v21, v22, v17, v19, v20);
    case 34:
      result = (*(a1 + 5400))(a2, **(a4 + 8));
      *a5 = result;
      return result;
    case 36:
      v11 = *(a1 + 80);
      goto LABEL_564;
    case 38:
      v23 = *(a1 + 96);
      goto LABEL_474;
    case 43:
      v11 = *(a1 + 120);
      goto LABEL_564;
    case 44:
      v11 = *(a1 + 2728);
      goto LABEL_564;
    case 66:
      v23 = *(a1 + 296);
      goto LABEL_474;
    case 72:
      v15 = *(a1 + 344);
      goto LABEL_550;
    case 78:
      v15 = *(a1 + 392);
LABEL_550:
      v142 = **(a4 + 8);
      v17 = **(a4 + 16);
      v151 = *(a4 + 32);
      v19 = **(a4 + 24);
      v20 = *v151;
      goto LABEL_508;
    case 81:
      v15 = *(a1 + 408);
      goto LABEL_545;
    case 93:
      v11 = *(a1 + 4768);
      goto LABEL_527;
    case 95:
      return (*(a1 + 3040))(a2, **(a4 + 8), **(a4 + 16), **(a4 + 24), **(a4 + 32), **(a4 + 40), **(a4 + 48), **(a4 + 56), **(a4 + 64));
    case 96:
      v37 = *(a1 + 3032);
      goto LABEL_119;
    case 98:
      v37 = *(a1 + 3064);
      goto LABEL_119;
    case 99:
      v37 = *(a1 + 3056);
      goto LABEL_388;
    case 112:
      v37 = *(a1 + 432);
      goto LABEL_363;
    case 114:
      v37 = *(a1 + 448);
LABEL_363:
      v62 = **(a4 + 8);
      v63 = **(a4 + 16);
      v64 = **(a4 + 24);
      v65 = **(a4 + 32);
      v66 = **(a4 + 40);
      v67 = **(a4 + 48);
      v68 = **(a4 + 56);
      v69 = **(a4 + 64);
      goto LABEL_390;
    case 115:
      v37 = *(a1 + 3520);
      v62 = **(a4 + 8);
      v63 = **(a4 + 16);
      v64 = **(a4 + 24);
      v65 = **(a4 + 32);
      v66 = **(a4 + 40);
      v67 = **(a4 + 48);
      v68 = **(a4 + 56);
      v69 = **(a4 + 64);
      v70 = **(a4 + 72);
      goto LABEL_389;
    case 116:
      result = (*(a1 + 4776))(a2);
      *a5 = result;
      return result;
    case 117:
      v14 = *(a1 + 4752);
      goto LABEL_212;
    case 118:
      v11 = *(a1 + 456);
      goto LABEL_564;
    case 119:
      v12 = *(a1 + 5144);
      goto LABEL_570;
    case 120:
      v12 = *(a1 + 3712);
      goto LABEL_570;
    case 121:
      v12 = *(a1 + 5384);
      goto LABEL_570;
    case 123:
      v11 = *(a1 + 4728);
      goto LABEL_527;
    case 125:
      v12 = *(a1 + 5080);
      goto LABEL_570;
    case 126:
      v12 = *(a1 + 5336);
      goto LABEL_570;
    case 127:
      v12 = *(a1 + 472);
      goto LABEL_570;
    case 130:
      v11 = *(a1 + 480);
      goto LABEL_564;
    case 131:
      v11 = *(a1 + 488);
      v141 = **(a4 + 8);
      goto LABEL_565;
    case 133:
      v12 = *(a1 + 4744);
LABEL_520:
      v106 = **(a4 + 16);
      v144 = a2;
      v145 = **(a4 + 8);

      return v12(v144, v145, v106);
    case 134:
      v11 = *(a1 + 504);
      goto LABEL_564;
    case 135:
      v11 = *(a1 + 512);
      goto LABEL_564;
    case 138:
      v11 = *(a1 + 4104);
      goto LABEL_564;
    case 139:
      v13 = *(a1 + 520);
      goto LABEL_559;
    case 141:
      v12 = *(a1 + 5232);
      goto LABEL_570;
    case 143:
      v15 = *(a1 + 536);
      goto LABEL_545;
    case 146:
      v52 = *(a1 + 3240);
      v53 = **(a4 + 8);
      v54 = **(a4 + 16);
      v55 = **(a4 + 24);
      v56 = **(a4 + 32);
      goto LABEL_217;
    case 151:
      v11 = *(a1 + 576);
      goto LABEL_564;
    case 152:
      v11 = *(a1 + 584);
      goto LABEL_564;
    case 155:
      v11 = *(a1 + 4096);
      goto LABEL_564;
    case 159:
      v11 = *(a1 + 5104);
      goto LABEL_564;
    case 160:
      v80 = *(a1 + 5576);
      v81 = a2;

      return v80(v81);
    case 175:
      v80 = *(a1 + 712);
      v81 = a2;

      return v80(v81);
    case 176:
      v11 = *(a1 + 3744);
      goto LABEL_564;
    case 177:
      v12 = *(a1 + 3760);
      goto LABEL_574;
    case 179:
      v80 = *(a1 + 720);
      v81 = a2;

      return v80(v81);
    case 188:
      v107 = *(a1 + 728);
      goto LABEL_531;
    case 189:
      v12 = *(a1 + 736);
      goto LABEL_570;
    case 192:
      v15 = *(a1 + 5432);
      goto LABEL_507;
    case 194:
      v40 = *(a1 + 5416);
      goto LABEL_553;
    case 198:
      v40 = *(a1 + 5528);
      goto LABEL_553;
    case 199:
      v11 = *(a1 + 760);
      goto LABEL_564;
    case 201:
      v12 = *(a1 + 5152);
      goto LABEL_570;
    case 202:
      v12 = *(a1 + 3704);
      goto LABEL_570;
    case 203:
      v12 = *(a1 + 5392);
      goto LABEL_570;
    case 206:
      v12 = *(a1 + 5072);
      goto LABEL_570;
    case 207:
      v12 = *(a1 + 5344);
      goto LABEL_570;
    case 208:
      v12 = *(a1 + 784);
      goto LABEL_570;
    case 210:
      v11 = *(a1 + 5448);
      goto LABEL_564;
    case 211:
      v28 = *(a1 + 5048);
      goto LABEL_461;
    case 212:
      v28 = *(a1 + 5008);
LABEL_461:
      v29 = **(a4 + 16);
      v30 = **(a4 + 32);
      v31 = **(a4 + 40);
      v32 = **(a4 + 48);
      v33 = **(a4 + 56);
      v34 = a2;
      v35 = **(a4 + 8);
      v36 = **(a4 + 24);

      goto LABEL_463;
    case 214:
      v15 = *(a1 + 6072);
      goto LABEL_382;
    case 215:
      v41 = *(a1 + 5056);
      goto LABEL_479;
    case 217:
      v12 = *(a1 + 792);
      goto LABEL_570;
    case 218:
      v13 = *(a1 + 5208);
      goto LABEL_538;
    case 219:
      v13 = *(a1 + 5216);
      goto LABEL_538;
    case 230:
      v13 = *(a1 + 3080);
      goto LABEL_538;
    case 235:
      result = (*(a1 + 816))(a2);
      *a5 = result;
      return result;
    case 238:
      v12 = *(a1 + 824);
      goto LABEL_570;
    case 239:
      v115 = *(a1 + 5952);
      goto LABEL_455;
    case 240:
      v15 = *(a1 + 5440);
      goto LABEL_545;
    case 246:
      v13 = *(a1 + 5600);
      goto LABEL_538;
    case 247:
      v12 = *(a1 + 832);
      goto LABEL_570;
    case 248:
      v13 = *(a1 + 840);
      goto LABEL_538;
    case 253:
      v13 = *(a1 + 880);
      goto LABEL_538;
    case 264:
      v12 = *(a1 + 920);
      goto LABEL_570;
    case 268:
      v15 = *(a1 + 5280);
      goto LABEL_382;
    case 272:
      v13 = *(a1 + 5264);
      goto LABEL_538;
    case 274:
      v13 = *(a1 + 5120);
      goto LABEL_538;
    case 275:
      v13 = *(a1 + 5128);
      goto LABEL_538;
    case 276:
      v13 = *(a1 + 5112);
      goto LABEL_538;
    case 277:
      v13 = *(a1 + 5360);
      goto LABEL_538;
    case 279:
      v15 = *(a1 + 5272);
      goto LABEL_382;
    case 280:
      v15 = *(a1 + 5032);
      goto LABEL_436;
    case 281:
      v13 = *(a1 + 5256);
      goto LABEL_538;
    case 282:
      v14 = *(a1 + 936);
LABEL_212:
      result = v14(a2, **(a4 + 8));
      *a5 = result;
      return result;
    case 283:
      v13 = *(a1 + 944);
      goto LABEL_538;
    case 284:
      v13 = *(a1 + 952);
      goto LABEL_538;
    case 288:
      v40 = *(a1 + 984);
      goto LABEL_249;
    case 290:
      v15 = *(a1 + 1000);
      goto LABEL_545;
    case 294:
      v13 = *(a1 + 1008);
      goto LABEL_538;
    case 295:
      v13 = *(a1 + 1016);
      goto LABEL_538;
    case 296:
      v28 = *(a1 + 5592);
      v29 = **(a4 + 16);
      v30 = **(a4 + 32);
      v31 = **(a4 + 40);
      v32 = **(a4 + 48);
      v33 = **(a4 + 56);
      v34 = a2;
      v35 = **(a4 + 8);
      v36 = **(a4 + 24);

      goto LABEL_463;
    case 299:
      v41 = *(a1 + 5000);
LABEL_479:
      result = v41(a2, **(a4 + 8), **(a4 + 16));
      *a5 = result;
      return result;
    case 300:
      v13 = *(a1 + 5016);
      goto LABEL_494;
    case 301:
      v13 = *(a1 + 5024);
      goto LABEL_494;
    case 302:
      v13 = *(a1 + 5936);
      goto LABEL_538;
    case 303:
      v13 = *(a1 + 5856);
      goto LABEL_538;
    case 304:
      v13 = *(a1 + 5864);
      goto LABEL_538;
    case 305:
      v13 = *(a1 + 4136);
      goto LABEL_538;
    case 307:
      v13 = *(a1 + 4120);
      goto LABEL_538;
    case 308:
      v13 = *(a1 + 4128);
      goto LABEL_538;
    case 309:
      v12 = *(a1 + 1024);
      goto LABEL_574;
    case 325:
      v27 = *(a1 + 5160);
      goto LABEL_535;
    case 326:
      v27 = *(a1 + 1144);
      goto LABEL_535;
    case 328:
      v27 = *(a1 + 3728);
      goto LABEL_535;
    case 329:
      v27 = *(a1 + 5368);
      goto LABEL_535;
    case 331:
      v27 = *(a1 + 5248);
      goto LABEL_535;
    case 333:
      v27 = *(a1 + 5088);
      goto LABEL_535;
    case 334:
      v27 = *(a1 + 5320);
      goto LABEL_535;
    case 335:
      v27 = *(a1 + 5240);
      goto LABEL_535;
    case 336:
      v27 = *(a1 + 1160);
      goto LABEL_535;
    case 339:
      v107 = *(a1 + 1168);
      goto LABEL_531;
    case 340:
      v12 = *(a1 + 1176);
      goto LABEL_570;
    case 343:
      v43 = *(a1 + 1200);
      goto LABEL_483;
    case 344:
      v13 = *(a1 + 1208);
      goto LABEL_538;
    case 348:
      v38 = *(a1 + 1240);
      goto LABEL_457;
    case 349:
      v11 = *(a1 + 4792);
      goto LABEL_527;
    case 351:
      v80 = *(a1 + 1256);
      v81 = a2;

      return v80(v81);
    case 353:
      v11 = *(a1 + 1272);
      goto LABEL_527;
    case 358:
      v11 = *(a1 + 1288);
      goto LABEL_564;
    case 363:
      v39 = *(a1 + 5192);
      goto LABEL_194;
    case 372:
      v43 = *(a1 + 1360);
      goto LABEL_483;
    case 373:
      v13 = *(a1 + 1368);
      goto LABEL_538;
    case 376:
      v11 = *(a1 + 1392);
      goto LABEL_564;
    case 379:
      v11 = *(a1 + 1408);
      goto LABEL_527;
    case 412:
      v46 = *(a4 + 8);
      a6.n128_u32[0] = **(a4 + 16);
      v47 = *(a4 + 32);
      a7.n128_u32[0] = **(a4 + 24);
      v48 = *(a1 + 2952);
      goto LABEL_417;
    case 423:
      v51 = *(a1 + 1456);
      goto LABEL_451;
    case 429:
      v13 = *(a1 + 1504);
      goto LABEL_538;
    case 438:
      v12 = *(a1 + 1560);
      goto LABEL_574;
    case 444:
      v107 = *(a1 + 4320);
      goto LABEL_531;
    case 445:
      v12 = *(a1 + 4328);
      goto LABEL_570;
    case 448:
      v38 = *(a1 + 1592);
      goto LABEL_457;
    case 450:
      v26 = *(a1 + 1608);
      goto LABEL_465;
    case 454:
      v80 = *(a1 + 1640);
      v81 = a2;

      return v80(v81);
    case 467:
      v13 = *(a1 + 5512);
      goto LABEL_559;
    case 471:
      v80 = *(a1 + 1680);
      v81 = a2;

      return v80(v81);
    case 497:
      v11 = *(a1 + 1888);
      goto LABEL_564;
    case 498:
      v28 = *(a1 + 1896);
      v29 = **(a4 + 16);
      v30 = **(a4 + 32);
      v31 = **(a4 + 40);
      v32 = **(a4 + 48);
      v33 = **(a4 + 56);
      v34 = a2;
      v35 = **(a4 + 8);
      v36 = **(a4 + 24);

      goto LABEL_463;
    case 508:
      v15 = *(a1 + 5352);
      goto LABEL_507;
    case 509:
      v40 = *(a1 + 6048);
      goto LABEL_553;
    case 513:
      v23 = *(a1 + 1984);
LABEL_474:
      a6.n128_u32[0] = **(a4 + 8);
      a7.n128_u32[0] = **(a4 + 16);
      a8.n128_u32[0] = **(a4 + 24);
      a9.n128_u32[0] = **(a4 + 32);

      return v23(a2, a6, a7, a8, a9);
    case 514:
      v107 = *(a1 + 3672);
      a6.n128_u32[0] = **(a4 + 8);
      v130 = a2;
      v131 = **(a4 + 16);

      return v107(v130, v131, a6);
    case 517:
      v51 = *(a1 + 2000);
      goto LABEL_451;
    case 518:
      v15 = *(a1 + 2008);
      goto LABEL_507;
    case 538:
      v11 = *(a1 + 3720);
      goto LABEL_564;
    case 539:
      v11 = *(a1 + 2024);
      goto LABEL_564;
    case 540:
      v15 = *(a1 + 4760);
LABEL_436:
      v128 = **(a4 + 8);
      v17 = **(a4 + 16);
      v129 = *(a4 + 32);
      v19 = **(a4 + 24);
      v20 = *v129;
      v21 = a2;
      v22 = v128;

      return v15(v21, v22, v17, v19, v20);
    case 541:
      v13 = *(a1 + 2032);
      goto LABEL_559;
    case 542:
      v15 = *(a1 + 5288);
      goto LABEL_507;
    case 544:
      v11 = *(a1 + 2040);
      goto LABEL_564;
    case 545:
      v12 = *(a1 + 5296);
      goto LABEL_574;
    case 546:
      v13 = *(a1 + 2048);
      goto LABEL_559;
    case 547:
      v15 = *(a1 + 4688);
      goto LABEL_507;
    case 548:
      v27 = *(a1 + 3736);
      goto LABEL_535;
    case 549:
      result = (*(a1 + 3752))(a2, **(a4 + 8), **(a4 + 16));
      *a5 = result;
      return result;
    case 582:
      v15 = *(a1 + 2312);
      goto LABEL_545;
    case 583:
      v43 = *(a1 + 2320);
      goto LABEL_483;
    case 584:
      v13 = *(a1 + 2328);
      goto LABEL_538;
    case 585:
      v13 = *(a1 + 2336);
      goto LABEL_559;
    case 586:
      v13 = *(a1 + 2344);
      goto LABEL_538;
    case 594:
      v37 = *(a1 + 2408);
      goto LABEL_119;
    case 595:
      v37 = *(a1 + 3504);
      v62 = **(a4 + 8);
      v63 = **(a4 + 16);
      v64 = **(a4 + 24);
      v65 = **(a4 + 32);
      v66 = **(a4 + 40);
      v67 = **(a4 + 48);
      v68 = **(a4 + 56);
      v69 = **(a4 + 64);
      v70 = **(a4 + 72);
      v154 = **(a4 + 80);
      goto LABEL_389;
    case 598:
      v43 = *(a1 + 2416);
      goto LABEL_483;
    case 599:
      v13 = *(a1 + 2424);
      goto LABEL_538;
    case 600:
      v13 = *(a1 + 2432);
      goto LABEL_559;
    case 601:
      v13 = *(a1 + 2440);
      goto LABEL_538;
    case 603:
      v37 = *(a1 + 2456);
LABEL_119:
      v62 = **(a4 + 8);
      v63 = **(a4 + 16);
      v64 = **(a4 + 24);
      v65 = **(a4 + 32);
      v66 = **(a4 + 40);
      v67 = **(a4 + 48);
      v68 = **(a4 + 56);
      v69 = **(a4 + 64);
      v154 = **(a4 + 72);
      goto LABEL_390;
    case 604:
      v37 = *(a1 + 3512);
LABEL_388:
      v62 = **(a4 + 8);
      v63 = **(a4 + 16);
      v64 = **(a4 + 24);
      v65 = **(a4 + 32);
      v66 = **(a4 + 40);
      v67 = **(a4 + 48);
      v68 = **(a4 + 56);
      v69 = **(a4 + 64);
      v70 = **(a4 + 72);
      v155 = **(a4 + 88);
      LODWORD(v154) = **(a4 + 80);
LABEL_389:
      HIDWORD(v153) = v70;
LABEL_390:
      LODWORD(v153) = v69;
      return v37(a2, v62, v63, v64, v65, v66, v67, v68, v153, v154, v155);
    case 606:
      v15 = *(a1 + 5584);
      goto LABEL_330;
    case 608:
      v51 = *(a1 + 2472);
LABEL_451:
      a6.n128_u32[0] = **(a4 + 8);
      a7.n128_u32[0] = **(a4 + 16);
      a8.n128_u32[0] = **(a4 + 24);

      return v51(a2, a6, a7, a8);
    case 609:
      v107 = *(a1 + 4816);
      goto LABEL_531;
    case 610:
      v13 = *(a1 + 4880);
      goto LABEL_538;
    case 611:
      v12 = *(a1 + 4848);
      goto LABEL_574;
    case 612:
      v13 = *(a1 + 4912);
      goto LABEL_538;
    case 613:
      v12 = *(a1 + 5872);
      goto LABEL_574;
    case 614:
      v13 = *(a1 + 5904);
      goto LABEL_538;
    case 615:
      v44 = *(a1 + 4824);
      goto LABEL_126;
    case 616:
      v13 = *(a1 + 4888);
      goto LABEL_538;
    case 617:
      v13 = *(a1 + 4856);
      goto LABEL_559;
    case 618:
      v13 = *(a1 + 4920);
      goto LABEL_538;
    case 619:
      v13 = *(a1 + 5880);
      goto LABEL_559;
    case 620:
      v13 = *(a1 + 5912);
      goto LABEL_538;
    case 621:
      v116 = *(a1 + 4832);
      goto LABEL_432;
    case 622:
      v13 = *(a1 + 4896);
      goto LABEL_538;
    case 623:
      v15 = *(a1 + 4864);
      goto LABEL_507;
    case 624:
      v13 = *(a1 + 4928);
      goto LABEL_538;
    case 625:
      v15 = *(a1 + 5888);
      goto LABEL_507;
    case 626:
      v13 = *(a1 + 5920);
      goto LABEL_538;
    case 627:
      v46 = *(a4 + 8);
      a6.n128_u32[0] = **(a4 + 16);
      v47 = *(a4 + 32);
      a7.n128_u32[0] = **(a4 + 24);
      v48 = *(a1 + 4840);
      goto LABEL_417;
    case 628:
      v13 = *(a1 + 4904);
      goto LABEL_538;
    case 629:
      v40 = *(a1 + 4872);
      goto LABEL_553;
    case 630:
      v13 = *(a1 + 4936);
      goto LABEL_538;
    case 631:
      v40 = *(a1 + 5896);
      goto LABEL_553;
    case 632:
      v13 = *(a1 + 5928);
      goto LABEL_538;
    case 634:
      v15 = *(a1 + 4944);
      goto LABEL_447;
    case 635:
      v15 = *(a1 + 5992);
      goto LABEL_447;
    case 636:
      v15 = *(a1 + 6008);
      goto LABEL_447;
    case 637:
      v15 = *(a1 + 4952);
      goto LABEL_447;
    case 638:
      v15 = *(a1 + 6000);
      goto LABEL_447;
    case 639:
      v15 = *(a1 + 6024);
      goto LABEL_447;
    case 640:
      v15 = *(a1 + 4960);
      goto LABEL_447;
    case 641:
      v15 = *(a1 + 6016);
      goto LABEL_447;
    case 642:
      v15 = *(a1 + 6032);
LABEL_447:
      v133 = **(a4 + 8);
      v17 = **(a4 + 16);
      v134 = *(a4 + 32);
      v19 = **(a4 + 24);
      goto LABEL_546;
    case 644:
      v27 = *(a1 + 5200);
      goto LABEL_535;
    case 645:
      v11 = *(a1 + 4800);
      goto LABEL_527;
    case 646:
      v11 = *(a1 + 4808);
      goto LABEL_527;
    case 675:
      v107 = *(a1 + 3808);
LABEL_531:
      a6.n128_u32[0] = **(a4 + 16);
      v130 = a2;
      v131 = **(a4 + 8);

      return v107(v130, v131, a6);
    case 676:
      v12 = *(a1 + 3912);
      goto LABEL_570;
    case 681:
      v44 = *(a1 + 3832);
LABEL_126:
      a6.n128_u32[0] = **(a4 + 16);
      a7.n128_u32[0] = **(a4 + 24);
      v78 = **(a4 + 8);

      return v44(a2, v78, a6, a7);
    case 682:
      v12 = *(a1 + 3936);
      goto LABEL_570;
    case 687:
      v116 = *(a1 + 3856);
LABEL_432:
      a6.n128_u32[0] = **(a4 + 16);
      a7.n128_u32[0] = **(a4 + 24);
      a8.n128_u32[0] = **(a4 + 32);
      v127 = **(a4 + 8);

      return v116(a2, v127, a6, a7, a8);
    case 688:
      v12 = *(a1 + 3960);
      goto LABEL_570;
    case 701:
      v46 = *(a4 + 8);
      a6.n128_u32[0] = **(a4 + 16);
      v47 = *(a4 + 32);
      a7.n128_u32[0] = **(a4 + 24);
      v48 = *(a1 + 3880);
LABEL_417:
      a8.n128_u32[0] = *v47;
      a9.n128_u32[0] = **(a4 + 40);
      v124 = *v46;

      return v48(a2, v124, a6, a7, a8, a9);
    case 702:
      v12 = *(a1 + 4024);
      goto LABEL_570;
    case 722:
      v40 = *(a1 + 5712);
      goto LABEL_553;
    case 723:
      v12 = *(a1 + 5776);
      goto LABEL_570;
    case 726:
      v40 = *(a1 + 5744);
      goto LABEL_553;
    case 727:
      v12 = *(a1 + 5808);
      goto LABEL_570;
    case 729:
      v40 = *(a1 + 5848);
      goto LABEL_249;
    case 730:
      v52 = *(a1 + 4088);
      v53 = **(a4 + 8);
      v54 = **(a4 + 16);
      v55 = **(a4 + 24);
      v56 = **(a4 + 32);
LABEL_217:
      v97 = **(a4 + 40);
      v98 = **(a4 + 48);
      v99 = a2;
      v100 = v53;
      v101 = v55;

      return v52(v99, v100, v54, v101, v56, v97, v98);
    case 732:
      v15 = *(a1 + 2672);
      goto LABEL_545;
    case 733:
      v15 = *(a1 + 2680);
      goto LABEL_507;
    case 759:
      v12 = *(a1 + 7744);
      goto LABEL_574;
    case 760:
      v15 = *(a1 + 7752);
      goto LABEL_507;
    case 761:
      v38 = *(a1 + 7024);
LABEL_457:
      a6.n128_u32[0] = **(a4 + 8);

      return v38(a2, a6);
    case 762:
      v11 = *(a1 + 7760);
      goto LABEL_564;
    case 763:
      v12 = *(a1 + 7768);
      goto LABEL_570;
    case 764:
      v12 = *(a1 + 7776);
      goto LABEL_570;
    case 765:
      v15 = *(a1 + 7784);
      goto LABEL_507;
    case 766:
      v11 = *(a1 + 8088);
      goto LABEL_564;
    case 767:
      v26 = *(a1 + 7016);
LABEL_465:
      a6.n128_u32[0] = **(a4 + 8);
      a7.n128_u32[0] = **(a4 + 16);

      return v26(a2, a6, a7);
    case 768:
      v12 = *(a1 + 7792);
      goto LABEL_574;
    case 769:
      a6.n128_u32[0] = **(a4 + 8);
      a7.n128_u32[0] = **(a4 + 16);
      a8.n128_u32[0] = **(a4 + 24);
      v79 = *(a1 + 8168);
      a9.n128_u32[0] = **(a4 + 32);
      a10.n128_u32[0] = **(a4 + 40);

      return v79(a2, a6, a7, a8, a9, a10);
    case 770:
      v11 = *(a1 + 8176);
      goto LABEL_527;
    case 771:
      v40 = *(a1 + 8128);
      goto LABEL_553;
    case 772:
      v11 = *(a1 + 8152);
      goto LABEL_527;
    case 773:
      v40 = *(a1 + 8120);
      v82 = **(a4 + 8);
      v71 = **(a4 + 16);
      v83 = **(a4 + 24);
      v72 = **(a4 + 32);
      v73 = **(a4 + 40);
      goto LABEL_554;
    case 774:
      v11 = *(a1 + 8144);
      goto LABEL_527;
    case 775:
      v40 = *(a1 + 8136);
      goto LABEL_553;
    case 776:
      v11 = *(a1 + 8160);
      goto LABEL_527;
    case 777:
      v12 = *(a1 + 7800);
      goto LABEL_574;
    case 778:
      v12 = *(a1 + 7808);
      goto LABEL_570;
    case 779:
      a6.n128_u32[0] = **(a4 + 8);
      a7.n128_u32[0] = **(a4 + 16);
      v49 = *(a4 + 32);
      a8.n128_u32[0] = **(a4 + 24);
      v50 = *(a1 + 7816);
      goto LABEL_404;
    case 780:
      v52 = *(a1 + 7824);
      goto LABEL_346;
    case 781:
      v12 = *(a1 + 7832);
      goto LABEL_570;
    case 782:
      v12 = *(a1 + 7840);
      goto LABEL_570;
    case 783:
      v12 = *(a1 + 7848);
      goto LABEL_570;
    case 784:
      v13 = *(a1 + 7856);
      goto LABEL_538;
    case 785:
      v13 = *(a1 + 7864);
      goto LABEL_538;
    case 786:
      v15 = *(a1 + 7008);
      goto LABEL_382;
    case 787:
      v13 = *(a1 + 7872);
      goto LABEL_538;
    case 788:
      v13 = *(a1 + 7880);
      goto LABEL_538;
    case 789:
      v12 = *(a1 + 7888);
      goto LABEL_574;
    case 790:
      v12 = *(a1 + 7896);
      goto LABEL_570;
    case 791:
      v13 = *(a1 + 7904);
      goto LABEL_559;
    case 792:
      v13 = *(a1 + 7912);
      goto LABEL_538;
    case 793:
      v11 = *(a1 + 7920);
      goto LABEL_564;
    case 794:
      v11 = *(a1 + 7928);
      goto LABEL_527;
    case 795:
      v80 = *(a1 + 8096);
      v81 = a2;

      return v80(v81);
    case 796:
      v13 = *(a1 + 7936);
      goto LABEL_559;
    case 797:
      v13 = *(a1 + 7944);
      goto LABEL_538;
    case 798:
      v15 = *(a1 + 8104);
      goto LABEL_545;
    case 799:
      v11 = *(a1 + 7952);
      goto LABEL_527;
    case 800:
      v40 = *(a1 + 8056);
      goto LABEL_553;
    case 801:
      v13 = *(a1 + 7960);
      goto LABEL_559;
    case 802:
      a6.n128_u32[0] = **(a4 + 8);
      a7.n128_u32[0] = **(a4 + 16);
      v49 = *(a4 + 32);
      a8.n128_u32[0] = **(a4 + 24);
      v50 = *(a1 + 7968);
LABEL_404:
      a9.n128_u32[0] = *v49;
      a10.n128_u32[0] = **(a4 + 40);
      a11.n128_u32[0] = **(a4 + 48);

      return v50(a2, a6, a7, a8, a9, a10, a11);
    case 803:
      v52 = *(a1 + 7976);
      goto LABEL_346;
    case 804:
      v12 = *(a1 + 8072);
      goto LABEL_574;
    case 805:
      v12 = *(a1 + 8080);
      goto LABEL_570;
    case 806:
      v13 = *(a1 + 6176);
      goto LABEL_538;
    case 807:
      v11 = *(a1 + 7984);
      goto LABEL_564;
    case 808:
      v12 = *(a1 + 7992);
      goto LABEL_574;
    case 810:
      v15 = *(a1 + 8000);
      goto LABEL_507;
    case 811:
      v12 = *(a1 + 8064);
      v105 = **(a4 + 8);
      v106 = **(a4 + 16);
      goto LABEL_575;
    case 812:
      v13 = *(a1 + 8008);
      goto LABEL_559;
    case 814:
      v13 = *(a1 + 8016);
      goto LABEL_559;
    case 815:
      v13 = *(a1 + 8024);
      goto LABEL_538;
    case 816:
      v13 = *(a1 + 8032);
      goto LABEL_559;
    case 817:
      v13 = *(a1 + 8040);
      goto LABEL_538;
    case 818:
      v13 = *(a1 + 8048);
      goto LABEL_559;
    case 819:
      v15 = *(a1 + 8112);
      goto LABEL_545;
    case 823:
      v15 = *(a1 + 6096);
      goto LABEL_507;
    case 824:
      v40 = *(a1 + 6104);
      v71 = **(a4 + 16);
      v72 = **(a4 + 32);
      v73 = **(a4 + 40);
      v74 = a2;
      v75 = **(a4 + 8);
      v76 = **(a4 + 24);

      goto LABEL_556;
    case 825:
      v13 = *(a1 + 0x2000);
      goto LABEL_538;
    case 826:
      v40 = *(a1 + 3568);
      goto LABEL_412;
    case 827:
      v15 = *(a1 + 3560);
      goto LABEL_545;
    case 829:
      v40 = *(a1 + 3536);
      v71 = **(a4 + 16);
      v72 = **(a4 + 32);
      v73 = **(a4 + 40);
      v74 = a2;
      v75 = **(a4 + 8);
      v76 = **(a4 + 24);

      goto LABEL_556;
    case 830:
      v115 = *(a1 + 3552);
LABEL_455:
      result = v115(a2, **(a4 + 8), **(a4 + 16));
      *a5 = result;
      return result;
    case 831:
      v15 = *(a1 + 3528);
      goto LABEL_382;
    case 832:
      v13 = *(a1 + 3576);
      goto LABEL_559;
    case 833:
      v12 = *(a1 + 6088);
      goto LABEL_574;
    case 835:
      v13 = *(a1 + 8184);
      goto LABEL_538;
    case 837:
      v80 = *(a1 + 8208);
      v81 = a2;

      return v80(v81);
    case 838:
      v11 = *(a1 + 6144);
      goto LABEL_564;
    case 839:
      v12 = *(a1 + 6152);
      goto LABEL_570;
    case 840:
      v12 = *(a1 + 6160);
      goto LABEL_570;
    case 841:
      v27 = *(a1 + 6168);
      goto LABEL_535;
    case 850:
      v12 = *(a1 + 6424);
      goto LABEL_574;
    case 851:
      v119 = *(a1 + 6216);
      v120 = **(a4 + 8);
      v121 = **(a4 + 16);
      a6.n128_u32[0] = **(a4 + 24);
      v122 = **(a4 + 32);

      return v119(a2, v120, v121, v122, a6);
    case 852:
      v13 = *(a1 + 6208);
      goto LABEL_538;
    case 853:
      v13 = *(a1 + 6192);
      goto LABEL_538;
    case 854:
      v13 = *(a1 + 6200);
      goto LABEL_538;
    case 855:
      v40 = *(a1 + 6328);
      goto LABEL_334;
    case 856:
      v12 = *(a1 + 6408);
      goto LABEL_570;
    case 857:
      v13 = *(a1 + 6368);
      v57 = **(a4 + 8);
      v58 = **(a4 + 16);
      v59 = **(a4 + 24);
      v60 = a2;
      v61 = v57;

      goto LABEL_561;
    case 858:
      v12 = *(a1 + 6400);
      goto LABEL_570;
    case 861:
      v13 = *(a1 + 6488);
      goto LABEL_538;
    case 862:
      v13 = *(a1 + 6480);
      goto LABEL_538;
    case 863:
      v39 = *(a1 + 6224);
      goto LABEL_194;
    case 864:
      v27 = *(a1 + 6416);
      goto LABEL_535;
    case 865:
      result = (*(a1 + 6360))(a2, **(a4 + 8), **(a4 + 16), **(a4 + 24), **(a4 + 32));
      *a5 = result;
      return result;
    case 870:
      v43 = *(a1 + 6448);
      goto LABEL_483;
    case 871:
      v13 = *(a1 + 6456);
      goto LABEL_538;
    case 872:
      v13 = *(a1 + 6432);
      goto LABEL_559;
    case 873:
      v13 = *(a1 + 6440);
      goto LABEL_538;
    case 875:
      v13 = *(a1 + 6392);
      goto LABEL_538;
    case 876:
      v13 = *(a1 + 6384);
      goto LABEL_538;
    case 879:
      result = (*(a1 + 6256))(a2, **(a4 + 8), **(a4 + 16), **(a4 + 24));
      *a5 = result;
      return result;
    case 880:
      v11 = *(a1 + 6248);
LABEL_527:
      v146 = a2;
      v147 = **(a4 + 8);

      return v11(v146, v147);
    case 881:
      v39 = *(a1 + 6232);
LABEL_194:
      result = v39(a2, **(a4 + 8), **(a4 + 16));
      *a5 = result;
      return result;
    case 882:
      v12 = *(a1 + 6272);
      goto LABEL_570;
    case 883:
      v40 = *(a1 + 6280);
      v71 = **(a4 + 16);
      v72 = **(a4 + 32);
      v73 = **(a4 + 40);
      v74 = a2;
      v75 = **(a4 + 8);
      v76 = **(a4 + 24);

      goto LABEL_556;
    case 884:
      result = (*(a1 + 6240))(a2, **(a4 + 8));
      *a5 = result;
      return result;
    case 885:
      v13 = *(a1 + 6264);
LABEL_494:
      v140 = **(a4 + 8);
      v58 = **(a4 + 16);
      v59 = **(a4 + 24);
      v60 = a2;
      v61 = v140;

      goto LABEL_561;
    case 886:
      v12 = *(a1 + 6560);
      goto LABEL_574;
    case 887:
      v11 = *(a1 + 6576);
      goto LABEL_564;
    case 888:
      result = (*(a1 + 6568))(a2, **(a4 + 8), **(a4 + 16), **(a4 + 24));
      *a5 = result;
      return result;
    case 889:
      v12 = *(a1 + 6584);
      goto LABEL_570;
    case 890:
      v12 = *(a1 + 6592);
      goto LABEL_570;
    case 891:
      v13 = *(a1 + 8200);
      goto LABEL_538;
    case 892:
      v40 = *(a1 + 6520);
LABEL_412:
      v71 = **(a4 + 16);
      v72 = **(a4 + 32);
      v73 = **(a4 + 40);
      v74 = a2;
      v75 = **(a4 + 8);
      v76 = **(a4 + 24);

      goto LABEL_556;
    case 893:
      v15 = *(a1 + 6624);
LABEL_382:
      v117 = **(a4 + 8);
      v17 = **(a4 + 16);
      v118 = *(a4 + 32);
      v19 = **(a4 + 24);
      v20 = *v118;
      v21 = a2;
      v22 = v117;

      return v15(v21, v22, v17, v19, v20);
    case 894:
      v13 = *(a1 + 6608);
LABEL_538:
      v149 = **(a4 + 8);
      v58 = **(a4 + 16);
      v59 = **(a4 + 24);
      v60 = a2;
      v61 = v149;

      goto LABEL_561;
    case 895:
      v12 = *(a1 + 6528);
      goto LABEL_570;
    case 896:
      v27 = *(a1 + 6600);
      goto LABEL_535;
    case 897:
      v15 = *(a1 + 6512);
      goto LABEL_545;
    case 898:
      v80 = *(a1 + 6544);
      v81 = a2;

      return v80(v81);
    case 900:
      v43 = *(a1 + 6664);
LABEL_483:
      v137 = **(a4 + 16);
      a6.n128_u32[0] = **(a4 + 24);
      v139 = **(a4 + 8);

      return v43(a2, v139, v137, a6);
    case 901:
      v15 = *(a1 + 6728);
      goto LABEL_545;
    case 902:
      v13 = *(a1 + 6632);
      goto LABEL_559;
    case 903:
      v15 = *(a1 + 6696);
      goto LABEL_545;
    case 904:
      v90 = *(a1 + 6672);
      v91 = **(a4 + 16);
      a6.n128_u32[0] = **(a4 + 24);
      a7.n128_u32[0] = **(a4 + 32);
      v93 = **(a4 + 8);

      return v90(a2, v93, v91, a6, a7);
    case 905:
      v15 = *(a1 + 6736);
      goto LABEL_545;
    case 906:
      v15 = *(a1 + 6640);
      goto LABEL_507;
    case 907:
      v15 = *(a1 + 6704);
      goto LABEL_545;
    case 908:
      v84 = *(a1 + 6680);
      a6.n128_u32[0] = **(a4 + 24);
      v85 = **(a4 + 16);
      a7.n128_u32[0] = **(a4 + 32);
      a8.n128_u32[0] = **(a4 + 40);
      v87 = **(a4 + 8);

      return v84(a2, v87, v85, a6, a7, a8);
    case 909:
      v15 = *(a1 + 6744);
      goto LABEL_545;
    case 910:
      v40 = *(a1 + 6648);
      goto LABEL_553;
    case 911:
      v15 = *(a1 + 6712);
      goto LABEL_545;
    case 912:
      v108 = *(a1 + 6688);
      a6.n128_u32[0] = **(a4 + 24);
      v109 = **(a4 + 16);
      a7.n128_u32[0] = **(a4 + 32);
      a8.n128_u32[0] = **(a4 + 40);
      a9.n128_u32[0] = **(a4 + 48);
      v111 = **(a4 + 8);

      return v108(a2, v111, v109, a6, a7, a8, a9);
    case 913:
      v15 = *(a1 + 6752);
      goto LABEL_545;
    case 914:
      v52 = *(a1 + 6656);
      goto LABEL_346;
    case 915:
      v15 = *(a1 + 6720);
      goto LABEL_545;
    case 916:
      v40 = *(a1 + 6760);
      goto LABEL_321;
    case 917:
      v40 = *(a1 + 6768);
      goto LABEL_321;
    case 918:
      v40 = *(a1 + 6776);
      goto LABEL_321;
    case 919:
      v12 = *(a1 + 6536);
      goto LABEL_570;
    case 920:
      v13 = *(a1 + 6552);
      goto LABEL_559;
    case 921:
      v11 = *(a1 + 6616);
LABEL_564:
      v141 = **(a4 + 8);
LABEL_565:
      v146 = a2;
      v147 = v141;

      return v11(v146, v147);
    case 934:
      v40 = *(a1 + 7096);
LABEL_334:
      v71 = **(a4 + 16);
      v72 = **(a4 + 32);
      v73 = **(a4 + 40);
      v74 = a2;
      v75 = **(a4 + 8);
      v76 = **(a4 + 24);

      goto LABEL_556;
    case 937:
      v15 = *(a1 + 7104);
LABEL_330:
      v112 = **(a4 + 8);
      v17 = **(a4 + 16);
      v113 = *(a4 + 32);
      v19 = **(a4 + 24);
      v20 = *v113;
      v21 = a2;
      v22 = v112;

      return v15(v21, v22, v17, v19, v20);
    case 940:
      v13 = *(a1 + 6784);
      goto LABEL_559;
    case 941:
      v15 = *(a1 + 6816);
      goto LABEL_545;
    case 944:
      v15 = *(a1 + 6792);
      goto LABEL_507;
    case 945:
      v15 = *(a1 + 6824);
      goto LABEL_545;
    case 948:
      v40 = *(a1 + 6800);
      goto LABEL_553;
    case 949:
      v15 = *(a1 + 6832);
      goto LABEL_545;
    case 952:
      v52 = *(a1 + 6808);
      goto LABEL_346;
    case 953:
      v15 = *(a1 + 6840);
LABEL_545:
      v133 = **(a4 + 8);
      v17 = **(a4 + 16);
      v134 = *(a4 + 32);
      v19 = **(a4 + 24);
LABEL_546:
      v20 = *v134;
      v21 = a2;
      v22 = v133;

      return v15(v21, v22, v17, v19, v20);
    case 956:
      v40 = *(a1 + 6848);
      goto LABEL_321;
    case 958:
      v40 = *(a1 + 6864);
      goto LABEL_321;
    case 961:
      v40 = *(a1 + 6856);
      goto LABEL_321;
    case 963:
      v40 = *(a1 + 6880);
      goto LABEL_321;
    case 966:
      v40 = *(a1 + 6872);
      goto LABEL_321;
    case 968:
      v40 = *(a1 + 6888);
LABEL_321:
      v102 = **(a4 + 8);
      v71 = **(a4 + 16);
      v103 = **(a4 + 24);
      v72 = **(a4 + 32);
      goto LABEL_322;
    case 969:
      v80 = *(a1 + 6992);
      v81 = a2;

      return v80(v81);
    case 970:
      v40 = *(a1 + 7000);
      v71 = **(a4 + 16);
      v72 = **(a4 + 32);
      v73 = **(a4 + 40);
      v74 = a2;
      v75 = **(a4 + 8);
      v76 = **(a4 + 24);

      goto LABEL_556;
    case 980:
      v12 = *(a1 + 7232);
LABEL_574:
      v105 = **(a4 + 8);
      v106 = **(a4 + 16);
LABEL_575:
      v144 = a2;
      v145 = v105;

      return v12(v144, v145, v106);
    case 981:
      v12 = *(a1 + 7248);
      goto LABEL_570;
    case 987:
      v12 = *(a1 + 7240);
LABEL_570:
      v106 = **(a4 + 16);
      v144 = a2;
      v145 = **(a4 + 8);

      return v12(v144, v145, v106);
    case 1000:
      v27 = *(a1 + 7272);
LABEL_535:
      result = v27(a2, **(a4 + 8));
      *a5 = result;
      return result;
    case 1004:
      v80 = *(a1 + 7256);
      v81 = a2;

      return v80(v81);
    case 1005:
      v80 = *(a1 + 7264);
      v81 = a2;

      return v80(v81);
    case 1039:
      v15 = *(a1 + 8216);
LABEL_507:
      v142 = **(a4 + 8);
      v17 = **(a4 + 16);
      v143 = *(a4 + 32);
      v19 = **(a4 + 24);
      v20 = *v143;
LABEL_508:
      v21 = a2;
      v22 = v142;

      return v15(v21, v22, v17, v19, v20);
    case 1040:
      v40 = *(a1 + 8248);
LABEL_553:
      v82 = **(a4 + 8);
      v71 = **(a4 + 16);
      v83 = **(a4 + 24);
      v72 = **(a4 + 32);
      v73 = **(a4 + 40);
LABEL_554:
      v74 = a2;
      v75 = v82;
      v76 = v83;

      goto LABEL_556;
    case 1042:
      v52 = *(a1 + 8256);
LABEL_346:
      v54 = **(a4 + 16);
      v56 = **(a4 + 32);
      v97 = **(a4 + 40);
      v98 = **(a4 + 48);
      v99 = a2;
      v100 = **(a4 + 8);
      v101 = **(a4 + 24);

      return v52(v99, v100, v54, v101, v56, v97, v98);
    case 1043:
      v40 = *(a1 + 8232);
LABEL_249:
      v102 = **(a4 + 8);
      v71 = **(a4 + 16);
      v103 = **(a4 + 24);
      v72 = **(a4 + 32);
LABEL_322:
      v73 = **(a4 + 40);
      v74 = a2;
      v75 = v102;
      v76 = v103;

LABEL_556:
      result = v40(v74, v75, v71, v76, v72, v73);
      break;
    case 1044:
      v28 = *(a1 + 8224);
      v29 = **(a4 + 16);
      v30 = **(a4 + 32);
      v31 = **(a4 + 40);
      v32 = **(a4 + 48);
      v33 = **(a4 + 56);
      v34 = a2;
      v35 = **(a4 + 8);
      v36 = **(a4 + 24);

LABEL_463:
      result = v28(v34, v35, v29, v36, v30, v31, v32, v33);
      break;
    case 1046:
      v13 = *(a1 + 8264);
LABEL_559:
      v152 = **(a4 + 8);
      v58 = **(a4 + 16);
      v59 = **(a4 + 24);
      v60 = a2;
      v61 = v152;

LABEL_561:
      result = v13(v60, v61, v58, v59);
      break;
    default:
      dy_abort("unknown fenum: %u", a3);
  }

  return result;
}

void dy_add_fenum_string_tables(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (_MergedGlobals_2237 != -1)
  {
    v4 = a4;
    v5 = a3;
    v6 = a2;
    v7 = a1;
    dy_add_fenum_string_tables_cold_1();
    a1 = v7;
    a2 = v6;
    a3 = v5;
    a4 = v4;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __dy_add_fenum_string_tables_block_invoke;
  block[3] = &__block_descriptor_tmp_4;
  block[4] = a1;
  block[5] = a2;
  v9 = a3;
  v10 = a4;
  dispatch_async(qword_27F098250, block);
}

void __dy_add_fenum_string_tables_block_invoke(uint64_t a1)
{
  v1 = qword_27F098258;
  v3 = *qword_27F098258;
  v2 = *(qword_27F098258 + 8);
  if (*qword_27F098258 == v2)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v4 = v2 - v3 - 32;
  if (v4 <= 0x1F)
  {
    v5 = 0;
    v6 = *qword_27F098258;
    do
    {
LABEL_8:
      v5 = *(v6 + 5) + v5 - *(v6 + 4);
      v6 += 32;
    }

    while (v6 != v2);
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  v9 = (v4 >> 5) + 1;
  v6 = &v3[8 * (v9 & 0xFFFFFFFFFFFFFFELL)];
  v10 = v3 + 12;
  v11 = v9 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    v13 = *(v10 - 8);
    v12 = *(v10 - 7);
    v15 = *v10;
    v14 = v10[1];
    v10 += 16;
    v7 = v12 + v7 - v13;
    v8 = v14 + v8 - v15;
    v11 -= 2;
  }

  while (v11);
  v5 = v8 + v7;
  if (v9 != (v9 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

LABEL_9:
  v16 = *(qword_27F098258 + 16);
  if (v2 < v16)
  {
    v17 = *(a1 + 48);
    v18 = *(a1 + 52);
    *v2 = *(a1 + 32);
    *(v2 + 16) = v17;
    *(v2 + 20) = v18 + v17;
    *(v2 + 24) = v5;
    v19 = v2 + 32;
LABEL_11:
    v1[1] = v19;
    return;
  }

  v20 = v2 - v3;
  v21 = (v2 - v3) >> 5;
  v22 = v21 + 1;
  if ((v21 + 1) >> 59)
  {
    std::vector<GPUTools::FB::Fbuf>::__throw_length_error[abi:ne200100]();
  }

  v23 = v16 - v3;
  if (v23 >> 4 > v22)
  {
    v22 = v23 >> 4;
  }

  if (v23 >= 0x7FFFFFFFFFFFFFE0)
  {
    v24 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = v22;
  }

  if (v24)
  {
    if (!(v24 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v25 = v21;
  v26 = 32 * v21;
  v27 = *(a1 + 48);
  v28 = *(a1 + 52);
  *v26 = *(a1 + 32);
  *(v26 + 16) = v27;
  *(v26 + 20) = v28 + v27;
  *(v26 + 24) = v5;
  v19 = 32 * v21 + 32;
  v29 = (v26 - 32 * v25);
  memcpy(v29, v3, v20);
  *v1 = v29;
  v1[1] = v19;
  v1[2] = 0;
  if (!v3)
  {
    goto LABEL_11;
  }

  operator delete(v3);
  v1[1] = v19;
}

uint64_t dy_fenum_get_unified_index(int a1)
{
  if (_MergedGlobals_2237 != -1)
  {
    v4 = a1;
    dy_add_fenum_string_tables_cold_1();
    a1 = v4;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = -1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __dy_fenum_get_unified_index_block_invoke;
  v5[3] = &unk_27930D338;
  v6 = a1;
  v5[4] = &v7;
  dispatch_sync(qword_27F098250, v5);
  v1 = *(v8 + 6);
  if (v1 == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  _Block_object_dispose(&v7, 8);
  return v2;
}

uint64_t __dy_fenum_get_unified_index_block_invoke(uint64_t result)
{
  v1 = *qword_27F098258;
  v2 = *(qword_27F098258 + 8);
  if (*qword_27F098258 != v2)
  {
    v3 = *(result + 40);
    while (1)
    {
      v4 = v1[4];
      v6 = v3 >= v4;
      v5 = v3 - v4;
      v6 = !v6 || v3 >= v1[5];
      if (!v6)
      {
        break;
      }

      v1 += 8;
      if (v1 == v2)
      {
        return result;
      }
    }

    *(*(*(result + 32) + 8) + 24) = v5 + v1[6];
  }

  return result;
}

const char *dy_fenum_to_function_name(int a1, __int16 a2, int a3)
{
  if ((a2 & 0x4000) != 0)
  {
    v7 = "glDiscardFramebufferEXT";
    if (a3)
    {
      v7 = "DiscardFramebuffer";
    }

    if (a1 == 835)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else if (a1 == -1)
  {
    return 0;
  }

  else
  {
    v17 = v3;
    v18 = v4;
    if (_MergedGlobals_2237 != -1)
    {
      v8 = a1;
      v9 = a3;
      dy_add_fenum_string_tables_cold_1();
      a1 = v8;
      LOBYTE(a3) = v9;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZL22fenum_to_function_namejb_block_invoke;
    block[3] = &unk_27930D360;
    v11 = a1;
    block[4] = &v13;
    v12 = a3;
    dispatch_sync(qword_27F098250, block);
    v5 = v14[3];
    _Block_object_dispose(&v13, 8);
    return v5;
  }
}

uint64_t ___ZL22fenum_to_function_namejb_block_invoke(uint64_t result)
{
  v1 = *qword_27F098258;
  v2 = *(qword_27F098258 + 8);
  if (*qword_27F098258 != v2)
  {
    v3 = *(result + 40);
    while (1)
    {
      v4 = *(v1 + 16);
      v6 = v3 >= v4;
      v5 = v3 - v4;
      v6 = !v6 || v3 >= *(v1 + 20);
      if (!v6)
      {
        break;
      }

      v1 += 32;
      if (v1 == v2)
      {
        return result;
      }
    }

    if (*(result + 44))
    {
      v1 += 8;
    }

    *(*(*(result + 32) + 8) + 24) = *(*v1 + 8 * v5);
  }

  return result;
}

void xpc_dictionary_set_nsobject(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x277CCAAB0];
    v8 = 0;
    v6 = a1;
    v7 = [v5 archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
    xpc_dictionary_set_data(v6, a2, [v7 bytes], objc_msgSend(v7, "length"));
  }
}

void xpc_dictionary_set_nsdata(void *a1, const char *a2, id a3)
{
  if (a3)
  {
    v6 = a3;
    v7 = a3;
    xdict = a1;
    v8 = [v7 bytes];
    v9 = [v7 length];

    xpc_dictionary_set_data(xdict, a2, v8, v9);
  }
}

const void *xpc_dictionary_get_nsdata(void *a1, const char *a2)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, a2, &length);
  if (result)
  {
    v3 = result;
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    return [v4 initWithBytes:v3 length:length];
  }

  return result;
}

const void *xpc_dictionary_get_nsdata_nocopy(void *a1, const char *a2)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, a2, &length);
  if (result)
  {
    v3 = result;
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    return [v4 initWithBytesNoCopy:v3 length:length freeWhenDone:0];
  }

  return result;
}

void *xpc_dictionary_get_nsobject(void *a1, const char *a2, uint64_t a3)
{
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (!nsdata_nocopy)
  {
    goto LABEL_5;
  }

  v7 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:nsdata_nocopy error:&v7];
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v5 = 0;
  }

  return v5;
}

uint64_t xpc_dictionary_get_nsobject_any(void *a1, const char *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = a1;
  v4 = [v2 alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v4 initWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  nsobject_classes = xpc_dictionary_get_nsobject_classes(v3, a2, v13);

  return nsobject_classes;
}

uint64_t xpc_dictionary_get_nsarray(void *a1, const char *a2, uint64_t a3)
{
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v7 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:a3 fromData:nsdata_nocopy error:&v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t xpc_dictionary_get_nsdictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v9 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedDictionaryWithKeysOfClass:a3 objectsOfClass:a4 fromData:nsdata_nocopy error:&v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t xpc_dictionary_get_nsobject_classes(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v9 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:nsdata_nocopy error:&v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id xpc_dictionary_get_nsarray_any(void *a1, const char *a2)
{
  nsobject_any = xpc_dictionary_get_nsobject_any(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = nsobject_any;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v4;
}

id xpc_dictionary_get_nsdictionary_any(void *a1, const char *a2)
{
  nsobject_any = xpc_dictionary_get_nsobject_any(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = nsobject_any;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v4;
}

const char *xpc_error_string(void *a1)
{
  result = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  if (!result)
  {
    return "Unknown";
  }

  return result;
}

void xpc_dictionary_set_flag(void *a1, const char *a2, char a3)
{
  xdict = a1;
  uint64 = xpc_dictionary_get_uint64(xdict, a2);
  xpc_dictionary_set_uint64(xdict, a2, uint64 | (1 << a3));
}

void xpc_dictionary_toggle_flag(void *a1, const char *a2, char a3)
{
  xdict = a1;
  uint64 = xpc_dictionary_get_uint64(xdict, a2);
  xpc_dictionary_set_uint64(xdict, a2, uint64 ^ (1 << a3));
}

void xpc_dictionary_clear_flag(void *a1, const char *a2, char a3)
{
  xdict = a1;
  uint64 = xpc_dictionary_get_uint64(xdict, a2);
  xpc_dictionary_set_uint64(xdict, a2, uint64 & ~(1 << a3));
}

id xpc_array_pop(void *a1)
{
  v1 = a1;
  count = xpc_array_get_count(v1);
  if (count)
  {
    v3 = count - 1;
    v4 = MEMORY[0x277D864B0];
    while (1)
    {
      v5 = xpc_array_get_value(v1, v3);
      if (MEMORY[0x253031920]() != v4)
      {
        break;
      }

      if (--v3 == -1)
      {
        goto LABEL_5;
      }
    }

    v6 = xpc_null_create();
    xpc_array_set_value(v1, v3, v6);
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

void xpc_dictionary_array_push(void *a1, const char *a2, void *a3)
{
  value = a3;
  v5 = a1;
  empty = xpc_dictionary_get_array(v5, a2);
  if (!empty)
  {
    empty = xpc_array_create_empty();
  }

  xpc_array_append_value(empty, value);
  xpc_dictionary_set_value(v5, a2, empty);
}

id xpc_dictionary_array_pop(void *a1, const char *a2)
{
  v3 = a1;
  v4 = xpc_dictionary_get_array(v3, a2);
  v5 = v4;
  if (v4)
  {
    v6 = xpc_array_pop(v4);
    xpc_dictionary_set_value(v3, a2, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t xpc_dictionary_string_array_contains(void *a1, const char *a2, uint64_t a3)
{
  v4 = xpc_dictionary_get_array(a1, a2);
  v5 = v4;
  if (v4 && MEMORY[0x253031920](v4) == MEMORY[0x277D86440])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __xpc_dictionary_string_array_contains_block_invoke;
    v8[3] = &unk_27930D388;
    v8[4] = &v9;
    v8[5] = a3;
    xpc_array_apply(v5, v8);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __xpc_dictionary_string_array_contains_block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (!string_ptr)
  {
    return 1;
  }

  v5 = strcmp(*(a1 + 40), string_ptr);
  result = 1;
  if (!v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

const void *xpc_array_get_nsdata_nocopy(void *a1, size_t a2)
{
  length = 0;
  result = xpc_array_get_data(a1, a2, &length);
  if (result)
  {
    v3 = result;
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    return [v4 initWithBytesNoCopy:v3 length:length freeWhenDone:0];
  }

  return result;
}

uint64_t xpc_array_get_nsobject_classes(void *a1, size_t a2, void *a3)
{
  v5 = a3;
  nsdata_nocopy = xpc_array_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v9 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:nsdata_nocopy error:&v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *xpc_array_get_nsobject(void *a1, size_t a2, uint64_t a3)
{
  nsdata_nocopy = xpc_array_get_nsdata_nocopy(a1, a2);
  if (!nsdata_nocopy)
  {
    goto LABEL_5;
  }

  v7 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:nsdata_nocopy error:&v7];
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v5 = 0;
  }

  return v5;
}

void xpc_array_set_nsobject(void *a1, size_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x277CCAAB0];
    v8 = 0;
    v6 = a1;
    v7 = [v5 archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
    xpc_array_set_data(v6, a2, [v7 bytes], objc_msgSend(v7, "length"));
  }
}

xpc_object_t xpc_nsobject_create(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v4];
  }

  else
  {
    v1 = 0;
  }

  v2 = xpc_data_create([v1 bytes], objc_msgSend(v1, "length"));

  return v2;
}

id gt_xpc_dictionary_create_reply(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);

  return reply;
}

char *__cdecl apr_cpystrn(char *dst, const char *src, apr_size_t dst_size)
{
  if (dst_size)
  {
    if (src && (v3 = &dst[dst_size - 1], v3 > dst))
    {
      v4 = dst_size - 1;
      while (1)
      {
        v5 = *src;
        *dst = v5;
        if (!v5)
        {
          break;
        }

        ++dst;
        ++src;
        if (!--v4)
        {
          dst = v3;
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      *dst = 0;
    }
  }

  return dst;
}

apr_status_t apr_tokenize_to_argv(const char *arg_str, char ***argv_out, apr_pool_t *token_context)
{
  while (1)
  {
    v6 = *arg_str;
    if (v6 != 9 && v6 != 32)
    {
      break;
    }

    ++arg_str;
  }

  if (!*arg_str)
  {
    v7 = 1;
    goto LABEL_48;
  }

  v7 = 1;
  v8 = arg_str;
  do
  {
    if (v6 == 39)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v6 == 34)
    {
      ++v8;
    }

    else
    {
      v8 = v9;
    }

    v10 = v6 != 34 && v6 != 39;
    v11 = v6 != 34 && v6 == 39;
    while (1)
    {
      v12 = *v8;
      if (v12 == 92)
      {
        v15 = *(v8 + 1);
        v16 = v15 > 0x27;
        v17 = (1 << v15) & 0x8500000200;
        if (!v16 && v17 != 0)
        {
          ++v8;
          goto LABEL_38;
        }
      }

      else if (!*v8)
      {
        break;
      }

      if (v10 && (v12 == 9 || v12 == 32))
      {
        break;
      }

      v13 = v12 == 39 && v11;
      v14 = v12 == 34 && v6 == 34;
      if (v14 || v13)
      {
        break;
      }

LABEL_38:
      ++v8;
    }

    if (*v8)
    {
      ++v8;
    }

    while (1)
    {
      v6 = *v8;
      if (v6 != 32 && v6 != 9)
      {
        break;
      }

      ++v8;
    }

    ++v7;
  }

  while (*v8);
LABEL_48:
  v20 = apr_palloc(token_context, 8 * v7);
  *argv_out = v20;
  if (v7 < 2)
  {
    v22 = 0;
    goto LABEL_106;
  }

  v21 = 0;
  v22 = (v7 - 1);
  while (2)
  {
    while (1)
    {
      v23 = *arg_str;
      if (v23 != 32 && v23 != 9)
      {
        break;
      }

      ++arg_str;
    }

    if (v23 == 39)
    {
      v25 = arg_str + 1;
    }

    else
    {
      v25 = arg_str;
    }

    if (v23 == 34)
    {
      v26 = arg_str + 1;
    }

    else
    {
      v26 = v25;
    }

    v27 = v23 != 34 && v23 != 39;
    v28 = v23 != 34 && v23 == 39;
    v29 = v26;
    while (2)
    {
      v30 = *v29;
      if (v30 == 92)
      {
        v33 = *(v29 + 1);
        v16 = v33 > 0x27;
        v34 = (1 << v33) & 0x8500000200;
        if (v16 || v34 == 0)
        {
          goto LABEL_71;
        }

        ++v29;
LABEL_88:
        ++v29;
        continue;
      }

      break;
    }

    if (!*v29)
    {
      goto LABEL_89;
    }

LABEL_71:
    if (!v27 || v30 != 9 && v30 != 32)
    {
      v31 = v30 == 39 && v28;
      v32 = v30 == 34 && v23 == 34;
      if (!v32 && !v31)
      {
        goto LABEL_88;
      }
    }

LABEL_89:
    arg_str = v29 + 1;
    (*argv_out)[v21] = apr_palloc(token_context, v29 + 1 - v26);
    if (v29 + 1 != v26)
    {
      v36 = (*argv_out)[v21];
      v37 = &v36[v29 - v26];
      if (v37 <= v36)
      {
LABEL_95:
        *v36 = 0;
      }

      else
      {
        v38 = v29 - v26;
        while (1)
        {
          v39 = *v26;
          *v36 = v39;
          if (!v39)
          {
            break;
          }

          ++v36;
          ++v26;
          if (!--v38)
          {
            v36 = v37;
            goto LABEL_95;
          }
        }
      }
    }

    v40 = (*argv_out)[v21];
    v41 = *v40;
    if (*v40)
    {
      v42 = 0;
      v43 = (v40 + 1);
      do
      {
        if (v42 || v41 != 92)
        {
          v42 = 0;
          *v40++ = v41;
        }

        else
        {
          v42 = 1;
        }

        v44 = *v43++;
        v41 = v44;
      }

      while (v44);
    }

    *v40 = 0;
    if (++v21 != v22)
    {
      continue;
    }

    break;
  }

  v20 = *argv_out;
LABEL_106:
  v20[v22] = 0;
  return 0;
}

const char *__cdecl apr_filepath_name_get(const char *pathname)
{
  v2 = strrchr(pathname, 47);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return pathname;
  }
}

char *__cdecl apr_collapse_spaces(char *dest, const char *src)
{
  v3 = *src;
  if (*src)
  {
    v4 = src + 1;
    v5 = MEMORY[0x277D85DE0];
    while ((v3 & 0x80) == 0)
    {
      if ((*(v5 + 4 * v3 + 60) & 0x4000) == 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      v6 = *v4++;
      v3 = v6;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    if (__maskrune(v3, 0x4000uLL))
    {
      goto LABEL_6;
    }

LABEL_5:
    *dest++ = v3;
    goto LABEL_6;
  }

LABEL_10:
  *dest = 0;
  return dest;
}

char *__cdecl apr_strerror(apr_status_t statcode, char *buf, apr_size_t bufsize)
{
  if (statcode <= 19999)
  {
    if ((strerror_r(statcode, buf, bufsize) & 0x80000000) == 0 || !bufsize)
    {
      return buf;
    }

    v5 = &buf[bufsize - 1];
    v6 = buf;
    if (v5 > buf)
    {
      v7 = 0;
      while (1)
      {
        buf[v7] = aAprDoesNotUnde[v7];
        if (v7 == 39)
        {
          return buf;
        }

        if (bufsize - 1 == ++v7)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_89:
    *v6 = 0;
    return buf;
  }

  if (statcode >> 6 > 0x752)
  {
    if (statcode > 0xA392F)
    {
      if (statcode > 0xAFC7F)
      {
        if (!bufsize)
        {
          return buf;
        }

        v5 = &buf[bufsize - 1];
        v6 = buf;
        if (v5 <= buf)
        {
          goto LABEL_89;
        }

        v14 = "Unrecognized resolver error";
        if (statcode == 720004)
        {
          v14 = "No address for host";
        }

        if (statcode == 720001)
        {
          v15 = "Unknown host";
        }

        else
        {
          v15 = v14;
        }

        v16 = bufsize - 1;
        v17 = buf;
        while (1)
        {
          v18 = *v15;
          *v17 = v18;
          if (!v18)
          {
            break;
          }

          ++v17;
          ++v15;
          if (!--v16)
          {
LABEL_39:
            v6 = v5;
            goto LABEL_89;
          }
        }
      }

      else
      {
        v10 = gai_strerror(statcode - 670000);
        if (!bufsize)
        {
          return buf;
        }

        v6 = buf;
        if (!v10)
        {
          goto LABEL_89;
        }

        v5 = &buf[bufsize - 1];
        v6 = buf;
        if (v5 <= buf)
        {
          goto LABEL_89;
        }

        v11 = bufsize - 1;
        v12 = buf;
        while (1)
        {
          v13 = *v10;
          *v12 = v13;
          if (!v13)
          {
            break;
          }

          ++v12;
          ++v10;
          if (!--v11)
          {
            goto LABEL_39;
          }
        }
      }
    }

    else
    {
      if (!bufsize)
      {
        return buf;
      }

      v5 = &buf[bufsize - 1];
      v6 = buf;
      if (v5 <= buf)
      {
        goto LABEL_89;
      }

      v9 = 0;
      while (1)
      {
        buf[v9] = aAprDoesNotUnde[v9];
        if (v9 == 39)
        {
          break;
        }

        if (bufsize - 1 == ++v9)
        {
          goto LABEL_39;
        }
      }
    }
  }

  else
  {
    v8 = "Could not perform a stat on the file.";
    switch(statcode)
    {
      case 20001:
        break;
      case 20002:
        v8 = "A new pool could not be created.";
        break;
      case 20003:
      case 20018:
LABEL_64:
        v8 = "Error string not specified yet";
        break;
      case 20004:
        v8 = "An invalid date has been provided";
        break;
      case 20005:
        v8 = "An invalid socket was returned";
        break;
      case 20006:
        v8 = "No process was provided and one was required.";
        break;
      case 20007:
        v8 = "No time was provided and one was required.";
        break;
      case 20008:
        v8 = "No directory was provided and one was required.";
        break;
      case 20009:
        v8 = "No lock was provided and one was required.";
        break;
      case 20010:
        v8 = "No poll structure was provided and one was required.";
        break;
      case 20011:
        v8 = "No socket was provided and one was required.";
        break;
      case 20012:
        v8 = "No thread was provided and one was required.";
        break;
      case 20013:
        v8 = "No thread key structure was provided and one was required.";
        break;
      case 20014:
        v8 = "Internal error (specific information not available)";
        break;
      case 20015:
        v8 = "No shared memory is currently available";
        break;
      case 20016:
        v8 = "The specified IP address is invalid.";
        break;
      case 20017:
        v8 = "The specified network mask is invalid.";
        break;
      case 20019:
        v8 = "DSO load failed";
        break;
      case 20020:
        v8 = "The given path is absolute";
        break;
      case 20021:
        v8 = "The given path is relative";
        break;
      case 20022:
        v8 = "The given path is incomplete";
        break;
      case 20023:
        v8 = "The given path was above the root path";
        break;
      case 20024:
        v8 = "The given path is misformatted or contained invalid characters";
        break;
      case 20025:
        v8 = "The given path contained wildcard characters";
        break;
      case 20026:
        v8 = "Could not find the requested symbol.";
        break;
      case 20027:
        v8 = "The process is not recognized.";
        break;
      case 20028:
        v8 = "Not enough entropy to continue.";
        break;
      default:
        switch(statcode)
        {
          case 70001:
            v8 = "Your code just forked, and you are currently executing in the child process";
            break;
          case 70002:
            v8 = "Your code just forked, and you are currently executing in the parent process";
            break;
          case 70003:
            v8 = "The specified thread is detached";
            break;
          case 70004:
            v8 = "The specified thread is not detached";
            break;
          case 70005:
            v8 = "The specified child process is done executing";
            break;
          case 70006:
            v8 = "The specified child process is not done executing";
            break;
          case 70007:
            v8 = "The timeout specified has expired";
            break;
          case 70008:
            v8 = "Partial results are valid but processing is incomplete";
            break;
          case 70012:
            v8 = "Bad character specified on command line";
            break;
          case 70013:
            v8 = "Missing parameter for the specified command line option";
            break;
          case 70014:
            v8 = "End of file found";
            break;
          case 70015:
            v8 = "Could not find specified socket in poll list.";
            break;
          case 70019:
            v8 = "Shared memory is implemented anonymously";
            break;
          case 70020:
            v8 = "Shared memory is implemented using files";
            break;
          case 70021:
            v8 = "Shared memory is implemented using a key system";
            break;
          case 70022:
            v8 = "There is no error, this value signifies an initialized error code";
            break;
          case 70023:
            v8 = "This function has not been implemented on this platform";
            break;
          case 70024:
            v8 = "passwords do not match";
            break;
          case 70025:
            v8 = "The given lock was busy.";
            break;
          default:
            goto LABEL_64;
        }

        break;
    }

    if (!bufsize)
    {
      return buf;
    }

    v6 = buf;
    if (&buf[bufsize - 1] <= buf)
    {
      goto LABEL_89;
    }

    v19 = bufsize - 1;
    v20 = buf;
    while (1)
    {
      v21 = *v8;
      *v20 = v21;
      if (!v21)
      {
        break;
      }

      ++v20;
      ++v8;
      if (!--v19)
      {
        v6 = &buf[bufsize - 1];
        goto LABEL_89;
      }
    }
  }

  return buf;
}