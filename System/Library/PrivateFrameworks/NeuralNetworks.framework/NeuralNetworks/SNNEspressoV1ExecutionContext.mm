@interface SNNEspressoV1ExecutionContext
- ($C4732ECC957FA13B9B3DF4A51A95735B)network;
- (NSArray)globalNames;
- (NSArray)inputNames;
- (NSArray)outputNames;
- (SNNEspressoV1ExecutionContext)initWithMILProgram:(id)program primaryComputeUnit:(id)unit computeUnits:(id)units preferredMetalDevice:(id)device computePrecision:(id)precision error:(id *)error;
- (id).cxx_construct;
- (id)inputAndOutputNames;
- (id)shapeForBlobWithName:(id)name;
- (id)shapeForInputWithName:(id)name;
- (id)shapeForOutputWithName:(id)name;
- (unint64_t)dataTypeForBlobWithName:(id)name;
- (unint64_t)rawSizeForInputWithName:(id)name;
- (unint64_t)rawSizeForOutputWithName:(id)name;
- (void)dealloc;
- (void)deallocEspressoResources;
@end

@implementation SNNEspressoV1ExecutionContext

- ($C4732ECC957FA13B9B3DF4A51A95735B)network
{
  objc_copyStruct(v4, &self->_network, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (SNNEspressoV1ExecutionContext)initWithMILProgram:(id)program primaryComputeUnit:(id)unit computeUnits:(id)units preferredMetalDevice:(id)device computePrecision:(id)precision error:(id *)error
{
  programCopy = program;
  unitCopy = unit;
  unitsCopy = units;
  deviceCopy = device;
  precisionCopy = precision;
  v48.receiver = self;
  v48.super_class = SNNEspressoV1ExecutionContext;
  v18 = [(SNNEspressoV1ExecutionContext *)&v48 init];
  if (![unitsCopy count])
  {
    __assert_rtn("[SNNEspressoV1ExecutionContext initWithMILProgram:primaryComputeUnit:computeUnits:preferredMetalDevice:computePrecision:error:]", "SNNEspressoExecutors.mm", 139, "computeUnits.count > 0");
  }

  objc_storeStrong(v18 + 3, unit);
  objc_storeStrong(v18 + 4, units);
  objc_storeStrong(v18 + 5, precision);
  v19 = programCopy;
  kind = [*(v18 + 3) kind];
  if (deviceCopy && kind == 2)
  {
    espresso_device_id_for_metal_device();
  }

  [unitCopy platform];
  context = espresso_create_context();
  *(v18 + 6) = context;
  if (context)
  {
    v22 = [SNNComputeUnit bitmakForComputeUnits:unitsCopy];
    if (v22 && (v23 = *(v18 + 6), espresso_context_set_int_option()))
    {
      if (error)
      {
        v24 = NSStringFromSelector(a2);
        v25 = [SNNError invalidEspressoContextErrorForMethod:v24 description:@"Invalid compute unit selection."];
LABEL_29:
        *error = v25;
      }
    }

    else
    {
      if ([*(v18 + 3) kind] == 2)
      {
        Espresso::get_internal_context(&v47, *(v18 + 6), v26);
        v27 = v47;
        *(v47 + 68) = 0;
        if (*(&v27 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
        }
      }

      v28 = *(v18 + 6);
      plan = espresso_create_plan();
      *(v18 + 7) = plan;
      if (plan)
      {
        if ([v19 isReferencingBlobFile] && (objc_msgSend(v19, "milFilePath"), v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
        {
          v31 = *(v18 + 7);
          milFilePath = [v19 milFilePath];
          [milFilePath UTF8String];
          [precisionCopy storageType];
          v33 = espresso_plan_add_network();

          v19 = v44;
        }

        else
        {
          v34 = *(v18 + 7);
          if (v19)
          {
            [v19 milProgram];
          }

          else
          {
            v46 = 0;
          }

          [precisionCopy storageType];
          v33 = espresso_plan_add_cpp_net_from_mil_program_and_reload();
          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v46);
          }
        }

        if (v33)
        {
          if (error)
          {
            v24 = NSStringFromSelector(a2);
            v25 = [SNNError invalidEspressoNetworkErrorForMethod:v24 description:@"Failed to build plan."];
            goto LABEL_29;
          }
        }

        else
        {
          v37 = *(v18 + 8);
          v38 = *(v18 + 9);
          Espresso::get_internal_network();
          v39 = v47;
          v47 = 0uLL;
          v40 = *(v18 + 2);
          *(v18 + 8) = v39;
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            if (*(&v47 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v47 + 1));
            }
          }

          if (!*(v18 + 1))
          {
            if (!error)
            {
              goto LABEL_30;
            }

            v24 = NSStringFromSelector(a2);
            v25 = [SNNError invalidEspressoNetworkErrorForMethod:v24 description:@"Failed to load network."];
            goto LABEL_29;
          }

          v41 = *(v18 + 7);
          espresso_plan_build();
          v42 = *(v18 + 7);
          if (espresso_plan_get_phase() == 1)
          {
            v35 = v18;
            goto LABEL_31;
          }

          if (error)
          {
            v24 = NSStringFromSelector(a2);
            v25 = [SNNError invalidEspressoConfigurationErrorForMethod:v24 description:@"Invalid built state."];
            goto LABEL_29;
          }
        }
      }

      else if (error)
      {
        v24 = NSStringFromSelector(a2);
        v25 = [SNNError invalidEspressoPlanErrorForMethod:v24 description:@"Failed to create plan."];
        goto LABEL_29;
      }
    }
  }

  else if (error)
  {
    v24 = NSStringFromSelector(a2);
    v25 = [SNNError invalidEspressoContextErrorForMethod:v24 description:@"Failed to create context."];
    goto LABEL_29;
  }

LABEL_30:
  v35 = 0;
LABEL_31:

  return v35;
}

- (void)deallocEspressoResources
{
  if (self->_plan)
  {
    espresso_plan_destroy();
  }

  if (self->_context)
  {

    MEMORY[0x28215D2E0]();
  }
}

- (void)dealloc
{
  [(SNNEspressoV1ExecutionContext *)self deallocEspressoResources];
  v3.receiver = self;
  v3.super_class = SNNEspressoV1ExecutionContext;
  [(SNNEspressoV1ExecutionContext *)&v3 dealloc];
}

- (id)inputAndOutputNames
{
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = *(self->_cppNetwork.__ptr_ + 19); i; i = *i)
  {
    std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100](&__p, i + 1);
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:&__p];
    [v3 addObject:v5];

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v3;
}

- (NSArray)globalNames
{
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  Espresso::net::all_globals(self->_cppNetwork.__ptr_, v9);
  for (i = v10; i; i = *i)
  {
    std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100](&__p, i + 1);
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:&__p];
    [v3 addObject:v5];

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v9);

  return v3;
}

- (NSArray)inputNames
{
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  ptr = self->_cppNetwork.__ptr_;
  v5 = *(ptr + 29);
  v6 = (ptr + 240);
  if (v5 != (ptr + 240))
  {
    do
    {
      if (*(v5 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v5[4], v5[5]);
      }

      else
      {
        __p = *(v5 + 4);
      }

      v13 = *(v5 + 56);
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:&__p];
      [v3 addObject:v7];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }

  return v3;
}

- (NSArray)outputNames
{
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  ptr = self->_cppNetwork.__ptr_;
  v5 = *(ptr + 32);
  v6 = (ptr + 264);
  if (v5 != (ptr + 264))
  {
    do
    {
      if (*(v5 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v5[4], v5[5]);
      }

      else
      {
        __p = *(v5 + 4);
      }

      v13 = *(v5 + 56);
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:&__p];
      [v3 addObject:v7];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }

  return v3;
}

- (id)shapeForInputWithName:(id)name
{
  v3 = [(SNNEspressoV1ExecutionContext *)self shapeForBlobWithName:name];

  return v3;
}

- (id)shapeForOutputWithName:(id)name
{
  v3 = [(SNNEspressoV1ExecutionContext *)self shapeForBlobWithName:name];

  return v3;
}

- (id)shapeForBlobWithName:(id)name
{
  v31[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  ptr = self->_cppNetwork.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(&__p, [nameCopy UTF8String]);
  p_p = &__p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(ptr + 17, &__p);
  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  v9 = v8[7];
  Espresso::abstract_blob_container::shape(v8, &__p);
  if (v9 > 1)
  {
    v11 = 0;
    if (v9 > 3)
    {
      if (v9 == 4)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v21];
        v28[0] = v10;
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v20];
        v28[1] = v12;
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:SHIDWORD(__p)];
        v28[2] = v13;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:__p];
        v28[3] = v14;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_20;
        }

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v22];
        v27[0] = v10;
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v21];
        v27[1] = v12;
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v20];
        v27[2] = v13;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:SHIDWORD(__p)];
        v27[3] = v14;
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:__p];
        v27[4] = v15;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];
      }
    }

    else
    {
      if (v9 == 2)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:SHIDWORD(__p)];
        v30[0] = v10;
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:__p];
        v30[1] = v12;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
LABEL_18:

        goto LABEL_19;
      }

      if (v9 != 3)
      {
        goto LABEL_20;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v20];
      v29[0] = v10;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:SHIDWORD(__p)];
      v29[1] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:__p];
      v29[2] = v13;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    }

    goto LABEL_18;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:__p];
  v31[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
LABEL_19:

LABEL_20:
  v16 = v11;
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)dataTypeForBlobWithName:(id)name
{
  nameCopy = name;
  ptr = self->_cppNetwork.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(__p, [nameCopy UTF8String]);
  v36 = __p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(ptr + 17, __p);
  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 32))(v8);
  v10 = 3;
  switch(v9)
  {
    case 0:
      goto LABEL_32;
    case 1:
      v10 = 2;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    case 2:
      v10 = 5;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    case 3:
      v10 = 7;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    case 4:
      v10 = 9;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    case 5:
      v10 = 10;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    case 6:
      v11 = +[SNNLogging framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SNNEspressoV1ExecutionContext *)v11 dataTypeForBlobWithName:v19, v20, v21, v22, v23, v24, v25];
      }

      goto LABEL_28;
    case 7:
      v10 = 6;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    case 8:
      v10 = 8;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    case 9:
      v11 = +[SNNLogging framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SNNEspressoV1ExecutionContext *)v11 dataTypeForBlobWithName:v12, v13, v14, v15, v16, v17, v18];
      }

      goto LABEL_28;
    case 10:
      v10 = 11;
LABEL_32:
      if (v7)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    case 11:
    case 12:
      v10 = 12;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    case 13:
      v11 = +[SNNLogging framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SNNEspressoV1ExecutionContext *)v11 dataTypeForBlobWithName:v26, v27, v28, v29, v30, v31, v32];
      }

LABEL_28:

      goto LABEL_29;
    case 14:
      v10 = 0;
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    default:
LABEL_29:
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Unsupported data type"];
      v10 = 3;
      if (v7)
      {
LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

LABEL_34:

      return v10;
  }
}

- (unint64_t)rawSizeForInputWithName:(id)name
{
  nameCopy = name;
  ptr = self->_cppNetwork.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(__p, [nameCopy UTF8String]);
  v13 = __p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(ptr + 17, __p);
  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 128))(v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v9;
}

- (unint64_t)rawSizeForOutputWithName:(id)name
{
  nameCopy = name;
  ptr = self->_cppNetwork.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(__p, [nameCopy UTF8String]);
  v13 = __p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(ptr + 17, __p);
  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v8 + 128))(v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end