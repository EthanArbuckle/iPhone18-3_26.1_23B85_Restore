void sub_22D3AAA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::ostringstream::~ostringstream(&a29);
  _Unwind_Resume(a1);
}

void ___ZL37ML3LibraryPinDefaultActionDescriptionx_block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2840C86F0;
  v2[1] = &unk_2840C8708;
  v3[0] = @"Play";
  v3[1] = @"Drillin";
  v2[2] = &unk_2840C8720;
  v3[2] = @"Shuffle";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription;
  ML3LibraryPinDefaultActionDescription(long long)::__pinnedEntityDefaultActionDescription = v0;
}

void ___ZL37ML3LibraryPinnedEntityTypeDescription13ML3EntityType_block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2840C86A8;
  v2[1] = &unk_2840C86C0;
  v3[0] = @"Track";
  v3[1] = @"Album";
  v2[2] = &unk_2840C86D8;
  v2[3] = &unk_2840C86F0;
  v3[2] = @"Artist";
  v3[3] = @"Playlist";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription;
  ML3LibraryPinnedEntityTypeDescription(ML3EntityType)::__pinnedEntityTypeDescription = v0;
}

BOOL ML3MatchLibraryPinImportItem::hasValue(ML3MatchLibraryPinImportItem *this, int a2)
{
  result = 0;
  if (a2 <= 419430402)
  {
    if (a2 == 419430401)
    {
      v6 = *(this + 8);
      v5 = (this + 64);
      if (std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(v6 + 96, 0x61726964u))
      {
        return 1;
      }

      v4 = 1634353513;
    }

    else
    {
      if (a2 != 419430402)
      {
        return result;
      }

      v5 = (this + 64);
      v4 = 1835624804;
    }
  }

  else
  {
    switch(a2)
    {
      case 419430403:
        v5 = (this + 64);
        v4 = 419430403;
        break;
      case 419430404:
        v5 = (this + 64);
        v4 = 1634366576;
        break;
      case 419430405:
        v4 = 1634364528;
        v5 = (this + 64);
        break;
      default:
        return result;
    }
  }

  return std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(*v5 + 96, v4) != 0;
}

unint64_t ML3MatchLibraryPinImportItem::getIntegerValue(ML3MatchLibraryPinImportItem *this, int a2)
{
  switch(a2)
  {
    case 419430402:
      v2 = *(this + 8);
      v3 = 1835624804;
      break;
    case 419430404:
      v2 = *(this + 8);
      v3 = 1634366576;
      break;
    case 419430403:
      v2 = *(this + 8);
      v3 = 1835625316;
      break;
    default:
      return 0;
  }

  ML3CPP::Element::childElementForCode(&v7, v2, v3);
  v4 = v8;
  if (v7)
  {
    v5 = ML3CPP::Element::integerValue(v7);
    if (!v4)
    {
      return v5;
    }

    goto LABEL_11;
  }

  v5 = 0;
  if (v8)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void ML3MatchLibraryPinImportItem::getStringValue(ML3MatchLibraryPinImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 == 419430405)
  {
    ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x616A6C70u);
    size = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__r.__words[0])
    {
LABEL_10:
      ML3CPP::Element::stringValue(&__str, *(__str.__r_.__value_.__r.__words[0] + 48), *(__str.__r_.__value_.__r.__words[0] + 64));
      std::string::operator=(v5, &__str);
      *(a3 + 8) = 1;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if (a2 != 419430401)
    {
      return;
    }

    v6 = (*(*this + 32))(this, 419430403);
    if (v6 == 6)
    {
      ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61726964u);
    }

    else
    {
      if (v6 != 7)
      {
        return;
      }

      ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x616A4169u);
    }

    size = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__r.__words[0])
    {
      goto LABEL_10;
    }
  }

  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }
}

void sub_22D3AAFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = v16;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL ML3MatchLibraryPinImportItem::isValid(ML3MatchLibraryPinImportItem *this)
{
  (*(*this + 24))(v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v11[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = __p;
  }

  v2 = (*(*this + 32))(this, 419430403);
  v3 = (*(*this + 32))(this, 419430404);
  size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  v5 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = (v3 - 1) > 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if ((v2 - 1) < 2)
    {
      v9 = (*(*this + 32))(this, 419430402) == 0;
      goto LABEL_24;
    }

    if ((v2 - 6) < 2)
    {
      (*(*this + 24))(v11, this, 419430401);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v11[0] = &unk_28408AC60;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = __p;
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = v10.__r_.__value_.__l.__size_ != 0;
        operator delete(v10.__r_.__value_.__l.__data_);
        if ((v5 & 0x80000000) == 0)
        {
          return v7;
        }

        goto LABEL_13;
      }

      v9 = SHIBYTE(v10.__r_.__value_.__r.__words[2]) == 0;
LABEL_24:
      v7 = !v9;
      if (v5 < 0)
      {
        goto LABEL_13;
      }

      return v7;
    }
  }

  v7 = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_13:
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_22D3AB2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void ML3MatchLibraryPinImportItem::~ML3MatchLibraryPinImportItem(ML3DAAPImportItem *this)
{
  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

void std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a4);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }
}

void sub_22D3AB400(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unordered_set<std::string>>::__init_with_size[abi:ne200100]<std::unordered_set<std::string>*,std::unordered_set<std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<std::string>>>(a4);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2);
  }

  return a1;
}

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
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
LABEL_18:
    operator new();
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
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<std::string>>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t MIPTVShowReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v22 = PBReaderReadString();
            v23 = 40;
            goto LABEL_58;
          }

          if (v13 == 8)
          {
            v14 = objc_alloc_init(MIPGenre);
            objc_storeStrong((a1 + 32), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !MIPGenreReadFrom(v14, a2))
            {
LABEL_72:

              return 0;
            }

            goto LABEL_46;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v22 = PBReaderReadString();
            v23 = 24;
            goto LABEL_58;
          }

          if (v13 == 6)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v34 & 0x7F) << v15;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_68;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_68:
            v31 = 64;
            goto LABEL_69;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v34) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v34 & 0x7F) << v24;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_64;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v26;
          }

LABEL_64:
          v31 = 48;
LABEL_69:
          *(a1 + v31) = v21;
          goto LABEL_70;
        }

        if (v13 == 4)
        {
          v22 = PBReaderReadString();
          v23 = 16;
LABEL_58:
          v30 = *(a1 + v23);
          *(a1 + v23) = v22;

          goto LABEL_70;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MIPArtist);
          objc_storeStrong((a1 + 8), v14);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !MIPArtistReadFrom(v14, a2))
          {
            goto LABEL_72;
          }

          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(MIPSeries);
          objc_storeStrong((a1 + 56), v14);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !MIPSeriesReadFrom(v14, a2))
          {
            goto LABEL_72;
          }

LABEL_46:
          PBReaderRecallMark();

          goto LABEL_70;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_70:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void ML3ExceptionUnknownException(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ML3DatabaseConnectionRaiseUnknownException" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionUnknownException_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"UnknownException" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"UnknownException", v9, v16, v17, v18, v19}];
}

void ML3ExceptionNilPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Tried to open a database without setting a path to a database file first." arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionNilPath_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"NilPath" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"NilPath", v9, v16, v17, v18, v19}];
}

void ML3DatabaseConnectionCheckDatabasePathAndRaiseIfNecessary(void *a1)
{
  v16 = a1;
  if (!v16)
  {
    ML3DatabaseConnectionRaiseNilDatabasePath();
  }

  v1 = MLMobileUserHomeDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"Media"];

  ML3DatabaseConnectionCheckPathMediaContainer(v2);
  v3 = [MEMORY[0x277CCACA8] pathWithComponents:&unk_2840C65C0];
  v11 = [v16 rangeOfString:v3];
  v12 = v4;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    ML3ExceptionUnexpectedPath(v16, v4, v5, v6, v7, v8, v9, v10, v16);
  }

  v13 = [v16 stringByReplacingCharactersInRange:v11 withString:{v12, &stru_28408B690}];
  if (MSVDeviceSupportsMultipleLibraries())
  {
    ML3DatabaseConnectionCheckPathUserHashContainer(v13);
  }

  v14 = [v13 stringByAppendingPathComponent:@"iTunes_Control"];

  ML3DatabaseConnectionCheckPathiTunesControl(v14);
  v15 = [v14 stringByAppendingPathComponent:@"iTunes"];

  ML3DatabaseConnectionCheckPathiTunesContainer(v15);
  ML3DatabaseConnectionCheckPathDatabase(v16);
}

void ML3DatabaseConnectionCheckPathMediaContainer(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];
  if (v3)
  {
    v32 = 0;
    v11 = [v2 attributesOfItemAtPath:v1 error:&v32];
    v12 = v32;
    v20 = v12;
    if (v12)
    {
      ML3RaiseExceptionWithError(v12);
    }

    if (!v11)
    {
      ML3ExceptionMediaContainerNilAttributes(v12, v13, v14, v15, v16, v17, v18, v19, v1);
    }

    v21 = getuid();
    v22 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA158]];
    v23 = [v22 unsignedIntegerValue];

    if (v23 != v21)
    {
      if (v23)
      {
        ML3ExceptionMediaContainerOwnerMismatch(v24, v25, v26, v27, v28, v29, v30, v31, v21);
      }

      else
      {
        ML3ExceptionMediaContainerOwnerIsRoot(v24, v25, v26, v27, v28, v29, v30, v31, v1);
      }
    }
  }

  else
  {
    ML3ExceptionMediaContainerDoesNotExist(v3, v4, v5, v6, v7, v8, v9, v10, v1);
  }
}

void ML3ExceptionUnexpectedPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Encountered unexpected path: %@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionUnexpectedPath_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"UnexpectedPath" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"UnexpectedPath", v9, v16, v17, v18, v19}];
}

void ML3DatabaseConnectionCheckPathUserHashContainer(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];
  if (v3)
  {
    v32 = 0;
    v11 = [v2 attributesOfItemAtPath:v1 error:&v32];
    v12 = v32;
    v20 = v12;
    if (v12)
    {
      ML3RaiseExceptionWithError(v12);
    }

    if (!v11)
    {
      ML3ExceptionUserHashContainerNilAttributes(v12, v13, v14, v15, v16, v17, v18, v19, v1);
    }

    v21 = getuid();
    v22 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA158]];
    v23 = [v22 unsignedIntegerValue];

    if (v23 != v21)
    {
      if (v23)
      {
        ML3ExceptionUserHashContainerOwnerMismatch(v24, v25, v26, v27, v28, v29, v30, v31, v21);
      }

      else
      {
        ML3ExceptionUserHashContainerOwnerIsRoot(v24, v25, v26, v27, v28, v29, v30, v31, v1);
      }
    }
  }

  else
  {
    ML3ExceptionUserHashContainerDoesNotExist(v3, v4, v5, v6, v7, v8, v9, v10, v1);
  }
}

void ML3DatabaseConnectionCheckPathiTunesControl(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];
  if (v3)
  {
    v32 = 0;
    v11 = [v2 attributesOfItemAtPath:v1 error:&v32];
    v12 = v32;
    v20 = v12;
    if (v12)
    {
      ML3RaiseExceptionWithError(v12);
    }

    if (!v11)
    {
      ML3ExceptioniTunesControlNilAttributes(v12, v13, v14, v15, v16, v17, v18, v19, v1);
    }

    v21 = getuid();
    v22 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA158]];
    v23 = [v22 unsignedIntegerValue];

    if (v23 != v21)
    {
      if (v23)
      {
        ML3ExceptioniTunesControlOwnerMismatch(v24, v25, v26, v27, v28, v29, v30, v31, v21);
      }

      else
      {
        ML3ExceptioniTunesControlOwnerIsRoot(v24, v25, v26, v27, v28, v29, v30, v31, v1);
      }
    }
  }

  else
  {
    ML3ExceptioniTunesControlDoesNotExist(v3, v4, v5, v6, v7, v8, v9, v10, v1);
  }
}

void ML3DatabaseConnectionCheckPathiTunesContainer(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];
  if (v3)
  {
    v32 = 0;
    v11 = [v2 attributesOfItemAtPath:v1 error:&v32];
    v12 = v32;
    v20 = v12;
    if (v12)
    {
      ML3RaiseExceptionWithError(v12);
    }

    if (!v11)
    {
      ML3ExceptioniTunesContainerNilAttributes(v12, v13, v14, v15, v16, v17, v18, v19, v1);
    }

    v21 = getuid();
    v22 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA158]];
    v23 = [v22 unsignedIntegerValue];

    if (v23 != v21)
    {
      if (v23)
      {
        ML3ExceptioniTunesContainerOwnerMismatch(v24, v25, v26, v27, v28, v29, v30, v31, v21);
      }

      else
      {
        ML3ExceptioniTunesContainerOwnerIsRoot(v24, v25, v26, v27, v28, v29, v30, v31, v1);
      }
    }
  }

  else
  {
    ML3ExceptioniTunesContainerDoesNotExist(v3, v4, v5, v6, v7, v8, v9, v10, v1);
  }
}

void ML3DatabaseConnectionCheckPathDatabase(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];
  if (v3)
  {
    v32 = 0;
    v11 = [v2 attributesOfItemAtPath:v1 error:&v32];
    v12 = v32;
    v20 = v12;
    if (v12)
    {
      ML3RaiseExceptionWithError(v12);
    }

    if (!v11)
    {
      ML3ExceptionDatabaseNilAttributes(v12, v13, v14, v15, v16, v17, v18, v19, v1);
    }

    v21 = getuid();
    v22 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA158]];
    v23 = [v22 unsignedIntegerValue];

    if (v23 != v21)
    {
      if (v23)
      {
        ML3ExceptionDatabaseOwnerMismatch(v24, v25, v26, v27, v28, v29, v30, v31, v21);
      }

      else
      {
        ML3ExceptionDatabaseOwnerIsRoot(v24, v25, v26, v27, v28, v29, v30, v31, v1);
      }
    }
  }

  else
  {
    ML3ExceptionDatabaseDoesNotExist(v3, v4, v5, v6, v7, v8, v9, v10, v1);
  }
}

void ML3RaiseExceptionWithError(void *a1)
{
  v5 = a1;
  v1 = [v5 domain];
  v2 = [v1 isEqual:*MEMORY[0x277CCA050]];

  if (v2)
  {
    v3 = [v5 code];
    if (v3 <= 262)
    {
      if (v3 <= 257)
      {
        v4 = v5;
        if (v3 <= 255)
        {
          if (v3 == 4)
          {
            ML3ExceptionNSFileNoSuchFileError(v5);
            goto LABEL_44;
          }

          if (v3 == 255)
          {
            ML3ExceptionNSFileLockingError(v5);
            goto LABEL_44;
          }

LABEL_43:
          ML3ExceptionUnexpectedNSCocoaError(v4);
          goto LABEL_44;
        }

        if (v3 == 256)
        {
          ML3ExceptionNSFileReadUnknownError(v5);
        }

        else
        {
          ML3ExceptionNSFileReadNoPermissionError(v5);
        }
      }

      else if (v3 <= 259)
      {
        if (v3 == 258)
        {
          ML3ExceptionNSFileReadInvalidFileNameError(v5);
        }

        else
        {
          ML3ExceptionNSFileReadCorruptFileError(v5);
        }
      }

      else if (v3 == 260)
      {
        ML3ExceptionNSFileReadNoSuchFileError(v5);
      }

      else if (v3 == 261)
      {
        ML3ExceptionNSFileReadInapplicableStringEncodingError(v5);
      }

      else
      {
        ML3ExceptionNSFileReadUnsupportedSchemeError(v5);
      }
    }

    else
    {
      if (v3 <= 515)
      {
        v4 = v5;
        if (v3 <= 511)
        {
          if (v3 == 263)
          {
            ML3ExceptionNSFileReadTooLargeError(v5);
            goto LABEL_44;
          }

          if (v3 == 264)
          {
            ML3ExceptionNSFileReadUnknownStringEncodingError(v5);
            goto LABEL_44;
          }
        }

        else
        {
          switch(v3)
          {
            case 512:
              ML3ExceptionNSFileWriteUnknownError(v5);
              goto LABEL_44;
            case 513:
              ML3ExceptionNSFileWriteNoPermissionError(v5);
              goto LABEL_44;
            case 514:
              ML3ExceptionNSFileWriteInvalidFileNameError(v5);
              goto LABEL_44;
          }
        }

        goto LABEL_43;
      }

      v4 = v5;
      if (v3 > 517)
      {
        switch(v3)
        {
          case 518:
            ML3ExceptionNSFileWriteUnsupportedSchemeError(v5);
            goto LABEL_44;
          case 640:
            ML3ExceptionNSFileWriteOutOfSpaceError(v5);
            goto LABEL_44;
          case 642:
            ML3ExceptionNSFileWriteVolumeReadOnlyError(v5);
            goto LABEL_44;
        }

        goto LABEL_43;
      }

      if (v3 == 516)
      {
        ML3ExceptionNSFileWriteFileExistsError(v5);
      }

      else
      {
        ML3ExceptionNSFileWriteInapplicableStringEncodingError(v5);
      }
    }
  }

LABEL_44:
  ML3ExceptionUnexpectedError(v5);
}

void ML3ExceptionDatabaseNilAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Could not fetch attributes at path %@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionDatabaseNilAttributes_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"DatabaseNilAttributes" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"DatabaseNilAttributes", v9, v16, v17, v18, v19}];
}

void ML3ExceptionDatabaseOwnerIsRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Owner is root. path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionDatabaseOwnerIsRoot_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"DatabaseOwnerIsRoot" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"DatabaseOwnerIsRoot", v9, v16, v17, v18, v19}];
}

void ML3ExceptionDatabaseOwnerMismatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Path owner mismatch. uid=%u ownerID=%lu path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionDatabaseOwnerMismatch_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"DatabaseOwnerMismatch" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"DatabaseOwnerMismatch", v9, v16, v17, v18, v19}];
}

void ML3ExceptionDatabaseDoesNotExist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ does not exist" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionDatabaseDoesNotExist_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"DatabaseDoesNotExist" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"DatabaseDoesNotExist", v9, v16, v17, v18, v19}];
}

void ML3ExceptionNSFileNoSuchFileError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileNoSuchFileError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileNoSuchFileError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileNoSuchFileError", v1}];
}

void ML3ExceptionNSFileLockingError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileLockingError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileLockingError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileLockingError", v1}];
}

void ML3ExceptionNSFileReadUnknownError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileReadUnknownError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileReadUnknownError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileReadUnknownError", v1}];
}

void ML3ExceptionNSFileReadNoPermissionError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileReadNoPermissionError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileReadNoPermissionError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileReadNoPermissionError", v1}];
}

void ML3ExceptionNSFileReadInvalidFileNameError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileReadInvalidFileNameError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileReadInvalidFileNameError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileReadInvalidFileNameError", v1}];
}

void ML3ExceptionNSFileReadCorruptFileError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileReadCorruptFileError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileReadCorruptFileError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileReadCorruptFileError", v1}];
}

void ML3ExceptionNSFileReadNoSuchFileError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileReadNoSuchFileError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileReadNoSuchFileError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileReadNoSuchFileError", v1}];
}

void ML3ExceptionNSFileReadInapplicableStringEncodingError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileReadInapplicableStringEncodingError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileReadInapplicableStringEncodingError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileReadInapplicableStringEncodingError", v1}];
}

void ML3ExceptionNSFileReadUnsupportedSchemeError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileReadUnsupportedSchemeError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileReadUnsupportedSchemeError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileReadUnsupportedSchemeError", v1}];
}

void ML3ExceptionNSFileReadTooLargeError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileReadTooLargeError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileReadTooLargeError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileReadTooLargeError", v1}];
}

void ML3ExceptionNSFileReadUnknownStringEncodingError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileReadUnknownStringEncodingError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileReadUnknownStringEncodingError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileReadUnknownStringEncodingError", v1}];
}

void ML3ExceptionNSFileWriteUnknownError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileWriteUnknownError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileWriteUnknownError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileWriteUnknownError", v1}];
}

void ML3ExceptionNSFileWriteNoPermissionError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileWriteNoPermissionError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileWriteNoPermissionError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileWriteNoPermissionError", v1}];
}

void ML3ExceptionNSFileWriteInvalidFileNameError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileWriteInvalidFileNameError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileWriteInvalidFileNameError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileWriteInvalidFileNameError", v1}];
}

void ML3ExceptionNSFileWriteFileExistsError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileWriteFileExistsError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileWriteFileExistsError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileWriteFileExistsError", v1}];
}

void ML3ExceptionNSFileWriteInapplicableStringEncodingError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileWriteInapplicableStringEncodingError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileWriteInapplicableStringEncodingError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileWriteInapplicableStringEncodingError", v1}];
}

void ML3ExceptionNSFileWriteUnsupportedSchemeError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileWriteUnsupportedSchemeError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileWriteUnsupportedSchemeError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileWriteUnsupportedSchemeError", v1}];
}

void ML3ExceptionNSFileWriteOutOfSpaceError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileWriteOutOfSpaceError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileWriteOutOfSpaceError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileWriteOutOfSpaceError", v1}];
}

void ML3ExceptionNSFileWriteVolumeReadOnlyError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionNSFileWriteVolumeReadOnlyError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"NSFileWriteVolumeReadOnlyError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"NSFileWriteVolumeReadOnlyError", v1}];
}

void ML3ExceptionUnexpectedNSCocoaError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionUnexpectedNSCocoaError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"UnexpectedNSCocoaError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"UnexpectedNSCocoaError", v1}];
}

void ML3ExceptionUnexpectedError(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D27EF0];
  v4 = *MEMORY[0x277D27EC0];
  v10[0] = v1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ML3ExceptionUnexpectedError_block_invoke;
  v8[3] = &unk_278765FB8;
  v9 = v2;
  v6 = v2;
  [v3 snapshotWithDomain:v4 type:@"Bug" subType:@"ML3FatalError" context:@"UnexpectedError" triggerThresholdValues:0 events:v5 completion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v6, v7);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ML3Exception%@ - Encountered error: %@", @"UnexpectedError", v1}];
}

void ML3ExceptioniTunesContainerNilAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Could not fetch attributes at path %@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptioniTunesContainerNilAttributes_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"iTunesContainerNilAttributes" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"iTunesContainerNilAttributes", v9, v16, v17, v18, v19}];
}

void ML3ExceptioniTunesContainerOwnerIsRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Owner is root. path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptioniTunesContainerOwnerIsRoot_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"iTunesContainerOwnerIsRoot" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"iTunesContainerOwnerIsRoot", v9, v16, v17, v18, v19}];
}

void ML3ExceptioniTunesContainerOwnerMismatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Path owner mismatch. uid=%u ownerID=%lu path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptioniTunesContainerOwnerMismatch_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"iTunesContainerOwnerMismatch" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"iTunesContainerOwnerMismatch", v9, v16, v17, v18, v19}];
}

void ML3ExceptioniTunesContainerDoesNotExist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ does not exist" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptioniTunesContainerDoesNotExist_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"iTunesContainerDoesNotExist" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"iTunesContainerDoesNotExist", v9, v16, v17, v18, v19}];
}

void ML3ExceptioniTunesControlNilAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Could not fetch attributes at path %@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptioniTunesControlNilAttributes_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"iTunesControlNilAttributes" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"iTunesControlNilAttributes", v9, v16, v17, v18, v19}];
}

void ML3ExceptioniTunesControlOwnerIsRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Owner is root. path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptioniTunesControlOwnerIsRoot_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"iTunesControlOwnerIsRoot" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"iTunesControlOwnerIsRoot", v9, v16, v17, v18, v19}];
}

void ML3ExceptioniTunesControlOwnerMismatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Path owner mismatch. uid=%u ownerID=%lu path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptioniTunesControlOwnerMismatch_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"iTunesControlOwnerMismatch" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"iTunesControlOwnerMismatch", v9, v16, v17, v18, v19}];
}

void ML3ExceptioniTunesControlDoesNotExist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ does not exist" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptioniTunesControlDoesNotExist_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"iTunesControlDoesNotExist" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"iTunesControlDoesNotExist", v9, v16, v17, v18, v19}];
}

void ML3ExceptionUserHashContainerNilAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Could not fetch attributes at path %@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionUserHashContainerNilAttributes_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"UserHashContainerNilAttributes" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"UserHashContainerNilAttributes", v9, v16, v17, v18, v19}];
}

void ML3ExceptionUserHashContainerOwnerIsRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Owner is root. path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionUserHashContainerOwnerIsRoot_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"UserHashContainerOwnerIsRoot" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"UserHashContainerOwnerIsRoot", v9, v16, v17, v18, v19}];
}

void ML3ExceptionUserHashContainerOwnerMismatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Path owner mismatch. uid=%u ownerID=%lu path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionUserHashContainerOwnerMismatch_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"UserHashContainerOwnerMismatch" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"UserHashContainerOwnerMismatch", v9, v16, v17, v18, v19}];
}

void ML3ExceptionUserHashContainerDoesNotExist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ does not exist" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionUserHashContainerDoesNotExist_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"UserHashContainerDoesNotExist" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"UserHashContainerDoesNotExist", v9, v16, v17, v18, v19}];
}

void ML3ExceptionMediaContainerNilAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Could not fetch attributes at path %@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionMediaContainerNilAttributes_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"MediaContainerNilAttributes" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"MediaContainerNilAttributes", v9, v16, v17, v18, v19}];
}

void ML3ExceptionMediaContainerOwnerIsRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Owner is root. path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionMediaContainerOwnerIsRoot_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"MediaContainerOwnerIsRoot" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"MediaContainerOwnerIsRoot", v9, v16, v17, v18, v19}];
}

void ML3ExceptionMediaContainerOwnerMismatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Path owner mismatch. uid=%u ownerID=%lu path=%@" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionMediaContainerOwnerMismatch_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"MediaContainerOwnerMismatch" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"MediaContainerOwnerMismatch", v9, v16, v17, v18, v19}];
}

void ML3ExceptionMediaContainerDoesNotExist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = &a9;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ does not exist" arguments:&a9];
  v10 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D27EF0];
  v12 = *MEMORY[0x277D27EC0];
  v22[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __ML3ExceptionMediaContainerDoesNotExist_block_invoke;
  v19 = &unk_278765FB8;
  v20 = v10;
  v14 = v10;
  [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"Database Connection Exception" context:@"MediaContainerDoesNotExist" triggerThresholdValues:0 events:v13 completion:&v16];

  v15 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v14, v15);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@ %@", @"MediaContainerDoesNotExist", v9, v16, v17, v18, v19}];
}

uint64_t MIPSongReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v73) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v73 & 0x7F) << v5;
      if ((v73 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(MIPAlbum);
        objc_storeStrong((a1 + 16), v13);
        v73 = 0;
        v74 = 0;
        if (PBReaderPlaceMark() && MIPAlbumReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        goto LABEL_141;
      case 2u:
        v13 = objc_alloc_init(MIPArtist);
        v30 = 24;
        goto LABEL_61;
      case 3u:
        v13 = objc_alloc_init(MIPArtist);
        v30 = 40;
LABEL_61:
        objc_storeStrong((a1 + v30), v13);
        v73 = 0;
        v74 = 0;
        if (PBReaderPlaceMark() && MIPArtistReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        goto LABEL_141;
      case 4u:
        v13 = objc_alloc_init(MIPGenre);
        objc_storeStrong((a1 + 56), v13);
        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !MIPGenreReadFrom(v13, a2))
        {
          goto LABEL_141;
        }

        goto LABEL_63;
      case 5u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v73 & 0x7F) << v17;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_112;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_112:
        v69 = 48;
        goto LABEL_131;
      case 6u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 108) |= 0x10u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v73 & 0x7F) << v38;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_122;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v40;
        }

LABEL_122:
        v69 = 96;
        goto LABEL_131;
      case 7u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 108) |= 0x20u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v73 & 0x7F) << v50;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_130;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v52;
        }

LABEL_130:
        v69 = 100;
        goto LABEL_131;
      case 8u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 108) |= 0x40u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v73 & 0x7F) << v31;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            LOBYTE(v37) = 0;
            goto LABEL_118;
          }
        }

        v37 = (v33 != 0) & ~[a2 hasError];
LABEL_118:
        v70 = 104;
        goto LABEL_134;
      case 9u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 108) |= 1u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v73 & 0x7F) << v62;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v68 = 0;
            goto LABEL_138;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v64;
        }

LABEL_138:
        *(a1 + 8) = v68;
        goto LABEL_139;
      case 0xAu:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v73 & 0x7F) << v24;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_116;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_116:
        v69 = 32;
        goto LABEL_131;
      case 0xBu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 108) |= 0x80u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v73 & 0x7F) << v56;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            LOBYTE(v37) = 0;
            goto LABEL_133;
          }
        }

        v37 = (v58 != 0) & ~[a2 hasError];
LABEL_133:
        v70 = 105;
LABEL_134:
        *(a1 + v70) = v37;
        goto LABEL_139;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_23;
      case 0xDu:
        v13 = objc_alloc_init(MIPPlaybackInfo);
        objc_storeStrong((a1 + 88), v13);
        v73 = 0;
        v74 = 0;
        if (PBReaderPlaceMark() && MIPPlaybackInfoReadFrom(v13, a2))
        {
LABEL_63:
          PBReaderRecallMark();

LABEL_139:
          v71 = [a2 position];
          if (v71 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_141:

        return 0;
      case 0xEu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 108) |= 8u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v73 & 0x7F) << v44;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_126;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v46;
        }

LABEL_126:
        v69 = 80;
LABEL_131:
        *(a1 + v69) = v23;
        goto LABEL_139;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 64;
LABEL_23:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_139;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_139;
    }
  }
}

uint64_t ML3ImportExecuteVariadicStatement(void *a1, const UInt8 *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = ML3CPPBridgeString(a2, 0);
  v7 = [v5 _prepareStatement:v6 error:0];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = [v9 sqliteStatement];
    v17 = v10;
    v18 = 0;
    v11 = *a3;
    v12 = a3[1];
    if (*a3 != v12)
    {
      v13 = 1;
      do
      {
        if (*(v11 + 32) == 1)
        {
          v18 = v13;
          v14 = *(v11 + 24);
          if (v14 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v19 = &v17;
          (off_2840838A8[v14])(&v19, v11);
        }

        else
        {
          sqlite3_bind_null(v10, v13);
        }

        v11 += 40;
        ++v13;
      }

      while (v11 != v12);
    }

    v15 = [v5 _executeStatement:v9 withError:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3StatementBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*v2)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3StatementBindingVisitor::operator()(ML3CPPDataRef)"];
  [v5 handleFailureInFunction:v6 file:@"ML3ImportDatabaseUtilities.mm" lineNumber:112 description:@"Cannot bind data: no sqlite3_stmt*"];

  if (v4)
  {
LABEL_5:
    sqlite3_bind_blob(*v2, *(v2 + 8), *(v4 + 16), *(v4 + 8), 0);
  }

LABEL_6:
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_22D3B4BF0(_Unwind_Exception *a1)
{
  v4 = v3;

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3StatementBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(sqlite3_stmt ***a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3StatementBindingVisitor::operator()(const std::string &)"];
    [v10 handleFailureInFunction:v11 file:@"ML3ImportDatabaseUtilities.mm" lineNumber:106 description:@"Cannot bind string: no sqlite3_stmt*"];

    v4 = *v3;
  }

  v5 = *(v3 + 2);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  return sqlite3_bind_text(v4, v5, v7, v8, 0);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3StatementBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(sqlite3_stmt ***a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3StatementBindingVisitor::operator()(const BOOL &)"];
    [v8 handleFailureInFunction:v9 file:@"ML3ImportDatabaseUtilities.mm" lineNumber:100 description:@"Cannot bind BOOL: no sqlite3_stmt*"];

    v4 = *v3;
  }

  v5 = *(v3 + 2);
  v6 = *a2;

  return sqlite3_bind_int(v4, v5, v6);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3StatementBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(sqlite3_stmt ***a1, float *a2)
{
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3StatementBindingVisitor::operator()(const float_t &)"];
    [v8 handleFailureInFunction:v9 file:@"ML3ImportDatabaseUtilities.mm" lineNumber:94 description:@"Cannot bind float: no sqlite3_stmt*"];

    v4 = *v3;
  }

  v5 = *(v3 + 2);
  v6 = *a2;

  return sqlite3_bind_double(v4, v5, v6);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<ML3StatementBindingVisitor &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>> const&>(sqlite3_stmt ***a1, sqlite3_int64 *a2)
{
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3StatementBindingVisitor::operator()(const int64_t &)"];
    [v8 handleFailureInFunction:v9 file:@"ML3ImportDatabaseUtilities.mm" lineNumber:88 description:@"Cannot bind int64_t: no sqlite3_stmt*"];

    v4 = *v3;
  }

  v5 = *(v3 + 2);
  v6 = *a2;

  return sqlite3_bind_int64(v4, v5, v6);
}

uint64_t ML3StoreImportItem::canInsertIntoPurchasedPlaylist(ML3StoreImportItem *this)
{
  v2 = (*(*this + 32))(this, 100663310);
  v3 = (*(*this + 32))(this, 16777217) & 0x40A;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (*(this + 16) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 76) ^ 1;
  }

  return v5 & 1;
}

id ML3StoreImportItem::getDeduplicationOrderingTerms(ML3StoreImportItem *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = [ML3OrderingTerm orderingTermWithProperty:@"base_location_id" direction:1];
  v4[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

id ML3StoreImportItem::getDeduplicationPredicates(id *this)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v3 = [this[8] objectForKey:&unk_2840C8738];
  v4 = [v3 longLongValue];

  if (v4)
  {
    v5 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v4];
    [v2 addObject:v5];
  }

  v34 = [this[8] objectForKey:&unk_2840C8750];
  if (v34)
  {
    v6 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.download_identifier" equalToValue:v34];
    [v2 addObject:v6];
  }

  v7 = [this[8] objectForKey:&unk_2840C8768];
  v8 = [v7 longLongValue];

  if (v8)
  {
    v9 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:v8];
    [v2 addObject:v9];
  }

  v10 = [this[8] objectForKey:&unk_2840C8780];
  if (v10)
  {
    v11 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_xid" equalToValue:v10];
    [v2 addObject:v11];
  }

  v12 = [this[8] objectForKey:&unk_2840C8798];
  v13 = [v12 longLongValue];

  if (v13)
  {
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v13];
    [v2 addObject:v14];

    v15 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:0];
    v40[0] = v15;
    v16 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v13];
    v40[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];
    [v2 addObject:v18];
  }

  v19 = [this[8] objectForKey:&unk_2840C87B0];
  v20 = [v19 longLongValue];

  if (v20)
  {
    v21 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v20];
    [v2 addObject:v21];

    if (!v13)
    {
      v22 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v20];
      [v2 addObject:v22];
    }
  }

  [this[8] objectForKey:&unk_2840C87C8];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v23 = v36 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v24)
  {
    v25 = *v36;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [*(*(&v35 + 1) + 8 * i) longLongValue];
        if (v27)
        {
          v28 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v27];
          [v2 addObject:v28];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v24);
  }

  v29 = [this[8] objectForKey:&unk_2840C87E0];
  v30 = [this[8] objectForKey:&unk_2840C87F8];
  v31 = v30;
  if (v29 && ([v30 longLongValue] & 4) != 0)
  {
    v32 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.external_guid" value:v29 comparison:1 caseInsensitive:1];
    [v2 addObject:v32];
  }

  return v2;
}

void sub_22D3B5768(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3StoreImportItem::getDescription(ML3StoreImportItem *this)
{
  v2 = (*(*this + 32))(this, 100663305);
  v3 = (*(*this + 32))(this, 100663297);
  (*(*this + 32))(this, 167772174);
  v4 = (*(*this + 32))(this, 100663337);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "<ML3StoreImportItem ", 20);
  *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = MEMORY[0x2318CD100](&v15, this);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " item_pid=", 10);
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 2;
  v7 = MEMORY[0x2318CD140]();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", storeId=", 10);
  v9 = MEMORY[0x2318CD140](v8, v3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", sagaId=", 9);
  v11 = MEMORY[0x2318CD140](v10, v2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", subscriptionId=", 17);
  v13 = MEMORY[0x2318CD140](v12, v4);
  v20 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v20, 1);
  std::stringbuf::str();
  v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v19);
}

BOOL ML3StoreImportItem::hasValue(ML3StoreImportItem *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 8);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    return 1;
  }

  if ((v2 - 100663344) < 2)
  {
    return *(this + 18) == 6;
  }

  if (v2 != 100663338)
  {
    return 0;
  }

  if (*(this + 18) == 6)
  {
    return 1;
  }

  return (*(*this + 32))(this, 100663310) != 0;
}

void ML3StoreImportItem::getDataValue(ML3StoreImportItem *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v3 = *(this + 8);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v5 = [v3 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    [v6 bytes];
    [v6 length];
    operator new();
  }
}

void sub_22D3B5CA0(_Unwind_Exception *a1)
{
  MEMORY[0x2318CD250](v3, 0x1091C40934DB768);

  _Unwind_Resume(a1);
}

void sub_22D3B5D58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ML3CPPData *,std::shared_ptr<ML3CPPData>::__shared_ptr_default_delete<ML3CPPData,ML3CPPData>,std::allocator<ML3CPPData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI10ML3CPPDataE27__shared_ptr_default_deleteIS1_S1_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3CPPData *,std::shared_ptr<ML3CPPData>::__shared_ptr_default_delete<ML3CPPData,ML3CPPData>,std::allocator<ML3CPPData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3CPPData *,std::shared_ptr<ML3CPPData>::__shared_ptr_default_delete<ML3CPPData,ML3CPPData>,std::allocator<ML3CPPData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

float ML3StoreImportItem::getFloatValue(ML3StoreImportItem *this, uint64_t a2)
{
  v2 = *(this + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v4 = [v2 objectForKey:v3];

  if (objc_opt_respondsToSelector())
  {
    [v4 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v4 doubleValue];
      v6 = v7;
    }
  }

  return v6;
}

uint64_t ML3StoreImportItem::getIntegerValue(ML3StoreImportItem *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 8);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v6 = [v4 objectForKey:v5];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 longLongValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 18);
  if (v8 != 6)
  {
    if (v2 != 16777247 || v8 != 5 || v7)
    {
      goto LABEL_26;
    }

    if ((*(this + 16) & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v2 > 100663337)
  {
    if (v2 != 100663338)
    {
      if (v2 == 100663345)
      {
        v7 = 1;
      }

      goto LABEL_26;
    }

    if (!(*(*this + 32))(this, 100663310))
    {
      if ((*(*this + 32))(this, 100663337))
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_26;
    }

LABEL_23:
    v7 = 0;
    goto LABEL_26;
  }

  if (v2 == 16777247)
  {
    if (!*(this + 76))
    {
      v7 = 0;
    }
  }

  else if (v2 == 33554443)
  {
    if (v7)
    {
      v9 = v7;
LABEL_25:
      v7 = v9;
      goto LABEL_26;
    }

LABEL_24:
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    goto LABEL_25;
  }

LABEL_26:

  return v7;
}

void ML3StoreImportItem::getStringValue(ML3StoreImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v5 = *(this + 8);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v7 = [v5 objectForKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, [v7 UTF8String]);
    std::string::operator=(v4, &__str);
    *(a3 + 8) = 1;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = __str.__r_.__value_.__r.__words[0];
LABEL_6:
      operator delete(v8);
    }
  }

  else
  {
    __str.__r_.__value_.__s.__data_[8] = 0;
    v10 = 0;
    v11 = 0;
    __str.__r_.__value_.__r.__words[2] = 0;
    *(a3 + 8) = 0;
    std::string::operator=(v4, &__str.__r_.__value_.__r.__words[2]);
    __str.__r_.__value_.__r.__words[0] = &unk_28408AC60;
    if (SHIBYTE(v11) < 0)
    {
      v8 = __str.__r_.__value_.__r.__words[2];
      goto LABEL_6;
    }
  }
}

void sub_22D3B623C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *v20 = v21;
  if (*(v20 + 39) < 0)
  {
    operator delete(*v22);
  }

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

BOOL ML3StoreImportItem::isValid(ML3StoreImportItem *this)
{
  if ((*(*this + 32))(this, 100663297) || (*(*this + 32))(this, 100663337))
  {
    return 1;
  }

  (*(*this + 24))(&v10, this, 100663323);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v11;
  }

  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  v5 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v2 = 1;
  }

  else
  {
    (*(*this + 24))(&v7, this, 100663341);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = __p;
    }

    v6 = v9.__r_.__value_.__l.__size_;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    v2 = v6 != 0;
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    v7 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v5 < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v10 = &unk_28408AC60;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_22D3B6578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(*(v29 - 64));
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void ML3StoreImportItem::~ML3StoreImportItem(id *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3StoreAlbumImportItem::propertyKeyForSortPropertyKey(ML3StoreAlbumImportItem *this, int a2)
{
  if (a2 == 285212674)
  {
    return 285212673;
  }

  else
  {
    return 0;
  }
}

uint64_t ML3StoreAlbumImportItem::sortPropertyKeyForPropertyKey(ML3StoreAlbumImportItem *this, int a2)
{
  if (a2 == 285212673)
  {
    return 285212674;
  }

  else
  {
    return 0;
  }
}

id ML3StoreAlbumImportItem::getDeduplicationPredicates(ML3StoreAlbumImportItem *this)
{
  v46[5] = *MEMORY[0x277D85DE8];
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = (*(*this + 32))(this, 285212696);
  v3 = (*(*this + 32))(this, 285212683);
  (*(*this + 24))(v40, this, 285212673);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v40[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v42 = __p;
  }

  (*(*this + 24))(v40, this, 285212699);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v40[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v39 = __p;
  }

  (*(*this + 24))(v40, this, 285212682);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v40[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v38 = __p;
  }

  size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = *(this + 9);
    v6 = ML3CPPBridgeString(&v42, 1);
    v7 = [v5 groupingKeyForString:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v39.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    v9 = *(this + 9);
    v10 = ML3CPPBridgeString(&v39, 1);
    v11 = [v9 groupingKeyForString:v10];

    if (!v2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v11 = 0;
    if (!v2)
    {
      goto LABEL_29;
    }
  }

  if ([v7 length] && objc_msgSend(v11, "length"))
  {
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v2];
    v46[0] = v12;
    v13 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1];
    v46[1] = v13;
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v11];
    v46[2] = v14;
    v15 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v7];
    v46[3] = v15;
    v16 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v3];
    v46[4] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:5];
    v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];

    [v37 addObject:v18];
  }

  else
  {
    v19 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v2];
    v45[0] = v19;
    v20 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1];
    v45[1] = v20;
    v21 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
    v45[2] = v21;
    v22 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
    v45[3] = v22;
    v23 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v3];
    v45[4] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:5];
    v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v24];

    [v37 addObject:v18];
  }

LABEL_29:
  if ([v7 length] && objc_msgSend(v11, "length"))
  {
    v25 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v11];
    v44[0] = v25;
    v26 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v7];
    v44[1] = v26;
    v27 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v3];
    v44[2] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v29 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v28];

    [v37 addObject:v29];
  }

  if ([v7 length])
  {
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v38.__r_.__value_.__l.__size_)
      {
        goto LABEL_39;
      }

      v30 = v38.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v38.__r_.__value_.__s + 23))
      {
        goto LABEL_39;
      }

      v30 = &v38;
    }

    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
    v32 = [ML3ComparisonPredicate predicateWithProperty:@"feed_url" equalToValue:v31];
    v43[0] = v32;
    v33 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v7];
    v43[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v35 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v34];

    [v37 addObject:v35];
  }

LABEL_39:

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  return v37;
}

void sub_22D3B6E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void ML3StoreAlbumImportItem::getDescription(ML3StoreAlbumImportItem *this)
{
  (*(*this + 24))(&v13);
  v2 = (*(*this + 32))(this, 285212696);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "<ML3StoreAlbumImportItem ", 25);
  *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = MEMORY[0x2318CD100](&v8, this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " name=", 6);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " storeID=", 9);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v6 = MEMORY[0x2318CD140](v3, v2);
  v15 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v15, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v12);
  v13 = &unk_28408AC60;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_22D3B7428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ostringstream::~ostringstream(&a15);
  *(v15 - 96) = &unk_28408AC60;
  if (*(v15 - 57) < 0)
  {
    operator delete(*(v15 - 80));
  }

  _Unwind_Resume(a1);
}

BOOL ML3StoreAlbumImportItem::hasValue(ML3StoreAlbumImportItem *this, uint64_t a2)
{
  v3 = 0;
  if (a2 <= 33554461)
  {
    if (a2 == 16777217 || a2 == 16777248)
    {
      goto LABEL_4;
    }

    v8 = 19;
LABEL_13:
    if (a2 != (v8 | 0x2000000))
    {
      return v3;
    }

    goto LABEL_4;
  }

  if ((a2 - 285212673) > 0x17)
  {
    goto LABEL_12;
  }

  if (((1 << (a2 - 1)) & 0x920FC3) != 0)
  {
LABEL_4:
    v4 = *(this + 8);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v6 = [v4 objectForKey:v5];
    v3 = v6 != 0;

    return v3;
  }

  if (a2 != 285212688)
  {
LABEL_12:
    v8 = 30;
    goto LABEL_13;
  }

  (*(*this + 24))(v14, this, 33554462);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v14[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = __p;
  }

  (*(*this + 24))(v14, this, 33554451);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v14[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = __p;
  }

  v9 = (*(*this + 32))(this, 16777248);
  size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  v11 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v3 = 1;
  }

  else if (v9)
  {
    v12 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v13.__r_.__value_.__l.__size_;
    }

    v3 = v12 != 0;
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_22D3B7734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3StoreAlbumImportItem::getIntegerValue(ML3StoreAlbumImportItem *this, uint64_t a2)
{
  v3 = 0;
  if (a2 <= 285212682)
  {
    if (a2 != 16777217)
    {
      v4 = 16777248;
LABEL_7:
      v5 = 0;
      if (a2 != v4)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    v6 = *(this + 8);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v3 = [v6 objectForKey:v7];

    if (_NSIsNSNumber())
    {
      v5 = [v3 longLongValue];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_31;
  }

  if ((a2 - 285212683) < 2)
  {
    goto LABEL_8;
  }

  if (a2 != 285212688)
  {
    v4 = 285212696;
    goto LABEL_7;
  }

  (*(*this + 24))(v15, this, 33554462);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v15[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = __p;
  }

  (*(*this + 24))(v15, this, 33554451);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v15[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = __p;
  }

  v8 = (*(*this + 56))(this, 16777248);
  size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  v10 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  if (((size == 0) & v8) != 0)
  {
    v11 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v14.__r_.__value_.__l.__size_;
    }

    v12 = v11 != 0;
    if ((*(&v14.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v12 = size != 0;
  if ((*(&v14.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_27:
    operator delete(v14.__r_.__value_.__l.__data_);
  }

LABEL_28:
  v5 = v12;
  if (v10 < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v3 = 0;
LABEL_31:

  return v5;
}

void sub_22D3B7A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void ML3StoreAlbumImportItem::getStringValue(ML3StoreAlbumImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if ((a2 - 285212673) <= 0x1A && ((1 << (a2 - 1)) & 0x4000203) != 0 || a2 == 33554462 || (v7 = 0, a2 == 33554451))
  {
    v5 = *(this + 8);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v7 = [v5 objectForKey:v6];

    if (_NSIsNSString())
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, [v7 UTF8String]);
      std::string::operator=(v4, &__str);
      *(a3 + 8) = 1;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_22D3B7C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *v15 = v16;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

void ML3StoreAlbumImportItem::~ML3StoreAlbumImportItem(id *this)
{
  ML3StoreAlbumImportItem::~ML3StoreAlbumImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3StoreArtistImportItem::propertyKeyForSortPropertyKey(ML3StoreArtistImportItem *this, int a2)
{
  if (a2 == 318767106)
  {
    v2 = 318767105;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 318767108)
  {
    v3 = 318767107;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 301989890)
  {
    return 301989889;
  }

  else
  {
    return v3;
  }
}

uint64_t ML3StoreArtistImportItem::sortPropertyKeyForPropertyKey(ML3StoreArtistImportItem *this, int a2)
{
  if (a2 == 318767105)
  {
    v2 = 318767106;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 318767107)
  {
    v3 = 318767108;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 301989889)
  {
    return 301989890;
  }

  else
  {
    return v3;
  }
}

void ML3StoreArtistImportItem::getEffectiveSortSeriesName(ML3StoreArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(*this + 24))(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v14;
  }

  (*(*this + 24))(&v13, this, 318767108);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = v14;
  }

  v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&v12.__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__r.__words[2];
  }

  v7 = v14.__r_.__value_.__s.__data_[7];
  v8 = v14.__r_.__value_.__s.__data_[7];
  size = *(&v13 + 1);
  if (v14.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v14.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v10 = *(&v13 + 1);
  }

  if (!v10)
  {
    ML3CPPSortableString(&v11, &v15);
    if (v8 < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    size = v11.__r_.__value_.__l.__size_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  if ((v8 & 0x80u) != 0)
  {
    v7 = size;
  }

  if (v7 && a2)
  {
    ML3CPPSanitizeString(&v11, &v13);
    if (v14.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v8 & 0x80) == 0)
  {
    *(a3 + 16) = v13;
    *(a3 + 32) = v14.__r_.__value_.__r.__words[0];
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v13, *(&v13 + 1));
  if ((v14.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v13);
  if (v6 < 0)
  {
LABEL_31:
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_22D3B80A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a13);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3StoreArtistImportItem::getEffectiveSortArtist(ML3StoreArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(*this + 24))(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v14;
  }

  (*(*this + 24))(&v13, this, 318767106);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = v14;
  }

  v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&v12.__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__r.__words[2];
  }

  v7 = v14.__r_.__value_.__s.__data_[7];
  v8 = v14.__r_.__value_.__s.__data_[7];
  size = *(&v13 + 1);
  if (v14.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v14.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v10 = *(&v13 + 1);
  }

  if (!v10)
  {
    ML3CPPSortableString(&v11, &v15);
    if (v8 < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    size = v11.__r_.__value_.__l.__size_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  if ((v8 & 0x80u) != 0)
  {
    v7 = size;
  }

  if (v7 && a2)
  {
    ML3CPPSanitizeString(&v11, &v13);
    if (v14.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v8 & 0x80) == 0)
  {
    *(a3 + 16) = v13;
    *(a3 + 32) = v14.__r_.__value_.__r.__words[0];
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v13, *(&v13 + 1));
  if ((v14.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v13);
  if (v6 < 0)
  {
LABEL_31:
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_22D3B83E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a13);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3StoreArtistImportItem::getEffectiveSortAlbumArtist(ML3StoreArtistImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*this + 32))(this, 16777246);
  ML3ImportItem::getSanitizedStringValue(&v20, this, 301989889);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 301989890);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 318767105);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 318767106);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = v21;
  }

  v7 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v19;
  }

  v8 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  v9 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  size = v16.__r_.__value_.__l.__size_;
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v16.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    if (v6)
    {
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  ML3CPPSortableString(&v20, &v22);
  if (v9 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
  *&v16.__r_.__value_.__l.__data_ = v20;
  LOBYTE(v9) = v21.__r_.__value_.__s.__data_[7];
  size = *(&v20 + 1);
  if (!v6)
  {
LABEL_28:
    if ((v9 & 0x80u) == 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = size;
    }

    if (!v11)
    {
      v12 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v22.__r_.__value_.__l.__size_;
      }

      if (!v12)
      {
        (*(*this + 168))(&v20, this, a2);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        }

        else
        {
          v15 = v21;
        }

        if ((v9 & 0x80) != 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v16 = v15;
        *&v20 = &unk_28408AC60;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v9 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
        size = v16.__r_.__value_.__l.__size_;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v16.__r_.__value_.__l.__size_;
        }

        if (!v13)
        {
          v14 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v14 = v18.__r_.__value_.__l.__size_;
          }

          if (!v14)
          {
            (*(*this + 176))(&v20, this, a2);
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
            }

            else
            {
              v15 = v21;
            }

            if (v9 < 0)
            {
              operator delete(v16.__r_.__value_.__l.__data_);
            }

            v16 = v15;
            *&v20 = &unk_28408AC60;
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v21.__r_.__value_.__l.__data_);
            }

            LOBYTE(v9) = *(&v16.__r_.__value_.__s + 23);
            size = v16.__r_.__value_.__l.__size_;
          }
        }
      }
    }
  }

LABEL_56:
  if ((v9 & 0x80u) == 0)
  {
    size = v9;
  }

  if (size && a2)
  {
    ML3CPPSanitizeString(&v20, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
    *&v16.__r_.__value_.__l.__data_ = v20;
    LOBYTE(v9) = v21.__r_.__value_.__s.__data_[7];
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v9 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a3 + 16) = v16;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
LABEL_71:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_22D3B89E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  *(v39 - 136) = &unk_28408AC60;
  if (*(v39 - 97) < 0)
  {
    operator delete(*(v39 - 120));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  _Unwind_Resume(exception_object);
}

void ML3StoreArtistImportItem::getEffectiveAlbumArtist(ML3StoreArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = (*(*this + 32))(this, 16777246);
  ML3ImportItem::getSanitizedStringValue(&v17, this, 318767105);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __str = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 318767107);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 301989889);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v18;
  }

  v7 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = *&v15.__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[0] = v15.__r_.__value_.__r.__words[2];
  }

  if (!v6)
  {
    v8 = v18.__r_.__value_.__s.__data_[7];
    v9 = v18.__r_.__value_.__s.__data_[7];
    v10 = *(&v17 + 1);
    if (v18.__r_.__value_.__s.__data_[7] >= 0)
    {
      v11 = v18.__r_.__value_.__s.__data_[7];
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    if (!v11)
    {
      std::string::operator=(&v17, &__str);
      v8 = v18.__r_.__value_.__s.__data_[7];
      v10 = *(&v17 + 1);
      v9 = v18.__r_.__value_.__s.__data_[7];
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      std::string::operator=(&v17, &v16);
    }
  }

  v12 = v18.__r_.__value_.__s.__data_[7];
  v13 = v18.__r_.__value_.__s.__data_[7];
  if (v18.__r_.__value_.__s.__data_[7] < 0)
  {
    v12 = *(&v17 + 1);
  }

  if (v12 && a2)
  {
    ML3CPPSanitizeString(&v14, &v17);
    if (v18.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v17);
    }

    v18.__r_.__value_.__r.__words[0] = v14.__r_.__value_.__r.__words[2];
    v17 = *&v14.__r_.__value_.__l.__data_;
    v13 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v13 & 0x80) == 0)
  {
    *(a3 + 16) = v17;
    *(a3 + 32) = v18.__r_.__value_.__r.__words[0];
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v17, *(&v17 + 1));
  if ((v18.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  operator delete(v17);
  if (v7 < 0)
  {
LABEL_38:
    operator delete(v15.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_22D3B8E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  operator delete(__p);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  _Unwind_Resume(a1);
}

id ML3StoreArtistImportItem::getDeduplicationPredicates(ML3StoreArtistImportItem *this)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = @"store_id";
  v4 = @"grouping_key";
  memset(&__p, 0, sizeof(__p));
  if (*(this + 10) == 2)
  {
    (*(*this + 24))(v21, this, 318767105);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v22;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __str;
    v21[0] = &unk_28408AC60;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    v5 = (*(*this + 32))(this, 16777217);
    if ((MLMediaTypeByStandardizingMediaType(v5) & 8) == 0)
    {
      (*(*this + 24))(v21, this, 318767107);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
        v21[0] = &unk_28408AC60;
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __str = v22;
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::operator=(&__p, &__str);
        v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v8 < 0)
      {
        v6 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_27;
      }
    }
  }

  else
  {
    (*(*this + 152))(v21, this, 0);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v22;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __str;
    v21[0] = &unk_28408AC60;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v22.__r_.__value_.__r.__words[0];
LABEL_27:
      operator delete(v6);
    }
  }

  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    v10 = *(this + 11);
    v11 = ML3CPPBridgeString(&__p, 1);
    v12 = [v10 groupingKeyForString:v11];
  }

  else
  {
    v12 = 0;
  }

  if (*(this + 10) == 2)
  {
    v13 = 318767111;
  }

  else
  {
    v13 = 301989893;
  }

  v14 = (*(*this + 32))(this, v13);
  if (v14)
  {
    if ([v12 length])
    {
      v15 = [ML3ComparisonPredicate predicateWithProperty:v3 equalToInt64:v14];
      v26[0] = v15;
      v16 = [ML3ComparisonPredicate predicateWithProperty:v4 equalToValue:v12];
      v26[1] = v16;
      [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    }

    else
    {
      v15 = [ML3ComparisonPredicate predicateWithProperty:v3 equalToInt64:v14];
      v25[0] = v15;
      v16 = [ML3ComparisonPredicate predicateWithProperty:v4 value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v25[1] = v16;
      [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    }
    v17 = ;
    v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];

    [v2 addObject:v18];
  }

  if ([v12 length])
  {
    v19 = [ML3ComparisonPredicate predicateWithProperty:v4 equalToValue:v12];
    [v2 addObject:v19];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_22D3B94F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void ML3StoreArtistImportItem::getDescription(ML3StoreArtistImportItem *this)
{
  (*(*this + 24))(&v16);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p[0].__r_.__value_.__l.__data_, __p[0].__r_.__value_.__l.__size_);
    v16 = &unk_28408AC60;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v23 = __p[0];
  }

  if (*(this + 10) != 2)
  {
    v16 = &unk_28408AC60;
    LOBYTE(v17) = 0;
    memset(__p, 0, 24);
LABEL_9:
    v22 = __p[0];
    goto LABEL_10;
  }

  (*(*this + 24))(&v16, this, 318767107);
  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  std::string::__init_copy_ctor_external(&v22, __p[0].__r_.__value_.__l.__data_, __p[0].__r_.__value_.__l.__size_);
  v16 = &unk_28408AC60;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_10:
  if (*(this + 10) == 2)
  {
    v2 = 318767111;
  }

  else
  {
    v2 = 301989893;
  }

  (*(*this + 32))(this, v2);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "<ML3StoreArtistImportItem ", 26);
  *(&v16 + *(v16 - 3) + 8) = *(&v16 + *(v16 - 3) + 8) & 0xFFFFFFB5 | 8;
  v3 = MEMORY[0x2318CD100](&v16, this);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " name=", 6);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v23;
  }

  else
  {
    v5 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, size);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " seriesName=", 12);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v22;
  }

  else
  {
    v9 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v22.__r_.__value_.__l.__size_;
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " storeID=", 9);
  *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 2;
  v13 = MEMORY[0x2318CD140]();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " artist type=", 13);
  v15 = MEMORY[0x2318CD120](v14, *(this + 10));
  v24 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v24, 1);
  std::stringbuf::str();
  v16 = *MEMORY[0x277D82828];
  *(&v16 + *(v16 - 3)) = *(MEMORY[0x277D82828] + 24);
  v17 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(__p);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v21);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_22D3B9A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 73) < 0)
  {
    operator delete(*(v17 - 96));
  }

  _Unwind_Resume(exception_object);
}

BOOL ML3StoreArtistImportItem::hasValue(ML3StoreArtistImportItem *this, uint64_t a2)
{
  v2 = 0;
  if (a2 > 318767104)
  {
    if ((a2 - 318767105) > 0xD || ((1 << (a2 - 1)) & 0x204F) == 0)
    {
      return v2;
    }

LABEL_9:
    v3 = *(this + 8);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v5 = [v3 objectForKeyedSubscript:v4];

    v2 = v5 != 0;
    return v2;
  }

  if ((a2 - 301989889) <= 0xC && ((1 << (a2 - 1)) & 0x1013) != 0 || a2 == 16777217 || a2 == 16777246)
  {
    goto LABEL_9;
  }

  return v2;
}

uint64_t ML3StoreArtistImportItem::getIntegerValue(ML3StoreArtistImportItem *this, uint64_t a2)
{
  v2 = *(this + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (_NSIsNSNumber())
  {
    v5 = [v4 longLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void ML3StoreArtistImportItem::getStringValue(ML3StoreArtistImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v5 = *(this + 8);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (_NSIsNSString())
  {
    v8 = v7;
    std::string::basic_string[abi:ne200100]<0>(&__str, [v8 UTF8String]);
    std::string::operator=(v4, &__str);
    *(a3 + 8) = 1;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_22D3B9D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *v15 = v16;
  if (*(v15 + 39) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

void ML3StoreArtistImportItem::~ML3StoreArtistImportItem(id *this)
{
  ML3StoreArtistImportItem::~ML3StoreArtistImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

void ML3StoreImportItem::ML3StoreImportItem(ML3StoreImportItem *this, NSDictionary *a2, int a3)
{
  v5 = a2;
  *(this + 8) = 256;
  *(this + 18) = 1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 1065353216;
  *this = &unk_2840838E0;
  *(this + 1) = 0;
  v6 = v5;
  *(this + 8) = v6;
  *(this + 18) = a3;
  *(this + 76) = 0;
  *(this + 17) = 0;
}

uint64_t ML3StoreArtistImportItem::ML3StoreArtistImportItem(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_284083AB0;
  *(a1 + 8) = 0;
  *(a1 + 64) = [v9 copy];
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  v11 = v10;
  *(a1 + 88) = v11;
  *(a1 + 17) = 0;

  return a1;
}

void sub_22D3B9FC8(_Unwind_Exception *a1)
{
  *v2 = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v4);

  _Unwind_Resume(a1);
}

void _track::~_track(void **this)
{
  _track::~_track(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284083BC8;
  free(this[2]);
  v2 = this[7];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v2[1] = v3;
      operator delete(v3);
    }

    MEMORY[0x2318CD250](v2, 0x10C402FEFCB83);
  }
}

uint64_t _compatible_genre_constraint::passes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a3 + 40);
  if (result)
  {
    if (*(result + 24))
    {
      v6 = *(a1 + 16);
      if (*(a4 + 24) - 1 >= v6)
      {
        v7 = *(*(a4 + 16) + 8 * v6);
      }

      else
      {
        v7 = 0;
      }

      return 2 * (std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(result, v7) == 0);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void *std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v5 ^ (v5 >> 31);
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    do
    {
      v11 = result[1];
      if (v6 == v11)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (v11 >= *&v2)
          {
            v11 %= *&v2;
          }
        }

        else
        {
          v11 &= *&v2 - 1;
        }

        if (v11 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t _compatible_genre_constraint::parse_config(_compatible_genre_constraint *this, unsigned __int8 *a2, unint64_t *a3)
{
  v6 = *(this + 1);
  v7 = *a3;
  LODWORD(v22) = *&a2[*a3];
  *a3 = v7 + 4;
  (*(*v6 + 72))(v6[1], &v22, 4, 1);
  *(this + 4) = v22;
  v8 = *(this + 1);
  v9 = *a3;
  LODWORD(v22) = *&a2[*a3];
  *a3 = v9 + 4;
  result = (*(*v8 + 72))(v8[1], &v22, 4, 1);
  v11 = v22;
  if (v22)
  {
    v12 = 0;
    do
    {
      v13 = *(this + 1);
      v14 = *a3;
      v22 = *&a2[*a3];
      *a3 = v14 + 8;
      (*(*v13 + 72))(v13[1], &v22, 8, 1);
      v15 = v22;
      v16 = *(this + 1);
      v17 = *a3;
      LODWORD(v22) = *&a2[*a3];
      *a3 = v17 + 4;
      (*(*v16 + 72))(v16[1], &v22, 4, 1);
      v18 = v22;
      result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,echo_hash_shift<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>(*(this + 3), v15);
      if (!result)
      {
        operator new();
      }

      for (i = *(result + 24); v18; --v18)
      {
        v20 = *(this + 1);
        v21 = *a3;
        v22 = *&a2[*a3];
        *a3 = v21 + 8;
        (*(*v20 + 72))(v20[1], &v22, 8, 1);
        result = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(i, v22);
      }

      ++v12;
    }

    while (v12 != v11);
  }

  return result;
}

uint64_t std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, uint64_t a2)
{
  v2 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
  v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
  v5 = v4 ^ (v4 >> 31);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 31);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return 0;
}

void _compatible_genre_constraint::initialize_state(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 16);
  if (*(v2 + 24) - 1 >= v3)
  {
    v4 = *(*(v2 + 16) + 8 * v3);
    if (v4)
    {
      v5 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,echo_hash_shift<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>(*(a1 + 24), v4);
      if (!v5 || !*(v5[3] + 24))
      {
        operator new();
      }
    }
  }

  operator new();
}

void _compatible_genre_constraint_state::~_compatible_genre_constraint_state(_compatible_genre_constraint_state *this)
{
  _compatible_genre_constraint_state::~_compatible_genre_constraint_state(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284083ED8;
  v1 = *(this + 5);
  if (!*(v1 + 24))
  {
    v2 = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v1);
    MEMORY[0x2318CD250](v2, 0x10A0C408EF24B1CLL);
  }
}

void _compatible_genre_constraint::~_compatible_genre_constraint(_compatible_genre_constraint *this)
{
  _compatible_genre_constraint::~_compatible_genre_constraint(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284083BE8;
  v2 = *(this + 3);
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_8:
    v8 = *v2;
    *v2 = 0;
    if (v8)
    {
      operator delete(v8);
    }

    MEMORY[0x2318CD250](v2, 0x10A0C408EF24B1CLL);
    return;
  }

  do
  {
    v4 = v3[3];
    if (v4)
    {
      v5 = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v4);
      MEMORY[0x2318CD250](v5, 0x10A0C408EF24B1CLL);
    }

    v3 = *v3;
  }

  while (v3);
  v2 = *(this + 3);
  if (v2)
  {
    v6 = *(v2 + 16);
    if (v6)
    {
      do
      {
        v7 = *v6;
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    goto LABEL_8;
  }
}

uint64_t _distance_constraint::metadata_id_from_track(_distance_constraint *this, _track *a2)
{
  if (a2 && (v2 = *(this + 4), *(a2 + 3) - 1 >= v2))
  {
    return *(*(a2 + 2) + 8 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t _distance_constraint::reset(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  *(a2 + 40) = *(result + 32);
  if (v2)
  {
    result = (*(**(result + 8) + 64))(*(*(result + 8) + 8), v2);
    if (result >= v2)
    {
      result = result % v2;
    }

    *(a2 + 40) += result;
  }

  return result;
}

uint64_t _distance_constraint::register_track(_distance_constraint *this, _constraint_state *a2, _track *a3)
{
  result = (*(*this + 80))(this, a3);
  v5 = *(a2 + 6);
  v6 = v5[2];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = 0;
  do
  {
    while (v6[2] == result)
    {
      v7 = 1;
      *(v6 + 6) = 1;
      v6 = *v6;
      if (!v6)
      {
        return result;
      }
    }

    ++*(v6 + 6);
    v6 = *v6;
  }

  while (v6);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    v8 = (result + ~(result << 32)) ^ ((result + ~(result << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v10 ^ (v10 >> 31);
    v12 = v5[1];
    if (v12)
    {
      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = v10 ^ (v10 >> 31);
        if (v11 >= *&v12)
        {
          v14 = v11 % *&v12;
        }
      }

      else
      {
        v14 = v11 & (*&v12 - 1);
      }

      v15 = *(*v5 + 8 * v14);
      if (v15)
      {
        for (i = *v15; i; i = *i)
        {
          v17 = i[1];
          if (v17 == v11)
          {
            if (i[2] == result)
            {
              return result;
            }
          }

          else
          {
            if (v13.u32[0] > 1uLL)
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

            if (v17 != v14)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  return result;
}

BOOL _distance_constraint::relax(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 40);
  if (v2 < v3)
  {
    v4 = *(a1 + 48);
    v5 = v4 + v2;
    v6 = v3 - v4;
    if (v3 <= v5)
    {
      v6 = *(a1 + 24);
    }

    *(a2 + 40) = v6;
  }

  return v2 < v3;
}

BOOL _distance_constraint::passes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*a1 + 80))(a1, a4);
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,echo_hash_shift<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>(*(a3 + 48), v5);
  return v6 && *(a3 + 40) > *(v6 + 6);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,echo_hash_shift<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v5 ^ (v5 >> 31);
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    do
    {
      v11 = result[1];
      if (v11 == v6)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (v11 >= *&v2)
          {
            v11 %= *&v2;
          }
        }

        else
        {
          v11 &= *&v2 - 1;
        }

        if (v11 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t _distance_constraint::parse_config(_distance_constraint *this, unsigned __int8 *a2, unint64_t *a3)
{
  v6 = *(this + 1);
  v7 = *a3;
  v15 = *&a2[*a3];
  *a3 = v7 + 4;
  (*(*v6 + 72))(v6[1], &v15, 4, 1);
  *(this + 4) = v15;
  v8 = *(this + 1);
  v9 = *a3;
  v15 = *&a2[*a3];
  *a3 = v9 + 4;
  (*(*v8 + 72))(v8[1], &v15, 4, 1);
  *(this + 3) = v15;
  v10 = *(this + 1);
  v11 = *a3;
  v15 = *&a2[*a3];
  *a3 = v11 + 4;
  (*(*v10 + 72))(v10[1], &v15, 4, 1);
  *(this + 4) = v15;
  v12 = *(this + 1);
  v13 = *a3;
  v15 = *&a2[*a3];
  *a3 = v13 + 4;
  result = (*(*v12 + 72))(v12[1], &v15, 4, 1);
  *(this + 5) = v15;
  *(this + 6) = 1;
  return result;
}

void _distance_constraint_state::~_distance_constraint_state(_distance_constraint_state *this)
{
  _distance_constraint_state::~_distance_constraint_state(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284083E70;
  v1 = *(this + 6);
  if (v1)
  {
    v2 = *(v1 + 16);
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

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    MEMORY[0x2318CD250](v1, 0x10A0C408EF24B1CLL);
  }
}

uint64_t _already_added_constraint::metadata_id_from_track(_already_added_constraint *this, _track *a2)
{
  if (a2)
  {
    return *(a2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _already_added_constraint::relax(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 32) + 186) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 40);
  if (v2 >= v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v2;
  v6 = v3 - v4;
  if (v3 > v5)
  {
    v2 = v6;
  }

  *(a2 + 40) = v2;
  return 1;
}

BOOL _already_added_constraint::passes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(a3 + 32) + 186) != 1)
  {
    return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,echo_hash_shift<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>(*(a3 + 48), *(a4 + 8)) != 0;
  }

  return _distance_constraint::passes(a1, a2, a3, a4);
}

uint64_t _already_added_constraint::parse_config(uint64_t this, unsigned __int8 *a2, unint64_t *a3, unsigned int a4)
{
  v4 = this;
  if (a4 < 2)
  {
    *(this + 24) = xmmword_22D5C6A40;
    v15 = 10;
    *(this + 40) = 10;
  }

  else
  {
    v7 = *(this + 8);
    v8 = *a3;
    v16 = *&a2[*a3];
    *a3 = v8 + 4;
    (*(*v7 + 72))(v7[1], &v16, 4, 1);
    v4[3] = v16;
    v9 = v4[1];
    v10 = *a3;
    v16 = *&a2[*a3];
    *a3 = v10 + 4;
    (*(*v9 + 72))(v9[1], &v16, 4, 1);
    v4[4] = v16;
    v11 = v4[1];
    v12 = *a3;
    v16 = *&a2[*a3];
    *a3 = v12 + 4;
    (*(*v11 + 72))(v11[1], &v16, 4, 1);
    v4[5] = v16;
    v13 = v4[1];
    v14 = *a3;
    v16 = *&a2[*a3];
    *a3 = v14 + 4;
    this = (*(*v13 + 72))(v13[1], &v16, 4, 1);
    v15 = v16;
  }

  v4[6] = v15;
  return this;
}

BOOL _skip_count_constraint::passes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 32) == 1)
  {
    v6 = *(a4 + 48);
    v7 = *(a4 + 40);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if ((*(*a2 + 40))(a2[1], *(a4 + 8), &v14 + 4, &v13 + 4))
    {
      HIDWORD(v14) = 0;
      HIDWORD(v13) = 0;
    }

    v9 = (*(*a2 + 48))(a2[1], *(a4 + 8), &v14, &v13);
    v7 = HIDWORD(v13);
    v10 = v14;
    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v6 = v13;
    }

    if (v9)
    {
      v10 = 0;
    }

    *(a4 + 36) = HIDWORD(v14);
    *(a4 + 40) = v7;
    *(a4 + 44) = v10;
    *(a4 + 48) = v6;
    *(a4 + 32) = 1;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(a1 + 16) < v6)
  {
    v11 = *(a4 + 44);
    if (*(a1 + 28) - 1 >= (*(a4 + 36) - v11) && (*(**(a1 + 8) + 56))(*(*(a1 + 8) + 8)) - v11 < *(a1 + 24))
    {
      return 100 * v6 > *(a1 + 32) * (v7 + v6);
    }
  }

  return 0;
}

uint64_t _skip_count_constraint::parse_config(_skip_count_constraint *this, unsigned __int8 *a2, unint64_t *a3)
{
  v6 = *(this + 1);
  v7 = *a3;
  v15 = *&a2[*a3];
  *a3 = v7 + 4;
  (*(*v6 + 72))(v6[1], &v15, 4, 1);
  *(this + 2) = v15;
  v8 = *(this + 1);
  v9 = *a3;
  v15 = *&a2[*a3];
  *a3 = v9 + 4;
  (*(*v8 + 72))(v8[1], &v15, 4, 1);
  *(this + 6) = v15;
  v10 = *(this + 1);
  v11 = *a3;
  v15 = *&a2[*a3];
  *a3 = v11 + 4;
  (*(*v10 + 72))(v10[1], &v15, 4, 1);
  *(this + 7) = v15;
  v12 = *(this + 1);
  v13 = *a3;
  v15 = *&a2[*a3];
  *a3 = v13 + 4;
  result = (*(*v12 + 72))(v12[1], &v15, 4, 1);
  *(this + 8) = v15;
  return result;
}

BOOL _random_jitter_constraint::relax(_random_jitter_constraint *this, _constraint_state *a2)
{
  v2 = *(a2 + 2);
  if (!v2)
  {
    *(a2 + 2) = 1;
  }

  return v2 == 0;
}

BOOL _random_jitter_constraint::passes(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 20;
  if (!*(a3 + 16))
  {
    v3 = 16;
  }

  v4 = *(a1 + v3);
  v5 = (*(*a2 + 64))(a2[1], 100);
  v6 = v5 % 0x64;
  if (v5 < 0x64)
  {
    v6 = v5;
  }

  return v6 > v4;
}

uint64_t _random_jitter_constraint::parse_config(_random_jitter_constraint *this, unsigned __int8 *a2, unint64_t *a3)
{
  v6 = *(this + 1);
  v7 = *a3;
  v11 = *&a2[*a3];
  *a3 = v7 + 4;
  (*(*v6 + 72))(v6[1], &v11, 4, 1);
  *(this + 4) = v11;
  v8 = *(this + 1);
  v9 = *a3;
  v12 = *&a2[*a3];
  *a3 = v9 + 4;
  result = (*(*v8 + 72))(v8[1], &v12, 4, 1);
  *(this + 5) = v12;
  return result;
}

uint64_t _echo_context::initialize_playlist(_echo_context *this, uint64_t a2)
{
  if (a2 && _echo_context::fetch_track(this, a2))
  {
    operator new();
  }

  return 0;
}

void sub_22D3BC000(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    v1[20] = v6;
    operator delete(v6);
  }

  v7 = v1[14];
  if (v7)
  {
    v1[15] = v7;
    operator delete(v7);
  }

  v8 = v1[11];
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[9] = v9;
    operator delete(v9);
  }

  MEMORY[0x2318CD250](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t _echo_context::fetch_track(_echo_context *this, uint64_t a2)
{
  v13 = 0;
  v4 = (*(*this + 8))(*(this + 1), a2, &v13);
  ++*(this + 5);
  if (v4)
  {
    v5 = v13;
    if (v13)
    {
      v6 = v4;
      ++*(this + 6);
      (*(*this + 72))(*(this + 1), v4, 8, v5 >> 3);
      v7 = *(this + 2);
      if (v7)
      {
        fprintf(v7, "fetch metadata: track id = %llu, ", a2);
        if (v5 >= 8)
        {
          v8 = 0;
          v9 = v5 >> 3;
          do
          {
            if (--v9)
            {
              v10 = ", ";
            }

            else
            {
              v10 = "\n";
            }

            fprintf(*(this + 2), "id %d = %llu%s", v8, *(v6 + 8 * v8), v10);
            ++v8;
          }

          while (v9);
        }
      }

      operator new();
    }

    v11 = *(this + 2);
    if (v11)
    {
      fwrite("metadata_size not being set by metadata_for_global_id callback\n", 0x3FuLL, 1uLL, v11);
    }
  }

  return 0;
}

void *std::vector<unsigned long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a2);
  }

  return result;
}

void std::vector<unsigned long long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void _playlist::add_track(_playlist *this, _track *a2)
{
  ++*(this + 7);
  v4 = *(this + 17);
  v5 = *(a2 + 1);
  v6 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v8 ^ (v8 >> 31);
  v10 = v4[1];
  if (!*&v10)
  {
    goto LABEL_18;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8 ^ (v8 >> 31);
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = v9 & (*&v10 - 1);
  }

  v13 = *(*v4 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (v14[2] != v5)
  {
    goto LABEL_17;
  }

  v16 = *this;
  v17 = *(*this + 72) - *(*this + 64);
  if (v17)
  {
    v18 = 0;
    v19 = v17 >> 3;
    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    do
    {
      v21 = *(*(v16 + 64) + 8 * v18);
      (*(*v21 + 64))(v21, *(*(this + 19) + 8 * v18++), a2);
    }

    while (v20 != v18);
  }

  v22 = *(a2 + 1);
  v24 = *(this + 15);
  v23 = *(this + 16);
  if (v24 >= v23)
  {
    v26 = *(this + 14);
    v27 = v24 - v26;
    v28 = (v24 - v26) >> 3;
    v29 = v28 + 1;
    if ((v28 + 1) >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v30 = v23 - v26;
    if (v30 >> 2 > v29)
    {
      v29 = v30 >> 2;
    }

    if (v30 >= 0x7FFFFFFFFFFFFFF8)
    {
      v31 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v29;
    }

    if (v31)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v31);
    }

    v32 = (v24 - v26) >> 3;
    v33 = (8 * v28);
    v34 = (8 * v28 - 8 * v32);
    *v33 = v22;
    v25 = v33 + 1;
    memcpy(v34, v26, v27);
    v35 = *(this + 14);
    *(this + 14) = v34;
    *(this + 15) = v25;
    *(this + 16) = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v24 = v22;
    v25 = v24 + 8;
  }

  *(this + 15) = v25;
}

BOOL _playlist::add_more_candidates(_playlist *this)
{
  v2 = 100;
  if (*(this + 187))
  {
    v2 = 104;
  }

  v3 = *(*this + v2);
  v5 = this + 32;
  v4 = *(this + 4);
  while (v4)
  {
    v6 = v4[1];
    v7 = v6 - *v4;
    if (v6 == *v4)
    {
      break;
    }

    v8 = *(this + 5);
    if (v8 >= v7 >> 3)
    {
      break;
    }

    v9 = *(*v4 + v8);
    track = _playlist::fetch_track(this, v9);
    v27 = 0;
    if (!track)
    {
      v27 = 1;
LABEL_11:
      v12 = *(this + 4);
      v11 = *(this + 5);
      v13 = v12[1];
      v14 = *v12 + 8 * v11;
      v15 = v13 - (v14 + 8);
      if (v13 != v14 + 8)
      {
        memmove((*v12 + 8 * v11), (v14 + 8), v13 - (v14 + 8));
      }

      v12[1] = v14 + v15;
      goto LABEL_14;
    }

    _playlist::add_candidate_id(this, v9);
    LOBYTE(track) = _playlist::add_candidates_from_track(this, track, *(this + 12), v3, &v27);
    if (v27)
    {
      goto LABEL_11;
    }

    ++*(this + 5);
LABEL_14:
    v4 = *v5;
    v16 = **v5;
    v17 = *(*v5 + 8);
    if (v17 == v16)
    {
      if (v17)
      {
        v4[1] = v16;
        operator delete(v16);
      }

      MEMORY[0x2318CD250](v4, 0x10C402FEFCB83);
      v4 = 0;
      *v5 = 0;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
    }

    else if (*(this + 5) >= ((v17 - v16) >> 3))
    {
      v18 = *(this + 6) + 1;
      *(this + 5) = 0;
      *(this + 6) = v18;
    }

    if (track)
    {
      return 1;
    }
  }

  v19 = *(this + 15);
  while (1)
  {
    v20 = *(this + 14);
    result = v19 != v20;
    if (v19 == v20)
    {
      break;
    }

    v22 = _playlist::fetch_track(this, *v20);
    if (v22)
    {
      v23 = _playlist::add_candidates_from_track(this, v22, 0, 0, &v28);
    }

    else
    {
      v23 = 0;
    }

    v25 = *(this + 14);
    v24 = *(this + 15);
    v26 = v24 - (v25 + 8);
    if (v24 != v25 + 8)
    {
      memmove(*(this + 14), (v25 + 8), v24 - (v25 + 8));
    }

    v19 = (v25 + v26);
    *(this + 15) = v25 + v26;
    if (v23)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _playlist::add_candidates_from_track(_playlist *this, _track *a2, int a3, unsigned int a4, BOOL *a5)
{
  v10 = *this;
  ++*(*this + 24);
  if (a2)
  {
    v11 = *(a2 + 7);
    if (!v11 || *(*(a2 + 7) + 8) == *v11)
    {
      v12 = *(a2 + 1);
      if (v12)
      {
        v13 = (*(*v10 + 24))(v10[1], v12, 0);
        if (v13)
        {
          v14 = v13;
          ++v10[4];
          LODWORD(strm.next_in) = *v13;
          (*(*v10 + 72))(v10[1], &strm, 4, 1);
          next_in = strm.next_in;
          LODWORD(strm.next_in) = *(v14 + 1);
          (*(*v10 + 72))(v10[1], &strm, 4, 1);
          v39 = a5;
          if (next_in)
          {
            next_in_low = LODWORD(strm.next_in);
            strm.next_in = (v14 + 8);
            strm.avail_in = next_in_low;
            strm.zalloc = 0;
            strm.zfree = 0;
            strm.total_out = 0;
            v17 = 0;
            if (!inflateInit_(&strm, "1.2.12", 112))
            {
              v18 = 3 * next_in_low;
              v17 = malloc_type_malloc(3 * next_in_low, 0x100004077774924uLL);
              while (1)
              {
                total_out = strm.total_out;
                if (strm.total_out >= v18)
                {
                  v18 += v18 >> 1;
                  v17 = malloc_type_realloc(v17, v18, 0x100004077774924uLL);
                  total_out = strm.total_out;
                }

                strm.next_out = &v17[total_out];
                strm.avail_out = v18 - total_out;
                v20 = inflate(&strm, 2);
                if (v20 == 1 || v20 == -5 && !strm.avail_in)
                {
                  break;
                }

                if (v20)
                {
                  a5 = v39;
                  fprintf(*MEMORY[0x277D85DF8], "encountered unexpected status %d while inflating\n");
                  goto LABEL_19;
                }
              }

              a5 = v39;
              if (!inflateEnd(&strm))
              {
                goto LABEL_20;
              }

              fprintf(*MEMORY[0x277D85DF8], "encountered unexpected status %d while finishing inflating\n");
LABEL_19:
              free(v17);
              v17 = 0;
            }

LABEL_20:
            v22 = *(*v10 + 32);
            if (v22)
            {
              v22(v14);
              if (!v17)
              {
                goto LABEL_32;
              }
            }

            else
            {
              free(v14);
              if (!v17)
              {
                goto LABEL_32;
              }
            }

            v21 = 0;
            v14 = v17;
          }

          else
          {
            v21 = 8;
          }

          LODWORD(strm.next_in) = *&v14[v21];
          v23 = v21 | 4;
          (*(*v10 + 72))(v10[1], &strm, 4, 1);
          v24 = LODWORD(strm.next_in);
          v25 = v10[2];
          if (v25)
          {
            fprintf(v25, "fetch sims: track id = %llu, count = %lu\n", *(a2 + 1), LODWORD(strm.next_in));
          }

          (*(*v10 + 72))(v10[1], &v14[v23], 8, v24);
          v26 = *(a2 + 7);
          if (v26)
          {
            v27 = *v26;
            if (*v26)
            {
              *(v26 + 8) = v27;
              operator delete(v27);
            }

            MEMORY[0x2318CD250](v26, 0x10C402FEFCB83);
          }

          operator new();
        }
      }
    }
  }

LABEL_32:
  v28 = *(a2 + 7);
  if (v28)
  {
    v29 = (v28[1] - *v28) >> 3;
    if (a4)
    {
      goto LABEL_34;
    }

LABEL_37:
    v30 = 0;
    if (v29)
    {
      goto LABEL_38;
    }

LABEL_46:
    v36 = 0;
    if (!v28)
    {
      return v36;
    }

    goto LABEL_47;
  }

  v29 = 0;
  if (!a4)
  {
    goto LABEL_37;
  }

LABEL_34:
  v30 = a4 * a3;
  if (v29 <= a4 + v30)
  {
    v29 -= v30;
    *a5 = 1;
    if (v29)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

  v29 = a4;
  *a5 = 0;
LABEL_38:
  v31 = 1;
  do
  {
    v32 = *(a2 + 7);
    if (v32)
    {
      v33 = *(*v32 + 8 * (v30 + v31 - 1));
    }

    else
    {
      v33 = 0;
    }

    v34 = _playlist::add_candidate_id(this, v33);
  }

  while (v29 > v31++);
  v36 = v34;
  v28 = *(a2 + 7);
  if (v28)
  {
LABEL_47:
    v37 = *v28;
    if (*v28)
    {
      v28[1] = v37;
      operator delete(v37);
    }

    MEMORY[0x2318CD250](v28, 0x10C402FEFCB83);
    *(a2 + 7) = 0;
  }

  return v36;
}

void sub_22D3BCD44(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  MEMORY[0x2318CD250](v1, 0x10C402FEFCB83);
  _Unwind_Resume(a1);
}

uint64_t _playlist::fetch_track(_playlist *this, uint64_t a2)
{
  v4 = *(this + 18);
  v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = ((v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27)) ^ (((v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27)) >> 31);
  v8 = v4[1];
  if (!*&v8)
  {
    goto LABEL_17;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = ((v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27)) ^ (((v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27)) >> 31);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*v4 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_17:
    track = _echo_context::fetch_track(*this, a2);
    v14 = *(this + 18);
    v15 = v14[1];
    if (v15)
    {
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.u32[0] > 1uLL)
      {
        v17 = v7;
        if (v7 >= *&v15)
        {
          v17 = v7 % *&v15;
        }
      }

      else
      {
        v17 = v7 & (*&v15 - 1);
      }

      v18 = *(*v14 + 8 * v17);
      if (v18)
      {
        for (i = *v18; i; i = *i)
        {
          v20 = i[1];
          if (v20 == v7)
          {
            if (i[2] == a2)
            {
              return track;
            }
          }

          else
          {
            if (v16.u32[0] > 1uLL)
            {
              if (v20 >= *&v15)
              {
                v20 %= *&v15;
              }
            }

            else
            {
              v20 &= *&v15 - 1;
            }

            if (v20 != v17)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_17;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12[2] != a2)
  {
    goto LABEL_16;
  }

  return v12[3];
}

uint64_t _playlist::add_candidate_id(_playlist *this, uint64_t a2)
{
  v11 = a2;
  v4 = *(this + 2);
  if (!v4 || (result = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v4, a2)) != 0)
  {
    v6 = *(this + 3);
    if (v6 && std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v6, a2) || (std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(*(this + 17), a2) & 1) == 0)
    {
      return 0;
    }

    else
    {
      std::vector<unsigned long long>::push_back[abi:ne200100](this + 64, &v11);
      v7 = *(this + 12);
      v8 = *(this + 13);
      if (v7 == v8 << 6)
      {
        if ((v7 + 1) < 0)
        {
          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        v9 = v8 << 7;
        if (v9 <= (v7 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v9 = (v7 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v7 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        std::vector<BOOL>::reserve(this + 88, v10);
        v7 = *(this + 12);
      }

      *(this + 12) = v7 + 1;
      result = 1;
      *(*(this + 11) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    }
  }

  return result;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t echo_playlist_close(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(v1 + 136);
    if (v3)
    {
      v4 = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v3);
      MEMORY[0x2318CD250](v4, 0x10A0C408EF24B1CLL);
    }

    v5 = *(v1 + 160) - *(v1 + 152);
    if (v5)
    {
      v6 = 0;
      v7 = v5 >> 3;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      do
      {
        v9 = *(*(v1 + 152) + 8 * v6);
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        ++v6;
      }

      while (v8 != v6);
    }

    if (*(v1 + 185) == 1)
    {
      v10 = *(v1 + 144);
      v11 = *(v10 + 16);
      if (!v11)
      {
        goto LABEL_19;
      }

      do
      {
        v12 = v11[3];
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v11 = *v11;
      }

      while (v11);
      v10 = *(v1 + 144);
      if (v10)
      {
LABEL_19:
        v13 = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10);
        MEMORY[0x2318CD250](v13, 0x10A0C408EF24B1CLL);
      }
    }

    v14 = *(v1 + 16);
    if (v14)
    {
      v15 = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v14);
      MEMORY[0x2318CD250](v15, 0x10A0C408EF24B1CLL);
    }

    v16 = *(v1 + 24);
    if (v16)
    {
      v17 = std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v16);
      MEMORY[0x2318CD250](v17, 0x10A0C408EF24B1CLL);
    }

    v18 = *(v1 + 32);
    if (v18)
    {
      v19 = *v18;
      if (*v18)
      {
        *(v18 + 8) = v19;
        operator delete(v19);
      }

      MEMORY[0x2318CD250](v18, 0x10C402FEFCB83);
    }

    v20 = *(v1 + 152);
    if (v20)
    {
      *(v1 + 160) = v20;
      operator delete(v20);
    }

    v21 = *(v1 + 112);
    if (v21)
    {
      *(v1 + 120) = v21;
      operator delete(v21);
    }

    v22 = *(v1 + 88);
    if (v22)
    {
      operator delete(v22);
    }

    v23 = *(v1 + 64);
    if (v23)
    {
      *(v1 + 72) = v23;
      operator delete(v23);
    }

    JUMPOUT(0x2318CD250);
  }

  return result;
}

uint64_t echo_playlist_next_track(uint64_t this)
{
  if (!this)
  {
    return this;
  }

  v1 = this;
  if (*(this + 56) == 0x7FFFFFFFLL)
  {
    *(this + 56) = 0;
    _playlist::add_track(this, *(this + 8));
    if (*(v1 + 184) == 1)
    {
      _playlist::add_more_candidates(v1);
    }

    else
    {
      _playlist::add_candidates_from_track(v1, *(v1 + 8), 0, 0, &v39);
    }

    v7 = *(v1 + 8);
    return *(v7 + 1);
  }

  v35 = *(*this + 88);
  v36 = 0x100000001;
  while (2)
  {
    v2 = *(v1 + 72) - *(v1 + 64);
    if (!v2)
    {
      goto LABEL_30;
    }

    v3 = 0;
    v4 = v2 >> 3;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v37 = v4;
    do
    {
      v5 = v3 >> 6;
      v38 = 1 << v3;
      if ((*(*(v1 + 88) + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_29;
      }

      track = _playlist::fetch_track(v1, *(*(v1 + 64) + 8 * v3));
      if (!track)
      {
LABEL_28:
        *(*(v1 + 88) + 8 * v5) &= ~v38;
        goto LABEL_29;
      }

      v7 = track;
      v8 = *v1;
      v9 = *(*v1 + 72) - *(*v1 + 64);
      if (!v9)
      {
        goto LABEL_33;
      }

      v10 = 0;
      v11 = v9 >> 3;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      while (1)
      {
        v13 = *(*(v8 + 64) + 8 * v10);
        v14 = *(*(v1 + 152) + 8 * v10);
        if (!(*(*v13 + 40))(v13, v14))
        {
          v18 = *(v8 + 16);
          if (v18)
          {
            v19 = (*(*v13 + 16))(v13);
            fprintf(v18, "constraint not in effect: %s, track id = %llu\n", v19, *(v7 + 1));
          }

          goto LABEL_23;
        }

        v15 = (*(*v13 + 48))(v13, v8, v14, v7);
        v16 = *(v8 + 16);
        if (v16)
        {
          v17 = (*(*v13 + 16))(v13);
          fprintf(v16, "constraint eval: %s, track id = %llu, result = %d\n", v17, *(v7 + 1), v15);
        }

        if ((v15 - 3) >= 0xFFFFFFFE)
        {
          break;
        }

LABEL_23:
        if (v12 == ++v10)
        {
          goto LABEL_33;
        }
      }

      if (v15 == 2)
      {
        goto LABEL_28;
      }

      if (!v15)
      {
LABEL_33:
        _playlist::add_track(v1, v7);
        if ((*(v1 + 186) & 1) == 0)
        {
          *(*(v1 + 88) + 8 * v5) &= ~v38;
        }

        v20 = *v1;
        v21 = *(*v1 + 72) - *(*v1 + 64);
        if (v21)
        {
          v22 = 0;
          v23 = v21 >> 3;
          if (v23 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v23;
          }

          do
          {
            v25 = *(*(v20 + 64) + 8 * v22);
            (*(*v25 + 72))(v25, *(*(v1 + 152) + 8 * v22++));
          }

          while (v24 != v22);
        }

        goto LABEL_53;
      }

LABEL_29:
      ++v3;
    }

    while (v3 != v37);
LABEL_30:
    if (*(v1 + 184) == 1 && _playlist::add_more_candidates(v1))
    {
      v7 = 0;
      BYTE4(v36) = 1;
    }

    else
    {
      v26 = *v1;
      v27 = *(*v1 + 72) - *(*v1 + 64);
      if (v27)
      {
        v28 = v27 >> 3;
        v29 = *(v1 + 176);
        v30 = v28 - 1;
        if (v28 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v28;
        }

        while (1)
        {
          if (v29 == v30)
          {
            v29 = 0;
          }

          else
          {
            ++v29;
          }

          v32 = *(*(v26 + 64) + 8 * v29);
          v33 = *(*(v1 + 152) + 8 * v29);
          if ((*(*v32 + 40))(v32, v33))
          {
            if ((*(*v32 + 56))(v32, v33))
            {
              break;
            }
          }

          if (!--v31)
          {
            goto LABEL_51;
          }
        }

        v7 = 0;
        *(v1 + 176) = v29;
        v36 = 1;
      }

      else
      {
LABEL_51:
        v7 = 0;
        v36 = 0;
      }
    }

LABEL_53:
    if (v35)
    {
      v34 = v36 & BYTE4(v36);
      if (v7)
      {
        goto LABEL_58;
      }

LABEL_57:
      if ((v34 & 1) == 0)
      {
        goto LABEL_58;
      }

      continue;
    }

    break;
  }

  v34 = v36 | BYTE4(v36);
  if (!v7)
  {
    goto LABEL_57;
  }

LABEL_58:
  if (!v7)
  {
    return 0;
  }

  return *(v7 + 1);
}

id ML3PurchaseHistoryImportItem::getDeduplicationPredicates(ML3PurchaseHistoryImportItem *this)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v3 = (*(*this + 32))(this, 100663302);
  v4 = (*(*this + 32))(this, 100663297);
  v5 = (*(*this + 32))(this, 100663337);
  if (v3)
  {
    v6 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.purchase_history_id" equalToInt64:v3];
    [v2 addObject:v6];
  }

  if (v4)
  {
    v7 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v4];
    [v2 addObject:v7];

    v8 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:0];
    v18[0] = v8;
    v9 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v4];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v11 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v10];
    [v2 addObject:v11];
  }

  if (v5)
  {
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:0];
    v17[0] = v12;
    v13 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v5];
    v17[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v15 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v14];
    [v2 addObject:v15];
  }

  return v2;
}

void sub_22D3BE250(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3PurchaseHistoryImportItem::getDescription(ML3PurchaseHistoryImportItem *this)
{
  (*(*this + 32))(this, 100663302);
  v2 = (*(*this + 32))(this, 100663297);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "<ML3PurchaseHistoryImportItem ", 30);
  *(&v9 + *(v9 - 24) + 8) = *(&v9 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = MEMORY[0x2318CD100](&v9, this);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " purchaseHistoryId=", 19);
  *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 2;
  v5 = MEMORY[0x2318CD140]();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", storeId=", 10);
  v7 = MEMORY[0x2318CD140](v6, v2);
  v14 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v14, 1);
  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v13);
}

void sub_22D3BE4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9);
  MEMORY[0x2318CD1F0](v9 + 112);
  _Unwind_Resume(a1);
}

BOOL ML3PurchaseHistoryImportItem::hasValue(ML3DAAPImportItem *this, uint64_t a2)
{
  if (a2 == 33554442)
  {
    a2 = 16777217;
  }

  else
  {
    a2 = a2;
  }

  return (a2 - 0x1000000) >> 25 <= 4 && ML3DAAPImportItem::hasValue(this, a2);
}

void ML3PurchaseHistoryImportItem::getDataValue(ML3DAAPImportItem *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (a2 != 134217729)
  {
    ML3DAAPImportItem::getDataValue(this, a2, __p);
    *a3 = *__p;
    return;
  }

  ML3CPP::Element::childElementForCode(&v14, *(this + 8), 0x61654375u);
  if (v14)
  {
    ML3CPP::Element::stringValue(__p, *(v14 + 48), *(v14 + 64));
    v5 = ML3CPPBridgeString(__p, 1);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = MEMORY[0x277CBEAC0];
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v8 = [v6 dictionaryWithContentsOfURL:v7];

    if (v8)
    {
      v9 = [ML3Track flattenedChapterDataFromDAAPInfoDictionary:v8 trackPersistentID:*(this + 1)];
      [v9 bytes];
      [v9 length];
      operator new();
    }

    v11 = 0u;
  }

  else
  {
    v11 = 0u;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!v11)
  {
    ML3DAAPImportItem::getDataValue(this, 134217729, __p);
    *a3 = *__p;
    v10 = *(&v11 + 1);
    if (!*(&v11 + 1))
    {
      return;
    }

    goto LABEL_16;
  }

  v10 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = v11;
  if (*(&v11 + 1))
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_22D3BE84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a9 + 1));
  }

  _Unwind_Resume(exception_object);
}

float ML3PurchaseHistoryImportItem::getFloatValue(ML3PurchaseHistoryImportItem **this, uint64_t a2)
{
  if (a2 == 33554437)
  {
    if (ML3PurchaseHistoryImportItem::_hasFlavorValue(this[12], 0x2000005))
    {
      return ML3PurchaseHistoryImportItem::_getIntegerFlavorValue(this[12], 0x2000005);
    }

    else
    {

      return ML3DAAPImportItem::getFloatValue(this, 33554437);
    }
  }

  else
  {

    return ML3DAAPTrackImportItem::getFloatValue(this, a2);
  }
}

uint64_t ML3PurchaseHistoryImportItem::_hasFlavorValue(ML3PurchaseHistoryImportItem *this, ML3PurchaseHistoryImportItem *a2)
{
  v2 = this;
  if (this)
  {
    FlavorCode = ML3PurchaseHistoryImportItem::_getFlavorCode(a2);
    ML3CPP::Element::childElementForCode(&v5, v2, FlavorCode);
    v2 = v5 != 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  return v2;
}

ML3PurchaseHistoryImportItem *ML3PurchaseHistoryImportItem::_getIntegerFlavorValue(ML3PurchaseHistoryImportItem *this, ML3PurchaseHistoryImportItem *a2)
{
  v2 = this;
  if (this)
  {
    FlavorCode = ML3PurchaseHistoryImportItem::_getFlavorCode(a2);
    ML3CPP::Element::childElementForCode(&v5, v2, FlavorCode);
    if (v5)
    {
      v2 = ML3CPP::Element::integerValue(v5);
    }

    else
    {
      v2 = 0;
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  return v2;
}

uint64_t ML3PurchaseHistoryImportItem::_getFlavorCode(ML3PurchaseHistoryImportItem *this)
{
  if (this > 100663315)
  {
    if (this <= 100663317)
    {
      if (this == 100663316)
      {
        return 1634026582;
      }

      else
      {
        return 1634026576;
      }
    }

    else
    {
      switch(this)
      {
        case 0x6000016:
          return 1634028337;
        case 0x600001C:
          return 1634026357;
        case 0x7000001:
          return 1634027588;
        default:
LABEL_14:
          v3 = [MEMORY[0x277CCA890] currentHandler];
          v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"uint32_t ML3PurchaseHistoryImportItem::_getFlavorCode(MLImportPropertyKey) const"];
          [v3 handleFailureInFunction:v4 file:@"ML3PurchaseHistoryImportItem.mm" lineNumber:317 description:{@"flavorDataForPropertyKey passed unknown key %d", this}];

          return 0;
      }
    }
  }

  else
  {
    result = 1634951794;
    switch(this)
    {
      case 50331650:
        return result;
      case 50331651:
        return 1634952036;
      case 50331652:
        return 1634952051;
      case 50331653:
        return 1634952299;
      case 50331654:
        return 1634956652;
      case 50331655:
        return 1634027349;
      case 50331656:
      case 50331662:
      case 50331665:
      case 50331666:
        goto LABEL_14;
      case 50331657:
        return 1634952813;
      case 50331658:
        return 1634027336;
      case 50331659:
        return 1634027333;
      case 50331660:
        return 1634027332;
      case 50331661:
        return 1634027346;
      case 50331663:
        return 1634955894;
      case 50331664:
        return 1634956146;
      case 50331667:
        return 1634029142;
      default:
        if (this == 33554437)
        {
          result = 1634956397;
        }

        else
        {
          if (this != 33554440)
          {
            goto LABEL_14;
          }

          result = 1634954355;
        }

        break;
    }
  }

  return result;
}

unint64_t ML3PurchaseHistoryImportItem::getIntegerValue(ML3PurchaseHistoryImportItem *this, ML3PurchaseHistoryImportItem *a2)
{
  if (a2 > 83886092)
  {
    if (a2 > 100663315)
    {
      if ((a2 - 100663316) < 3)
      {
        goto LABEL_5;
      }

      if ((a2 - 117440530) >= 2)
      {
        if (a2 != 117440513)
        {
          goto LABEL_35;
        }

        goto LABEL_5;
      }

      IntegerValue = ML3DAAPTrackImportItem::getIntegerValue(this, a2);
      if (IntegerValue)
      {
        return (IntegerValue + -978307200.0);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      switch(a2)
      {
        case 0x500000D:
          v10 = (*(*this + 32))(this, 16777217);
          return (MLMediaTypeByStandardizingMediaType(v10) & 0x3B26) != 0;
        case 0x600000B:
          return 1;
        case 0x6000010:
          return *(this + 11);
        default:
          goto LABEL_35;
      }
    }
  }

  if (a2 <= 33554457)
  {
    switch(a2)
    {
      case 0x100001A:
        v11 = (*(*this + 32))(this, 16777217);
        v8 = (MLMediaTypeByStandardizingMediaType(v11) & 0x408) == 0;
        break;
      case 0x2000008:
        goto LABEL_5;
      case 0x200000A:
        v7 = (*(*this + 32))(this, 16777217);
        v8 = MLMediaTypeByStandardizingMediaType(v7) == 2;
        break;
      default:
        goto LABEL_35;
    }

    return v8;
  }

  if ((a2 - 50331650) > 0x11 || ((1 << (a2 - 2)) & 0x26F2F) == 0)
  {
    if (a2 != 33554458)
    {
      goto LABEL_35;
    }

    ML3PurchaseHistoryImportItem::_getStringFlavorValue(__p, *(this + 12), 0x3000009);
    IntegerFlavorValue = ML3PurchaseHistoryImportItem::_getIntegerFlavorValue(*(this + 12), 0x3000003);
    v13 = v37;
    if (v37 < 0)
    {
      if (__p[1] != 3)
      {
        goto LABEL_44;
      }

      v14 = __p[0];
    }

    else
    {
      if (v37 != 3)
      {
        goto LABEL_44;
      }

      v14 = __p;
    }

    v15 = *v14;
    v16 = *(v14 + 2);
    if (v15 == 13421 && v16 == 112)
    {
      v6 = 13;
      goto LABEL_95;
    }

LABEL_44:
    if (IntegerFlavorValue == 1836069985)
    {
      v6 = 14;
      goto LABEL_95;
    }

    if (IntegerFlavorValue == 1634492771)
    {
      v6 = 26;
      goto LABEL_95;
    }

    if ((v37 & 0x80) != 0)
    {
      if (__p[1] == 3)
      {
        v18 = __p[0];
        goto LABEL_54;
      }
    }

    else if (v37 == 3)
    {
      v18 = __p;
LABEL_54:
      v19 = *v18;
      v20 = *(v18 + 2);
      if (v19 != 13421 || v20 != 118)
      {
        goto LABEL_58;
      }

      ML3CPP::Element::childElementForCode(&v34, *(this + 8), 0x61654D6Bu);
      if (v34 && (ML3CPP::Element::integerValue(v34) & 0x20) != 0)
      {
        v6 = 5;
      }

      else
      {
        v6 = 3;
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

LABEL_95:
      if ((v13 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }

      return v6;
    }

LABEL_58:
    {
      qword_27D9FD688 = 0;
      qword_27D9FD680 = 0;
      ML3PurchaseHistoryImportItem::_getLocationKind(void)const::__otherFormats = &qword_27D9FD680;
      __cxa_atexit(std::map<std::string,long long>::~map[abi:ne200100], &ML3PurchaseHistoryImportItem::_getLocationKind(void)const::__otherFormats, &dword_22D2FA000);
    }

    if (ML3PurchaseHistoryImportItem::_getLocationKind(void)const::onceToken != -1)
    {
      dispatch_once(&ML3PurchaseHistoryImportItem::_getLocationKind(void)const::onceToken, &__block_literal_global_827);
    }

    v22 = qword_27D9FD680;
    v13 = v37;
    if (!qword_27D9FD680)
    {
LABEL_85:
      v6 = 0;
      goto LABEL_95;
    }

    if ((v37 & 0x80u) == 0)
    {
      v23 = v37;
    }

    else
    {
      v23 = __p[1];
    }

    if ((v37 & 0x80u) == 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    while (1)
    {
      v25 = *(v22 + 55);
      if (v25 >= 0)
      {
        v26 = *(v22 + 55);
      }

      else
      {
        v26 = *(v22 + 40);
      }

      if (v25 >= 0)
      {
        v27 = (v22 + 32);
      }

      else
      {
        v27 = *(v22 + 32);
      }

      if (v26 >= v23)
      {
        v28 = v23;
      }

      else
      {
        v28 = v26;
      }

      v29 = memcmp(v24, v27, v28);
      v30 = v23 < v26;
      if (v29)
      {
        v30 = v29 < 0;
      }

      if (!v30)
      {
        v31 = memcmp(v27, v24, v28);
        v32 = v26 < v23;
        if (v31)
        {
          v32 = v31 < 0;
        }

        if (!v32)
        {
          v33 = *std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__find_equal<std::string>(&v34, __p);
          if (!v33)
          {
            operator new();
          }

          v6 = *(v33 + 56);
          goto LABEL_95;
        }

        v22 += 8;
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_5:
  if (ML3PurchaseHistoryImportItem::_hasFlavorValue(*(this + 12), a2))
  {
    v4 = *(this + 12);

    return ML3PurchaseHistoryImportItem::_getIntegerFlavorValue(v4, a2);
  }

LABEL_35:

  return ML3DAAPTrackImportItem::getIntegerValue(this, a2);
}

void sub_22D3BF294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,long long>,void *>>>::operator()[abi:ne200100](0, v17);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void ML3PurchaseHistoryImportItem::_getStringFlavorValue(ML3PurchaseHistoryImportItem *this, uint64_t a2, ML3PurchaseHistoryImportItem *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2)
  {
    FlavorCode = ML3PurchaseHistoryImportItem::_getFlavorCode(a3);
    ML3CPP::Element::childElementForCode(&v8, a2, FlavorCode);
    if (v8)
    {
      ML3CPP::Element::stringValue(&v6, *(v8 + 48), *(v8 + 64));
      *this = v6;
      *(this + 2) = v7;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_22D3BF350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__find_equal<std::string>(uint64_t **a1, const void **a2)
{
  v3 = &qword_27D9FD680;
  v4 = qword_27D9FD680;
  if (qword_27D9FD680)
  {
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = &qword_27D9FD680;
    do
    {
      while (1)
      {
        v3 = v4;
        v11 = *(v4 + 32);
        v9 = v4 + 32;
        v10 = v11;
        v12 = *(v9 + 23);
        if (v12 >= 0)
        {
          v13 = *(v9 + 23);
        }

        else
        {
          v13 = *(v9 + 8);
        }

        if (v12 >= 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = v10;
        }

        if (v13 >= v6)
        {
          v15 = v6;
        }

        else
        {
          v15 = v13;
        }

        v16 = memcmp(v7, v14, v15);
        v17 = v6 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v3;
        v8 = v3;
        if (!*v3)
        {
          goto LABEL_29;
        }
      }

      v18 = memcmp(v14, v7, v15);
      v19 = v13 < v6;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (!v19)
      {
        break;
      }

      v8 = v3 + 1;
      v4 = v3[1];
    }

    while (v4);
  }

  else
  {
    v8 = &qword_27D9FD680;
  }

LABEL_29:
  *a1 = v3;
  return v8;
}

uint64_t *std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*ML3PurchaseHistoryImportItem::_getLocationKind(void)const::__otherFormats)
  {
    ML3PurchaseHistoryImportItem::_getLocationKind(void)const::__otherFormats = *ML3PurchaseHistoryImportItem::_getLocationKind(void)const::__otherFormats;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_27D9FD680, a3);
  ++qword_27D9FD688;
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,long long>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void ___ZNK28ML3PurchaseHistoryImportItem16_getLocationKindEv_block_invoke()
{
  v26 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v14, "pdf");
  v15 = 55;
  std::string::basic_string[abi:ne200100]<0>(v16, "itlp");
  v17 = 54;
  std::string::basic_string[abi:ne200100]<0>(v18, "ite");
  v19 = 53;
  std::string::basic_string[abi:ne200100]<0>(v20, "m4b");
  v21 = 49;
  std::string::basic_string[abi:ne200100]<0>(v22, "aax");
  v23 = 35;
  std::string::basic_string[abi:ne200100]<0>(v24, ".epub");
  v25 = 51;
  if (!qword_27D9FD688)
  {
    goto LABEL_16;
  }

  v0 = ML3PurchaseHistoryImportItem::_getLocationKind(void)const::__otherFormats;
  ML3PurchaseHistoryImportItem::_getLocationKind(void)const::__otherFormats = &qword_27D9FD680;
  *(qword_27D9FD680 + 16) = 0;
  qword_27D9FD680 = 0;
  qword_27D9FD688 = 0;
  if (*(v0 + 8))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = v0;
  }

  v10 = &ML3PurchaseHistoryImportItem::_getLocationKind(void)const::__otherFormats;
  v11 = v1;
  v12 = v1;
  if (!v1)
  {
    std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
LABEL_16:
    v5 = 0;
    goto LABEL_19;
  }

  v2 = 0;
  v11 = std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::_DetachedTreeCache::__detach_next(v1);
  while (1)
  {
    v3 = std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__find_equal<std::string>(&v13, &v14[v2]);
    if (*v3)
    {
      v1 = v12;
      goto LABEL_11;
    }

    v4 = v3;
    std::string::operator=((v1 + 4), &v14[v2]);
    v1[7] = *&v14[v2 + 24];
    std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__insert_node_at(v13, v4, v1);
    v1 = v11;
    v12 = v11;
    if (!v11)
    {
      break;
    }

    v11 = std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::_DetachedTreeCache::__detach_next(v11);
LABEL_11:
    v5 = v2 + 32;
    if (v1)
    {
      v6 = v2 == 160;
      v2 += 32;
      if (!v6)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  v5 = v2 + 32;
LABEL_18:
  std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  if (v5 != 192)
  {
LABEL_19:
    v7 = &v14[v5];
    v8 = v5 - 192;
    do
    {
      if (!*std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__find_equal<std::string>(&v10, v7))
      {
        operator new();
      }

      v7 += 4;
      v8 += 32;
    }

    while (v8);
  }

  for (i = 0; i != -192; i -= 32)
  {
    if (v24[i + 23] < 0)
    {
      operator delete(*&v24[i]);
    }
  }
}

void sub_22D3BF994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  while (1)
  {
    v16 = *(v14 - 9);
    v14 -= 4;
    if (v16 < 0)
    {
      operator delete(*v14);
    }

    if (v14 == &a14)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void *std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::destroy(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void ML3PurchaseHistoryImportItem::getStringValue(ML3DAAPImportItem *this@<X0>, ML3PurchaseHistoryImportItem *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (a2 <= 100663303)
  {
    if (a2 != 50331654 && a2 != 50331657)
    {
      goto LABEL_15;
    }

LABEL_10:
    ML3PurchaseHistoryImportItem::_getStringFlavorValue(&__str, *(this + 12), a2);
    std::string::operator=(v5, &__str);
    *(a3 + 8) = 1;
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v9 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_28;
  }

  if (a2 == 167772183)
  {
    if ((*(*this + 32))(this, 16777217) == 512 && _os_feature_enabled_impl())
    {
      ML3DAAPImportItem::getStringValue(this, 167772192, &__str);
      *(a3 + 8) = __str.__r_.__value_.__s.__data_[8];
      std::string::operator=(v5, &__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      ML3DAAPImportItem::getStringValue(this, 167772183, &__str);
      *(a3 + 8) = __str.__r_.__value_.__s.__data_[8];
      std::string::operator=(v5, &__str.__r_.__value_.__r.__words[2]);
    }

    goto LABEL_17;
  }

  if (a2 == 100663324)
  {
    goto LABEL_10;
  }

  if (a2 != 100663304)
  {
LABEL_15:
    ML3DAAPImportItem::getStringValue(this, a2, &__str);
    *(a3 + 8) = __str.__r_.__value_.__s.__data_[8];
    std::string::operator=(v5, &__str.__r_.__value_.__r.__words[2]);
LABEL_17:
    __str.__r_.__value_.__r.__words[0] = &unk_28408AC60;
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

    v9 = __str.__r_.__value_.__r.__words[2];
    goto LABEL_28;
  }

  memset(&v13, 0, sizeof(v13));
  v6 = *(this + 12);
  if (v6)
  {
    ML3CPP::Element::childElementForCode(&__str, v6, 0x61655270u);
    size = __str.__r_.__value_.__l.__size_;
    v8 = __str.__r_.__value_.__r.__words[0];
    if (__str.__r_.__value_.__r.__words[0])
    {
LABEL_23:
      ML3CPP::Element::stringValue(&__str, *(v8 + 48), *(v8 + 64));
      v13 = __str;
      goto LABEL_24;
    }
  }

  else
  {
    size = 0;
  }

  ML3CPP::Element::childElementForCode(&__str, *(this + 8), 0x61655270u);
  v10 = __str.__r_.__value_.__l.__size_;
  v8 = __str.__r_.__value_.__r.__words[0];
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

  size = v10;
  if (v8)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

  std::string::operator=(v5, &v13);
  *(a3 + 8) = 1;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v13.__r_.__value_.__r.__words[0];
LABEL_28:
    operator delete(v9);
  }
}

void sub_22D3BFE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *v23 = v24;
  if (*(v23 + 39) < 0)
  {
    operator delete(*v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3PurchaseHistoryImportItem::isValid(ML3PurchaseHistoryImportItem *this)
{
  ML3CPP::Element::childElementForCode(&v7, *(this + 8), 0x6D61766Cu);
  if (v7)
  {
    v2 = ML3CPP::Element::integerValue(v7) != 0;
  }

  else
  {
    v2 = 0;
  }

  IntegerValue = ML3DAAPImportItem::getIntegerValue(this, 33554466);
  v4 = (*(*this + 32))(this, 16777217);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (IntegerValue)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2;
  }

  if ((*&v4 & 0x10E4ALL) != 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_22D3BFF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ML3PurchaseHistoryImportItem::~ML3PurchaseHistoryImportItem(ML3DAAPImportItem *this)
{
  *this = &unk_284083F10;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ML3DAAPImportItem::~ML3DAAPImportItem(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284083F10;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ML3DAAPImportItem::~ML3DAAPImportItem(this);
}

void ML3DAAPImportItem::_createImportItemValue(unsigned int a1@<W1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (a1 >> 1 == 184549379)
  {
    operator new();
  }

  operator new();
}

void sub_22D3C0254(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3DAAPPersonImportItem::ML3DAAPPersonImportItem(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_28408A4B0;
  *(a1 + 8) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  *a1 = &unk_2840842F8;
  return a1;
}

uint64_t std::__shared_ptr_pointer<ML3DAAPChildImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3DAAPChildImportItem>,std::allocator<ML3DAAPChildImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_22ML3DAAPChildImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3DAAPChildImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3DAAPChildImportItem>,std::allocator<ML3DAAPChildImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3DAAPChildImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3DAAPChildImportItem>,std::allocator<ML3DAAPChildImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void ML3DAAPImportItem::getImportItemArrayValue(ML3DAAPImportItem *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  ML3DAAPImportItem::_getChildElement(v14, this, a2);
  v3 = *v14;
  if (!*v14)
  {
    goto LABEL_14;
  }

  ML3CPP::Element::childElementForCode(&v12, *v14, 0x6D6C636Cu);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v15;
    v15 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v3 = v4;
  }

  else
  {
    ML3CPP::Element::childElementForCode(&v16, v3, 0x6D72636Fu);
    if (v16)
    {
      v10 = ML3CPP::Element::integerValue(v16);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v10 <= 0)
      {
        goto LABEL_12;
      }
    }

    else if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  memset(v11, 0, sizeof(v11));
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  v16 = v11;
  LOBYTE(v17) = 0;
  v9 = v8 - v7;
  if (v8 != v7)
  {
    if (!((v9 >> 4) >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>>(v9 >> 4);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v16 = v11;
  std::vector<std::shared_ptr<ML3CPP::Element>>::__destroy_vector::operator()[abi:ne200100](&v16);
LABEL_12:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_14:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_22D3C0700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

double ML3DAAPImportItem::_getChildElement(ML3DAAPImportItem *this, uint64_t a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  v5 = ML3DAAPCodeForImportPropertyKey(a3);
  if (v5)
  {
    ML3CPP::Element::childElementForCode(&v7, *(a2 + 64), v5);
    result = *&v7;
    *this = v7;
  }

  return result;
}

void std::vector<std::shared_ptr<ML3CPP::Element>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::shared_ptr<ML3ImportItem>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<ML3ImportItem>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}