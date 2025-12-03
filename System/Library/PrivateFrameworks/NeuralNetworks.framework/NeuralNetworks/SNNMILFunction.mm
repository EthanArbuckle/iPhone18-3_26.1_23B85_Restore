@interface SNNMILFunction
- (NSArray)inputNames;
- (NSArray)outputNames;
- (SNNMILFunction)initWithFunction:(shared_ptr<MIL:()basic_string<char :()std:(std::allocator<char>> *)std :char_traits<char> IRFunction>)a3 name:;
- (basic_string<char,)name;
- (id).cxx_construct;
- (id)inputWithName:(id)name;
- (id)operationAtIndex:(int64_t)index;
- (int64_t)operationCount;
- (shared_ptr<MIL::IRFunction>)milFunction;
@end

@implementation SNNMILFunction

- (SNNMILFunction)initWithFunction:(shared_ptr<MIL:()basic_string<char :()std:(std::allocator<char>> *)std :char_traits<char> IRFunction>)a3 name:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v10.receiver = self;
  v10.super_class = SNNMILFunction;
  v6 = [(SNNMILFunction *)&v10 init:a3.__ptr_];
  std::string::operator=((v6 + 8), cntrl);
  v7 = *ptr;
  *ptr = 0;
  *(ptr + 1) = 0;
  v8 = *(v6 + 5);
  *(v6 + 2) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v6;
}

- (basic_string<char,)name
{
  if (result[1].__rep_.__s.__data_[7] < 0)
  {
    std::string::__init_copy_ctor_external(retstr, result->__rep_.__l.__size_, *(&result->__rep_.__l + 2));
  }

  else
  {
    *retstr = *(result + 8);
  }

  return result;
}

- (shared_ptr<MIL::IRFunction>)milFunction
{
  cntrl = self->_function.__cntrl_;
  *v2 = self->_function.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (NSArray)inputNames
{
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v4 = (*(*self->_function.__ptr_ + 128))(self->_function.__ptr_);
  v5 = v4 + 1;
  v6 = *v4;
  if (*v4 != v4 + 1)
  {
    do
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:v6 + 4];
      [v3 addObject:v7];

      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v5);
  }

  return v3;
}

- (id)inputWithName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    [nameCopy cxxString];
  }

  else
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
  }

  v6 = (*(*self->_function.__ptr_ + 128))(self->_function.__ptr_);
  v7 = v6 + 1;
  v8 = *v6;
  if (*v6 == v6 + 1)
  {
LABEL_24:
    v19 = 0;
  }

  else
  {
    if (v25 >= 0)
    {
      v9 = HIBYTE(v25);
    }

    else
    {
      v9 = v24;
    }

    if (v25 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    while (1)
    {
      v11 = *(v8 + 55);
      v12 = v11;
      v13 = v8[5];
      if ((v11 & 0x80u) != 0)
      {
        v11 = v8[5];
      }

      if (v9 == v11)
      {
        v14 = v8[4];
        v15 = v12 >= 0 ? v8 + 4 : v8[4];
        if (!memcmp(p_p, v15, v9))
        {
          break;
        }
      }

      v16 = v8[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v8[2];
          v18 = *v17 == v8;
          v8 = v17;
        }

        while (!v18);
      }

      v8 = v17;
      if (v17 == v7)
      {
        goto LABEL_24;
      }
    }

    v21 = v8[7];
    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v14, v13);
    }

    else
    {
      v22 = *(v8 + 4);
    }

    v19 = [SNNMILContext valueForIRValueType:v21 name:&v22];
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  return v19;
}

- (NSArray)outputNames
{
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v4 = (*(*self->_function.__ptr_ + 48))(self->_function.__ptr_);
  v5 = (*(*v4 + 88))(v4);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:v6];
      [v3 addObject:v8];

      v6 += 24;
    }

    while (v6 != v7);
  }

  return v3;
}

- (int64_t)operationCount
{
  v2 = (*(*self->_function.__ptr_ + 48))(self->_function.__ptr_, a2);
  v3 = (*(*v2 + 64))(v2);
  return (*(*v3 + 8) - **v3) >> 4;
}

- (id)operationAtIndex:(int64_t)index
{
  v4 = (*(*self->_function.__ptr_ + 48))(self->_function.__ptr_, a2);
  v5 = *(**(*(*v4 + 64))(v4) + 16 * index);
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:(*(*v5 + 56))(v5)];
  v40 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = (*(*v5 + 160))(v5);
  v10 = *v7;
  v8 = v7 + 1;
  v9 = v10;
  v39 = v6;
  if (v10 == v8)
  {
    goto LABEL_21;
  }

  v38 = v8;
  do
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:v9 + 4];
    v13 = v9[7];
    v12 = v9[8];
    while (v13 != v12)
    {
      v15 = *v13;
      v14 = *(v13 + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(*v15 + 24))(v15))
      {
        v16 = [SNNMILContext valueForIRValue:MIL::IRArgument::GetValue(v15)];
        if (!v16)
        {
          goto LABEL_12;
        }

        v17 = [[SNNMILNamedArgument alloc] initWithKey:v11 value:v16];
        [v40 addObject:v17];
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:MIL::IRArgument::GetName(v15)];
        v17 = [[SNNMILNamedValue alloc] initWithName:v16];
        v18 = [[SNNMILNamedArgument alloc] initWithKey:v11 value:v17];
        [v40 addObject:v18];
      }

LABEL_12:
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v13 += 16;
    }

    v19 = v9[1];
    if (v19)
    {
      do
      {
        v20 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v20 = v9[2];
        v21 = *v20 == v9;
        v9 = v20;
      }

      while (!v21);
    }

    v9 = v20;
  }

  while (v20 != v38);
LABEL_21:
  v22 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = *(MIL::IRObject::GetAttributes(v5) + 16); i; i = *i)
  {
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:i + 2];
    v25 = [SNNMILContext valueForIRValue:i[5]];
    if (v25)
    {
      v26 = [[SNNMILNamedArgument alloc] initWithKey:v24 value:v25];
      [v22 addObject:v26];
    }
  }

  v27 = [MEMORY[0x277CBEBF8] mutableCopy];
  v28 = (*(*v5 + 176))(v5);
  v29 = *v28;
  v30 = *(v28 + 8);
  if (*v28 != v30)
  {
    while (1)
    {
      Type = MIL::IRNamedValueType::GetType(*v29);
      Name = MIL::IRNamedValueType::GetName(*v29);
      if (*(Name + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, *Name, *(Name + 8));
      }

      else
      {
        v33 = *Name;
        v41.__r_.__value_.__r.__words[2] = *(Name + 16);
        *&v41.__r_.__value_.__l.__data_ = v33;
      }

      v34 = [SNNMILContext valueForIRValueType:Type name:&v41];
      v35 = v34;
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v41.__r_.__value_.__l.__data_);
      if (v35)
      {
        goto LABEL_33;
      }

LABEL_34:

      v29 += 2;
      if (v29 == v30)
      {
        goto LABEL_35;
      }
    }

    if (!v34)
    {
      goto LABEL_34;
    }

LABEL_33:
    [v27 addObject:v35];
    goto LABEL_34;
  }

LABEL_35:
  v36 = [[SNNMILOperation alloc] initWithOperatorName:v39 inputs:v40 attributes:v22 outputs:v27];

  return v36;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end