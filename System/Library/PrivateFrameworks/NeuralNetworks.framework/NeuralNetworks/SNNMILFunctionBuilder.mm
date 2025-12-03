@interface SNNMILFunctionBuilder
- (BOOL)isUniqueOutputName:(id)name;
- (BOOL)retainOutputs:(id)outputs;
- (BOOL)retainOutputsWithNames:(id)names;
- (SNNMILContext)context;
- (SNNMILFunctionBuilder)initWithName:(id)name context:(id)context location:(id)location;
- (basic_string<char,)milName;
- (const)tensorValueTypeWithShape:(id)shape dataType:(unint64_t)type;
- (id).cxx_construct;
- (id)build;
- (id)constantOperationWithValue:(unique_ptr<const)MIL:(std:(id)l :(id)a5 default_delete<const MIL::IRValue>>)a3 :IRValue name:location:;
- (id)constantScalar:(id)scalar dataType:(unint64_t)type location:(id)location;
- (id)constantScalar:(id)scalar dataType:(unint64_t)type name:(id)name location:(id)location;
- (id)constantScalar:(id)scalar location:(id)location;
- (id)constantScalar:(id)scalar name:(id)name location:(id)location;
- (id)constantTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset location:(id)location;
- (id)constantTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset name:(id)name location:(id)location;
- (id)constantTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type location:(id)location;
- (id)constantTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location;
- (id)constantTensorWithScalars:(id)scalars shape:(id)shape dataType:(unint64_t)type location:(id)location;
- (id)constantTensorWithScalars:(id)scalars shape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location;
- (id)constantValue:(id)value name:(id)name location:(id)location;
- (id)nextSymbol;
- (id)outputsByApplyingOperatorNamed:(id)named toInputs:(id)inputs outputs:(id)outputs attributes:(id)attributes location:(id)location;
- (id)outputsByApplyingOperatorNamed:(id)named toInputs:(id)inputs outputs:(id)outputs location:(id)location;
- (id)placeholderWithShape:(id)shape dataType:(unint64_t)type location:(id)location;
- (id)placeholderWithShape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location;
- (unique_ptr<MIL::IRArgument,)milArgumentForSNNMILValue:(id)value;
@end

@implementation SNNMILFunctionBuilder

- (SNNMILFunctionBuilder)initWithName:(id)name context:(id)context location:(id)location
{
  nameCopy = name;
  contextCopy = context;
  locationCopy = location;
  v18.receiver = self;
  v18.super_class = SNNMILFunctionBuilder;
  v12 = [(SNNMILFunctionBuilder *)&v18 init];
  objc_storeStrong(&v12->_name, name);
  objc_storeWeak(&v12->_context, contextCopy);
  v13 = [SNNMILSourceLocation locationOrEmpty:locationCopy];
  location = v12->_location;
  v12->_location = v13;

  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  outputNames = v12->_outputNames;
  v12->_outputNames = v15;

  return v12;
}

- (basic_string<char,)milName
{
  name = [v1 name];
  v5 = name;
  if (name)
  {
    [name cxxString];
  }

  else
  {
    retstr->__rep_.__l.__data_ = 0;
    retstr->__rep_.__l.__size_ = 0;
    *(&retstr->__rep_.__l + 2) = 0;
  }

  return result;
}

- (id)build
{
  function = self->_function;
  if (function)
  {
    v3 = function;
  }

  else
  {
    location = self->_location;
    if (location)
    {
      [(SNNMILSourceLocation *)location milLocation];
      if (v27)
      {
        operator new();
      }
    }

    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v27 = 0u;
    v28 = 0u;
    v29 = 1065353216;
    MIL::IRBlock::Make();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v27);
    *&v27 = v30;
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v27);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    v25 = 0;
    v26 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    platformOpset = [WeakRetained platformOpset];
    v8 = (*(*platformOpset + 16))(platformOpset);
    v10 = v9;
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v24 = v9;
    if (v9)
    {
      memmove(&__dst, v8, v9);
    }

    *(&__dst + v10) = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 1065353216;
    MIL::IRFunction::Make();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v27);
    if (v24 < 0)
    {
      operator delete(__dst);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v11 = [SNNMILFunction alloc];
    v21 = v30[0];
    if (v30[0])
    {
      operator new();
    }

    v22 = 0;
    v30[0] = 0;
    name = [(SNNMILFunctionBuilder *)self name];
    v13 = name;
    if (name)
    {
      [name cxxString];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
    }

    v14 = [(SNNMILFunction *)v11 initWithFunction:&v21 name:__p];
    v15 = self->_function;
    self->_function = v14;

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v3 = self->_function;
    v16 = v30[0];
    v30[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v32;
    v32 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  return v3;
}

- (id)placeholderWithShape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location
{
  v40 = *MEMORY[0x277D85DE8];
  shapeCopy = shape;
  nameCopy = name;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = shapeCopy;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v12)
  {
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_context);
        v17 = WeakRetained;
        if (WeakRetained)
        {
          [WeakRetained context];
          v18 = __p;
        }

        else
        {
          v18 = 0;
          __p = 0;
          v27 = 0;
        }

        v19 = MIL::IRConstantDimension::Make(v18, [v15 unsignedIntegerValue]);
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        __p = v19;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v34, &__p);
      }

      v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v12);
  }

  if (type - 1 <= 0xB)
  {
    v20 = dword_25BCBADEC[type - 1];
  }

  v21 = objc_loadWeakRetained(&self->_context);
  [v21 context];
  v22 = MIL::IRTensorValueType::MakeWithShape();
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v29 = v22;
  if (nameCopy)
  {
    [nameCopy cxxString];
  }

  else
  {
    __p = 0;
    v27 = 0;
    v28 = 0;
  }

  p_p = &__p;
  v37 = &v29;
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<MIL::IRTensorValueType const*&>>(&self->_inputs, &__p);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  v23 = [[SNNMILNamedValue alloc] initWithName:nameCopy];
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)placeholderWithShape:(id)shape dataType:(unint64_t)type location:(id)location
{
  shapeCopy = shape;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v11 = [(SNNMILFunctionBuilder *)self placeholderWithShape:shapeCopy dataType:type name:nextSymbol location:locationCopy];

  return v11;
}

- (BOOL)retainOutputsWithNames:(id)names
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  namesCopy = names;
  v5 = [namesCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = *v29;
    p_outputs = &self->_outputs;
    v8 = namesCopy;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(namesCopy);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        if (v10)
        {
          [v10 cxxString];
        }

        else
        {
          *__p = 0uLL;
          v27 = 0;
        }

        end = self->_outputs.__end_;
        cap = self->_outputs.__cap_;
        if (end >= cap)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((end - p_outputs->__begin_) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_outputs->__begin_) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          v32.__end_cap_.__value_ = &self->_outputs;
          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&self->_outputs, v16);
          }

          v17 = 24 * v13;
          *(v17 + 16) = v27;
          *v17 = *__p;
          v27 = 0;
          *__p = 0uLL;
          v18 = (24 * v13 + 24);
          begin = self->_outputs.__begin_;
          v20 = (self->_outputs.__end_ - begin);
          v21 = (24 * v13 - v20);
          memcpy((v17 - v20), begin, v20);
          v22 = self->_outputs.__begin_;
          self->_outputs.__begin_ = v21;
          self->_outputs.__end_ = v18;
          v23 = self->_outputs.__cap_;
          self->_outputs.__cap_ = 0;
          v32.__end_ = v22;
          v32.__end_cap_.__value_ = v23;
          v32.__first_ = v22;
          v32.__begin_ = v22;
          std::__split_buffer<std::string>::~__split_buffer(&v32);
          self->_outputs.__end_ = v18;
          namesCopy = v8;
        }

        else
        {
          *(end + 2) = v27;
          *end = *__p;
          self->_outputs.__end_ = end + 24;
        }
      }

      v5 = [namesCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)retainOutputs:(id)outputs
{
  v19 = *MEMORY[0x277D85DE8];
  outputsCopy = outputs;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = outputsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        name = [*(*(&v14 + 1) + 8 * v9) name];
        [v5 addObject:name];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [(SNNMILFunctionBuilder *)self retainOutputsWithNames:v5];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)constantOperationWithValue:(unique_ptr<const)MIL:(std:(id)l :(id)a5 default_delete<const MIL::IRValue>>)a3 :IRValue name:location:
{
  v50 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained platformOpset];
  std::string::basic_string[abi:ne200100]<0>(&v44, "const");
  MIL::IROpset::TryGetOperatorSharedPtr();
  if (v46 < 0)
  {
    operator delete(v44);
  }

  v11 = objc_loadWeakRetained(&self->_context);
  v12 = v11;
  if (v11)
  {
    [v11 milValueForString:lCopy];
  }

  else
  {
    v41[0] = 0;
  }

  if (v9)
  {
    [v9 milLocation];
    v13 = v37;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v34, "");
    MIL::TextFileLocation::Make();
    v13 = v36;
    v36 = 0;
    v37 = v13;
  }

  v38 = v13;
  if (v13)
  {
    operator new();
  }

  v39 = 0;
  v37 = 0;
  v32[2] = v41[1];
  v33 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  if (lCopy)
  {
    [lCopy cxxString];
  }

  else
  {
    __p = 0;
    v27 = 0;
    v28 = 0;
  }

  (*(*a3.var0->var0 + 4))();
  MIL::IRNamedValueType::Make();
  v48 = v29;
  if (v29)
  {
    operator new();
  }

  v49 = 0;
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType> const*>(v30, &v48, &v50, 1uLL);
  std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<char const(&)[4],std::unique_ptr<MIL::IRValue const>,0>(&v44, "val", a3.var0);
  std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IRValue const>,0>(v47, "name", v41);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v25, &v44, 2);
  memset(v24, 0, sizeof(v24));
  MIL::IROperation::Make();
  v43 = v24;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v43);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v25);
  for (i = 0; i != -10; i -= 5)
  {
    v15 = &(&v44)[i];
    v16 = *&v47[i * 8 + 32];
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (*(v15 + 63) < 0)
    {
      operator delete(v15[5]);
    }
  }

  v44 = v30;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v44);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v29);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&v31, v32[0]);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v17 = v37;
  v37 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (!v9)
  {
    v18 = v36;
    v36 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }
  }

  v44 = v40;
  if (v40)
  {
    operator new();
  }

  v45 = 0;
  v40 = 0;
  std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](&self->_operations.__begin_, &v44);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v19 = [[SNNMILNamedValue alloc] initWithName:lCopy];
  v20 = v40;
  v40 = 0;
  if (v20)
  {
    (*(*v20 + 1))(v20);
  }

  v21 = v41[0];
  v41[0] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)constantValue:(id)value name:(id)name location:(id)location
{
  valueCopy = value;
  nameCopy = name;
  locationCopy = location;
  [valueCopy conformsToProtocol:&unk_286D64AF0];
  v11 = valueCopy;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (v11)
  {
    [v11 milValueWithContext:WeakRetained];
  }

  else
  {
    v18 = 0;
  }

  v17 = v18;
  v18 = 0;
  v13 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v17 name:nameCopy location:locationCopy];
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v18;
  v18 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return v13;
}

- (id)constantScalar:(id)scalar name:(id)name location:(id)location
{
  scalarCopy = scalar;
  nameCopy = name;
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained milValueForString:scalarCopy];
  }

  else
  {
    v18 = 0;
  }

  v17 = v18;
  v18 = 0;
  v13 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v17 name:nameCopy location:locationCopy];
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v18;
  v18 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return v13;
}

- (id)constantScalar:(id)scalar location:(id)location
{
  scalarCopy = scalar;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v9 = [(SNNMILFunctionBuilder *)self constantScalar:scalarCopy name:nextSymbol location:locationCopy];

  return v9;
}

- (id)constantScalar:(id)scalar dataType:(unint64_t)type name:(id)name location:(id)location
{
  scalarCopy = scalar;
  nameCopy = name;
  locationCopy = location;
  v13 = [[SNNMILDataValue alloc] initWithScalar:scalarCopy dataType:type];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (v13)
  {
    [(SNNMILDataValue *)v13 milValueWithContext:WeakRetained];
  }

  else
  {
    v20 = 0;
  }

  v19 = v20;
  v20 = 0;
  v15 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v19 name:nameCopy location:locationCopy];
  v16 = v19;
  v19 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v20;
  v20 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return v15;
}

- (id)constantTensorWithScalars:(id)scalars shape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location
{
  scalarsCopy = scalars;
  shapeCopy = shape;
  nameCopy = name;
  locationCopy = location;
  v16 = [[SNNMILDataValue alloc] initWithShape:shapeCopy scalars:scalarsCopy dataType:type];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (v16)
  {
    [(SNNMILDataValue *)v16 milValueWithContext:WeakRetained];
  }

  else
  {
    v23 = 0;
  }

  v22 = v23;
  v23 = 0;
  v18 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v22 name:nameCopy location:locationCopy];
  v19 = v22;
  v22 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = v23;
  v23 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  return v18;
}

- (id)constantScalar:(id)scalar dataType:(unint64_t)type location:(id)location
{
  scalarCopy = scalar;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v11 = [(SNNMILFunctionBuilder *)self constantScalar:scalarCopy dataType:type name:nextSymbol location:locationCopy];

  return v11;
}

- (id)constantTensorWithScalars:(id)scalars shape:(id)shape dataType:(unint64_t)type location:(id)location
{
  scalarsCopy = scalars;
  shapeCopy = shape;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v14 = [(SNNMILFunctionBuilder *)self constantTensorWithScalars:scalarsCopy shape:shapeCopy dataType:type name:nextSymbol location:locationCopy];

  return v14;
}

- (id)constantTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location
{
  shapeCopy = shape;
  nameCopy = name;
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v16 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained milValueForTensorWithBytes:bytes shape:shapeCopy dataType:type];
  }

  else
  {
    v22 = 0;
  }

  v21 = v22;
  v22 = 0;
  v17 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v21 name:nameCopy location:locationCopy];
  v18 = v21;
  v21 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v22;
  v22 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  return v17;
}

- (id)constantTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type location:(id)location
{
  shapeCopy = shape;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v13 = [(SNNMILFunctionBuilder *)self constantTensorWithBytes:bytes shape:shapeCopy dataType:type name:nextSymbol location:locationCopy];

  return v13;
}

- (id)constantTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset name:(id)name location:(id)location
{
  filenameCopy = filename;
  shapeCopy = shape;
  offsetCopy = offset;
  nameCopy = name;
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v20 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained milValueForTensorBlobWithFilename:filenameCopy shape:shapeCopy dataType:type offset:offsetCopy];
  }

  else
  {
    v26 = 0;
  }

  v25 = v26;
  v26 = 0;
  v21 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v25 name:nameCopy location:locationCopy];
  v22 = v25;
  v25 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = v26;
  v26 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  return v21;
}

- (id)constantTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset location:(id)location
{
  filenameCopy = filename;
  shapeCopy = shape;
  offsetCopy = offset;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v17 = [(SNNMILFunctionBuilder *)self constantTensorBlobWithFilename:filenameCopy shape:shapeCopy dataType:type offset:offsetCopy name:nextSymbol location:locationCopy];

  return v17;
}

- (id)outputsByApplyingOperatorNamed:(id)named toInputs:(id)inputs outputs:(id)outputs attributes:(id)attributes location:(id)location
{
  v115 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  inputsCopy = inputs;
  outputsCopy = outputs;
  attributesCopy = attributes;
  locationCopy = location;
  v106[1] = 0;
  v106[0] = 0;
  v105 = v106;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = inputsCopy;
  v13 = [obj countByEnumeratingWithState:&v101 objects:v114 count:16];
  if (v13)
  {
    v63 = *v102;
    do
    {
      v65 = v13;
      for (i = 0; i != v65; ++i)
      {
        if (*v102 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v101 + 1) + 8 * i);
        v16 = [obj objectForKeyedSubscript:v15];
        v108 = 0uLL;
        *&v109 = 0;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v68 = v17;
          values = [v17 values];
          v19 = [values countByEnumeratingWithState:&v97 objects:v113 count:16];
          v20 = v68;
          if (v19)
          {
            v21 = *v98;
            v20 = v68;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v98 != v21)
                {
                  objc_enumerationMutation(values);
                }

                v23 = *(*(&v97 + 1) + 8 * j);

                v20 = v23;
                [(SNNMILFunctionBuilder *)self milArgumentForSNNMILValue:v23];
                __p = v79;
                if (v79)
                {
                  operator new();
                }

                v95 = 0;
                v79 = 0;
                std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](&v108, &__p);
                if (v95)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v95);
                }

                v79 = 0;
              }

              v19 = [values countByEnumeratingWithState:&v97 objects:v113 count:16];
            }

            while (v19);
          }

          v16 = 0;
        }

        else
        {
          [(SNNMILFunctionBuilder *)self milArgumentForSNNMILValue:v16];
          __p = v79;
          if (v79)
          {
            operator new();
          }

          v95 = 0;
          v79 = 0;
          std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](&v108, &__p);
          if (v95)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v95);
          }

          v79 = 0;
        }

        if (v15)
        {
          [v15 cxxString];
        }

        else
        {
          __p = 0;
          v95 = 0;
          v96 = 0;
        }

        std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>(&v105, &__p);
        if (SHIBYTE(v96) < 0)
        {
          operator delete(__p);
        }

        __p = &v108;
        std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      v13 = [obj countByEnumeratingWithState:&v101 objects:v114 count:16];
    }

    while (v13);
  }

  v66 = [MEMORY[0x277CBEBF8] mutableCopy];
  __p = 0;
  v95 = 0;
  v96 = 0;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v64 = outputsCopy;
  v24 = [v64 countByEnumeratingWithState:&v90 objects:v112 count:16];
  if (v24)
  {
    v25 = *v91;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v91 != v25)
        {
          objc_enumerationMutation(v64);
        }

        v27 = *(*(&v90 + 1) + 8 * k);
        dimensions = [v27 dimensions];
        -[SNNMILFunctionBuilder tensorValueTypeWithShape:dataType:](self, "tensorValueTypeWithShape:dataType:", dimensions, [v27 dataType]);

        name = [v27 name];
        if (name)
        {
          [v27 name];
        }

        else
        {
          [(SNNMILFunctionBuilder *)self nextSymbol];
        }
        v30 = ;

        if (v30)
        {
          [v30 cxxString];
        }

        else
        {
          v87 = 0;
          v88 = 0;
          v89 = 0;
        }

        MIL::IRNamedValueType::Make();
        if (v108)
        {
          operator new();
        }

        *&v108 = 0;
        std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v108);
        if (SHIBYTE(v89) < 0)
        {
          operator delete(v87);
        }

        v31 = v95;
        if (v95 >= v96)
        {
          v33 = __p;
          v34 = v95 - __p;
          v35 = (v95 - __p) >> 4;
          v36 = v35 + 1;
          if ((v35 + 1) >> 60)
          {
            std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
          }

          v37 = v96 - __p;
          if ((v96 - __p) >> 3 > v36)
          {
            v36 = v37 >> 3;
          }

          v38 = v37 >= 0x7FFFFFFFFFFFFFF0;
          v39 = 0xFFFFFFFFFFFFFFFLL;
          if (!v38)
          {
            v39 = v36;
          }

          p_p = &__p;
          if (v39)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>>(&__p, v39);
          }

          v40 = (16 * v35);
          *v40 = 0;
          v40[1] = 0;
          p_shared_weak_owners = (16 * v35 + 16);
          memcpy(0, v33, v34);
          v41 = __p;
          v42 = v96;
          __p = 0;
          v95 = p_shared_weak_owners;
          v96 = 0;
          *&v109 = v41;
          *(&v109 + 1) = v42;
          *(&v108 + 1) = v41;
          *&v108 = v41;
          std::__split_buffer<std::shared_ptr<MIL::IROperation>>::~__split_buffer(&v108);
        }

        else
        {
          v95->__vftable = 0;
          v31->__shared_owners_ = 0;
          p_shared_weak_owners = &v31->__shared_weak_owners_;
        }

        v95 = p_shared_weak_owners;
        v43 = [[SNNMILNamedValue alloc] initWithName:v30];
        [v66 addObject:v43];
        [(NSMutableArray *)self->_outputNames addObject:v30];
      }

      v24 = [v64 countByEnumeratingWithState:&v90 objects:v112 count:16];
    }

    while (v24);
  }

  v108 = 0u;
  v109 = 0u;
  LODWORD(p_p) = 1065353216;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v69 = attributesCopy;
  v44 = [v69 countByEnumeratingWithState:&v83 objects:v111 count:16];
  if (v44)
  {
    v45 = *v84;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v84 != v45)
        {
          objc_enumerationMutation(v69);
        }

        v47 = *(*(&v83 + 1) + 8 * m);
        v48 = [v69 objectForKeyedSubscript:v47];
        WeakRetained = objc_loadWeakRetained(&self->_context);
        if (v48)
        {
          [v48 milValueWithContext:WeakRetained];
        }

        else
        {
          v82 = 0;
        }

        if (v47)
        {
          [v47 cxxString];
        }

        else
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
        }

        v77 = &v79;
        v107 = &v82;
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<std::unique_ptr<MIL::IRValue const> &&>>(&v108, &v79);
        if (SHIBYTE(v81) < 0)
        {
          operator delete(v79);
        }

        v50 = v82;
        v82 = 0;
        if (v50)
        {
          (*(*v50 + 8))(v50);
        }
      }

      v44 = [v69 countByEnumeratingWithState:&v83 objects:v111 count:16];
    }

    while (v44);
  }

  v51 = objc_loadWeakRetained(&self->_context);
  [v51 platformOpset];
  if (namedCopy)
  {
    [namedCopy cxxString];
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v81 = 0;
  }

  MIL::IROpset::TryGetOperatorSharedPtr();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v79);
  }

  if (!v77)
  {
    __assert_rtn("[SNNMILFunctionBuilder outputsByApplyingOperatorNamed:toInputs:outputs:attributes:location:]", "SNNMILBuilders.mm", 324, "op");
  }

  if (locationCopy)
  {
    [locationCopy milLocation];
    v52 = v74;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v71, "");
    MIL::TextFileLocation::Make();
    v52 = v73;
    v73 = 0;
    v74 = v52;
  }

  v75 = v52;
  if (v52)
  {
    operator new();
  }

  v76 = 0;
  v74 = 0;
  v70 = v78;
  if (v78)
  {
    atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v79 = 0;
  v80 = 0;
  v81 = 0;
  MIL::IROperation::Make();
  v107 = &v79;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v107);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  v53 = v74;
  v74 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  if (!locationCopy)
  {
    v54 = v73;
    v73 = 0;
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }

    if (v72 < 0)
    {
      operator delete(v71);
    }
  }

  v79 = v82;
  if (v82)
  {
    operator new();
  }

  v80 = 0;
  v82 = 0;
  std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](&self->_operations.__begin_, &v79);
  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
  }

  v55 = v66;
  v56 = v82;
  v82 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v78);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v108);
  *&v108 = &__p;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v108);

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&v105, v106[0]);
  v57 = *MEMORY[0x277D85DE8];

  return v55;
}

- (id)outputsByApplyingOperatorNamed:(id)named toInputs:(id)inputs outputs:(id)outputs location:(id)location
{
  namedCopy = named;
  inputsCopy = inputs;
  outputsCopy = outputs;
  locationCopy = location;
  v14 = [MEMORY[0x277CBEC10] mutableCopy];
  v15 = [(SNNMILFunctionBuilder *)self outputsByApplyingOperatorNamed:namedCopy toInputs:inputsCopy outputs:outputsCopy attributes:v14 location:locationCopy];

  return v15;
}

- (id)nextSymbol
{
  v2 = MEMORY[0x277CCACA8];
  symbolCounter = self->_symbolCounter;
  self->_symbolCounter = symbolCounter + 1;
  return [v2 stringWithFormat:@"data_%lu", symbolCounter];
}

- (const)tensorValueTypeWithShape:(id)shape dataType:(unint64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  __p = 0;
  v27 = 0;
  v28 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  shapeCopy = shape;
  v7 = [shapeCopy countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(shapeCopy);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_context);
        v12 = WeakRetained;
        if (WeakRetained)
        {
          [WeakRetained context];
          v13 = v20;
        }

        else
        {
          v13 = 0;
          v20 = 0;
          v21 = 0;
        }

        v14 = MIL::IRConstantDimension::Make(v13, [v10 unsignedIntegerValue]);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        v20 = v14;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, &v20);
      }

      v7 = [shapeCopy countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v7);
  }

  if (type - 1 <= 0xB)
  {
    v15 = dword_25BCBADEC[type - 1];
  }

  v16 = objc_loadWeakRetained(&self->_context);
  [v16 context];
  v17 = MIL::IRTensorValueType::MakeWithShape();
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (unique_ptr<MIL::IRArgument,)milArgumentForSNNMILValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [valueCopy name];
    v6 = name;
    if (name)
    {
      [name cxxString];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    MIL::IRArgument::Make();
    if (v11 < 0)
    {
      operator delete(v10);
    }
  }

  else
  {
    [valueCopy conformsToProtocol:&unk_286D64AF0];
    v7 = valueCopy;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    if (v7)
    {
      [v7 milValueWithContext:WeakRetained];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      operator new();
    }

    MIL::IRArgument::Make();
  }

  return v9;
}

- (BOOL)isUniqueOutputName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    [nameCopy cxxString];
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  begin = self->_outputs.__begin_;
  end = self->_outputs.__end_;
  if (begin != end)
  {
    v8 = begin + 3;
    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v8 - 3), *(v8 - 2));
      }

      else
      {
        v9 = *(v8 - 3);
        __p.__r_.__value_.__r.__words[2] = *(v8 - 1);
        *&__p.__r_.__value_.__l.__data_ = v9;
      }

      if (v22 >= 0)
      {
        v10 = HIBYTE(v22);
      }

      else
      {
        v10 = v21;
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (v10 == size)
      {
        break;
      }

      v15 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      v16 = v8 == end || v15;
      v8 += 3;
      if (v16)
      {
        v17 = !v15;
        goto LABEL_31;
      }
    }

    if (v22 >= 0)
    {
      v13 = &v20;
    }

    else
    {
      v13 = v20;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v15 = memcmp(v13, p_p, v10) == 0;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_25;
  }

  v17 = 1;
LABEL_31:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  return v17;
}

- (SNNMILContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  return self;
}

- (void)constantOperationWithValue:(uint64_t *)a1 name:location:.cold.1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_2(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_0_1(v1);
    (*(v3 + 8))(v2);
  }

  OUTLINED_FUNCTION_2_0();
}

- (void)constantValue:(uint64_t *)a1 name:location:.cold.1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_2(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_0_1(v1);
    (*(v3 + 8))(v2);
  }

  OUTLINED_FUNCTION_2_0();
}

@end