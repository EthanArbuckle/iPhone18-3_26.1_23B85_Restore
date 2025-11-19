void sub_2599A57BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (*(v32 + 31) < 0)
  {
    operator delete(*(v32 + 8));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void MilTranslator::WeightTranslator::WriteConstOp(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MIL::Builder::BlockBuilder::GetContext(&v23, *(a1 + 136));
  v9 = *(a1 + 136);
  std::string::basic_string[abi:ne200100]<0>(&v19, "const");
  v17 = 0;
  v18 = 0;
  MIL::Builder::BlockBuilder::AddOperation();
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v19, *a2, a2[1], (a2[1] - *a2) >> 3);
  MIL::IRTensorValueType::Make();
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a4, *(a4 + 8));
  }

  else
  {
    v15 = *a4;
  }

  MIL::Builder::OperationBuilder::AddOutput();
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v10 = *(a5 + 24);
  MIL::IRTensorValueType::MakeValueFromBlobFile();
  std::string::basic_string[abi:ne200100]<0>(&__p, "val");
  if (v19)
  {
    operator new();
  }

  v19 = 0;
  MIL::Builder::OperationBuilder::SetAttribute();
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  v11 = v19;
  v19 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_2599A5BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v29 - 56);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::Fp16>::resize(void *a1, unint64_t a2, __int16 *a3)
{
  v3 = (a1[1] - *a1) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<MIL::Fp16>::__append(a1, a2 - v3, a3);
  }
}

std::string *std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 24);
  *&this[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  *&this[1].__r_.__value_.__l.__data_ = v7;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[3].__r_.__value_.__r.__words[0] = *(a3 + 2);
    *&this[2].__r_.__value_.__r.__words[1] = v8;
  }

  this[3].__r_.__value_.__l.__size_ = *(a3 + 3);
  return this;
}

void sub_2599A5DA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>::~pair(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100]<MilTranslator::WeightTranslator::WeightFileInfo&,std::vector<unsigned long long>&,0>(std::string *this, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[0] = v7;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&this[1].__r_.__value_.__l.__size_, *a3, a3[1], (a3[1] - *a3) >> 3);
  return this;
}

void sub_2599A5E80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>::pair[abi:ne200100]<true,0>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100](a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v5;
  }

  return a1;
}

std::string *std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[0] = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  return this;
}

void sub_2599A5F78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>,0>(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::find<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>(void *a1, uint64_t a2)
{
  v4 = MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher::operator()(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      v13 = *(i + 39);
      if (v13 >= 0)
      {
        v14 = *(i + 39);
      }

      else
      {
        v14 = i[3];
      }

      v15 = *(a2 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 8);
      }

      if (v14 == v15)
      {
        v17 = v13 >= 0 ? (i + 2) : i[2];
        v18 = *a2;
        v19 = v16 >= 0 ? a2 : *a2;
        if (!memcmp(v17, v19, v14) && MilTranslator::WeightTranslator::WeightRewriteDescription::operator==((i + 5), a2 + 24))
        {
          return i;
        }
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher::operator()(uint64_t a1, uint64_t a2)
{
  v3 = std::__string_hash<char>::operator()[abi:ne200100](&v7, a2);
  for (i = 0; i != 6; ++i)
  {
    v3 ^= MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher::operator()(std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const&)const::filter[i] * *(a2 + 24 + i);
  }

  v5 = *(a2 + 48);
  result = v3 ^ v5;
  if (v5)
  {
    result ^= (29 * *(a2 + 40)) ^ (23 * *(a2 + 32));
  }

  return result;
}

BOOL MilTranslator::WeightTranslator::WeightRewriteDescription::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v3 = v4 == *(a2 + 24);
  if (v4 == *(a2 + 24) && v4 != 0)
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      return *(a1 + 16) == *(a2 + 16);
    }

    return 0;
  }

  return v3;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__emplace_unique_key_args<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>>(void *a1, uint64_t a2)
{
  v4 = MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher::operator()(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__construct_node_hash<std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_30:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  v13 = *(v11 + 39);
  if (v13 >= 0)
  {
    v14 = *(v11 + 39);
  }

  else
  {
    v14 = v11[3];
  }

  v15 = *(a2 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 8);
  }

  if (v14 != v15)
  {
    goto LABEL_30;
  }

  v17 = v13 >= 0 ? (v11 + 2) : v11[2];
  v18 = *a2;
  v19 = v16 >= 0 ? a2 : *a2;
  if (memcmp(v17, v19, v14) || !MilTranslator::WeightTranslator::WeightRewriteDescription::operator==((v11 + 5), a2 + 24))
  {
    goto LABEL_30;
  }

  return v11;
}

void sub_2599A6610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  *&this[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  v6 = *(a2 + 56);
  this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
  *&this[2].__r_.__value_.__r.__words[1] = v6;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  this[3].__r_.__value_.__l.__size_ = *(a2 + 10);
  return this;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::find<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>(void *a1, uint64_t a2)
{
  v4 = MilTranslator::WeightTranslator::WeightInfoShapePairHasher::operator()(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = *(a2 + 24);
    __s2 = *(a2 + 32);
    v16 = *(a2 + 40) - __s2;
    do
    {
      v17 = v11[1];
      if (v17 == v6)
      {
        v18 = *(v11 + 39);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v11[3];
        }

        if (v18 == v13)
        {
          v20 = v19 >= 0 ? (v11 + 2) : v11[2];
          if (!memcmp(v20, v14, v13) && v11[5] == v15)
          {
            v21 = v11[6];
            if (v11[7] - v21 == v16 && !memcmp(v21, __s2, v16))
            {
              return v11;
            }
          }
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v17 >= *&v5)
          {
            v17 %= *&v5;
          }
        }

        else
        {
          v17 &= *&v5 - 1;
        }

        if (v17 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

unint64_t MilTranslator::WeightTranslator::WeightInfoShapePairHasher::operator()(uint64_t a1, void *a2)
{
  v3 = std::__string_hash<char>::operator()[abi:ne200100](&v11, a2);
  v4 = a2[4];
  result = a2[3] ^ v3;
  v6 = a2[5];
  if (v4 != v6)
  {
    v7 = 0;
    v8 = &MilTranslator::WeightTranslator::WeightInfoShapePairHasher::operator()(std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const&)const::filter;
    do
    {
      v9 = -24 * (v7 / 6);
      v10 = *v4++;
      ++v7;
      result ^= v10 * *&v8[v9];
      v8 += 4;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__emplace_unique_key_args<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>>(void *a1, uint64_t a2)
{
  v4 = MilTranslator::WeightTranslator::WeightInfoShapePairHasher::operator()(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_34;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_34:
    std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__construct_node_hash<std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>>();
  }

  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (v12 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v23 = *(a2 + 24);
  __s2 = *(a2 + 32);
  v15 = *(a2 + 40) - __s2;
  while (1)
  {
    v16 = v11[1];
    if (v16 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v16 >= *&v6)
      {
        v16 %= *&v6;
      }
    }

    else
    {
      v16 &= *&v6 - 1;
    }

    if (v16 != v9)
    {
      goto LABEL_34;
    }

LABEL_33:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_34;
    }
  }

  v17 = *(v11 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v11[3];
  }

  if (v17 != v13)
  {
    goto LABEL_33;
  }

  v19 = v18 >= 0 ? (v11 + 2) : v11[2];
  if (memcmp(v19, v14, v13))
  {
    goto LABEL_33;
  }

  if (v11[5] != v23)
  {
    goto LABEL_33;
  }

  v20 = v11[6];
  if (v11[7] - v20 != v15 || memcmp(v20, __s2, v15))
  {
    goto LABEL_33;
  }

  return v11;
}

void sub_2599A6C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,void *>>>::operator()[abi:ne200100](&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2599A6CFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 95) < 0)
    {
      operator delete(__p[9]);
    }

    v3 = __p[6];
    if (v3)
    {
      __p[7] = v3;
      operator delete(v3);
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_pointer<MIL::IRTensorValue const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::IRTensorValue const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRTensorValue const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::vector<MIL::Fp16>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_259A3BEB0)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_259A3BEA0)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_259A3BF60)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_259A3BF50))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_259A3BEB0)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_259A3BEA0)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_259A3BF60)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_259A3BF50))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

void *std::vector<unsigned long long>::assign(void *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_259A3BEB0)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 >= v10;
  v19 = a2 - v10;
  if (v19 != 0 && v18)
  {
    v20 = 0;
    v21 = v9 + 8 * v19;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v9 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_259A3BEB0)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v20 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v20);
    a1[1] = v21;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void ANEMachineIR::Validators::ValidateLiveTensorSize(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  v9 = (*(*a2 + 96))(a2);
  v82 = 0;
  v83 = 0;
  v81 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v81, *v9, v9[1], (v9[1] - *v9) >> 3);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v10 = v82 - v81;
  if (v82 == v81)
  {
LABEL_82:
    MIL::ValidationResult::ValidationResult(a5);
  }

  else
  {
    v62 = a1;
    v11 = 0;
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v82 - v81;
    }

    while (1)
    {
      if (v11 >= v82 - v81)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      if (!(*(*v81[v11] + 16))(v81[v11]))
      {
        break;
      }

      if (v11 >= v82 - v81)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = MIL::IRDimension::AsConstant(v81[v11]);
      v14 = (*(*v13 + 48))(v13);
      v15 = v79;
      if (v79 >= v80)
      {
        v17 = v78;
        v18 = v79 - v78;
        v19 = v79 - v78;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
        }

        v21 = v80 - v78;
        if ((v80 - v78) >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&v78, v22);
        }

        *(8 * v19) = v14;
        v16 = (8 * v19 + 8);
        memcpy(0, v17, v18);
        v23 = v78;
        v78 = 0;
        v79 = v16;
        v80 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v79 = v14;
        v16 = v15 + 1;
      }

      v79 = v16;
      if (v12 == ++v11)
      {
        v24 = v16 - v78;
        if (v16 == v78)
        {
          goto LABEL_82;
        }

        v25 = v24 >> 3;
        v26 = (v24 >> 3) - 1;
        if (v78[v26] <= 0x10000uLL)
        {
          v26 = v25 - 2;
          if (v25 < 2)
          {
            goto LABEL_82;
          }

          if (*v78 <= 0x1000uLL)
          {
            if (v24 == 16)
            {
              goto LABEL_82;
            }

            if (v78[v26] <= 0x4000uLL)
            {
              if (v25 < 4)
              {
                goto LABEL_82;
              }

              v26 = v25 - 3;
              if (v78[v25 - 3] <= 0x1000uLL)
              {
                if (v24 == 32 || v78[1] <= 0x4000uLL)
                {
                  goto LABEL_82;
                }

                v26 = 1;
              }
            }
          }

          else
          {
            v26 = 0;
          }
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&v73);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, "Dimension extent invalid for parameter ", 39);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "", 1);
        v29 = *(a3 + 23);
        if (v29 >= 0)
        {
          v30 = a3;
        }

        else
        {
          v30 = *a3;
        }

        if (v29 >= 0)
        {
          v31 = *(a3 + 23);
        }

        else
        {
          v31 = *(a3 + 8);
        }

        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "", 1);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " at index ", 10);
        std::to_string(&v68, v26);
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v68;
        }

        else
        {
          v35 = v68.__r_.__value_.__r.__words[0];
        }

        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v68.__r_.__value_.__l.__size_;
        }

        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, size);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " into tensor of rank ", 21);
        std::to_string(&v67, v10);
        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v67;
        }

        else
        {
          v39 = v67.__r_.__value_.__r.__words[0];
        }

        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v40 = v67.__r_.__value_.__l.__size_;
        }

        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " of ", 5);
        v43 = *(a4 + 23);
        if (v43 >= 0)
        {
          v44 = a4;
        }

        else
        {
          v44 = *a4;
        }

        if (v43 >= 0)
        {
          v45 = *(a4 + 23);
        }

        else
        {
          v45 = *(a4 + 8);
        }

        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ".", 2);
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        v47 = v62[1];
        v65 = *v62;
        v66 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::stringbuf::str();
        MEMORY[0x259CA8EE0](a5, &v65, 315, &__p);
        if (v64 < 0)
        {
          operator delete(__p);
        }

        v48 = v66;
        if (v66)
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v73);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, "Shape is not statically known at dimension ", 43);
    v50 = MEMORY[0x259CA9630](v49, v11);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " for parameter ", 16);
    v52 = *(a3 + 23);
    if (v52 >= 0)
    {
      v53 = a3;
    }

    else
    {
      v53 = *a3;
    }

    if (v52 >= 0)
    {
      v54 = *(a3 + 23);
    }

    else
    {
      v54 = *(a3 + 8);
    }

    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " in operation ", 16);
    v57 = *(a4 + 23);
    if (v57 >= 0)
    {
      v58 = a4;
    }

    else
    {
      v58 = *a4;
    }

    if (v57 >= 0)
    {
      v59 = *(a4 + 23);
    }

    else
    {
      v59 = *(a4 + 8);
    }

    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v58, v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, ".", 2);
    v61 = v62[1];
    v71 = *v62;
    v72 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::stringbuf::str();
    MEMORY[0x259CA8EE0](a5, &v71, 302, &v69);
    if (v70 < 0)
    {
      operator delete(v69);
    }

    v48 = v72;
    if (v72)
    {
LABEL_56:
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

LABEL_57:
    v73 = *MEMORY[0x277D82828];
    *(&v73 + *(v73 - 24)) = *(MEMORY[0x277D82828] + 24);
    v74 = MEMORY[0x277D82878] + 16;
    if (v76 < 0)
    {
      operator delete(v75[7].__locale_);
    }

    v74 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v75);
    std::ostream::~ostream();
    MEMORY[0x259CA96D0](&v77);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }
}

void sub_2599A7DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, std::__shared_weak_count *a40, char a41)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  std::ostringstream::~ostringstream(&a41);
  v43 = *(v41 - 136);
  if (v43)
  {
    *(v41 - 128) = v43;
    operator delete(v43);
  }

  v44 = *(v41 - 112);
  if (v44)
  {
    *(v41 - 104) = v44;
    operator delete(v44);
  }

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

void sub_2599A8004(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x259CA96D0](v1);
  _Unwind_Resume(a1);
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
  MEMORY[0x259CA96D0](a1 + 112);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259CA9680](a1 + 8);
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

void sub_2599A81E0(_Unwind_Exception *a1)
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
  MEMORY[0x259CA9600](v13, a1);
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

  MEMORY[0x259CA9610](v13);
  return a1;
}

void sub_2599A8450(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259CA9610](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2599A8430);
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

void sub_2599A8684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70[4] = *MEMORY[0x277D85DE8];
  v70[0] = &unk_286AB1D98;
  v70[3] = v70;
  v4 = (*(*a1 + 208))(a1);
  v5 = **v4;
  v6 = (*v4)[1];
  if (v5 != v6)
  {
LABEL_2:
    v7 = (*(**v5 + 56))();
    v9 = **v7;
    v8 = (*v7)[1];
    while (1)
    {
      if (v9 == v8)
      {
        v5 += 16;
        if (v5 != v6)
        {
          goto LABEL_2;
        }

        break;
      }

      v10 = *v9;
      v11 = (*(**v9 + 56))(*v9);
      v12 = *(v11 + 23);
      if (v12 < 0)
      {
        if (*(v11 + 8) != 4)
        {
          goto LABEL_10;
        }

        v11 = *v11;
      }

      else if (v12 != 4)
      {
        goto LABEL_10;
      }

      if (*v11 == 1970038130)
      {
        *__p = 0;
        std::string::basic_string[abi:ne200100]<0>(&__p[8], &unk_259A4D977);
        *a2 = 0;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = v65;
        v29 = a3;
        v30 = &unk_286AB1A08;
        goto LABEL_73;
      }

LABEL_10:
      v13 = (*(*v10 + 56))(v10);
      v14 = *(v13 + 23);
      if (v14 < 0)
      {
        if (*(v13 + 8) != 6)
        {
          goto LABEL_19;
        }

        v13 = *v13;
      }

      else if (v14 != 6)
      {
        goto LABEL_19;
      }

      if (*v13 == 1701734764 && *(v13 + 4) == 29281)
      {
        *__p = 0;
        std::string::basic_string[abi:ne200100]<0>(&__p[8], &unk_259A4D977);
        *a2 = 0;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = v65;
        v29 = a3;
        v30 = &unk_286AB1A98;
LABEL_73:
        *v29 = v30;
        v29[3] = v29;
        goto LABEL_122;
      }

LABEL_19:
      v16 = (*(*v10 + 56))(v10);
      v17 = *(v16 + 23);
      if (v17 < 0)
      {
        if (*(v16 + 8) != 4)
        {
          goto LABEL_25;
        }

        v16 = *v16;
      }

      else if (v17 != 4)
      {
        goto LABEL_25;
      }

      if (*v16 == 1752064372)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "scale");
        ParameterValue = MIL::IROperation::TryGetParameterValue();
        v32 = 1.0;
        if (ParameterValue)
        {
          if ((*(*ParameterValue + 40))(ParameterValue))
          {
            v33 = MEMORY[0x259CA9400]();
            if (v33)
            {
              v32 = *v33;
            }
          }
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = 0;
        std::string::basic_string[abi:ne200100]<0>(&__p[8], &unk_259A4D977);
        *a2 = *__p;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = v65;
        *__p = 0x40A0000000000000;
        *&__p[8] = 0;
        *&__p[12] = v32;
        v68 = ilogbf(8.0);
        for (i = 4; i != 37; ++i)
        {
          v35 = tanhf(((i - 4) * 0.125) + 0.0);
          v69 = MIL::Fp16::FromFloat(v36, v32 * v35);
          MIL::Fp16::GetFloat(&v69);
          *&__p[4 * i] = v37;
        }

        *&v67 = 0;
        *(&v67 + 2) = v32 - v66;
        *(&v67 + 3) = v66 + ((v32 - v66) * -4.0);
        operator new();
      }

LABEL_25:
      v18 = (*(*v10 + 56))(v10);
      v19 = *(v18 + 23);
      if (v19 < 0)
      {
        if (*(v18 + 8) != 7)
        {
          goto LABEL_34;
        }

        v18 = *v18;
      }

      else if (v19 != 7)
      {
        goto LABEL_34;
      }

      if (*v18 == 1835493747 && *(v18 + 3) == 1684631405)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "scale");
        v38 = MIL::IROperation::TryGetParameterValue();
        v39 = 1.0;
        if (v38)
        {
          if ((*(*v38 + 40))(v38))
          {
            v40 = MEMORY[0x259CA9400]();
            if (v40)
            {
              v39 = *v40;
            }
          }
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = 0;
        std::string::basic_string[abi:ne200100]<0>(&__p[8], &unk_259A4D977);
        *a2 = *__p;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = v65;
        *__p = 0x41052000C11F0000;
        *&__p[8] = 0;
        *&__p[12] = v39;
        v68 = ilogbf(2.0);
        for (j = 4; j != 37; ++j)
        {
          v42 = expf(-(((j - 4) * 0.5) + -8.0));
          v69 = MIL::Fp16::FromFloat(v43, v39 / (v42 + 1.0));
          MIL::Fp16::GetFloat(&v69);
          *&__p[4 * j] = v44;
        }

        *&v67 = *&__p[16] / 1.9375;
        *(&v67 + 1) = *&__p[16] - ((*&__p[16] / 1.9375) * -8.0);
        *(&v67 + 2) = (v39 - v66) / 0.32031;
        *(&v67 + 3) = v66 + (*(&v67 + 2) * -8.0);
        operator new();
      }

LABEL_34:
      v21 = (*(*v10 + 56))(v10);
      v22 = *(v21 + 23);
      if (v22 < 0)
      {
        if (*(v21 + 8) != 4)
        {
          goto LABEL_40;
        }

        v21 = *v21;
      }

      else if (v22 != 4)
      {
        goto LABEL_40;
      }

      if (*v21 == 1953657203)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "scale");
        v45 = MIL::IROperation::TryGetParameterValue();
        v46 = 1.0;
        if (v45)
        {
          if ((*(*v45 + 40))(v45))
          {
            v47 = MEMORY[0x259CA9400]();
            if (v47)
            {
              v46 = *v47;
            }
          }
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = 0;
        std::string::basic_string[abi:ne200100]<0>(&__p[8], &unk_259A4D977);
        *a2 = *__p;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = v65;
        *__p = xmmword_259A4AAE0;
        Float = ilogbf(16.0);
        v68 = Float;
        for (k = 4; k != 37; ++k)
        {
          v69 = MIL::Fp16::FromFloat(Float, v46 * sqrtf(((k - 4) * 0.0625) + 0.0));
          Float = MIL::Fp16::GetFloat(&v69);
          *&__p[4 * k] = v50;
        }

        v67 = 0uLL;
        operator new();
      }

LABEL_40:
      v23 = (*(*v10 + 56))(v10);
      v24 = *(v23 + 23);
      if (v24 < 0)
      {
        if (*(v23 + 8) != 5)
        {
          goto LABEL_49;
        }

        v23 = *v23;
      }

      else if (v24 != 5)
      {
        goto LABEL_49;
      }

      if (*v23 == 1818587756 && *(v23 + 4) == 117)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "scale");
        v51 = MIL::IROperation::TryGetParameterValue();
        if (v51)
        {
          v52 = (*(*v51 + 40))(v51);
          if (v52)
          {
            v54 = MEMORY[0x259CA9400](v52, v53);
            if (v54)
            {
              v55 = *v54;
            }
          }
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
        v56 = MIL::IROperation::TryGetParameterValue();
        if (v56)
        {
          v57 = (*(*v56 + 40))(v56);
          if (v57)
          {
            v59 = MEMORY[0x259CA9400](v57, v58);
            if (v59)
            {
              v60 = *v59;
            }
          }
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = 0;
        std::string::basic_string[abi:ne200100]<0>(&__p[8], &unk_259A4D977);
        *a2 = *__p;
        if (*(a2 + 31) < 0)
        {
          operator delete(*(a2 + 8));
        }

        *(a2 + 8) = *&__p[8];
        *(a2 + 24) = v65;
        operator new();
      }

LABEL_49:
      v26 = (*(*v10 + 56))(v10);
      v27 = *(v26 + 23);
      if (v27 < 0)
      {
        if (*(v26 + 8) != 15)
        {
          goto LABEL_58;
        }

        v26 = *v26;
      }

      else if (v27 != 15)
      {
        goto LABEL_58;
      }

      if (*v26 != 0x65636569705F656ELL || *(v26 + 7) != 0x32765F6573697765)
      {
LABEL_58:
        *__p = 3;
        (*(*v10 + 56))(v10);
        std::operator+<char>();
        goto LABEL_59;
      }

      *__p = 3;
      std::string::basic_string[abi:ne200100]<0>(&__p[8], "ne_piecewise_v2");
LABEL_59:
      *a2 = *__p;
      if (*(a2 + 31) < 0)
      {
        operator delete(*(a2 + 8));
      }

      *(a2 + 8) = *&__p[8];
      *(a2 + 24) = v65;
      v9 += 2;
    }
  }

  *__p = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p[8], &unk_259A4D977);
  *a2 = 0;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = *&__p[8];
  *(a2 + 24) = v65;
  std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](a3, v70);
LABEL_122:
  result = std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v70);
  v62 = *MEMORY[0x277D85DE8];
  return result;
}

void MIL::ANEMachineIR::Interpreter::NeActivationCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v94 = *MEMORY[0x277D85DE8];
  v90 = 0uLL;
  v91 = 0;
  MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v89, v93);
  if (!v89)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, __p);
    v8 = InterpretedTensorValue;
    if (v88 < 0)
    {
      operator delete(__p[0]);
      if (v8)
      {
LABEL_6:
        OutputType = MIL::IROperation::GetOutputType(a1);
        v10 = (*(*OutputType + 24))(OutputType);
        v11 = v10;
        if (v10)
        {
          v12 = (*(*v10 + 88))(v10);
          v13 = (*(*v8 + 32))(v8);
          if (v12 == (*(*v13 + 88))(v13))
          {
            NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(v11, v14);
            v16 = std::string::basic_string[abi:ne200100]<0>(__p, "post_scale");
            v17 = MIL::Fp16::FromFloat(v16, 1.0);
            ParameterValue = MIL::IROperation::TryGetParameterValue();
            if (ParameterValue)
            {
              if ((*(*ParameterValue + 40))(ParameterValue))
              {
                v19 = MEMORY[0x259CA93C0]();
                if (v19)
                {
                  v17 = *v19;
                }
              }
            }

            LOWORD(__e[0]) = v17;
            MIL::Fp16::GetFloat(__e);
            v21 = v20;
            if (v88 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "post_right_shift");
            v22 = MIL::IROperation::TryGetParameterValue();
            if (v22 && (*(*v22 + 40))(v22) && (v23 = MEMORY[0x259CA93E0]()) != 0)
            {
              v24 = *v23;
            }

            else
            {
              v24 = 0;
            }

            if (v88 < 0)
            {
              operator delete(__p[0]);
            }

            v27 = (*(*v8 + 32))(v8);
            if ((*(*v27 + 88))(v27) == 4)
            {
              v28 = 20;
            }

            else
            {
              v28 = 10;
            }

            v29 = exp2(v28);
            v30 = 1.0;
            if (v24)
            {
              v31 = 1;
            }

            else
            {
              v31 = v21 != 1.0;
            }

            if (v31)
            {
              v30 = exp2(-(v28 + v24)) * v21;
            }

            v32 = v29;
            if ((*(*v11 + 88))(v11) == 4)
            {
              std::vector<MIL::Fp16>::vector[abi:ne200100](__p, NumberOfElementsFromStaticTensorShape);
              if (NumberOfElementsFromStaticTensorShape)
              {
                for (i = 0; i != NumberOfElementsFromStaticTensorShape; ++i)
                {
                  *__e = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                  v86 = v34;
                  v35 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::operator[](__e, i);
                  MIL::Fp16::GetFloat(v35);
                  v37 = v36;
                  if (v31)
                  {
                    v38 = ilogbf(v36);
                    if (v38 <= -14)
                    {
                      v39 = -14;
                    }

                    else
                    {
                      v39 = v38;
                    }

                    v40 = ilogbf(1.0);
                    if (v40 <= -14)
                    {
                      v41 = -14;
                    }

                    else
                    {
                      v41 = v40;
                    }

                    v42 = 0.0;
                    v43 = 0.0;
                    if (v41 + v39 >= -20)
                    {
                      v44 = llroundf(v37 * v32);
                      v43 = 0.0;
                      if (v44)
                      {
                        __e[0] = 0;
                        v45 = frexp(v44, __e);
                        v46 = ldexp(v45, 11);
                        v43 = ldexp(round(v46), __e[0] - 11);
                      }
                    }

                    v47 = v30 * v43;
                    if (v47 != 0.0)
                    {
                      __e[0] = 0;
                      v48 = frexp(v47, __e);
                      v49 = ldexp(v48, 11);
                      v42 = ldexp(round(v49), __e[0] - 11);
                    }
                  }

                  else
                  {
                    v42 = v36;
                  }

                  v50 = std::function<float ()(float)>::operator()(v93, v42);
                  v52 = MIL::Fp16::FromFloat(v50, v51);
                  *(__p[0] + i) = v52;
                }
              }

              (*(*a1 + 200))(__e, a1);
              v53 = *__e;
              if (v86 == *__e)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              MIL::IRTensorValueType::MakeFloat16Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v53, &v92);
            }

            else if ((*(*v11 + 88))(v11) == 9)
            {
              std::vector<signed char>::vector[abi:ne200100](__p, NumberOfElementsFromStaticTensorShape);
              if (NumberOfElementsFromStaticTensorShape)
              {
                for (j = 0; j != NumberOfElementsFromStaticTensorShape; ++j)
                {
                  *__e = MIL::IRTensorValue::GetDataView<signed char>();
                  v86 = v55;
                  v56 = *MIL::Util::Span<signed char const,18446744073709551615ul>::operator[](__e, j);
                  v57 = v56;
                  if (v31)
                  {
                    v58 = ilogbf(v56);
                    if (v58 <= -14)
                    {
                      v59 = -14;
                    }

                    else
                    {
                      v59 = v58;
                    }

                    v60 = ilogbf(1.0);
                    if (v60 <= -14)
                    {
                      v61 = -14;
                    }

                    else
                    {
                      v61 = v60;
                    }

                    v62 = 0.0;
                    v63 = 0.0;
                    if (v61 + v59 >= -20)
                    {
                      v64 = llroundf(v32 * v57);
                      v63 = 0.0;
                      if (v64)
                      {
                        __e[0] = 0;
                        v65 = frexp(v64, __e);
                        v66 = ldexp(v65, 11);
                        v63 = ldexp(round(v66), __e[0] - 11);
                      }
                    }

                    v67 = v30 * v63;
                    if (v67 != 0.0)
                    {
                      __e[0] = 0;
                      v68 = frexp(v67, __e);
                      v69 = ldexp(v68, 11);
                      v62 = ldexp(round(v69), __e[0] - 11);
                    }
                  }

                  else
                  {
                    v62 = v56;
                  }

                  std::function<float ()(float)>::operator()(v93, v62);
                  if (v70 == INFINITY)
                  {
                    LOBYTE(v71) = 127;
                  }

                  else if (v70 == -INFINITY)
                  {
                    LOBYTE(v71) = 0x80;
                  }

                  else
                  {
                    v71 = llroundf(v70);
                    if (v71 >= 127)
                    {
                      v71 = 127;
                    }

                    if (v71 <= -128)
                    {
                      LOBYTE(v71) = 0x80;
                    }
                  }

                  *(__p[0] + j) = v71;
                }
              }

              (*(*a1 + 200))(__e, a1);
              v72 = *__e;
              if (v86 == *__e)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              MIL::IRTensorValueType::MakeInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v72, &v92);
            }

            else
            {
              if ((*(*v11 + 88))(v11) != 14)
              {
                v83 = "Unsupported dtype.";
                v82 = 3;
LABEL_99:
                *a3 = v82;
                std::string::basic_string[abi:ne200100]<0>((a3 + 8), v83);
                goto LABEL_100;
              }

              std::vector<unsigned char>::vector[abi:ne200100](__p, NumberOfElementsFromStaticTensorShape);
              if (NumberOfElementsFromStaticTensorShape)
              {
                for (k = 0; k != NumberOfElementsFromStaticTensorShape; ++k)
                {
                  *__e = MIL::IRTensorValue::GetDataView<unsigned char>();
                  v86 = v74;
                  MIL::Util::Span<unsigned char const,18446744073709551615ul>::operator[](__e, k);
                  *__e = MIL::IRTensorValue::GetDataView<unsigned char>();
                  v86 = v75;
                  LOBYTE(v76) = *MIL::Util::Span<unsigned char const,18446744073709551615ul>::operator[](__e, k);
                  std::function<float ()(float)>::operator()(v93, v76);
                  if (v77 == INFINITY)
                  {
                    LOBYTE(v78) = -1;
                  }

                  else if (v77 == -INFINITY)
                  {
                    LOBYTE(v78) = 0;
                  }

                  else
                  {
                    v79 = llroundf(v77);
                    if (v79 >= 255)
                    {
                      v79 = 255;
                    }

                    v78 = v79 & ~(v79 >> 31);
                  }

                  *(__p[0] + k) = v78;
                }
              }

              (*(*a1 + 200))(__e, a1);
              v80 = *__e;
              if (v86 == *__e)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              MIL::IRTensorValueType::MakeUInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v80, &v92);
            }

            v81 = v92;
            v92 = 0;
            if (v81)
            {
              (*(*v81 + 1))(v81);
            }

            v92 = __e;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v92);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            v82 = 0;
            v83 = &unk_259A4D977;
            goto LABEL_99;
          }

          v25 = "ne_activation with different input and output dtypes (with casting) is not implemented in the interpreted mode.";
          v26 = 4;
        }

        else
        {
          v25 = "Output type is not a tensor.";
          v26 = 3;
        }

        *a3 = v26;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), v25);
        goto LABEL_100;
      }
    }

    else if (InterpretedTensorValue)
    {
      goto LABEL_6;
    }

    *a3 = 3;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Value is not a tensor.");
    goto LABEL_100;
  }

  *a3 = 1;
  v6 = (a3 + 8);
  if (SHIBYTE(v91) < 0)
  {
    std::string::__init_copy_ctor_external(v6, v90, *(&v90 + 1));
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = v90;
    v6->__r_.__value_.__r.__words[2] = v91;
  }

LABEL_100:
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v93);
  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90);
  }

  v84 = *MEMORY[0x277D85DE8];
}

void sub_2599A9D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *a26, char a27)
{
  v28 = a26;
  a26 = 0;
  if (v28)
  {
    MIL::ANEMachineIR::Interpreter::TransposeCpu::Run(v28);
  }

  a26 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a26);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&a27);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::ReluFunction(MIL::IROperation const&)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::ReluFunction(MIL::IROperation const&)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::LinearFunction(MIL::IROperation const&)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::LinearFunction(MIL::IROperation const&)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_0>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB1B18;
  result = *(a1 + 120);
  v3 = *(a1 + 136);
  v4 = *(a1 + 152);
  *(a2 + 164) = *(a1 + 164);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v9;
  *(a2 + 72) = v8;
  *(a2 + 56) = v7;
  *(a2 + 152) = v4;
  *(a2 + 136) = v3;
  *(a2 + 120) = result;
  *(a2 + 178) = 0;
  return result;
}

double std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_0>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  v3 = *a2;
  v4 = fabsf(*a2);
  v5 = *(a1 + 172);
  *v6.i64 = ldexp(32.0, -v5);
  if (v4 >= *(a1 + 12))
  {
    v7.i32[0] = *(a1 + 20);
    goto LABEL_21;
  }

  if (v4 <= *(a1 + 8))
  {
    v7.i32[0] = *(a1 + 16);
    goto LABEL_21;
  }

  v8 = *v6.i64;
  if (v4 >= v8)
  {
    v22 = *(a1 + 164);
    v23 = *(a1 + 168);
LABEL_16:
    v24 = v4 * v22;
    v7.i64[0] = 0;
    v25 = 0.0;
    if (v24 != 0.0)
    {
      __e = 0;
      v26 = frexp(v24, &__e);
      v27 = ldexp(v26, 11);
      *v6.i64 = ldexp(round(v27), __e - 11);
      v7.i64[0] = 0;
      v25 = *v6.i64;
    }

    v21 = v23 + v25;
    goto LABEL_19;
  }

  if (v3 == 0.0)
  {
    v22 = *(a1 + 156);
    v23 = *(a1 + 160);
    goto LABEL_16;
  }

  v32 = 0.0;
  v9 = ldexpf(v4, v5);
  v10 = modff(fabsf(v9), &v32);
  v11 = v32 & 0x1F;
  if (v32 <= 0)
  {
    v11 = -(-v32 & 0x1F);
  }

  v12 = a1 + 4 * v11;
  v13 = *(v12 + 24);
  v14 = *(v12 + 28) - v13;
  v15 = 0.0;
  v16 = 0.0;
  if (v14 != 0.0)
  {
    __e = 0;
    v17 = frexp(v14, &__e);
    v18 = ldexp(v17, 11);
    *v6.i64 = ldexp(round(v18), __e - 11);
    v16 = *v6.i64;
  }

  if ((v10 * v16) != 0.0)
  {
    __e = 0;
    v19 = frexp((v10 * v16), &__e);
    v20 = ldexp(v19, 11);
    *v6.i64 = ldexp(round(v20), __e - 11);
    v15 = *v6.i64;
  }

  v21 = v13 + v15;
  v7.i64[0] = 0;
LABEL_19:
  if (v21 != 0.0)
  {
    __e = 0;
    v28 = frexp(v21, &__e);
    v29 = ldexp(v28, 11);
    *v6.i64 = ldexp(round(v29), __e - 11);
    *v7.i32 = *v6.i64;
  }

LABEL_21:
  v6.i32[0] = 1.0;
  if (v3 < 0.0)
  {
    *v6.i32 = -1.0;
  }

  v30.i64[0] = 0x8000000080000000;
  v30.i64[1] = 0x8000000080000000;
  *&result = vbslq_s8(v30, v7, v6).u64[0];
  return result;
}

uint64_t std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_1,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_1>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB1B98;
  result = *(a1 + 120);
  v3 = *(a1 + 136);
  v4 = *(a1 + 152);
  *(a2 + 164) = *(a1 + 164);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v9;
  *(a2 + 72) = v8;
  *(a2 + 56) = v7;
  *(a2 + 152) = v4;
  *(a2 + 136) = v3;
  *(a2 + 120) = result;
  *(a2 + 178) = 0;
  return result;
}

double std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_1,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_1>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  v3 = *a2;
  v4 = fabsf(*a2);
  v5 = *(a1 + 172);
  *v6.i64 = ldexp(32.0, -v5);
  if (v4 >= *(a1 + 12))
  {
    v7.i32[0] = *(a1 + 20);
    goto LABEL_21;
  }

  if (v4 <= *(a1 + 8))
  {
    v7.i32[0] = *(a1 + 16);
    goto LABEL_21;
  }

  v8 = *v6.i64;
  if (v4 >= v8)
  {
    v22 = *(a1 + 164);
    v23 = *(a1 + 168);
LABEL_16:
    v24 = v4 * v22;
    v7.i64[0] = 0;
    v25 = 0.0;
    if (v24 != 0.0)
    {
      __e = 0;
      v26 = frexp(v24, &__e);
      v27 = ldexp(v26, 11);
      *v6.i64 = ldexp(round(v27), __e - 11);
      v7.i64[0] = 0;
      v25 = *v6.i64;
    }

    v21 = v23 + v25;
    goto LABEL_19;
  }

  if (v3 == 0.0)
  {
    v22 = *(a1 + 156);
    v23 = *(a1 + 160);
    goto LABEL_16;
  }

  v32 = 0.0;
  v9 = ldexpf(v4, v5);
  v10 = modff(fabsf(v9), &v32);
  v11 = v32 & 0x1F;
  if (v32 <= 0)
  {
    v11 = -(-v32 & 0x1F);
  }

  v12 = a1 + 4 * v11;
  v13 = *(v12 + 24);
  v14 = *(v12 + 28) - v13;
  v15 = 0.0;
  v16 = 0.0;
  if (v14 != 0.0)
  {
    __e = 0;
    v17 = frexp(v14, &__e);
    v18 = ldexp(v17, 11);
    *v6.i64 = ldexp(round(v18), __e - 11);
    v16 = *v6.i64;
  }

  if ((v10 * v16) != 0.0)
  {
    __e = 0;
    v19 = frexp((v10 * v16), &__e);
    v20 = ldexp(v19, 11);
    *v6.i64 = ldexp(round(v20), __e - 11);
    v15 = *v6.i64;
  }

  v21 = v13 + v15;
  v7.i64[0] = 0;
LABEL_19:
  if (v21 != 0.0)
  {
    __e = 0;
    v28 = frexp(v21, &__e);
    v29 = ldexp(v28, 11);
    *v6.i64 = ldexp(round(v29), __e - 11);
    *v7.i32 = *v6.i64;
  }

LABEL_21:
  v6.i32[0] = -1.0;
  if (v3 < 0.0)
  {
    *v6.i32 = 1.0;
  }

  v30.i64[0] = 0x8000000080000000;
  v30.i64[1] = 0x8000000080000000;
  *&result = vbslq_s8(v30, v7, v6).u64[0];
  return result;
}

uint64_t std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_1,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::TanhFunction(float)::$_1>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::SigmoidFunction(float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::SigmoidFunction(float)::$_0>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB1C18;
  result = *(a1 + 120);
  v3 = *(a1 + 136);
  v4 = *(a1 + 152);
  *(a2 + 164) = *(a1 + 164);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v9;
  *(a2 + 72) = v8;
  *(a2 + 56) = v7;
  *(a2 + 152) = v4;
  *(a2 + 136) = v3;
  *(a2 + 120) = result;
  *(a2 + 178) = 0;
  return result;
}

uint64_t std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::SigmoidFunction(float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::SigmoidFunction(float)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float MIL::ANEMachineIR::Interpreter::anonymous namespace::ane_activation_lut<false,(MIL::ANEMachineIR::Interpreter::anonymous namespace::LutType)1,(MIL::ANEMachineIR::Interpreter::anonymous namespace::LutOutSign)0>(uint64_t a1, float a2)
{
  v4 = *(a1 + 164);
  v5 = ldexp(16.0, -v4);
  if (*(a1 + 4) <= a2)
  {
    return *(a1 + 12);
  }

  if (*a1 >= a2)
  {
    return *(a1 + 8);
  }

  v6 = v5;
  if (v6 <= a2)
  {
    v14 = *(a1 + 156);
    v15 = *(a1 + 160);
LABEL_14:
    v16 = v14 * a2;
    v13 = 0.0;
    v17 = 0.0;
    if (v16 != 0.0)
    {
      __e = 0;
      v18 = frexp(v16, &__e);
      v19 = ldexp(v18, 11);
      v17 = ldexp(round(v19), __e - 11);
    }

    v20 = v15 + v17;
    goto LABEL_23;
  }

  if (-v6 >= a2)
  {
    v14 = *(a1 + 148);
    v15 = *(a1 + 152);
    goto LABEL_14;
  }

  v33 = 0.0;
  v7 = ldexpf(a2, v4);
  v8 = modff(fabsf(v7), &v33);
  if (v33 <= 0)
  {
    v9 = -(-v33 & 0xF);
  }

  else
  {
    v9 = v33 & 0xF;
  }

  v10 = a1 + 16;
  if (a2 >= 0.0)
  {
    v11 = *(v10 + 4 * (v9 + 17));
    v12 = v9 + 16;
  }

  else
  {
    v11 = *(v10 + 4 * (15 - v9));
    v12 = 16 - v9;
  }

  v21 = *(v10 + 4 * v12);
  v22 = v11 - v21;
  v23 = 0.0;
  if (v22 != 0.0)
  {
    __e = 0;
    v24 = frexp(v22, &__e);
    v25 = ldexp(v24, 11);
    v23 = ldexp(round(v25), __e - 11);
  }

  v26 = v8 * v23;
  v13 = 0.0;
  v27 = 0.0;
  if (v26 != 0.0)
  {
    __e = 0;
    v28 = frexp(v26, &__e);
    v29 = ldexp(v28, 11);
    v27 = ldexp(round(v29), __e - 11);
  }

  v20 = v21 + v27;
LABEL_23:
  if (v20 != 0.0)
  {
    __e = 0;
    v30 = frexp(v20, &__e);
    v31 = ldexp(v30, 11);
    return ldexp(round(v31), __e - 11);
  }

  return v13;
}

__n128 std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::SqrtFunction(float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::SqrtFunction(float)::$_0>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB1C98;
  result = *(a1 + 120);
  v3 = *(a1 + 136);
  v4 = *(a1 + 152);
  *(a2 + 164) = *(a1 + 164);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v9;
  *(a2 + 72) = v8;
  *(a2 + 56) = v7;
  *(a2 + 152) = v4;
  *(a2 + 136) = v3;
  *(a2 + 120) = result;
  *(a2 + 178) = 0;
  return result;
}

void std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::SqrtFunction(float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::SqrtFunction(float)::$_0>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  v3 = *a2;
  if (*(a1 + 12) <= *a2)
  {
    v13 = *(a1 + 20);
    return;
  }

  if (*(a1 + 8) >= v3)
  {
    v14 = *(a1 + 16);
    return;
  }

  v4 = INFINITY;
  if (v3 == INFINITY)
  {
    v15 = *(a1 + 164);
    v16 = *(a1 + 168);
  }

  else
  {
    v4 = -INFINITY;
    if (v3 != -INFINITY)
    {
      v5 = frexpf(*a2, &v36);
      v6 = v36;
      if (v36)
      {
        v7 = v5 + v5;
      }

      else
      {
        v7 = v5;
      }

      v37 = 0.0;
      v8 = ldexpf(v7, *(a1 + 172));
      v9 = modff(fabsf(v8), &v37);
      v10 = v37 & 0x1F;
      if (v37 <= 0)
      {
        v10 = -(-v37 & 0x1F);
      }

      if (v7 >= 0.0)
      {
        v23 = a1 + 4 * v10;
        v12 = *(v23 + 24);
        v11 = *(v23 + 28);
      }

      else
      {
        v11 = *(a1 + 24 + 4 * (31 - v10));
        v12 = *(a1 + 24 + 4 * (32 - v10));
      }

      v24 = v11 - v12;
      v25 = 0.0;
      if (v24 != 0.0)
      {
        __e = 0;
        v26 = frexp(v24, &__e);
        v27 = ldexp(v26, 11);
        v25 = ldexp(round(v27), __e - 11);
      }

      v28 = v9 * v25;
      v29 = 0.0;
      v30 = 0.0;
      if (v28 != 0.0)
      {
        __e = 0;
        v31 = frexp(v28, &__e);
        v32 = ldexp(v31, 11);
        v30 = ldexp(round(v32), __e - 11);
      }

      v33 = v12 + v30;
      if (v33 != 0.0)
      {
        __e = 0;
        v34 = frexp(v33, &__e);
        v35 = ldexp(v34, 11);
        v29 = ldexp(round(v35), __e - 11);
      }

      ldexpf(v29, (v6 & 0xFFFFFFFE) / 2);
      return;
    }

    v15 = *(a1 + 156);
    v16 = *(a1 + 160);
  }

  v17 = v15 * v4;
  v18 = 0.0;
  if (v17 != 0.0)
  {
    __e = 0;
    v19 = frexp(v17, &__e);
    v20 = ldexp(v19, 11);
    v18 = ldexp(round(v20), __e - 11);
  }

  if ((v16 + v18) != 0.0)
  {
    __e = 0;
    v21 = frexp((v16 + v18), &__e);
    v22 = ldexp(v21, 11);
    ldexp(round(v22), __e - 11);
  }
}

uint64_t std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::SqrtFunction(float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::SqrtFunction(float)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::LreluFunction(float,float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::LreluFunction(float,float)::$_0>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB1D18;
  result = *(a1 + 120);
  v3 = *(a1 + 136);
  v4 = *(a1 + 152);
  *(a2 + 164) = *(a1 + 164);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v9;
  *(a2 + 72) = v8;
  *(a2 + 56) = v7;
  *(a2 + 152) = v4;
  *(a2 + 136) = v3;
  *(a2 + 120) = result;
  *(a2 + 178) = 0;
  return result;
}

uint64_t std::__function::__func<MIL::ANEMachineIR::Interpreter::anonymous namespace::LreluFunction(float,float)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::anonymous namespace::LreluFunction(float,float)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(MIL::IROperation const&,MIL::ANEMachineIR::Interpreter::InterpretStatus *)::$_0,std::allocator<MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(MIL::IROperation const&,MIL::ANEMachineIR::Interpreter::InterpretStatus *)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::H2022::BaseNePool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599AC8D0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2E0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x308], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeAvgPool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599AEB48(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x330], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x358], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMaxPool::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidateNeMaxPool;
  v4[3] = v4;
  ANEMachineIR::H2022::BaseNePool::Make();
}

void sub_2599AF4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMinPool::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidateNeMinPool;
  v4[3] = v4;
  ANEMachineIR::H2022::BaseNePool::Make();
}

void sub_2599AF588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::BasePePool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599B0B84(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2D0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F8], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAvgPool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599B2A6C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x318], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeMaxPool::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeMaxPool;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePePool::Make();
}

void sub_2599B330C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeMinPool::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeMinPool;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePePool::Make();
}

void sub_2599B33EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NeConv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599B692C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 208);
  *(v2 - 208) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x670], 0);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeBatchMatmulCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  *&v234[28] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &__p);
  if (SHIBYTE(v195) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "y");
  v7 = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &__p);
  if (SHIBYTE(v195) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "acc_left_shift");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue && (*(*ParameterValue + 40))(ParameterValue) && (v9 = MEMORY[0x259CA93E0]()) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  if (SHIBYTE(v195) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "post_right_shift");
  v11 = MIL::IROperation::TryGetParameterValue();
  if (v11 && (*(*v11 + 40))(v11) && (v12 = MEMORY[0x259CA93E0]()) != 0)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  if (SHIBYTE(v195) < 0)
  {
    operator delete(__p);
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(&__p, "post_scale");
  v15 = MIL::Fp16::FromFloat(v14, 1.0);
  v16 = MIL::IROperation::TryGetParameterValue();
  if (v16)
  {
    if ((*(*v16 + 40))(v16))
    {
      v17 = MEMORY[0x259CA93C0]();
      if (v17)
      {
        v15 = *v17;
      }
    }
  }

  LOWORD(v200) = v15;
  MIL::Fp16::GetFloat(&v200);
  v233 = v18;
  v203 = 0;
  v204 = 0;
  v202 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v202, &v233, v234, 1uLL);
  if ((SHIBYTE(v195) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_25;
    }

LABEL_39:
    v41 = "No value for x";
LABEL_53:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), v41);
    goto LABEL_215;
  }

  operator delete(__p);
  if (!InterpretedTensorValue)
  {
    goto LABEL_39;
  }

LABEL_25:
  if (!v7)
  {
    v41 = "No value for y";
    goto LABEL_53;
  }

  v19 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
  v20 = (*(*v19 + 88))(v19);
  v21 = (*(*v7 + 32))(v7);
  v22 = (*(*v21 + 88))(v21);
  v188 = v13;
  v189 = v10;
  v190 = a3;
  OutputType = MIL::IROperation::GetOutputType(a1);
  v24 = MIL::IRValueType::AsTensorType(OutputType);
  v25 = (*(*v24 + 88))(v24);
  v26 = (*(*v24 + 16))(v24);
  v27 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
  ANEMachineIR::Utils::GetStaticTensorShape(v27, v28, &v200);
  v29 = (*(*v7 + 32))(v7);
  ANEMachineIR::Utils::GetStaticTensorShape(v29, v30, &v198);
  ANEMachineIR::Utils::GetStaticTensorShape(v24, v31, v197);
  v187 = v26;
  if (v201 == v200 || (v199 - v198) <= 8)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v32 = *(v201 - 1);
  v33 = *(v199 - 2);
  v34 = std::string::basic_string[abi:ne200100]<0>(&__p, "matrix_vector_bias");
  v35 = MIL::Fp16::FromFloat(v34, 1.0);
  v36 = MIL::IROperation::TryGetParameterValue();
  if (v36)
  {
    if ((*(*v36 + 40))(v36))
    {
      v37 = MEMORY[0x259CA93C0]();
      if (v37)
      {
        v35 = *v37;
      }
    }
  }

  if (SHIBYTE(v195) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "matrix_vector_bias");
  v38 = MIL::IROperation::TryGetParameterValue();
  if (v38 && (*(*v38 + 40))(v38) && (v39 = MEMORY[0x259CA9410]()) != 0)
  {
    v40 = *v39;
  }

  else
  {
    v40 = 1;
  }

  v185 = v40;
  if (SHIBYTE(v195) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "matrix_vector_bias");
  v42 = MIL::IROperation::TryGetParameterValue();
  v186 = a2;
  if (v42 && (*(*v42 + 40))(v42) && (v43 = MEMORY[0x259CA93E0]()) != 0)
  {
    v44 = *v43;
  }

  else
  {
    v44 = 1;
  }

  if (SHIBYTE(v195) < 0)
  {
    operator delete(__p);
  }

  v195 = 0uLL;
  v196 = 0;
  MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &__p, &v233);
  if (!__p)
  {
    switch(v20)
    {
      case 14:
        switch(v22)
        {
          case 14:
            switch(v25)
            {
              case 14:
                Data = MIL::IRTensorValue::GetDataView<unsigned char>();
                v45 = v190;
                v164 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v219, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v219);
                (*(*a1 + 200))(&v191, a1);
                v165 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v166 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v166);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v165, &v205);
                v167 = v205;
                v205 = 0;
                if (v167)
                {
                  (*(*v167 + 1))(v167);
                }

                goto LABEL_204;
              case 9:
                v133 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v45 = v190;
                v134 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v218, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v218);
                (*(*a1 + 200))(&v191, a1);
                v135 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v136 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v136);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v135, &v205);
                v137 = v205;
                v205 = 0;
                if (v137)
                {
                  (*(*v137 + 1))(v137);
                }

                goto LABEL_204;
              case 4:
                v45 = v190;
                v83 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v84 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v220, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v220);
                (*(*a1 + 200))(&v191, a1);
                v85 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v86 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v86);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v85, &v205);
                v87 = v205;
                v205 = 0;
                if (v87)
                {
                  (*(*v87 + 1))(v87);
                }

                goto LABEL_204;
            }

            goto LABEL_131;
          case 9:
            switch(v25)
            {
              case 14:
                v128 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v62 = v190;
                v129 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v216, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v216);
                (*(*a1 + 200))(&v191, a1);
                v130 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v131 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v131);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v130, &v205);
                v132 = v205;
                v205 = 0;
                if (v132)
                {
                  (*(*v132 + 1))(v132);
                }

                goto LABEL_180;
              case 9:
                v108 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v62 = v190;
                v109 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v215, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v215);
                (*(*a1 + 200))(&v191, a1);
                v110 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v111 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v111);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v110, &v205);
                v112 = v205;
                v205 = 0;
                if (v112)
                {
                  (*(*v112 + 1))(v112);
                }

                goto LABEL_180;
              case 4:
                v62 = v190;
                v73 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v74 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v217, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v217);
                (*(*a1 + 200))(&v191, a1);
                v75 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v76 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v76);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v75, &v205);
                v77 = v205;
                v205 = 0;
                if (v77)
                {
                  (*(*v77 + 1))(v77);
                }

                goto LABEL_180;
            }

            goto LABEL_131;
          case 4:
            switch(v25)
            {
              case 14:
                v168 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v45 = v190;
                v169 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v222, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v222);
                (*(*a1 + 200))(&v191, a1);
                v170 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v171 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v171);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v170, &v205);
                v172 = v205;
                v205 = 0;
                if (v172)
                {
                  (*(*v172 + 1))(v172);
                }

                goto LABEL_204;
              case 9:
                v143 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v45 = v190;
                v144 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v221, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v221);
                (*(*a1 + 200))(&v191, a1);
                v145 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v146 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v146);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v145, &v205);
                v147 = v205;
                v205 = 0;
                if (v147)
                {
                  (*(*v147 + 1))(v147);
                }

                goto LABEL_204;
              case 4:
                v45 = v190;
                v56 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v57 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v223, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v223);
                (*(*a1 + 200))(&v191, a1);
                v58 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v59 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v59);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v58, &v205);
                v60 = v205;
                v205 = 0;
                if (v60)
                {
                  (*(*v60 + 1))(v60);
                }

                goto LABEL_204;
            }

            goto LABEL_131;
        }

        break;
      case 9:
        switch(v22)
        {
          case 14:
            switch(v25)
            {
              case 14:
                v123 = MIL::IRTensorValue::GetDataView<signed char>();
                v45 = v190;
                v124 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v210, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v210);
                (*(*a1 + 200))(&v191, a1);
                v125 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v126 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v126);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v125, &v205);
                v127 = v205;
                v205 = 0;
                if (v127)
                {
                  (*(*v127 + 1))(v127);
                }

                goto LABEL_204;
              case 9:
                v103 = MIL::IRTensorValue::GetDataView<signed char>();
                v45 = v190;
                v104 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v209, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v209);
                (*(*a1 + 200))(&v191, a1);
                v105 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v106 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v106);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v105, &v205);
                v107 = v205;
                v205 = 0;
                if (v107)
                {
                  (*(*v107 + 1))(v107);
                }

                goto LABEL_204;
              case 4:
                v45 = v190;
                v68 = MIL::IRTensorValue::GetDataView<signed char>();
                v69 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v211, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v211);
                (*(*a1 + 200))(&v191, a1);
                v70 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v71 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v71);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v70, &v205);
                v72 = v205;
                v205 = 0;
                if (v72)
                {
                  (*(*v72 + 1))(v72);
                }

                goto LABEL_204;
            }

            goto LABEL_131;
          case 9:
            switch(v25)
            {
              case 14:
                v98 = MIL::IRTensorValue::GetDataView<signed char>();
                v62 = v190;
                v99 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v207, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v207);
                (*(*a1 + 200))(&v191, a1);
                v100 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v101 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v101);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v100, &v205);
                v102 = v205;
                v205 = 0;
                if (v102)
                {
                  (*(*v102 + 1))(v102);
                }

                goto LABEL_180;
              case 9:
                v93 = MIL::IRTensorValue::GetDataView<signed char>();
                v62 = v190;
                v94 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v206, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v206);
                (*(*a1 + 200))(&v191, a1);
                v95 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v96 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v96);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v95, &v205);
                v97 = v205;
                v205 = 0;
                if (v97)
                {
                  (*(*v97 + 1))(v97);
                }

                goto LABEL_180;
              case 4:
                v62 = v190;
                v63 = MIL::IRTensorValue::GetDataView<signed char>();
                v64 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v208, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v208);
                (*(*a1 + 200))(&v191, a1);
                v65 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v66 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v66);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v65, &v205);
                v67 = v205;
                v205 = 0;
                if (v67)
                {
                  (*(*v67 + 1))(v67);
                }

                goto LABEL_180;
            }

            goto LABEL_131;
          case 4:
            switch(v25)
            {
              case 14:
                v138 = MIL::IRTensorValue::GetDataView<signed char>();
                v45 = v190;
                v139 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v213, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v213);
                (*(*a1 + 200))(&v191, a1);
                v140 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v141 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v141);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v140, &v205);
                v142 = v205;
                v205 = 0;
                if (v142)
                {
                  (*(*v142 + 1))(v142);
                }

                goto LABEL_204;
              case 9:
                v113 = MIL::IRTensorValue::GetDataView<signed char>();
                v45 = v190;
                v114 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v212, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v212);
                (*(*a1 + 200))(&v191, a1);
                v115 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v116 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v116);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v115, &v205);
                v117 = v205;
                v205 = 0;
                if (v117)
                {
                  (*(*v117 + 1))(v117);
                }

                goto LABEL_204;
              case 4:
                v45 = v190;
                v51 = MIL::IRTensorValue::GetDataView<signed char>();
                v52 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v214, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v214);
                (*(*a1 + 200))(&v191, a1);
                v53 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v54 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v54);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v53, &v205);
                v55 = v205;
                v205 = 0;
                if (v55)
                {
                  (*(*v55 + 1))(v55);
                }

                goto LABEL_204;
            }

            goto LABEL_131;
        }

        break;
      case 4:
        switch(v22)
        {
          case 14:
            switch(v25)
            {
              case 14:
                v173 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v45 = v190;
                v174 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v228, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v228);
                (*(*a1 + 200))(&v191, a1);
                v175 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v176 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v176);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v175, &v205);
                v177 = v205;
                v205 = 0;
                if (v177)
                {
                  (*(*v177 + 1))(v177);
                }

                goto LABEL_204;
              case 9:
                v153 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v45 = v190;
                v154 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v227, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v227);
                (*(*a1 + 200))(&v191, a1);
                v155 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v156 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v156);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v155, &v205);
                v157 = v205;
                v205 = 0;
                if (v157)
                {
                  (*(*v157 + 1))(v157);
                }

                goto LABEL_204;
              case 4:
                v45 = v190;
                v88 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v89 = MIL::IRTensorValue::GetDataView<unsigned char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v229, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v229);
                (*(*a1 + 200))(&v191, a1);
                v90 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v91 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v91);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v90, &v205);
                v92 = v205;
                v205 = 0;
                if (v92)
                {
                  (*(*v92 + 1))(v92);
                }

                goto LABEL_204;
            }

            break;
          case 9:
            switch(v25)
            {
              case 14:
                v148 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v62 = v190;
                v149 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v225, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v225);
                (*(*a1 + 200))(&v191, a1);
                v150 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v151 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v151);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v150, &v205);
                v152 = v205;
                v205 = 0;
                if (v152)
                {
                  (*(*v152 + 1))(v152);
                }

                goto LABEL_180;
              case 9:
                v118 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v62 = v190;
                v119 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v224, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v224);
                (*(*a1 + 200))(&v191, a1);
                v120 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v121 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v121);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v120, &v205);
                v122 = v205;
                v205 = 0;
                if (v122)
                {
                  (*(*v122 + 1))(v122);
                }

                goto LABEL_180;
              case 4:
                v62 = v190;
                v78 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v79 = MIL::IRTensorValue::GetDataView<signed char>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v226, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v226);
                (*(*a1 + 200))(&v191, a1);
                v80 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v81 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v81);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v80, &v205);
                v82 = v205;
                v205 = 0;
                if (v82)
                {
                  (*(*v82 + 1))(v82);
                }

LABEL_180:
                v205 = &v191;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v205);
                *v62 = 0;
                std::string::basic_string[abi:ne200100]<0>((v62 + 8), &unk_259A4D977);
                goto LABEL_205;
            }

            break;
          case 4:
            switch(v25)
            {
              case 14:
                v178 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v45 = v190;
                v179 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v231, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v231);
                (*(*a1 + 200))(&v191, a1);
                v180 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v181 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v181);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v180, &v205);
                v182 = v205;
                v205 = 0;
                if (v182)
                {
                  (*(*v182 + 1))(v182);
                }

                goto LABEL_204;
              case 9:
                v158 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v45 = v190;
                v159 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v230, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v230);
                (*(*a1 + 200))(&v191, a1);
                v160 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v161 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v161);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v160, &v205);
                v162 = v205;
                v205 = 0;
                if (v162)
                {
                  (*(*v162 + 1))(v162);
                }

                goto LABEL_204;
              case 4:
                v45 = v190;
                v46 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v232, &v233);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v232);
                (*(*a1 + 200))(&v191, a1);
                v48 = v191;
                if (v192 == v191)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v49 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v49);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(v186, v48, &v205);
                v50 = v205;
                v205 = 0;
                if (v50)
                {
                  (*(*v50 + 1))(v50);
                }

LABEL_204:
                v205 = &v191;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v205);
                *v45 = 0;
                std::string::basic_string[abi:ne200100]<0>((v45 + 8), &unk_259A4D977);
LABEL_205:
                if (v193[0])
                {
                  v193[1] = v193[0];
                  operator delete(v193[0]);
                }

                goto LABEL_207;
            }

            break;
          default:
            goto LABEL_88;
        }

LABEL_131:
        v61 = "Unimplemented output dtype";
        goto LABEL_132;
      default:
        v61 = "Unimplemented x dtype";
LABEL_132:
        *v190 = 3;
        std::string::basic_string[abi:ne200100]<0>((v190 + 8), v61);
        goto LABEL_207;
    }

LABEL_88:
    v61 = "Unimplemented y dtype";
    goto LABEL_132;
  }

  *v190 = __p;
  *(v190 + 8) = v195;
  *(v190 + 24) = v196;
  v195 = 0uLL;
  v196 = 0;
LABEL_207:
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v233);
  if (SHIBYTE(v196) < 0)
  {
    operator delete(v195);
  }

  if (v197[0])
  {
    v197[1] = v197[0];
    operator delete(v197[0]);
  }

  if (v198)
  {
    v199 = v198;
    operator delete(v198);
  }

  if (v200)
  {
    v201 = v200;
    operator delete(v200);
  }

LABEL_215:
  if (v202)
  {
    v203 = v202;
    operator delete(v202);
  }

  v183 = *MEMORY[0x277D85DE8];
}

void sub_2599BA41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v42 - 128);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, float **a10, char a11, int a12, __int16 a13, __int16 a14, uint64_t a15)
{
  v94 = *MEMORY[0x277D85DE8];
  v16 = *a3;
  v17 = (a3[1] - *a3) >> 3;
  if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v17 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v17 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a4;
  v22 = (a4[1] - *a4) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_, 1);
  }

  v23 = *a5;
  v24 = (a5[1] - *a5) >> 3;
  if (v24 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v24 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<MIL::Fp16>::resize(a9, a6);
  v73 = **a3;
  v74 = *(*a3 + 1);
  v89 = *(*a3 + 4);
  v85 = *(*a4 + 1);
  v86 = **a4;
  v84 = *(*a4 + 2);
  v25 = **a5;
  v75 = *(*a5 + 1);
  v76 = *(*a3 + 2);
  v77 = *(*a5 + 2);
  v78 = *(*a5 + 3);
  v26 = *(*a5 + 4);
  v27 = ldexp(1.0, a7 + 20);
  v28 = exp2(-(a7 + 20 + a8));
  memset(&__src, 0, sizeof(__src));
  v80 = v26;
  std::vector<int>::reserve(&__src, v26);
  v30 = v28;
  v31 = *a10;
  v32 = a10[1];
  if (v32 - *a10 == 4)
  {
    v91 = MIL::Fp16::FromFloat(v29, *v31);
    MIL::Fp16::GetFloat(&v91);
    *v34.i32 = v33 * v30;
    __e = v34.i32[0];
    std::vector<float>::assign(&__src, v26, &__e, v34);
  }

  else
  {
    while (v31 != v32)
    {
      v91 = MIL::Fp16::FromFloat(v29, *v31);
      MIL::Fp16::GetFloat(&v91);
      *&__e = v71 * v30;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v31;
    }
  }

  v90 = a4;
  if (v25)
  {
    v35 = 0;
    v36 = v27;
    v72 = v25;
    while (!v75)
    {
LABEL_63:
      if (++v35 == v72)
      {
        goto LABEL_64;
      }
    }

    v37 = 0;
    while (!v77)
    {
LABEL_62:
      if (++v37 == v75)
      {
        goto LABEL_63;
      }
    }

    v38 = 0;
    while (!v78)
    {
LABEL_61:
      if (++v38 == v77)
      {
        goto LABEL_62;
      }
    }

    v39 = 0;
    while (!v80)
    {
LABEL_60:
      if (++v39 == v78)
      {
        goto LABEL_61;
      }
    }

    v40 = 0;
    while (1)
    {
      if (v89)
      {
        v41 = 0;
        v42 = 0;
        v82 = 0;
        do
        {
          v43 = a9;
          if (!a11 || (v45 = a13, v41 != *(v90[1] - 2)))
          {
          }

          if (!v42)
          {
            LOWORD(__e) = v44;
            MIL::Fp16::GetFloat(&__e);
            v47 = v46;
            LOWORD(__e) = v45;
            MIL::Fp16::GetFloat(&__e);
            v49 = v48;
            LOWORD(__e) = 0;
            MIL::Fp16::GetFloat(&__e);
            v51 = v49 - v50;
            v52 = ilogbf(v47);
            if (v52 <= -14)
            {
              v53 = -14;
            }

            else
            {
              v53 = v52;
            }

            v54 = ilogbf(v51);
            if (v54 <= -14)
            {
              v55 = -14;
            }

            else
            {
              v55 = v54;
            }

            if (v53 + a7 + v55 >= -20)
            {
              v56 = llroundf((v47 * v51) * v36) + v82;
              if (v56 <= 0x7FFFFFFF)
              {
                v57 = v56 < 0xFFFFFFFF80000000;
                if (v56 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v56) = -8388608;
                }

                v82 = v56;
                v42 = 2 * v57;
              }

              else
              {
                v42 = 1;
                v82 = 2139095040;
              }
            }

            else
            {
              v42 = 0;
            }
          }

          a9 = v43;
          ++v41;
        }

        while (v89 != v41);
        v58 = *&__src.__begin_[v40];
        if (v42)
        {
          v59 = INFINITY;
          if (v42 == 2)
          {
            v59 = -INFINITY;
          }

          goto LABEL_56;
        }

        if (v82)
        {
          v59 = v82;
LABEL_56:
          *&__e = 0.0;
          v61 = frexp(v59, &__e);
          v62 = ldexp(v61, 11);
          v60 = ldexp(round(v62), __e - 11);
          goto LABEL_57;
        }
      }

      else
      {
        v58 = *&__src.__begin_[v40];
      }

      v60 = 0.0;
LABEL_57:
      v63 = v58 * v60;
      v64 = 0.0;
      if (v63 != 0.0)
      {
        *&__e = 0.0;
        v65 = frexp(v63, &__e);
        v66 = ldexp(v65, 11);
        v64 = ldexp(round(v66), __e - 11);
      }

      v67 = std::function<float ()(float)>::operator()(a15, v64);
      v69 = MIL::Fp16::FromFloat(v67, v68);
      if (v40 == v80)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_64:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v70 = *MEMORY[0x277D85DE8];
}

void sub_2599BB228(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 160);
  if (v4)
  {
    *(v2 - 152) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, int a12, __int16 a13, __int16 a14, uint64_t a15)
{
  v94 = *MEMORY[0x277D85DE8];
  v16 = *a3;
  v17 = (a3[1] - *a3) >> 3;
  if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v17 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v17 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a4;
  v22 = (a4[1] - *a4) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_, 1);
  }

  v23 = *a5;
  v24 = (a5[1] - *a5) >> 3;
  if (v24 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v24 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v72 = **a3;
  v73 = *(*a3 + 1);
  v88 = *(*a3 + 4);
  v84 = *(*a4 + 1);
  v85 = **a4;
  v83 = *(*a4 + 2);
  v25 = **a5;
  v74 = *(*a5 + 1);
  v75 = *(*a5 + 2);
  v26 = *(*a5 + 4);
  v76 = *(*a5 + 3);
  v77 = *(*a3 + 2);
  v27 = ldexp(1.0, a7 + 20);
  v28 = exp2(-(a7 + 20 + a8));
  memset(&__src, 0, sizeof(__src));
  v79 = v26;
  std::vector<int>::reserve(&__src, v26);
  v30 = v28;
  v31 = *a10;
  v32 = a10[1];
  if (v32 - *a10 == 4)
  {
    v91 = MIL::Fp16::FromFloat(v29, *v31);
    MIL::Fp16::GetFloat(&v91);
    *v34.i32 = v33 * v30;
    __e = v34.i32[0];
    std::vector<float>::assign(&__src, v26, &__e, v34);
  }

  else
  {
    while (v31 != v32)
    {
      v91 = MIL::Fp16::FromFloat(v29, *v31);
      MIL::Fp16::GetFloat(&v91);
      *&__e = v70 * v30;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v31;
    }
  }

  v90 = a4;
  if (v25)
  {
    v35 = 0;
    v36 = v27;
    v71 = v25;
    while (!v74)
    {
LABEL_72:
      if (++v35 == v71)
      {
        goto LABEL_73;
      }
    }

    v37 = 0;
    while (!v75)
    {
LABEL_71:
      if (++v37 == v74)
      {
        goto LABEL_72;
      }
    }

    v38 = 0;
    while (!v76)
    {
LABEL_70:
      if (++v38 == v75)
      {
        goto LABEL_71;
      }
    }

    v89 = 0;
    while (!v79)
    {
LABEL_69:
      if (++v89 == v76)
      {
        goto LABEL_70;
      }
    }

    v39 = 0;
    while (1)
    {
      if (v88)
      {
        v40 = 0;
        v41 = 0;
        v81 = 0;
        do
        {
          v42 = a9;
          if (!a11 || (v44 = a13, v40 != *(v90[1] - 2)))
          {
          }

          if (!v41)
          {
            LOWORD(__e) = v43;
            MIL::Fp16::GetFloat(&__e);
            v46 = v45;
            LOWORD(__e) = v44;
            MIL::Fp16::GetFloat(&__e);
            v48 = v47;
            LOWORD(__e) = 0;
            MIL::Fp16::GetFloat(&__e);
            v50 = v48 - v49;
            v51 = ilogbf(v46);
            if (v51 <= -14)
            {
              v52 = -14;
            }

            else
            {
              v52 = v51;
            }

            v53 = ilogbf(v50);
            if (v53 <= -14)
            {
              v54 = -14;
            }

            else
            {
              v54 = v53;
            }

            if (v52 + a7 + v54 >= -20)
            {
              v55 = llroundf((v46 * v50) * v36) + v81;
              if (v55 <= 0x7FFFFFFF)
              {
                v56 = v55 < 0xFFFFFFFF80000000;
                if (v55 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v55) = -8388608;
                }

                v81 = v55;
                v41 = 2 * v56;
              }

              else
              {
                v41 = 1;
                v81 = 2139095040;
              }
            }

            else
            {
              v41 = 0;
            }
          }

          a9 = v42;
          ++v40;
        }

        while (v88 != v40);
        v57 = *&__src.__begin_[v39];
        if (v41)
        {
          v58 = INFINITY;
          if (v41 == 2)
          {
            v58 = -INFINITY;
          }

          goto LABEL_58;
        }

        if (v81)
        {
          v58 = v81;
LABEL_58:
          *&__e = 0.0;
          v60 = frexp(v58, &__e);
          v61 = ldexp(v60, 11);
          v59 = ldexp(round(v61), __e - 11);
          goto LABEL_59;
        }
      }

      else
      {
        v57 = *&__src.__begin_[v39];
      }

      v59 = 0.0;
LABEL_59:
      v62 = v57 * v59;
      v63 = 0.0;
      if (v62 != 0.0)
      {
        *&__e = 0.0;
        v64 = frexp(v62, &__e);
        v65 = ldexp(v64, 11);
        v63 = ldexp(round(v65), __e - 11);
      }

      std::function<float ()(float)>::operator()(a15, v63);
      if (v66 == INFINITY)
      {
        LOBYTE(v67) = -1;
      }

      else if (v66 == -INFINITY)
      {
        LOBYTE(v67) = 0;
      }

      else
      {
        v68 = llroundf(v66);
        if (v68 >= 255)
        {
          v68 = 255;
        }

        v67 = v68 & ~(v68 >> 31);
      }

      if (v39 == v79)
      {
        goto LABEL_69;
      }
    }
  }

LABEL_73:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v69 = *MEMORY[0x277D85DE8];
}

void sub_2599BB95C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,signed char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, int a12, __int16 a13, __int16 a14, uint64_t a15)
{
  v93 = *MEMORY[0x277D85DE8];
  v16 = *a3;
  v17 = (a3[1] - *a3) >> 3;
  if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v17 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v17 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a4;
  v22 = (a4[1] - *a4) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_, 1);
  }

  v23 = *a5;
  v24 = (a5[1] - *a5) >> 3;
  if (v24 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v24 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v74 = *(*a3 + 2);
  v75 = *(*a3 + 1);
  v87 = *(*a3 + 4);
  v82 = *(*a4 + 1);
  v83 = **a4;
  v81 = *(*a4 + 2);
  v25 = **a5;
  v70 = **a3;
  v71 = *(*a5 + 1);
  v72 = *(*a5 + 2);
  v73 = *(*a5 + 3);
  v26 = *(*a5 + 4);
  v27 = ldexp(1.0, a7 + 20);
  v28 = exp2(-(a7 + 20 + a8));
  memset(&__src, 0, sizeof(__src));
  v77 = v26;
  std::vector<int>::reserve(&__src, v26);
  v30 = v28;
  v31 = *a10;
  v32 = a10[1];
  if (v32 - *a10 == 4)
  {
    v90 = MIL::Fp16::FromFloat(v29, *v31);
    MIL::Fp16::GetFloat(&v90);
    *v34.i32 = v33 * v30;
    __e = v34.i32[0];
    std::vector<float>::assign(&__src, v26, &__e, v34);
  }

  else
  {
    while (v31 != v32)
    {
      v90 = MIL::Fp16::FromFloat(v29, *v31);
      MIL::Fp16::GetFloat(&v90);
      *&__e = v69 * v30;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v31;
    }
  }

  v89 = a4;
  if (v25)
  {
    v35 = 0;
    v36 = v27;
    while (!v71)
    {
LABEL_74:
      if (++v35 == v25)
      {
        goto LABEL_75;
      }
    }

    v37 = 0;
    while (!v72)
    {
LABEL_73:
      if (++v37 == v71)
      {
        goto LABEL_74;
      }
    }

    v38 = 0;
    while (!v73)
    {
LABEL_72:
      if (++v38 == v72)
      {
        goto LABEL_73;
      }
    }

    v88 = 0;
    while (!v77)
    {
LABEL_71:
      if (++v88 == v73)
      {
        goto LABEL_72;
      }
    }

    v84 = 0;
    while (1)
    {
      if (v87)
      {
        v39 = 0;
        v40 = 0;
        v79 = 0;
        do
        {
          v41 = a9;
          if (!a11 || (v43 = a13, v39 != *(v89[1] - 2)))
          {
          }

          if (!v40)
          {
            LOWORD(__e) = v42;
            MIL::Fp16::GetFloat(&__e);
            v45 = v44;
            LOWORD(__e) = v43;
            MIL::Fp16::GetFloat(&__e);
            v47 = v46;
            LOWORD(__e) = 0;
            MIL::Fp16::GetFloat(&__e);
            v49 = v47 - v48;
            v50 = ilogbf(v45);
            if (v50 <= -14)
            {
              v51 = -14;
            }

            else
            {
              v51 = v50;
            }

            v52 = ilogbf(v49);
            if (v52 <= -14)
            {
              v53 = -14;
            }

            else
            {
              v53 = v52;
            }

            if (v51 + a7 + v53 >= -20)
            {
              v54 = llroundf((v45 * v49) * v36) + v79;
              if (v54 <= 0x7FFFFFFF)
              {
                v55 = v54 < 0xFFFFFFFF80000000;
                if (v54 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v54) = -8388608;
                }

                v79 = v54;
                v40 = 2 * v55;
              }

              else
              {
                v40 = 1;
                v79 = 2139095040;
              }
            }

            else
            {
              v40 = 0;
            }
          }

          a9 = v41;
          ++v39;
        }

        while (v87 != v39);
        v56 = *&__src.__begin_[v84];
        if (v40)
        {
          v57 = INFINITY;
          if (v40 == 2)
          {
            v57 = -INFINITY;
          }

          goto LABEL_58;
        }

        if (v79)
        {
          v57 = v79;
LABEL_58:
          *&__e = 0.0;
          v59 = frexp(v57, &__e);
          v60 = ldexp(v59, 11);
          v58 = ldexp(round(v60), __e - 11);
          goto LABEL_59;
        }
      }

      else
      {
        v56 = *&__src.__begin_[v84];
      }

      v58 = 0.0;
LABEL_59:
      v61 = v56 * v58;
      v62 = 0.0;
      if (v61 != 0.0)
      {
        *&__e = 0.0;
        v63 = frexp(v61, &__e);
        v64 = ldexp(v63, 11);
        v62 = ldexp(round(v64), __e - 11);
      }

      std::function<float ()(float)>::operator()(a15, v62);
      if (v65 == INFINITY)
      {
        v66 = 127;
      }

      else if (v65 == -INFINITY)
      {
        v66 = 0x80;
      }

      else
      {
        v67 = llroundf(v65);
        if (v67 >= 127)
        {
          v67 = 127;
        }

        if (v67 <= -128)
        {
          v66 = 0x80;
        }

        else
        {
          v66 = v67;
        }
      }

      if (v84 == v77)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_75:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v68 = *MEMORY[0x277D85DE8];
}

void sub_2599BC0A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char,MIL::Fp16>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, float **a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v87 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = (a4[1] - *a4) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<MIL::Fp16>::resize(a9, a6);
  v66 = **a3;
  v67 = *(*a3 + 1);
  v69 = *(*a3 + 2);
  v82 = *(*a3 + 4);
  v78 = *(*a4 + 1);
  v79 = **a4;
  v77 = *(*a4 + 2);
  v24 = **a5;
  v68 = *(*a5 + 1);
  v70 = *(*a5 + 2);
  v71 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = ldexp(1.0, a7 + 10);
  v27 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  v73 = v25;
  std::vector<int>::reserve(&__src, v25);
  v29 = v27;
  v30 = *a10;
  v31 = a10[1];
  if (v31 - *a10 == 4)
  {
    v84 = MIL::Fp16::FromFloat(v28, *v30);
    MIL::Fp16::GetFloat(&v84);
    *v33.i32 = v32 * v29;
    __e = v33.i32[0];
    std::vector<float>::assign(&__src, v25, &__e, v33);
  }

  else
  {
    while (v30 != v31)
    {
      v84 = MIL::Fp16::FromFloat(v28, *v30);
      MIL::Fp16::GetFloat(&v84);
      *&__e = v64 * v29;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v30;
    }
  }

  v83 = a4;
  if (v24)
  {
    v34 = 0;
    v74 = -20 - a7;
    v35 = v26;
    v65 = v24;
    while (!v68)
    {
LABEL_60:
      if (++v34 == v65)
      {
        goto LABEL_61;
      }
    }

    v36 = 0;
    while (!v70)
    {
LABEL_59:
      if (++v36 == v68)
      {
        goto LABEL_60;
      }
    }

    v37 = 0;
    while (!v71)
    {
LABEL_58:
      if (++v37 == v70)
      {
        goto LABEL_59;
      }
    }

    v38 = 0;
    while (!v73)
    {
LABEL_57:
      if (++v38 == v71)
      {
        goto LABEL_58;
      }
    }

    v39 = 0;
    while (1)
    {
      if (v82)
      {
        v40 = 0;
        v41 = 0;
        v75 = 0;
        do
        {
          v42 = a9;
          if (!a11 || (v44 = a12, v40 != *(v83[1] - 2)))
          {
          }

          if (!v41)
          {
            LOWORD(__e) = v43;
            MIL::Fp16::GetFloat(&__e);
            v46 = v45;
            v47 = ilogbf(v45);
            if (v47 <= -14)
            {
              v48 = -14;
            }

            else
            {
              v48 = v47;
            }

            if (v48 >= v74)
            {
              v49 = llroundf((v46 * v44) * v35) + v75;
              if (v49 <= 0x7FFFFFFF)
              {
                v50 = v49 < 0xFFFFFFFF80000000;
                if (v49 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v49) = -8388608;
                }

                v75 = v49;
                v41 = 2 * v50;
              }

              else
              {
                v41 = 1;
                v75 = 2139095040;
              }
            }

            else
            {
              v41 = 0;
            }
          }

          a9 = v42;
          ++v40;
        }

        while (v82 != v40);
        v51 = *&__src.__begin_[v39];
        if (v41)
        {
          v52 = INFINITY;
          if (v41 == 2)
          {
            v52 = -INFINITY;
          }

          goto LABEL_53;
        }

        if (v75)
        {
          v52 = v75;
LABEL_53:
          *&__e = 0.0;
          v54 = frexp(v52, &__e);
          v55 = ldexp(v54, 11);
          v53 = ldexp(round(v55), __e - 11);
          goto LABEL_54;
        }
      }

      else
      {
        v51 = *&__src.__begin_[v39];
      }

      v53 = 0.0;
LABEL_54:
      v56 = v51 * v53;
      v57 = 0.0;
      if (v56 != 0.0)
      {
        *&__e = 0.0;
        v58 = frexp(v56, &__e);
        v59 = ldexp(v58, 11);
        v57 = ldexp(round(v59), __e - 11);
      }

      v60 = std::function<float ()(float)>::operator()(a13, v57);
      v62 = MIL::Fp16::FromFloat(v60, v61);
      if (v39 == v73)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_61:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v63 = *MEMORY[0x277D85DE8];
}

void sub_2599BC758(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v85 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = (a4[1] - *a4) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v66 = *(*a3 + 2);
  v67 = *(*a3 + 1);
  v79 = *(*a3 + 4);
  v74 = *(*a4 + 1);
  v75 = **a4;
  v73 = *(*a4 + 2);
  v24 = **a5;
  v62 = **a3;
  v63 = *(*a5 + 1);
  v64 = *(*a5 + 2);
  v65 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = ldexp(1.0, a7 + 10);
  v27 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  v69 = v25;
  std::vector<int>::reserve(&__src, v25);
  v29 = v27;
  v30 = *a10;
  v31 = a10[1];
  if (v31 - *a10 == 4)
  {
    v82 = MIL::Fp16::FromFloat(v28, *v30);
    MIL::Fp16::GetFloat(&v82);
    *v33.i32 = v32 * v29;
    __e = v33.i32[0];
    std::vector<float>::assign(&__src, v69, &__e, v33);
  }

  else
  {
    while (v30 != v31)
    {
      v82 = MIL::Fp16::FromFloat(v28, *v30);
      MIL::Fp16::GetFloat(&v82);
      *&__e = v61 * v29;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v30;
    }
  }

  v81 = a4;
  if (v24)
  {
    v34 = 0;
    v70 = -20 - a7;
    v35 = v26;
    while (!v63)
    {
LABEL_69:
      if (++v34 == v24)
      {
        goto LABEL_70;
      }
    }

    v36 = 0;
    while (!v64)
    {
LABEL_68:
      if (++v36 == v63)
      {
        goto LABEL_69;
      }
    }

    v37 = 0;
    while (!v65)
    {
LABEL_67:
      if (++v37 == v64)
      {
        goto LABEL_68;
      }
    }

    v80 = 0;
    while (!v69)
    {
LABEL_66:
      if (++v80 == v65)
      {
        goto LABEL_67;
      }
    }

    v76 = 0;
    while (1)
    {
      if (v79)
      {
        v38 = 0;
        v39 = 0;
        v71 = 0;
        do
        {
          if (!a11 || (v41 = a12, v38 != *(v81[1] - 2)))
          {
          }

          if (!v39)
          {
            LOWORD(__e) = v40;
            MIL::Fp16::GetFloat(&__e);
            v43 = v42;
            v44 = ilogbf(v42);
            if (v44 <= -14)
            {
              v45 = -14;
            }

            else
            {
              v45 = v44;
            }

            if (v45 >= v70)
            {
              v46 = llroundf((v43 * v41) * v35) + v71;
              if (v46 <= 0x7FFFFFFF)
              {
                v47 = v46 < 0xFFFFFFFF80000000;
                if (v46 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v46) = -8388608;
                }

                v71 = v46;
                v39 = 2 * v47;
              }

              else
              {
                v39 = 1;
                v71 = 2139095040;
              }
            }

            else
            {
              v39 = 0;
            }
          }

          ++v38;
        }

        while (v79 != v38);
        v48 = *&__src.__begin_[v76];
        if (v39)
        {
          v49 = INFINITY;
          if (v39 == 2)
          {
            v49 = -INFINITY;
          }

          goto LABEL_55;
        }

        if (v71)
        {
          v49 = v71;
LABEL_55:
          *&__e = 0.0;
          v51 = frexp(v49, &__e);
          v52 = ldexp(v51, 11);
          v50 = ldexp(round(v52), __e - 11);
          goto LABEL_56;
        }
      }

      else
      {
        v48 = *&__src.__begin_[v76];
      }

      v50 = 0.0;
LABEL_56:
      v53 = v48 * v50;
      v54 = 0.0;
      if (v53 != 0.0)
      {
        *&__e = 0.0;
        v55 = frexp(v53, &__e);
        v56 = ldexp(v55, 11);
        v54 = ldexp(round(v56), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v54);
      if (v57 == INFINITY)
      {
        LOBYTE(v58) = -1;
      }

      else if (v57 == -INFINITY)
      {
        LOBYTE(v58) = 0;
      }

      else
      {
        v59 = llroundf(v57);
        if (v59 >= 255)
        {
          v59 = 255;
        }

        v58 = v59 & ~(v59 >> 31);
      }

      if (v76 == v69)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_70:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v60 = *MEMORY[0x277D85DE8];
}

void sub_2599BCE58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char,signed char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v84 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  v16 = a4;
  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *v16;
  v21 = (v16[1] - *v16) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v16, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v16, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v65 = *(*a3 + 1);
  v66 = **a3;
  v64 = *(*a3 + 2);
  v79 = *(*a3 + 4);
  v72 = *(*v16 + 1);
  v73 = **v16;
  v71 = *(*v16 + 2);
  v60 = **a5;
  v61 = *(*a5 + 1);
  v62 = *(*a5 + 2);
  v63 = *(*a5 + 3);
  v24 = *(*a5 + 4);
  v25 = ldexp(1.0, a7 + 10);
  v26 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v81 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v81);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v81 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v81);
      *&__e = v59 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  if (v60)
  {
    v74 = 0;
    v68 = -20 - a7;
    v33 = v25;
    while (!v61)
    {
LABEL_71:
      if (++v74 == v60)
      {
        goto LABEL_72;
      }
    }

    v75 = 0;
    while (!v62)
    {
LABEL_70:
      if (++v75 == v61)
      {
        goto LABEL_71;
      }
    }

    v34 = 0;
    while (!v63)
    {
LABEL_69:
      if (++v34 == v62)
      {
        goto LABEL_70;
      }
    }

    v80 = 0;
    while (!v24)
    {
LABEL_68:
      if (++v80 == v63)
      {
        goto LABEL_69;
      }
    }

    v76 = 0;
    while (1)
    {
      if (v79)
      {
        v35 = v16;
        v36 = 0;
        v37 = 0;
        v69 = 0;
        do
        {
          if (!a11 || (v39 = a12, v36 != *(v35[1] - 2)))
          {
          }

          if (!v37)
          {
            LOWORD(__e) = v38;
            MIL::Fp16::GetFloat(&__e);
            v41 = v40;
            v42 = ilogbf(v40);
            if (v42 <= -14)
            {
              v43 = -14;
            }

            else
            {
              v43 = v42;
            }

            if (v43 >= v68)
            {
              v44 = llroundf((v41 * v39) * v33) + v69;
              if (v44 <= 0x7FFFFFFF)
              {
                v45 = v44 < 0xFFFFFFFF80000000;
                if (v44 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v44) = -8388608;
                }

                v69 = v44;
                v37 = 2 * v45;
              }

              else
              {
                v37 = 1;
                v69 = 2139095040;
              }
            }

            else
            {
              v37 = 0;
            }
          }

          ++v36;
        }

        while (v79 != v36);
        v46 = *&__src.__begin_[v76];
        if (v37)
        {
          v47 = INFINITY;
          if (v37 == 2)
          {
            v47 = -INFINITY;
          }

          v16 = v35;
          goto LABEL_55;
        }

        v16 = v35;
        if (v69)
        {
          v47 = v69;
LABEL_55:
          *&__e = 0.0;
          v49 = frexp(v47, &__e);
          v50 = ldexp(v49, 11);
          v48 = ldexp(round(v50), __e - 11);
          goto LABEL_56;
        }
      }

      else
      {
        v46 = *&__src.__begin_[v76];
      }

      v48 = 0.0;
LABEL_56:
      v51 = v46 * v48;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        *&__e = 0.0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        v56 = 127;
      }

      else if (v55 == -INFINITY)
      {
        v56 = 0x80;
      }

      else
      {
        v57 = llroundf(v55);
        if (v57 >= 127)
        {
          v57 = 127;
        }

        if (v57 <= -128)
        {
          v56 = 0x80;
        }

        else
        {
          v56 = v57;
        }
      }

      if (v76 == v24)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_72:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_2599BD56C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char,MIL::Fp16>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, float **a10, char a11, char a12, uint64_t a13)
{
  v87 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = (a4[1] - *a4) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<MIL::Fp16>::resize(a9, a6);
  v66 = **a3;
  v67 = *(*a3 + 1);
  v69 = *(*a3 + 2);
  v82 = *(*a3 + 4);
  v78 = *(*a4 + 1);
  v79 = **a4;
  v77 = *(*a4 + 2);
  v24 = **a5;
  v68 = *(*a5 + 1);
  v70 = *(*a5 + 2);
  v71 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = ldexp(1.0, a7 + 10);
  v27 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  v73 = v25;
  std::vector<int>::reserve(&__src, v25);
  v29 = v27;
  v30 = *a10;
  v31 = a10[1];
  if (v31 - *a10 == 4)
  {
    v84 = MIL::Fp16::FromFloat(v28, *v30);
    MIL::Fp16::GetFloat(&v84);
    *v33.i32 = v32 * v29;
    __e = v33.i32[0];
    std::vector<float>::assign(&__src, v25, &__e, v33);
  }

  else
  {
    while (v30 != v31)
    {
      v84 = MIL::Fp16::FromFloat(v28, *v30);
      MIL::Fp16::GetFloat(&v84);
      *&__e = v64 * v29;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v30;
    }
  }

  v83 = a4;
  if (v24)
  {
    v34 = 0;
    v74 = -20 - a7;
    v35 = v26;
    v65 = v24;
    while (!v68)
    {
LABEL_60:
      if (++v34 == v65)
      {
        goto LABEL_61;
      }
    }

    v36 = 0;
    while (!v70)
    {
LABEL_59:
      if (++v36 == v68)
      {
        goto LABEL_60;
      }
    }

    v37 = 0;
    while (!v71)
    {
LABEL_58:
      if (++v37 == v70)
      {
        goto LABEL_59;
      }
    }

    v38 = 0;
    while (!v73)
    {
LABEL_57:
      if (++v38 == v71)
      {
        goto LABEL_58;
      }
    }

    v39 = 0;
    while (1)
    {
      if (v82)
      {
        v40 = 0;
        v41 = 0;
        v75 = 0;
        do
        {
          v42 = a9;
          if (!a11 || (v44 = a12, v40 != *(v83[1] - 2)))
          {
          }

          if (!v41)
          {
            LOWORD(__e) = v43;
            MIL::Fp16::GetFloat(&__e);
            v46 = v45;
            v47 = ilogbf(v45);
            if (v47 <= -14)
            {
              v48 = -14;
            }

            else
            {
              v48 = v47;
            }

            if (v48 >= v74)
            {
              v49 = llroundf((v46 * v44) * v35) + v75;
              if (v49 <= 0x7FFFFFFF)
              {
                v50 = v49 < 0xFFFFFFFF80000000;
                if (v49 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v49) = -8388608;
                }

                v75 = v49;
                v41 = 2 * v50;
              }

              else
              {
                v41 = 1;
                v75 = 2139095040;
              }
            }

            else
            {
              v41 = 0;
            }
          }

          a9 = v42;
          ++v40;
        }

        while (v82 != v40);
        v51 = *&__src.__begin_[v39];
        if (v41)
        {
          v52 = INFINITY;
          if (v41 == 2)
          {
            v52 = -INFINITY;
          }

          goto LABEL_53;
        }

        if (v75)
        {
          v52 = v75;
LABEL_53:
          *&__e = 0.0;
          v54 = frexp(v52, &__e);
          v55 = ldexp(v54, 11);
          v53 = ldexp(round(v55), __e - 11);
          goto LABEL_54;
        }
      }

      else
      {
        v51 = *&__src.__begin_[v39];
      }

      v53 = 0.0;
LABEL_54:
      v56 = v51 * v53;
      v57 = 0.0;
      if (v56 != 0.0)
      {
        *&__e = 0.0;
        v58 = frexp(v56, &__e);
        v59 = ldexp(v58, 11);
        v57 = ldexp(round(v59), __e - 11);
      }

      v60 = std::function<float ()(float)>::operator()(a13, v57);
      v62 = MIL::Fp16::FromFloat(v60, v61);
      if (v39 == v73)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_61:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v63 = *MEMORY[0x277D85DE8];
}

void sub_2599BDC20(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, char a12, uint64_t a13)
{
  v85 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = (a4[1] - *a4) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v66 = *(*a3 + 2);
  v67 = *(*a3 + 1);
  v79 = *(*a3 + 4);
  v74 = *(*a4 + 1);
  v75 = **a4;
  v73 = *(*a4 + 2);
  v24 = **a5;
  v62 = **a3;
  v63 = *(*a5 + 1);
  v64 = *(*a5 + 2);
  v65 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = ldexp(1.0, a7 + 10);
  v27 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  v69 = v25;
  std::vector<int>::reserve(&__src, v25);
  v29 = v27;
  v30 = *a10;
  v31 = a10[1];
  if (v31 - *a10 == 4)
  {
    v82 = MIL::Fp16::FromFloat(v28, *v30);
    MIL::Fp16::GetFloat(&v82);
    *v33.i32 = v32 * v29;
    __e = v33.i32[0];
    std::vector<float>::assign(&__src, v69, &__e, v33);
  }

  else
  {
    while (v30 != v31)
    {
      v82 = MIL::Fp16::FromFloat(v28, *v30);
      MIL::Fp16::GetFloat(&v82);
      *&__e = v61 * v29;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v30;
    }
  }

  v81 = a4;
  if (v24)
  {
    v34 = 0;
    v70 = -20 - a7;
    v35 = v26;
    while (!v63)
    {
LABEL_69:
      if (++v34 == v24)
      {
        goto LABEL_70;
      }
    }

    v36 = 0;
    while (!v64)
    {
LABEL_68:
      if (++v36 == v63)
      {
        goto LABEL_69;
      }
    }

    v37 = 0;
    while (!v65)
    {
LABEL_67:
      if (++v37 == v64)
      {
        goto LABEL_68;
      }
    }

    v80 = 0;
    while (!v69)
    {
LABEL_66:
      if (++v80 == v65)
      {
        goto LABEL_67;
      }
    }

    v76 = 0;
    while (1)
    {
      if (v79)
      {
        v38 = 0;
        v39 = 0;
        v71 = 0;
        do
        {
          if (!a11 || (v41 = a12, v38 != *(v81[1] - 2)))
          {
          }

          if (!v39)
          {
            LOWORD(__e) = v40;
            MIL::Fp16::GetFloat(&__e);
            v43 = v42;
            v44 = ilogbf(v42);
            if (v44 <= -14)
            {
              v45 = -14;
            }

            else
            {
              v45 = v44;
            }

            if (v45 >= v70)
            {
              v46 = llroundf((v43 * v41) * v35) + v71;
              if (v46 <= 0x7FFFFFFF)
              {
                v47 = v46 < 0xFFFFFFFF80000000;
                if (v46 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v46) = -8388608;
                }

                v71 = v46;
                v39 = 2 * v47;
              }

              else
              {
                v39 = 1;
                v71 = 2139095040;
              }
            }

            else
            {
              v39 = 0;
            }
          }

          ++v38;
        }

        while (v79 != v38);
        v48 = *&__src.__begin_[v76];
        if (v39)
        {
          v49 = INFINITY;
          if (v39 == 2)
          {
            v49 = -INFINITY;
          }

          goto LABEL_55;
        }

        if (v71)
        {
          v49 = v71;
LABEL_55:
          *&__e = 0.0;
          v51 = frexp(v49, &__e);
          v52 = ldexp(v51, 11);
          v50 = ldexp(round(v52), __e - 11);
          goto LABEL_56;
        }
      }

      else
      {
        v48 = *&__src.__begin_[v76];
      }

      v50 = 0.0;
LABEL_56:
      v53 = v48 * v50;
      v54 = 0.0;
      if (v53 != 0.0)
      {
        *&__e = 0.0;
        v55 = frexp(v53, &__e);
        v56 = ldexp(v55, 11);
        v54 = ldexp(round(v56), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v54);
      if (v57 == INFINITY)
      {
        LOBYTE(v58) = -1;
      }

      else if (v57 == -INFINITY)
      {
        LOBYTE(v58) = 0;
      }

      else
      {
        v59 = llroundf(v57);
        if (v59 >= 255)
        {
          v59 = 255;
        }

        v58 = v59 & ~(v59 >> 31);
      }

      if (v76 == v69)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_70:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v60 = *MEMORY[0x277D85DE8];
}

void sub_2599BE324(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char,signed char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, char a12, uint64_t a13)
{
  v84 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  v16 = a4;
  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *v16;
  v21 = (v16[1] - *v16) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v16, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v16, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v65 = *(*a3 + 1);
  v66 = **a3;
  v64 = *(*a3 + 2);
  v79 = *(*a3 + 4);
  v72 = *(*v16 + 1);
  v73 = **v16;
  v71 = *(*v16 + 2);
  v60 = **a5;
  v61 = *(*a5 + 1);
  v62 = *(*a5 + 2);
  v63 = *(*a5 + 3);
  v24 = *(*a5 + 4);
  v25 = ldexp(1.0, a7 + 10);
  v26 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v81 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v81);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v81 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v81);
      *&__e = v59 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  if (v60)
  {
    v74 = 0;
    v68 = -20 - a7;
    v33 = v25;
    while (!v61)
    {
LABEL_71:
      if (++v74 == v60)
      {
        goto LABEL_72;
      }
    }

    v75 = 0;
    while (!v62)
    {
LABEL_70:
      if (++v75 == v61)
      {
        goto LABEL_71;
      }
    }

    v34 = 0;
    while (!v63)
    {
LABEL_69:
      if (++v34 == v62)
      {
        goto LABEL_70;
      }
    }

    v80 = 0;
    while (!v24)
    {
LABEL_68:
      if (++v80 == v63)
      {
        goto LABEL_69;
      }
    }

    v76 = 0;
    while (1)
    {
      if (v79)
      {
        v35 = v16;
        v36 = 0;
        v37 = 0;
        v69 = 0;
        do
        {
          if (!a11 || (v39 = a12, v36 != *(v35[1] - 2)))
          {
          }

          if (!v37)
          {
            LOWORD(__e) = v38;
            MIL::Fp16::GetFloat(&__e);
            v41 = v40;
            v42 = ilogbf(v40);
            if (v42 <= -14)
            {
              v43 = -14;
            }

            else
            {
              v43 = v42;
            }

            if (v43 >= v68)
            {
              v44 = llroundf((v41 * v39) * v33) + v69;
              if (v44 <= 0x7FFFFFFF)
              {
                v45 = v44 < 0xFFFFFFFF80000000;
                if (v44 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v44) = -8388608;
                }

                v69 = v44;
                v37 = 2 * v45;
              }

              else
              {
                v37 = 1;
                v69 = 2139095040;
              }
            }

            else
            {
              v37 = 0;
            }
          }

          ++v36;
        }

        while (v79 != v36);
        v46 = *&__src.__begin_[v76];
        if (v37)
        {
          v47 = INFINITY;
          if (v37 == 2)
          {
            v47 = -INFINITY;
          }

          v16 = v35;
          goto LABEL_55;
        }

        v16 = v35;
        if (v69)
        {
          v47 = v69;
LABEL_55:
          *&__e = 0.0;
          v49 = frexp(v47, &__e);
          v50 = ldexp(v49, 11);
          v48 = ldexp(round(v50), __e - 11);
          goto LABEL_56;
        }
      }

      else
      {
        v46 = *&__src.__begin_[v76];
      }

      v48 = 0.0;
LABEL_56:
      v51 = v46 * v48;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        *&__e = 0.0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        v56 = 127;
      }

      else if (v55 == -INFINITY)
      {
        v56 = 0x80;
      }

      else
      {
        v57 = llroundf(v55);
        if (v57 >= 127)
        {
          v57 = 127;
        }

        if (v57 <= -128)
        {
          v56 = 0x80;
        }

        else
        {
          v56 = v57;
        }
      }

      if (v76 == v24)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_72:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_2599BEA3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, float **a10, char a11, int a12, __int16 a13, __int16 a14, uint64_t a15)
{
  v89 = *MEMORY[0x277D85DE8];
  v15 = *a3;
  v16 = (a3[1] - *a3) >> 3;
  if ((v16 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v16 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v15 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v16 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v15 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a4;
  v22 = (a4[1] - *a4) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_, 1);
  }

  v23 = *a5;
  v24 = (a5[1] - *a5) >> 3;
  if (v24 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v24 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<MIL::Fp16>::resize(a9, a6);
  v68 = **a3;
  v69 = *(*a3 + 1);
  v71 = *(*a3 + 2);
  v85 = *(*a3 + 4);
  v81 = *(*a4 + 1);
  v82 = **a4;
  v80 = *(*a4 + 2);
  v25 = **a5;
  v70 = *(*a5 + 1);
  v72 = *(*a5 + 2);
  v73 = *(*a5 + 3);
  v26 = *(*a5 + 4);
  v27 = ldexp(1.0, a7 + 10);
  v28 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  v76 = v26;
  std::vector<int>::reserve(&__src, v26);
  v30 = v28;
  v31 = *a10;
  v32 = a10[1];
  if (v32 - *a10 == 4)
  {
    v86 = MIL::Fp16::FromFloat(v29, *v31);
    MIL::Fp16::GetFloat(&v86);
    *v34.i32 = v33 * v30;
    __e = v34.i32[0];
    std::vector<float>::assign(&__src, v76, &__e, v34);
  }

  else
  {
    while (v31 != v32)
    {
      v86 = MIL::Fp16::FromFloat(v29, *v31);
      MIL::Fp16::GetFloat(&v86);
      *&__e = v66 * v30;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v31;
    }
  }

  if (v25)
  {
    v35 = 0;
    v77 = -20 - a7;
    v36 = v27;
    v67 = v25;
    while (!v70)
    {
LABEL_60:
      if (++v35 == v67)
      {
        goto LABEL_61;
      }
    }

    v37 = 0;
    while (!v72)
    {
LABEL_59:
      if (++v37 == v70)
      {
        goto LABEL_60;
      }
    }

    v38 = 0;
    while (!v73)
    {
LABEL_58:
      if (++v38 == v72)
      {
        goto LABEL_59;
      }
    }

    v39 = 0;
    while (!v76)
    {
LABEL_57:
      if (++v39 == v73)
      {
        goto LABEL_58;
      }
    }

    v40 = 0;
    while (1)
    {
      if (v85)
      {
        v41 = 0;
        v42 = 0;
        v78 = 0;
        do
        {
          if (!a11 || (v44 = a13, v41 != *(a4[1] - 2)))
          {
          }

          if (!v42)
          {
            LOWORD(__e) = v44;
            MIL::Fp16::GetFloat(&__e);
            v46 = v45;
            LOWORD(__e) = 0;
            MIL::Fp16::GetFloat(&__e);
            v48 = v46 - v47;
            v49 = ilogbf(v48);
            if (v49 <= -14)
            {
              v50 = -14;
            }

            else
            {
              v50 = v49;
            }

            if (v50 >= v77)
            {
              v51 = llroundf((v48 * v43) * v36) + v78;
              if (v51 <= 0x7FFFFFFF)
              {
                v52 = v51 < 0xFFFFFFFF80000000;
                if (v51 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v51) = -8388608;
                }

                v78 = v51;
                v42 = 2 * v52;
              }

              else
              {
                v42 = 1;
                v78 = 2139095040;
              }
            }

            else
            {
              v42 = 0;
            }
          }

          ++v41;
        }

        while (v85 != v41);
        v53 = *&__src.__begin_[v40];
        if (v42)
        {
          v54 = INFINITY;
          if (v42 == 2)
          {
            v54 = -INFINITY;
          }

          goto LABEL_53;
        }

        if (v78)
        {
          v54 = v78;
LABEL_53:
          *&__e = 0.0;
          v56 = frexp(v54, &__e);
          v57 = ldexp(v56, 11);
          v55 = ldexp(round(v57), __e - 11);
          goto LABEL_54;
        }
      }

      else
      {
        v53 = *&__src.__begin_[v40];
      }

      v55 = 0.0;
LABEL_54:
      v58 = v53 * v55;
      v59 = 0.0;
      if (v58 != 0.0)
      {
        *&__e = 0.0;
        v60 = frexp(v58, &__e);
        v61 = ldexp(v60, 11);
        v59 = ldexp(round(v61), __e - 11);
      }

      v62 = std::function<float ()(float)>::operator()(a15, v59);
      v64 = MIL::Fp16::FromFloat(v62, v63);
      if (v40 == v76)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_61:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v65 = *MEMORY[0x277D85DE8];
}

void sub_2599BF0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 144);
  if (v19)
  {
    *(v17 - 136) = v19;
    operator delete(v19);
  }

  v20 = *a17;
  if (*a17)
  {
    *(a17 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, int a12, __int16 a13, __int16 a14, uint64_t a15)
{
  v89 = *MEMORY[0x277D85DE8];
  v16 = *a3;
  v17 = (a3[1] - *a3) >> 3;
  if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v17 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v17 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a4;
  v23 = (a4[1] - *a4) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v22 + 8, &__src, &__src.__end_, 1);
  }

  v24 = *a5;
  v25 = (a5[1] - *a5) >> 3;
  if (v25 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v24 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v25 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v24 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v72 = *(*a3 + 2);
  v73 = *(*a3 + 1);
  v84 = *(*a3 + 4);
  v80 = *(*a4 + 1);
  v81 = **a4;
  v79 = *(*a4 + 2);
  v26 = **a5;
  v68 = **a3;
  v69 = *(*a5 + 1);
  v70 = *(*a5 + 2);
  v71 = *(*a5 + 3);
  v27 = *(*a5 + 4);
  v28 = ldexp(1.0, a7 + 10);
  v29 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  v75 = v27;
  std::vector<int>::reserve(&__src, v27);
  v31 = v29;
  v32 = *a10;
  v33 = a10[1];
  if (v33 - *a10 == 4)
  {
    v86 = MIL::Fp16::FromFloat(v30, *v32);
    MIL::Fp16::GetFloat(&v86);
    *v35.i32 = v34 * v31;
    __e = v35.i32[0];
    std::vector<float>::assign(&__src, v75, &__e, v35);
  }

  else
  {
    while (v32 != v33)
    {
      v86 = MIL::Fp16::FromFloat(v30, *v32);
      MIL::Fp16::GetFloat(&v86);
      *&__e = v66 * v31;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v32;
    }
  }

  if (v26)
  {
    v36 = 0;
    v76 = -20 - a7;
    v37 = v28;
    v67 = v26;
    while (!v69)
    {
LABEL_69:
      if (++v36 == v67)
      {
        goto LABEL_70;
      }
    }

    v38 = 0;
    while (!v70)
    {
LABEL_68:
      if (++v38 == v69)
      {
        goto LABEL_69;
      }
    }

    v39 = 0;
    while (!v71)
    {
LABEL_67:
      if (++v39 == v70)
      {
        goto LABEL_68;
      }
    }

    v85 = 0;
    while (!v75)
    {
LABEL_66:
      if (++v85 == v71)
      {
        goto LABEL_67;
      }
    }

    v40 = 0;
    while (1)
    {
      if (v84)
      {
        v41 = 0;
        v42 = 0;
        v77 = 0;
        do
        {
          if (!a11 || (v44 = a13, v41 != *(a4[1] - 2)))
          {
          }

          if (!v42)
          {
            LOWORD(__e) = v44;
            MIL::Fp16::GetFloat(&__e);
            v46 = v45;
            LOWORD(__e) = 0;
            MIL::Fp16::GetFloat(&__e);
            v48 = v46 - v47;
            v49 = ilogbf(v48);
            if (v49 <= -14)
            {
              v50 = -14;
            }

            else
            {
              v50 = v49;
            }

            if (v50 >= v76)
            {
              v51 = llroundf((v48 * v43) * v37) + v77;
              if (v51 <= 0x7FFFFFFF)
              {
                v52 = v51 < 0xFFFFFFFF80000000;
                if (v51 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v51) = -8388608;
                }

                v77 = v51;
                v42 = 2 * v52;
              }

              else
              {
                v42 = 1;
                v77 = 2139095040;
              }
            }

            else
            {
              v42 = 0;
            }
          }

          ++v41;
        }

        while (v84 != v41);
        v53 = *&__src.__begin_[v40];
        if (v42)
        {
          v54 = INFINITY;
          if (v42 == 2)
          {
            v54 = -INFINITY;
          }

          goto LABEL_55;
        }

        if (v77)
        {
          v54 = v77;
LABEL_55:
          *&__e = 0.0;
          v56 = frexp(v54, &__e);
          v57 = ldexp(v56, 11);
          v55 = ldexp(round(v57), __e - 11);
          goto LABEL_56;
        }
      }

      else
      {
        v53 = *&__src.__begin_[v40];
      }

      v55 = 0.0;
LABEL_56:
      v58 = v53 * v55;
      v59 = 0.0;
      if (v58 != 0.0)
      {
        *&__e = 0.0;
        v60 = frexp(v58, &__e);
        v61 = ldexp(v60, 11);
        v59 = ldexp(round(v61), __e - 11);
      }

      std::function<float ()(float)>::operator()(a15, v59);
      if (v62 == INFINITY)
      {
        LOBYTE(v63) = -1;
      }

      else if (v62 == -INFINITY)
      {
        LOBYTE(v63) = 0;
      }

      else
      {
        v64 = llroundf(v62);
        if (v64 >= 255)
        {
          v64 = 255;
        }

        v63 = v64 & ~(v64 >> 31);
      }

      if (v40 == v75)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_70:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v65 = *MEMORY[0x277D85DE8];
}

void sub_2599BF7EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16,signed char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, int a12, __int16 a13, __int16 a14, uint64_t a15)
{
  v88 = *MEMORY[0x277D85DE8];
  v15 = *a3;
  v16 = (a3[1] - *a3) >> 3;
  if ((v16 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v16 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v15 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v16 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v15 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a4;
  v22 = (a4[1] - *a4) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_, 1);
  }

  v23 = *a5;
  v24 = (a5[1] - *a5) >> 3;
  if (v24 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v24 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v71 = *(*a3 + 1);
  v72 = **a3;
  v82 = *(*a3 + 4);
  v78 = *(*a4 + 1);
  v79 = **a4;
  v77 = *(*a4 + 2);
  v25 = **a5;
  v67 = *(*a5 + 1);
  v68 = *(*a5 + 2);
  v26 = *(*a5 + 4);
  v69 = *(*a5 + 3);
  v70 = *(*a3 + 2);
  v27 = ldexp(1.0, a7 + 10);
  v28 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  std::vector<int>::reserve(&__src, v26);
  v30 = v28;
  v31 = *a10;
  v32 = a10[1];
  if (v32 - *a10 == 4)
  {
    v85 = MIL::Fp16::FromFloat(v29, *v31);
    MIL::Fp16::GetFloat(&v85);
    *v34.i32 = v33 * v30;
    __e = v34.i32[0];
    std::vector<float>::assign(&__src, v26, &__e, v34);
  }

  else
  {
    while (v31 != v32)
    {
      v85 = MIL::Fp16::FromFloat(v29, *v31);
      MIL::Fp16::GetFloat(&v85);
      *&__e = v65 * v30;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v31;
    }
  }

  if (v25)
  {
    v35 = 0;
    v74 = -20 - a7;
    v36 = v27;
    v66 = v25;
    while (!v67)
    {
LABEL_71:
      if (++v35 == v66)
      {
        goto LABEL_72;
      }
    }

    v37 = 0;
    while (!v68)
    {
LABEL_70:
      if (++v37 == v67)
      {
        goto LABEL_71;
      }
    }

    v38 = 0;
    while (!v69)
    {
LABEL_69:
      if (++v38 == v68)
      {
        goto LABEL_70;
      }
    }

    v83 = 0;
    while (!v26)
    {
LABEL_68:
      if (++v83 == v69)
      {
        goto LABEL_69;
      }
    }

    v39 = 0;
    while (1)
    {
      if (v82)
      {
        v40 = 0;
        v41 = 0;
        v75 = 0;
        do
        {
          if (!a11 || (v43 = a13, v40 != *(a4[1] - 2)))
          {
          }

          if (!v41)
          {
            LOWORD(__e) = v43;
            MIL::Fp16::GetFloat(&__e);
            v45 = v44;
            LOWORD(__e) = 0;
            MIL::Fp16::GetFloat(&__e);
            v47 = v45 - v46;
            v48 = ilogbf(v47);
            if (v48 <= -14)
            {
              v49 = -14;
            }

            else
            {
              v49 = v48;
            }

            if (v49 >= v74)
            {
              v50 = llroundf((v47 * v42) * v36) + v75;
              if (v50 <= 0x7FFFFFFF)
              {
                v51 = v50 < 0xFFFFFFFF80000000;
                if (v50 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v50) = -8388608;
                }

                v75 = v50;
                v41 = 2 * v51;
              }

              else
              {
                v41 = 1;
                v75 = 2139095040;
              }
            }

            else
            {
              v41 = 0;
            }
          }

          ++v40;
        }

        while (v82 != v40);
        v52 = *&__src.__begin_[v39];
        if (v41)
        {
          v53 = INFINITY;
          if (v41 == 2)
          {
            v53 = -INFINITY;
          }

          goto LABEL_55;
        }

        if (v75)
        {
          v53 = v75;
LABEL_55:
          *&__e = 0.0;
          v55 = frexp(v53, &__e);
          v56 = ldexp(v55, 11);
          v54 = ldexp(round(v56), __e - 11);
          goto LABEL_56;
        }
      }

      else
      {
        v52 = *&__src.__begin_[v39];
      }

      v54 = 0.0;
LABEL_56:
      v57 = v52 * v54;
      v58 = 0.0;
      if (v57 != 0.0)
      {
        *&__e = 0.0;
        v59 = frexp(v57, &__e);
        v60 = ldexp(v59, 11);
        v58 = ldexp(round(v60), __e - 11);
      }

      std::function<float ()(float)>::operator()(a15, v58);
      if (v61 == INFINITY)
      {
        v62 = 127;
      }

      else if (v61 == -INFINITY)
      {
        v62 = 0x80;
      }

      else
      {
        v63 = llroundf(v61);
        if (v63 >= 127)
        {
          v63 = 127;
        }

        if (v63 <= -128)
        {
          v62 = 0x80;
        }

        else
        {
          v62 = v63;
        }
      }

      if (v39 == v26)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_72:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v64 = *MEMORY[0x277D85DE8];
}

void sub_2599BFEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char,MIL::Fp16>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, float **a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v80 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v19 = *a4;
  v20 = (a4[1] - *a4) >> 3;
  if (v20 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v20 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a5;
  v22 = (a5[1] - *a5) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<MIL::Fp16>::resize(a9, a6);
  v60 = **a3;
  v61 = *(*a3 + 1);
  v75 = *(*a3 + 4);
  v70 = *(*a4 + 1);
  v71 = **a4;
  v69 = *(*a4 + 2);
  v23 = **a5;
  v62 = *(*a5 + 1);
  v63 = *(*a3 + 2);
  v64 = *(*a5 + 2);
  v65 = *(*a5 + 3);
  v24 = *(*a5 + 4);
  v25 = ldexp(1.0, a7);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v67 = v24;
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v77 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v77);
    *v32.i32 = v31 * v28;
    v78 = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &v78, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v77 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v77);
      *&v78 = v58 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &v78);
      ++v29;
    }
  }

  v76 = a4;
  if (v23)
  {
    v33 = 0;
    v34 = v25;
    v59 = v23;
    while (!v62)
    {
LABEL_57:
      if (++v33 == v59)
      {
        goto LABEL_58;
      }
    }

    v35 = 0;
    while (!v64)
    {
LABEL_56:
      if (++v35 == v62)
      {
        goto LABEL_57;
      }
    }

    v36 = 0;
    while (!v65)
    {
LABEL_55:
      if (++v36 == v64)
      {
        goto LABEL_56;
      }
    }

    v37 = 0;
    while (!v67)
    {
LABEL_54:
      if (++v37 == v65)
      {
        goto LABEL_55;
      }
    }

    v38 = 0;
    while (1)
    {
      if (v75)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        do
        {
          if (!a11 || (v43 = a12, v39 != *(v76[1] - 2)))
          {
          }

          if (!v40 && a7 >= -20)
          {
            v44 = llroundf((v42 * v43) * v34) + v41;
            if (v44 <= 0x7FFFFFFF)
            {
              if (v44 >= 0xFFFFFFFF80000000)
              {
                v41 = v44;
              }

              else
              {
                v41 = -8388608;
              }

              v40 = 2 * (v44 < 0xFFFFFFFF80000000);
            }

            else
            {
              v40 = 1;
              v41 = 2139095040;
            }
          }

          ++v39;
        }

        while (v75 != v39);
        v45 = *&__src.__begin_[v38];
        if (v40)
        {
          v46 = INFINITY;
          if (v40 == 2)
          {
            v46 = -INFINITY;
          }

          goto LABEL_50;
        }

        if (v41)
        {
          v46 = v41;
LABEL_50:
          *&v78 = 0.0;
          v48 = frexp(v46, &v78);
          v49 = ldexp(v48, 11);
          v47 = ldexp(round(v49), v78 - 11);
          goto LABEL_51;
        }
      }

      else
      {
        v45 = *&__src.__begin_[v38];
      }

      v47 = 0.0;
LABEL_51:
      v50 = v45 * v47;
      v51 = 0.0;
      if (v50 != 0.0)
      {
        *&v78 = 0.0;
        v52 = frexp(v50, &v78);
        v53 = ldexp(v52, 11);
        v51 = ldexp(round(v53), v78 - 11);
      }

      v54 = std::function<float ()(float)>::operator()(a13, v51);
      v56 = MIL::Fp16::FromFloat(v54, v55);
      if (v38 == v67)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_58:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v57 = *MEMORY[0x277D85DE8];
}

void sub_2599C0568(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v81 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v19 = *a4;
  v20 = (a4[1] - *a4) >> 3;
  if (v20 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v20 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a5;
  v22 = (a5[1] - *a5) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v60 = **a3;
  v61 = *(*a3 + 1);
  v75 = *(*a3 + 4);
  v70 = *(*a4 + 1);
  v71 = **a4;
  v69 = *(*a4 + 2);
  v23 = **a5;
  v62 = *(*a5 + 1);
  v63 = *(*a5 + 2);
  v24 = *(*a5 + 4);
  v64 = *(*a5 + 3);
  v65 = *(*a3 + 2);
  v25 = ldexp(1.0, a7);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v67 = v24;
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v78 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v78);
    *v32.i32 = v31 * v28;
    v79 = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &v79, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v78 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v78);
      *&v79 = v58 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &v79);
      ++v29;
    }
  }

  v77 = a4;
  if (v23)
  {
    v33 = 0;
    v34 = v25;
    v59 = v23;
    while (!v62)
    {
LABEL_66:
      if (++v33 == v59)
      {
        goto LABEL_67;
      }
    }

    v35 = 0;
    while (!v63)
    {
LABEL_65:
      if (++v35 == v62)
      {
        goto LABEL_66;
      }
    }

    v36 = 0;
    while (!v64)
    {
LABEL_64:
      if (++v36 == v63)
      {
        goto LABEL_65;
      }
    }

    v76 = 0;
    while (!v67)
    {
LABEL_63:
      if (++v76 == v64)
      {
        goto LABEL_64;
      }
    }

    v37 = 0;
    while (1)
    {
      if (v75)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = a9;
          if (!a11 || (v43 = a12, v38 != *(v77[1] - 2)))
          {
          }

          if (!v39 && a7 >= -20)
          {
            v44 = llroundf((v42 * v43) * v34) + v40;
            if (v44 <= 0x7FFFFFFF)
            {
              if (v44 >= 0xFFFFFFFF80000000)
              {
                v40 = v44;
              }

              else
              {
                v40 = -8388608;
              }

              v39 = 2 * (v44 < 0xFFFFFFFF80000000);
            }

            else
            {
              v39 = 1;
              v40 = 2139095040;
            }
          }

          a9 = v41;
          ++v38;
        }

        while (v75 != v38);
        v45 = *&__src.__begin_[v37];
        if (v39)
        {
          v46 = INFINITY;
          if (v39 == 2)
          {
            v46 = -INFINITY;
          }

          goto LABEL_52;
        }

        if (v40)
        {
          v46 = v40;
LABEL_52:
          *&v79 = 0.0;
          v48 = frexp(v46, &v79);
          v49 = ldexp(v48, 11);
          v47 = ldexp(round(v49), v79 - 11);
          goto LABEL_53;
        }
      }

      else
      {
        v45 = *&__src.__begin_[v37];
      }

      v47 = 0.0;
LABEL_53:
      v50 = v45 * v47;
      v51 = 0.0;
      if (v50 != 0.0)
      {
        *&v79 = 0.0;
        v52 = frexp(v50, &v79);
        v53 = ldexp(v52, 11);
        v51 = ldexp(round(v53), v79 - 11);
      }

      std::function<float ()(float)>::operator()(a13, v51);
      if (v54 == INFINITY)
      {
        LOBYTE(v55) = -1;
      }

      else if (v54 == -INFINITY)
      {
        LOBYTE(v55) = 0;
      }

      else
      {
        v56 = llroundf(v54);
        if (v56 >= 255)
        {
          v56 = 255;
        }

        v55 = v56 & ~(v56 >> 31);
      }

      if (v37 == v67)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_67:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v57 = *MEMORY[0x277D85DE8];
}

void sub_2599C0C1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char,signed char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v80 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v19 = *a4;
  v20 = (a4[1] - *a4) >> 3;
  if (v20 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v20 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a5;
  v22 = (a5[1] - *a5) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v63 = *(*a3 + 2);
  v64 = *(*a3 + 1);
  v74 = *(*a3 + 4);
  v68 = *(*a4 + 1);
  v69 = **a4;
  v67 = *(*a4 + 2);
  v23 = **a5;
  v59 = **a3;
  v60 = *(*a5 + 1);
  v61 = *(*a5 + 2);
  v62 = *(*a5 + 3);
  v24 = *(*a5 + 4);
  v25 = ldexp(1.0, a7);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v77 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v77);
    *v32.i32 = v31 * v28;
    v78 = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &v78, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v77 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v77);
      *&v78 = v57 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &v78);
      ++v29;
    }
  }

  v76 = a4;
  if (v23)
  {
    v33 = 0;
    v34 = v25;
    v58 = v23;
    while (!v60)
    {
LABEL_68:
      if (++v33 == v58)
      {
        goto LABEL_69;
      }
    }

    v35 = 0;
    while (!v61)
    {
LABEL_67:
      if (++v35 == v60)
      {
        goto LABEL_68;
      }
    }

    v36 = 0;
    while (!v62)
    {
LABEL_66:
      if (++v36 == v61)
      {
        goto LABEL_67;
      }
    }

    v75 = 0;
    while (!v24)
    {
LABEL_65:
      if (++v75 == v62)
      {
        goto LABEL_66;
      }
    }

    v71 = 0;
    while (1)
    {
      if (v74)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        do
        {
          v40 = a9;
          if (!a11 || (v42 = a12, v37 != *(v76[1] - 2)))
          {
          }

          if (!v38 && a7 >= -20)
          {
            v43 = llroundf((v41 * v42) * v34) + v39;
            if (v43 <= 0x7FFFFFFF)
            {
              if (v43 >= 0xFFFFFFFF80000000)
              {
                v39 = v43;
              }

              else
              {
                v39 = -8388608;
              }

              v38 = 2 * (v43 < 0xFFFFFFFF80000000);
            }

            else
            {
              v38 = 1;
              v39 = 2139095040;
            }
          }

          a9 = v40;
          ++v37;
        }

        while (v74 != v37);
        v44 = *&__src.__begin_[v71];
        if (v38)
        {
          v45 = INFINITY;
          if (v38 == 2)
          {
            v45 = -INFINITY;
          }

          goto LABEL_52;
        }

        if (v39)
        {
          v45 = v39;
LABEL_52:
          *&v78 = 0.0;
          v47 = frexp(v45, &v78);
          v48 = ldexp(v47, 11);
          v46 = ldexp(round(v48), v78 - 11);
          goto LABEL_53;
        }
      }

      else
      {
        v44 = *&__src.__begin_[v71];
      }

      v46 = 0.0;
LABEL_53:
      v49 = v44 * v46;
      v50 = 0.0;
      if (v49 != 0.0)
      {
        *&v78 = 0.0;
        v51 = frexp(v49, &v78);
        v52 = ldexp(v51, 11);
        v50 = ldexp(round(v52), v78 - 11);
      }

      std::function<float ()(float)>::operator()(a13, v50);
      if (v53 == INFINITY)
      {
        v54 = 127;
      }

      else if (v53 == -INFINITY)
      {
        v54 = 0x80;
      }

      else
      {
        v55 = llroundf(v53);
        if (v55 >= 127)
        {
          v55 = 127;
        }

        if (v55 <= -128)
        {
          v54 = 0x80;
        }

        else
        {
          v54 = v55;
        }
      }

      if (v71 == v24)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_69:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v56 = *MEMORY[0x277D85DE8];
}

void sub_2599C12E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char,MIL::Fp16>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, float **a10, char a11, char a12, uint64_t a13)
{
  v83 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = (a4[1] - *a4) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<MIL::Fp16>::resize(a9, a6);
  v61 = **a3;
  v62 = *(*a3 + 1);
  v64 = *(*a3 + 2);
  v78 = *(*a3 + 4);
  v74 = *(*a4 + 1);
  v75 = **a4;
  v73 = *(*a4 + 2);
  v24 = **a5;
  v63 = *(*a5 + 1);
  v65 = *(*a5 + 2);
  v66 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v68 = v25;
  std::vector<int>::reserve(&__src, v25);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v80 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v80);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v68, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v80 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v80);
      *&__e = v59 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  v79 = a4;
  if (v24)
  {
    v33 = 0;
    v70 = -a7;
    v69 = 1 << ~a7;
    v71 = a7;
    v60 = v24;
    while (!v63)
    {
LABEL_59:
      if (++v33 == v60)
      {
        goto LABEL_60;
      }
    }

    v34 = 0;
    while (!v65)
    {
LABEL_58:
      if (++v34 == v63)
      {
        goto LABEL_59;
      }
    }

    v35 = 0;
    while (!v66)
    {
LABEL_57:
      if (++v35 == v65)
      {
        goto LABEL_58;
      }
    }

    v36 = 0;
    while (!v68)
    {
LABEL_56:
      if (++v36 == v66)
      {
        goto LABEL_57;
      }
    }

    v37 = 0;
    while (1)
    {
      if (v78)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        do
        {
          if (!a11 || (v42 = a12, v38 != *(v79[1] - 2)))
          {
          }

          if (!v39)
          {
            v43 = v42 * v41;
            if (v71)
            {
              v44 = (v43 + v69) >> v70;
              v43 <<= v71;
              if (v71 < 1)
              {
                v43 = v44;
              }
            }

            v45 = v40 + v43;
            if (v45 <= 0x7FFFFFFF)
            {
              if (v45 >= 0xFFFFFFFF80000000)
              {
                v40 = v45;
              }

              else
              {
                v40 = -8388608;
              }

              v39 = 2 * (v45 < 0xFFFFFFFF80000000);
            }

            else
            {
              v39 = 1;
              v40 = 2139095040;
            }
          }

          ++v38;
        }

        while (v78 != v38);
        v46 = *&__src.__begin_[v37];
        if (v39)
        {
          v47 = INFINITY;
          if (v39 == 2)
          {
            v47 = -INFINITY;
          }

          goto LABEL_52;
        }

        if (v40)
        {
          v47 = v40;
LABEL_52:
          *&__e = 0.0;
          v49 = frexp(v47, &__e);
          v50 = ldexp(v49, 11);
          v48 = ldexp(round(v50), __e - 11);
          goto LABEL_53;
        }
      }

      else
      {
        v46 = *&__src.__begin_[v37];
      }

      v48 = 0.0;
LABEL_53:
      v51 = v46 * v48;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        *&__e = 0.0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      v55 = std::function<float ()(float)>::operator()(a13, v52);
      v57 = MIL::Fp16::FromFloat(v55, v56);
      if (v37 == v68)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_60:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v58 = *MEMORY[0x277D85DE8];
}