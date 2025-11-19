void sub_218511AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios17::ios17Opset::Register(MIL::Opsets::Common::ios17::ios17Opset *this, MIL::MILContext *a2)
{
  v3 = 5;
  strcpy(__p, "ios17");
  operator new();
}

void sub_218511C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MIL::IROpset *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    MIL::Opsets::Common::ios15::ios15Opset::Register();
  }

  std::unique_ptr<MIL::Opsets::Common::ios15::ios15Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_218511D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  operator new();
}

void sub_218515F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v60 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a53);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a48);
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v58);
      _Unwind_Resume(a1);
    }
  }

  else if (!v60)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v59);
  goto LABEL_14;
}

void MIL::Opsets::Common::ios17::ios17Opset::GetOperatorNameToNameMap(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const(&)[10],char const(&)[4]>();
}

void sub_2185178F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v60 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a53);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a48);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v58);
      _Unwind_Resume(a1);
    }
  }

  else if (!v60)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v59);
  goto LABEL_14;
}

void MIL::Opsets::Common::ios17::ios17Opset::GetOps(MIL::Opsets::Common::ios17::ios17Opset *this, MIL::MILContext *a2)
{
  MEMORY[0x28223BE20](this);
  __p[285] = *MEMORY[0x277D85DE8];
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.abs");
  MIL::Operators::Common::ios17::Abs::Make();
}

void sub_21851B298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v51 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&STACK[0xA68]);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a44);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v49);
      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v50);
  goto LABEL_14;
}

void MIL::Opsets::Common::ios17::ios17Opset::~ios17Opset(MIL::Opsets::Common::ios17::ios17Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5758;
  a2[1] = v2;
  return result;
}

void sub_21851C83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F57D8;
  a2[1] = v2;
  return result;
}

void sub_21851C99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5858;
  a2[1] = v2;
  return result;
}

void sub_21851CAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F58D8;
  a2[1] = v2;
  return result;
}

void sub_21851CC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5958;
  a2[1] = v2;
  return result;
}

void sub_21851CDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F59D8;
  a2[1] = v2;
  return result;
}

void sub_21851CF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5A58;
  a2[1] = v2;
  return result;
}

void sub_21851D07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5AD8;
  a2[1] = v2;
  return result;
}

void sub_21851D1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5B58;
  a2[1] = v2;
  return result;
}

void sub_21851D33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5BD8;
  a2[1] = v2;
  return result;
}

void sub_21851D49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5C58;
  a2[1] = v2;
  return result;
}

void sub_21851D5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5CD8;
  a2[1] = v2;
  return result;
}

void sub_21851D75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5D58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.clamped_relu");
  MIL::Operators::Common::ios17::ClampedReLU::Make(v1, __p);
}

void sub_21851D8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5DD8;
  a2[1] = v2;
  return result;
}

void sub_21851DA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_14,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_14>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5E58;
  a2[1] = v2;
  return result;
}

void sub_21851DB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_14,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_14>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_15,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_15>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5ED8;
  a2[1] = v2;
  return result;
}

void sub_21851DCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_15,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_15>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_16,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_16>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5F58;
  a2[1] = v2;
  return result;
}

void sub_21851DE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_16,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_16>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_17,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_17>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F5FD8;
  a2[1] = v2;
  return result;
}

void sub_21851DF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_17,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_17>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_18,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_18>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6058;
  a2[1] = v2;
  return result;
}

void sub_21851E0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_18,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_18>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_19,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_19>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F60D8;
  a2[1] = v2;
  return result;
}

void sub_21851E25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_19,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_19>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_20,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_20>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6158;
  a2[1] = v2;
  return result;
}

void sub_21851E3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_20,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_20>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_21,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_21>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F61D8;
  a2[1] = v2;
  return result;
}

void sub_21851E51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_21,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_21>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_22,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_22>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6258;
  a2[1] = v2;
  return result;
}

void sub_21851E67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_22,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_22>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_23,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_23>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F62D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_23,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_23>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.elu");
  MIL::Operators::Common::ios17::ELU::Make(v1, __p);
}

void sub_21851E7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_23,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_23>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_24,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_24>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6358;
  a2[1] = v2;
  return result;
}

void sub_21851E93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_24,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_24>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_25,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_25>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F63D8;
  a2[1] = v2;
  return result;
}

void sub_21851EA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_25,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_25>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_26,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_26>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6458;
  a2[1] = v2;
  return result;
}

void sub_21851EBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_26,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_26>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_27,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_27>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F64D8;
  a2[1] = v2;
  return result;
}

void sub_21851ED5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_27,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_27>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_28,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_28>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6558;
  a2[1] = v2;
  return result;
}

void sub_21851EEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_28,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_28>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_29,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_29>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F65D8;
  a2[1] = v2;
  return result;
}

void sub_21851F01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_29,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_29>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_30,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_30>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6658;
  a2[1] = v2;
  return result;
}

void sub_21851F17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_30,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_30>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_31,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_31>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F66D8;
  a2[1] = v2;
  return result;
}

void sub_21851F2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_31,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_31>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_32,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_32>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6758;
  a2[1] = v2;
  return result;
}

void sub_21851F43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_32,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_32>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_33,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_33>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F67D8;
  a2[1] = v2;
  return result;
}

void sub_21851F59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_33,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_33>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_34,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_34>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6858;
  a2[1] = v2;
  return result;
}

void sub_21851F6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_34,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_34>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_35,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_35>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F68D8;
  a2[1] = v2;
  return result;
}

void sub_21851F85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_35,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_35>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_36,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_36>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6958;
  a2[1] = v2;
  return result;
}

void sub_21851F9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_36,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_36>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_37,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_37>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F69D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_37,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_37>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.inverse");
  MIL::Operators::Common::ios17::Inverse::Make(v1, __p);
}

void sub_21851FB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_37,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_37>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_38,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_38>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6A58;
  a2[1] = v2;
  return result;
}

void sub_21851FC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_38,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_38>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_39,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_39>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6AD8;
  a2[1] = v2;
  return result;
}

void sub_21851FDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_39,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_39>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_40,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_40>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6B58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_40,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_40>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.leaky_relu");
  MIL::Operators::Common::ios17::LeakyReLU::Make(v1, __p);
}

void sub_21851FF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_40,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_40>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_41,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_41>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6BD8;
  a2[1] = v2;
  return result;
}

void sub_21852009C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_41,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_41>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_42,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_42>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6C58;
  a2[1] = v2;
  return result;
}

void sub_2185201FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_42,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_42>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_43,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_43>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6CD8;
  a2[1] = v2;
  return result;
}

void sub_21852035C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_43,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_43>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_44,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_44>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6D58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_44,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_44>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.linear_activation");
  MIL::Operators::Common::ios17::LinearActivation::Make(v1, __p);
}

void sub_2185204BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_44,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_44>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_45,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_45>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6DD8;
  a2[1] = v2;
  return result;
}

void sub_21852061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_45,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_45>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_46,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_46>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6E58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_46,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_46>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.log");
  MIL::Operators::Common::ios17::Log::Make(v1, __p);
}

void sub_21852077C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_46,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_46>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_47,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_47>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6ED8;
  a2[1] = v2;
  return result;
}

void sub_2185208DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_47,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_47>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_48,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_48>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6F58;
  a2[1] = v2;
  return result;
}

void sub_218520A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_48,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_48>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_49,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_49>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F6FD8;
  a2[1] = v2;
  return result;
}

void sub_218520B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_49,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_49>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_50,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_50>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7058;
  a2[1] = v2;
  return result;
}

void sub_218520CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_50,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_50>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_51,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_51>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F70D8;
  a2[1] = v2;
  return result;
}

void sub_218520E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_51,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_51>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_52,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_52>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7158;
  a2[1] = v2;
  return result;
}

void sub_218520FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_52,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_52>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_53,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_53>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F71D8;
  a2[1] = v2;
  return result;
}

void sub_21852111C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_53,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_53>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_54,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_54>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7258;
  a2[1] = v2;
  return result;
}

void sub_21852127C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_54,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_54>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_55,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_55>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F72D8;
  a2[1] = v2;
  return result;
}

void sub_2185213DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_55,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_55>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_56,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_56>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7358;
  a2[1] = v2;
  return result;
}

void sub_21852153C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_56,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_56>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_57,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_57>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F73D8;
  a2[1] = v2;
  return result;
}

void sub_21852169C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_57,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_57>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_58,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_58>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7458;
  a2[1] = v2;
  return result;
}

void sub_2185217FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_58,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_58>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_59,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_59>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F74D8;
  a2[1] = v2;
  return result;
}

void sub_21852195C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_59,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_59>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_60,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_60>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7558;
  a2[1] = v2;
  return result;
}

void sub_218521ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_60,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_60>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_61,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_61>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F75D8;
  a2[1] = v2;
  return result;
}

void sub_218521C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_61,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_61>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_62,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_62>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7658;
  a2[1] = v2;
  return result;
}

void sub_218521D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_62,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_62>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_63,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_63>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F76D8;
  a2[1] = v2;
  return result;
}

void sub_218521EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_63,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_63>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_64,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_64>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7758;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_64,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_64>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.reduce_argmax");
  MIL::Operators::Common::ios17::ReduceArgmax::Make(v1, __p);
}

void sub_21852203C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_64,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_64>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_65,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_65>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F77D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_65,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_65>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.reduce_argmin");
  MIL::Operators::Common::ios17::ReduceArgmin::Make(v1, __p);
}

void sub_21852219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_65,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_65>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_66,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_66>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7858;
  a2[1] = v2;
  return result;
}

void sub_2185222FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_66,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_66>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_67,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_67>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F78D8;
  a2[1] = v2;
  return result;
}

void sub_21852245C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_67,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_67>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_68,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_68>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7958;
  a2[1] = v2;
  return result;
}

void sub_2185225BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_68,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_68>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_69,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_69>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F79D8;
  a2[1] = v2;
  return result;
}

void sub_21852271C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_69,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_69>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_70,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_70>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7A58;
  a2[1] = v2;
  return result;
}

void sub_21852287C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_70,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_70>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_71,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_71>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7AD8;
  a2[1] = v2;
  return result;
}

void sub_2185229DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_71,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_71>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_72,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_72>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7B58;
  a2[1] = v2;
  return result;
}

void sub_218522B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_72,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_72>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_73,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_73>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7BD8;
  a2[1] = v2;
  return result;
}

void sub_218522C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_73,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_73>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_74,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_74>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7C58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_74,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_74>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.rsqrt");
  MIL::Operators::Common::ios17::Rsqrt::Make(v1, __p);
}

void sub_218522DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_74,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_74>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_75,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_75>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7CD8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_75,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_75>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.scaled_tanh");
  MIL::Operators::Common::ios17::ScaledTanh::Make(v1, __p);
}

void sub_218522F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_75,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_75>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_76,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_76>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7D58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_76,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_76>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.scatter");
  MIL::Operators::Common::ios17::Scatter::Make(v1, __p);
}

void sub_2185230BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_76,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_76>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_77,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_77>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7DD8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_77,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_77>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.scatter_along_axis");
  MIL::Operators::Common::ios17::ScatterAlongAxis::Make(v1, __p);
}

void sub_21852321C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_77,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_77>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_78,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_78>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7E58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_78,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_78>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.scatter_nd");
  MIL::Operators::Common::ios17::ScatterNd::Make(v1, __p);
}

void sub_21852337C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_78,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_78>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_79,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_79>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7ED8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_79,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_79>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.sigmoid_hard");
  MIL::Operators::Common::ios17::SigmoidHard::Make(v1, __p);
}

void sub_2185234DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_79,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_79>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_80,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_80>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7F58;
  a2[1] = v2;
  return result;
}

void sub_21852363C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_80,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_80>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_81,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_81>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F7FD8;
  a2[1] = v2;
  return result;
}

void sub_21852379C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_81,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_81>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_82,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_82>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8058;
  a2[1] = v2;
  return result;
}

void sub_2185238FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_82,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_82>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_83,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_83>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F80D8;
  a2[1] = v2;
  return result;
}

void sub_218523A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_83,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_83>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_84,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_84>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8158;
  a2[1] = v2;
  return result;
}

void sub_218523BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_84,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_84>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_85,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_85>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F81D8;
  a2[1] = v2;
  return result;
}

void sub_218523D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_85,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_85>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_86,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_86>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8258;
  a2[1] = v2;
  return result;
}

void sub_218523E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_86,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_86>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_87,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_87>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F82D8;
  a2[1] = v2;
  return result;
}

void sub_218523FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_87,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_87>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_88,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_88>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8358;
  a2[1] = v2;
  return result;
}

void sub_21852413C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_88,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_88>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_89,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_89>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F83D8;
  a2[1] = v2;
  return result;
}

void sub_21852429C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_89,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_89>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_90,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_90>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8458;
  a2[1] = v2;
  return result;
}

void sub_2185243FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_90,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_90>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_91,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_91>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F84D8;
  a2[1] = v2;
  return result;
}

void sub_21852455C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_91,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_91>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_92,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_92>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8558;
  a2[1] = v2;
  return result;
}

void sub_2185246BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_92,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_92>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_93,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_93>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F85D8;
  a2[1] = v2;
  return result;
}

void sub_21852481C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_93,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_93>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_94,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_94>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8658;
  a2[1] = v2;
  return result;
}

void sub_21852497C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_94,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_94>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_95,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_95>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F86D8;
  a2[1] = v2;
  return result;
}

void sub_218524ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_95,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_95>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_96,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_96>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8758;
  a2[1] = v2;
  return result;
}

void sub_218524C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_96,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_96>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_97,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_97>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F87D8;
  a2[1] = v2;
  return result;
}

void sub_218524D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_97,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_97>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_98,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_98>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8858;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_98,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_98>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios17.thresholded_relu");
  MIL::Operators::Common::ios17::ThresholdedReLU::Make(v1, __p);
}

void sub_218524EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_98,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_98>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_99,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_99>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F88D8;
  a2[1] = v2;
  return result;
}

void sub_21852505C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_99,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_99>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_100,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_100>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8958;
  a2[1] = v2;
  return result;
}

void sub_2185251BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_100,std::allocator<MIL::Opsets::Common::ios17::ios17Opset::GetOperatorConstructors(MIL::MILContext &)::$_100>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Opsets::Common::ios18::ios18Opset::Register(MIL::Opsets::Common::ios18::ios18Opset *this, MIL::MILContext *a2)
{
  v3 = 5;
  strcpy(__p, "ios18");
  operator new();
}

void sub_21852530C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MIL::IROpset *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    MIL::Opsets::Common::ios15::ios15Opset::Register();
  }

  std::unique_ptr<MIL::Opsets::Common::ios15::ios15Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2185253F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  operator new();
}

void sub_21852A5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v61 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a54);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a44);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v59);
      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v60);
  goto LABEL_14;
}

void MIL::Opsets::Common::ios18::ios18Opset::GetOperatorNameToNameMap(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const(&)[10],char const(&)[4]>();
}

void sub_21852C5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v61 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a54);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a44);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v59);
      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v60);
  goto LABEL_14;
}

void MIL::Opsets::Common::ios18::ios18Opset::GetOps(MIL::Opsets::Common::ios18::ios18Opset *this, MIL::MILContext *a2)
{
  MEMORY[0x28223BE20](this);
  __p[372] = *MEMORY[0x277D85DE8];
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.abs");
  MIL::Operators::Common::ios18::Abs::Make();
}

void sub_218530D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v51 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&STACK[0xCC0]);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a44);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v49);
      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v50);
  goto LABEL_14;
}

void MIL::Opsets::Common::ios18::ios18Opset::~ios18Opset(MIL::Opsets::Common::ios18::ios18Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8A18;
  a2[1] = v2;
  return result;
}

void sub_2185327A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8A98;
  a2[1] = v2;
  return result;
}

void sub_218532904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8B18;
  a2[1] = v2;
  return result;
}

void sub_218532A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8B98;
  a2[1] = v2;
  return result;
}

void sub_218532BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8C18;
  a2[1] = v2;
  return result;
}

void sub_218532D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8C98;
  a2[1] = v2;
  return result;
}

void sub_218532E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8D18;
  a2[1] = v2;
  return result;
}

void sub_218532FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8D98;
  a2[1] = v2;
  return result;
}

void sub_218533144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8E18;
  a2[1] = v2;
  return result;
}

void sub_2185332A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8E98;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.avg_pool");
  MIL::Operators::Common::ios18::AvgPool::Make(v1, __p);
}

void sub_218533404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8F18;
  a2[1] = v2;
  return result;
}

void sub_218533564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F8F98;
  a2[1] = v2;
  return result;
}

void sub_2185336C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9018;
  a2[1] = v2;
  return result;
}

void sub_218533824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9098;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.clamped_relu");
  MIL::Operators::Common::ios18::ClampedReLU::Make(v1, __p);
}

void sub_218533984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_14,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_14>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9118;
  a2[1] = v2;
  return result;
}

void sub_218533AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_14,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_14>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_15,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_15>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9198;
  a2[1] = v2;
  return result;
}

void sub_218533C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_15,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_15>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_16,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_16>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9218;
  a2[1] = v2;
  return result;
}

void sub_218533DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_16,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_16>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_17,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_17>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9298;
  a2[1] = v2;
  return result;
}

void sub_218533F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_17,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_17>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_18,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_18>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9318;
  a2[1] = v2;
  return result;
}

void sub_218534064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_18,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_18>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_19,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_19>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9398;
  a2[1] = v2;
  return result;
}

void sub_2185341C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_19,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_19>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_20,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_20>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9418;
  a2[1] = v2;
  return result;
}

void sub_218534324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_20,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_20>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_21,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_21>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9498;
  a2[1] = v2;
  return result;
}

void sub_218534484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_21,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_21>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_22,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_22>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9518;
  a2[1] = v2;
  return result;
}

void sub_2185345E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_22,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_22>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_23,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_23>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9598;
  a2[1] = v2;
  return result;
}

void sub_218534744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_23,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_23>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_24,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_24>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9618;
  a2[1] = v2;
  return result;
}

void sub_2185348A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_24,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_24>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_25,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_25>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9698;
  a2[1] = v2;
  return result;
}

void sub_218534A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_25,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_25>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_26,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_26>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9718;
  a2[1] = v2;
  return result;
}

void sub_218534B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_26,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_26>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_27,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_27>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9798;
  a2[1] = v2;
  return result;
}

void sub_218534CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_27,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_27>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_28,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_28>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9818;
  a2[1] = v2;
  return result;
}

void sub_218534E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_28,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_28>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_29,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_29>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9898;
  a2[1] = v2;
  return result;
}

void sub_218534F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_29,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_29>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_30,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_30>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9918;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_30,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_30>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.elu");
  MIL::Operators::Common::ios18::ELU::Make(v1, __p);
}

void sub_2185350E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_30,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_30>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_31,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_31>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9998;
  a2[1] = v2;
  return result;
}

void sub_218535244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_31,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_31>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_32,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_32>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9A18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_32,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_32>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.erf");
  MIL::Operators::Common::ios18::ERF::Make(v1, __p);
}

void sub_2185353A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_32,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_32>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_33,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_33>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9A98;
  a2[1] = v2;
  return result;
}

void sub_218535504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_33,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_33>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_34,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_34>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9B18;
  a2[1] = v2;
  return result;
}

void sub_218535664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_34,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_34>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_35,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_35>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9B98;
  a2[1] = v2;
  return result;
}

void sub_2185357C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_35,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_35>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_36,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_36>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9C18;
  a2[1] = v2;
  return result;
}

void sub_218535924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_36,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_36>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_37,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_37>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9C98;
  a2[1] = v2;
  return result;
}

void sub_218535A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_37,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_37>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_38,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_38>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9D18;
  a2[1] = v2;
  return result;
}

void sub_218535BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_38,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_38>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_39,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_39>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9D98;
  a2[1] = v2;
  return result;
}

void sub_218535D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_39,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_39>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_40,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_40>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9E18;
  a2[1] = v2;
  return result;
}

void sub_218535EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_40,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_40>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_41,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_41>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9E98;
  a2[1] = v2;
  return result;
}

void sub_218536004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_41,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_41>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_42,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_42>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9F18;
  a2[1] = v2;
  return result;
}

void sub_218536164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_42,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_42>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_43,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_43>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829F9F98;
  a2[1] = v2;
  return result;
}

void sub_2185362C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_43,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_43>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_44,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_44>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA018;
  a2[1] = v2;
  return result;
}

void sub_218536424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_44,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_44>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_45,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_45>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA098;
  a2[1] = v2;
  return result;
}

void sub_218536584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_45,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_45>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_46,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_46>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA118;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_46,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_46>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.inverse");
  MIL::Operators::Common::ios18::Inverse::Make(v1, __p);
}

void sub_2185366E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_46,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_46>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_47,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_47>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA198;
  a2[1] = v2;
  return result;
}

void sub_218536844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_47,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_47>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_48,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_48>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA218;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_48,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_48>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.l2_pool");
  MIL::Operators::Common::ios18::L2Pool::Make(v1, __p);
}

void sub_2185369A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_48,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_48>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_49,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_49>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA298;
  a2[1] = v2;
  return result;
}

void sub_218536B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_49,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_49>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_50,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_50>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA318;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_50,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_50>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.leaky_relu");
  MIL::Operators::Common::ios18::LeakyReLU::Make(v1, __p);
}

void sub_218536C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_50,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_50>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_51,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_51>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA398;
  a2[1] = v2;
  return result;
}

void sub_218536DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_51,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_51>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_52,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_52>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA418;
  a2[1] = v2;
  return result;
}

void sub_218536F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_52,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_52>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_53,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_53>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA498;
  a2[1] = v2;
  return result;
}

void sub_218537084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_53,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_53>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_54,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_54>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA518;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_54,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_54>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.linear_activation");
  MIL::Operators::Common::ios18::LinearActivation::Make(v1, __p);
}

void sub_2185371E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_54,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_54>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_55,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_55>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA598;
  a2[1] = v2;
  return result;
}

void sub_218537344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_55,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_55>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_56,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_56>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA618;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_56,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_56>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.log");
  MIL::Operators::Common::ios18::Log::Make(v1, __p);
}

void sub_2185374A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_56,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_56>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_57,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_57>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA698;
  a2[1] = v2;
  return result;
}

void sub_218537604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_57,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_57>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_58,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_58>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA718;
  a2[1] = v2;
  return result;
}

void sub_218537764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_58,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_58>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_59,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_59>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA798;
  a2[1] = v2;
  return result;
}

void sub_2185378C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_59,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_59>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_60,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_60>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA818;
  a2[1] = v2;
  return result;
}

void sub_218537A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_60,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_60>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_61,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_61>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA898;
  a2[1] = v2;
  return result;
}

void sub_218537B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_61,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_61>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_62,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_62>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA918;
  a2[1] = v2;
  return result;
}

void sub_218537CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_62,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_62>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_63,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_63>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FA998;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_63,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_63>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.max_pool");
  MIL::Operators::Common::ios18::MaxPool::Make(v1, __p);
}

void sub_218537E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_63,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_63>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_64,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_64>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAA18;
  a2[1] = v2;
  return result;
}

void sub_218537FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_64,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_64>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_65,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_65>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAA98;
  a2[1] = v2;
  return result;
}

void sub_218538104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_65,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_65>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_66,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_66>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAB18;
  a2[1] = v2;
  return result;
}

void sub_218538264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_66,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_66>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_67,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_67>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAB98;
  a2[1] = v2;
  return result;
}

void sub_2185383C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_67,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_67>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_68,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_68>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAC18;
  a2[1] = v2;
  return result;
}

void sub_218538524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_68,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_68>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_69,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_69>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAC98;
  a2[1] = v2;
  return result;
}

void sub_218538684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_69,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_69>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_70,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_70>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAD18;
  a2[1] = v2;
  return result;
}

void sub_2185387E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_70,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_70>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_71,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_71>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAD98;
  a2[1] = v2;
  return result;
}

void sub_218538944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_71,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_71>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_72,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_72>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAE18;
  a2[1] = v2;
  return result;
}

void sub_218538AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_72,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_72>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_73,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_73>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAE98;
  a2[1] = v2;
  return result;
}

void sub_218538C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_73,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_73>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_74,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_74>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAF18;
  a2[1] = v2;
  return result;
}

void sub_218538D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_74,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_74>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_75,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_75>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FAF98;
  a2[1] = v2;
  return result;
}

void sub_218538EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_75,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_75>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_76,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_76>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB018;
  a2[1] = v2;
  return result;
}

void sub_218539024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_76,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_76>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_77,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_77>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB098;
  a2[1] = v2;
  return result;
}

void sub_218539184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_77,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_77>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_78,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_78>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB118;
  a2[1] = v2;
  return result;
}

void sub_2185392E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_78,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_78>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_79,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_79>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB198;
  a2[1] = v2;
  return result;
}

void sub_218539444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_79,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_79>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_80,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_80>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB218;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_80,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_80>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.reduce_argmax");
  MIL::Operators::Common::ios18::ReduceArgmax::Make(v1, __p);
}

void sub_2185395A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_80,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_80>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_81,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_81>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB298;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_81,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_81>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.reduce_argmin");
  MIL::Operators::Common::ios18::ReduceArgmin::Make(v1, __p);
}

void sub_218539704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_81,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_81>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_82,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_82>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB318;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_82,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_82>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.relu");
  MIL::Operators::Common::ios18::ReLU::Make(v1, __p);
}

void sub_218539864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_82,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_82>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_83,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_83>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB398;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_83,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_83>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.relu6");
  MIL::Operators::Common::ios18::ReLU6::Make(v1, __p);
}

void sub_2185399C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_83,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_83>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_84,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_84>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB418;
  a2[1] = v2;
  return result;
}

void sub_218539B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_84,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_84>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_85,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_85>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB498;
  a2[1] = v2;
  return result;
}

void sub_218539C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_85,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_85>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_86,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_86>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB518;
  a2[1] = v2;
  return result;
}

void sub_218539DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_86,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_86>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_87,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_87>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB598;
  a2[1] = v2;
  return result;
}

void sub_218539F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_87,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_87>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_88,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_88>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB618;
  a2[1] = v2;
  return result;
}

void sub_21853A0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_88,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_88>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_89,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_89>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB698;
  a2[1] = v2;
  return result;
}

void sub_21853A204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_89,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_89>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_90,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_90>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB718;
  a2[1] = v2;
  return result;
}

void sub_21853A364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_90,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_90>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_91,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_91>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB798;
  a2[1] = v2;
  return result;
}

void sub_21853A4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_91,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_91>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_92,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_92>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB818;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_92,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_92>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.rsqrt");
  MIL::Operators::Common::ios18::Rsqrt::Make(v1, __p);
}

void sub_21853A624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_92,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_92>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_93,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_93>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB898;
  a2[1] = v2;
  return result;
}

void sub_21853A784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_93,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_93>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_94,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_94>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB918;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_94,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_94>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.scaled_tanh");
  MIL::Operators::Common::ios18::ScaledTanh::Make(v1, __p);
}

void sub_21853A8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_94,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_94>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_95,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_95>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FB998;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_95,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_95>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.scatter");
  MIL::Operators::Common::ios18::Scatter::Make(v1, __p);
}

void sub_21853AA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_95,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_95>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_96,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_96>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBA18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_96,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_96>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.scatter_along_axis");
  MIL::Operators::Common::ios18::ScatterAlongAxis::Make(v1, __p);
}

void sub_21853ABA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_96,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_96>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_97,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_97>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBA98;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_97,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_97>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.scatter_nd");
  MIL::Operators::Common::ios18::ScatterNd::Make(v1, __p);
}

void sub_21853AD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_97,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_97>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_98,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_98>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBB18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_98,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_98>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.sigmoid");
  MIL::Operators::Common::ios18::Sigmoid::Make(v1, __p);
}

void sub_21853AE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_98,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_98>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_99,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_99>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBB98;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_99,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_99>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.sigmoid_hard");
  MIL::Operators::Common::ios18::SigmoidHard::Make(v1, __p);
}

void sub_21853AFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_99,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_99>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_100,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_100>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBC18;
  a2[1] = v2;
  return result;
}

void sub_21853B124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_100,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_100>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_101,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_101>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBC98;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_101,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_101>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.silu");
  MIL::Operators::Common::ios18::SiLU::Make(v1, __p);
}

void sub_21853B284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_101,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_101>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_102,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_102>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBD18;
  a2[1] = v2;
  return result;
}

void sub_21853B3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_102,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_102>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_103,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_103>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBD98;
  a2[1] = v2;
  return result;
}

void sub_21853B544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_103,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_103>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_104,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_104>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBE18;
  a2[1] = v2;
  return result;
}

void sub_21853B6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_104,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_104>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_105,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_105>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBE98;
  a2[1] = v2;
  return result;
}

void sub_21853B804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_105,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_105>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_106,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_106>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBF18;
  a2[1] = v2;
  return result;
}

void sub_21853B964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_106,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_106>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_107,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_107>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FBF98;
  a2[1] = v2;
  return result;
}

void sub_21853BAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_107,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_107>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_108,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_108>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC018;
  a2[1] = v2;
  return result;
}

void sub_21853BC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_108,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_108>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_109,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_109>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC098;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_109,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_109>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.softplus");
  MIL::Operators::Common::ios18::Softplus::Make(v1, __p);
}

void sub_21853BD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_109,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_109>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_110,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_110>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC118;
  a2[1] = v2;
  return result;
}

void sub_21853BEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_110,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_110>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_111,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_111>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC198;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_111,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_111>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.softsign");
  MIL::Operators::Common::ios18::Softsign::Make(v1, __p);
}

void sub_21853C044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_111,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_111>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_112,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_112>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC218;
  a2[1] = v2;
  return result;
}

void sub_21853C1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_112,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_112>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_113,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_113>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC298;
  a2[1] = v2;
  return result;
}

void sub_21853C304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_113,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_113>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_114,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_114>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC318;
  a2[1] = v2;
  return result;
}

void sub_21853C464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_114,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_114>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_115,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_115>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC398;
  a2[1] = v2;
  return result;
}

void sub_21853C5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_115,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_115>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_116,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_116>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC418;
  a2[1] = v2;
  return result;
}

void sub_21853C724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_116,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_116>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_117,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_117>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC498;
  a2[1] = v2;
  return result;
}

void sub_21853C884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_117,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_117>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_118,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_118>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC518;
  a2[1] = v2;
  return result;
}

void sub_21853C9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_118,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_118>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_119,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_119>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC598;
  a2[1] = v2;
  return result;
}

void sub_21853CB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_119,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_119>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_120,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_120>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC618;
  a2[1] = v2;
  return result;
}

void sub_21853CCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_120,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_120>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_121,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_121>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC698;
  a2[1] = v2;
  return result;
}

void sub_21853CE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_121,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_121>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_122,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_122>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC718;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_122,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_122>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ios18.thresholded_relu");
  MIL::Operators::Common::ios18::ThresholdedReLU::Make(v1, __p);
}

void sub_21853CF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_122,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_122>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_123,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_123>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC798;
  a2[1] = v2;
  return result;
}

void sub_21853D0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_123,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_123>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_124,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_124>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC818;
  a2[1] = v2;
  return result;
}

void sub_21853D224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_124,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_124>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_125,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_125>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC898;
  a2[1] = v2;
  return result;
}

void sub_21853D384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_125,std::allocator<MIL::Opsets::Common::ios18::ios18Opset::GetOperatorConstructors(MIL::MILContext &)::$_125>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_21853D448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[38],char const(&)[32],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_21853D530(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21853D5A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[45],char const(&)[39],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_21853D690(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21853D708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[35],char const(&)[29],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_21853D7F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21853D868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[32],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_21853D950(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21853D9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[39],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_21853DAB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21853DB28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[29],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_21853DC10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Opsets::Common::ios19::ios19Opset::Register(MIL::Opsets::Common::ios19::ios19Opset *this, MIL::MILContext *a2)
{
  v3 = 5;
  strcpy(__p, "ios19");
  operator new();
}

void sub_21853DD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MIL::IROpset *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    MIL::Opsets::Common::ios15::ios15Opset::Register();
  }

  std::unique_ptr<MIL::Opsets::Common::ios15::ios15Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_21853DE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  operator new();
}

void sub_21853FA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v60 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a53);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a48);
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v58);
      _Unwind_Resume(a1);
    }
  }

  else if (!v60)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v59);
  goto LABEL_14;
}

void MIL::Opsets::Common::ios19::ios19Opset::GetOperatorNameToNameMap(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const(&)[10],char const(&)[4]>();
}

void sub_218540770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v62 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a55);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a45);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a50);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v60);
      _Unwind_Resume(a1);
    }
  }

  else if (!v62)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v61);
  goto LABEL_14;
}

void MIL::Opsets::Common::ios19::ios19Opset::GetOps(uint64_t a1@<X8>)
{
  __p[129] = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(__p, "ios19.add");
  MIL::Operators::Common::ios19::Add::Make();
}

void sub_218542154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v51 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&STACK[0x4C8]);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a44);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v49);
      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v50);
  goto LABEL_14;
}

void MIL::Opsets::Common::ios19::ios19Opset::~ios19Opset(MIL::Opsets::Common::ios19::ios19Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC958;
  a2[1] = v2;
  return result;
}

void sub_218542BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FC9D8;
  a2[1] = v2;
  return result;
}

void sub_218542D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCA58;
  a2[1] = v2;
  return result;
}

void sub_218542E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCAD8;
  a2[1] = v2;
  return result;
}

void sub_218542FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCB58;
  a2[1] = v2;
  return result;
}

void sub_218543138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCBD8;
  a2[1] = v2;
  return result;
}

void sub_218543298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCC58;
  a2[1] = v2;
  return result;
}

void sub_2185433F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCCD8;
  a2[1] = v2;
  return result;
}

void sub_218543558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCD58;
  a2[1] = v2;
  return result;
}

void sub_2185436B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCDD8;
  a2[1] = v2;
  return result;
}

void sub_218543818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCE58;
  a2[1] = v2;
  return result;
}

void sub_218543978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCED8;
  a2[1] = v2;
  return result;
}

void sub_218543AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCF58;
  a2[1] = v2;
  return result;
}

void sub_218543C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FCFD8;
  a2[1] = v2;
  return result;
}

void sub_218543D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_14,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_14>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD058;
  a2[1] = v2;
  return result;
}

void sub_218543EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_14,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_14>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_15,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_15>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD0D8;
  a2[1] = v2;
  return result;
}

void sub_218544058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_15,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_15>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_16,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_16>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD158;
  a2[1] = v2;
  return result;
}

void sub_2185441B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_16,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_16>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_17,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_17>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD1D8;
  a2[1] = v2;
  return result;
}

void sub_218544318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_17,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_17>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_18,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_18>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD258;
  a2[1] = v2;
  return result;
}

void sub_218544478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_18,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_18>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_19,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_19>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD2D8;
  a2[1] = v2;
  return result;
}

void sub_2185445D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_19,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_19>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_20,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_20>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD358;
  a2[1] = v2;
  return result;
}

void sub_218544738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_20,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_20>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_21,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_21>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD3D8;
  a2[1] = v2;
  return result;
}

void sub_218544898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_21,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_21>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_22,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_22>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD458;
  a2[1] = v2;
  return result;
}

void sub_2185449F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_22,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_22>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_23,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_23>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD4D8;
  a2[1] = v2;
  return result;
}

void sub_218544B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_23,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_23>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_24,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_24>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD558;
  a2[1] = v2;
  return result;
}

void sub_218544CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_24,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_24>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_25,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_25>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD5D8;
  a2[1] = v2;
  return result;
}

void sub_218544E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_25,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_25>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_26,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_26>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD658;
  a2[1] = v2;
  return result;
}

void sub_218544F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_26,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_26>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_27,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_27>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD6D8;
  a2[1] = v2;
  return result;
}

void sub_2185450D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_27,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_27>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_28,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_28>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD758;
  a2[1] = v2;
  return result;
}

void sub_218545238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_28,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_28>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_29,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_29>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD7D8;
  a2[1] = v2;
  return result;
}

void sub_218545398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_29,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_29>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_30,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_30>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD858;
  a2[1] = v2;
  return result;
}

void sub_2185454F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_30,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_30>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_31,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_31>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD8D8;
  a2[1] = v2;
  return result;
}

void sub_218545658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_31,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_31>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_32,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_32>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD958;
  a2[1] = v2;
  return result;
}

void sub_2185457B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_32,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_32>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_33,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_33>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FD9D8;
  a2[1] = v2;
  return result;
}

void sub_218545918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_33,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_33>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_34,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_34>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDA58;
  a2[1] = v2;
  return result;
}

void sub_218545A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_34,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_34>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_35,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_35>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDAD8;
  a2[1] = v2;
  return result;
}

void sub_218545BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_35,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_35>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_36,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_36>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDB58;
  a2[1] = v2;
  return result;
}

void sub_218545D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_36,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_36>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_37,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_37>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDBD8;
  a2[1] = v2;
  return result;
}

void sub_218545E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_37,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_37>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_38,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_38>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDC58;
  a2[1] = v2;
  return result;
}

void sub_218545FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_38,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_38>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_39,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_39>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDCD8;
  a2[1] = v2;
  return result;
}

void sub_218546158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_39,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_39>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_40,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_40>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDD58;
  a2[1] = v2;
  return result;
}

void sub_2185462B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_40,std::allocator<MIL::Opsets::Common::ios19::ios19Opset::GetOperatorConstructors(MIL::MILContext &)::$_40>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Opsets::Prototype::prototype::prototypeOpset::Register(MIL::Opsets::Prototype::prototype::prototypeOpset *this, MIL::MILContext *a2)
{
  v3 = 9;
  strcpy(__p, "prototype");
  operator new();
}

void sub_21854640C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MIL::IROpset *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    MIL::Opsets::Common::ios15::ios15Opset::Register();
  }

  std::unique_ptr<MIL::Opsets::Common::ios15::ios15Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2185464F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  operator new();
}

void sub_2185475D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v60 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(&a53);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a48);
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v58);
      _Unwind_Resume(a1);
    }
  }

  else if (!v60)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v59);
  goto LABEL_14;
}

void MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorNameToNameMap(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const(&)[17],char const(&)[7]>();
}

void sub_218547EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v60 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a53);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a48);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v58);
      _Unwind_Resume(a1);
    }
  }

  else if (!v60)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v59);
  goto LABEL_14;
}

void MIL::Opsets::Prototype::prototype::prototypeOpset::GetOps(uint64_t a1@<X8>)
{
  __p[69] = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(__p, "prototype.concat");
  MIL::Operators::Prototype::prototype::Concat::Make();
}

void sub_218548E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v51 & 1) == 0)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&STACK[0x318]);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a44);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v49);
      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v50);
  goto LABEL_14;
}

void MIL::Opsets::Prototype::prototype::prototypeOpset::~prototypeOpset(MIL::Opsets::Prototype::prototype::prototypeOpset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDE18;
  a2[1] = v2;
  return result;
}

void sub_2185495A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDE98;
  a2[1] = v2;
  return result;
}

void sub_218549700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDF18;
  a2[1] = v2;
  return result;
}

void sub_218549860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FDF98;
  a2[1] = v2;
  return result;
}

void sub_2185499C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE018;
  a2[1] = v2;
  return result;
}

void sub_218549B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE098;
  a2[1] = v2;
  return result;
}

void sub_218549C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE118;
  a2[1] = v2;
  return result;
}

void sub_218549DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE198;
  a2[1] = v2;
  return result;
}

void sub_218549F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_7,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_7>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE218;
  a2[1] = v2;
  return result;
}

void sub_21854A0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_8,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_8>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE298;
  a2[1] = v2;
  return result;
}

void sub_21854A200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_9,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_9>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE318;
  a2[1] = v2;
  return result;
}

void sub_21854A360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_10,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_10>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE398;
  a2[1] = v2;
  return result;
}

void sub_21854A4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_11,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_11>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE418;
  a2[1] = v2;
  return result;
}

void sub_21854A620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_12,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_12>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE498;
  a2[1] = v2;
  return result;
}

void sub_21854A780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_13,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_13>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_14,std::allocator<MIL::Opsets::Prototype::prototype::prototypeOpset::GetOperatorConstructors(MIL::MILContext &)::$_14>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829FE518;
  a2[1] = v2;
  return result;
}