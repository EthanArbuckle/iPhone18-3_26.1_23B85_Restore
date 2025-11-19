@interface SNNMILContext
+ (id)valueForIRTensorValue:(const IRTensorValue *)a3;
+ (id)valueForIRTensorValueType:(const IRTensorValueType *)a3 name:()basic_string<char;
+ (id)valueForIRValue:(const IRValue *)a3;
+ (id)valueForIRValueType:(const IRValueType *)a3 name:()basic_string<char;
- (SNNMILContext)init;
- (SNNMILContext)initWithOpsetName:(id)a3;
- (basic_string<char,)opsetName;
- (id).cxx_construct;
- (shared_ptr<MIL::MILContext>)context;
- (unique_ptr<const)milValueForString:(id)a3;
- (unique_ptr<const)milValueForTensorBlobWithFilename:(id)a3 shape:(id)a4 dataType:(unint64_t)a5 offset:(id)a6;
- (unique_ptr<const)milValueForTensorWithBytes:(void *)a3 shape:(id)a4 dataType:(unint64_t)a5;
- (void)dealloc;
@end

@implementation SNNMILContext

- (SNNMILContext)init
{
  v6.receiver = self;
  v6.super_class = SNNMILContext;
  v2 = [(SNNMILContext *)&v6 init];
  MIL::Opsets::Common::CreateMILContext(&v5, v2);
  std::shared_ptr<MIL::MILContext>::operator=[abi:ne200100]<MIL::MILContext,std::default_delete<MIL::MILContext>,0>(&v2->_context.__ptr_, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  MEMORY[0x25F878B50](&v2->_opsetName, "ios15");
  return v2;
}

- (SNNMILContext)initWithOpsetName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SNNMILContext;
  v5 = [(SNNMILContext *)&v10 init];
  MIL::Opsets::Common::CreateMILContext(&v8, v5);
  std::shared_ptr<MIL::MILContext>::operator=[abi:ne200100]<MIL::MILContext,std::default_delete<MIL::MILContext>,0>(&v5->_context.__ptr_, &v8);
  v6 = v8;
  *&v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v4)
  {
    [v4 cxxString];
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  if (*(&v5->_opsetName.__rep_.__l + 23) < 0)
  {
    operator delete(v5->_opsetName.__rep_.__l.__data_);
  }

  *v5->_opsetName.__rep_.__s.__data_ = v8;
  *(&v5->_opsetName.__rep_.__l + 2) = v9;

  return v5;
}

- (void)dealloc
{
  cntrl = self->_context.__cntrl_;
  self->_context.__ptr_ = 0;
  self->_context.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v4.receiver = self;
  v4.super_class = SNNMILContext;
  [(SNNMILContext *)&v4 dealloc];
}

- (shared_ptr<MIL::MILContext>)context
{
  cntrl = self->_context.__cntrl_;
  *v2 = self->_context.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (unique_ptr<const)milValueForString:(id)a3
{
  v5 = v3;
  v6 = a3;
  ptr = self->_context.__ptr_;
  MIL::IRTensorValueType::MakeScalar();
  if (v6)
  {
    [v6 cxxString];
  }

  else
  {
    __p = 0;
    v10 = 0;
  }

  MIL::IRTensorValueType::MakeStringValue();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  *v5 = v11;

  return v8;
}

- (unique_ptr<const)milValueForTensorWithBytes:(void *)a3 shape:(id)a4 dataType:(unint64_t)a5
{
  v9 = v5;
  v43 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = v10;
  __p = 0;
  v40 = 0;
  v41 = 0;
  v12 = v10;
  if (v10)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v14)
    {
      v28 = a5;
      v29 = a3;
      v30 = v9;
      v15 = *v36;
      v16 = 1;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = [v18 unsignedIntegerValue];
          v32 = MIL::IRConstantDimension::Make(self->_context.__ptr_, [v18 unsignedIntegerValue]);
          v11 = v12;
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, &v32);
          v16 *= v19;
        }

        v14 = [v13 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v14);
      v20 = v16;
      a3 = v29;
      v9 = v30;
      a5 = v28;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  if (a5 - 1 <= 0xB)
  {
    v21 = dword_25BCBA98C[a5 - 1];
  }

  ptr = self->_context.__ptr_;
  if (v11)
  {
    Scalar = MIL::IRTensorValueType::MakeWithShape();
  }

  else
  {
    Scalar = MIL::IRTensorValueType::MakeScalar();
  }

  v24 = (*(*Scalar + 88))(Scalar);
  if (v24 > 10)
  {
    if (v24 > 14)
    {
      switch(v24)
      {
        case 15:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v32, a3, a3 + 2 * v20, v20);
          MIL::IRTensorValueType::MakeUInt16Value();
          goto LABEL_46;
        case 16:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v32, a3, a3 + 4 * v20, v20);
          MIL::IRTensorValueType::MakeUInt32Value();
          goto LABEL_46;
        case 17:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v32, a3, a3 + 8 * v20, v20);
          MIL::IRTensorValueType::MakeUInt64Value();
          goto LABEL_46;
      }
    }

    else
    {
      switch(v24)
      {
        case 11:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v32, a3, a3 + 4 * v20, v20);
          MIL::IRTensorValueType::MakeInt32Value();
          goto LABEL_46;
        case 12:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v32, a3, a3 + 8 * v20, v20);
          MIL::IRTensorValueType::MakeInt64Value();
          goto LABEL_46;
        case 14:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v32, a3, a3 + v20, v20);
          MIL::IRTensorValueType::MakeUInt8Value();
          goto LABEL_46;
      }
    }

    goto LABEL_52;
  }

  if (v24 > 5)
  {
    switch(v24)
    {
      case 6:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v32, a3, a3 + 8 * v20, v20);
        MIL::IRTensorValueType::MakeFloat64Value();
        goto LABEL_46;
      case 9:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v32, a3, a3 + v20, v20);
        MIL::IRTensorValueType::MakeInt8Value();
        goto LABEL_46;
      case 10:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v32, a3, a3 + 2 * v20, v20);
        MIL::IRTensorValueType::MakeInt16Value();
        goto LABEL_46;
    }

LABEL_52:
    *v9 = 0;
    goto LABEL_49;
  }

  if (v24 != 2)
  {
    if (v24 == 4)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(&v32, a3, a3 + 2 * v20, v20);
      MIL::IRTensorValueType::MakeFloat16Value();
      goto LABEL_46;
    }

    if (v24 == 5)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v32, a3, a3 + 4 * v20, v20);
      MIL::IRTensorValueType::MakeFloat32Value();
LABEL_46:
      v25 = v32;
      *v9 = v31;
      if (!v25)
      {
        goto LABEL_49;
      }

      v33 = v25;
      goto LABEL_48;
    }

    goto LABEL_52;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<BOOL>::__init_with_size[abi:ne200100]<BOOL *,BOOL *>(&v32, a3, a3 + v20, v20);
  MIL::IRTensorValueType::MakeBoolValue();
  v25 = v32;
  *v9 = v31;
  if (v25)
  {
LABEL_48:
    operator delete(v25);
  }

LABEL_49:
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (unique_ptr<const)milValueForTensorBlobWithFilename:(id)a3 shape:(id)a4 dataType:(unint64_t)a5 offset:(id)a6
{
  v34 = v6;
  v53 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v15)
  {
    v16 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        [v18 unsignedIntegerValue];
        *&v42[0] = MIL::IRConstantDimension::Make(self->_context.__ptr_, [v18 unsignedIntegerValue]);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v48, v42);
      }

      v15 = [v14 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v15);
  }

  if (a5 - 1 <= 0xB)
  {
    v19 = dword_25BCBA98C[a5 - 1];
  }

  ptr = self->_context.__ptr_;
  MIL::IRTensorValueType::MakeWithShape();
  memset(v42, 0, sizeof(v42));
  v43 = 1065353216;
  v21 = self->_context.__ptr_;
  MIL::IRTensorValueType::MakeScalar();
  std::string::basic_string[abi:ne200100]<0>(&v39, "BLOBFILE");
  MIL::IRTensorValueType::MakeStringValue();
  std::string::basic_string[abi:ne200100]<0>(__p, "type");
  v51 = __p;
  v22 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42, __p);
  std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v22 + 5, &v41);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = v41;
  v41 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (v40 < 0)
  {
    operator delete(v39);
  }

  v24 = self->_context.__ptr_;
  MIL::IRTensorValueType::MakeScalar();
  if (v11)
  {
    [v11 cxxString];
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  MIL::IRTensorValueType::MakeStringValue();
  std::string::basic_string[abi:ne200100]<0>(__p, "path");
  v51 = __p;
  v25 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42, __p);
  std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v25 + 5, &v41);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = v41;
  v41 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  v27 = self->_context.__ptr_;
  Scalar = MIL::IRTensorValueType::MakeScalar();
  [v13 unsignedLongValue];
  MIL::IRTensorValueType::MakeUInt64Value(Scalar);
  std::string::basic_string[abi:ne200100]<0>(__p, "offset");
  v51 = __p;
  v29 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42, __p);
  std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v29 + 5, &v41);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v30 = v41;
  v41 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = self->_context.__ptr_;
  MIL::IRTensorValueType::MakeValueFromFileProperties();
  *v34 = __p[0];
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v42);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

+ (id)valueForIRTensorValueType:(const IRTensorValueType *)a3 name:()basic_string<char
{
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:a4];
  v6 = (*(a3->var0 + 11))(a3) - 2;
  if (v6 < 0x10 && ((0xF79Fu >> v6) & 1) != 0)
  {
    v7 = qword_25BCBA9C0[v6];
  }

  else
  {
    v8 = MEMORY[0x277CBEAD8];
    MIL::IRDataTypeToString();
    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    [v8 raise:*MEMORY[0x277CBE660] format:{@"Unsupported data type %s", p_p}];
    if (v19 < 0)
    {
      operator delete(__p);
    }

    v7 = 0;
  }

  v10 = [MEMORY[0x277CBEBF8] mutableCopy];
  v11 = (*(a3->var0 + 12))(a3);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (*v11 != v13)
  {
    do
    {
      v14 = MIL::IRDimension::AsConstant(*v12);
      v15 = [MEMORY[0x277CCABB0] numberWithInt:(*(*v14 + 48))(v14)];
      [v10 addObject:v15];

      ++v12;
    }

    while (v12 != v13);
  }

  v16 = [[SNNMILValueDescriptor alloc] initWithShape:v10 dataType:v7 name:v5];

  return v16;
}

+ (id)valueForIRValueType:(const IRValueType *)a3 name:()basic_string<char
{
  v6 = (*(a3->var0 + 3))(a3, a2);
  if (v6)
  {
    v7 = v6;
    if (*(&a4->__rep_.__l + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, a4->__rep_.__l.__data_, a4->__rep_.__l.__size_);
    }

    else
    {
      v14 = *a4;
    }

    v10 = [SNNMILContext valueForIRTensorValueType:v7 name:&v14];
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    data = v14.__r_.__value_.__r.__words[0];
  }

  else
  {
    v8 = (*(a3->var0 + 4))(a3);
    if (!v8)
    {
      (*(a3->var0 + 5))(a3);
      (*(a3->var0 + 6))(a3);
      v10 = 0;
      goto LABEL_15;
    }

    v9 = v8;
    if (*(&a4->__rep_.__l + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, a4->__rep_.__l.__data_, a4->__rep_.__l.__size_);
    }

    else
    {
      __p = *a4;
    }

    v10 = [SNNMILContext valueForIRListValueType:v9 name:&__p];
    if ((*(&__p.__rep_.__l + 23) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    data = __p.__rep_.__l.__data_;
  }

  operator delete(data);
LABEL_15:

  return v10;
}

+ (id)valueForIRTensorValue:(const IRTensorValue *)a3
{
  v4 = (*(a3->var0 + 4))(a3, a2);
  v5 = (*(*v4 + 88))(v4) - 2;
  if (v5 < 0x10 && ((0xF79Fu >> v5) & 1) != 0)
  {
    v56 = qword_25BCBA9C0[v5];
  }

  else
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE660];
    MIL::IRDataTypeToString();
    if (v64 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    [v6 raise:v7 format:{@"Unsupported data type %s", v8}];
    if (v64 < 0)
    {
      operator delete(__p[0]);
    }

    v56 = 0;
  }

  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v10 = (*(a3->var0 + 4))(a3);
  v11 = (*(*v10 + 96))(v10);
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = 1;
  while (v13 != v12)
  {
    v15 = MIL::IRDimension::AsConstant(*v13);
    v16 = (*(*v15 + 48))(v15);
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    [v9 addObject:v17];
    v14 *= v16;

    ++v13;
  }

  if ((*(a3->var0 + 10))(a3))
  {
    v18 = (*(a3->var0 + 11))(a3);
    std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(__p, v18);
    std::string::basic_string[abi:ne200100]<0>(v59, "type");
    v57[0] = v59;
    v19 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, v59)[5];
    MIL::IRValue::GetScalar<std::string>();
    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if (v62 < 0)
    {
      if (v61[1] != 14)
      {
        goto LABEL_29;
      }

      v20 = v61[0];
    }

    else
    {
      if (v62 != 14)
      {
        goto LABEL_29;
      }

      v20 = v61;
    }

    v25 = *v20;
    v26 = *(v20 + 6);
    if (v25 == 0x4C4259434147454CLL && v26 == 0x454C4946424F4C42)
    {
      v34 = +[SNNLogging framework];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SNNMILContext valueForIRTensorValue:v34];
      }

      v22 = 0;
      goto LABEL_38;
    }

LABEL_29:
    std::string::basic_string[abi:ne200100]<0>(v57, "path");
    v65 = v57;
    v28 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, v57)[5];
    MIL::IRValue::GetScalar<std::string>();
    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v57, "offset");
    v65 = v57;
    v29 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, v57)[5];
    v30 = MIL::IRValue::GetScalar<unsigned long long>();
    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    v31 = [SNNMILBlobValue alloc];
    v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:v59];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v30];
    v22 = [(SNNMILBlobValue *)v31 initWithFilename:v32 shape:v9 dataType:v56 offset:v33];

    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

LABEL_38:
    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(__p);
    goto LABEL_96;
  }

  v21 = [v9 count];
  v22 = 0;
  switch(v5)
  {
    case 0u:
      if (!v21)
      {
        v49 = [MEMORY[0x277CCABB0] numberWithBool:MIL::IRValue::GetScalar<BOOL>()];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:0];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<BOOL>();
      if (v14 != v24)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 314, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 1u:
      if (!v21)
      {
        v54 = objc_alloc(MEMORY[0x277CCACA8]);
        MIL::IRValue::GetScalar<std::string>();
        v49 = [v54 initWithCXXString:__p];
        if (v64 < 0)
        {
          operator delete(__p[0]);
        }

        v50 = [[SNNMILDataValue alloc] initWithStringScalar:v49];
        goto LABEL_95;
      }

      v44 = +[SNNLogging framework];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [SNNMILContext valueForIRTensorValue:v44];
      }

LABEL_68:
      v22 = 0;
      break;
    case 2u:
      break;
    case 3u:
      if (!v21)
      {
        v52 = MEMORY[0x277CCABB0];
        MIL::IRValue::GetScalar<float>();
        v49 = [v52 numberWithDouble:v53];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:3];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<float>();
      if (v14 != v40)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 338, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 4u:
      if (!v21)
      {
        v51 = MEMORY[0x277CCABB0];
        MIL::IRValue::GetScalar<double>();
        v49 = [v51 numberWithDouble:?];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:4];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<double>();
      if (v14 != v36)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 326, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 7u:
      if (!v21)
      {
        v49 = [MEMORY[0x277CCABB0] numberWithChar:MIL::IRValue::GetScalar<signed char>()];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:5];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<signed char>();
      if (v14 != v38)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 402, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 8u:
      if (!v21)
      {
        v49 = [MEMORY[0x277CCABB0] numberWithShort:MIL::IRValue::GetScalar<short>()];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:6];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<short>();
      if (v14 != v45)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 414, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 9u:
      if (!v21)
      {
        v49 = [MEMORY[0x277CCABB0] numberWithInteger:MIL::IRValue::GetScalar<int>()];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:7];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<int>();
      if (v14 != v46)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 426, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xAu:
      if (!v21)
      {
        v49 = [MEMORY[0x277CCABB0] numberWithLong:MIL::IRValue::GetScalar<long long>()];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:8];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<long long>();
      if (v14 != v48)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 438, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xCu:
      if (!v21)
      {
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:MIL::IRValue::GetScalar<unsigned char>()];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:9];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<unsigned char>();
      if (v14 != v47)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 354, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xDu:
      if (!v21)
      {
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:MIL::IRValue::GetScalar<unsigned short>()];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:10];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<unsigned short>();
      if (v14 != v35)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 366, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xEu:
      if (!v21)
      {
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:MIL::IRValue::GetScalar<unsigned int>()];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:11];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<unsigned int>();
      if (v14 != v39)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 378, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xFu:
      if (v21)
      {
        Data = MIL::IRTensorValue::GetDataView<unsigned long long>();
        if (v14 != v37)
        {
          __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 390, "contiguousCount == dataView.Size()");
        }

LABEL_80:
        v22 = [[SNNMILDataValue alloc] initWithShape:v9 bytes:Data dataType:v56];
      }

      else
      {
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:MIL::IRValue::GetScalar<unsigned long long>()];
        v50 = [[SNNMILDataValue alloc] initWithScalar:v49 dataType:12];
LABEL_95:
        v22 = v50;
      }

      break;
    default:
      v41 = objc_alloc(MEMORY[0x277CCACA8]);
      MIL::IRDataTypeToString();
      v42 = [v41 initWithCXXString:__p];
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      v43 = +[SNNLogging framework];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [(SNNMILContext *)v42 valueForIRTensorValue:v43];
      }

      goto LABEL_68;
  }

LABEL_96:

  return v22;
}

+ (id)valueForIRValue:(const IRValue *)a3
{
  v4 = (*(a3->var0 + 5))(a3, a2);
  if (v4)
  {
    v5 = [SNNMILContext valueForIRTensorValue:v4];
  }

  else
  {
    v5 = (*(a3->var0 + 6))(a3);
    if (v5)
    {
      v6 = [MEMORY[0x277CBEBF8] mutableCopy];
      Values = MIL::IRListValue::GetValues(v5);
      if (v8)
      {
        v9 = Values;
        v10 = 16 * v8;
        do
        {
          v11 = [SNNMILContext valueForIRValue:*v9];
          if (v11)
          {
            [v6 addObject:v11];
          }

          v9 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      v5 = [[SNNMILListValue alloc] initWithValues:v6];
    }

    else
    {
      (*(a3->var0 + 7))(a3);
      (*(a3->var0 + 8))(a3);
    }
  }

  return v5;
}

- (basic_string<char,)opsetName
{
  if (*(&result[1].__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(retstr, result[1].__rep_.__l.__data_, result[1].__rep_.__l.__size_);
  }

  else
  {
    *retstr = result[1];
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

+ (void)valueForIRTensorValue:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  v2 = *MEMORY[0x277D85DE8];
}

@end