@interface SNNMILProgramBuilder
- (SNNMILProgramBuilder)init;
- (SNNMILProgramBuilder)initWithContext:(id)a3 location:(id)a4;
- (id)build;
- (id)functionWithName:(id)a3 location:(id)a4;
- (unique_ptr<MIL::Location,)milLocation;
@end

@implementation SNNMILProgramBuilder

- (SNNMILProgramBuilder)init
{
  v8.receiver = self;
  v8.super_class = SNNMILProgramBuilder;
  v2 = [(SNNMILProgramBuilder *)&v8 init];
  v3 = objc_alloc_init(SNNMILContext);
  context = v2->_context;
  v2->_context = v3;

  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  functionBuilders = v2->_functionBuilders;
  v2->_functionBuilders = v5;

  return v2;
}

- (SNNMILProgramBuilder)initWithContext:(id)a3 location:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SNNMILProgramBuilder;
  v9 = [(SNNMILProgramBuilder *)&v13 init];
  objc_storeStrong(&v9->_context, a3);
  objc_storeStrong(&v9->_location, a4);
  v10 = [MEMORY[0x277CBEBF8] mutableCopy];
  functionBuilders = v9->_functionBuilders;
  v9->_functionBuilders = v10;

  return v9;
}

- (id)build
{
  v43 = *MEMORY[0x277D85DE8];
  program = self->_program;
  if (program)
  {
    v3 = program;
  }

  else
  {
    memset(v38, 0, sizeof(v38));
    v39 = 1065353216;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v4 = self->_functionBuilders;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v5)
    {
      v6 = *v35;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v34 + 1) + 8 * i) build];
          v9 = v8;
          if (v8)
          {
            [v8 name];
            [v9 milFunction];
          }

          else
          {
            v10 = objc_alloc(MEMORY[0x277CCACA8]);
            __p = 0;
            v26 = 0;
            v27 = 0;
            v11 = [v10 initWithCXXString:&__p];
            if (SHIBYTE(v27) < 0)
            {
              operator delete(__p);
            }

            __p = 0;
            v26 = 0;
            v27 = 0;
            v32 = 0;
            v33 = 0;
          }

          p_p = &__p;
          v40 = &v32;
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<std::shared_ptr<MIL::IRFunction>&&>>(v38, &__p);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (SHIBYTE(v27) < 0)
          {
            operator delete(__p);
          }
        }

        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v5);
    }

    context = self->_context;
    if (context)
    {
      [(SNNMILContext *)context context];
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    [(SNNMILProgramBuilder *)self milLocation];
    v28 = __p;
    if (__p)
    {
      operator new();
    }

    v29 = 0;
    __p = 0;
    MIL::IRProgram::Make();
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v14 = __p;
    __p = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    MIL::IRProgramValidator::Validate(&__p, v32, v13);
    if ((MIL::ValidationResult::IsGood(&__p) & 1) == 0)
    {
    }

    v15 = [SNNMILProgram alloc];
    v16 = v32;
    v32 = 0;
    v24 = v16;
    v17 = [(SNNMILProgram *)v15 initWithProgram:&v24];
    v18 = self->_program;
    self->_program = v17;

    v19 = v24;
    v24 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v3 = self->_program;
    MEMORY[0x25F878710](&__p);
    v20 = v32;
    v32 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v38);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unique_ptr<MIL::Location,)milLocation
{
  v3 = v2;
  location = self->_location;
  if (location)
  {

    return [(SNNMILSourceLocation *)location milLocation];
  }

  else
  {
    v5 = MIL::UnknownLocation::Make(&v6, 0);
    *v3 = v6;
  }

  return v5;
}

- (id)functionWithName:(id)a3 location:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_functionBuilders;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v15 = v12;

          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [[SNNMILFunctionBuilder alloc] initWithName:v6 context:self->_context location:v7];
  [(NSMutableArray *)self->_functionBuilders addObject:v15];
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end