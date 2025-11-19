void sub_247400A54(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);

  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](uint64_t result)
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

void sub_247400F00(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, int a9, __int16 a10, char a11, char a12, ...)
{
  va_start(va, a12);
  if (LOBYTE(STACK[0x2D0]) == 1)
  {
    apple3dgs::Asset::~Asset(va);
  }

  if (a12 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::Asset::operator=(uint64_t a1, uint64_t a2)
{
  MetalContext::operator=(a1, a2);
  v4 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v5 = *(a1 + 120);
  *(a1 + 120) = v4;

  objc_storeStrong((a1 + 128), *(a2 + 128));
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  objc_storeStrong((a1 + 168), *(a2 + 168));
  v7 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v7;
  objc_storeStrong((a1 + 208), *(a2 + 208));
  v8 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v8;
  objc_storeStrong((a1 + 248), *(a2 + 248));
  v9 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v9;
  objc_storeStrong((a1 + 288), *(a2 + 288));
  v10 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v10;
  v11 = *(a2 + 400);
  v13 = *(a2 + 352);
  v12 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v11;
  *(a1 + 352) = v13;
  *(a1 + 368) = v12;
  v14 = *(a2 + 464);
  v16 = *(a2 + 416);
  v15 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v14;
  *(a1 + 416) = v16;
  *(a1 + 432) = v15;
  v18 = *(a2 + 496);
  v17 = *(a2 + 512);
  v19 = *(a2 + 480);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 496) = v18;
  *(a1 + 512) = v17;
  *(a1 + 480) = v19;
  *(a1 + 336) = *(a2 + 336);
  v20 = *(a2 + 544);
  *(a1 + 556) = *(a2 + 556);
  *(a1 + 544) = v20;
  objc_storeStrong((a1 + 576), *(a2 + 576));
  objc_storeStrong((a1 + 584), *(a2 + 584));
  *(a1 + 592) = *(a2 + 592);
  v22 = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 608) = v22;
  if (a1 != a2)
  {
    std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((a1 + 624), *(a2 + 624), *(a2 + 632), *(a2 + 632) - *(a2 + 624));
  }

  *(a1 + 648) = apple3dgs::CGColorSpaceCreateCopyWithSameName(*(a2 + 648), v21);
  return a1;
}

void sub_247401218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24740140C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void sub_24740172C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    if (!v16)
    {
      JUMPOUT(0x2474016DCLL);
    }

    JUMPOUT(0x2474016CCLL);
  }

  _Unwind_Resume(exception_object);
}

apple3dgs *apple3dgs::Asset::Valid(apple3dgs::Asset *this, MTLAttributeFormat a2)
{
  if (!*(this + 16) || !*(this + 18))
  {
    return 0;
  }

  v3 = *(this + 19);
  if (v3 < apple3dgs::GetMinimumStride(*(this + 18), a2))
  {
    return 0;
  }

  if (!*(this + 21))
  {
    return 0;
  }

  result = *(this + 23);
  if (!result)
  {
    return result;
  }

  v6 = *(this + 24);
  if (v6 < apple3dgs::GetMinimumStride(result, v4) || !*(this + 26))
  {
    return 0;
  }

  result = *(this + 28);
  if (!result)
  {
    return result;
  }

  v8 = *(this + 29);
  if (v8 < apple3dgs::GetMinimumStride(result, v7) || !*(this + 31))
  {
    return 0;
  }

  result = *(this + 33);
  if (!result)
  {
    return result;
  }

  v10 = *(this + 34);
  if (v10 < apple3dgs::GetMinimumStride(result, v9) || !*(this + 36))
  {
    return 0;
  }

  result = *(this + 38);
  if (result)
  {
    v12 = *(this + 39);
    if (v12 >= apple3dgs::GetMinimumStride(result, v11) && *(this + 136))
    {
      return (*(this + 138) > 2u);
    }

    return 0;
  }

  return result;
}

void sub_247401C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x24C1A1F00](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_247401F70(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A1F80](v1);
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
  MEMORY[0x24C1A1F80](a1 + 128);
  return a1;
}

void sub_247402B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, ...)
{
  va_start(va, a15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json((v16 - 80));

  _Unwind_Resume(a1);
}

void sub_247402E24(_Unwind_Exception *a1)
{
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json((v2 - 80));

  _Unwind_Resume(a1);
}

void *nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::operator[]<char const>(uint64_t a1, char *__s)
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

  v9 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  result = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::operator[](a1, &__dst);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__dst);
    return v7;
  }

  return result;
}

void sub_247402F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::dump(void *a1@<X8>)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_24740327C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~serializer(va);
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278EA70E8, MEMORY[0x277D825F0]);
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

uint64_t MetalContext::operator=(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  if (a1 != a2)
  {
    *(a1 + 64) = *(a2 + 64);
    std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<objc_object  {objcproto23MTLComputePipelineState}* {__strong},void *> *>>(a1 + 32, *(a2 + 48), 0);
    *(a1 + 104) = *(a2 + 104);
    std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<objc_object  {objcproto20MTLDepthStencilState}* {__strong},void *> *>>(a1 + 72, *(a2 + 88), 0);
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<objc_object  {objcproto23MTLComputePipelineState}* {__strong},void *> *>>(uint64_t a1, void **a2, void **a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        if (v7 != a2)
        {
          v8 = *(a2 + 39);
          if (*(v7 + 39) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a2 + 2;
            }

            else
            {
              v10 = a2[2];
            }

            if (v8 >= 0)
            {
              v11 = *(a2 + 39);
            }

            else
            {
              v11 = a2[3];
            }

            std::string::__assign_no_alias<false>(v7 + 2, v10, v11);
          }

          else if ((*(a2 + 39) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v7 + 16, a2[2], a2[3]);
          }

          else
          {
            v9 = *(a2 + 1);
            v7[4] = a2[4];
            *(v7 + 1) = v9;
          }
        }

        objc_storeStrong(v7 + 5, a2[5]);
        v12 = *v7;
        std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__node_insert_multi(a1, v7);
        a2 = *a2;
        v7 = v12;
        if (!v12)
        {
          goto LABEL_22;
        }
      }

      do
      {
        v13 = *v7;

        if (*(v7 + 39) < 0)
        {
          operator delete(v7[2]);
        }

        operator delete(v7);
        v7 = v13;
      }

      while (v13);
    }
  }

LABEL_22:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__construct_node<std::pair<std::string const,objc_object  {objcproto23MTLComputePipelineState}*> const&>();
  }
}

void sub_247404174(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void sub_2474041A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__node_insert_multi(uint64_t *a1, uint64_t a2)
{
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  v6 = *(a2 + 39);
  v7 = *(a2 + 24);
  if ((v6 & 0x80u) == 0)
  {
    v8 = (a2 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if ((v6 & 0x80u) == 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v20, v8, v9);
  *(a2 + 8) = v10;
  inserted = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__node_insert_multi_prepare(a1, v10, v5);
  v12 = a1[1];
  v13 = *(a2 + 8);
  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    if (v13 >= *&v12)
    {
      v13 %= *&v12;
    }
  }

  else
  {
    v13 &= *&v12 - 1;
  }

  if (inserted)
  {
    *a2 = *inserted;
    *inserted = a2;
    if (*a2)
    {
      v15 = *(*a2 + 8);
      if (v14.u32[0] > 1uLL)
      {
        if (v15 >= *&v12)
        {
          v15 %= *&v12;
        }
      }

      else
      {
        v15 &= *&v12 - 1;
      }

      if (v15 != v13)
      {
        v18 = (*a1 + 8 * v15);
LABEL_25:
        *v18 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v16 = *a1;
    *(*a1 + 8 * v13) = a1 + 2;
    if (*a2)
    {
      v17 = *(*a2 + 8);
      if (v14.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      v18 = (v16 + 8 * v17);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

void std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_BYTE *std::string::__assign_no_alias<true>(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v5 & 0x7FFFFFFFFFFFFFFFLL) >= __len - (v5 & 0x7FFFFFFFFFFFFFFFLL) + 1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v7 = *a1;
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v12 = 1;
    if (v6 >= 3)
    {
      v12 = (v6 & (v6 - 1)) != 0;
    }

    v13 = v12 | (2 * v6);
    v14 = vcvtps_u32_f32(v7 / v8);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_15;
    }

    if (prime < v6)
    {
      v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v17 = vcnt_s8(v6), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
      {
        v19 = prime;
        v20 = std::__next_prime(v16);
        if (v19 <= v20)
        {
          prime = v20;
        }

        else
        {
          prime = v19;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = 1 << -__clz(v16 - 1);
        if (v16 >= 2)
        {
          v16 = v18;
        }

        if (prime <= v16)
        {
          prime = v16;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

LABEL_15:
      std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__do_rehash<false>(a1, prime);
    }

LABEL_29:
    v6 = *(a1 + 8);
    v21 = vcnt_s8(v6);
    v21.i16[0] = vaddlv_u8(v21);
    v10 = v21.u32[0];
    if (v21.u32[0] <= 1uLL)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v9 = vcnt_s8(v6);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] <= 1uLL)
  {
LABEL_4:
    v11 = (v6 - 1) & a2;
    goto LABEL_32;
  }

LABEL_30:
  v11 = a2;
  if (v6 <= a2)
  {
    v11 = a2 % v6;
  }

LABEL_32:
  v22 = *(*a1 + 8 * v11);
  if (!v22)
  {
    return 0;
  }

  v23 = a3[23];
  if (v23 >= 0)
  {
    v24 = a3[23];
  }

  else
  {
    v24 = *(a3 + 1);
  }

  if (v23 < 0)
  {
    a3 = *a3;
  }

  if (v10 >= 2)
  {
    v37 = 0;
    do
    {
      v29 = v22;
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      v41 = v22[1];
      v42 = v41;
      if (v41 >= v6)
      {
        v42 = v41 % v6;
      }

      if (v42 != v11)
      {
        break;
      }

      if (v41 != a2)
      {
        goto LABEL_55;
      }

      v43 = *(v22 + 39);
      v44 = v43;
      if ((v43 & 0x80u) != 0)
      {
        v43 = v22[3];
      }

      if (v43 == v24)
      {
        v45 = v44 >= 0 ? v22 + 2 : v22[2];
        v38 = memcmp(v45, a3, v24) == 0;
      }

      else
      {
LABEL_55:
        v38 = 0;
      }

      v39 = v38 != (v37 & 1);
      v40 = v37 & v39;
      v37 |= v39;
    }

    while (v40 != 1);
  }

  else
  {
    v25 = 0;
    v26 = v6 - 1;
    while (1)
    {
      v29 = v22;
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      v30 = v22[1];
      if ((v30 & v26) != v11)
      {
        break;
      }

      if (v30 != a2)
      {
        goto LABEL_40;
      }

      v31 = *(v22 + 39);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = v22[3];
      }

      if (v31 == v24)
      {
        if (v32 >= 0)
        {
          v33 = v22 + 2;
        }

        else
        {
          v33 = v22[2];
        }

        v34 = (memcmp(v33, a3, v24) == 0) != (v25 & 1);
        v35 = v25 & v34;
        v25 |= v34;
        if (v35)
        {
          return v29;
        }
      }

      else
      {
LABEL_40:
        v27 = (v25 & 1) != 0;
        v28 = v25 & v27;
        v25 |= v27;
        if (v28)
        {
          return v29;
        }
      }
    }
  }

  return v29;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {

      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
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

void std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<objc_object  {objcproto20MTLDepthStencilState}* {__strong},void *> *>>(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v10[0] = (v7 + 2);
        v10[1] = (v7 + 5);
        std::pair<std::string &,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}> &>::operator=[abi:ne200100]<std::string const,objc_object  {objcproto20MTLDepthStencilState}*,0>(v10, a2 + 2);
        v8 = *v7;
        std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__node_insert_multi(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      do
      {
        v9 = *v7;

        if (*(v7 + 39) < 0)
        {
          operator delete(v7[2]);
        }

        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_10:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__construct_node<std::pair<std::string const,objc_object  {objcproto20MTLDepthStencilState}*> const&>();
  }
}

void sub_247405238(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void sub_247405268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__node_insert_multi(uint64_t *a1, uint64_t a2)
{
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  v6 = *(a2 + 39);
  v7 = *(a2 + 24);
  if ((v6 & 0x80u) == 0)
  {
    v8 = (a2 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if ((v6 & 0x80u) == 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v20, v8, v9);
  *(a2 + 8) = v10;
  inserted = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__node_insert_multi_prepare(a1, v10, v5);
  v12 = a1[1];
  v13 = *(a2 + 8);
  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    if (v13 >= *&v12)
    {
      v13 %= *&v12;
    }
  }

  else
  {
    v13 &= *&v12 - 1;
  }

  if (inserted)
  {
    *a2 = *inserted;
    *inserted = a2;
    if (*a2)
    {
      v15 = *(*a2 + 8);
      if (v14.u32[0] > 1uLL)
      {
        if (v15 >= *&v12)
        {
          v15 %= *&v12;
        }
      }

      else
      {
        v15 &= *&v12 - 1;
      }

      if (v15 != v13)
      {
        v18 = (*a1 + 8 * v15);
LABEL_25:
        *v18 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v16 = *a1;
    *(*a1 + 8 * v13) = a1 + 2;
    if (*a2)
    {
      v17 = *(*a2 + 8);
      if (v14.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      v18 = (v16 + 8 * v17);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

void std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::pair<std::string &,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}> &>::operator=[abi:ne200100]<std::string const,objc_object  {objcproto20MTLDepthStencilState}*,0>(uint64_t *a1, size_t *a2)
{
  v2 = a2;
  v4 = *a1;
  if (v4 != a2)
  {
    if (*(v4 + 23) < 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v6 = v2[1];
      }

      std::string::__assign_no_alias<false>(v4, a2, v6);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v4, *a2, a2[1]);
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = a2[2];
      *v4 = v5;
    }
  }

  v7 = a1[1];
  objc_storeStrong(v7, v2[3]);
  objc_storeStrong(v7 + 1, v2[4]);
  return a1;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {

      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

char *std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
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
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v13 = a3 - a2;
    if (v13)
    {
      v14 = result;
      memmove(result, a2, v13);
      result = v14;
    }

    a1[1] = &result[v13];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    a1[1] = &v9[v12];
  }

  return result;
}

void apple3dgs::Asset::~Asset(apple3dgs::Asset *this)
{
  CGColorSpaceRelease(*(this + 81));
  v2 = *(this + 78);
  if (v2)
  {
    *(this + 79) = v2;
    operator delete(v2);
  }

  MetalContext::~MetalContext(this);
}

void MetalContext::~MetalContext(MetalContext *this)
{
  next = this->render_pipelines.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v6 = *next;

      if (*(next + 39) < 0)
      {
        operator delete(next[2]);
      }

      operator delete(next);
      next = v6;
    }

    while (v6);
  }

  ptr = this->render_pipelines.__table_.__bucket_list_.__ptr_;
  this->render_pipelines.__table_.__bucket_list_.__ptr_ = 0;
  if (ptr)
  {
    operator delete(ptr);
  }

  v4 = this->compute_pipelines.__table_.__first_node_.__next_;
  if (v4)
  {
    do
    {
      v7 = *v4;

      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v7;
    }

    while (v7);
  }

  v5 = this->compute_pipelines.__table_.__bucket_list_.__ptr_;
  this->compute_pipelines.__table_.__bucket_list_.__ptr_ = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

void nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(uint64_t *a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if ((a2 - 1) > 1)
  {
    goto LABEL_74;
  }

  __p = 0;
  v53 = 0;
  v54 = 0;
  v4 = *a1;
  if (a2 == 2)
  {
    std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::reserve(&__p, (v4[1] - *v4) >> 4);
    v6 = **v3;
    v5 = *(*v3 + 8);
    if (v6 != v5)
    {
      v7 = v53;
      do
      {
        if (v7 < v54)
        {
          *v7 = *v6;
          *(v7 + 8) = *(v6 + 8);
          *v6 = 0;
          *(v6 + 8) = 0;
          v7 += 16;
        }

        else
        {
          v7 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(&__p, v6);
        }

        v53 = v7;
        v6 += 16;
      }

      while (v6 != v5);
    }
  }

  else
  {
    std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::reserve(&__p, v4[2]);
    v8 = *v3 + 8;
    v9 = **v3;
    if (v9 != v8)
    {
      v10 = v53;
      do
      {
        if (v10 >= v54)
        {
          v10 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(&__p, (v9 + 7));
        }

        else
        {
          *v10 = *(v9 + 56);
          *(v10 + 8) = v9[8];
          *(v9 + 56) = 0;
          v9[8] = 0;
          v10 += 16;
        }

        v53 = v10;
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v8);
    }
  }

  v15 = __p;
  v14 = v53;
  if (__p != v53)
  {
    v48 = v2;
    v49 = v3;
    while (1)
    {
      v50 = *(v14 - 16);
      v51 = *(v14 - 1);
      *(v14 - 16) = 0;
      *(v14 - 1) = 0;
      v16 = (v53 - 16);
      v17 = v53 - 8;
      v18 = -16;
      while (v18)
      {
        v18 += 16;
        v19 = v17 - 16;
        nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v17, *(v17 - 8));
        v17 = v19;
      }

      v53 = v16;
      if (v50 != 1)
      {
        if (v50 == 2)
        {
          v20 = v51;
          v21 = *v51;
          v22 = v51[1];
          if (*v51 != v22)
          {
            do
            {
              if (v16 < v54)
              {
                *v16 = *v21;
                *(v16 + 8) = v21[1];
                *v21 = 0;
                v21[1] = 0;
                v16 += 16;
              }

              else
              {
                v23 = __p;
                v24 = (v16 - __p) >> 4;
                v25 = v24 + 1;
                if ((v24 + 1) >> 60)
                {
                  std::vector<char>::__throw_length_error[abi:ne200100]();
                }

                v26 = v54 - __p;
                if ((v54 - __p) >> 3 > v25)
                {
                  v25 = v26 >> 3;
                }

                if (v26 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v27 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v27 = v25;
                }

                if (v27)
                {
                  if (!(v27 >> 60))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v28 = 16 * v24;
                *v28 = *v21;
                *(v28 + 8) = v21[1];
                *v21 = 0;
                v21[1] = 0;
                v29 = v53;
                v30 = (v28 + v23 - v53);
                if (v23 != v53)
                {
                  v31 = 0;
                  do
                  {
                    v32 = &v23[v31];
                    v33 = &v30[v31];
                    *v33 = v23[v31];
                    *(v33 + 1) = *&v23[v31 + 8];
                    *v32 = 0;
                    *(v32 + 1) = 0;
                    v31 += 16;
                  }

                  while (v32 + 16 != v29);
                  if (v23 != v29)
                  {
                    do
                    {
                      v35 = *v23;
                      v34 = v23 + 8;
                      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v34, v35);
                      v23 = v34 + 8;
                    }

                    while (v23 != v29);
                    v23 = __p;
                  }
                }

                v16 = v28 + 16;
                __p = v30;
                v53 = (v28 + 16);
                v54 = 0;
                if (v23)
                {
                  operator delete(v23);
                }
              }

              v53 = v16;
              v21 += 2;
            }

            while (v21 != v22);
            v20 = v51;
            v21 = *v51;
            v22 = v51[1];
          }

          while (v22 != v21)
          {
            v41 = *(v22 - 16);
            v22 -= 2;
            nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v22 + 1, v41);
          }

          v20[1] = v21;
        }

        goto LABEL_68;
      }

      v36 = v51;
      v37 = v51 + 1;
      v38 = *v51;
      if (*v51 != v51 + 1)
      {
        break;
      }

LABEL_63:
      std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(v36, *(v36 + 8));
      *v36 = v36 + 8;
      *(v36 + 16) = 0;
      *(v36 + 8) = 0;
LABEL_68:
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v51, v50);
      v15 = __p;
      v14 = v53;
      if (__p == v53)
      {
        v3 = v49;
        v2 = v48;
        goto LABEL_70;
      }
    }

    while (1)
    {
      if (v16 >= v54)
      {
        v16 = std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(&__p, (v38 + 7));
        v53 = v16;
        v39 = v38[1];
        if (v39)
        {
          do
          {
LABEL_57:
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
          goto LABEL_52;
        }
      }

      else
      {
        *v16 = *(v38 + 56);
        *(v16 + 8) = v38[8];
        *(v38 + 56) = 0;
        v38[8] = 0;
        v16 += 16;
        v53 = v16;
        v39 = v38[1];
        if (v39)
        {
          goto LABEL_57;
        }
      }

      do
      {
        v40 = v38[2];
        v13 = *v40 == v38;
        v38 = v40;
      }

      while (!v13);
LABEL_52:
      v38 = v40;
      if (v40 == v37)
      {
        v36 = v51;
        goto LABEL_63;
      }
    }
  }

LABEL_70:
  if (v15)
  {
    while (v14 != v15)
    {
      v42 = *(v14 - 16);
      v14 -= 16;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v14 + 8, v42);
    }

    v53 = v15;
    operator delete(__p);
  }

LABEL_74:
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(*v3, *(*v3 + 8));
LABEL_91:
      v43 = *v3;
      goto LABEL_92;
    }

    if (v2 != 2)
    {
      return;
    }

    v43 = *v3;
    v44 = **v3;
    if (!v44)
    {
      goto LABEL_92;
    }

    for (i = v43[1]; i != v44; nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(i + 8, v46))
    {
      v46 = *(i - 16);
      i -= 16;
    }

    v43[1] = v44;
    goto LABEL_89;
  }

  if (v2 == 3)
  {
    v43 = *v3;
    if (*(*v3 + 23) < 0)
    {
LABEL_89:
      v47 = *v43;
      goto LABEL_90;
    }
  }

  else
  {
    if (v2 != 8)
    {
      return;
    }

    v43 = *v3;
    v47 = **v3;
    if (v47)
    {
      v43[1] = v47;
LABEL_90:
      operator delete(v47);
      goto LABEL_91;
    }
  }

LABEL_92:
  operator delete(v43);
}

void sub_247405EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_247405EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(va);
  std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void *std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__emplace_back_slow_path<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>(void **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 16 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v7 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      v11 += 16;
      v12 += 16;
    }

    while (v11 != v9);
    do
    {
      v14 = *v8;
      v13 = v8 + 8;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(v13, v14);
      v8 = v13 + 8;
    }

    while (v8 != v9);
  }

  v15 = *a1;
  *a1 = v10;
  a1[1] = (v7 + 16);
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v7 + 16;
}

void std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::destroy(a1, *(a2 + 1));
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

uint64_t **std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~vector[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(i + 1, v4))
    {
      v4 = *(i - 16);
      i -= 2;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(i + 1, v4))
    {
      v4 = *(i - 16);
      i -= 2;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<apple3dgs::Asset>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593CB40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

apple3dgs::Asset *apple3dgs::Asset::Asset(apple3dgs::Asset *this)
{
  v2 = MTLCreateSystemDefaultDevice();
  MetalContext::MetalContext(this, v2, 0);

  v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
  *(this + 8) = 0u;
  *(this + 15) = v3;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  apple3dgs::Asset::Attributes::Attributes((this + 128), v4);
  *(this + 21) = xmmword_247477B90;
  *(this + 22) = xmmword_247477BA0;
  *(this + 23) = xmmword_247477BB0;
  *(this + 24) = xmmword_247477BC0;
  *(this + 25) = xmmword_247477B90;
  *(this + 26) = xmmword_247477BA0;
  *(this + 27) = xmmword_247477BB0;
  *(this + 28) = xmmword_247477BC0;
  *(this + 29) = xmmword_247477B90;
  *(this + 30) = xmmword_247477BA0;
  *(this + 31) = xmmword_247477BD0;
  *(this + 32) = 0u;
  *(this + 132) = 0;
  *(this + 34) = xmmword_247477BE0;
  *(this + 70) = 0x100000000;
  *(this + 142) = 2;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 152) = 0;
  *(this + 612) = 1;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
  v6 = *(this + 81);
  if (v6 != v5)
  {
    CGColorSpaceRelease(v6);
    *(this + 81) = v5;
    CGColorSpaceRetain(v5);
    *(this + 139) = apple3dgs::CGColorSpaceGetTransferFunction(*(this + 81), v7);
  }

  CGColorSpaceRelease(v5);
  return this;
}

void sub_247406490(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  apple3dgs::Asset::Derived::~Derived((v1 + 576));
  apple3dgs::Asset::Attributes::~Attributes(v2);

  MetalContext::~MetalContext(v1);
  _Unwind_Resume(a1);
}

apple3dgs::Asset::Attributes *apple3dgs::Asset::Attributes::Attributes(apple3dgs::Asset::Attributes *this, MTLAttributeFormat a2)
{
  MinimumStride = apple3dgs::GetMinimumStride(0x1E, a2);
  *this = 0;
  *(this + 1) = [0 contents];
  *(this + 2) = 30;
  *(this + 3) = MinimumStride;
  *(this + 4) = 0;
  v5 = apple3dgs::GetMinimumStride(0x1E, v4);
  *(this + 5) = 0;
  *(this + 6) = [0 contents];
  *(this + 7) = 30;
  *(this + 8) = v5;
  *(this + 9) = 0;
  v7 = apple3dgs::GetMinimumStride(0x1C, v6);
  *(this + 10) = 0;
  *(this + 11) = [0 contents];
  *(this + 12) = 28;
  *(this + 13) = v7;
  *(this + 14) = 0;
  v9 = apple3dgs::GetMinimumStride(0x1E, v8);
  *(this + 15) = 0;
  *(this + 16) = [0 contents];
  *(this + 17) = 30;
  *(this + 18) = v9;
  *(this + 19) = 0;
  v11 = apple3dgs::GetMinimumStride(0x1F, v10);
  *(this + 20) = 0;
  *(this + 21) = [0 contents];
  *(this + 22) = 31;
  *(this + 23) = v11;
  *(this + 24) = 0;
  return this;
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if (v4 < 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v6 = v10 >> 63;
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    LODWORD(v6) = 0;
    v7 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    v9 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v9->__r_.__value_.__l.__data_ + size + 1) > a2)
  {
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_35;
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v19 = a3 - a2;
    if (a3 != a2)
    {
      memcpy(__dst, a2, v5);
    }

    *(__dst + v5) = 0;
    if ((v19 & 0x80u) == 0)
    {
      v15 = __dst;
    }

    else
    {
      v15 = __dst[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __dst[1];
    }

    std::string::append(this, v15, v16);
    if (v19 < 0)
    {
      operator delete(__dst[0]);
    }

    return this;
  }

LABEL_12:
  if (v7 - size < v5)
  {
    if (0x7FFFFFFFFFFFFFF7 - v7 >= v5 + size - v7)
    {
      if ((v4 & 0x80000000) != 0)
      {
        v11 = this->__r_.__value_.__r.__words[0];
      }

      operator new();
    }

LABEL_35:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = this;
  if (v6)
  {
    v12 = this->__r_.__value_.__r.__words[0];
  }

  v13 = v12 + size;
  if (a3 != a2)
  {
    memmove(v12 + size, a2, v5);
  }

  v13[v5] = 0;
  v14 = v5 + size;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  return this;
}

void sub_2474068A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

std::string *nlohmann::json_abi_v3_11_2::detail::concat<std::string,std::string,std::string,std::string const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v5 = *(a1 + 23);
  v6 = v5;
  v7 = *(a1 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  v11 = v9 + v8 + v10;
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v15 = 24;
    }

    else
    {
      v15 = v11 | 7;
    }

    std::string::__shrink_or_extend[abi:ne200100](a4, v15);
    v5 = *(a1 + 23);
    v7 = *(a1 + 8);
    v6 = *(a1 + 23);
  }

  if (v6 >= 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = *a1;
  }

  if (v6 >= 0)
  {
    v17 = v5;
  }

  else
  {
    v17 = v7;
  }

  std::string::append(a4, v16, v17);
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  std::string::append(a4, v19, v20);
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  return std::string::append(a4, v22, v23);
}

void sub_247406B28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__shrink_or_extend[abi:ne200100](_BYTE *__dst, unint64_t a2)
{
  v3 = __dst[23];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 22;
    LOBYTE(v5) = __dst[23];
    v6 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v3 = *(__dst + 1);
  v8 = *(__dst + 2);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v5 = HIBYTE(v8);
  v6 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *__dst;
  if ((v5 & 0x80) == 0)
  {
    v9 = v5 + 1;
LABEL_9:
    memmove(__dst, v7, v9);
    goto LABEL_10;
  }

  v10 = *(__dst + 1);
  v6 = 1;
  v9 = v10 + 1;
  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v6)
  {
    operator delete(v7);
  }

  __dst[23] = v3 & 0x7F;
}

void sub_247406CD0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

std::string *nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[17],std::string const&,char,std::string,char const(&)[3]>@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, std::string::value_type *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, std::string *a6@<X8>)
{
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  v12 = strlen(a1);
  if (*(a2 + 23) >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (*(a4 + 23) >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 8);
  }

  v15 = v12 + strlen(a5) + v13 + v14 + 1;
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v15 >= 0x17)
  {
    v16 = v15 | 7;
    if (v16 == 23)
    {
      v17 = 24;
    }

    else
    {
      v17 = v16;
    }

    std::string::__shrink_or_extend[abi:ne200100](a6, v17);
  }

  v18 = strlen(a1);
  std::string::append(a6, a1, v18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  std::string::append(a6, v20, v21);
  std::string::push_back(a6, *a3);
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 8);
  }

  std::string::append(a6, v23, v24);
  v25 = strlen(a5);
  return std::string::append(a6, a5, v25);
}

void sub_247406E4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_2::detail::exception::~exception(std::exception *this)
{
  this->__vftable = &unk_28593CBA8;
  MEMORY[0x24C1A1B70](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28593CBA8;
  MEMORY[0x24C1A1B70](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x24C1A2010);
}

void *nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::operator[](uint64_t a1, const void **a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::type_name(a1);
    nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("cannot use operator[] with a string argument with ", &v6, &v7);
    nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(305, &v7, exception);
  }

  v3 = *(a1 + 8);
  v7.__r_.__value_.__r.__words[0] = 0;
  return std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_unique_key_args<std::string,std::string,decltype(nullptr)>(v3, a2) + 7;
}

void sub_247407030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 10;
  strcpy(v7, "type_error");
  v12 = 46;
  std::to_string(&v11, a1);
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[17],std::string const&,char,std::string,char const(&)[3]>("[json.exception.", v7, &v12, &v11, "] ", &__p);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  *(&v11.__r_.__value_.__s + 23) = 0;
  v11.__r_.__value_.__s.__data_[0] = 0;
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,std::string,std::string,std::string const&>(&__p, &v11, a2, &v10);
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_13:
  operator delete(v7[0]);
LABEL_6:
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v10;
  }

  else
  {
    v6 = v10.__r_.__value_.__r.__words[0];
  }

  *a3 = &unk_28593CBA8;
  *(a3 + 8) = a1;
  MEMORY[0x24C1A1B40](a3 + 16, v6);
  *a3 = &unk_28593CBE8;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2474071E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::exception::~exception(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>@<X0>(const char *a1@<X0>, const char **a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = strlen(a1);
  v7 = strlen(*a2) + v6;
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    v8 = v7 | 7;
    if (v8 == 23)
    {
      v9 = 24;
    }

    else
    {
      v9 = v8;
    }

    std::string::__shrink_or_extend[abi:ne200100](a3, v9);
  }

  v10 = strlen(a1);
  std::string::append(a3, a1, v10);
  v11 = *a2;
  v12 = strlen(v11);
  return std::string::append(a3, v11, v12);
}

void sub_24740730C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const char *nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::type_name(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_278EA70F8[v1];
  }
}

void *std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_unique_key_args<std::string,std::string,decltype(nullptr)>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

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
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void nlohmann::json_abi_v3_11_2::detail::external_constructor<(nlohmann::json_abi_v3_11_2::detail::value_t)3>::construct<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,char const*,0>(uint64_t *a1)
{
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(a1 + 1, *a1);
  *a1 = 3;
  operator new();
}

void sub_247407844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      for (i = v2[1]; i != v3; nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(i + 1, v5))
      {
        v5 = *(i - 16);
        i -= 2;
      }

      v2[1] = v3;
      operator delete(**a1);
    }
  }

  return a1;
}

void sub_24740799C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

char *nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump(char *result, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  v10 = *a2;
  if (v10 > 4)
  {
    if (*a2 > 6u)
    {
      if (v10 == 7)
      {
        if ((*(a2 + 1) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_32:
          v30 = *result;
          v13 = (**v9)[1];
          goto LABEL_140;
        }

        nlohmann::json_abi_v3_11_2::detail::to_chars<double>(result + 16, *(a2 + 1));
        v13 = (**v9)[1];
LABEL_140:

        return v13();
      }

      if (v10 != 8)
      {
        if (v10 != 9)
        {
          return result;
        }

        v14 = *result;
        v13 = (**v9)[1];
        goto LABEL_140;
      }

      v32 = *result;
      v33 = (**v9)[1];
      if (a3)
      {
        v33();
        v34 = (a6 + a5);
        v35 = v9 + 76;
        v36 = *(v9 + 631);
        if ((v36 & 0x80000000) != 0)
        {
          v60 = v9[77];
          if (v60 >= v34)
          {
            v37 = *v9;
            goto LABEL_76;
          }
        }

        else
        {
          if (v34 <= v36)
          {
            v37 = *v9;
            v38 = v9 + 76;
            goto LABEL_77;
          }

          v60 = *(v9 + 631);
        }

        std::string::resize((v9 + 76), 2 * v60, 32);
        v37 = *v9;
        v38 = v9 + 76;
        if ((*(v9 + 631) & 0x80000000) == 0)
        {
LABEL_77:
          ((*v37)[1])(v37, v38, v34);
          ((**v9)[1])(*v9, "bytes: [", 10);
          v61 = **(a2 + 1);
          v62 = *(*(a2 + 1) + 8);
          v63 = **(a2 + 1);
          if (v63 == v62)
          {
            goto LABEL_153;
          }

          if (v63 != v62 - 1)
          {
            while (1)
            {
              v64 = *v63;
              if (*v63)
              {
                break;
              }

              (***v9)(*v9, 48);
LABEL_81:
              ((**v9)[1])(*v9, ", ", 2);
              ++v63;
              v62 = *(*(a2 + 1) + 8);
              if (v63 == v62 - 1)
              {
                goto LABEL_90;
              }
            }

            if (v64 >= 0xA)
            {
              if (v64 < 0x64)
              {
                v66 = &nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[v64];
                *(v9 + 17) = v66[1];
                v67 = *v66;
                v65 = 2;
LABEL_89:
                *(v9 + 16) = v67;
                ((**v9)[1])(*v9, v9 + 2, v65);
                goto LABEL_81;
              }

              *(v9 + 17) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[*v63 % 0x64u];
              LOBYTE(v64) = v64 / 0x64u;
              v65 = 3;
            }

            else
            {
              v65 = 1;
            }

            v67 = v64 | 0x30;
            goto LABEL_89;
          }

LABEL_90:
          v68 = *(v62 - 1);
          if (!v68)
          {
            (***v9)(*v9, 48);
            goto LABEL_153;
          }

          if (v68 >= 0xA)
          {
            if (v68 < 0x64)
            {
              v84 = &nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[v68];
              *(v9 + 17) = v84[1];
              v85 = *v84;
              v69 = 2;
LABEL_152:
              *(v9 + 16) = v85;
              ((**v9)[1])(*v9, v9 + 2, v69);
LABEL_153:
              ((**v9)[1])(*v9, "],\n", 3);
              v94 = v9 + 76;
              if (*(v9 + 631) < 0)
              {
                v94 = *v35;
              }

              ((**v9)[1])(*v9, v94, v34);
              ((**v9)[1])(*v9, "subtype: ", 11);
              v95 = *(a2 + 1);
              if (*(v95 + 32) != 1)
              {
                v98 = (**v9)[1];
LABEL_193:
                v98();
                goto LABEL_194;
              }

              v96 = *(v95 + 24);
              if (!v96)
              {
                (***v9)(*v9, 48);
LABEL_194:
                (***v9)(*v9, 10);
                if (*(v9 + 631) < 0)
                {
                  v105 = *v35;
                }

                v78 = (**v9)[1];
                goto LABEL_197;
              }

              if (v96 >= 0xA)
              {
                v99 = 4;
                v100 = v96;
                while (1)
                {
                  if (v100 <= 0x63)
                  {
                    v99 -= 2;
                    goto LABEL_184;
                  }

                  if (v100 <= 0x3E7)
                  {
                    break;
                  }

                  if (v100 >> 4 < 0x271)
                  {
                    goto LABEL_184;
                  }

                  v99 += 4;
                  v54 = v100 >= 0x186A0;
                  v100 /= 0x2710uLL;
                  if (!v54)
                  {
                    v99 -= 3;
                    goto LABEL_184;
                  }
                }

                --v99;
LABEL_184:
                v97 = v9 + v99 + 16;
                if (v96 < 0x64)
                {
                  v103 = v96;
                }

                else
                {
                  do
                  {
                    v103 = v96 / 0x64;
                    *(v97 - 2) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v96 % 0x64];
                    v97 -= 2;
                    v104 = v96 >> 4;
                    v96 /= 0x64uLL;
                  }

                  while (v104 > 0x270);
                }

                if (v103 >= 0xA)
                {
                  *(v97 - 2) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v103];
LABEL_192:
                  v98 = (**v9)[1];
                  goto LABEL_193;
                }

                LOBYTE(v96) = v103;
              }

              else
              {
                v97 = v9 + 17;
              }

              *(v97 - 1) = v96 | 0x30;
              goto LABEL_192;
            }

            *(v9 + 17) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[v68 % 0x64u];
            v69 = 3;
            LOBYTE(v68) = v68 / 0x64u;
          }

          else
          {
            v69 = 1;
          }

          v85 = v68 | 0x30;
          goto LABEL_152;
        }

LABEL_76:
        v38 = *v35;
        goto LABEL_77;
      }

      v33();
      v39 = **(a2 + 1);
      v40 = *(*(a2 + 1) + 8);
      v41 = **(a2 + 1);
      if (v41 == v40)
      {
LABEL_135:
        ((**v9)[1])(*v9, "],subtype:", 12);
        v89 = *(a2 + 1);
        if (*(v89 + 32) != 1)
        {
          v13 = (**v9)[1];
          goto LABEL_140;
        }

        v90 = *(v89 + 24);
        if (!v90)
        {
          (***v9)(*v9, 48);
LABEL_179:
          v48 = ***v9;
          goto LABEL_180;
        }

        if (v90 >= 0xA)
        {
          v92 = 4;
          v93 = v90;
          while (1)
          {
            if (v93 <= 0x63)
            {
              v92 -= 2;
              goto LABEL_170;
            }

            if (v93 <= 0x3E7)
            {
              break;
            }

            if (v93 >> 4 < 0x271)
            {
              goto LABEL_170;
            }

            v92 += 4;
            v54 = v93 >= 0x186A0;
            v93 /= 0x2710uLL;
            if (!v54)
            {
              v92 -= 3;
              goto LABEL_170;
            }
          }

          --v92;
LABEL_170:
          v91 = v9 + v92 + 16;
          if (v90 < 0x64)
          {
            v101 = v90;
          }

          else
          {
            do
            {
              v101 = v90 / 0x64;
              *(v91 - 2) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v90 % 0x64];
              v91 -= 2;
              v102 = v90 >> 4;
              v90 /= 0x64uLL;
            }

            while (v102 > 0x270);
          }

          if (v101 >= 0xA)
          {
            *(v91 - 2) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v101];
LABEL_178:
            (**v9)[1]();
            goto LABEL_179;
          }

          LOBYTE(v90) = v101;
        }

        else
        {
          v91 = v9 + 17;
        }

        *(v91 - 1) = v90 | 0x30;
        goto LABEL_178;
      }

      if (v41 != v40 - 1)
      {
        while (1)
        {
          v42 = *v41;
          if (*v41)
          {
            break;
          }

          (***v9)(*v9, 48);
LABEL_44:
          (***v9)(*v9, 44);
          ++v41;
          v40 = *(*(a2 + 1) + 8);
          if (v41 == v40 - 1)
          {
            goto LABEL_71;
          }
        }

        if (v42 >= 0xA)
        {
          if (v42 < 0x64)
          {
            v44 = &nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[v42];
            *(v9 + 17) = v44[1];
            v45 = *v44;
            v43 = 2;
LABEL_52:
            *(v9 + 16) = v45;
            ((**v9)[1])(*v9, v9 + 2, v43);
            goto LABEL_44;
          }

          *(v9 + 17) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[*v41 % 0x64u];
          LOBYTE(v42) = v42 / 0x64u;
          v43 = 3;
        }

        else
        {
          v43 = 1;
        }

        v45 = v42 | 0x30;
        goto LABEL_52;
      }

LABEL_71:
      v58 = *(v40 - 1);
      if (!v58)
      {
        (***v9)(*v9, 48);
        goto LABEL_135;
      }

      if (v58 >= 0xA)
      {
        if (v58 < 0x64)
        {
          v82 = &nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[v58];
          *(v9 + 17) = v82[1];
          v83 = *v82;
          v59 = 2;
LABEL_134:
          *(v9 + 16) = v83;
          ((**v9)[1])(*v9, v9 + 2, v59);
          goto LABEL_135;
        }

        *(v9 + 17) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[v58 % 0x64u];
        v59 = 3;
        LOBYTE(v58) = v58 / 0x64u;
      }

      else
      {
        v59 = 1;
      }

      v83 = v58 | 0x30;
      goto LABEL_134;
    }

    if (v10 == 5)
    {
      v23 = *(a2 + 1);

      return nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<long long,0>(result, v23);
    }

    if (v10 != 6)
    {
      return result;
    }

    v21 = *(a2 + 1);
    if (!v21)
    {
      v47 = *result;
      v48 = ***v9;
LABEL_180:

      return v48();
    }

    if (v21 >= 0xA)
    {
      v52 = 4;
      v53 = *(a2 + 1);
      while (1)
      {
        if (v53 <= 0x63)
        {
          v52 -= 2;
          goto LABEL_123;
        }

        if (v53 <= 0x3E7)
        {
          break;
        }

        if (v53 >> 4 < 0x271)
        {
          goto LABEL_123;
        }

        v52 += 4;
        v54 = v53 >= 0x186A0;
        v53 /= 0x2710uLL;
        if (!v54)
        {
          v52 -= 3;
          goto LABEL_123;
        }
      }

      --v52;
LABEL_123:
      v22 = &result[v52 + 16];
      if (v21 < 0x64)
      {
        v86 = *(a2 + 1);
      }

      else
      {
        do
        {
          v86 = v21 / 0x64;
          *(v22 - 2) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v21 % 0x64];
          v22 -= 2;
          v87 = v21 >> 4;
          v21 /= 0x64uLL;
        }

        while (v87 > 0x270);
      }

      if (v86 >= 0xA)
      {
        *(v22 - 2) = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v86];
LABEL_131:
        v88 = *result;
        v13 = (**v9)[1];
        goto LABEL_140;
      }

      LOBYTE(v21) = v86;
    }

    else
    {
      v22 = (result + 17);
    }

    *(v22 - 1) = v21 | 0x30;
    goto LABEL_131;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v15 = *result;
      v16 = **v9;
      if (!*(*(a2 + 1) + 16))
      {
        v46 = v16[1];
        goto LABEL_56;
      }

      if (!a3)
      {
        (*v16)();
        v49 = *(a2 + 1);
        v50 = *v49;
        if (v49[2] == 1)
        {
          v51 = *v49;
        }

        else
        {
          v70 = 0;
          do
          {
            (***v9)(*v9, 34);
            nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_escaped(v9, v50 + 4, a4);
            ((**v9)[1])(*v9, ":", 2);
            nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump(v9, v50 + 7, 0, a4, a5, a6);
            (***v9)();
            v71 = v50[1];
            if (v71)
            {
              do
              {
                v51 = v71;
                v71 = *v71;
              }

              while (v71);
            }

            else
            {
              do
              {
                v51 = v50[2];
                v72 = *v51 == v50;
                v50 = v51;
              }

              while (!v72);
            }

            ++v70;
            v50 = v51;
          }

          while (v70 < *(*(a2 + 1) + 16) - 1);
        }

        (***v9)(*v9, 34);
        nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_escaped(v9, v51 + 4, a4);
        ((**v9)[1])(*v9, ":", 2);
        nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump(v9, v51 + 7, 0, a4, a5, a6);
        goto LABEL_198;
      }

      v16[1]();
      v17 = (a6 + a5);
      v18 = v9 + 76;
      v19 = *(v9 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = v9[77];
        if (v20 < v17)
        {
LABEL_199:
          std::string::resize((v9 + 76), 2 * v20, 32);
          v106 = *(a2 + 1);
          v74 = *v106;
          if (v106[2] != 1)
          {
LABEL_200:
            v107 = 0;
            do
            {
              v108 = v9 + 76;
              if (*(v9 + 631) < 0)
              {
                v108 = *v18;
              }

              ((**v9)[1])(*v9, v108, (a6 + a5));
              (***v9)();
              nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_escaped(v9, v74 + 4, a4);
              ((**v9)[1])(*v9, ": ", 3);
              nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump(v9, v74 + 7, 1, a4, a5, (a6 + a5));
              ((**v9)[1])(*v9, ",\n", 2);
              v109 = v74[1];
              if (v109)
              {
                do
                {
                  v75 = v109;
                  v109 = *v109;
                }

                while (v109);
              }

              else
              {
                do
                {
                  v75 = v74[2];
                  v72 = *v75 == v74;
                  v74 = v75;
                }

                while (!v72);
              }

              ++v107;
              v74 = v75;
            }

            while (v107 < *(*(a2 + 1) + 16) - 1);
            goto LABEL_104;
          }

LABEL_103:
          v75 = v74;
LABEL_104:
          v76 = v9 + 76;
          if (*(v9 + 631) < 0)
          {
            v76 = *v18;
          }

          ((**v9)[1])(*v9, v76, (a6 + a5));
          (***v9)();
          nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_escaped(v9, v75 + 4, a4);
          ((**v9)[1])(*v9, ": ", 3);
          nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump(v9, v75 + 7, 1, a4, a5, (a6 + a5));
          (***v9)();
          if (*(v9 + 631) < 0)
          {
            v77 = *v18;
          }

          v78 = (**v9)[1];
LABEL_197:
          v78();
LABEL_198:
          v13 = ***v9;
          goto LABEL_217;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(v9 + 631);
        goto LABEL_199;
      }

      v73 = *(a2 + 1);
      v74 = *v73;
      if (v73[2] != 1)
      {
        goto LABEL_200;
      }

      goto LABEL_103;
    }

    goto LABEL_32;
  }

  switch(v10)
  {
    case 2u:
      v24 = *result;
      v25 = **v9;
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        if (!a3)
        {
          (*v25)();
          v55 = *(a2 + 1);
          v57 = *v55;
          for (i = v55[1]; v57 != i - 16; i = *(*(a2 + 1) + 8))
          {
            nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump(v9, v57, 0, a4, a5, a6);
            (***v9)();
            v57 += 16;
          }

          nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump(v9, i - 16, 0, a4, a5, a6);
          goto LABEL_216;
        }

        v25[1]();
        v26 = (a6 + a5);
        v27 = v9 + 76;
        v28 = *(v9 + 631);
        if ((v28 & 0x80000000) != 0)
        {
          v29 = v9[77];
          if (v29 < v26)
          {
LABEL_210:
            std::string::resize((v9 + 76), 2 * v29, 32);
            v110 = *(a2 + 1);
            v80 = *v110;
            if (*v110 == v110[1] - 16)
            {
              goto LABEL_211;
            }

            goto LABEL_113;
          }
        }

        else if (v26 > v28)
        {
          v29 = *(v9 + 631);
          goto LABEL_210;
        }

        v79 = *(a2 + 1);
        v80 = *v79;
        if (*v79 == v79[1] - 16)
        {
LABEL_211:
          v111 = v9 + 76;
          if (*(v9 + 631) < 0)
          {
            v111 = *v27;
          }

          ((**v9)[1])(*v9, v111, (a6 + a5));
          nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump(v9, *(*(a2 + 1) + 8) - 16, 1, a4, a5, (a6 + a5));
          (***v9)();
          if (*(v9 + 631) < 0)
          {
            v27 = *v27;
          }

          ((**v9)[1])(*v9, v27, a6);
LABEL_216:
          v13 = ***v9;
LABEL_217:

          return v13();
        }

        do
        {
LABEL_113:
          if (*(v9 + 631) < 0)
          {
            v81 = *v27;
          }

          (**v9)[1]();
          nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump(v9, v80, 1, a4, a5, (a6 + a5));
          ((**v9)[1])(*v9, ",\n", 2);
          v80 += 16;
        }

        while (v80 != *(*(a2 + 1) + 8) - 16);
        goto LABEL_211;
      }

      v46 = v25[1];
LABEL_56:

      return v46();
    case 3u:
      v31 = *result;
      (***v9)();
      nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_escaped(v9, *(a2 + 1), a4);
      v13 = ***v9;
      goto LABEL_217;
    case 4u:
      v12 = *result;
      v13 = (**v9)[1];
      a2[8];
      goto LABEL_140;
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~serializer(uint64_t result)
{
  if (*(result + 631) < 0)
  {
    v1 = result;
    operator delete(*(result + 608));
    result = v1;
  }

  v2 = *(result + 8);
  if (v2)
  {
    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = result;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      return v3;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<nlohmann::json_abi_v3_11_2::detail::output_string_adapter<char,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593CC10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_escaped(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v3 >> 63;
  v15 = result + 90;
  do
  {
    if (v14)
    {
      v17 = *a2;
    }

    else
    {
      v17 = a2;
    }

    v18 = *(v17 + v9);
    if (v12)
    {
      v13 = *(v17 + v9) & 0x3F | (v13 << 6);
    }

    else
    {
      v13 = (0xFFu >> nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v18]) & v18;
    }

    v12 = nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[16 * v12 + 256 + nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v18]];
    if (v12 == 1)
    {
      v20 = *(v7 + 158);
      if ((v20 - 1) >= 2)
      {
        if (!v20)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v34, v9);
          v33[23] = 2;
          v27 = a0123456789abcd[v18 >> 4];
          v33[2] = 0;
          v33[0] = v27;
          v33[1] = a0123456789abcd[v18 & 0xF];
          nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[29],std::string,char const(&)[5],std::string>("invalid UTF-8 byte at index ", &v34, ": 0x", v33, &v35);
          nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(316, &v35, exception);
        }

        v12 = 1;
        goto LABEL_6;
      }

      v9 -= v10 != 0;
      if (v20 != 1)
      {
        goto LABEL_5;
      }

      v21 = v15 + v11;
      if (a3)
      {
        *v21 = 1717990748;
        *(v21 + 4) = 25702;
        v11 += 6;
      }

      else
      {
        v11 += 3;
        *v21 = -16401;
        *(v21 + 2) = -67;
      }
    }

    else
    {
      if (v12)
      {
        if ((a3 & 1) == 0)
        {
          *(v15 + v8++) = *(v17 + v9);
        }

        ++v10;
        goto LABEL_6;
      }

      if (v13 <= 11)
      {
        switch(v13)
        {
          case 8:
            v19 = 25180;
            break;
          case 9:
            v19 = 29788;
            break;
          case 10:
            v19 = 28252;
            break;
          default:
            goto LABEL_40;
        }
      }

      else if (v13 > 33)
      {
        if (v13 == 34)
        {
          v19 = 8796;
        }

        else
        {
          if (v13 != 92)
          {
LABEL_40:
            if (v13 > 0x7E)
            {
              v22 = a3;
            }

            else
            {
              v22 = 0;
            }

            if (v13 >= 0x20 && v22 == 0)
            {
              v11 = v8 + 1;
              *(v15 + v8) = *(v17 + v9);
            }

            else if (HIWORD(v13))
            {
              result = snprintf((v15 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v13 >> 10) - 10304), v13 & 0x3FF | 0xDC00);
              v11 = v8 + 12;
            }

            else
            {
              result = snprintf((v15 + v8), 7uLL, "\\u%04x", v13);
              v11 = v8 + 6;
            }

            goto LABEL_53;
          }

          v19 = 23644;
        }
      }

      else if (v13 == 12)
      {
        v19 = 26204;
      }

      else
      {
        if (v13 != 13)
        {
          goto LABEL_40;
        }

        v19 = 29276;
      }

      *(v15 + v8) = v19;
      v11 = v8 + 2;
    }

LABEL_53:
    if ((v11 - 500) > 0xC)
    {
LABEL_5:
      v12 = 0;
      v10 = 0;
      v8 = v11;
      goto LABEL_6;
    }

    result = (*(**v7 + 8))(*v7, v15);
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v8 = 0;
LABEL_6:
    ++v9;
    v16 = *(a2 + 23);
    v14 = v16 >> 63;
    if ((v16 & 0x80000000) != 0)
    {
      v16 = a2[1];
    }
  }

  while (v9 < v16);
  if (v12)
  {
    v25 = *(v7 + 158);
    switch(v25)
    {
      case 1:
        (*(**v7 + 8))(*v7, v15);
        v24 = *(**v7 + 8);
        break;
      case 2:
        v24 = *(**v7 + 8);
        break;
      case 0:
        v28 = __cxa_allocate_exception(0x20uLL);
        v29 = *(a2 + 23);
        if ((v29 & 0x80u) == 0)
        {
          v30 = a2;
        }

        else
        {
          v30 = *a2;
        }

        if ((v29 & 0x80u) != 0)
        {
          v29 = a2[1];
        }

        v31 = *(v30 + v29 - 1);
        *(&v34.__r_.__value_.__s + 23) = 2;
        v32 = a0123456789abcd[v31 >> 4];
        v34.__r_.__value_.__s.__data_[2] = 0;
        v34.__r_.__value_.__s.__data_[0] = v32;
        v34.__r_.__value_.__s.__data_[1] = a0123456789abcd[v31 & 0xF];
        nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[39],std::string>("incomplete UTF-8 string; last byte: 0x", &v34, &v35);
        nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(316, &v35, v28);
      default:
        return result;
    }

LABEL_60:

    return v24();
  }

  if (v8)
  {
    v24 = *(**v7 + 8);
    goto LABEL_60;
  }

  return result;
}

void sub_24740977C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    if ((v32 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v32 & 1) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v31);
  goto LABEL_8;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<long long,0>(char *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  v3 = a1 + 16;
  if ((v2 & 0x8000000000000000) != 0)
  {
    *v3 = 45;
    v2 = -v2;
    if (v2 >= 0xA)
    {
      v7 = 4;
      v11 = v2;
      while (v11 > 0x63)
      {
        if (v11 <= 0x3E7)
        {
          --v7;
          goto LABEL_31;
        }

        if (v11 >> 4 < 0x271)
        {
          goto LABEL_31;
        }

        v7 += 4;
        v10 = v11 >= 0x186A0;
        v11 /= 0x2710uLL;
        if (!v10)
        {
          v7 -= 3;
          goto LABEL_31;
        }
      }

      v8 = v7 - 1;
LABEL_26:
      v5 = v8;
      v4 = &v3[v8];
      if (v2 < 0x64)
      {
LABEL_32:
        v12 = v2;
        if (v2 < 0xA)
        {
LABEL_33:
          LOBYTE(v2) = v12;
          goto LABEL_34;
        }

LABEL_29:
        *(v4 - 1) = *&nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<long long,0>(long long)::digits_to_99[2 * v12];
        return (*(**a1 + 8))();
      }
    }

    else
    {
      v7 = 1;
LABEL_31:
      v5 = (v7 + 1);
      v4 = &v3[v5];
      if (v2 < 0x64)
      {
        goto LABEL_32;
      }
    }

    do
    {
LABEL_27:
      v12 = v2 / 0x64;
      *(v4 - 1) = *&nlohmann::json_abi_v3_11_2::detail::serializer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::dump_integer<long long,0>(long long)::digits_to_99[2 * (v2 % 0x64)];
      v4 -= 2;
      v13 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v13 > 0x270);
    if (v12 < 0xA)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (v2 >= 0xA)
  {
    v8 = 4;
    v9 = v2;
    while (1)
    {
      if (v9 <= 0x63)
      {
        v5 = v8 - 2;
        v4 = &v3[v5];
        if (v2 >= 0x64)
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      }

      if (v9 <= 0x3E7)
      {
        break;
      }

      if (v9 >> 4 < 0x271)
      {
        goto LABEL_26;
      }

      v8 += 4;
      v10 = v9 >= 0x186A0;
      v9 /= 0x2710uLL;
      if (!v10)
      {
        v5 = v8 - 3;
        v4 = &v3[v5];
        if (v2 >= 0x64)
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      }
    }

    v5 = v8 - 1;
    v4 = &v3[v5];
    if (v2 >= 0x64)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  v4 = a1 + 17;
  v5 = 1;
LABEL_34:
  *(v4 - 1) = v2 | 0x30;
  return (*(**a1 + 8))(*a1, v3, v5);
}

std::string *nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[29],std::string,char const(&)[5],std::string>@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v10 = strlen(a1);
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = strlen(a3);
  v13 = *(a4 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a4 + 8);
  }

  v14 = v12 + v10 + v11 + v13;
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v14 >= 0x17)
  {
    v15 = v14 | 7;
    if (v15 == 23)
    {
      v16 = 24;
    }

    else
    {
      v16 = v15;
    }

    std::string::__shrink_or_extend[abi:ne200100](a5, v16);
  }

  v17 = strlen(a1);
  std::string::append(a5, a1, v17);
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  std::string::append(a5, v19, v20);
  v21 = strlen(a3);
  std::string::append(a5, a3, v21);
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 8);
  }

  return std::string::append(a5, v23, v24);
}

void sub_247409BD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[39],std::string>@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = strlen(a1);
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  v8 = v7 + v6;
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    v9 = v8 | 7;
    if (v9 == 23)
    {
      v10 = 24;
    }

    else
    {
      v10 = v9;
    }

    std::string::__shrink_or_extend[abi:ne200100](a3, v10);
  }

  v11 = strlen(a1);
  std::string::append(a3, a1, v11);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  return std::string::append(a3, v13, v14);
}

void sub_247409CAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::to_chars<double>(_BYTE *a1, double a2)
{
  v2 = a1;
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    *a1 = 45;
    v2 = a1 + 1;
    if (a2 == 0.0)
    {
      goto LABEL_3;
    }
  }

  else if (a2 == 0.0)
  {
LABEL_3:
    *v2 = 11824;
    result = (v2 + 3);
    v2[2] = 48;
    return result;
  }

  v13 = 0;
  nlohmann::json_abi_v3_11_2::detail::dtoa_impl::grisu2<double>(v2, &v13 + 1, &v13, a2);
  v4 = SHIDWORD(v13);
  v5 = v13 + SHIDWORD(v13);
  if ((v13 & 0x80000000) != 0 || v5 > 15)
  {
    if ((v5 - 16) >= 0xFFFFFFF1)
    {
      v7 = v5;
      v8 = &v2[v5];
      memmove(v8 + 1, v8, SHIDWORD(v13) - v7);
      *v8 = 46;
      return &v2[v4 + 1];
    }

    else if (v5 != 0 && v5 < 0xFFFFFFFD)
    {
      if (HIDWORD(v13) != 1)
      {
        memmove(v2 + 2, v2 + 1, SHIDWORD(v13) - 1);
        v2[1] = 46;
        v2 += v4;
      }

      v9 = v5 - 1;
      if (v5 >= 1)
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      v2[2] = v10;
      v2[1] = 101;
      if (v5 - 1 < 0)
      {
        v9 = 1 - v5;
      }

      if (v9 > 9)
      {
        if (v9 > 0x63)
        {
          v2[3] = v9 / 0x64 + 48;
          v9 %= 0x64u;
          v11 = v2 + 5;
          v2[4] = (v9 / 0xAu) | 0x30;
          LOBYTE(v9) = v9 % 0xAu;
          v12 = 4;
        }

        else
        {
          v11 = v2 + 4;
          v2[3] = (v9 / 0xAu) | 0x30;
          LOBYTE(v9) = v9 % 0xAu;
          v12 = 3;
        }
      }

      else
      {
        v11 = v2 + 4;
        v2[3] = 48;
        v12 = 3;
      }

      result = &v2[v12 + 2];
      *v11 = v9 | 0x30;
    }

    else
    {
      v6 = -v5;
      memmove(&v2[v6 + 2], v2, SHIDWORD(v13));
      *v2 = 11824;
      memset(v2 + 2, 48, v6);
      return &v2[v6 + 2 + v4];
    }
  }

  else
  {
    memset(&v2[SHIDWORD(v13)], 48, v13);
    *&v2[v5] = 12334;
    return &v2[v5 + 2];
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::dtoa_impl::grisu2<double>(uint64_t a1, int *a2, _DWORD *a3, double a4)
{
  v4 = *&a4 & 0xFFFFFFFFFFFFFLL;
  if (!(*&a4 >> 52))
  {
    v5 = 2 * *&a4;
    v6 = (2 * (*&a4 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    LODWORD(v7) = -1074;
    v8 = -1075;
LABEL_7:
    v10 = v5 - 1;
    v9 = v8;
    goto LABEL_8;
  }

  v7 = (*&a4 >> 52) + 4294966221;
  v5 = 2 * (v4 | 0x10000000000000);
  v6 = (2 * (*&a4 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
  v8 = (*&a4 >> 52) - 1076;
  if (!(*&a4 >> 53) || v4)
  {
    v4 |= 0x10000000000000uLL;
    goto LABEL_7;
  }

  v9 = (*&a4 >> 52) - 53;
  v10 = 0x3FFFFFFFFFFFFFLL;
  v4 = 0x10000000000000;
LABEL_8:
  v11 = -4813693 - 78913 * v8;
  v12 = v8 + 61;
  v13 = v9 - v8;
  do
  {
    v14 = v6;
    v6 *= 2;
    v11 += 78913;
    --v12;
    ++v13;
  }

  while ((v6 & 0x8000000000000000) == 0);
  v15 = v7 + 64;
  do
  {
    v16 = v4;
    v4 *= 2;
    --v15;
  }

  while ((v4 & 0x8000000000000000) == 0);
  v17 = v11 / 0x40000;
  if (v12 < 0)
  {
    ++v17;
  }

  v18 = &nlohmann::json_abi_v3_11_2::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * (((v17 + 307 + (((v17 + 307) >> 28) & 7)) << 16) >> 19);
  v19 = HIDWORD(*v18);
  v20 = *v18;
  v21 = v10 << v13;
  v22 = v18 + 8;
  LODWORD(v18) = *(v18 + 2);
  *a3 = -*(v22 + 1);
  return nlohmann::json_abi_v3_11_2::detail::dtoa_impl::grisu2_digit_gen(a1, a2, a3, ((v20 * HIDWORD(v21)) >> 32) + v19 * HIDWORD(v21) + ((v19 * v21) >> 32) + ((((v20 * v21) >> 32) + (v19 * v21) + (v20 * HIDWORD(v21)) + 0x80000000) >> 32) + 1, (v18 + v12 + 3), v19 * (v16 >> 31) + ((v20 * (v16 >> 31)) >> 32) + ((v19 * (v4 & 0xFFFFFFFE)) >> 32) + ((v19 * (v4 & 0xFFFFFFFE) + ((v20 * (v4 & 0xFFFFFFFE)) >> 32) + v20 * (v16 >> 31) + 0x80000000) >> 32), (v18 + v15), v20, v19 * (v14 >> 31) + ((v20 * (v14 >> 31)) >> 32) + ((v19 * (v6 & 0xFFFFFFFE)) >> 32) + ((v19 * (v6 & 0xFFFFFFFE) + ((v20 * (v6 & 0xFFFFFFFE)) >> 32) + v20 * (v14 >> 31) + 0x80000000) >> 32) - 1, v18 + v12 + 3);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::dtoa_impl::grisu2_digit_gen(uint64_t result, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int a10)
{
  v10 = a9 - a4;
  v11 = a9 - a6;
  v12 = -a10;
  v13 = 1 << -a10;
  v14 = a9 >> -a10;
  v15 = (v13 - 1) & a9;
  if (v14 <= 0x3B9AC9FF)
  {
    if (v14 <= 0x5F5E0FF)
    {
      if (v14 <= 0x98967F)
      {
        if (v14 <= 0xF423F)
        {
          v18 = v14 >> 5;
          v19 = v14 >> 4;
          if (v14 <= 9)
          {
            v20 = 1;
          }

          else
          {
            v20 = 10;
          }

          if (v14 <= 9)
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v14 <= 0x63)
          {
            v22 = v20;
          }

          else
          {
            v22 = 100;
          }

          if (v14 <= 0x63)
          {
            v23 = v21;
          }

          else
          {
            v23 = 3;
          }

          if (v14 <= 0x3E7)
          {
            v24 = v22;
          }

          else
          {
            v24 = 1000;
          }

          if (v14 <= 0x3E7)
          {
            v25 = v23;
          }

          else
          {
            v25 = 4;
          }

          if (v19 <= 0x270)
          {
            v26 = v24;
          }

          else
          {
            v26 = 10000;
          }

          if (v19 <= 0x270)
          {
            v27 = v25;
          }

          else
          {
            v27 = 5;
          }

          v28 = v18 > 0xC34;
          if (v18 > 0xC34)
          {
            v16 = 100000;
          }

          else
          {
            v16 = v26;
          }

          if (v28)
          {
            v17 = 6;
          }

          else
          {
            v17 = v27;
          }
        }

        else
        {
          v16 = 1000000;
          v17 = 7;
        }
      }

      else
      {
        v16 = 10000000;
        v17 = 8;
      }
    }

    else
    {
      v16 = 100000000;
      v17 = 9;
    }
  }

  else
  {
    v16 = 1000000000;
    v17 = 10;
  }

  v29 = result - 1;
  v30 = a6 - a9;
  while (v17 > 0)
  {
    v31 = v14 / v16;
    v14 = v14 % v16;
    v32 = *a2;
    *a2 = v32 + 1;
    *(result + v32) = v31 + 48;
    --v17;
    v33 = (v14 << v12) + v15;
    if (v10 < v33)
    {
      v16 /= 0xAu;
    }

    else
    {
      *a3 += v17;
      v34 = v16 << v12;
      v35 = v33 < v11 && v10 - v33 >= v34;
      if (!v35)
      {
        return result;
      }

      v36 = *a2;
      v37 = v11 - v33;
      v38 = v15 + (v14 << v12) + v34;
      v39 = v10 - v38;
      do
      {
        if (v38 >= v11 && v37 <= v30 + v38)
        {
          break;
        }

        --*(v29 + v36);
        if (v38 >= v11)
        {
          break;
        }

        v37 -= v34;
        v38 += v34;
        v35 = v39 >= v34;
        v39 -= v34;
      }

      while (v35);
    }

    if (v10 >= v33)
    {
      return result;
    }
  }

  v40 = 0;
  do
  {
    v41 = v10;
    v42 = v11;
    v43 = (10 * v15) >> v12;
    v15 = (10 * v15) & (v13 - 1);
    v44 = v43 + 48;
    v45 = *a2;
    *a2 = v45 + 1;
    *(result + v45) = v44;
    v10 = 10 * v41;
    v11 = 10 * v42;
    --v40;
  }

  while (10 * v41 < v15);
  *a3 += v40;
  if (v15 < v11 && 10 * v41 - v15 >= v13)
  {
    v46 = *a2;
    v47 = 10 * v42 - v15;
    v48 = v13 + v15;
    v49 = 10 * v41 - v48;
    v50 = -10 * v42;
    do
    {
      if (v48 >= v11 && v47 <= v50 + v48)
      {
        break;
      }

      --*(v29 + v46);
      if (v48 >= v11)
      {
        break;
      }

      v47 -= v13;
      v48 += v13;
      v35 = v49 >= v13;
      v49 -= v13;
    }

    while (v35);
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C1A1D30](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x24C1A1D40](v14);
  return a1;
}

void sub_24740A540(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C1A1D40](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24740A520);
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

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_24740A784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24740AD50(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);

  _Unwind_Resume(a1);
}

void sub_24740AF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(objc_object  {objcproto16MTLCommandBuffer}*,unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,objc_object,simd::float4x4)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_24740B464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(objc_object  {objcproto16MTLCommandBuffer}*,unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,objc_object,simd::float4x4)>::~function(va);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<apple3dgs::MultiLayerOptions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593CCB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

void std::__shared_ptr_emplace<apple3dgs::MultiLayerRenderer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593CD08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

void sub_24740B824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  std::__shared_weak_count::~__shared_weak_count(v37);
  operator delete(v39);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<apple3dgs::RenderDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593CE68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

void std::__shared_ptr_emplace<apple3dgs::RenderDescriptor>::__on_zero_shared(void *a1)
{
  v2 = a1 + 61;
  v3 = a1[64];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[53];
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[53];
  if (v4)
  {
LABEL_5:
    a1[54] = v4;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<apple3dgs::SorterDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593CEB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

void sub_24740C868(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);

  _Unwind_Resume(a1);
}

void sub_24740CAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<apple3dgs::Renderer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593CF08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

void std::__shared_ptr_emplace<apple3dgs::Renderer>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
    v3 = a1 + 24;
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = a1 + 24;
  }

  std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::destroy(v3, v2);
}

void std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_24740CF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v14);
  std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void anonymous namespace::ToVector(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v4 = [v3 count];
  if (v4)
  {
    if (!(v4 >> 60))
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  for (i = 0; ; i = v6 + 1)
  {
    v6 = i;
    if ([v3 count] <= i)
    {
      break;
    }

    v7 = [v3 objectAtIndexedSubscript:i];
    v8 = v7;
    if (v7)
    {
      [v7 impl];
      v9 = v11;
    }

    else
    {
      v9 = 0uLL;
    }

    v12 = v9;
    v11 = 0uLL;
    std::vector<std::shared_ptr<apple3dgs::Asset const>>::push_back[abi:ne200100](a1, &v12);
    v10 = *(&v12 + 1);
    if (*(&v12 + 1) && !atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_24740D148(_Unwind_Exception *a1)
{
  std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void sub_24740D160(_Unwind_Exception *a1)
{
  std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void sub_24740D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a9);

  std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void sub_24740D1A8(_Unwind_Exception *a1)
{
  std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void sub_24740D1C0(_Unwind_Exception *a1)
{
  std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](void **a1)
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
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_24740D554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](va);
  std::vector<std::shared_ptr<apple3dgs::Asset const>>::~vector[abi:ne200100](va2);

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<apple3dgs::Asset const>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
LABEL_3:
    a1[1] = v5;
    return;
  }

  v6 = (v4 - *a1) >> 4;
  if ((v6 + 1) >> 60)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v7 = v3 - *a1;
  v8 = v7 >> 3;
  if (v7 >> 3 <= (v6 + 1))
  {
    v8 = v6 + 1;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v10 = (16 * v6);
  v11 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v12 = *a1;
  v13 = a1[1] - *a1;
  v14 = v10 - v13;
  *v10 = v11;
  v5 = v10 + 1;
  memcpy(v14, v12, v13);
  *a1 = v14;
  a1[1] = v5;
  a1[2] = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  a1[1] = v5;
}

void std::__shared_ptr_emplace<apple3dgs::Sorter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593CF58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

void *apple3dgs::operator<<(void *a1, unsigned int *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "num_gaussians: ", 15);
  v5 = MEMORY[0x24C1A1DA0](v4, *a2);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "num_frames: ", 12);
  v8 = MEMORY[0x24C1A1DA0](v7, a2[1]);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "num_features: ", 14);
  v11 = MEMORY[0x24C1A1DA0](v10, a2[2]);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "transfer_function: ", 19);
  v14 = MEMORY[0x24C1A1DA0](v13, a2[3]);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "max_coeff: ", 11);
  v17 = MEMORY[0x24C1A1DA0](v16, a2[4]);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "activation_scale: ", 18);
  v20 = MEMORY[0x24C1A1D90](v19, a2[5]);
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "activation_opacity: ", 20);
  v23 = MEMORY[0x24C1A1D90](v22, a2[6]);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "sorting_mode: ", 14);
  v5 = MEMORY[0x24C1A1D90](v4, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "sorting_hardware: ", 18);
  v7 = MEMORY[0x24C1A1D90](v6, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "sorting_algorithm: ", 19);
  v9 = MEMORY[0x24C1A1D90](v8, a2[2]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n", 1);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "culling_mode : ", 15);
  v11 = MEMORY[0x24C1A1D90](v10, a2[3]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
  return a1;
}

{
  v4 = *a2;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "max_cameras: ", 13);
  v6 = MEMORY[0x24C1A1DA0](v5, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n", 1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "layered: ", 9);
  v8 = MEMORY[0x24C1A1D60](v7, *(a2 + 384));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  v69 = a2;
  if (v4)
  {
    v9 = 0;
    v10 = a2 + 4;
    do
    {
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "view_matrices[", 14);
      v12 = MEMORY[0x24C1A1DA0](v11, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "]:  ", 4);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
      v14 = apple3dgs::operator<<(v13, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
      ++v9;
      v10 += 16;
    }

    while (v4 != v9);
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v15 = std::locale::use_facet(&v70, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v70);
    std::ostream::put();
    std::ostream::flush();
    v16 = 0;
    v17 = a2 + 36;
    do
    {
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "projection_matrices[", 20);
      v19 = MEMORY[0x24C1A1DA0](v18, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "]: ", 3);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
      v21 = apple3dgs::operator<<(v20, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " ", 1);
      ++v16;
      v17 += 16;
    }

    while (v4 != v16);
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v22 = std::locale::use_facet(&v70, MEMORY[0x277D82680]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v70);
    std::ostream::put();
    std::ostream::flush();
    v23 = 0;
    v24 = (a2 + 78);
    v25 = MEMORY[0x277D82680];
    do
    {
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "viewports[", 10);
      v27 = MEMORY[0x24C1A1DA0](v26, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "]: ", 3);
      v28 = MEMORY[0x24C1A1D70](a1, *(v24 - 5));
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
      v30 = MEMORY[0x24C1A1D70](v29, *(v24 - 4));
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " ", 1);
      v32 = MEMORY[0x24C1A1D70](v31, *(v24 - 3));
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " ", 1);
      v34 = MEMORY[0x24C1A1D70](v33, *(v24 - 2));
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 1);
      v36 = MEMORY[0x24C1A1D70](v35, *(v24 - 1));
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " ", 1);
      v38 = MEMORY[0x24C1A1D70](v37, *v24);
      std::ios_base::getloc((v38 + *(*v38 - 24)));
      v39 = std::locale::use_facet(&v70, v25);
      (v39->__vftable[2].~facet_0)(v39, 10);
      std::locale::~locale(&v70);
      std::ostream::put();
      std::ostream::flush();
      ++v23;
      v24 += 6;
    }

    while (v4 != v23);
    v40 = 0;
    v41 = v69 + 93;
    v42 = MEMORY[0x277D82680];
    do
    {
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "viewmappings[", 13);
      v44 = MEMORY[0x24C1A1DA0](v43, v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "]: ", 3);
      v45 = MEMORY[0x24C1A1DA0](a1, *v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " ", 1);
      v46 = MEMORY[0x24C1A1DA0](a1, *(v41 - 1));
      std::ios_base::getloc((v46 + *(*v46 - 24)));
      v47 = std::locale::use_facet(&v70, v42);
      (v47->__vftable[2].~facet_0)(v47, 10);
      v41 += 2;
      std::locale::~locale(&v70);
      std::ostream::put();
      std::ostream::flush();
      ++v40;
    }

    while (v4 != v40);
  }

  else
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v48 = std::locale::use_facet(&v70, MEMORY[0x277D82680]);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(&v70);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v49 = std::locale::use_facet(&v70, MEMORY[0x277D82680]);
    (v49->__vftable[2].~facet_0)(v49, 10);
    std::locale::~locale(&v70);
    std::ostream::put();
    std::ostream::flush();
  }

  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "splatting_mode: ", 16);
  v51 = MEMORY[0x24C1A1D90](v50, v69[104]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "\n", 1);
  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "blending_order: ", 16);
  v53 = MEMORY[0x24C1A1D90](v52, v69[105]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "\n", 1);
  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "depth_mode: ", 12);
  v55 = MEMORY[0x24C1A1D90](v54, v69[106]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "\n", 1);
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "splat_integration: ", 19);
  v57 = MEMORY[0x24C1A1D90](v56, v69[107]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "\n", 1);
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "primitive_type: ", 16);
  v59 = MEMORY[0x24C1A1D90](v58, v69[108]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "\n", 1);
  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "alpha_mode: ", 12);
  v61 = MEMORY[0x24C1A1D90](v60, v69[109]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "alpha_constant: ", 16);
  v62 = v69[110];
  v63 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "power_threshold: ", 17);
  v64 = v69[111];
  v65 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "\n", 1);
  v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "degree: ", 8);
  v67 = MEMORY[0x24C1A1DA0](v66, v69[112]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "\n", 1);
  return a1;
}

void *apple3dgs::operator<<(void *a1, uint64_t a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "view_matrix: ", 13);
  v5 = apple3dgs::operator<<(v4, a2);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "model_matrix: ", 14);
  v8 = apple3dgs::operator<<(v7, a2 + 64);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "intrinsics: ", 12);
  v11 = apple3dgs::operator<<(v10, a2 + 128);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "image_size: ", 12);
  v14 = MEMORY[0x24C1A1DA0](v13, *(a2 + 176));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
  v16 = MEMORY[0x24C1A1DA0](v15, *(a2 + 180));
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "sorting_mode: ", 14);
  v19 = MEMORY[0x24C1A1DA0](v18, *(a2 + 184));
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "splatting_mode: ", 16);
  v22 = MEMORY[0x24C1A1DA0](v21, *(a2 + 188));
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "covariance_regularization: ", 27);
  v24 = *(a2 + 192);
  v25 = std::ostream::operator<<();
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

{
  v4 = [*(a2 + 120) UUIDString];
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "asset id: ", 10);
  v6 = [v4 cStringUsingEncoding:4];
  v7 = strlen(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v11, MEMORY[0x277D82680]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v11);
  std::ostream::put();
  std::ostream::flush();
  apple3dgs::operator<<(a1, a2 + 336);
  apple3dgs::operator<<(a1, (a2 + 544));

  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "layers: ", 8);
  v5 = MEMORY[0x24C1A1DA0](v4, *(a2 + 4));
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "type: ", 6);
  v8 = MEMORY[0x24C1A1DA0](v7, *(a2 + 4));
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "single_pass: ", 13);
  v11 = MEMORY[0x24C1A1D60](v10, *(a2 + 8));
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "num_passes: ", 12);
  v14 = MEMORY[0x24C1A1DA0](v13, *(a2 + 12));
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "enable_depth_tessellation: ", 27);
  v17 = MEMORY[0x24C1A1D60](v16, *(a2 + 16));
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "overlap_factor: ", 16);
  v19 = *(a2 + 20);
  v20 = std::ostream::operator<<();
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "ndc_overlap_factor: ", 20);
  v22 = *(a2 + 24);
  v23 = std::ostream::operator<<();
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "camera_extrinsics: ", 19);
  v26 = apple3dgs::operator<<(v25, a2 + 32);
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "camera_intrinsics: ", 19);
  v29 = apple3dgs::operator<<(v28, a2 + 96);
  std::ios_base::getloc((v29 + *(*v29 - 24)));
  v30 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v30->__vftable[2].~facet_0)(v30, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "camera_image_size: ", 19);
  v32 = MEMORY[0x24C1A1DA0](v31, *(a2 + 208));
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " ", 1);
  v34 = MEMORY[0x24C1A1DA0](v33, *(a2 + 212));
  std::ios_base::getloc((v34 + *(*v34 - 24)));
  v35 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v35->__vftable[2].~facet_0)(v35, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "camera_near_far_plane: ", 23);
  v36 = *(a2 + 216);
  v37 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " ", 1);
  v38 = *(a2 + 220);
  v39 = std::ostream::operator<<();
  std::ios_base::getloc((v39 + *(*v39 - 24)));
  v40 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v40->__vftable[2].~facet_0)(v40, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "memoryless_texture: ", 20);
  v42 = MEMORY[0x24C1A1D60](v41, *(a2 + 232));
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "log_level: ", 11);
  v45 = MEMORY[0x24C1A1DA0](v44, *(a2 + 236));
  std::ios_base::getloc((v45 + *(*v45 - 24)));
  v46 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v46->__vftable[2].~facet_0)(v46, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "enable_callback: ", 17);
  v48 = MEMORY[0x24C1A1D60](v47, *(a2 + 244));
  std::ios_base::getloc((v48 + *(*v48 - 24)));
  v49 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v49->__vftable[2].~facet_0)(v49, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_24740E420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::Asset::ComputeCentroid(apple3dgs::Asset *this, MTLAttributeFormat a2)
{
  if (!*(this + 136) || !*(this + 16) || !*(this + 18))
  {
    return 0;
  }

  v3 = *(this + 19);
  if (v3 < apple3dgs::GetMinimumStride(*(this + 18), a2))
  {
    return 0;
  }

  v6 = 0uLL;
  *(this + 37) = 0u;
  v7 = *(this + 136);
  if (v7)
  {
    v8 = *(this + 19);
    v9 = *(this + 20);
    v11 = *(this + 17);
    v10 = *(this + 18);
    v12 = v11 + v9;
    if (v10 > 29)
    {
      switch(v10)
      {
        case 30:
          v23 = *(this + 136);
          do
          {
            _Q1.i64[0] = *v12;
            _Q1.i32[2] = *(v12 + 8);
            v6 = vaddq_f32(v6, _Q1);
            *(this + 37) = v6;
            v12 += v8;
            --v23;
          }

          while (v23);
          goto LABEL_35;
        case 53:
          v26 = *(this + 136);
          do
          {
            _Q1.i16[0] = *v12;
            __asm { FCVT            S1, H1 }

            _Q1 = vdupq_lane_s32(*_Q1.f32, 0);
            v6 = vaddq_f32(v6, _Q1);
            *(this + 37) = v6;
            v12 += v8;
            --v26;
          }

          while (v26);
          goto LABEL_35;
        case 31:
          v14 = *(this + 136);
          do
          {
            _Q1.i8[0] = 0;
            v6 = vaddq_f32(v6, _Q1);
            --v14;
          }

          while (v14);
          goto LABEL_35;
      }
    }

    else
    {
      switch(v10)
      {
        case 26:
          v15 = (v9 + v11 + 4);
          v16 = *(this + 136);
          do
          {
            _Q1.i32[0] = *(v15 - 1);
            _Q1 = vcvtq_f32_f16(*_Q1.f32);
            _H2 = *v15;
            __asm { FCVT            S2, H2 }

            _Q1.i32[2] = _S2;
            v6 = vaddq_f32(v6, _Q1);
            *(this + 37) = v6;
            v15 = (v15 + v8);
            --v16;
          }

          while (v16);
          goto LABEL_35;
        case 27:
          v25 = *(this + 136);
          do
          {
            _Q1.i8[0] = 0;
            v6 = vaddq_f32(v6, _Q1);
            --v25;
          }

          while (v25);
          goto LABEL_35;
        case 28:
          v13 = *(this + 136);
          do
          {
            _Q1 = vld1q_dup_f32(v12);
            v12 += v8;
            v6 = vaddq_f32(v6, _Q1);
            *(this + 37) = v6;
            --v13;
          }

          while (v13);
          goto LABEL_35;
      }
    }

    v24 = *(this + 136);
    do
    {
      _Q1.i8[0] = 0;
      v6 = vaddq_f32(v6, _Q1);
      --v24;
    }

    while (v24);
  }

LABEL_35:
  _Q1.f32[0] = v7;
  *(this + 37) = vdivq_f32(v6, vdupq_lane_s32(*_Q1.f32, 0));
  return 1;
}

apple3dgs *apple3dgs::Asset::Transform(uint64_t a1, void *a2, float32x4_t *a3, void *a4)
{
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  apple3dgs::TransformGaussiansInPlace((a1 + 128), (a1 + 288), (a1 + 248), *(a1 + 544), a3, *(a1 + 564));
  v10 = apple3dgs::Asset::ComputeCovariance(a1, v7, a4);
  if (v10)
  {
    apple3dgs::Asset::ComputeCentroid(a1, v9);
  }

  objc_autoreleasePoolPop(v8);

  return v10;
}

apple3dgs *apple3dgs::Asset::ComputeCovariance(uint64_t a1, void *a2, void *a3)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    *a3 = 0;
  }

  context = objc_autoreleasePoolPush();
  v7 = apple3dgs::Asset::Valid(a1, v6);
  if (v7)
  {
    apple3dgs::CheckAlloc((a1 + 576), 24 * *(a1 + 544), *a1, 0);
    apple3dgs::CheckAlloc((a1 + 584), 4 * *(a1 + 544), *a1, 0);
    v8 = v5;
    if (!v5)
    {
      v8 = [*(a1 + 24) commandBuffer];
    }

    v31 = v8;
    v39 = 1065353216;
    v9 = objc_opt_new();
    v10 = [v9 layouts];
    v11 = [v10 objectAtIndexedSubscript:0];

    [v11 setStepFunction:5];
    [v11 setStride:*(a1 + 272)];
    v12 = [v9 attributes];
    v13 = [v12 objectAtIndexedSubscript:0];

    [v13 setFormat:*(a1 + 264)];
    [v13 setOffset:*(a1 + 280)];
    [v13 setBufferIndex:0];

    v14 = [v9 layouts];
    v15 = [v14 objectAtIndexedSubscript:1];

    [v15 setStepFunction:5];
    [v15 setStride:*(a1 + 312)];
    v16 = [v9 attributes];
    v17 = [v16 objectAtIndexedSubscript:1];

    [v17 setFormat:*(a1 + 304)];
    [v17 setOffset:*(a1 + 320)];
    [v17 setBufferIndex:1];

    HIBYTE(__p[2]) = 12;
    strcpy(__p, "ComputeCov3D");
    v18 = v9;
    v36 = v18;
    v37 = 1;
    LOBYTE(v34) = 0;
    v35 = 0;
    v19 = MetalContext::computePipelineState(a1, __p, &v36, &v34);
    if (v35 == 1)
    {
    }

    if (v37 == 1)
    {
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v20 = [v31 computeCommandEncoder];
    [v20 setComputePipelineState:v19];
    [v20 setBuffer:*(a1 + 248) offset:0 atIndex:0];
    [v20 setBuffer:*(a1 + 288) offset:0 atIndex:1];
    [v20 setBytes:&v39 length:4 atIndex:2];
    [v20 setBytes:a1 + 564 length:4 atIndex:3];
    [v20 setBuffer:*(a1 + 576) offset:0 atIndex:4];
    [v20 setBuffer:*(a1 + 584) offset:0 atIndex:5];
    __p[0] = *(a1 + 544);
    *&__p[1] = vdupq_n_s64(1uLL);
    v32 = [v19 threadExecutionWidth];
    v33 = vdupq_n_s64(1uLL);
    [v20 dispatchThreads:__p threadsPerThreadgroup:&v32];
    [v20 endEncoding];

    if (!v5)
    {
      [v31 commit];
      [v31 waitUntilCompleted];
    }

    v21 = 0;
    v5 = v31;
  }

  else
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"GSAsset does not have valid scales"];
    NSLog(&stru_28593E428.isa, v22);
    v23 = MEMORY[0x277CCA9B8];
    v25 = apple3dgs::ErrorDomain(v24);
    v40 = *MEMORY[0x277CCA450];
    v41[0] = v22;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v21 = [v23 errorWithDomain:v25 code:-2 userInfo:v26];
  }

  objc_autoreleasePoolPop(context);
  if (a3 && v21)
  {
    v27 = v21;
    *a3 = v21;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_24740EB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    if (!v25)
    {
      JUMPOUT(0x24740EB18);
    }

    JUMPOUT(0x24740EB08);
  }

  _Unwind_Resume(exception_object);
}

void sub_24740EE9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::function<void ()(unsigned long)>::~function(va);
  cv3d::aspenbase::concurrency::AsyncManager::~AsyncManager(va1);
  _Unwind_Resume(a1);
}

void sub_24740EEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::function<void ()(unsigned long)>::~function(va);
  cv3d::aspenbase::concurrency::AsyncManager::~AsyncManager(va1);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(unsigned long)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

__n128 std::__function::__func<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_0,std::allocator<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_0>,void ()(unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28593CFA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float32x4_t std::__function::__func<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_0,std::allocator<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_0>,void ()(unsigned long)>::operator()(uint64_t a1, uint64_t *a2, float32x4_t result)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = **(a1 + 16) + 32 * *a2;
  v6 = v4[18];
  v7 = (v4[17] + v4[19] * *a2 + v4[20]);
  switch(v6)
  {
    case 31:
      result.i64[0] = *v5;
      result.i32[2] = *(v5 + 8);
      result.i32[3] = 1.0;
      *v7 = result;
      break;
    case 30:
      v16 = *(v5 + 8);
      v7->i64[0] = *v5;
      v7->i32[2] = v16;
      break;
    case 26:
      result.i64[0] = *(v5 + 4);
      v8 = vmovl_u16(vcvt_f16_f32(result)).u64[0];
      v9.i64[0] = v8;
      v9.i64[1] = HIDWORD(v8);
      v10.i64[0] = 0xFFFFLL;
      v10.i64[1] = 0xFFFFLL;
      result = vshlq_u64(vandq_s8(v9, v10), xmmword_2474787F0);
      result.i64[0] = vorrq_s8(result, vdupq_laneq_s64(result, 1)).u64[0];
      v11 = result.i64[0];
      result.i32[0] = *v5;
      __asm { FCVT            H0, S0 }

      v7->i16[2] = WORD2(v11);
      v7->i32[0] = v11 | result.i32[0];
      break;
  }

  v17 = (**(a1 + 16) + 32 * v3 + 26);
  v18 = v4[30];
  v19 = v4[28];
  v20 = v4[27] + v4[29] * v3;
  if (v19 > 30)
  {
    if (v19 == 31)
    {
      result.i16[0] = *v17;
      __asm { FCVT            S0, H0 }

      result = vdupq_lane_s32(*result.f32, 0);
      *(v20 + v18) = result;
    }

    else if (v19 == 53)
    {
      result.i16[0] = *v17;
      *(v20 + v18) = *v17;
    }
  }

  else if (v19 == 27)
  {
    *result.f32 = vld1_dup_s16(v17);
    *(v20 + v18) = result.i64[0];
  }

  else if (v19 == 28)
  {
    _H0 = *v17;
    __asm { FCVT            S0, H0 }

    *(v20 + v18) = result.i32[0];
  }

  v22 = (**(a1 + 16) + 32 * v3 + 20);
  v23 = v4[33];
  v24 = (v4[32] + v4[34] * v3 + v4[35]);
  switch(v23)
  {
    case 31:
      result.i32[0] = *v22;
      result.i64[0] = vcvtq_f32_f16(*result.f32).u64[0];
      _H1 = *(**(a1 + 16) + 32 * v3 + 24);
      __asm { FCVT            S1, H1 }

      result.i64[1] = __PAIR64__(1.0, _S1);
      *v24 = result;
      break;
    case 30:
      _H0 = *(**(a1 + 16) + 32 * v3 + 24);
      __asm { FCVT            S0, H0 }

      _H1 = *(**(a1 + 16) + 32 * v3 + 22);
      __asm { FCVT            S1, H1 }

      v29 = _S1;
      LOWORD(_S1) = *v22;
      __asm { FCVT            S1, H1 }

      v24->i64[0] = _S1 | (v29 << 32);
      v24->i32[2] = result.i32[0];
      break;
    case 26:
      v25 = *v22;
      v24->i16[2] = *(**(a1 + 16) + 32 * v3 + 24);
      v24->i32[0] = v25;
      break;
  }

  v33 = **(a1 + 16) + 32 * v3;
  v35 = v4[39];
  v34 = v4[40];
  v37 = v4[37];
  v36 = v4[38];
  v38 = v37 + v35 * v3;
  if (v36 == 31)
  {
    result = vcvtq_f32_f16(*(v33 + 12));
    *(v38 + v34) = result;
  }

  else if (v36 == 27)
  {
    result.i64[0] = *(v33 + 12);
    *(v38 + v34) = result.i64[0];
  }

  return result;
}

uint64_t std::__function::__func<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_0,std::allocator<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_0>,void ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9apple3dgs5Asset22UpdateFromCachedTvDataEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9apple3dgs5Asset22UpdateFromCachedTvDataEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9apple3dgs5Asset22UpdateFromCachedTvDataEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9apple3dgs5Asset22UpdateFromCachedTvDataEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_1,std::allocator<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_1>,void ()(unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28593D038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_1,std::allocator<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_1>,void ()(unsigned long)>::operator()(uint64_t a1, uint64_t *a2, __n128 _Q0)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = **(a1 + 16) + 32 * *a2;
  v6 = v4[18];
  v7 = (v4[17] + v4[19] * *a2 + v4[20]);
  switch(v6)
  {
    case 31:
      _Q0.n128_u64[0] = *v5;
      _Q0.n128_u32[2] = *(v5 + 8);
      _Q0.n128_u32[3] = 1.0;
      *v7 = _Q0;
      break;
    case 30:
      v16 = *(v5 + 8);
      v7->n128_u64[0] = *v5;
      v7->n128_u32[2] = v16;
      break;
    case 26:
      _Q0.n128_u64[0] = *(v5 + 4);
      v8 = vmovl_u16(vcvt_f16_f32(_Q0)).u64[0];
      v9.i64[0] = v8;
      v9.i64[1] = HIDWORD(v8);
      v10.i64[0] = 0xFFFFLL;
      v10.i64[1] = 0xFFFFLL;
      _Q0 = vshlq_u64(vandq_s8(v9, v10), xmmword_2474787F0);
      _Q0.n128_u64[0] = vorrq_s8(_Q0, vdupq_laneq_s64(_Q0, 1)).u64[0];
      v11 = _Q0.n128_u64[0];
      _Q0.n128_u32[0] = *v5;
      __asm { FCVT            H0, S0 }

      v7->n128_u16[2] = WORD2(v11);
      v7->n128_u32[0] = v11 | _Q0.n128_u32[0];
      break;
  }

  v17 = (**(a1 + 16) + 32 * v3 + 30);
  v18 = v4[30];
  v19 = v4[28];
  v20 = v4[27] + v4[29] * v3;
  if (v19 > 30)
  {
    if (v19 == 31)
    {
      _Q0.n128_u16[0] = *v17;
      __asm { FCVT            S0, H0 }

      _Q0 = vdupq_lane_s32(_Q0.n128_u64[0], 0);
      *(v20 + v18) = _Q0;
    }

    else if (v19 == 53)
    {
      *(v20 + v18) = *v17;
    }
  }

  else if (v19 == 27)
  {
    _Q0.n128_u64[0] = vld1_dup_s16(v17);
    *(v20 + v18) = _Q0.n128_u64[0];
  }

  else if (v19 == 28)
  {
    _H0 = *v17;
    __asm { FCVT            S0, H0 }

    *(v20 + v18) = _S0;
  }

  v23 = (**(a1 + 16) + 32 * v3 + 18);
  v24 = v4[33];
  v25 = (v4[32] + v4[34] * v3 + v4[35]);
  switch(v24)
  {
    case 31:
      _Q0.n128_u32[0] = *v23;
      _Q0.n128_u64[0] = vcvtq_f32_f16(_Q0.n128_u64[0]).u64[0];
      _H1 = *(**(a1 + 16) + 32 * v3 + 22);
      __asm { FCVT            S1, H1 }

      _Q0.n128_u64[1] = __PAIR64__(1.0, _S1);
      *v25 = _Q0;
      break;
    case 30:
      _H0 = *(**(a1 + 16) + 32 * v3 + 22);
      __asm { FCVT            S0, H0 }

      _H1 = *(**(a1 + 16) + 32 * v3 + 20);
      __asm { FCVT            S1, H1 }

      v31 = _S1;
      LOWORD(_S1) = *v23;
      __asm { FCVT            S1, H1 }

      v25->n128_u64[0] = _S1 | (v31 << 32);
      v25->n128_u32[2] = _S0;
      break;
    case 26:
      v26 = *v23;
      v25->n128_u16[2] = *(**(a1 + 16) + 32 * v3 + 22);
      v25->n128_u32[0] = v26;
      break;
  }

  v35 = (**(a1 + 16) + 32 * v3);
  v36 = v35[6];
  v37 = v35[7];
  v38 = v35[8];
  v39 = v4[40];
  v40 = v4[38];
  v41 = v4[37] + v4[39] * v3;
  _H3 = v36 * v36;
  __asm { FCVT            D3, H3 }

  _H4 = v37 * v37;
  __asm { FCVT            D4, H4 }

  v46 = 1.0 - _D3 - _D4;
  *&_D4 = v38 * v38;
  __asm { FCVT            D4, H4 }

  _D3 = sqrt(v46 - _D4);
  __asm { FCVT            H3, D3 }

  if (v40 == 31)
  {
    *(&_D3 + 1) = v36;
    *(&_D3 + 2) = v37;
    *(&_D3 + 3) = v38;
    _Q0 = vcvtq_f32_f16(*&_D3);
    *(v41 + v39) = _Q0;
  }

  else if (v40 == 27)
  {
    *(&_D3 + 1) = v36;
    *(&_D3 + 2) = v37;
    *(&_D3 + 3) = v38;
    *(v41 + v39) = _D3;
  }

  v49 = v4[24];
  v50 = v4[25];
  v52 = v4[22];
  v51 = v4[23];
  v53 = v52 + v49 * v3;
  v54 = **(a1 + 16) + 32 * v3;
  _Q0.n128_u32[0] = *(v54 + 24);
  _Q0.n128_u16[2] = *(v54 + 28);
  _Q0.n128_u64[0] = vdiv_f16(vadd_f16(_Q0.n128_u64[0], 0xB800B800B800B800), vdup_n_s16(0x3483u));
  v55 = v53 + v50;
  switch(v51)
  {
    case 31:
      *&v60 = vcvtq_f32_f16(_Q0.n128_u64[0]).u64[0];
      _H0 = _Q0.n128_u16[2];
      __asm { FCVT            S0, H0 }

      *(&v60 + 1) = __PAIR64__(1.0, _Q0.n128_u32[0]);
      *v55 = v60;
      break;
    case 30:
      _H1 = _Q0.n128_u16[2];
      __asm { FCVT            S1, H1 }

      _H2 = _Q0.n128_u16[1];
      __asm
      {
        FCVT            S2, H2
        FCVT            S0, H0
      }

      *v55 = _Q0.n128_u32[0] | (_S2 << 32);
      *(v55 + 8) = _S1;
      break;
    case 26:
      *v55 = _Q0.n128_u32[0];
      *(v55 + 4) = _Q0.n128_u16[2];
      break;
  }

  return _Q0.n128_f32[0];
}

uint64_t std::__function::__func<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_1,std::allocator<apple3dgs::Asset::UpdateFromCachedTvData(void)::$_1>,void ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9apple3dgs5Asset22UpdateFromCachedTvDataEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9apple3dgs5Asset22UpdateFromCachedTvDataEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9apple3dgs5Asset22UpdateFromCachedTvDataEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9apple3dgs5Asset22UpdateFromCachedTvDataEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void apple3dgs::CreateSimpleAsset(void *a1@<X0>, apple3dgs **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = [v9 device];
  apple3dgs::Asset::Asset(a5, v10, a4);
  *(a5 + 544) = a3;
  *(a5 + 548) = 0x300000001;
  *(a5 + 560) = 1;
  apple3dgs::Asset::Attributes::Attributes(&v129, v10, a2, 1, a3);
  v11 = v129;
  v129 = 0;
  v12 = *(a5 + 128);
  *(a5 + 128) = v11;

  v13 = v131;
  *(a5 + 136) = v130;
  *(a5 + 152) = v13;
  v14 = v132;
  v132 = 0;
  v15 = *(a5 + 168);
  *(a5 + 168) = v14;

  v16 = v134;
  *(a5 + 176) = v133;
  *(a5 + 192) = v16;
  v17 = v135;
  v135 = 0;
  v18 = *(a5 + 208);
  *(a5 + 208) = v17;

  *(a5 + 216) = v136;
  *(a5 + 232) = v137;
  v19 = v138;
  v138 = 0;
  v20 = *(a5 + 248);
  *(a5 + 248) = v19;

  v21 = v140;
  *(a5 + 256) = v139;
  *(a5 + 272) = v21;
  v22 = v141;
  v141 = 0;
  v23 = *(a5 + 288);
  *(a5 + 288) = v22;

  v24 = v143;
  *(a5 + 296) = v142;
  *(a5 + 312) = v24;

  if (a3)
  {
    v27 = 0;
    v28 = 42;
    __asm { FMOV            V3.2S, #-1.0 }

    v33.i64[0] = 0xFFFFLL;
    v33.i64[1] = 0xFFFFLL;
    do
    {
      v34 = v28 / 0xADC8;
      v35 = 48271 * (v28 % 0xADC8);
      v34 *= 3399;
      _CF = v35 >= v34;
      v36 = v35 - v34;
      if (_CF)
      {
        v37 = 0;
      }

      else
      {
        v37 = 0x7FFFFFFF;
      }

      v38 = v37 + v36;
      v39 = 48271 * (v38 % 0xADC8);
      v40 = 3399 * (v38 / 0xADC8);
      _CF = v39 >= v40;
      v41 = v39 - v40;
      if (_CF)
      {
        v42 = 0;
      }

      else
      {
        v42 = 0x7FFFFFFF;
      }

      v43 = v42 + v41;
      *_Q21.f32 = vmla_f32(_D3, 0x4000000040000000, vmul_f32(vcvt_f32_u32(vadd_s32(__PAIR64__(v43, v38), -1)), 0x3000000030000000));
      v44 = v43 / 0xADC8;
      v45 = 48271 * (v43 % 0xADC8);
      v44 *= 3399;
      _CF = v45 >= v44;
      v46 = v45 - v44;
      if (_CF)
      {
        v47 = 0;
      }

      else
      {
        v47 = 0x7FFFFFFF;
      }

      v48 = v47 + v46;
      v49 = *(a5 + 144);
      v50 = *(a5 + 136) + *(a5 + 152) * v27 + *(a5 + 160);
      _S22 = (vcvts_n_f32_u32(v48 - 1, 0x1FuLL) * 9.9) + 0.1;
      switch(v49)
      {
        case 30:
          *v50 = _Q21.i64[0];
          *(v50 + 8) = _S22;
          break;
        case 27:
          LODWORD(v57) = vcvt_f16_f32(_Q21).u32[0];
          __asm { FCVT            H22, S22 }

          WORD2(v57) = _H22;
          HIWORD(v57) = COERCE_UNSIGNED_INT(1.0);
          *v50 = v57;
          break;
        case 26:
          v52 = _Q21;
          v52.f32[0] = _S22;
          v53 = vmovl_u16(vcvt_f16_f32(v52)).u64[0];
          v54.i64[0] = v53;
          v54.i64[1] = HIDWORD(v53);
          v55 = vshlq_u64(vandq_s8(v54, v33), xmmword_247478960);
          v56 = vorrq_s8(v55, vdupq_laneq_s64(v55, 1));
          __asm { FCVT            H21, S21 }

          *(v50 + 4) = v56.i16[2];
          *v50 = v56.i32[0] | _Q21.i32[0];
          break;
      }

      v59 = v48 / 0xADC8;
      v60 = 48271 * (v48 % 0xADC8);
      v59 *= 3399;
      _CF = v60 >= v59;
      v61 = v60 - v59;
      if (_CF)
      {
        v62 = 0;
      }

      else
      {
        v62 = 0x7FFFFFFF;
      }

      v63 = v62 + v61;
      v64 = 48271 * (v63 % 0xADC8);
      v65 = 3399 * (v63 / 0xADC8);
      _CF = v64 >= v65;
      v66 = v64 - v65;
      if (_CF)
      {
        v67 = 0;
      }

      else
      {
        v67 = 0x7FFFFFFF;
      }

      v68.i32[0] = v63;
      v68.i32[1] = v67 + v66;
      v69 = (v67 + v66) / 0xADC8;
      v70 = 48271 * ((v67 + v66) % 0xADC8);
      v69 *= 3399;
      _CF = v70 >= v69;
      v71 = v70 - v69;
      if (_CF)
      {
        v72 = 0;
      }

      else
      {
        v72 = 0x7FFFFFFF;
      }

      v73 = v72 + v71;
      v74 = *(a5 + 184);
      v75 = *(a5 + 176) + *(a5 + 192) * v27 + *(a5 + 200);
      *_Q21.f32 = vadd_f32(vmul_f32(vcvt_f32_u32(vadd_s32(v68, -1)), 0x3000000030000000), 0);
      _S22 = vcvts_n_f32_u32(v73 - 1, 0x1FuLL) + 0.0;
      switch(v74)
      {
        case 30:
          *v75 = _Q21.i64[0];
          *(v75 + 8) = _S22;
          break;
        case 27:
          _Q21.i32[0] = vcvt_f16_f32(_Q21).u32[0];
          __asm { FCVT            H22, S22 }

          _Q21.i16[2] = _H22;
          _Q21.i16[3] = COERCE_UNSIGNED_INT(1.0);
          *v75 = _Q21.i64[0];
          break;
        case 26:
          v77 = _Q21;
          v77.f32[0] = _S22;
          v78 = vmovl_u16(vcvt_f16_f32(v77)).u64[0];
          v79.i64[0] = v78;
          v79.i64[1] = HIDWORD(v78);
          v80 = vshlq_u64(vandq_s8(v79, v33), xmmword_247478960);
          v81 = vorrq_s8(v80, vdupq_laneq_s64(v80, 1));
          __asm { FCVT            H21, S21 }

          *(v75 + 4) = v81.i16[2];
          *v75 = v81.i32[0] | _Q21.i32[0];
          break;
      }

      v83 = v73 / 0xADC8;
      v84 = 48271 * (v73 % 0xADC8);
      v83 *= 3399;
      _CF = v84 >= v83;
      v85 = v84 - v83;
      if (_CF)
      {
        v86 = 0;
      }

      else
      {
        v86 = 0x7FFFFFFF;
      }

      v87 = v86 + v85;
      v88 = *(a5 + 240);
      v89 = *(a5 + 224);
      v90 = *(a5 + 216) + *(a5 + 232) * v27;
      _Q21.f32[0] = vcvts_n_f32_u32(v87 - 1, 0x1FuLL) + 0.0;
      if (v89 > 30)
      {
        if (v89 == 31)
        {
          _Q21 = vdupq_lane_s32(*_Q21.f32, 0);
          *(v90 + v88) = _Q21;
        }

        else if (v89 == 53)
        {
          __asm { FCVT            H21, S21 }

          *(v90 + v88) = _H21;
        }
      }

      else if (v89 == 27)
      {
        __asm { FCVT            H21, S21 }

        *(v90 + v88) = vdup_lane_s16(*_Q21.f32, 0);
      }

      else if (v89 == 28)
      {
        *(v90 + v88) = _Q21.i32[0];
      }

      v92 = v87 / 0xADC8;
      v93 = 48271 * (v87 % 0xADC8);
      v92 *= 3399;
      _CF = v93 >= v92;
      v94 = v93 - v92;
      if (_CF)
      {
        v95 = 0;
      }

      else
      {
        v95 = 0x7FFFFFFF;
      }

      v96 = v95 + v94;
      v97 = 48271 * (v96 % 0xADC8);
      v98 = 3399 * (v96 / 0xADC8);
      _CF = v97 >= v98;
      v99 = v97 - v98;
      if (_CF)
      {
        v100 = 0;
      }

      else
      {
        v100 = 0x7FFFFFFF;
      }

      v101.i32[0] = v96;
      v101.i32[1] = v100 + v99;
      v102 = (v100 + v99) / 0xADC8;
      v103 = 48271 * ((v100 + v99) % 0xADC8);
      v102 *= 3399;
      _CF = v103 >= v102;
      v104 = v103 - v102;
      if (_CF)
      {
        v105 = 0;
      }

      else
      {
        v105 = 0x7FFFFFFF;
      }

      v28 = v105 + v104;
      v106 = *(a5 + 264);
      v107 = *(a5 + 256) + *(a5 + 272) * v27 + *(a5 + 280);
      *_Q21.f32 = vadd_f32(vmul_f32(vcvt_f32_u32(vadd_s32(v101, -1)), 0x3000000030000000), 0);
      _S22 = vcvts_n_f32_u32(v28 - 1, 0x1FuLL) + 0.0;
      switch(v106)
      {
        case 30:
          *v107 = _Q21.i64[0];
          *(v107 + 8) = _S22;
          v114 = *(a5 + 320);
          v115 = *(a5 + 304);
          v116 = *(a5 + 296) + *(a5 + 312) * v27;
          if (v115 != 31)
          {
LABEL_63:
            if (v115 == 27)
            {
              *(v116 + v114) = 15360;
            }

            goto LABEL_4;
          }

          break;
        case 27:
          LODWORD(v117) = vcvt_f16_f32(_Q21).u32[0];
          __asm { FCVT            H22, S22 }

          WORD2(v117) = _H22;
          HIWORD(v117) = COERCE_UNSIGNED_INT(1.0);
          *v107 = v117;
          break;
        case 26:
          v109 = _Q21;
          v109.f32[0] = _S22;
          v110 = vmovl_u16(vcvt_f16_f32(v109)).u64[0];
          v111.i64[0] = v110;
          v111.i64[1] = HIDWORD(v110);
          v112 = vshlq_u64(vandq_s8(v111, v33), xmmword_247478960);
          v113 = vorrq_s8(v112, vdupq_laneq_s64(v112, 1));
          __asm { FCVT            H21, S21 }

          *(v107 + 4) = v113.i16[2];
          *v107 = v113.i32[0] | _Q21.i32[0];
          v114 = *(a5 + 320);
          v115 = *(a5 + 304);
          v116 = *(a5 + 296) + *(a5 + 312) * v27;
          if (v115 != 31)
          {
            goto LABEL_63;
          }

          break;
        default:
          v114 = *(a5 + 320);
          v115 = *(a5 + 304);
          v116 = *(a5 + 296) + *(a5 + 312) * v27;
          if (v115 != 31)
          {
            goto LABEL_63;
          }

          break;
      }

      *(v116 + v114) = xmmword_247477B90;
LABEL_4:
      ++v27;
    }

    while (a3 != v27);
  }

  v119 = MEMORY[0x277D860B0];
  *(a5 + 512) = 0x2D000000500;
  v120 = *v119;
  _D3.i32[0] = 1061997773;
  LODWORD(v121) = vdupq_lane_s32(_D3, 0).u32[0];
  DWORD1(v121) = HIDWORD(*v119);
  DWORD2(v121) = *(v119 + 1);
  HIDWORD(v121) = HIDWORD(*v119);
  LODWORD(v120) = 1068895073;
  v122 = vdupq_lane_s32(*&v120, 0);
  v122.i32[0] = v119[1];
  v122.i32[2] = *(v119 + 3);
  v122.i32[3] = HIDWORD(v119[1]);
  *&v123 = 0x3F0000003F000000;
  *(&v123 + 1) = *(v119 + 88) >> 64;
  *(a5 + 464) = v121;
  *(a5 + 480) = v122;
  *(a5 + 496) = v123;
  *(a5 + 564) = 0;
  *(a5 + 336) = xmmword_247477B90;
  *(a5 + 352) = xmmword_247477BA0;
  *(a5 + 368) = xmmword_247477BB0;
  *(a5 + 384) = xmmword_247477BC0;
  v124 = [v9 commandBuffer];
  v128 = 0;
  apple3dgs::Asset::ComputeCovariance(a5, v124, &v128);
  v125 = v128;
  [v124 commit];
  [v124 waitUntilCompleted];
  apple3dgs::Asset::ComputeCentroid(a5, v126);
  if (v125)
  {
    MEMORY[0x24C1A1B40](v127, &unk_24747AE39);
    MEMORY[0x24C1A1B70](v127);
  }
}

void sub_24740FDEC(_Unwind_Exception *a1)
{
  apple3dgs::Asset::~Asset(v3);

  _Unwind_Resume(a1);
}

void sub_24740FE30(_Unwind_Exception *a1)
{
  apple3dgs::Asset::~Asset(v3);

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::Asset::Asset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MetalContext::MetalContext(a1, a2, a3);
  v4 = objc_alloc_init(MEMORY[0x277CCAD78]);
  *(a1 + 128) = 0u;
  *(a1 + 120) = v4;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  apple3dgs::Asset::Attributes::Attributes((a1 + 128), v5);
  *(a1 + 336) = xmmword_247477B90;
  *(a1 + 352) = xmmword_247477BA0;
  *(a1 + 368) = xmmword_247477BB0;
  *(a1 + 384) = xmmword_247477BC0;
  *(a1 + 400) = xmmword_247477B90;
  *(a1 + 416) = xmmword_247477BA0;
  *(a1 + 432) = xmmword_247477BB0;
  *(a1 + 448) = xmmword_247477BC0;
  *(a1 + 464) = xmmword_247477B90;
  *(a1 + 480) = xmmword_247477BA0;
  *(a1 + 496) = xmmword_247477BD0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 544) = xmmword_247477BE0;
  *(a1 + 560) = 0x100000000;
  *(a1 + 568) = 2;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 612) = 1;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
  v7 = *(a1 + 648);
  if (v7 != v6)
  {
    CGColorSpaceRelease(v7);
    *(a1 + 648) = v6;
    CGColorSpaceRetain(v6);
    *(a1 + 556) = apple3dgs::CGColorSpaceGetTransferFunction(*(a1 + 648), v8);
  }

  CGColorSpaceRelease(v6);
  return a1;
}

void sub_24740FFCC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  apple3dgs::Asset::Derived::~Derived((v1 + 576));
  apple3dgs::Asset::Attributes::~Attributes(v2);

  MetalContext::~MetalContext(v1);
  _Unwind_Resume(a1);
}

void *apple3dgs::Asset::Attributes::Attributes(void *a1, void *a2, apple3dgs **a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = *a3;
  v11 = v9;
  MinimumStride = apple3dgs::GetMinimumStride(v10, v12);
  apple3dgs::Attribute::Attribute(a1, v11, v10, MinimumStride, a5);

  v14 = a3[1];
  v16 = apple3dgs::GetMinimumStride(v14, v15);
  apple3dgs::Attribute::Attribute(a1 + 5, v11, v14, v16 * a4, a5);
  v17 = a3[2];
  v18 = v11;
  v20 = apple3dgs::GetMinimumStride(v17, v19);
  apple3dgs::Attribute::Attribute(a1 + 10, v18, v17, v20, a5);

  v21 = a3[3];
  v22 = v18;
  v24 = apple3dgs::GetMinimumStride(v21, v23);
  apple3dgs::Attribute::Attribute(a1 + 15, v22, v21, v24, a5);

  v25 = a3[4];
  v26 = v22;
  v28 = apple3dgs::GetMinimumStride(v25, v27);
  apple3dgs::Attribute::Attribute(a1 + 20, v26, v25, v28, a5);

  return a1;
}

void *apple3dgs::Attribute::Attribute(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = [v9 newBufferWithLength:a5 * a4 options:0];
  *a1 = v10;
  a1[1] = [v10 contents];
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = 0;

  return a1;
}

uint64_t apple3dgs::GetMinimumStride(apple3dgs *this, MTLAttributeFormat a2)
{
  if (this - 1 > 0x34)
  {
    return 0;
  }

  else
  {
    return qword_247478980[this - 1];
  }
}

double apple3dgs::NdcProjection(apple3dgs *this, const simd::float3x3 *a2, float a3, float a4)
{
  v4.i64[0] = __PAIR64__(1.0, -1.0);
  v4.f32[2] = a3 / (a3 - a4);
  v4.i32[3] = 1.0;
  v5.i64[0] = 0;
  v5.i32[3] = 0;
  v5.f32[2] = -(a4 * a3) / (a3 - a4);
  *&result = vmlaq_f32(vmlaq_f32(vaddq_f32(vmulq_n_f32(xmmword_247478B30, COERCE_FLOAT(*this)), xmmword_247478B40), 0, v4), 0, v5).u64[0];
  v7 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(0, xmmword_247478B50, *(this + 16), 1), 0, v4), 0, v5);
  v8 = vmlaq_f32(vaddq_f32(v4, vmlaq_lane_f32(vmulq_n_f32(xmmword_247478B30, COERCE_FLOAT(*(this + 2))), xmmword_247478B50, *(this + 32), 1)), 0, v5);
  return result;
}

void apple3dgs::ComputeQuantiles(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a1[1];
  if (v5 != *a1)
  {
    if (((v5 - *a1) & 0x8000000000000000) == 0)
    {
      v6 = v5 - *a1;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  std::__sort<std::__less<float,float> &,float *>();
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = a2[1];
  if (v7 != *a2)
  {
    if (((v7 - *a2) & 0x8000000000000000) == 0)
    {
      v8 = v7 - *a2;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }
}

void sub_247410420(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t apple3dgs::ComputeDepthBoundariesFromUniformSampling@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this != -1)
  {
    operator new();
  }

  return this;
}

void apple3dgs::ReadNDCDepths(void *a1@<X0>, std::vector<unsigned int>::size_type a2@<X1>, std::vector<unsigned int> *a3@<X8>)
{
  v16 = a1;
  v5 = [v16 contents];
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  if (!a2)
  {
    goto LABEL_32;
  }

  v6 = v5;
  std::vector<float>::__append(a3, a2);
  begin = a3->__begin_;
  if (a2 <= 0xF)
  {
    goto LABEL_3;
  }

  v9 = 0;
  v8 = 0;
  if (!a2 || (a2 - 1) >> 32)
  {
    goto LABEL_4;
  }

  if (begin < v6 + 2 * a2 && v6 < begin + 4 * a2)
  {
LABEL_3:
    v8 = 0;
    v9 = 0;
    goto LABEL_4;
  }

  v8 = a2 & 0x1FFFFFFF8;
  v11 = (begin + 16);
  v12 = v6;
  v13 = a2 & 0x1FFFFFFF8;
  do
  {
    v14 = *v12;
    v15 = vmovn_s16(vtstq_s16(v14, v14));
    if (v15.i8[0])
    {
      *(v11 - 4) = v14.u16[0] / 65535.0;
      if ((v15.i8[1] & 1) == 0)
      {
LABEL_16:
        if ((v15.i8[2] & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }
    }

    else if ((v15.i8[1] & 1) == 0)
    {
      goto LABEL_16;
    }

    *(v11 - 3) = v14.u16[1] / 65535.0;
    if ((v15.i8[2] & 1) == 0)
    {
LABEL_17:
      if ((v15.i8[3] & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v11 - 2) = v14.u16[2] / 65535.0;
    if ((v15.i8[3] & 1) == 0)
    {
LABEL_18:
      if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v11 - 1) = v14.u16[3] / 65535.0;
    if ((v15.i8[4] & 1) == 0)
    {
LABEL_19:
      if ((v15.i8[5] & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }

LABEL_27:
    *v11 = v14.u16[4] / 65535.0;
    if ((v15.i8[5] & 1) == 0)
    {
LABEL_20:
      if (v15.i8[6])
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

LABEL_28:
    v11[1] = v14.u16[5] / 65535.0;
    if (v15.i8[6])
    {
LABEL_29:
      v11[2] = v14.u16[6] / 65535.0;
      if ((v15.i8[7] & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }

LABEL_21:
    if ((v15.i8[7] & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_30:
    v11[3] = v14.u16[7] / 65535.0;
LABEL_13:
    ++v12;
    v11 += 8;
    v13 -= 8;
  }

  while (v13);
  v9 = a2 & 0xFFFFFFF8;
  if (v8 == a2)
  {
    goto LABEL_32;
  }

LABEL_4:
  v10 = v9 + 1;
  do
  {
    if (*(v6 + 2 * v8))
    {
      *(begin + 4 * v8) = *(v6 + 2 * v8) / 65535.0;
    }

    v8 = v10++;
  }

  while (v8 < a2);
LABEL_32:
}

void sub_247410918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *apple3dgs::CreateDepthBoundaryNearFarPlanes@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = (result[1] - *result) >> 2;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3 != 1)
  {
    if (!((v3 - 1) >> 61))
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t apple3dgs::FindDepthIndex(uint64_t a1, float *a2, float *a3, float a4)
{
  *a2 = 3.4028e38;
  *a3 = 1.1755e-38;
  v4 = *a1;
  v5 = *(a1 + 8);
  result = 0;
  v7 = v5 - v4;
  if (v7)
  {
    v8 = v7 >> 2;
    v9 = 1;
    do
    {
      v10 = *v4++;
      v11 = v10;
      if (v10 < a4)
      {
        ++result;
      }

      v12 = *a2;
      if (v11 < *a2)
      {
        v12 = v11;
      }

      *a2 = v12;
      if (*a3 >= v11)
      {
        v11 = *a3;
      }

      *a3 = v11;
    }

    while (v8 > v9++);
  }

  return result;
}

uint64_t apple3dgs::FrontWeightedQuantiles@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this != -1)
  {
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_247410C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *(a10 + 8) = v10;
  operator delete(v10);
  _Unwind_Resume(a1);
}

void apple3dgs::ComputeFrontWeightedQuantiles(apple3dgs *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 8) - *a2;
  v7 = v6 >> 2;
  v8 = 0;
  if (v6)
  {
    v9 = 1;
    v10 = 3.4028e38;
    v11 = 1.1755e-38;
    do
    {
      v12 = *v5++;
      v13 = v12;
      if (v12 < 0.5)
      {
        ++v8;
      }

      if (v13 < v10)
      {
        v10 = v13;
      }

      if (v11 < v13)
      {
        v11 = v13;
      }

      v14 = v7 > v9++;
    }

    while (v14);
    v14 = v10 <= 0.0 || v10 > 0.25;
    if (!v14)
    {
      v15 = _gs_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 3.852e-34;
        v27 = v10;
        _os_log_impl(&dword_2473FC000, v15, OS_LOG_TYPE_DEBUG, "[A3DGSR] FW: snapping the min depth: %.5f to zero", buf, 0xCu);
      }

      v10 = 0.0;
    }
  }

  else
  {
    v10 = 3.4028e38;
    v11 = 1.1755e-38;
  }

  v16 = v8 / (v7 - 1);
  v17 = fminf(fmaxf(1.0 - v16, 0.25), 0.5);
  apple3dgs::FrontWeightedQuantiles(this, &v24);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v18 = v24;
  v19 = v25;
  if (v25 != v24)
  {
    if (((v25 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v20 = _gs_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 3.8523e-34;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 2048;
    v31 = v8;
    v32 = 2048;
    v33 = v7;
    _os_log_impl(&dword_2473FC000, v20, OS_LOG_TYPE_DEBUG, "[A3DGSR] FW: depth_range: %.5f, %.5f, mid_index: %ld / %ld", buf, 0x2Au);
  }

  v21 = _gs_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 3.8522e-34;
    v27 = v16;
    v28 = 2048;
    v29 = v17;
    v30 = 2048;
    v31 = 0x3FEA666660000000;
    _os_log_impl(&dword_2473FC000, v21, OS_LOG_TYPE_DEBUG, "[A3DGSR] FW: far_bound: %.5f, near_bound: %.5f, near_bound_weight: %.5f", buf, 0x20u);
  }

  if (v19 != v18)
  {
    v22 = v18;
    do
    {
      *buf = v10 + ((v11 - v10) * *v22);
      std::vector<float>::push_back[abi:ne200100](a3, buf);
      ++v22;
    }

    while (v22 != v19);
  }

  if (v18)
  {
    operator delete(v18);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_247410F74(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  if (!v2)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v2);
  _Unwind_Resume(exception_object);
}

void apple3dgs::ComputeFrontWeightedBoundaries(apple3dgs *a1@<X0>, void *a2@<X2>, std::vector<unsigned int>::size_type a3@<X3>, void *a4@<X8>)
{
  v7 = a2;
  apple3dgs::ReadNDCDepths(v7, a3, &__p);
  apple3dgs::ComputeFrontWeightedQuantiles(a1, &__p, &v10);
  v8 = v10;
  v9 = v11;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  if (v8)
  {
    v11 = v8;
    operator delete(v8);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_2474110EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (!__p)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void apple3dgs::ComputeDepthBoundariesFromQuantiles(int a1@<W0>, void *a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = a2;
  memset(v10, 0, sizeof(v10));
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  [v7 contents];
  memset(v9, 0, sizeof(v9));
  if (a1 != -1)
  {
    operator new();
  }

  apple3dgs::ComputeQuantiles(v10, v9, __p);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2474115A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (!v12)
  {

    _Unwind_Resume(a1);
  }

  operator delete(v12);

  _Unwind_Resume(a1);
}

void apple3dgs::ComputeDepthBoundariesFromImportanceSampling(int a1, apple3dgs *a2, void *a3, unint64_t a4, float a5, float a6)
{
  v23 = a3;
  if (a1)
  {
    operator new();
  }

  v12 = apple3dgs::RealDepthToNDCDepth(a2, a6, v11);
  v14 = apple3dgs::RealDepthToNDCDepth(a2, a5, v13);
  v15 = [v23 contents];
  if (a4)
  {
    v16 = 1;
    do
    {
      v19 = *v15++;
      v18 = v19;
      if (v19)
      {
        v20 = v18 / 65535.0;
        if (v20 <= v14 && v20 > v12)
        {
          v22 = ((1.0 / ((v14 - v12) / 0)) * (v14 - v20));
          ++*(4 * v22);
        }
      }

      v17 = v16++;
    }

    while (v17 < a4);
  }

  operator new();
}

void sub_247411B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  operator delete(v13);
  operator delete(v12);
  operator delete(v11);
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void apple3dgs::ComputeDepthBoundariesFromHybridSampling(int a1@<W0>, apple3dgs *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  __p = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v40 = a3;
  std::vector<float>::assign(&__p, a1, &v41, v13);
  v15 = apple3dgs::RealDepthToNDCDepth(a2, a7, v14);
  v17 = apple3dgs::RealDepthToNDCDepth(a2, a6, v16);
  v18 = [v40 contents];
  if (a4)
  {
    v20 = 1;
    v21 = __p;
    do
    {
      v24 = *v18++;
      v23 = v24;
      if (v24)
      {
        v25 = v23 / 65535.0;
        if (v25 <= v17 && v25 > v15)
        {
          v27 = ((v17 - v25) / ((v17 - v15) / a1));
          if (v27 >= a1)
          {
            v27 = a1 - 1;
          }

          v21[v27] = (1.0 / a4) + v21[v27];
        }
      }

      v22 = v20++;
    }

    while (v22 < a4);
  }

  if (a1 != -1)
  {
    if (a1 > -2)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v28 = 0;
  v29 = 0x80000000;
  do
  {
    v30 = ((v28 / 0x7FFFFFFFu) - MEMORY[0]) / ((MEMORY[4] - MEMORY[0]) + 0.0000001);
    *(4 * v28++) = MEMORY[0] + (v30 * (MEMORY[4] - MEMORY[0]));
  }

  while (v28 != 0x80000000);
  *v19.i32 = 0x80000000;
  v31 = vdupq_lane_s32(v19, 0);
  v32 = xmmword_247478B70;
  v33 = xmmword_247478B80;
  v34.i64[0] = 0x100000001;
  v34.i64[1] = 0x100000001;
  v35.i64[0] = 0x500000005;
  v35.i64[1] = 0x500000005;
  v36 = vdupq_n_s64(8uLL);
  v37 = 0x80000000;
  do
  {
    v38 = vuzp1q_s32(v33, v32);
    v39 = (4 * v29);
    *v39 = vdivq_f32(vsubq_f32(v31, vcvtq_f32_u32(vaddq_s32(v38, v34))), v31);
    v39[1] = vdivq_f32(vsubq_f32(v31, vcvtq_f32_u32(vaddq_s32(v38, v35))), v31);
    v32 = vaddq_s64(v32, v36);
    v33 = vaddq_s64(v33, v36);
    v29 += 8;
    v37 -= 8;
  }

  while (v37);
  std::__sort<std::__less<float,float> &,float *>();
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }
}

void sub_2474121AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

char *std::vector<float>::assign(int32x4_t **a1, unint64_t a2, __int32 *a3, int32x2_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (a2 > (v6 - v7) >> 2)
  {
    if (v7)
    {
      a1[1] = v7;
      operator delete(v7);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v9 = a2;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v7;
  v14 = (v12 - v7) >> 2;
  if (v14 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = (v12 - v7) >> 2;
  }

  if (v15)
  {
    a4.i32[0] = *a3;
    v16 = v15;
    if (v15 < 8)
    {
      goto LABEL_31;
    }

    result = &v7->i8[4 * (v15 & 0xFFFFFFFFFFFFFFF8)];
    v16 = v15 & 7;
    v17 = vdupq_lane_s32(a4, 0);
    v18 = v7 + 1;
    v19 = v15 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 8;
    }

    while (v19);
    if (v15 != (v15 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_31:
      do
      {
        *result = a4.i32[0];
        result += 4;
        --v16;
      }

      while (v16);
    }
  }

  v10 = a2 >= v14;
  v20 = a2 - v14;
  if (v20 != 0 && v10)
  {
    v21 = (v12 + 4 * v20);
    a4.i32[0] = *a3;
    v22 = 4 * a2 - v13 - 4;
    v23 = v12;
    if (v22 < 0x1C)
    {
      goto LABEL_32;
    }

    v24 = (v22 >> 2) + 1;
    v23 = (v12 + 4 * (v24 & 0x7FFFFFFFFFFFFFF8));
    v25 = vdupq_lane_s32(a4, 0);
    v26 = v12 + 1;
    v27 = v24 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v26[-1] = v25;
      *v26 = v25;
      v26 += 2;
      v27 -= 8;
    }

    while (v27);
    if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_32:
      do
      {
        v23->i32[0] = a4.i32[0];
        v23 = (v23 + 4);
      }

      while (v23 != v21);
    }

    a1[1] = v21;
  }

  else
  {
    a1[1] = (v7 + 4 * a2);
  }

  return result;
}

void apple3dgs::ComputeDepthBoundariesFromUniformNonEmptySampling(int a1@<W0>, void *a2@<X2>, std::vector<unsigned int>::size_type a3@<X3>, void *a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v18, 0, sizeof(v18));
  v6 = [a2 contents];
  if (!a3)
  {
    goto LABEL_8;
  }

  v7 = v6;
  std::vector<float>::__append(&v18, a3);
  begin = v18.__begin_;
  if (a3 <= 0xF)
  {
    goto LABEL_3;
  }

  v10 = 0;
  v9 = 0;
  if (!a3 || (a3 - 1) >> 32)
  {
LABEL_4:
    v11 = v10 + 1;
    do
    {
      if (*(v7 + v9))
      {
        *&begin[v9] = *(v7 + v9) / 65535.0;
      }

      v9 = v11++;
    }

    while (v9 < a3);
LABEL_8:
    std::__sort<std::__less<float,float> &,float *>();
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (a1 == -1)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    operator new();
  }

  if (v18.__begin_ < (v7 + 2 * a3) && v7 < &v18.__begin_[a3])
  {
LABEL_3:
    v9 = 0;
    v10 = 0;
    goto LABEL_4;
  }

  v9 = a3 & 0x1FFFFFFF8;
  v12 = (v18.__begin_ + 4);
  v13 = v7;
  v14 = a3 & 0x1FFFFFFF8;
  while (1)
  {
    v15 = *v13;
    v16 = vmovn_s16(vtstq_s16(v15, v15));
    if (v16.i8[0])
    {
      *(v12 - 4) = v15.u16[0] / 65535.0;
      if ((v16.i8[1] & 1) == 0)
      {
LABEL_19:
        if ((v16.i8[2] & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }

    else if ((v16.i8[1] & 1) == 0)
    {
      goto LABEL_19;
    }

    *(v12 - 3) = v15.u16[1] / 65535.0;
    if ((v16.i8[2] & 1) == 0)
    {
LABEL_20:
      if ((v16.i8[3] & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(v12 - 2) = v15.u16[2] / 65535.0;
    if ((v16.i8[3] & 1) == 0)
    {
LABEL_21:
      if ((v16.i8[4] & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v12 - 1) = v15.u16[3] / 65535.0;
    if ((v16.i8[4] & 1) == 0)
    {
LABEL_22:
      if ((v16.i8[5] & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }

LABEL_30:
    *v12 = v15.u16[4] / 65535.0;
    if ((v16.i8[5] & 1) == 0)
    {
LABEL_23:
      if ((v16.i8[6] & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

LABEL_31:
    v12[1] = v15.u16[5] / 65535.0;
    if ((v16.i8[6] & 1) == 0)
    {
LABEL_24:
      if (v16.i8[7])
      {
        goto LABEL_33;
      }

      goto LABEL_16;
    }

LABEL_32:
    v12[2] = v15.u16[6] / 65535.0;
    if (v16.i8[7])
    {
LABEL_33:
      v12[3] = v15.u16[7] / 65535.0;
    }

LABEL_16:
    v12 += 8;
    ++v13;
    v14 -= 8;
    if (!v14)
    {
      v10 = a3 & 0xFFFFFFF8;
      if (v9 == a3)
      {
        goto LABEL_8;
      }

      goto LABEL_4;
    }
  }
}

void sub_247412E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v23;
    operator delete(v23);
    v24 = __p;
    if (!__p)
    {
LABEL_4:

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
      goto LABEL_4;
    }
  }

  operator delete(v24);
  goto LABEL_4;
}

void apple3dgs::GetDepthBoundaries(int a1@<W0>, apple3dgs *a2@<X1>, apple3dgs *a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  v20 = a4;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      apple3dgs::ComputeDepthBoundariesFromImportanceSampling(a2, a3, v20, a5, a7, a8);
      v15 = v21;
      v18 = (v22 - v21) >> 2;
      a6[1] = 0;
      a6[2] = 0;
      *a6 = 0;
      if (v18 != 1)
      {
        if (!((v18 - 1) >> 61))
        {
          operator new();
        }

        std::vector<char>::__throw_length_error[abi:ne200100]();
      }
    }

    else if (a1 == 4)
    {
      apple3dgs::ComputeFrontWeightedBoundaries(a2, v20, a5, &v21);
      v15 = v21;
      v17 = (v22 - v21) >> 2;
      a6[1] = 0;
      a6[2] = 0;
      *a6 = 0;
      if (v17 != 1)
      {
        if (!((v17 - 1) >> 61))
        {
          operator new();
        }

        std::vector<char>::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      apple3dgs::ComputeDepthBoundariesFromHybridSampling(a2, a3, v20, a5, &v21, a7, a8);
      v15 = v21;
      v19 = (v22 - v21) >> 2;
      a6[1] = 0;
      a6[2] = 0;
      *a6 = 0;
      if (v19 != 1)
      {
        if (!((v19 - 1) >> 61))
        {
          operator new();
        }

        std::vector<char>::__throw_length_error[abi:ne200100]();
      }
    }
  }

  else
  {
    if (!a1)
    {
      if (a2 == -1)
      {
        *a6 = 0;
        a6[1] = 0;
        a6[2] = 0;
        std::vector<char>::__throw_length_error[abi:ne200100]();
      }

      operator new();
    }

    if (a1 != 1)
    {
      apple3dgs::ComputeDepthBoundariesFromUniformNonEmptySampling(a2, v20, a5, a6);
    }

    apple3dgs::ComputeDepthBoundariesFromQuantiles(a2, v20, a5, &v21);
    v15 = v21;
    v16 = (v22 - v21) >> 2;
    a6[1] = 0;
    a6[2] = 0;
    *a6 = 0;
    if (v16 != 1)
    {
      if (!((v16 - 1) >> 61))
      {
        operator new();
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_2474134CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void std::vector<float>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
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
      std::vector<char>::__throw_length_error[abi:ne200100]();
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

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t MetalContext::MetalContext(uint64_t a1, void *a2, char a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *(a1 + 8) = 0u;
  v6 = (a1 + 8);
  *a1 = v5;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = a3;
  context = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRE3DGSFoundation"];
  v37 = 0;
  v8 = [v5 newDefaultLibraryWithBundle:v7 error:&v37];
  v9 = v37;
  v10 = *(a1 + 8);
  *(a1 + 8) = v8;

  if (*(a1 + 8))
  {
    goto LABEL_11;
  }

  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Apple3DGSRendering"];

  v36 = v9;
  v12 = [v5 newDefaultLibraryWithBundle:v11 error:&v36];
  v13 = v36;

  v14 = *v6;
  *v6 = v12;

  if (*v6)
  {
    v9 = v13;
    v7 = v11;
LABEL_11:
    v24 = [v5 newCommandQueue];
    v25 = *(a1 + 24);
    *(a1 + 24) = v24;

    v22 = objc_alloc_init(MEMORY[0x277CD6C88]);
    v26 = [v7 URLForResource:@"archive" withExtension:@"metallib"];
    [v22 setUrl:v26];

    v33 = v9;
    v27 = [v5 newBinaryArchiveWithDescriptor:v22 error:&v33];
    v20 = v33;

    v28 = *(a1 + 16);
    *(a1 + 16) = v27;

    if (!*(a1 + 16))
    {
      v29 = _gs_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_2473FC000, v29, OS_LOG_TYPE_DEBUG, "[A3DGSR] Could not find default binary archive", buf, 2u);
      }
    }

    v18 = v7;
    goto LABEL_16;
  }

  v15 = [MEMORY[0x277CCA8D8] mainBundle];

  v35 = v13;
  v16 = [v5 newDefaultLibraryWithBundle:v15 error:&v35];
  v9 = v35;

  v17 = *v6;
  *v6 = v16;

  if (*v6)
  {
    v7 = v15;
    goto LABEL_11;
  }

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  v34 = v9;
  v19 = [v5 newDefaultLibraryWithBundle:v18 error:&v34];
  v20 = v34;

  v21 = *v6;
  *v6 = v19;

  if (*v6 || !v20)
  {
    v9 = v20;
    v7 = v18;
    goto LABEL_11;
  }

  v22 = _gs_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = [v18 description];
    *buf = 138412546;
    v39 = v20;
    v40 = 2112;
    v41 = v23;
    _os_log_impl(&dword_2473FC000, v22, OS_LOG_TYPE_ERROR, "[A3DGSR /metal_context.mm:39] Failed to compile library: %@, bundle path %@", buf, 0x16u);
  }

LABEL_16:

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_247413B74(_Unwind_Exception *a1)
{
  std::unordered_map<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::~unordered_map[abi:ne200100](v3);
  std::unordered_map<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>::~unordered_map[abi:ne200100]((v1 + 4));

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t std::unordered_map<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t *MetalContext::computePipelineState(uint64_t a1, const std::string::value_type **a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *a2, a2[1]);
  }

  else
  {
    v44 = *a2;
  }

  if (*(a3 + 8) == 1)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", objc_msgSend(*a3, "hash")];
    v10 = v9;
    v11 = [v9 UTF8String];
    v12 = strlen(v11);
    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      operator new();
    }

    v48 = v12;
    if (v12)
    {
      memmove(&__dst, v11, v12);
    }

    *(&__dst + v13) = 0;
    if ((v48 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if ((v48 & 0x80u) == 0)
    {
      v15 = v48;
    }

    else
    {
      v15 = *(&__dst + 1);
    }

    std::string::append(&v44, p_dst, v15);
    if (v48 < 0)
    {
      operator delete(__dst);
    }
  }

  if (*(a4 + 8) == 1)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", objc_msgSend(*a4, "hash")];
    v17 = v16;
    v18 = [v16 UTF8String];
    v19 = strlen(v18);
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      operator new();
    }

    v48 = v19;
    if (v19)
    {
      memmove(&__dst, v18, v19);
    }

    *(&__dst + v20) = 0;
    if ((v48 & 0x80u) == 0)
    {
      v21 = &__dst;
    }

    else
    {
      v21 = __dst;
    }

    if ((v48 & 0x80u) == 0)
    {
      v22 = v48;
    }

    else
    {
      v22 = *(&__dst + 1);
    }

    std::string::append(&v44, v21, v22);
    if (v48 < 0)
    {
      operator delete(__dst);
    }
  }

  v23 = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::find<std::string>((a1 + 32), &v44);
  if (v23)
  {
    v24 = v23[5];
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = *a2;
    }

    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v25];
    v27 = objc_alloc_init(MEMORY[0x277CD6D78]);
    [v27 setName:v26];
    if (*(a4 + 8) == 1)
    {
      [v27 setConstantValues:*a4];
    }

    if (*(a1 + 16))
    {
      v46 = *(a1 + 16);
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [v27 setBinaryArchives:v28];
    }

    if (*(a1 + 112) == 1)
    {
      [v27 setOptions:{objc_msgSend(v27, "options") | 4}];
    }

    v29 = *(a1 + 8);
    v43 = 0;
    v30 = [v29 newFunctionWithDescriptor:v27 error:&v43];
    v31 = v43;
    if (v31)
    {
      v32 = v31;
      v33 = _gs_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__dst) = 138412290;
        *(&__dst + 4) = v32;
        _os_log_impl(&dword_2473FC000, v33, OS_LOG_TYPE_ERROR, "[A3DGSR /metal_context.mm:99] Failed to create function: %@", &__dst, 0xCu);
      }

      v24 = 0;
    }

    else
    {
      v33 = objc_alloc_init(MEMORY[0x277CD6D30]);
      [v33 setComputeFunction:v30];
      if (*(a3 + 8) == 1)
      {
        [v33 setStageInputDescriptor:*a3];
      }

      if (*(a1 + 16))
      {
        v45 = *(a1 + 16);
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
        [v33 setBinaryArchives:v34];
      }

      if (*(a1 + 112))
      {
        v35 = 4;
      }

      else
      {
        v35 = 0;
      }

      v36 = *a1;
      v42 = 0;
      v37 = [v36 newComputePipelineStateWithDescriptor:v33 options:v35 reflection:0 error:&v42];
      v32 = v42;
      if (v32)
      {
        v38 = _gs_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__dst) = 138412290;
          *(&__dst + 4) = v32;
          _os_log_impl(&dword_2473FC000, v38, OS_LOG_TYPE_ERROR, "[A3DGSR /metal_context.mm:126] Failed to create state: %@", &__dst, 0xCu);
        }

        v24 = 0;
      }

      else
      {
        *&__dst = &v44;
        v39 = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::piecewise_construct_t const&<>>((a1 + 32), &v44);
        objc_storeStrong(v39 + 5, v37);
        v24 = v37;
      }
    }
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v8);
  v40 = *MEMORY[0x277D85DE8];

  return v24;
}

void sub_247414280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void MetalContext::renderPipelineState(uint64_t a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  v106 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  if (v10 + v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v8;
  if (v10 + v9 > 0x16)
  {
    operator new();
  }

  __p[1] = 0;
  v104 = 0;
  __p[0] = 0;
  HIBYTE(v104) = v10 + v9;
  if (v9)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(__p, v12, v9);
  }

  v13 = __p + v9;
  if (v10)
  {
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    memmove(v13, v14, v10);
  }

  v13[v10] = 0;
  v15 = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::find<std::string>((a1 + 72), __p);
  if (v15)
  {
    v16 = v15;
    *a4 = v15[5];
    a4[1] = v16[6];
    goto LABEL_156;
  }

  v17 = objc_opt_new();
  v18 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v19];
  v21 = [v18 newFunctionWithName:v20];
  [v17 setVertexFunction:v21];

  if (*(a3 + 23) >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:v22];
  v24 = [*(a1 + 8) newFunctionWithName:v23];
  [v17 setFragmentFunction:v24];

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"A3DGS.%@", v23];
  [v17 setLabel:v25];

  v26 = *(a3 + 23);
  v27 = *a3;
  v28 = a3[1];
  if ((v26 & 0x80u) != 0)
  {
    v29 = *a3;
  }

  else
  {
    v29 = a3;
  }

  if ((v26 & 0x80u) != 0)
  {
    v30 = a3[1];
  }

  else
  {
    v30 = *(a3 + 23);
  }

  if (v30 >= 3)
  {
    v31 = 3;
  }

  else
  {
    v31 = v30;
  }

  if (!v30)
  {
LABEL_87:
    if ((v26 & 0x80) != 0)
    {
      if (v28 != 12)
      {
        if (v28 != 15)
        {
          if (v28 != 19)
          {
            goto LABEL_137;
          }

          v43 = *v27;
          v44 = v27[1];
          v45 = *(v27 + 11);
          v46 = v43 == 0x7261705374736F50 && v44 == 0x42475249504D6573;
          if (!v46 || v45 != 0x5346444247524950)
          {
            goto LABEL_137;
          }

          goto LABEL_111;
        }

        v96 = *v27;
        v97 = *(v27 + 7);
        if (v96 != 0x7261705374736F50 || v97 != 0x534649504D657372)
        {
          goto LABEL_137;
        }

LABEL_165:
        v99 = [v17 colorAttachments];
        v100 = [v99 objectAtIndexedSubscript:0];

        [v100 setPixelFormat:115];
        [v100 setWriteMask:0];

        v101 = [v17 colorAttachments];
        v55 = [v101 objectAtIndexedSubscript:1];

        [v55 setPixelFormat:81];
        [v55 setBlendingEnabled:0];
        goto LABEL_132;
      }
    }

    else
    {
      v27 = a3;
      if (v26 != 12)
      {
        if (v26 != 15)
        {
          if (v26 != 19 || (*a3 == 0x7261705374736F50 ? (v41 = a3[1] == 0x42475249504D6573) : (v41 = 0), v41 ? (v42 = *(a3 + 11) == 0x5346444247524950) : (v42 = 0), !v42))
          {
LABEL_137:
            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Unrecognized shader name: ", 26);
            v72 = *(a2 + 23);
            if (v72 >= 0)
            {
              v73 = a2;
            }

            else
            {
              v73 = *a2;
            }

            if (v72 >= 0)
            {
              v74 = *(a2 + 23);
            }

            else
            {
              v74 = a2[1];
            }

            v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v73, v74);
            v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, ", ", 2);
            v77 = *(a3 + 23);
            if (v77 >= 0)
            {
              v78 = a3;
            }

            else
            {
              v78 = *a3;
            }

            if (v77 >= 0)
            {
              v79 = *(a3 + 23);
            }

            else
            {
              v79 = a3[1];
            }

            v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v78, v79);
            std::ios_base::getloc((v80 + *(*v80 - 24)));
            v81 = std::locale::use_facet(v105, MEMORY[0x277D82680]);
            (v81->__vftable[2].~facet_0)(v81, 10);
            std::locale::~locale(v105);
            std::ostream::put();
            std::ostream::flush();
            goto LABEL_150;
          }

LABEL_111:
          v48 = [v17 colorAttachments];
          v49 = [v48 objectAtIndexedSubscript:0];

          [v49 setPixelFormat:115];
          [v49 setWriteMask:0];

          v50 = [v17 colorAttachments];
          v51 = [v50 objectAtIndexedSubscript:1];

          [v51 setPixelFormat:115];
          [v51 setWriteMask:0];

          v52 = [v17 colorAttachments];
          v53 = [v52 objectAtIndexedSubscript:2];

          [v53 setPixelFormat:81];
          [v53 setBlendingEnabled:0];

          v54 = [v17 colorAttachments];
          v55 = [v54 objectAtIndexedSubscript:3];

          [v55 setPixelFormat:125];
          [v55 setBlendingEnabled:0];
LABEL_132:

          goto LABEL_150;
        }

        if (*a3 != 0x7261705374736F50 || *(a3 + 7) != 0x534649504D657372)
        {
          goto LABEL_137;
        }

        goto LABEL_165;
      }
    }

    v59 = *v27;
    v60 = *(v27 + 2);
    if (v59 == 0x6150726574736152 && v60 == 1397124974)
    {
      v62 = [v17 colorAttachments];
      v63 = [v62 objectAtIndexedSubscript:0];

      [v63 setPixelFormat:81];
      [v63 setBlendingEnabled:0];

      [v17 setDepthAttachmentPixelFormat:250];
      [v17 setInputPrimitiveTopology:3];
      goto LABEL_150;
    }

    goto LABEL_137;
  }

  v32 = v29;
  v33 = &v29[v31];
  v34 = v29;
  v35 = &v29[v31];
  while (2)
  {
    for (i = v34 + 2; ; ++i)
    {
      v34 = i - 1;
      if (*(i - 2) != 77)
      {
        if (v34 == v33)
        {
          goto LABEL_49;
        }

        continue;
      }

      if (v34 == v33)
      {
        goto LABEL_49;
      }

      if (*v34 == 80)
      {
        break;
      }
    }

    if (i != v33)
    {
      if (*i == 73)
      {
        v35 = i - 2;
      }

      continue;
    }

    break;
  }

LABEL_49:
  if (v35 == v33 || v35 != v29)
  {
    if (v30 >= 9)
    {
      v30 = 9;
    }

    v37 = &v29[v30];
    v38 = &v29[v30];
    while (1)
    {
      v39 = v32 + 8;
      while (1)
      {
        v32 = v39 - 7;
        if (*(v39 - 8) == 83)
        {
          break;
        }

        ++v39;
        if (v32 == v37)
        {
          goto LABEL_76;
        }
      }

      if (v32 == v37)
      {
        break;
      }

      if (*v32 == 112)
      {
        if (v39 - 6 == v37)
        {
          break;
        }

        if (*(v39 - 6) == 97)
        {
          if (v39 - 5 == v37)
          {
            break;
          }

          if (*(v39 - 5) == 114)
          {
            if (v39 - 4 == v37)
            {
              break;
            }

            if (*(v39 - 4) == 115)
            {
              if (v39 - 3 == v37)
              {
                break;
              }

              if (*(v39 - 3) == 101)
              {
                if (v39 - 2 == v37)
                {
                  break;
                }

                if (*(v39 - 2) == 77)
                {
                  if (v39 - 1 == v37)
                  {
                    break;
                  }

                  if (*(v39 - 1) == 80)
                  {
                    if (v39 == v37)
                    {
                      break;
                    }

                    if (*v39 == 73)
                    {
                      v38 = v39 - 8;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_76:
    if (v38 == v37 || v38 != v29)
    {
      goto LABEL_87;
    }
  }

  if ((v26 & 0x80) != 0)
  {
    if (v28 != 9)
    {
      if (v28 == 11)
      {
        v56 = *v27;
        v57 = *(v27 + 3);
        if (v56 == 0x6E6966655249504DLL && v57 == 0x5346656E69666552)
        {
          goto LABEL_150;
        }
      }

LABEL_131:
      [v17 setDepthAttachmentPixelFormat:0];
      [v17 setInputPrimitiveTopology:3];
      v67 = [v17 colorAttachments];
      v68 = [v67 objectAtIndexedSubscript:0];

      [v68 setPixelFormat:115];
      [v68 setBlendingEnabled:1];
      [v68 setRgbBlendOperation:0];
      [v68 setAlphaBlendOperation:0];
      [v68 setSourceRGBBlendFactor:1];
      [v68 setSourceAlphaBlendFactor:1];
      [v68 setDestinationRGBBlendFactor:5];
      [v68 setDestinationAlphaBlendFactor:5];

      v69 = [v17 colorAttachments];
      v55 = [v69 objectAtIndexedSubscript:1];

      [v55 setPixelFormat:81];
      [v55 setBlendingEnabled:0];
      [v55 setWriteMask:0];
      goto LABEL_132;
    }

LABEL_127:
    v64 = *v27;
    v65 = *(v27 + 8);
    if (v64 == 0x464442475249504DLL && v65 == 83)
    {
      [v17 setDepthAttachmentPixelFormat:0];
      [v17 setInputPrimitiveTopology:3];
      v89 = [v17 colorAttachments];
      v90 = [v89 objectAtIndexedSubscript:0];

      [v90 setPixelFormat:115];
      [v90 setBlendingEnabled:1];
      [v90 setRgbBlendOperation:0];
      [v90 setAlphaBlendOperation:0];
      [v90 setSourceRGBBlendFactor:1];
      [v90 setSourceAlphaBlendFactor:1];
      [v90 setDestinationRGBBlendFactor:5];
      [v90 setDestinationAlphaBlendFactor:5];

      v91 = [v17 colorAttachments];
      v92 = [v91 objectAtIndexedSubscript:1];

      [v92 setPixelFormat:115];
      [v92 setBlendingEnabled:1];
      [v92 setRgbBlendOperation:0];
      [v92 setAlphaBlendOperation:0];
      [v92 setSourceRGBBlendFactor:1];
      [v92 setSourceAlphaBlendFactor:1];
      [v92 setDestinationRGBBlendFactor:5];
      [v92 setDestinationAlphaBlendFactor:5];

      v93 = [v17 colorAttachments];
      v94 = [v93 objectAtIndexedSubscript:2];

      [v94 setPixelFormat:81];
      [v94 setBlendingEnabled:0];
      [v94 setWriteMask:0];

      v95 = [v17 colorAttachments];
      v55 = [v95 objectAtIndexedSubscript:3];

      [v55 setPixelFormat:125];
      [v55 setBlendingEnabled:0];
      [v55 setWriteMask:0];
      goto LABEL_132;
    }

    goto LABEL_131;
  }

  if (v26 == 9)
  {
    v27 = a3;
    goto LABEL_127;
  }

  if (v26 != 11)
  {
    goto LABEL_131;
  }

  if (*a3 != 0x6E6966655249504DLL || *(a3 + 3) != 0x5346656E69666552)
  {
    goto LABEL_131;
  }

LABEL_150:
  v82 = *a1;
  v102 = 0;
  v83 = [v82 newRenderPipelineStateWithDescriptor:v17 error:&v102];
  v84 = v102;
  if (v84)
  {
    v85 = _gs_log();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      *v105 = 138412290;
      *&v105[4] = v84;
      _os_log_impl(&dword_2473FC000, v85, OS_LOG_TYPE_ERROR, "[A3DGSR /metal_context.mm:293] Failed to create state: %@", v105, 0xCu);
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    *a4 = v83;
    a4[1] = 0;
    *v105 = __p;
    v86 = std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 72), __p);
    objc_storeStrong(v86 + 5, v83);
    v87 = v86[6];
    v86[6] = 0;
  }

LABEL_156:
  if (SHIBYTE(v104) < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v11);
  v88 = *MEMORY[0x277D85DE8];
}