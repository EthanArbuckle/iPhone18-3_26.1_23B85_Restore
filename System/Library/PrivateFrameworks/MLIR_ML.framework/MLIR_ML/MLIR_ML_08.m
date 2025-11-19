const char *llvm::getTypeName<mlir::FunctionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FunctionOpInterface]";
  v6 = 75;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = v5 - 1;
    v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
    v9 = *result + 16 * v8;
    v10 = *v9;
    if (*a2 == *v9)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_10;
    }

    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }
  }

  else
  {
    v9 = 0;
  }

  v20 = v9;
  v12 = *(result + 8);
  if (4 * v12 + 4 >= 3 * v5)
  {
    v5 *= 2;
    goto LABEL_24;
  }

  if (v5 + ~v12 - *(result + 12) <= v5 >> 3)
  {
LABEL_24:
    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v12 = *(v17 + 8);
    v9 = v20;
  }

  *(result + 8) = v12 + 1;
  if (*v9 != -4096)
  {
    --*(result + 12);
  }

  *v9 = *a2;
  *(v9 + 8) = *a3;
  v6 = *result;
  v5 = *(result + 16);
  v11 = 1;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void *llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = *a1 + 16 * v25;
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = *a1 + 16 * (v30 & v24);
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          *(v22 + 8) = *(v16 + 2);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

std::string *std::__fs::filesystem::operator/[abi:nn200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {

    return std::string::operator=(&a3->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a3).__size_)
    {
      std::string::push_back(&a3->__pn_, 47);
    }

    v6 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    return std::string::append(&a3->__pn_, v7, size);
  }
}

__n128 mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(uint64_t a1, char *__s)
{
  if (*a1)
  {
    v4 = strlen(__s);
    v5 = *(a1 + 24);
    v9.n128_u32[0] = 3;
    v9.n128_u64[1] = __s;
    v10 = v4;
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 36))
    {
      if (v5 <= &v9 && v5 + 24 * v6 > &v9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = (v5 + 24 * *(a1 + 32));
    result = v9;
    v7[1].n128_u64[0] = v10;
    *v7 = result;
    ++*(a1 + 32);
  }

  return result;
}

std::string *std::string::append[abi:nn200100]<char const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = this->__r_.__value_.__r.__words[0];
    v7 = HIBYTE(v9);
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

    v6 = 22;
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    v8 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v8->__r_.__value_.__l.__data_ + size + 1) <= a2)
  {
LABEL_12:
    if (v6 - size < v5)
    {
      v10 = a3;
      v11 = a2;
      std::string::__grow_by(this, v6, size - v6 + v5, size, size, 0, 0);
      a3 = v10;
      a2 = v11;
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    }

    v12 = this;
    if ((v7 & 0x80) != 0)
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

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
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

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

uint64_t mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v9[1] = a4;
  v12 = a2;
  v13 = 0;
  v7 = llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1, v9, &v12, a5);
  *(v7 + 240) = 0;
  *v7 = &unk_28685B690;
  *(v7 + 232) = &unk_28685B710;
  v12 = (v7 + 232);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v12);
  v10[0] = &unk_28685B7B8;
  v10[1] = a1;
  v14 = &v12;
  v11 = v10;
  v12 = &unk_28685B7B8;
  v13 = a1;
  std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](&v12, a1 + 200);
  if (v14 == &v12)
  {
    (*(*v14 + 4))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 5))();
  }

  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  return a1;
}

void mlir::Pass::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1);

  JUMPOUT(0x259C63180);
}

void *mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  return mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, a1 + 192, (a1 + 128));
}

std::string *mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a1 + 128), (a2 - 104));
  *(a1 + 240) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1 - 232);

  JUMPOUT(0x259C63180);
}

void *non-virtual thunk tomlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 216);
  v5 = *(a1 - 208);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  return mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, a1 - 40, (a1 - 104));
}

std::string *non-virtual thunk tomlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a1 - 104), (a2 - 104));
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 152) = &unk_28689F108;
  *(a1 + 160) = 0;
  *a1 = &unk_28689F7C0;
  *(a1 + 192) = &unk_28689F5B8;
  *(a1 + 200) = &unk_28685B770;
  *(a1 + 224) = a1 + 200;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1);

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1 - 232);

  JUMPOUT(0x259C63180);
}

BOOL llvm::cl::OptionValueCopy<std::string>::compare(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1 || *(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  return memcmp(v6, v9, v3) == 0;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISR_EEFvRKSB_EE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685B7B8;
  a2[1] = v2;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  *a1 = &unk_28689F7C0;
  v2 = a1 + 200;
  v3 = *(a1 + 224);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 + 152) = &unk_28685B750;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
    if ((*(a1 + 151) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(a1 + 151) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
LABEL_7:
  *a1 = &unk_28689F010;
  v4 = *(a1 + 96);
  if (v4 != *(a1 + 88))
  {
    free(v4);
  }

  v5 = *(a1 + 64);
  if (v5 != (a1 + 80))
  {
    free(v5);
  }

  return a1;
}

void *mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(void *a1, int a2, std::string *this)
{
  v5 = std::string::find(this, 32, 0);
  v6 = std::string::find(this, 123, 0);
  v7 = std::string::find(this, 39, 0);
  v8 = std::string::find(this, 34, 0);
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8 < v9)
  {
    v9 = v8;
  }

  if (v5 >= v9)
  {
    v11 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      v12 = this;
    }

    else
    {
      v12 = this->__r_.__value_.__r.__words[0];
    }

    if (v11 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v14 = a1;
  }

  else
  {
    v10 = a1[4];
    if (a1[3] == v10)
    {
      llvm::raw_ostream::write(a1, "{", 1uLL);
    }

    else
    {
      *v10 = 123;
      ++a1[4];
    }

    v15 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v15 >= 0)
    {
      v16 = this;
    }

    else
    {
      v16 = this->__r_.__value_.__r.__words[0];
    }

    if (v15 >= 0)
    {
      v17 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = this->__r_.__value_.__l.__size_;
    }

    result = llvm::raw_ostream::write(a1, v16, v17);
    v19 = a1[4];
    if (a1[3] != v19)
    {
      *v19 = 125;
      ++a1[4];
      return result;
    }

    v12 = "}";
    v14 = a1;
    size = 1;
  }

  return llvm::raw_ostream::write(v14, v12, size);
}

uint64_t llvm::SmallVectorImpl<long long>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 == a2 + 2)
    {
      v6 = a2 + 1;
      v7 = *(a2 + 2);
      v8 = *(result + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          v9 = result;
          memmove(*result, *a2, 8 * v7);
          result = v9;
        }

        *(result + 8) = v7;
      }

      else
      {
        if (*(result + 12) < v7)
        {
          *(result + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = result;
        if (v8)
        {
          v11 = a2;
          memmove(*result, *a2, 8 * v8);
          a2 = v11;
        }

        else
        {
          v8 = 0;
        }

        v12 = *v6 - v8;
        if (v12)
        {
          memcpy((*v10 + 8 * v8), *a2 + 8 * v8, 8 * v12);
        }

        result = v10;
        *(v10 + 8) = v7;
      }
    }

    else
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
    }

    *v6 = 0;
  }

  return result;
}

uint64_t llvm::SmallVector<long long,6u>::SmallVector(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (((8 * a3) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 0;
  if (a3)
  {
    memcpy(*a1, a2, 8 * a3);
    v5 = *(a1 + 8);
  }

  *(a1 + 8) = v5 + v3;
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = v4 - 1;
    v7 = (37 * *a2) & (v4 - 1);
    v8 = (*result + 8 * v7);
    v9 = *v8;
    if (*a2 == *v8)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_10;
    }

    v12 = 0;
    v13 = 1;
    while (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == 0x8000000000000000;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v11 = *(result + 8);
  if (4 * v11 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v11 - *(result + 12) <= v4 >> 3)
  {
LABEL_24:
    v16 = result;
    v17 = a3;
    llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v11 = *(v16 + 8);
    v8 = v18;
  }

  *(result + 8) = v11 + 1;
  if (*v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    --*(result + 12);
  }

  *v8 = *a2;
  v5 = *result;
  v4 = *(result + 16);
  v10 = 1;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x8000000000000000;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer(8 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset_pattern16(buffer, &unk_257369640, 8 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v10 - 1;
      v14 = v4;
      do
      {
        v17 = *v14;
        if ((*v14 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
        {
          v18 = (37 * v17) & v13;
          v16 = &buffer[8 * v18];
          v19 = *v16;
          if (v17 != *v16)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == 0x8000000000000000;
              }

              if (v22)
              {
                v20 = v16;
              }

              v23 = v18 + v21++;
              v18 = v23 & v13;
              v16 = &buffer[8 * (v23 & v13)];
              v19 = *v16;
              if (v17 == *v16)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v16 = v20;
            }
          }

LABEL_16:
          *v16 = v17;
          *(a1 + 8) = ++v12;
        }

        v14 = (v14 + 8);
      }

      while (v14 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {

    memset_pattern16(buffer, &unk_257369640, 8 * v15);
  }
}

uint64_t llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(uint64_t *a1, void *a2, void *a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  if ((*a1 + 8 * v6) == a2)
  {
    if (v6 >= *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v5 + 8 * v6) = *a3;
    v9 = *(a1 + 2) + 1;
    *(a1 + 2) = v9;
    return *a1 + 8 * v9 - 8;
  }

  else
  {
    if (v6 >= *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = a2;
    v8 = (v5 + 8 * v6);
    *v8 = *(v8 - 1);
    if (v8 - 1 != a2)
    {
      memmove(a2 + 1, a2, (v8 - 1) - a2);
      LODWORD(v6) = *(a1 + 2);
    }

    *(a1 + 2) = v6 + 1;
    *v7 = *a3;
  }

  return v7;
}

uint64_t mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::RegionBranchOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::RegionBranchOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::RegionBranchOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionBranchOpInterface]";
  v6 = 79;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ViewLikeOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ViewLikeOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::ViewLikeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ViewLikeOpInterface]";
  v6 = 75;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::BranchOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::BranchOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::BranchOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BranchOpInterface]";
  v6 = 73;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::RegionBranchTerminatorOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::RegionBranchTerminatorOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionBranchTerminatorOpInterface]";
  v6 = 89;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::CallOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::CallOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::CallOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallOpInterface]";
  v6 = 71;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::LoopLikeOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::LoopLikeOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::LoopLikeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::LoopLikeOpInterface]";
  v6 = 75;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t *mlir::applyPermutationMap<long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a1;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  if (*(a3 + 12) < mlir::AffineMap::getNumResults(&v15))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::AffineMap::getResults(&v15);
  if (v6)
  {
    v7 = result;
    v8 = 8 * v6;
    do
    {
      v9 = *v7;
      v16 = *v7;
      if (mlir::AffineExpr::getKind(&v16) == 6)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      mlir::AffineDimExpr::AffineDimExpr(&v16, v10);
      v14 = v16;
      if (v16)
      {
        result = mlir::AffineDimExpr::getPosition(&v14);
        v11 = *(a3 + 8);
        v12 = *(a2 + 8 * result);
        if (v11 >= *(a3 + 12))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v16 = v9;
        if (mlir::AffineExpr::getKind(&v16) == 5)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0;
        }

        result = mlir::AffineConstantExpr::AffineConstantExpr(&v16, v13);
        v12 = 0;
        v11 = *(a3 + 8);
        if (v11 >= *(a3 + 12))
        {
LABEL_16:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      *(*a3 + 8 * v11) = v12;
      ++*(a3 + 8);
      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 8;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 8;
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v12 = 0;
      v17 = 0;
      v26 = 0;
      goto LABEL_12;
    }

    v7 = *(result + 8);
  }

  v8 = HIDWORD(*a2);
  v9 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v8);
  LODWORD(v9) = -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)));
  v10 = v6 - 1;
  v11 = v9 & (v6 - 1);
  v12 = (v7 + 8 * v11);
  v13 = *v12;
  if (*a2 == *v12)
  {
LABEL_6:
    if (v5)
    {
      v14 = 4;
    }

    else
    {
      v4 = *(result + 8);
      v14 = *(result + 16);
    }

    v15 = 0;
    v16 = v4 + 8 * v14;
    goto LABEL_10;
  }

  v19 = 0;
  v20 = 1;
  while (v13 != -4096)
  {
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v13 == -8192;
    }

    if (v21)
    {
      v19 = v12;
    }

    v22 = v11 + v20++;
    v11 = v22 & v10;
    v12 = (v7 + 8 * (v22 & v10));
    v13 = *v12;
    if (*a2 == *v12)
    {
      goto LABEL_6;
    }
  }

  if (v19)
  {
    v12 = v19;
  }

  v26 = v12;
  if (v5)
  {
    v17 = 4;
  }

  else
  {
    v17 = *(result + 16);
  }

LABEL_12:
  if (4 * (v3 >> 1) + 4 >= 3 * v17)
  {
    v17 *= 2;
    goto LABEL_35;
  }

  if (v17 + ~(v3 >> 1) - *(result + 4) <= v17 >> 3)
  {
LABEL_35:
    v24 = a2;
    v25 = result;
    v23 = a3;
    llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v17);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v25, v24, &v26);
    a2 = v24;
    result = v25;
    a3 = v23;
    v3 = *v25;
    v12 = v26;
    v5 = *v25 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v12 != -4096)
  {
    --*(result + 4);
  }

  *v12 = *a2;
  if (*result)
  {
    v18 = 4;
  }

  else
  {
    v4 = *(result + 8);
    v18 = *(result + 16);
  }

  v16 = v4 + 8 * v18;
  v15 = 1;
LABEL_10:
  *a3 = v12;
  *(a3 + 8) = v16;
  *(a3 + 16) = v15;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v4 - 1;
    v8 = v6 & (v4 - 1);
    v9 = (v3 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v3 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v9 = 0;
  result = 0;
LABEL_8:
  *a3 = v9;
  return result;
}

int *llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, unsigned int a2)
{
  v20[3] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      v16 = a1;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      a1 = v16;
      *(v16 + 8) = buffer;
      *(v16 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    v18 = (8 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v5, &v18[v5]);

    llvm::deallocate_buffer(v5, v18);
  }

  v7 = &v19;
  if ((*(a1 + 8) | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    v19 = *(a1 + 8);
    v7 = v20;
  }

  v8 = *(a1 + 16);
  if ((v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v7++ = v8;
  }

  v9 = *(a1 + 24);
  if ((v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v7++ = v9;
  }

  v10 = *(a1 + 32);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    *v7++ = v10;
    if (a2 < 5)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, &v19, v7);
    }

    goto LABEL_16;
  }

  if (a2 >= 5)
  {
LABEL_16:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(8 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, &v19, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = (result + 10);
    v5 = (result + 2);
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5->i64[v4];
  }

  v7 = v6 - v5 - 8;
  if (v7 < 0x18)
  {
    v8 = v5;
    do
    {
LABEL_10:
      *v8++ = -4096;
    }

    while (v8 != v6);
    goto LABEL_11;
  }

  v9 = (v7 >> 3) + 1;
  v8 = &v5->i64[v9 & 0x3FFFFFFFFFFFFFFCLL];
  v10 = v5 + 1;
  v11 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v12 = v9 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v10[-1] = v11;
    *v10 = v11;
    v10 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v9 != (v9 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v20 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v14 = 3;
        v13 = result + 2;
      }

      else
      {
        v13 = *(result + 1);
        v14 = result[4] - 1;
      }

      v15 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v15 >> 47) ^ v15);
      v17 = v14 & (-348639895 * ((v16 >> 47) ^ v16));
      v18 = &v13[2 * v17];
      v19 = *v18;
      if (v20 != *v18)
      {
        v21 = 0;
        v22 = 1;
        while (v19 != -4096)
        {
          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = v19 == -8192;
          }

          if (v23)
          {
            v21 = v18;
          }

          v24 = v17 + v22++;
          v17 = v24 & v14;
          v18 = &v13[2 * (v24 & v14)];
          v19 = *v18;
          if (v20 == *v18)
          {
            goto LABEL_15;
          }
        }

        if (v21)
        {
          v18 = v21;
        }
      }

LABEL_15:
      *v18 = v20;
      *result += 2;
    }

    ++a2;
  }

  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParallelRegion<Empty>]";
  v6 = 89;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v7);
  v9 = *a3;
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  mlir::arith::ConstantOp::build(a1, v17, v9, v10);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

const char *llvm::getTypeName<mlir::MemoryEffects::Allocate>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Allocate]";
  v6 = 79;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = v14[1];
      v17 = *v16;
      v14[1] = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = v14[2];
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      v14[2] = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (!v20)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v20 + 24) == 1)
      {
LABEL_62:
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v19[2] = v29;
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v7[2] = v19;
        v20 = v7;
      }

      else
      {
        v19 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_26:
    v7 = *(v12[2] + 8 * (*v12[2] == v12));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      *(v21 + 16) = v14;
    }

    v22 = v14[2];
    v15[2] = v22;
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v14[2] = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_26;
  }

  if (!v24)
  {
    goto LABEL_54;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_54:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v26 = *v25;
    v7[1] = *v25;
    if (v26)
    {
      *(v26 + 16) = v7;
    }

    v27 = v7[2];
    v25[2] = v27;
    v27[*v27 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_69:
    v25 = v7;
  }

  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = v34[2];
  *(v35 + 16) = v37;
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  v34[2] = v35;
  return result;
}

const char *llvm::getTypeName<mlir::MemoryEffects::Free>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Free]";
  v6 = 75;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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
            v10 = a2[2];
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
          }

          *(v10 + 24) = 1;
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
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v13[2] = v3;
            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
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

uint64_t mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::TypedAttr>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypedAttr]";
  v6 = 65;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(mlir::NamedAttribute *this, mlir::NamedAttribute *a2, uint64_t a3)
{
  v3 = this;
  v18 = a3;
  v4 = a2 - this;
  if (a2 - this >= 257)
  {
    Value = mlir::StringAttr::getValue(&v18);
    v7 = v6;
    v8 = v4 >> 4;
    while (1)
    {
      v9 = v8 >> 1;
      Name = mlir::NamedAttribute::getName((v3 + 16 * (v8 >> 1)));
      v10 = mlir::StringAttr::getValue(&Name);
      v12 = v11;
      v13 = v7 >= v11 ? v11 : v7;
      if (v13)
      {
        v14 = memcmp(v10, Value, v13);
        if (v14)
        {
          break;
        }
      }

      if (v12 == v7)
      {
        v3 = (v3 + 16 * (v8 >> 1));
        return *(v3 + 1);
      }

      if (v12 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v8 = v9;
      if (v9 <= 0)
      {
        return 0;
      }
    }

    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v3 = (v3 + 16 * (v8 >> 1) + 16);
    v9 = v8 + ~v9;
    goto LABEL_4;
  }

  if (this != a2)
  {
    do
    {
      if (mlir::NamedAttribute::getName(v3) == a3)
      {
        return *(v3 + 1);
      }

      v3 = (v3 + 16);
    }

    while (v3 != a2);
  }

  return 0;
}

uint64_t mlir::getSplatFloatValue<float>(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  if (mlir::ElementsAttr::isSplat(&v22) && ((v21[0] = mlir::ElementsAttr::getShapedType(&v22), v21[1] = v2, v3 = *(*mlir::ShapedType::getElementType(v21) + 136), v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v4 = v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v4 = 1), !v4 ? (v5 = v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v5 = 1), !v5 ? (v6 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v6 = 1), !v6 ? (v7 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v7 = 1), !v7 ? (v8 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v9 = 1), !v9 ? (v10 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v10 = 1), !v10 ? (v11 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v11 = 1), !v11 ? (v12 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v12 = 1), !v12 ? (v13 = v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v13 = 1), !v13 ? (v14 = v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v14 = 1), !v14 ? (v15 = v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v15 = 1), !v15 ? (v16 = v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v16 = 1), !v16 ? (v17 = v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v17 = 1), v17 || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    LODWORD(v21[0]) = 0;
    mlir::copyElementsAttrData<float>(v22, v23, v21, 0);
    v18 = LODWORD(v21[0]);
    v19 = 0x100000000;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  return v18 | v19;
}

void mlir::copyElementsAttrData<float>(uint64_t a1, uint64_t a2, float *a3, int a4)
{
  v108[5] = *MEMORY[0x277D85DE8];
  v105 = a1;
  v106 = a2;
  Type = mlir::ElementsAttr::getType(&v105);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v104[0] = v7;
  v104[1] = Type;
  ElementType = mlir::ShapedType::getElementType(v104);
  isSplat = mlir::ElementsAttr::isSplat(&v105);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v105);
  v11 = v10;
  if (!isSplat || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v105, v106);
    if (mlir::Type::isUnsignedInteger(&ElementType, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&ElementType, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      if (NumElements >= 2)
      {
        v22 = 0;
        v21 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v23 = a3 + 1;
        do
        {
          if (isSplat)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          if (isSplat)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 + 1;
          }

          LOWORD(v19) = *&ElementsAttrRawData[2 * v24];
          v19 = LODWORD(v19);
          LOWORD(v20) = *&ElementsAttrRawData[2 * v25];
          v20 = LODWORD(v20);
          *(v23 - 1) = v19;
          *v23 = v20;
          v23 += 2;
          v22 += 2;
        }

        while (v22 != v21);
        goto LABEL_192;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&ElementType, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&ElementType, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_69;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_85;
    }

    if (mlir::Type::isInteger(&ElementType, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_101;
    }

    if (mlir::Type::isF16(&ElementType))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_117;
    }

    if (mlir::Type::isF32(&ElementType))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_133;
    }

    if (mlir::Type::isF64(&ElementType))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_153;
    }

    if (mlir::Type::isBF16(&ElementType))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_159;
    }

LABEL_161:
    if (mlir::Type::isInteger(&ElementType, 1))
    {
      if (isSplat)
      {
        v74 = 1;
      }

      else
      {
        v74 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v107, v74);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v107[0], v107[1]);
      v76 = v107[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (isSplat)
          {
            v78 = 0;
          }

          else
          {
            v78 = i;
          }

          v75.i8[0] = v76[v78];
          v75 = vmovl_s16(*&vmovl_s8(v75)).u64[0];
          *v75.i32 = v75.i32[0];
          a3[i] = *v75.i32;
        }
      }

      if (v76 != v108)
      {
        free(v76);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&ElementType);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
      mlir::detail::unpackQuantizedData<float>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (isSplat)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      LOBYTE(v12) = ElementsAttrRawData[v15];
      v12 = LODWORD(v12);
      a3[j] = v12;
    }

    return;
  }

  if (mlir::Type::isInteger(&ElementType, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (isSplat)
      {
        v18 = 0;
      }

      else
      {
        v18 = k;
      }

      v16.i8[0] = ElementsAttrRawData[v18];
      v16 = vmovl_s16(*&vmovl_s8(v16)).u64[0];
      *v16.i32 = v16.i32[0];
      a3[k] = *v16.i32;
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 16))
  {
    NumElements = 1;
LABEL_29:
    v21 = 0;
    do
    {
      if (isSplat)
      {
        v91 = 0;
      }

      else
      {
        v91 = v21;
      }

      LOWORD(v19) = *&ElementsAttrRawData[2 * v91];
      v19 = LODWORD(v19);
      a3[v21++] = v19;
LABEL_192:
      ;
    }

    while (NumElements != v21);
    return;
  }

  if (mlir::Type::isInteger(&ElementType, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v30 = 0;
      v28 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v31 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }

        v26.i16[0] = *&ElementsAttrRawData[2 * v32];
        if (isSplat)
        {
          v33 = 0;
        }

        else
        {
          v33 = v30 + 1;
        }

        v26 = vmovl_s16(v26).u64[0];
        *v26.i32 = v26.i32[0];
        v27.i16[0] = *&ElementsAttrRawData[2 * v33];
        v27 = vmovl_s16(v27).u64[0];
        *v27.i32 = v27.i32[0];
        *(v31 - 1) = v26.i32[0];
        *v31 = v27.i32[0];
        v31 += 2;
        v30 += 2;
      }

      while (v30 != v28);
      goto LABEL_197;
    }

    v28 = 0;
    do
    {
      if (isSplat)
      {
        v92 = 0;
      }

      else
      {
        v92 = v28;
      }

      v26.i16[0] = *&ElementsAttrRawData[2 * v92];
      v26 = vmovl_s16(v26).u64[0];
      *v26.i32 = v26.i32[0];
      a3[v28++] = *v26.i32;
LABEL_197:
      ;
    }

    while (NumElements != v28);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 32))
  {
    NumElements = 1;
LABEL_53:
    if (NumElements >= 2)
    {
      v35 = 0;
      v29 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v36 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        if (isSplat)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35 + 1;
        }

        v39 = *&ElementsAttrRawData[4 * v38];
        *(v36 - 1) = *&ElementsAttrRawData[4 * v37];
        *v36 = v39;
        v36 += 2;
        v35 += 2;
      }

      while (v35 != v29);
      goto LABEL_202;
    }

    v29 = 0;
    do
    {
      if (isSplat)
      {
        v93 = 0;
      }

      else
      {
        v93 = v29;
      }

      a3[v29++] = *&ElementsAttrRawData[4 * v93];
LABEL_202:
      ;
    }

    while (NumElements != v29);
    return;
  }

  if (mlir::Type::isInteger(&ElementType, 32))
  {
    NumElements = 1;
LABEL_69:
    if (NumElements >= 2)
    {
      v41 = 0;
      v34 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v42 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v43 = 0;
        }

        else
        {
          v43 = v41;
        }

        if (isSplat)
        {
          v44 = 0;
        }

        else
        {
          v44 = v41 + 1;
        }

        v45 = *&ElementsAttrRawData[4 * v44];
        *(v42 - 1) = *&ElementsAttrRawData[4 * v43];
        *v42 = v45;
        v42 += 2;
        v41 += 2;
      }

      while (v41 != v34);
      goto LABEL_207;
    }

    v34 = 0;
    do
    {
      if (isSplat)
      {
        v94 = 0;
      }

      else
      {
        v94 = v34;
      }

      a3[v34++] = *&ElementsAttrRawData[4 * v94];
LABEL_207:
      ;
    }

    while (NumElements != v34);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 64))
  {
    NumElements = 1;
LABEL_85:
    if (NumElements >= 2)
    {
      v47 = 0;
      v40 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v48 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v49 = 0;
        }

        else
        {
          v49 = v47;
        }

        if (isSplat)
        {
          v50 = 0;
        }

        else
        {
          v50 = v47 + 1;
        }

        v51 = *&ElementsAttrRawData[8 * v50];
        *(v48 - 1) = *&ElementsAttrRawData[8 * v49];
        *v48 = v51;
        v48 += 2;
        v47 += 2;
      }

      while (v47 != v40);
      goto LABEL_212;
    }

    v40 = 0;
    do
    {
      if (isSplat)
      {
        v95 = 0;
      }

      else
      {
        v95 = v40;
      }

      a3[v40++] = *&ElementsAttrRawData[8 * v95];
LABEL_212:
      ;
    }

    while (NumElements != v40);
    return;
  }

  if (mlir::Type::isInteger(&ElementType, 64))
  {
    NumElements = 1;
LABEL_101:
    if (NumElements >= 2)
    {
      v53 = 0;
      v46 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v54 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v55 = 0;
        }

        else
        {
          v55 = v53;
        }

        if (isSplat)
        {
          v56 = 0;
        }

        else
        {
          v56 = v53 + 1;
        }

        v57 = *&ElementsAttrRawData[8 * v56];
        *(v54 - 1) = *&ElementsAttrRawData[8 * v55];
        *v54 = v57;
        v54 += 2;
        v53 += 2;
      }

      while (v53 != v46);
      goto LABEL_217;
    }

    v46 = 0;
    do
    {
      if (isSplat)
      {
        v96 = 0;
      }

      else
      {
        v96 = v46;
      }

      a3[v46++] = *&ElementsAttrRawData[8 * v96];
LABEL_217:
      ;
    }

    while (NumElements != v46);
    return;
  }

  if (mlir::Type::isF16(&ElementType))
  {
    NumElements = 1;
LABEL_117:
    if (NumElements >= 2)
    {
      v60 = 0;
      v52 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v61 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v62 = 0;
        }

        else
        {
          v62 = v60;
        }

        if (isSplat)
        {
          v63 = 0;
        }

        else
        {
          v63 = v60 + 1;
        }

        _H0 = *&ElementsAttrRawData[2 * v62];
        _H1 = *&ElementsAttrRawData[2 * v63];
        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
        }

        *(v61 - 1) = _S0;
        *v61 = _S1;
        v61 += 2;
        v60 += 2;
      }

      while (v60 != v52);
      goto LABEL_222;
    }

    v52 = 0;
    do
    {
      if (isSplat)
      {
        v97 = 0;
      }

      else
      {
        v97 = v52;
      }

      _H0 = *&ElementsAttrRawData[2 * v97];
      __asm { FCVT            S0, H0 }

      a3[v52++] = _S0;
LABEL_222:
      ;
    }

    while (NumElements != v52);
    return;
  }

  if (mlir::Type::isF32(&ElementType))
  {
    NumElements = 1;
LABEL_133:
    for (m = 0; m != NumElements; ++m)
    {
      if (isSplat)
      {
        v59 = 0;
      }

      else
      {
        v59 = m;
      }

      a3[m] = *&ElementsAttrRawData[4 * v59];
    }

    return;
  }

  if (mlir::Type::isF64(&ElementType))
  {
    NumElements = 1;
LABEL_153:
    if (NumElements >= 2)
    {
      v79 = 0;
      v72 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v80 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v81 = 0;
        }

        else
        {
          v81 = v79;
        }

        if (isSplat)
        {
          v82 = 0;
        }

        else
        {
          v82 = v79 + 1;
        }

        v83 = *&ElementsAttrRawData[8 * v81];
        v84 = *&ElementsAttrRawData[8 * v82];
        *(v80 - 1) = v83;
        *v80 = v84;
        v80 += 2;
        v79 += 2;
      }

      while (v79 != v72);
      goto LABEL_227;
    }

    v72 = 0;
    do
    {
      if (isSplat)
      {
        v100 = 0;
      }

      else
      {
        v100 = v72;
      }

      v101 = *&ElementsAttrRawData[8 * v100];
      a3[v72++] = v101;
LABEL_227:
      ;
    }

    while (NumElements != v72);
    return;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&ElementType))
  {
    goto LABEL_161;
  }

LABEL_159:
  if (NumElements >= 2)
  {
    v86 = 0;
    v73 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v87 = (a3 + 1);
    do
    {
      if (isSplat)
      {
        v88 = 0;
      }

      else
      {
        v88 = v86;
      }

      if (isSplat)
      {
        v89 = 0;
      }

      else
      {
        v89 = v86 + 1;
      }

      v90 = *&ElementsAttrRawData[2 * v89] << 16;
      *(v87 - 1) = *&ElementsAttrRawData[2 * v88] << 16;
      *v87 = v90;
      v87 += 2;
      v86 += 2;
    }

    while (v86 != v73);
    goto LABEL_232;
  }

  v73 = 0;
  do
  {
    if (isSplat)
    {
      v102 = 0;
    }

    else
    {
      v102 = v73;
    }

    LODWORD(a3[v73++]) = *&ElementsAttrRawData[2 * v102] << 16;
LABEL_232:
    ;
  }

  while (NumElements != v73);
}

unsigned __int8 *mlir::detail::unpackQuantizedData<float>(unsigned __int8 *result, unint64_t a2, float *a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      do
      {
        v7 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v8 = (v5 >> 3) + 1;
          if (v8 < a2)
          {
            v7 |= result[v8] << (8 - (v5 & 7));
          }
        }

        *a3++ = (v7 & ~(-1 << a5));
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    do
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (v12)
      {
        v13 = *result;
        v14 = vdupq_n_s64(v12 - 1);
        v15 = &a3[v9 * v11];
        v16 = vmovn_s64(vcgeq_u64(v14, xmmword_2573686A0));
        if (vuzp1_s16(v16, 0).u8[0])
        {
          *v15 = (v10 & v13);
        }

        if (vuzp1_s16(v16, 0).i8[2])
        {
          v15[1] = ((v13 >> a5) & v10);
        }

        if (vuzp1_s16(0, vmovn_s64(vcgeq_u64(v14, xmmword_2573695C0))).i32[1])
        {
          v15[2] = ((v13 >> (2 * a5)) & v10);
          v15[3] = ((v13 >> (3 * a5)) & v10);
        }

        if (((v12 + 3) & 0x1C) != 4)
        {
          v17 = vmovn_s64(vcgtq_u64(v14, xmmword_2573686C0));
          if (vuzp1_s16(v17, 0).u8[0])
          {
            v15[4] = ((v13 >> (4 * a5)) & v10);
          }

          if (vuzp1_s16(v17, 0).i8[2])
          {
            v15[5] = ((v13 >> (5 * a5)) & v10);
          }

          if (vuzp1_s16(0, vmovn_s64(vcgtq_u64(v14, xmmword_2573695F0))).i32[1])
          {
            v15[6] = ((v13 >> (6 * a5)) & v10);
            v15[7] = ((v13 >> (7 * a5)) & v10);
          }
        }
      }

      ++v9;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t mlir::matchConstantWithFloatVector<float>(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  if (!a1)
  {
    return 0;
  }

  v22 = &v23;
  v25 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v25);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v22, DefiningOp))
  {
    return 0;
  }

  v21[0] = mlir::ElementsAttr::getShapedType(&v23);
  v21[1] = v4;
  v5 = *(*mlir::ShapedType::getElementType(v21) + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v7 = v6 || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v8 = v7 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v9 = v8 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v10 = v9 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v11 = v10 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v12 = v11 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v13 = v12 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v14 = v13 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v15 = v14 || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v16 = v15 || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v17 = v16 || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v18 = v17 || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  v19 = v18 || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (!v19 && v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  mlir::getFloatValues<float>(v23, v24, a2, 1);
  return 1;
}

void mlir::getFloatValues<float>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a1;
  v9 = a2;
  if (!mlir::ElementsAttr::isSplat(&v8) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v8, v9);
  }

  else
  {
    NumElements = 1;
  }

  v7 = *(a3 + 8);
  if (NumElements != v7)
  {
    if (NumElements >= v7)
    {
      if (NumElements > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 4 * v7), 4 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  mlir::copyElementsAttrData<float>(v8, v9, *a3, a4);
}

unsigned __int8 *mlir::detail::unpackQuantizedData<int>(unsigned __int8 *result, unint64_t a2, int *a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      do
      {
        v7 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v8 = (v5 >> 3) + 1;
          if (v8 < a2)
          {
            v7 |= result[v8] << (8 - (v5 & 7));
          }
        }

        *a3++ = v7 & ~(-1 << a5);
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    do
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (v12)
      {
        v13 = *result;
        v14 = vdupq_n_s64(v12 - 1);
        v15 = &a3[v9 * v11];
        v16 = vmovn_s64(vcgeq_u64(v14, xmmword_2573686A0));
        if (vuzp1_s16(v16, 0).u8[0])
        {
          *v15 = v10 & v13;
        }

        if (vuzp1_s16(v16, 0).i8[2])
        {
          v15[1] = (v13 >> a5) & v10;
        }

        if (vuzp1_s16(0, vmovn_s64(vcgeq_u64(v14, xmmword_2573695C0))).i32[1])
        {
          v15[2] = (v13 >> (2 * a5)) & v10;
          v15[3] = (v13 >> (3 * a5)) & v10;
        }

        if (((v12 + 3) & 0x1C) != 4)
        {
          v17 = vmovn_s64(vcgtq_u64(v14, xmmword_2573686C0));
          if (vuzp1_s16(v17, 0).u8[0])
          {
            v15[4] = (v13 >> (4 * a5)) & v10;
          }

          if (vuzp1_s16(v17, 0).i8[2])
          {
            v15[5] = (v13 >> (5 * a5)) & v10;
          }

          if (vuzp1_s16(0, vmovn_s64(vcgtq_u64(v14, xmmword_2573695F0))).i32[1])
          {
            v15[6] = (v13 >> (6 * a5)) & v10;
            v15[7] = (v13 >> (7 * a5)) & v10;
          }
        }
      }

      ++v9;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ResultsBroadcastableShape<Empty>]";
  v6 = 97;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::InFlightDiagnostic::~InFlightDiagnostic(mlir::InFlightDiagnostic *this)
{
  if (*this)
  {
    mlir::InFlightDiagnostic::report(this);
  }

  if (*(this + 200) == 1)
  {
    mlir::Diagnostic::~Diagnostic((this + 8));
  }
}

void mlir::Diagnostic::~Diagnostic(mlir::Diagnostic *this)
{
  v2 = *(this + 22);
  if (v2 != this + 192)
  {
    free(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    v4 = *(this + 20);
    v5 = *(this + 19);
    if (v4 != v3)
    {
      do
      {
        v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v3);
      v5 = *(this + 19);
    }

    *(this + 20) = v3;
    operator delete(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    v7 = *(this + 17);
    v8 = *(this + 16);
    if (v7 != v6)
    {
      do
      {
        v10 = *--v7;
        v9 = v10;
        *v7 = 0;
        if (v10)
        {
          MEMORY[0x259C63150](v9, 0x1000C8077774924);
        }
      }

      while (v7 != v6);
      v8 = *(this + 16);
    }

    *(this + 17) = v6;
    operator delete(v8);
  }

  v11 = *(this + 2);
  if (v11 != this + 32)
  {
    free(v11);
  }
}

const char *llvm::getTypeName<mlir::FormableRegionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FormableRegionOpInterface]";
  v6 = 81;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t mlir::getSingleIntValue<int>(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v11[0] = mlir::ElementsAttr::getShapedType(&v12);
  v11[1] = v2;
  Shape = mlir::ShapedType::getShape(v11);
  if (mlir::ShapedType::getNumElements(Shape, v4) == 1 && (v10[0] = mlir::ElementsAttr::getShapedType(&v12), v10[1] = v5, *(*mlir::ShapedType::getElementType(v10) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    LODWORD(v10[0]) = 0;
    mlir::copyElementsAttrData<int>(v12, v13, v10, 1);
    v8 = v10[0] & 0xFFFFFF00;
    v6 = LOBYTE(v10[0]);
    v7 = 0x100000000;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  return v7 | v8 | v6;
}

float mlir::copyElementsAttrData<int>(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  v88[5] = *MEMORY[0x277D85DE8];
  v85 = a1;
  v86 = a2;
  Type = mlir::ElementsAttr::getType(&v85);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v84[0] = v7;
  v84[1] = Type;
  ElementType = mlir::ShapedType::getElementType(v84);
  isSplat = mlir::ElementsAttr::isSplat(&v85);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v85);
  v11 = v10;
  if (!isSplat || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v85, v86);
    if (mlir::Type::isUnsignedInteger(&ElementType, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&ElementType, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      if (NumElements >= 2)
      {
        v19 = 0;
        v18 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v20 = a3 + 1;
        do
        {
          if (isSplat)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          if (isSplat)
          {
            v22 = 0;
          }

          else
          {
            v22 = v19 + 1;
          }

          v23 = *&ElementsAttrRawData[2 * v22];
          *(v20 - 1) = *&ElementsAttrRawData[2 * v21];
          *v20 = v23;
          v20 += 2;
          v19 += 2;
        }

        while (v19 != v18);
        goto LABEL_187;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&ElementType, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&ElementType, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_73;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_84;
    }

    if (mlir::Type::isInteger(&ElementType, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_91;
    }

    if (mlir::Type::isF16(&ElementType))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_107;
    }

    if (mlir::Type::isF32(&ElementType))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_123;
    }

    if (mlir::Type::isF64(&ElementType))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_139;
    }

    if (mlir::Type::isBF16(&ElementType))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_154;
    }

LABEL_156:
    if (mlir::Type::isInteger(&ElementType, 1))
    {
      if (isSplat)
      {
        v60 = 1;
      }

      else
      {
        v60 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v87, v60);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v87[0], v87[1]);
      v61 = v87[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (isSplat)
          {
            v63 = 0;
          }

          else
          {
            v63 = i;
          }

          a3[i] = v61[v63];
        }
      }

      if (v61 != v88)
      {
        free(v61);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&ElementType);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
      mlir::detail::unpackQuantizedData<int>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (isSplat)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      a3[j] = ElementsAttrRawData[v15];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&ElementType, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (isSplat)
      {
        v17 = 0;
      }

      else
      {
        v17 = k;
      }

      a3[k] = ElementsAttrRawData[v17];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 16))
  {
    NumElements = 1;
LABEL_29:
    v18 = 0;
    do
    {
      if (isSplat)
      {
        v74 = 0;
      }

      else
      {
        v74 = v18;
      }

      a3[v18++] = *&ElementsAttrRawData[2 * v74];
LABEL_187:
      ;
    }

    while (NumElements != v18);
    return *&v12;
  }

  if (mlir::Type::isInteger(&ElementType, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v27 = 0;
      v24 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v28 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27;
        }

        if (isSplat)
        {
          v30 = 0;
        }

        else
        {
          v30 = v27 + 1;
        }

        v31 = *&ElementsAttrRawData[2 * v30];
        *(v28 - 1) = *&ElementsAttrRawData[2 * v29];
        *v28 = v31;
        v28 += 2;
        v27 += 2;
      }

      while (v27 != v24);
      goto LABEL_192;
    }

    v24 = 0;
    do
    {
      if (isSplat)
      {
        v75 = 0;
      }

      else
      {
        v75 = v24;
      }

      a3[v24++] = *&ElementsAttrRawData[2 * v75];
LABEL_192:
      ;
    }

    while (NumElements != v24);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 32))
  {
    NumElements = 1;
LABEL_53:
    for (m = 0; m != NumElements; ++m)
    {
      if (isSplat)
      {
        v26 = 0;
      }

      else
      {
        v26 = m;
      }

      a3[m] = *&ElementsAttrRawData[4 * v26];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&ElementType, 32))
  {
    NumElements = 1;
LABEL_73:
    for (n = 0; n != NumElements; ++n)
    {
      if (isSplat)
      {
        v33 = 0;
      }

      else
      {
        v33 = n;
      }

      a3[n] = *&ElementsAttrRawData[4 * v33];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 64))
  {
    NumElements = 1;
LABEL_84:
    if (NumElements >= 2)
    {
      v36 = 0;
      v34 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v37 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v38 = 0;
        }

        else
        {
          v38 = v36;
        }

        if (isSplat)
        {
          v39 = 0;
        }

        else
        {
          v39 = v36 + 1;
        }

        v40 = *&ElementsAttrRawData[8 * v39];
        *(v37 - 1) = *&ElementsAttrRawData[8 * v38];
        *v37 = v40;
        v37 += 2;
        v36 += 2;
      }

      while (v36 != v34);
      goto LABEL_197;
    }

    v34 = 0;
    do
    {
      if (isSplat)
      {
        v76 = 0;
      }

      else
      {
        v76 = v34;
      }

      a3[v34++] = *&ElementsAttrRawData[8 * v76];
LABEL_197:
      ;
    }

    while (NumElements != v34);
    return *&v12;
  }

  if (mlir::Type::isInteger(&ElementType, 64))
  {
    NumElements = 1;
LABEL_91:
    if (NumElements >= 2)
    {
      v42 = 0;
      v35 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v43 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v44 = 0;
        }

        else
        {
          v44 = v42;
        }

        if (isSplat)
        {
          v45 = 0;
        }

        else
        {
          v45 = v42 + 1;
        }

        v46 = *&ElementsAttrRawData[8 * v45];
        *(v43 - 1) = *&ElementsAttrRawData[8 * v44];
        *v43 = v46;
        v43 += 2;
        v42 += 2;
      }

      while (v42 != v35);
      goto LABEL_202;
    }

    v35 = 0;
    do
    {
      if (isSplat)
      {
        v77 = 0;
      }

      else
      {
        v77 = v35;
      }

      a3[v35++] = *&ElementsAttrRawData[8 * v77];
LABEL_202:
      ;
    }

    while (NumElements != v35);
    return *&v12;
  }

  if (mlir::Type::isF16(&ElementType))
  {
    NumElements = 1;
LABEL_107:
    if (NumElements >= 2)
    {
      v48 = 0;
      v41 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v49 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        if (isSplat)
        {
          v51 = 0;
        }

        else
        {
          v51 = v48 + 1;
        }

        LOWORD(v12) = *&ElementsAttrRawData[2 * v50];
        v52 = *&ElementsAttrRawData[2 * v51];
        *(v49 - 1) = *&v12;
        *v49 = v52;
        v49 += 2;
        v48 += 2;
      }

      while (v48 != v41);
      goto LABEL_207;
    }

    v41 = 0;
    do
    {
      if (isSplat)
      {
        v78 = 0;
      }

      else
      {
        v78 = v41;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v78];
      a3[v41++] = *&v12;
LABEL_207:
      ;
    }

    while (NumElements != v41);
    return *&v12;
  }

  if (mlir::Type::isF32(&ElementType))
  {
    NumElements = 1;
LABEL_123:
    if (NumElements >= 2)
    {
      v54 = 0;
      v47 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v55 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v56 = 0;
        }

        else
        {
          v56 = v54;
        }

        if (isSplat)
        {
          v57 = 0;
        }

        else
        {
          v57 = v54 + 1;
        }

        LODWORD(v12) = *&ElementsAttrRawData[4 * v56];
        v58 = *&ElementsAttrRawData[4 * v57];
        *(v55 - 1) = *&v12;
        *v55 = v58;
        v55 += 2;
        v54 += 2;
      }

      while (v54 != v47);
      goto LABEL_212;
    }

    v47 = 0;
    do
    {
      if (isSplat)
      {
        v79 = 0;
      }

      else
      {
        v79 = v47;
      }

      LODWORD(v12) = *&ElementsAttrRawData[4 * v79];
      a3[v47++] = *&v12;
LABEL_212:
      ;
    }

    while (NumElements != v47);
    return *&v12;
  }

  if (mlir::Type::isF64(&ElementType))
  {
    NumElements = 1;
LABEL_139:
    if (NumElements >= 2)
    {
      v64 = 0;
      v53 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v65 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64;
        }

        if (isSplat)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64 + 1;
        }

        v12 = *&ElementsAttrRawData[8 * v66];
        v68 = *&ElementsAttrRawData[8 * v67];
        *(v65 - 1) = v12;
        *v65 = v68;
        v65 += 2;
        v64 += 2;
      }

      while (v64 != v53);
      goto LABEL_217;
    }

    v53 = 0;
    do
    {
      if (isSplat)
      {
        v80 = 0;
      }

      else
      {
        v80 = v53;
      }

      v12 = *&ElementsAttrRawData[8 * v80];
      a3[v53++] = v12;
LABEL_217:
      ;
    }

    while (NumElements != v53);
    return *&v12;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&ElementType))
  {
    goto LABEL_156;
  }

LABEL_154:
  if (NumElements >= 2)
  {
    v70 = 0;
    v59 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v71 = a3;
    do
    {
      if (isSplat)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      if (isSplat)
      {
        v73 = 0;
      }

      else
      {
        v73 = v70 + 1;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v72];
      WORD2(v12) = *&ElementsAttrRawData[2 * v73];
      v12 = COERCE_DOUBLE(vcvt_s32_f32(vshl_n_s32(*&v12, 0x10uLL)));
      *v71++ = v12;
      v70 += 2;
    }

    while (v70 != v59);
    goto LABEL_222;
  }

  v59 = 0;
  do
  {
    if (isSplat)
    {
      v81 = 0;
    }

    else
    {
      v81 = v59;
    }

    LODWORD(v12) = *&ElementsAttrRawData[2 * v81] << 16;
    a3[v59++] = *&v12;
LABEL_222:
    ;
  }

  while (NumElements != v59);
  return *&v12;
}

const char *llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SameOperandsAndResultShape<Empty>]";
  v6 = 98;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SameOperandsAndResultType<Empty>]";
  v6 = 97;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = v4 - 1;
    v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v8 = (*result + 8 * v7);
    v9 = *v8;
    if (*a2 == *v8)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_10;
    }

    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v11 = *(result + 8);
  if (4 * v11 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v11 - *(result + 12) <= v4 >> 3)
  {
LABEL_24:
    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v11 = *(v16 + 8);
    v8 = v18;
  }

  *(result + 8) = v11 + 1;
  if (*v8 != -4096)
  {
    --*(result + 12);
  }

  *v8 = *a2;
  v5 = *result;
  v4 = *(result + 16);
  v10 = 1;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

int64x2_t *llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &result->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != result + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = ((v28 >> 4) ^ (v28 >> 9)) & v18;
          v27 = (*a1 + 8 * v29);
          v30 = *v27;
          if (v28 != *v27)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v27;
              }

              v34 = v29 + v32++;
              v29 = v34 & v18;
              v27 = (*a1 + 8 * (v34 & v18));
              v30 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v31)
            {
              v27 = v31;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = &result->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = &result->i8[8 * v20];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v26);
    }
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v10[1] = a4;
  v13 = a2;
  v14 = 0;
  v8 = llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(a1, v10, &v13, a5, a6);
  *(v8 + 200) = 0;
  *v8 = &unk_28685B8E0;
  *(v8 + 192) = &unk_28685B960;
  v13 = (v8 + 192);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v13);
  v11[0] = &unk_28685BA08;
  v11[1] = a1;
  v15 = &v13;
  v12 = v11;
  v13 = &unk_28685BA08;
  v14 = a1;
  std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](&v13, a1 + 160);
  if (v15 == &v13)
  {
    (*(*v15 + 4))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 5))();
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  return a1;
}

void *mlir::Pass::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(void *a1)
{
  *a1 = &unk_28689F660;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(void *a1)
{
  *a1 = &unk_28689F660;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  v9 = *(a1 + 128);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 64);
  *(result + 200) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_28689F660;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 192) = &unk_28689F010;
  v4 = *(a1 - 96);
  if (v4 != *(a1 - 104))
  {
    free(v4);
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  *(a1 - 192) = &unk_28689F660;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 192) = &unk_28689F010;
  v4 = *(a1 - 96);
  if (v4 != *(a1 - 104))
  {
    free(v4);
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

llvm::raw_ostream *non-virtual thunk tomlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 176);
  v5 = *(a1 - 168);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  v9 = *(a1 - 64);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 64) = *(a2 - 64);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, int **a5)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B9A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F660;
  *(a1 + 152) = &unk_28689F3D8;
  *(a1 + 160) = &unk_28685B9C0;
  *(a1 + 184) = a1 + 160;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v12 = **a5;
  *(a1 + 128) = v12;
  *(a1 + 148) = 1;
  *(a1 + 144) = v12;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(void *a1)
{
  *a1 = &unk_28689F660;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(void *a1)
{
  *a1 = &unk_28689F660;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_28689F660;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 192) = &unk_28689F010;
  v4 = *(a1 - 96);
  if (v4 != *(a1 - 104))
  {
    free(v4);
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option((a1 - 192));
}

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685BA08;
  a2[1] = v2;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  v4 = a3 - a2;
  if (((a3 - a2) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 0;
  if (a2 != a3)
  {
    memcpy(*a1, a2, v4);
    v5 = *(a1 + 8);
  }

  *(a1 + 8) = v5 + (v4 >> 3);
  return a1;
}

void std::__tree<long long>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<long long>::destroy(a1, *a2);
    std::__tree<long long>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<long long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
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
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
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
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

char *std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::Stitchable<Empty>]";
  v6 = 82;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::InferTypeOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::InferTypeOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::InferTypeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferTypeOpInterface]";
  v6 = 76;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::RewriterBase::Listener::notifyOperationReplaced(mlir::RewriterBase::Listener *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v7[2] = *MEMORY[0x277D85DE8];
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v7, v5, *(a3 + 9));
  return (*(*this + 56))(this, a2, v7[0], v7[1]);
}

uint64_t mlir::DialectInterfaceCollection<mlir::DialectFoldInterface>::DialectInterfaceCollection(void *a1, mlir::MLIRContext *a2)
{
  {
    mlir::DialectInterfaceCollection<mlir::DialectFoldInterface>::DialectInterfaceCollection();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id;
  v6[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectFoldInterface]";
  v6[1] = 76;
  llvm::StringRef::find(v6, "DesiredTypeName = ", 0x12uLL, 0);
  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v4);
  *a1 = &unk_28685BA50;
  return result;
}

const char *llvm::getTypeName<mlir::DialectFoldInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectFoldInterface]";
  v6 = 76;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void sub_256460A60()
{

  JUMPOUT(0x259C63180);
}

BOOL mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v11 = *(a1 + 128);
    v12 = *(a1 + 136);
    while (v12 != v11)
    {
      v13 = *(v12 - 1);
      v12 -= 3;
      if (v13 < 0)
      {
        operator delete(*v12);
      }
    }

    *(a1 + 136) = v11;
    *(a1 + 176) = 0;
  }

  *(a1 + 256) = 1;
  v15 = a1;
  v16[0] = a1 + 264;
  v17[0] = a3;
  v17[1] = a4;
  v16[1] = a1;
  v16[2] = v17;
  v16[3] = &v15;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<std::string>,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<std::string> &,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v16) & 1) == 0;
}

void mlir::Pass::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(void *a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(a1);

  JUMPOUT(0x259C63180);
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::setDefault(void *a1)
{
  v2 = (a1 + 16);
  v3 = a1[16];
  a1[24] = a1[23];
  v4 = a1[17];
  while (v4 != v3)
  {
    v5 = *(v4 - 1);
    v4 -= 3;
    if (v5 < 0)
    {
      operator delete(*v4);
    }
  }

  a1[17] = v3;
  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (v3 >= a1[18])
    {
      v3 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v2, v6 + 8);
    }

    else
    {
      if (*(v6 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v3, *(v6 + 8), *(v6 + 16));
      }

      else
      {
        v8 = *(v6 + 8);
        v3->__r_.__value_.__r.__words[2] = *(v6 + 24);
        *&v3->__r_.__value_.__l.__data_ = v8;
      }

      ++v3;
    }

    a1[17] = v3;
    v6 += 40;
  }
}

void *mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::print(void *result, llvm::raw_ostream *this)
{
  if (result[17] != result[16])
  {
    v3 = result;
    v4 = result[2];
    v5 = result[3];
    result = *(this + 4);
    if (v5 <= *(this + 3) - result)
    {
      if (v5)
      {
        v7 = v5;
        memcpy(result, v4, v5);
        result = (*(this + 4) + v7);
        *(this + 4) = result;
      }

      v6 = this;
    }

    else
    {
      v6 = llvm::raw_ostream::write(this, v4, v5);
      result = *(v6 + 4);
    }

    if (*(v6 + 3) - result > 1uLL)
    {
      *result = 31549;
      *(v6 + 4) += 2;
    }

    else
    {
      result = llvm::raw_ostream::write(v6, "={", 2uLL);
    }

    v8 = v3[16];
    v9 = v3[17];
    if (v8 != v9)
    {
      result = mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, v3 + 208, v3[16]);
      for (i = v8 + 1; i != v9; ++i)
      {
        v11 = *(this + 4);
        if (*(this + 3) == v11)
        {
          llvm::raw_ostream::write(this, ",", 1uLL);
        }

        else
        {
          *v11 = 44;
          ++*(this + 4);
        }

        result = mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, v3 + 208, i);
      }
    }

    v12 = *(this + 4);
    if (*(this + 3) == v12)
    {

      return llvm::raw_ostream::write(this, "}", 1uLL);
    }

    else
    {
      *v12 = 125;
      ++*(this + 4);
    }
  }

  return result;
}

void mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(a1 + 128, *(a2 - 120), *(a2 - 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 256) = 1;
  *(a1 + 256) = *(a2 + 8);
}

void non-virtual thunk tomlir::Pass::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list((a1 - 248));

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(a1 - 120, *(a2 - 120), *(a2 - 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a1 + 10) & 0x8000 | 1;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *a1 = &unk_28685BBF0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = &unk_28689F5B8;
  *(a1 + 216) = &unk_28685BC58;
  *(a1 + 240) = a1 + 216;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(void *a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(a1);

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list((a1 - 248));

  JUMPOUT(0x259C63180);
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, int a2, int a3, int a4, void *__src, size_t __len)
{
  v29 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v9 = *(a1 + 128);
    v10 = *(a1 + 136);
    while (v10 != v9)
    {
      v11 = *(v10 - 1);
      v10 -= 3;
      if (v11 < 0)
      {
        operator delete(*v10);
      }
    }

    *(a1 + 136) = v9;
    *(a1 + 176) = 0;
  }

  if (__src)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_41;
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v31) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + __len) = 0;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    __dst = 0uLL;
    v31 = 0;
  }

  *__p = __dst;
  v28 = v31;
  v13 = *(a1 + 136);
  v12 = *(a1 + 144);
  if (v13 >= v12)
  {
    v16 = *(a1 + 128);
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
    if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 3);
    v19 = 2 * v18;
    if (2 * v18 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    if (v18 >= 0x555555555555555)
    {
      v20 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v20 = v19;
    }

    if (v20)
    {
      if (v20 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v21 = (24 * v17);
    if (SHIBYTE(v28) < 0)
    {
      std::string::__init_copy_ctor_external(v21, __p[0], __p[1]);
    }

    else
    {
      *&v21->__r_.__value_.__l.__data_ = *__p;
      v21->__r_.__value_.__r.__words[2] = v28;
    }

    v15 = v21 + 1;
    v22 = *(a1 + 128);
    v23 = *(a1 + 136) - v22;
    v24 = v21 - v23;
    memcpy(v24, v22, v23);
    *(a1 + 128) = v24;
    *(a1 + 136) = v15;
    *(a1 + 144) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    if (SHIBYTE(v28) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 136), __p[0], __p[1]);
    }

    else
    {
      v14 = *__p;
      *(v13 + 16) = v28;
      *v13 = v14;
    }

    v15 = (v13 + 24);
  }

  *(a1 + 136) = v15;
  *(a1 + 12) = v29;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 184, &v29);
  v25 = *(a1 + 240);
  if (!v25)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_41:
    std::string::__throw_length_error[abi:nn200100]();
  }

  (*(*v25 + 48))(v25, __p);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(void *a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(a1);

  JUMPOUT(0x259C63180);
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

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
    std::string::__throw_length_error[abi:nn200100]();
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

    std::string::__throw_length_error[abi:nn200100]();
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

std::string *std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 8));
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v6 = v5 + 1;
  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  v9 = v5 - v8;
  memcpy(v9, *a1, v8);
  *a1 = v9;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void *llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(void *a1)
{
  *a1 = &unk_28685BBF0;
  v2 = a1 + 27;
  v3 = a1[30];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[23];
    if (v4)
    {
LABEL_5:
      a1[24] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[23];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[19];
  if (v5)
  {
    v6 = a1[20];
    v7 = a1[19];
    if (v6 != v5)
    {
      v8 = v6 - 40;
      v9 = a1[20];
      do
      {
        *(v9 - 40) = &unk_28685B750;
        v9 -= 40;
        if (*(v9 + 31) < 0)
        {
          operator delete(*(v6 - 32));
        }

        v8 -= 40;
        v6 = v9;
      }

      while (v9 != v5);
      v7 = a1[19];
    }

    a1[20] = v5;
    operator delete(v7);
  }

  v10 = a1[16];
  if (v10)
  {
    v11 = a1[17];
    v12 = a1[16];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = a1[16];
    }

    a1[17] = v10;
    operator delete(v12);
  }

  *a1 = &unk_28689F010;
  v14 = a1[12];
  if (v14 != a1[11])
  {
    free(v14);
  }

  v15 = a1[8];
  if (v15 != a1 + 10)
  {
    free(v15);
  }

  return a1;
}

uint64_t mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<std::string>,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<std::string> &,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1} &&)::{lambda(llvm::StringRef)#1}::operator()(uint64_t a1, const void *a2, size_t __len)
{
  if (a2)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v26) = __len;
    if (__len)
    {
      memmove(&__dst, a2, __len);
    }

    *(&__dst + __len) = 0;
    v7 = __dst;
    v6 = v25;
    v5 = HIBYTE(v26);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    __dst = 0;
    v25 = 0;
    v26 = 0;
  }

  *v23 = v26;
  *&v23[3] = *(&v26 + 3);
  v8 = *(a1 + 24);
  v9 = *v8;
  v11 = *(*v8 + 136);
  v10 = *(*v8 + 144);
  if (v11 >= v10)
  {
    v13 = v9[16];
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v13) >> 3);
    if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v13) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      if (v17 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v18 = 24 * v14;
    if (v5 < 0)
    {
      std::string::__init_copy_ctor_external(v18, v7, v6);
    }

    else
    {
      *v18 = v7;
      *(v18 + 8) = v6;
      *(v18 + 16) = *v23;
      *(v18 + 19) = *&v23[3];
      *(v18 + 23) = v5;
    }

    v12 = v18 + 24;
    v19 = v9[16];
    v20 = v9[17] - v19;
    v21 = (v18 - v20);
    memcpy(v21, v19, v20);
    v9[16] = v21;
    v9[17] = v12;
    v9[18] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    if (v5 < 0)
    {
      std::string::__init_copy_ctor_external(*(*v8 + 136), v7, v6);
    }

    else
    {
      *v11 = v7;
      *(v11 + 8) = v6;
      *(v11 + 16) = *v23;
      *(v11 + 19) = *&v23[3];
      *(v11 + 23) = v5;
    }

    v12 = v11 + 24;
  }

  v9[17] = v12;
  if (v5 < 0)
  {
    operator delete(v7);
  }

  return 1;
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v23 = 2 * v22;
      if (2 * v22 <= a4)
      {
        v23 = a4;
      }

      if (v22 >= 0x555555555555555)
      {
        v24 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v24 = v23;
      }

      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v5++);
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v21 = *(v13 - 1);
      v13 -= 3;
      if (v21 < 0)
      {
        operator delete(*v13);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v15 = (__str + v14);
    if (v13 != v8)
    {
      do
      {
        std::string::operator=(v8++, v5++);
        v14 -= 24;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v16 = v13;
    if (v15 != a3)
    {
      v17 = 0;
      do
      {
        v18 = &v15[v17 / 0x18];
        v19 = &v13[v17 / 8];
        if (SHIBYTE(v15[v17 / 0x18].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v19, *v18, *(v18 + 1));
        }

        else
        {
          v20 = *v18;
          v19->__r_.__value_.__r.__words[2] = *(v18 + 2);
          *&v19->__r_.__value_.__l.__data_ = v20;
        }

        v17 += 24;
      }

      while (&v15[v17 / 0x18] != a3);
      v16 = &v13[v17 / 8];
    }

    *(a1 + 8) = v16;
  }
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<unsigned long long>::parse(a1 + 160, a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 192);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 152) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v6 = *(a1 + 144);
    v8 = *(a1 + 152);
    v7[0] = &unk_28685BD08;
    v7[1] = v6;
    llvm::cl::parser<unsigned long long>::printOptionDiff((a1 + 160), a1, v5, v7, a2);
  }
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::setDefault(uint64_t result)
{
  if (*(result + 152) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

void *llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::~opt(void *a1)
{
  *a1 = &unk_28685BCA0;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::~opt(void *a1)
{
  *a1 = &unk_28685BCA0;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RewriterBase::replaceAllUsesWith(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v20 = 0;
  v21 = a4;
  v22 = 0;
  if (a3 && a5)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v11 = mlir::ValueRange::dereference_iterator(&v19, v8);
      result = mlir::ValueRange::dereference_iterator(&v21, v22);
      v12 = *v11;
      if (*v11)
      {
        v13 = result;
        do
        {
          v14 = *v12;
          v15 = v12[2];
          (*(*v7 + 40))(v7, v15);
          v16 = v12[1];
          if (v16)
          {
            v17 = *v12;
            *v16 = *v12;
            if (v17)
            {
              v17[1] = v12[1];
            }
          }

          v12[3] = v13;
          v18 = *v13;
          *v12 = *v13;
          v12[1] = v13;
          if (v18)
          {
            *(v18 + 8) = v12;
          }

          *v13 = v12;
          result = (*(*v7 + 48))(v7, v15);
          v12 = v14;
        }

        while (v14);
      }

      v8 = v20 + 1;
      v9 = v22 + 1;
      v20 = v8;
      ++v22;
    }

    while (v8 != a3 && v9 != a5);
  }

  return result;
}

void *std::deque<mlir::Operation *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (!(v10 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11[0] = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<mlir::Operation **>::emplace_back<mlir::Operation **&>(a1, v11);
}

void *std::__split_buffer<mlir::Operation **>::emplace_back<mlir::Operation **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<mlir::Operation **>::emplace_front<mlir::Operation **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
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

size_t **llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer(a3 + 9, 8uLL);
  v12 = buffer;
  v13 = (buffer + 1);
  if (a3)
  {
    memcpy(buffer + 1, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 == a2 + 16)
    {
      v5 = *(a2 + 8);
      v6 = *(a1 + 8);
      if (v6 >= v5)
      {
        v16 = *a1;
        if (v5)
        {
          v17 = *(a2 + 8);
          v18 = &v4[8 * v5];
          do
          {
            v19 = *v4;
            *v4 = 0;
            v20 = *v16;
            *v16 = v19;
            if (v20)
            {
              v21 = *v20;
              v22 = *(v20 + 2);
              if (v22)
              {
                v23 = 8 * v22;
                v24 = v21 - 8;
                do
                {
                  v25 = *&v24[v23];
                  *&v24[v23] = 0;
                  if (v25)
                  {
                    (*(*v25 + 8))(v25);
                  }

                  v23 -= 8;
                }

                while (v23);
                v21 = *v20;
              }

              if (v21 != (v20 + 2))
              {
                free(v21);
              }

              MEMORY[0x259C63180](v20, 0x1080C407559D7D1);
            }

            v4 += 8;
            v16 += 8;
          }

          while (v4 != v18);
          v26 = *a1;
          v6 = *(a1 + 8);
        }

        else
        {
          v17 = 0;
          v26 = *a1;
        }

        v63 = &v26[8 * v6];
        while (v63 != v16)
        {
          v65 = *(v63 - 1);
          v63 -= 8;
          v64 = v65;
          *v63 = 0;
          if (v65)
          {
            v66 = *v64;
            v67 = *(v64 + 2);
            if (v67)
            {
              v68 = 8 * v67;
              v69 = v66 - 8;
              do
              {
                v70 = *&v69[v68];
                *&v69[v68] = 0;
                if (v70)
                {
                  (*(*v70 + 8))(v70);
                }

                v68 -= 8;
              }

              while (v68);
              v66 = *v64;
            }

            if (v66 != (v64 + 2))
            {
              free(v66);
            }

            MEMORY[0x259C63180](v64, 0x1080C407559D7D1);
          }
        }

        *(a1 + 8) = v17;
        v71 = *(a2 + 8);
        if (v71)
        {
          v72 = *a2;
          v73 = (*a2 + 8 * v71);
          do
          {
            v75 = *(v73 - 1);
            v73 -= 8;
            v74 = v75;
            *v73 = 0;
            if (v75)
            {
              v76 = *v74;
              v77 = *(v74 + 2);
              if (v77)
              {
                v78 = 8 * v77;
                v79 = v76 - 8;
                do
                {
                  v80 = *&v79[v78];
                  *&v79[v78] = 0;
                  if (v80)
                  {
                    (*(*v80 + 8))(v80);
                  }

                  v78 -= 8;
                }

                while (v78);
                v76 = *v74;
              }

              if (v76 != (v74 + 2))
              {
                free(v76);
              }

              MEMORY[0x259C63180](v74, 0x1080C407559D7D1);
            }
          }

          while (v73 != v72);
        }
      }

      else
      {
        v82 = *(a2 + 8);
        if (*(a1 + 12) < v5)
        {
          if (v6)
          {
            v7 = *a1;
            v8 = (*a1 + 8 * v6);
            do
            {
              v10 = *(v8 - 1);
              v8 -= 8;
              v9 = v10;
              *v8 = 0;
              if (v10)
              {
                v11 = *v9;
                v12 = *(v9 + 2);
                if (v12)
                {
                  v13 = 8 * v12;
                  v14 = v11 - 8;
                  do
                  {
                    v15 = *&v14[v13];
                    *&v14[v13] = 0;
                    if (v15)
                    {
                      (*(*v15 + 8))(v15);
                    }

                    v13 -= 8;
                  }

                  while (v13);
                  v11 = *v9;
                }

                if (v11 != (v9 + 2))
                {
                  free(v11);
                }

                MEMORY[0x259C63180](v9, 0x1080C407559D7D1);
              }
            }

            while (v8 != v7);
          }

          *(a1 + 8) = 0;
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::PDLPatternConfigSet>,false>::grow();
        }

        if (v6)
        {
          v27 = &v4[8 * v6];
          v28 = *a1;
          do
          {
            v29 = *v4;
            *v4 = 0;
            v30 = *v28;
            *v28 = v29;
            if (v30)
            {
              v31 = *v30;
              v32 = *(v30 + 2);
              if (v32)
              {
                v33 = 8 * v32;
                v34 = v31 - 8;
                do
                {
                  v35 = *&v34[v33];
                  *&v34[v33] = 0;
                  if (v35)
                  {
                    (*(*v35 + 8))(v35);
                  }

                  v33 -= 8;
                }

                while (v33);
                v31 = *v30;
              }

              if (v31 != (v30 + 2))
              {
                free(v31);
              }

              MEMORY[0x259C63180](v30, 0x1080C407559D7D1);
            }

            v4 += 8;
            v28 += 8;
          }

          while (v4 != v27);
        }

        else
        {
          v6 = 0;
        }

        v36 = *a2;
        v37 = *(a2 + 8);
        if (v6 != v37)
        {
          v38 = *a1;
          v39 = 8 * v6;
          v40 = (*a1 + 8 * v6);
          v41 = &v36[8 * v6];
          v42 = 8 * v37;
          v43 = 8 * v37 - 8 * v6 - 8;
          if (v43 < 0x78 || v41 < &v38[v42] && v40 < &v36[v42])
          {
            goto LABEL_55;
          }

          v44 = (v43 >> 3) + 1;
          v45 = 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
          v40 += v45;
          v41 += v45;
          v46 = v39 + 16;
          v47 = &v36[v39 + 16];
          v48 = &v38[v46];
          v49 = v44 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v50 = *(v47 - 1);
            v51 = *v47;
            *(v47 - 1) = 0uLL;
            *v47 = 0uLL;
            *(v48 - 1) = v50;
            *v48 = v51;
            v47 += 32;
            v48 += 32;
            v49 -= 4;
          }

          while (v49);
          if (v44 != (v44 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_55:
            v52 = &v36[8 * v37];
            do
            {
              v53 = *v41;
              *v41 = 0;
              v41 += 8;
              *v40 = v53;
              v40 += 8;
            }

            while (v41 != v52);
          }
        }

        *(a1 + 8) = v82;
        v54 = *(a2 + 8);
        if (v54)
        {
          v55 = &v36[8 * v54];
          do
          {
            v57 = *(v55 - 1);
            v55 -= 8;
            v56 = v57;
            *v55 = 0;
            if (v57)
            {
              v58 = *v56;
              v59 = *(v56 + 2);
              if (v59)
              {
                v60 = 8 * v59;
                v61 = v58 - 8;
                do
                {
                  v62 = *&v61[v60];
                  *&v61[v60] = 0;
                  if (v62)
                  {
                    (*(*v62 + 8))(v62);
                  }

                  v60 -= 8;
                }

                while (v60);
                v58 = *v56;
              }

              if (v58 != (v56 + 2))
              {
                free(v58);
              }

              MEMORY[0x259C63180](v56, 0x1080C407559D7D1);
            }
          }

          while (v55 != v36);
        }
      }

      *(a2 + 8) = 0;
    }

    else
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::assignRemote(a1, a2);
    }
  }

  return a1;
}

double llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::assignRemote(char **a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[8 * v5];
    do
    {
      v8 = *(v6 - 1);
      v6 -= 8;
      v7 = v8;
      *v6 = 0;
      if (v8)
      {
        v9 = *v7;
        v10 = *(v7 + 2);
        if (v10)
        {
          v11 = 8 * v10;
          v12 = v9 - 8;
          do
          {
            v13 = *&v12[v11];
            *&v12[v11] = 0;
            if (v13)
            {
              (*(*v13 + 8))(v13);
            }

            v11 -= 8;
          }

          while (v11);
          v9 = *v7;
        }

        if (v9 != (v7 + 2))
        {
          free(v9);
        }

        MEMORY[0x259C63180](v7, 0x1080C407559D7D1);
      }
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (*a1 + 16 * (v12 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v9)
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v13 = *(a1 + 8);
  if (4 * v13 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v13 = *(v16 + 8);
    v7 = v17;
    goto LABEL_15;
  }

  if (v2 + ~v13 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v13 + 1;
  if (*v7 != -4096)
  {
    --*(a1 + 12);
  }

  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void *llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v8 = &v4[2 * v7];
      v9 = v4 + 2;
      v10 = v7;
      do
      {
        *(v9 - 2) = -4096;
        *v9 = -4096;
        v9 += 4;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *result;
    }

    v11 = &v4[2 * v3];
    do
    {
      *v8 = -4096;
      v8 += 2;
    }

    while (v8 != v11);
  }

LABEL_10:
  if (a2 != a3)
  {
    v12 = 0;
    v13 = v3 - 1;
    do
    {
      v15 = *a2;
      if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
        v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v16 >> 47) ^ v16);
        v18 = (-348639895 * ((v17 >> 47) ^ v17)) & v13;
        v14 = (*result + 16 * v18);
        v19 = *v14;
        if (v15 != *v14)
        {
          v20 = 0;
          v21 = 1;
          while (v19 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v19 == -8192;
            }

            if (v22)
            {
              v20 = v14;
            }

            v23 = v18 + v21++;
            v18 = v23 & v13;
            v14 = (*result + 16 * (v23 & v13));
            v19 = *v14;
            if (v15 == *v14)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v14 = v20;
          }
        }

LABEL_14:
        *v14 = v15;
        v14[1] = a2[1];
        *(result + 8) = ++v12;
      }

      a2 += 2;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = HIDWORD(*a2);
    v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
    v8 = v4 - 1;
    v9 = v6 & (v4 - 1);
    v10 = (*result + 8 * v9);
    v11 = *v10;
    if (*a2 == *v10)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_10;
    }

    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = v10;
  v13 = *(result + 8);
  if (4 * v13 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v13 - *(result + 12) <= v4 >> 3)
  {
LABEL_24:
    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v13 = *(v18 + 8);
    v10 = v20;
  }

  *(result + 8) = v13 + 1;
  if (*v10 != -4096)
  {
    --*(result + 12);
  }

  *v10 = *a2;
  v5 = *result;
  v4 = *(result + 16);
  v12 = 1;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

int64x2_t *llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (8 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v13 = result;
    if (v12 < 3)
    {
      goto LABEL_13;
    }

    v14 = v12 + 1;
    v13 = &result->i8[8 * (v14 & 0x3FFFFFFFFFFFFFFCLL)];
    v15 = result + 1;
    v16 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v15[-1] = v16;
      *v15 = v16;
      v15 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_13:
      v18 = &result->i8[8 * v11];
      do
      {
        *v13 = -4096;
        v13 += 8;
      }

      while (v13 != v18);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v6 = *result;
    if (v5 < 3)
    {
      goto LABEL_6;
    }

    v7 = v5 + 1;
    v6 = (v4 + 8 * (v7 & 0x3FFFFFFFFFFFFFFCLL));
    v8 = v4 + 1;
    v9 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v10 = v7 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v8[-1] = v9;
      *v8 = v9;
      v8 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v7 != (v7 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_6:
      v11 = (v4 + 8 * v3);
      do
      {
        v6->i64[0] = -4096;
        v6 = (v6 + 8);
      }

      while (v6 != v11);
    }
  }

  if (a2 != a3)
  {
    v12 = 0;
    v13 = v3 - 1;
    do
    {
      v15 = *a2;
      if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
        v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v16 >> 47) ^ v16);
        v18 = (-348639895 * ((v17 >> 47) ^ v17)) & v13;
        v14 = (*result + 8 * v18);
        v19 = *v14;
        if (v15 != *v14)
        {
          v20 = 0;
          v21 = 1;
          while (v19 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v19 == -8192;
            }

            if (v22)
            {
              v20 = v14;
            }

            v23 = v18 + v21++;
            v18 = v23 & v13;
            v14 = (*result + 8 * (v23 & v13));
            v19 = *v14;
            if (v15 == *v14)
            {
              goto LABEL_12;
            }
          }

          if (v20)
          {
            v14 = v20;
          }
        }

LABEL_12:
        *v14 = v15;
        *(result + 8) = ++v12;
      }

      ++a2;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t mlir::DialectInterfaceCollection<mlir::DialectInlinerInterface>::DialectInterfaceCollection(void *a1, mlir::MLIRContext *a2)
{
  {
    mlir::DialectInterfaceCollection<mlir::DialectInlinerInterface>::DialectInterfaceCollection();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v6[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectInlinerInterface]";
  v6[1] = 79;
  llvm::StringRef::find(v6, "DesiredTypeName = ", 0x12uLL, 0);
  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v4);
  *a1 = &unk_28685BD70;
  return result;
}

const char *llvm::getTypeName<mlir::DialectInlinerInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectInlinerInterface]";
  v6 = 79;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void sub_256463E48()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::CallableOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallableOpInterface]";
  v6 = 75;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t mlir::impl::CanonicalizerBase<anonymous namespace::Canonicalizer>::CanonicalizerBase(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *a1 = &unk_28685BE48;
  *&v6 = "Seed the worklist in general top-down order";
  *(&v6 + 1) = 43;
  *&v5 = &v3;
  LOBYTE(v3) = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 344, (a1 + 152), "top-down", 8, &v6, &v5);
  *(a1 + 344) = &unk_28685B320;
  *(a1 + 536) = &unk_28685B3A0;
  *&v5 = "Perform control flow optimizations to the region tree";
  *(&v5 + 1) = 53;
  v4 = 1;
  *&v3 = &v4;
  v7[0] = "disabled";
  v7[1] = 8;
  v8 = 0;
  v9 = "Don't run any control-flow simplification.";
  v10 = 42;
  v11 = "normal";
  v12 = 6;
  v13 = 1;
  v14 = "Perform simple control-flow simplifications (e.g. dead args elimination).";
  v15 = 73;
  v16 = "aggressive";
  v17 = 10;
  v18 = 2;
  v19 = "Perform aggressive control-flow simplification (e.g. block merging).";
  v20 = 68;
  *&v6 = v7;
  *(&v6 + 1) = 0x400000003;
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(a1 + 552, (a1 + 152), "region-simplify", 15, &v5, &v3, &v6);
  *(a1 + 552) = &unk_28685BEC8;
  *(a1 + 1152) = &unk_28685BF48;
  if (v6 != v7)
  {
    free(v6);
  }

  *&v6 = "Max. iterations between applying patterns / simplifying regions";
  *(&v6 + 1) = 63;
  LODWORD(v3) = 10;
  *&v5 = &v3;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 1168, (a1 + 152), "max-iterations", 14, &v6, &v5);
  *(a1 + 1168) = &unk_28685E240;
  *(a1 + 1368) = &unk_28685E2C0;
  *&v6 = "Max. number of pattern rewrites within an iteration";
  *(&v6 + 1) = 51;
  LODWORD(v3) = -1;
  *&v5 = &v3;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 1384, (a1 + 152), "max-num-rewrites", 16, &v6, &v5);
  *(a1 + 1384) = &unk_28685E240;
  *(a1 + 1584) = &unk_28685E2C0;
  *&v6 = "Test only: Fail pass on non-convergence to detect cyclic pattern";
  *(&v6 + 1) = 64;
  LOBYTE(v3) = 0;
  *&v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1600, (a1 + 152), "test-convergence", 16, &v6, &v5);
  *(a1 + 1600) = &unk_28685B320;
  *(a1 + 1792) = &unk_28685B3A0;
  *&v3 = "Labels of patterns that should be filtered out during application";
  *(&v3 + 1) = 65;
  *&v6 = "disable-patterns";
  *(&v6 + 1) = 16;
  v5 = (a1 + 152);
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1 + 1808, &v6, &v5, &v3);
  *(a1 + 2064) = 0;
  *(a1 + 1808) = &unk_28685BB30;
  *(a1 + 2056) = &unk_28685BBB0;
  *(a1 + 2072) = &unk_28689F5B8;
  *&v5 = a1 + 2056;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 312, &v5);
  *(a1 + 1808) = &unk_28685BA70;
  *(a1 + 2056) = &unk_28685BAF0;
  *&v3 = "Labels of patterns that should be used during application, all other patterns are filtered out";
  *(&v3 + 1) = 94;
  *&v6 = "enable-patterns";
  *(&v6 + 1) = 15;
  v5 = (a1 + 152);
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1 + 2080, &v6, &v5, &v3);
  *(a1 + 2336) = 0;
  *(a1 + 2080) = &unk_28685BB30;
  *(a1 + 2328) = &unk_28685BBB0;
  *(a1 + 2344) = &unk_28689F5B8;
  *&v5 = a1 + 2328;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 312, &v5);
  *(a1 + 2080) = &unk_28685BA70;
  *(a1 + 2328) = &unk_28685BAF0;
  return a1;
}