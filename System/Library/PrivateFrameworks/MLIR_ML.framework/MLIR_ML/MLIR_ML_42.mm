void *llvm::cl::parser<anonymous namespace::PassArgData>::~parser(void *result)
{
  *result = &unk_286868740;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<anonymous namespace::PassArgData>::~parser(void *a1)
{
  *a1 = &unk_286868740;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir8PassInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = *(*a1 + 8);
  }

  v5 = *(v2 + 23);
  if (v5 >= 0)
  {
    v6 = *(v2 + 23);
  }

  else
  {
    v6 = *(v2 + 8);
  }

  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = v5 >= 0 ? *a2 : *v2;
    v9 = v3 >= 0 ? *a1 : **a1;
    v10 = memcmp(v9, v8, v7);
    if (v10)
    {
      return (v10 >> 31) | 1u;
    }
  }

  if (v4 < v6)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v4 == v6)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir16PassPipelineInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = *(*a1 + 8);
  }

  v5 = *(v2 + 23);
  if (v5 >= 0)
  {
    v6 = *(v2 + 23);
  }

  else
  {
    v6 = *(v2 + 8);
  }

  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = v5 >= 0 ? *a2 : *v2;
    v9 = v3 >= 0 ? *a1 : **a1;
    v10 = memcmp(v9, v8, v7);
    if (v10)
    {
      return (v10 >> 31) | 1u;
    }
  }

  if (v4 < v6)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v4 == v6)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t std::__function::__func<llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::{lambda(anonymous namespace::PassArgData const&)#1},std::allocator<llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::{lambda(anonymous namespace::PassArgData const&)#1}>,void ()(anonymous namespace::PassArgData const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4llvm2cl4listIN12_GLOBAL__N_111PassArgDataEbNS2_14PassNameParserEEUlRKS3_E_E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4llvm2cl4listIN12_GLOBAL__N_111PassArgDataEbNS2_14PassNameParserEEUlRKS3_E_E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4llvm2cl4listIN12_GLOBAL__N_111PassArgDataEbNS2_14PassNameParserEEUlRKS3_E_E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4llvm2cl4listIN12_GLOBAL__N_111PassArgDataEbNS2_14PassNameParserEEUlRKS3_E_E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::cl::list_storage<anonymous namespace::PassArgData,BOOL>::addValue<anonymous namespace::PassArgData>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t llvm::cl::alias::alias<llvm::StringRef,llvm::cl::desc,llvm::cl::aliasopt>(uint64_t a1, uint64_t *a2, _OWORD *a3, uint64_t *a4)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a1 + 10) & 0x8000 | 0x20;
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
  *a1 = &unk_28689F9E8;
  *(a1 + 128) = 0;
  v10 = llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  *(a1 + 32) = *a3;
  v11 = *a4;
  if (*(a1 + 128))
  {
    v14 = "cl::alias must only have one cl::aliasopt(...) specified!";
    v15 = 259;
    v12 = llvm::errs(v10);
    llvm::cl::Option::error(a1, &v14, 0, 0, v12);
  }

  *(a1 + 128) = v11;
  llvm::cl::alias::done(a1);
  return a1;
}

atomic_ullong llvm::cl::alias::done(llvm::cl::alias *this)
{
  v1 = this;
  if (*(this + 3))
  {
    if (*(this + 16))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10[0] = "cl::alias must have argument name specified!";
    v11 = 259;
    v5 = llvm::errs(this);
    this = llvm::cl::Option::error(v1, v10, 0, 0, v5);
    if (*(v1 + 16))
    {
LABEL_3:
      if (*(v1 + 27) == *(v1 + 28))
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v10[0] = "cl::alias must have an cl::aliasopt(option) specified!";
  v11 = 259;
  v6 = llvm::errs(this);
  this = llvm::cl::Option::error(v1, v10, 0, 0, v6);
  if (*(v1 + 27) == *(v1 + 28))
  {
LABEL_4:
    v2 = *(v1 + 16);
    if (v2 == v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  v10[0] = "cl::alias must not have cl::sub(), aliased option's cl::sub() will be used!";
  v11 = 259;
  v7 = llvm::errs(this);
  llvm::cl::Option::error(v1, v10, 0, 0, v7);
  v2 = *(v1 + 16);
  if (v2 != v1)
  {
LABEL_5:
    llvm::SmallPtrSetImplBase::CopyFrom((v1 + 88), (v2 + 88));
    v2 = *(v1 + 16);
  }

LABEL_6:
  if (v2 != v1)
  {
    v3 = *(v2 + 72);
    v4 = *(v1 + 18);
    if (v4 >= v3)
    {
      if (v3)
      {
        memmove(*(v1 + 8), *(v2 + 64), 8 * v3);
      }

      goto LABEL_19;
    }

    if (*(v1 + 19) < v3)
    {
      *(v1 + 18) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v4)
    {
      memmove(*(v1 + 8), *(v2 + 64), 8 * v4);
      v8 = *(v2 + 72) - v4;
      if (!v8)
      {
LABEL_19:
        *(v1 + 18) = v3;
        return llvm::cl::Option::addArgument(v1);
      }
    }

    else
    {
      v4 = 0;
      v8 = *(v2 + 72);
      if (!*(v2 + 72))
      {
        goto LABEL_19;
      }
    }

    memcpy((*(v1 + 8) + 8 * v4), (*(v2 + 64) + 8 * v4), 8 * v8);
    goto LABEL_19;
  }

  return llvm::cl::Option::addArgument(v1);
}

mlir::Pass::Statistic *mlir::Pass::Statistic::Statistic(mlir::Pass::Statistic *this, mlir::Pass *a2, const char *a3, const char *a4)
{
  v6 = this;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a2 + 128, &v6);
  return this;
}

{
  v6 = this;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a2 + 128, &v6);
  return this;
}

void mlir::OpPassManager::mergeStatisticsInto(mlir::OpPassManager *this, mlir::OpPassManager *a2)
{
  v4 = mlir::OpPassManager::begin(this);
  v5 = mlir::OpPassManager::end(this);
  v6 = mlir::OpPassManager::begin(a2);
  v7 = mlir::OpPassManager::end(a2);
  if (v4 != v5)
  {
    v8 = v7;
    if (v6 != v7)
    {
      while (1)
      {
        v9 = *v4;
        v10 = *v6;
        v11 = *(*v4 + 8);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
LABEL_5:
            v12 = *(v9 + 352);
            v13 = *(v10 + 352);
            if (v12)
            {
              v14 = v13 == 0;
            }

            else
            {
              v14 = 1;
            }

            if (!v14)
            {
              v15 = *(v9 + 344);
              v16 = *(v10 + 344);
              v17 = 8 * v13 - 8;
              v18 = 8 * v12 - 8;
              do
              {
                mlir::OpPassManager::mergeStatisticsInto(v15, v16);
                if (!v18)
                {
                  break;
                }

                v15 = (v15 + 8);
                v16 = (v16 + 8);
                v19 = v17;
                v17 -= 8;
                v18 -= 8;
              }

              while (v19);
            }
          }
        }

        v4 += 8;
        if (v4 != v5 && ++v6 != v8)
        {
          continue;
        }

        return;
      }
    }
  }
}

void prepareStatistics(mlir::OpPassManager *a1)
{
  v2 = mlir::OpPassManager::begin(a1);
  v3 = mlir::OpPassManager::end(a1);
  if (v2 != v3)
  {
    v4 = v3;
    do
    {
      v5 = *v2;
      v6 = *(*v2 + 8);
      {
        if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
LABEL_7:
          v7 = *(v5 + 344);
          v8 = *(v5 + 352);
          v9 = *(v5 + 376);
          if (v9)
          {
            v10 = *(v5 + 368);
            v11 = v10 + 24 * v9;
            do
            {
              v12 = *(v10 + 8);
              if (v12)
              {
                v13 = 0;
                v14 = 8 * v12;
                do
                {
                  prepareStatistics((*v10 + v13));
                  mlir::OpPassManager::mergeStatisticsInto((*v10 + v13), (v7 + v13));
                  v13 += 8;
                }

                while (v14 != v13);
              }

              v10 += 24;
            }

            while (v10 != v11);
          }

          if (v8)
          {
            v15 = 8 * v8;
            do
            {
              prepareStatistics(v7);
              v7 = (v7 + 8);
              v15 -= 8;
            }

            while (v15);
          }
        }
      }

      v2 += 8;
    }

    while (v2 != v4);
  }
}

uint64_t mlir::PassManager::enableStatistics(uint64_t result, int a2)
{
  *(result + 16) = a2;
  *(result + 20) = 1;
  return result;
}

uint64_t std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286868870;
  a2[1] = v2;
  return result;
}

void std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 8);
  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return;
    }
  }

  else
  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return;
    }
  }

  v5 = *(v3 + 352);
  if (v5)
  {
    v6 = *(v3 + 344);
    v7 = (v6 + 8 * v5);
    while (1)
    {
      v8 = mlir::OpPassManager::begin(v6);
      v9 = mlir::OpPassManager::end(v6);
      if (v8 != v9)
      {
        break;
      }

LABEL_7:
      v6 = (v6 + 8);
      if (v6 == v7)
      {
        return;
      }
    }

    v10 = v9;
    while (1)
    {
      v11 = *(a1 + 8);
      v14 = *v8;
      v12 = *(v11 + 24);
      if (!v12)
      {
        break;
      }

      (*(*v12 + 48))(v12, &v14);
      if (++v8 == v10)
      {
        goto LABEL_7;
      }
    }

    v13 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::target(v13);
  }
}

uint64_t std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void mlir::PassManager::enableTiming(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }
}

mlir::TimingManager *mlir::PassManager::enableTiming(uint64_t a1, mlir::TimingManager **a2)
{
  result = mlir::TimingManager::getRootTimer(*a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void anonymous namespace::PassTiming::~PassTiming(_anonymous_namespace_::PassTiming *this)
{
  *this = &unk_286868900;
  v2 = *(this + 18);
  v3 = *(this + 7);
  if (v2)
  {
    v4 = v3 + 88 * v2;
    while (1)
    {
      if (*v3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = *(v3 + 8);
        v6 = *(v3 + 16);
        if (v6)
        {
          v7 = 16 * v6;
          v8 = &v5[v7 - 16];
          v9 = -v7;
          do
          {
            if (*v8)
            {
              (*(**v8 + 32))(*v8, *(v8 + 1));
            }

            *v8 = 0;
            *(v8 + 1) = 0;
            v8 -= 16;
            v9 += 16;
          }

          while (v9);
          v5 = *(v3 + 8);
        }

        if (v5 != (v3 + 24))
        {
          free(v5);
        }
      }

      v3 += 88;
      if (v3 == v4)
      {
        llvm::deallocate_buffer(*(this + 7), (88 * *(this + 18)));
      }
    }
  }

  llvm::deallocate_buffer(*(this + 7), 0);
}

{
}

void sub_25666C7D8()
{
  if (!*(v0 + 40))
  {
    JUMPOUT(0x25666C754);
  }

  JUMPOUT(0x25666C72CLL);
}

void sub_25666C7F8()
{

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::PassTiming::runBeforePipeline(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  threadid = llvm::get_threadid(a1);
  v8 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &threadid);
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  if (!v10)
  {
LABEL_14:
    v14 = (v9 + 24 * v10);
    goto LABEL_15;
  }

  v11 = a4[1];
  v12 = 0xBF58476D1CE4E5B9 * ((v11 >> 4) ^ (v11 >> 9) | ((((0xBF58476D1CE4E5B9 * *a4) >> 31) ^ (484763065 * *a4)) << 32));
  v13 = (v10 - 1) & ((v12 >> 31) ^ v12);
  v14 = (v9 + 24 * v13);
  v16 = *v14;
  v15 = v14[1];
  if (*a4 != *v14 || v11 != v15)
  {
    v18 = 1;
    while (v16 != -1 || v15 != -4096)
    {
      v19 = v13 + v18++;
      v13 = v19 & (v10 - 1);
      v14 = (v9 + 24 * v13);
      v16 = *v14;
      v15 = v14[1];
      if (*a4 == *v14 && v11 == v15)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  if (v14 == (v9 + 24 * v10))
  {
    v21 = *(a1 + 80);
    v30 = a2;
    v31 = a3;
    v22 = *v21;
    if (*v21)
    {
LABEL_17:
      if (a3)
      {
        v23 = a2;
      }

      else
      {
        v23 = 0;
      }

      *&v28 = v22;
      *(&v28 + 1) = v24;
      (*(*v22 + 24))(v22, v24);
      v25 = *(v8 + 2);
      v26 = *v8;
      if (v25 >= *(v8 + 3))
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v21 = (*llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, a4) + 16 * *(v14 + 4));
    v30 = a2;
    v31 = a3;
    v22 = *v21;
    if (*v21)
    {
      goto LABEL_17;
    }
  }

  v28 = 0uLL;
  v25 = *(v8 + 2);
  v26 = *v8;
  if (v25 >= *(v8 + 3))
  {
LABEL_27:
    if (v26 <= &v28 && v26 + 16 * v25 > &v28)
    {
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow();
  }

LABEL_24:
  *(v26 + 16 * *(v8 + 2)) = v28;
  v28 = 0uLL;
  ++*(v8 + 2);
  result = v28;
  if (v28)
  {
    return (*(*v28 + 32))(v28, *(&v28 + 1));
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterPipeline(llvm *a1)
{
  threadid = llvm::get_threadid(a1);
  v2 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &threadid);
  v3 = *(v2 + 2) - 1;
  *(v2 + 2) = v3;
  v4 = (*v2 + 16 * v3);
  result = *v4;
  if (*v4)
  {
    result = (*(*result + 32))(result, v4[1]);
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t anonymous namespace::PassTiming::runBeforePass(_anonymous_namespace_::PassTiming *this, mlir::Pass *a2, mlir::Operation *a3)
{
  threadid = llvm::get_threadid(this);
  v5 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](this + 56, &threadid);
  v6 = v5;
  v7 = *(v5 + 2);
  if (v7)
  {
    v8 = (*v5 + 16 * v7 - 16);
    v9 = *(a2 + 1);
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(this + 10);
    v9 = *(a2 + 1);
    {
LABEL_3:
      if (v9 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }

LABEL_12:
      v16 = *(v6 + 2);
      *&v23 = threadid;
      *(&v23 + 1) = a2;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::operator[](this + 8, &v23) = v16;
      v17 = *(a2 + 42);
      v25 = a2;
      v18 = *v8;
      if (*v8)
      {
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = a2;
        }

        *&v23 = v18;
        *(&v23 + 1) = v20;
        (*(*v18 + 24))(v18, v20);
        if (*(a2 + 88) < 2u)
        {
          (*(*v18 + 48))(v18, v20);
        }

        v14 = *(v6 + 2);
        v15 = *v6;
        if (v14 < *(v6 + 3))
        {
          goto LABEL_21;
        }

LABEL_24:
        if (v15 <= &v23 && v15 + 16 * v14 > &v23)
        {
          llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow();
        }

        llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow();
      }

LABEL_20:
      v23 = 0uLL;
      v14 = *(v6 + 2);
      v15 = *v6;
      if (v14 < *(v6 + 3))
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }
  }

  v22 = v9;
  if (v22 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = *(a2 + 42);
  v25 = a2;
  v11 = *v8;
  if (!*v8)
  {
    goto LABEL_20;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = a2;
  }

  *&v23 = v11;
  *(&v23 + 1) = v13;
  (*(*v11 + 24))(v11, v13);
  v14 = *(v6 + 2);
  v15 = *v6;
  if (v14 >= *(v6 + 3))
  {
    goto LABEL_24;
  }

LABEL_21:
  *(v15 + 16 * *(v6 + 2)) = v23;
  v23 = 0uLL;
  ++*(v6 + 2);
  result = v23;
  if (v23)
  {
    return (*(*v23 + 32))(v23, *(&v23 + 1));
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterPass(int32x2_t *this, mlir::Pass *a2, mlir::Operation *a3)
{
  threadid = llvm::get_threadid(this);
  v5 = *(a2 + 1);
  {
    if (v5 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = v5;
    if (v22 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_10;
    }
  }

  v6 = this[3].i32[0];
  if (v6)
  {
    v7 = this[1];
    v8 = 0xBF58476D1CE4E5B9 * ((a2 >> 4) ^ (a2 >> 9) | ((((0xBF58476D1CE4E5B9 * threadid) >> 31) ^ (484763065 * threadid)) << 32));
    v9 = v6 - 1;
    v10 = v9 & ((v8 >> 31) ^ v8);
    v11 = (*&v7 + 24 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (threadid == *v11 && v12 == a2)
    {
LABEL_9:
      *v11 = xmmword_257372FC0;
      this[2] = vadd_s32(this[2], 0x1FFFFFFFFLL);
    }

    else
    {
      v19 = 1;
      while (v13 != -1 || v12 != -4096)
      {
        v20 = v10 + v19++;
        v10 = v20 & v9;
        v11 = (*&v7 + 24 * v10);
        v13 = *v11;
        v12 = v11[1];
        if (threadid == *v11 && v12 == a2)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
  v15 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](&this[7], &threadid);
  v16 = *(v15 + 2) - 1;
  *(v15 + 2) = v16;
  v17 = (*v15 + 16 * v16);
  result = *v17;
  if (*v17)
  {
    result = (*(*result + 32))(result, v17[1]);
  }

  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t anonymous namespace::PassTiming::runBeforeAnalysis(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  threadid = llvm::get_threadid(a1);
  v8 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &threadid);
  v9 = v8;
  v10 = *(v8 + 2);
  if (v10)
  {
    v11 = *v8 + 16 * v10;
    v20 = a2;
    v21 = a3;
    v14 = *(v11 - 16);
    v12 = (v11 - 16);
    v13 = v14;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0uLL;
    v16 = *v8;
    if (v10 >= *(v8 + 3))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = *(a1 + 10);
  v20 = a2;
  v21 = a3;
  v13 = *v12;
  if (!*v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  *&v18 = v13;
  *(&v18 + 1) = v15;
  (*(*v13 + 24))(v13, v15);
  LODWORD(v10) = *(v9 + 2);
  v16 = *v9;
  if (v10 >= *(v9 + 3))
  {
LABEL_10:
    if (v16 <= &v18 && v16 + 16 * v10 > &v18)
    {
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow();
  }

LABEL_7:
  *(v16 + 16 * *(v9 + 2)) = v18;
  v18 = 0uLL;
  ++*(v9 + 2);
  result = v18;
  if (v18)
  {
    return (*(*v18 + 32))(v18, *(&v18 + 1));
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterAnalysis(llvm *a1)
{
  threadid = llvm::get_threadid(a1);
  v2 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &threadid);
  v3 = *(v2 + 2) - 1;
  *(v2 + 2) = v3;
  v4 = (*v2 + 16 * v3);
  result = *v4;
  if (*v4)
  {
    result = (*(*result + 32))(result, v4[1]);
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v2 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = (*a1 + 88 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -1)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -2;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 88 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -1)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = v5 + 3;
  v5[2] = 0x400000000;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 88 * v6);
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 88 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(88 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::moveFromOldBuckets(a1, v4, &v4[11 * v3]);

    llvm::deallocate_buffer(v4, (88 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 88 * v10 - 88;
    if (v11 < 0x58)
    {
      v12 = result;
LABEL_14:
      v16 = &result[11 * v10];
      do
      {
        *v12 = -1;
        v12 += 11;
      }

      while (v12 != v16);
      return result;
    }

    v13 = v11 / 0x58 + 1;
    v12 = &result[11 * (v13 & 0x7FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v13 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -1;
      v14[11] = -1;
      v14 += 22;
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 88 * v6 - 88;
    if (v8 < 0x58)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[11 * v6];
      do
      {
        *v9 = -1;
        v9 += 11;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x58 + 1;
    v9 = &v7[11 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[11] = -1;
      v11 += 22;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    while (1)
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

LABEL_11:
      v4 += 11;
      if (v4 == a3)
      {
        return;
      }
    }

    v15 = *(a1 + 16) - 1;
    v16 = v15 & (((0xBF58476D1CE4E5B9 * v14) >> 31) ^ (484763065 * v14));
    v17 = (*a1 + 88 * v16);
    v18 = *v17;
    if (v14 != *v17)
    {
      v24 = 0;
      v25 = 1;
      while (v18 != -1)
      {
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = v18 == -2;
        }

        if (v26)
        {
          v24 = v17;
        }

        v27 = v16 + v25++;
        v16 = v27 & v15;
        v17 = (*a1 + 88 * (v27 & v15));
        v18 = *v17;
        if (v14 == *v17)
        {
          goto LABEL_14;
        }
      }

      if (v24)
      {
        v17 = v24;
      }
    }

LABEL_14:
    *v17 = v14;
    v17[1] = (v17 + 3);
    v17[2] = 0x400000000;
    if (*(v4 + 4))
    {
      llvm::SmallVectorImpl<mlir::TimingScope>::operator=((v17 + 1), v4 + 1);
      v19 = *(v4 + 4);
      ++*(a1 + 8);
      v20 = v4[1];
      if (!v19)
      {
        goto LABEL_22;
      }

      v21 = 16 * v19;
      v22 = &v20[v21 - 16];
      v23 = -v21;
      do
      {
        if (*v22)
        {
          (*(**v22 + 32))(*v22, *(v22 + 1));
        }

        *v22 = 0;
        *(v22 + 1) = 0;
        v22 -= 16;
        v23 += 16;
      }

      while (v23);
    }

    else
    {
      ++*(a1 + 8);
    }

    v20 = v4[1];
LABEL_22:
    if (v20 != (v4 + 3))
    {
      free(v20);
    }

    goto LABEL_11;
  }
}

uint64_t llvm::SmallVectorImpl<mlir::TimingScope>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 2;
    v5 = *a2;
    if (*a2 != a2 + 2)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = 2 * v7;
        v9 = &v6[v8 - 2];
        v10 = -(v8 * 8);
        do
        {
          if (*v9)
          {
            (*(**v9 + 32))(*v9, v9[1]);
          }

          *v9 = 0;
          v9[1] = 0;
          v9 -= 2;
          v10 += 16;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v11 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v11 = 0;
      return a1;
    }

    v11 = a2 + 1;
    v13 = *(a2 + 2);
    v14 = *(a1 + 8);
    if (v14 < v13)
    {
      if (*(a1 + 12) < v13)
      {
        if (v14)
        {
          v15 = (16 * v14 + *a1 - 16);
          v16 = -16 * v14;
          do
          {
            if (*v15)
            {
              (*(**v15 + 32))(*v15, v15[1]);
            }

            *v15 = 0;
            v15[1] = 0;
            v15 -= 2;
            v16 += 16;
          }

          while (v16);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v20 = *a1;
      if (v14)
      {
        v21 = 16 * v14;
        do
        {
          if (*v20)
          {
            (*(**v20 + 32))(*v20, v20[1]);
          }

          *v20 = 0;
          v20[1] = 0;
          *v20 = *v5;
          v20 += 2;
          *v5 = 0;
          *(v5 + 8) = 0;
          v5 += 16;
          v21 -= 16;
        }

        while (v21);
        v20 = *a1;
        v29 = *a2;
        v30 = *(a2 + 2);
        if (v14 == v30)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v14 = 0;
        v29 = *a2;
        v30 = *(a2 + 2);
        if (!*(a2 + 2))
        {
          goto LABEL_50;
        }
      }

      v31 = &v20[2 * v14];
      v32 = v29 + 16 * v14;
      v33 = 16 * v30 - 16 * v14;
      do
      {
        *v31++ = *v32;
        *v32 = 0;
        *(v32 + 8) = 0;
        v32 += 16;
        v33 -= 16;
      }

      while (v33);
      v29 = *a2;
LABEL_50:
      *(a1 + 8) = v13;
      v34 = *v11;
      if (v34)
      {
        v35 = 16 * v34;
        v36 = (v35 + v29 - 16);
        v37 = -v35;
        do
        {
          if (*v36)
          {
            (*(**v36 + 32))(*v36, v36[1]);
          }

          *v36 = 0;
          v36[1] = 0;
          v36 -= 2;
          v37 += 16;
        }

        while (v37);
      }

      goto LABEL_12;
    }

    v17 = *a1;
    if (v13)
    {
      v18 = 16 * v13;
      do
      {
        if (*v17)
        {
          (*(**v17 + 32))(*v17, v17[1]);
        }

        *v17 = 0;
        v17[1] = 0;
        *v17 = *v5;
        v17 += 2;
        *v5 = 0;
        *(v5 + 8) = 0;
        v5 += 16;
        v18 -= 16;
      }

      while (v18);
      v19 = *a1 + 16 * *(a1 + 8);
      if (v19 == v17)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v19 = &v17[2 * v14];
      if (v19 == v17)
      {
LABEL_39:
        *(a1 + 8) = v13;
        v25 = *(a2 + 2);
        if (v25)
        {
          v26 = 16 * v25;
          v27 = (v26 + *a2 - 16);
          v28 = -v26;
          do
          {
            if (*v27)
            {
              (*(**v27 + 32))(*v27, v27[1]);
            }

            *v27 = 0;
            v27[1] = 0;
            v27 -= 2;
            v28 += 16;
          }

          while (v28);
        }

        goto LABEL_12;
      }
    }

    v22 = v19;
    do
    {
      v24 = *(v22 - 2);
      v22 -= 2;
      v23 = v24;
      if (v24)
      {
        (*(*v23 + 32))(v23, *(v19 - 8));
      }

      *v22 = 0;
      v22[1] = 0;
      v19 = v22;
    }

    while (v22 != v17);
    goto LABEL_39;
  }

  return a1;
}

void llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforePipeline(std::optional<mlir::OperationName>,mlir::PassInstrumentation::PipelineParentInfo const&)::{lambda(void)#1}>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[8] == 1)
  {
    v7[0] = *(*a1 + 8);
    v2 = a2;
    Value = mlir::StringAttr::getValue(v7);
    a2 = v2;
  }

  else
  {
    Value = "any";
    v4 = 3;
  }

  v6 = 1283;
  v5[0] = "'";
  v5[2] = Value;
  v5[3] = v4;
  v7[0] = v5;
  v7[2] = "' Pipeline";
  v8 = 770;
  llvm::Twine::str(v7, a2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a2[1];
    v4 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | ((((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2)) << 32));
    v5 = v2 - 1;
    v6 = (v2 - 1) & ((v4 >> 31) ^ v4);
    v7 = *a1 + 24 * v6;
    v9 = *v7;
    v8 = *(v7 + 8);
    if (*a2 == *v7 && v3 == v8)
    {
      return v7 + 16;
    }

    v13 = 0;
    v14 = 1;
    while (v9 != -1 || v8 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8 == -8192;
      }

      if (v15 && v9 == -2)
      {
        v13 = v7;
      }

      v17 = v6 + v14++;
      v6 = v17 & v5;
      v7 = *a1 + 24 * (v17 & v5);
      v9 = *v7;
      v8 = *(v7 + 8);
      if (*a2 == *v7 && v3 == v8)
      {
        return v7 + 16;
      }
    }

    if (v13)
    {
      v7 = v13;
    }
  }

  else
  {
    v7 = 0;
  }

  v21 = v7;
  v12 = *(a1 + 8);
  if (4 * v12 + 4 >= 3 * v2)
  {
    v19 = a2;
    v2 *= 2;
    goto LABEL_35;
  }

  if (v2 + ~v12 - *(a1 + 12) <= v2 >> 3)
  {
    v19 = a2;
LABEL_35:
    v20 = a1;
    llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(v20, v19, &v21);
    a1 = v20;
    a2 = v19;
    v7 = v21;
    ++*(v20 + 8);
    if (*v7 != -1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(a1 + 8) = v12 + 1;
  if (*v7 != -1)
  {
LABEL_13:
    --*(a1 + 12);
    goto LABEL_14;
  }

LABEL_12:
  if (*(v7 + 8) != -4096)
  {
    goto LABEL_13;
  }

LABEL_14:
  *v7 = *a2;
  *(v7 + 16) = 0;
  return v7 + 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((v6 >> 4) ^ (v6 >> 9) | ((((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2)) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 24 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (v5 == *v11 && v6 == v12)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v13 != -1 || v12 != -4096)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == -8192;
        }

        if (v18 && v13 == -2)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 24 * (v20 & v9));
        v13 = *v11;
        v12 = v11[1];
        if (v5 == *v11 && v6 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }

      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
LABEL_9:
    *a3 = v11;
  }

  return result;
}

_OWORD *llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    if (v12 < 0x18)
    {
      v13 = result;
LABEL_14:
      v17 = (result + 24 * v11);
      do
      {
        *v13 = xmmword_257372FD0;
        v13 = (v13 + 24);
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x18 + 1;
    v13 = (result + 24 * (v14 & 0x1FFFFFFFFFFFFFFELL));
    v15 = result;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v15 = xmmword_257372FD0;
      *(v15 + 24) = xmmword_257372FD0;
      v15 += 3;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    if (v5 < 0x18)
    {
      v6 = *result;
LABEL_7:
      v10 = (v4 + 24 * v3);
      do
      {
        *v6 = xmmword_257372FD0;
        v6 = (v6 + 24);
      }

      while (v6 != v10);
      goto LABEL_9;
    }

    v7 = v5 / 0x18 + 1;
    v6 = (v4 + 24 * (v7 & 0x1FFFFFFFFFFFFFFELL));
    v8 = *result;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v8 = xmmword_257372FD0;
      *(v8 + 24) = xmmword_257372FD0;
      v8 += 3;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  while (a2 != a3)
  {
    v19 = *a2;
    v20 = a2[1];
    if ((*a2 != -1 || v20 != -4096) && (v19 != -2 || v20 != -8192))
    {
      v11 = 0xBF58476D1CE4E5B9 * ((v20 >> 4) ^ (v20 >> 9) | ((((0xBF58476D1CE4E5B9 * v19) >> 31) ^ (484763065 * v19)) << 32));
      v12 = (v11 >> 31) ^ v11;
      v13 = *(result + 16) - 1;
      v14 = v13 & v12;
      v15 = *result + 24 * v14;
      v16 = *v15;
      v17 = *(v15 + 8);
      if (v19 != *v15 || v20 != v17)
      {
        v21 = 0;
        v22 = 1;
        while (v16 != -1 || v17 != -4096)
        {
          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = v17 == -8192;
          }

          if (v23 && v16 == -2)
          {
            v21 = v15;
          }

          v25 = v14 + v22++;
          v14 = v25 & v13;
          v15 = *result + 24 * (v25 & v13);
          v16 = *v15;
          v17 = *(v15 + 8);
          if (v19 == *v15 && v20 == v17)
          {
            goto LABEL_16;
          }
        }

        if (v21)
        {
          v15 = v21;
        }
      }

LABEL_16:
      *v15 = *a2;
      *(v15 + 16) = *(a2 + 4);
      ++*(result + 8);
    }

    a2 += 3;
  }

  return result;
}

void *llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforePass(mlir::Pass *,mlir::Operation *)::{lambda(void)#2}>@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 16))(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
    a2[v5] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforeAnalysis(llvm::StringRef,mlir::TypeID,mlir::Operation *)::{lambda(void)#1}>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
    if (v4)
    {
      memmove(&__dst, v3, v4);
    }

    __dst.__r_.__value_.__s.__data_[v4] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v5 = std::string::insert(&__dst, 0, "(A) ");
  *a2 = *v5;
  v5->__r_.__value_.__r.__words[0] = 0;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void mlir::pdl_interp::PDLInterpDialect::PDLInterpDialect(mlir::pdl_interp::PDLInterpDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "pdl_interp", 10, a2, &mlir::detail::TypeIDResolver<mlir::pdl_interp::PDLInterpDialect,void>::id);
  *v2 = &unk_286868970;
  v3 = v2[4];
  if (!mlir::MLIRContext::isDialectLoading(v3, "pdl", 3))
  {
    v4 = v3;
    mlir::MLIRContext::getOrLoadDialect(v3, "pdl", 3, &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::pdl::PDLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::pdl::PDLDialect>(void)::{lambda(void)#1}>, &v4);
  }

  mlir::Dialect::addOperations<mlir::pdl_interp::ApplyConstraintOp,mlir::pdl_interp::ApplyRewriteOp,mlir::pdl_interp::AreEqualOp,mlir::pdl_interp::BranchOp,mlir::pdl_interp::CheckAttributeOp,mlir::pdl_interp::CheckOperandCountOp,mlir::pdl_interp::CheckOperationNameOp,mlir::pdl_interp::CheckResultCountOp,mlir::pdl_interp::CheckTypeOp,mlir::pdl_interp::CheckTypesOp,mlir::pdl_interp::ContinueOp,mlir::pdl_interp::CreateAttributeOp,mlir::pdl_interp::CreateOperationOp,mlir::pdl_interp::CreateRangeOp,mlir::pdl_interp::CreateTypeOp,mlir::pdl_interp::CreateTypesOp,mlir::pdl_interp::EraseOp,mlir::pdl_interp::ExtractOp,mlir::pdl_interp::FinalizeOp,mlir::pdl_interp::ForEachOp,mlir::pdl_interp::FuncOp,mlir::pdl_interp::GetAttributeOp,mlir::pdl_interp::GetAttributeTypeOp,mlir::pdl_interp::GetDefiningOpOp,mlir::pdl_interp::GetOperandOp,mlir::pdl_interp::GetOperandsOp,mlir::pdl_interp::GetResultOp,mlir::pdl_interp::GetResultsOp,mlir::pdl_interp::GetUsersOp,mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::IsNotNullOp,mlir::pdl_interp::RecordMatchOp,mlir::pdl_interp::ReplaceOp,mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_interp::SwitchTypeOp,mlir::pdl_interp::SwitchTypesOp>();
}

{
  v2 = mlir::Dialect::Dialect(this, "pdl_interp", 10, a2, &mlir::detail::TypeIDResolver<mlir::pdl_interp::PDLInterpDialect,void>::id);
  *v2 = &unk_286868970;
  v3 = v2[4];
  if (!mlir::MLIRContext::isDialectLoading(v3, "pdl", 3))
  {
    v4 = v3;
    mlir::MLIRContext::getOrLoadDialect(v3, "pdl", 3, &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::pdl::PDLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::pdl::PDLDialect>(void)::{lambda(void)#1}>, &v4);
  }

  mlir::Dialect::addOperations<mlir::pdl_interp::ApplyConstraintOp,mlir::pdl_interp::ApplyRewriteOp,mlir::pdl_interp::AreEqualOp,mlir::pdl_interp::BranchOp,mlir::pdl_interp::CheckAttributeOp,mlir::pdl_interp::CheckOperandCountOp,mlir::pdl_interp::CheckOperationNameOp,mlir::pdl_interp::CheckResultCountOp,mlir::pdl_interp::CheckTypeOp,mlir::pdl_interp::CheckTypesOp,mlir::pdl_interp::ContinueOp,mlir::pdl_interp::CreateAttributeOp,mlir::pdl_interp::CreateOperationOp,mlir::pdl_interp::CreateRangeOp,mlir::pdl_interp::CreateTypeOp,mlir::pdl_interp::CreateTypesOp,mlir::pdl_interp::EraseOp,mlir::pdl_interp::ExtractOp,mlir::pdl_interp::FinalizeOp,mlir::pdl_interp::ForEachOp,mlir::pdl_interp::FuncOp,mlir::pdl_interp::GetAttributeOp,mlir::pdl_interp::GetAttributeTypeOp,mlir::pdl_interp::GetDefiningOpOp,mlir::pdl_interp::GetOperandOp,mlir::pdl_interp::GetOperandsOp,mlir::pdl_interp::GetResultOp,mlir::pdl_interp::GetResultsOp,mlir::pdl_interp::GetUsersOp,mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::IsNotNullOp,mlir::pdl_interp::RecordMatchOp,mlir::pdl_interp::ReplaceOp,mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_interp::SwitchTypeOp,mlir::pdl_interp::SwitchTypesOp>();
}

void sub_25666E768()
{

  JUMPOUT(0x259C63180);
}

BOOL mlir::pdl_interp::CreateOperationOp::verify(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v3 = *(v1 + 64);
  v2 = v1 + 64;
  if (!v3)
  {
    return 1;
  }

  if (*(v2 + 32))
  {
    v37[0] = "with inferred results cannot also have explicit result types";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, &v41);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
    if (v41)
    {
      mlir::InFlightDiagnostic::report(&v41);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v50;
        v7 = __p;
        if (v50 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v50 = v5;
        operator delete(v7);
      }

      v8 = v47;
      if (!v47)
      {
        goto LABEL_55;
      }

      v9 = v48;
      v10 = v47;
      if (v48 == v47)
      {
LABEL_54:
        v48 = v8;
        operator delete(v10);
LABEL_55:
        if (v43 != &v46)
        {
          free(v43);
        }

        return v4;
      }

      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          MEMORY[0x259C63150](v11, 0x1000C8077774924);
        }
      }

      while (v9 != v8);
LABEL_53:
      v10 = v47;
      goto LABEL_54;
    }

    return v4;
  }

  v41 = *(v2 + 16);
  Value = mlir::StringAttr::getValue(&v41);
  v16 = v15;
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::OperationName::OperationName(&v36, Value, v16, Context);
  {
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v18 = *(v36 + 40);
  if (v18)
  {
    v19 = *(v36 + 32);
    v20 = *(v36 + 40);
    do
    {
      v21 = v20 >> 1;
      v22 = &v19[2 * (v20 >> 1)];
      v24 = *v22;
      v23 = v22 + 2;
      v20 += ~(v20 >> 1);
      if (v24 < mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
      {
        v19 = v23;
      }

      else
      {
        v20 = v21;
      }
    }

    while (v20);
    if (v19 != (*(v36 + 32) + 16 * v18) && *v19 == mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id && v19[1])
    {
      return 1;
    }
  }

  v38 = 257;
  mlir::OpState::emitOpError(this, v37, &v41);
  if (v41)
  {
    LODWORD(v39) = 3;
    *(&v39 + 1) = "has inferred results, but the created operation '";
    v40 = 49;
    if (v44 >= v45)
    {
      if (v43 > &v39 || v43 + 24 * v44 <= &v39)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v43 + 24 * v44;
    v26 = v39;
    *(v25 + 2) = v40;
    *v25 = v26;
    ++v44;
    if (v41)
    {
      mlir::Diagnostic::operator<<(&v42, v36);
      if (v41)
      {
        LODWORD(v39) = 3;
        *(&v39 + 1) = "' does not support result type inference (or is not registered)";
        v40 = 63;
        if (v44 >= v45)
        {
          if (v43 > &v39 || v43 + 24 * v44 <= &v39)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v43 + 24 * v44;
        v28 = v39;
        *(v27 + 2) = v40;
        *v27 = v28;
        ++v44;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v50;
      v31 = __p;
      if (v50 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v50 = v29;
      operator delete(v31);
    }

    v8 = v47;
    if (!v47)
    {
      goto LABEL_55;
    }

    v32 = v48;
    v10 = v47;
    if (v48 == v47)
    {
      goto LABEL_54;
    }

    do
    {
      v34 = *--v32;
      v33 = v34;
      *v32 = 0;
      if (v34)
      {
        MEMORY[0x259C63150](v33, 0x1000C8077774924);
      }
    }

    while (v32 != v8);
    goto LABEL_53;
  }

  return v4;
}

void mlir::pdl_interp::ForEachOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3)
{
  v4 = a3;
  mlir::OperationState::addOperands(a2, &v4, 1uLL);
  mlir::OperationState::addRegion(a2);
}

{
  v4 = a3;
  mlir::OperationState::addOperands(a2, &v4, 1uLL);
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::pdl_interp::ForEachOp::parse(mlir::pdl_interp::ForEachOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(&v9[4], 0, 24);
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  memset(v9, 0, 24);
  if ((*(*this + 752))())
  {
    v7 = " after loop variable";
    v8 = 259;
    if ((*(*this + 400))(this, "in", 2, &v7) & 1) != 0 && ((*(*this + 704))(this, v9, 1))
    {
      v5 = mlir::pdl::RangeType::get(v10);
      if ((*(*this + 728))(this, v9, v5, a2 + 16))
      {
        mlir::OperationState::addRegion(a2);
      }
    }
  }

  return 0;
}

uint64_t mlir::OperationState::addSuccessors(uint64_t this, mlir::Block *a2)
{
  v2 = *(this + 208);
  if (v2 >= *(this + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(this + 200) + 8 * v2) = a2;
  ++*(this + 208);
  return this;
}

uint64_t mlir::pdl_interp::ForEachOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = **(v5 + 48);
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a2 + 160))(a2, v6);
  v9 = (*(*a2 + 16))(a2);
  v10 = v9[4];
  if ((v9[3] - v10) > 2)
  {
    *(v10 + 2) = 32;
    *v10 = 14880;
    v9[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v9, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] - v12 > 3uLL)
  {
    *v12 = 544106784;
    v11[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v11, " in ", 4uLL);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, 1, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v16, 0, 0);
  v17 = (*(*a2 + 16))(a2);
  v18 = v17[4];
  if (v17[3] - v18 > 3uLL)
  {
    *v18 = 540945696;
    v17[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v17, " -> ", 4uLL);
  }

  return (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
}

BOOL mlir::pdl_interp::ForEachOp::verify(mlir::Operation **this)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v1 == v1)
  {
    goto LABEL_7;
  }

  v2 = v1[1];
  v3 = v2 - 8;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *(v3 + 48);
  if (((*(v3 + 56) - v4) & 0x7FFFFFFF8) != 8)
  {
LABEL_7:
    v22[0] = "requires exactly one argument";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v30;
        v9 = __p;
        if (v30 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v30 = v7;
        operator delete(v9);
      }

      v10 = v27;
      if (!v27)
      {
        goto LABEL_41;
      }

      v11 = v28;
      v12 = v27;
      if (v28 == v27)
      {
        goto LABEL_40;
      }

      do
      {
        v14 = *--v11;
        v13 = v14;
        *v11 = 0;
        if (v14)
        {
          MEMORY[0x259C63150](v13, 0x1000C8077774924);
        }
      }

      while (v11 != v10);
      goto LABEL_39;
    }
  }

  else
  {
    if (mlir::pdl::RangeType::get(*(*v4 + 8) & 0xFFFFFFFFFFFFFFF8) == (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v22[0] = "operand must be a range of loop variable type";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v30;
        v17 = __p;
        if (v30 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v30 = v15;
        operator delete(v17);
      }

      v10 = v27;
      if (!v27)
      {
        goto LABEL_41;
      }

      v18 = v28;
      v12 = v27;
      if (v28 == v27)
      {
LABEL_40:
        v28 = v10;
        operator delete(v12);
LABEL_41:
        if (v25 != &v26)
        {
          free(v25);
        }

        return v6;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v10);
LABEL_39:
      v12 = v27;
      goto LABEL_40;
    }
  }

  return v6;
}

void mlir::pdl_interp::FuncOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16 = a5;
  Inputs = mlir::FunctionType::getInputs(&v16);
  mlir::TypeRange::TypeRange(v17, Inputs, v15);
  mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(a1, a2, a3, a4, a5, a6, a7);
}

void mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 261;
  v18[0] = a3;
  v18[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v18, a3);
  Context = mlir::Attribute::getContext(a2);
  v23 = 261;
  v21 = "sym_name";
  v22 = 8;
  v14 = mlir::StringAttr::get(Context, &v21, v13);
  mlir::NamedAttribute::NamedAttribute(v20, v14, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v20[0], v20[1]);
  v15 = *(*(*(a2 + 8) + 96) + 8);
  v16 = mlir::TypeAttr::get(a5);
  mlir::NamedAttribute::NamedAttribute(&v21, v15, v16);
  mlir::NamedAttrList::push_back(a2 + 112, v21, v22);
  *(a2 + 192) = 0;
  v17 = *(a2 + 120);
  if (v17 + ((16 * a7) >> 4) > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a7)
  {
    memcpy((*(a2 + 112) + 16 * v17), a6, 16 * a7);
    LODWORD(v17) = *(a2 + 120);
  }

  *(a2 + 120) = v17 + a7;
  mlir::OperationState::addRegion(a2);
}

void mlir::pdl_interp::FuncOp::print(mlir::pdl_interp::FuncOp *this, mlir::OpAsmPrinter *a2)
{
  v4 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  v9 = *(*(*(*this + 48) + 96) + 8);
  Value = mlir::StringAttr::getValue(&v9);
  v7 = *(*(*this + 48) + 96);
  mlir::function_interface_impl::printFunctionOp(a2, v4, InterfaceFor, 0, Value, v8, *v7, v7[2]);
}

BOOL mlir::pdl_interp::SwitchAttributeOp::verify(mlir::Operation **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v24 = *this;
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  v1 = v27[1] - 1;
  v27[0] = *(v24 + 2 * ((*(v24 + 11) >> 23) & 1) + 8);
  mlir::ArrayAttr::getValue(v27);
  if (v1 == v2)
  {
    return 1;
  }

  v4 = v2;
  v22 = "expected number of cases to match the number of case values, got ";
  v23 = 259;
  mlir::OpState::emitOpError(&v24, &v22, v27);
  if (v27[0])
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = v1;
    if (v29 >= v30)
    {
      if (v28 > &v25 || v28 + 24 * v29 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v28 + 24 * v29;
    v6 = v25;
    *(v5 + 2) = v26;
    *v5 = v6;
    v7 = ++v29;
    if (v27[0])
    {
      LODWORD(v25) = 3;
      *(&v25 + 1) = " but expected ";
      v26 = 14;
      if (v7 >= v30)
      {
        if (v28 > &v25 || v28 + 24 * v7 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v28 + 24 * v29;
      v9 = v25;
      *(v8 + 2) = v26;
      *v8 = v9;
      v10 = ++v29;
      if (v27[0])
      {
        LODWORD(v25) = 5;
        *(&v25 + 1) = v4;
        if (v10 >= v30)
        {
          if (v28 > &v25 || v28 + 24 * v10 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v28 + 24 * v29;
        v12 = v25;
        *(v11 + 2) = v26;
        *v11 = v12;
        ++v29;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v35;
      v15 = __p;
      if (v35 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v35 = v13;
      operator delete(v15);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v33;
      v18 = v32;
      if (v33 != v32)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v32;
      }

      v33 = v16;
      operator delete(v18);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v3;
}

BOOL mlir::pdl_interp::SwitchOperandCountOp::verify(mlir::Operation **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v24 = *this;
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  v1 = v27[1] - 1;
  v27[0] = *(v24 + 2 * ((*(v24 + 11) >> 23) & 1) + 8);
  NumElements = mlir::DenseElementsAttr::getNumElements(v27);
  if (v1 == NumElements)
  {
    return 1;
  }

  v4 = NumElements;
  v22 = "expected number of cases to match the number of case values, got ";
  v23 = 259;
  mlir::OpState::emitOpError(&v24, &v22, v27);
  if (v27[0])
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = v1;
    if (v29 >= v30)
    {
      if (v28 > &v25 || v28 + 24 * v29 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v28 + 24 * v29;
    v6 = v25;
    *(v5 + 2) = v26;
    *v5 = v6;
    v7 = ++v29;
    if (v27[0])
    {
      LODWORD(v25) = 3;
      *(&v25 + 1) = " but expected ";
      v26 = 14;
      if (v7 >= v30)
      {
        if (v28 > &v25 || v28 + 24 * v7 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v28 + 24 * v29;
      v9 = v25;
      *(v8 + 2) = v26;
      *v8 = v9;
      v10 = ++v29;
      if (v27[0])
      {
        LODWORD(v25) = 5;
        *(&v25 + 1) = v4;
        if (v10 >= v30)
        {
          if (v28 > &v25 || v28 + 24 * v10 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v28 + 24 * v29;
        v12 = v25;
        *(v11 + 2) = v26;
        *v11 = v12;
        ++v29;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v35;
      v15 = __p;
      if (v35 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v35 = v13;
      operator delete(v15);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v33;
      v18 = v32;
      if (v33 != v32)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v32;
      }

      v33 = v16;
      operator delete(v18);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v3;
}

BOOL mlir::pdl_interp::SwitchOperationNameOp::verify(mlir::Operation **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v24 = *this;
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  v1 = v27[1] - 1;
  v27[0] = *(v24 + 2 * ((*(v24 + 11) >> 23) & 1) + 8);
  mlir::ArrayAttr::getValue(v27);
  if (v1 == v2)
  {
    return 1;
  }

  v4 = v2;
  v22 = "expected number of cases to match the number of case values, got ";
  v23 = 259;
  mlir::OpState::emitOpError(&v24, &v22, v27);
  if (v27[0])
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = v1;
    if (v29 >= v30)
    {
      if (v28 > &v25 || v28 + 24 * v29 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v28 + 24 * v29;
    v6 = v25;
    *(v5 + 2) = v26;
    *v5 = v6;
    v7 = ++v29;
    if (v27[0])
    {
      LODWORD(v25) = 3;
      *(&v25 + 1) = " but expected ";
      v26 = 14;
      if (v7 >= v30)
      {
        if (v28 > &v25 || v28 + 24 * v7 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v28 + 24 * v29;
      v9 = v25;
      *(v8 + 2) = v26;
      *v8 = v9;
      v10 = ++v29;
      if (v27[0])
      {
        LODWORD(v25) = 5;
        *(&v25 + 1) = v4;
        if (v10 >= v30)
        {
          if (v28 > &v25 || v28 + 24 * v10 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v28 + 24 * v29;
        v12 = v25;
        *(v11 + 2) = v26;
        *v11 = v12;
        ++v29;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v35;
      v15 = __p;
      if (v35 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v35 = v13;
      operator delete(v15);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v33;
      v18 = v32;
      if (v33 != v32)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v32;
      }

      v33 = v16;
      operator delete(v18);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v3;
}

BOOL mlir::pdl_interp::SwitchResultCountOp::verify(mlir::Operation **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v24 = *this;
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  v1 = v27[1] - 1;
  v27[0] = *(v24 + 2 * ((*(v24 + 11) >> 23) & 1) + 8);
  NumElements = mlir::DenseElementsAttr::getNumElements(v27);
  if (v1 == NumElements)
  {
    return 1;
  }

  v4 = NumElements;
  v22 = "expected number of cases to match the number of case values, got ";
  v23 = 259;
  mlir::OpState::emitOpError(&v24, &v22, v27);
  if (v27[0])
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = v1;
    if (v29 >= v30)
    {
      if (v28 > &v25 || v28 + 24 * v29 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v28 + 24 * v29;
    v6 = v25;
    *(v5 + 2) = v26;
    *v5 = v6;
    v7 = ++v29;
    if (v27[0])
    {
      LODWORD(v25) = 3;
      *(&v25 + 1) = " but expected ";
      v26 = 14;
      if (v7 >= v30)
      {
        if (v28 > &v25 || v28 + 24 * v7 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v28 + 24 * v29;
      v9 = v25;
      *(v8 + 2) = v26;
      *v8 = v9;
      v10 = ++v29;
      if (v27[0])
      {
        LODWORD(v25) = 5;
        *(&v25 + 1) = v4;
        if (v10 >= v30)
        {
          if (v28 > &v25 || v28 + 24 * v10 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v28 + 24 * v29;
        v12 = v25;
        *(v11 + 2) = v26;
        *v11 = v12;
        ++v29;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v35;
      v15 = __p;
      if (v35 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v35 = v13;
      operator delete(v15);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v33;
      v18 = v32;
      if (v33 != v32)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v32;
      }

      v33 = v16;
      operator delete(v18);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v3;
}

BOOL mlir::pdl_interp::SwitchTypeOp::verify(mlir::Operation **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v24 = *this;
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  v1 = v27[1] - 1;
  v27[0] = *(v24 + 2 * ((*(v24 + 11) >> 23) & 1) + 8);
  mlir::ArrayAttr::getValue(v27);
  if (v1 == v2)
  {
    return 1;
  }

  v4 = v2;
  v22 = "expected number of cases to match the number of case values, got ";
  v23 = 259;
  mlir::OpState::emitOpError(&v24, &v22, v27);
  if (v27[0])
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = v1;
    if (v29 >= v30)
    {
      if (v28 > &v25 || v28 + 24 * v29 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v28 + 24 * v29;
    v6 = v25;
    *(v5 + 2) = v26;
    *v5 = v6;
    v7 = ++v29;
    if (v27[0])
    {
      LODWORD(v25) = 3;
      *(&v25 + 1) = " but expected ";
      v26 = 14;
      if (v7 >= v30)
      {
        if (v28 > &v25 || v28 + 24 * v7 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v28 + 24 * v29;
      v9 = v25;
      *(v8 + 2) = v26;
      *v8 = v9;
      v10 = ++v29;
      if (v27[0])
      {
        LODWORD(v25) = 5;
        *(&v25 + 1) = v4;
        if (v10 >= v30)
        {
          if (v28 > &v25 || v28 + 24 * v10 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v28 + 24 * v29;
        v12 = v25;
        *(v11 + 2) = v26;
        *v11 = v12;
        ++v29;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v35;
      v15 = __p;
      if (v35 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v35 = v13;
      operator delete(v15);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v33;
      v18 = v32;
      if (v33 != v32)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v32;
      }

      v33 = v16;
      operator delete(v18);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v3;
}

BOOL mlir::pdl_interp::SwitchTypesOp::verify(mlir::Operation **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v24 = *this;
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  mlir::SuccessorRange::SuccessorRange(v27, v24);
  v1 = v27[1] - 1;
  v27[0] = *(v24 + 2 * ((*(v24 + 11) >> 23) & 1) + 8);
  mlir::ArrayAttr::getValue(v27);
  if (v1 == v2)
  {
    return 1;
  }

  v4 = v2;
  v22 = "expected number of cases to match the number of case values, got ";
  v23 = 259;
  mlir::OpState::emitOpError(&v24, &v22, v27);
  if (v27[0])
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = v1;
    if (v29 >= v30)
    {
      if (v28 > &v25 || v28 + 24 * v29 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v28 + 24 * v29;
    v6 = v25;
    *(v5 + 2) = v26;
    *v5 = v6;
    v7 = ++v29;
    if (v27[0])
    {
      LODWORD(v25) = 3;
      *(&v25 + 1) = " but expected ";
      v26 = 14;
      if (v7 >= v30)
      {
        if (v28 > &v25 || v28 + 24 * v7 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v28 + 24 * v29;
      v9 = v25;
      *(v8 + 2) = v26;
      *v8 = v9;
      v10 = ++v29;
      if (v27[0])
      {
        LODWORD(v25) = 5;
        *(&v25 + 1) = v4;
        if (v10 >= v30)
        {
          if (v28 > &v25 || v28 + 24 * v10 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v28 + 24 * v29;
        v12 = v25;
        *(v11 + 2) = v26;
        *v11 = v12;
        ++v29;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v35;
      v15 = __p;
      if (v35 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v35 = v13;
      operator delete(v15);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v33;
      v18 = v32;
      if (v33 != v32)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v32;
      }

      v33 = v16;
      operator delete(v18);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v3;
}

uint64_t mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::ApplyConstraintOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

uint64_t mlir::pdl_interp::ApplyConstraintOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    return 1;
  }

  v12 = "'pdl_interp.apply_constraint' op requires attribute 'name'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
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
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v43 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      LODWORD(v44) = 3;
      *(&v44 + 1) = "expected DictionaryAttr to set properties";
      v45 = 41;
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v47 + 24 * v48;
      v25 = v44;
      *(v24 + 2) = v45;
      *v24 = v25;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v54;
      v28 = __p;
      if (v54 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v54 = v26;
      operator delete(v28);
    }

    v19 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v29 = v52;
    v21 = v51;
    if (v52 == v51)
    {
      goto LABEL_69;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        MEMORY[0x259C63150](v30, 0x1000C8077774924);
      }
    }

    while (v29 != v19);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "isNegated", 9uLL);
  if (v8)
  {
    v9 = v8;
    if (!mlir::BoolAttr::classof(v8))
    {
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 54;
        if (v48 >= v49)
        {
          if (v47 > &v44 || v47 + 24 * v48 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v47 + 24 * v48;
        v33 = v44;
        *(v32 + 2) = v45;
        *v32 = v33;
        ++v48;
        if (v46[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v9);
          if (v48 >= v49)
          {
            if (v47 > &v44 || v47 + 24 * v48 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v47 + 24 * v48;
          v35 = v44;
          *(v34 + 2) = v45;
          *v34 = v35;
          ++v48;
          if (v46[0])
          {
            mlir::InFlightDiagnostic::report(v46);
          }
        }
      }

      if ((v56 & 1) == 0)
      {
        return 0;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v54;
        v38 = __p;
        if (v54 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v54 = v36;
        operator delete(v38);
      }

      v19 = v51;
      if (!v51)
      {
        goto LABEL_70;
      }

      v39 = v52;
      v21 = v51;
      if (v52 == v51)
      {
        goto LABEL_69;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v19);
      goto LABEL_68;
    }

    *a1 = v9;
  }

  v10 = mlir::DictionaryAttr::get(&v43, "name", 4uLL);
  if (!v10)
  {
    return 1;
  }

  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v10;
    return 1;
  }

  v11 = v10;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 49;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = v47 + 24 * v48;
    v13 = v44;
    *(v12 + 2) = v45;
    *v12 = v13;
    ++v48;
    if (v46[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v44, v11);
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v47 + 24 * v48;
      v15 = v44;
      *(v14 + 2) = v45;
      *v14 = v15;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if ((v56 & 1) == 0)
  {
    return 0;
  }

  if (v55 != &v56)
  {
    free(v55);
  }

  v16 = __p;
  if (__p)
  {
    v17 = v54;
    v18 = __p;
    if (v54 != __p)
    {
      do
      {
        v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
      }

      while (v17 != v16);
      v18 = __p;
    }

    v54 = v16;
    operator delete(v18);
  }

  v19 = v51;
  if (v51)
  {
    v20 = v52;
    v21 = v51;
    if (v52 == v51)
    {
LABEL_69:
      v52 = v19;
      operator delete(v21);
      goto LABEL_70;
    }

    do
    {
      v23 = *--v20;
      v22 = v23;
      *v20 = 0;
      if (v23)
      {
        MEMORY[0x259C63150](v22, 0x1000C8077774924);
      }
    }

    while (v20 != v19);
LABEL_68:
    v21 = v51;
    goto LABEL_69;
  }

LABEL_70:
  if (v47 != &v50)
  {
    free(v47);
  }

  return 0;
}

__n128 mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v7, *a2);
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4 >= *(a1 + 36))
    {
      if (v3 <= &v7 && v3 + 24 * v4 > &v7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v3 + 24 * *(a1 + 32));
    result = v7;
    v5[1].n128_u64[0] = v8;
    *v5 = result;
    ++*(a1 + 32);
  }

  return result;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "isNegated", 9, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    v6 = v16 + 1;
    LODWORD(v16) = v16 + 1;
    v7 = a2[1];
    if (!v7)
    {
LABEL_4:
      v8 = v15;
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      DictionaryAttr = 0;
      if (v8 == v17)
      {
        return DictionaryAttr;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v11 = mlir::Builder::getNamedAttr(&v14, "name", 4, v7);
  if (v16 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = (v15 + 16 * v16);
  *v13 = v11;
  v13[1] = v12;
  v6 = v16 + 1;
  LODWORD(v16) = v6;
  v8 = v15;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v8, v6);
  v8 = v15;
  if (v15 != v17)
  {
LABEL_6:
    free(v8);
  }

  return DictionaryAttr;
}

unint64_t mlir::pdl_interp::ApplyConstraintOp::computePropertiesHash(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

unint64_t mlir::pdl_interp::ApplyConstraintOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 4)
  {
    if (a4 == 9 && *a3 == 0x65746167654E7369 && *(a3 + 8) == 100)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1701667182)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::pdl_interp::ApplyConstraintOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 4)
  {
    if (*a2 == 1701667182)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v5 = a4;
        }

        else
        {
          v5 = 0;
        }

        result[1] = v5;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 9 && *a2 == 0x65746167654E7369 && *(a2 + 8) == 100)
  {
    if (a4)
    {
      v6 = result;
      v8 = mlir::BoolAttr::classof(a4);
      result = v6;
      if (v8)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *v6 = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::pdl_interp::ApplyConstraintOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "isNegated", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "name", 4uLL, v5);
  }
}

BOOL mlir::pdl_interp::ApplyConstraintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v8, "isNegated", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "name", 4, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1 || mlir::BoolAttr::classof(a1))
  {
    return 1;
  }

  a4(&v26, a5);
  if (v26)
  {
    LODWORD(v23) = 3;
    *(&v23 + 1) = "attribute '";
    v24 = 11;
    if (v29 >= v30)
    {
      if (v28 > &v23 || v28 + 24 * v29 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v28 + 24 * v29;
    v12 = v23;
    *(v11 + 2) = v24;
    *v11 = v12;
    ++v29;
    if (v26)
    {
      v25 = 261;
      *&v23 = a2;
      *(&v23 + 1) = a3;
      mlir::Diagnostic::operator<<(&v27, &v23);
      if (v26)
      {
        LODWORD(v23) = 3;
        *(&v23 + 1) = "' failed to satisfy constraint: BOOL attribute";
        v24 = 46;
        if (v29 >= v30)
        {
          if (v28 > &v23 || v28 + 24 * v29 <= &v23)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v28 + 24 * v29;
        v14 = v23;
        *(v13 + 2) = v24;
        *v13 = v14;
        ++v29;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v35;
      v17 = __p;
      if (v35 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v35 = v15;
      operator delete(v17);
    }

    v18 = v32;
    if (v32)
    {
      v19 = v33;
      v20 = v32;
      if (v33 != v32)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v19 != v18);
        v20 = v32;
      }

      v33 = v18;
      operator delete(v20);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v9;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v28 = 0;
  if (((*(*a1 + 56))(a1, &v28) & 1) == 0)
  {
    return 0;
  }

  v4 = v28;
  if (!v28)
  {
    return 1;
  }

  v5 = mlir::BoolAttr::classof(v28);
  v6 = v5 ? v4 : 0;
  *a2 = v6;
  if (v5)
  {
    return 1;
  }

  v27[16] = 257;
  (*(*a1 + 16))(&v32, a1, v27);
  if (v32)
  {
    LODWORD(v29) = 3;
    *(&v29 + 1) = "expected ";
    v30 = 9;
    if (v35 >= v36)
    {
      if (v34 > &v29 || v34 + 24 * v35 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v34 + 24 * v35;
    v9 = v29;
    *(v8 + 2) = v30;
    *v8 = v9;
    ++v35;
  }

  *&v29 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BoolAttr]";
  *(&v29 + 1) = 64;
  v10 = llvm::StringRef::find(&v29, "DesiredTypeName = ", 0x12uLL, 0);
  if (v32)
  {
    if (*(&v29 + 1) >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(&v29 + 1);
    }

    v12 = 18;
    if (*(&v29 + 1) - v11 < 0x12)
    {
      v12 = *(&v29 + 1) - v11;
    }

    v13 = *(&v29 + 1) - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v31 = 261;
    *&v29 = v29 + v11 + v12;
    *(&v29 + 1) = v13;
    mlir::Diagnostic::operator<<(&v33, &v29);
    if (v32)
    {
      LODWORD(v29) = 3;
      *(&v29 + 1) = ", but got: ";
      v30 = 11;
      if (v35 >= v36)
      {
        if (v34 > &v29 || v34 + 24 * v35 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v34 + 24 * v35;
      v15 = v29;
      *(v14 + 2) = v30;
      *v14 = v15;
      ++v35;
      if (v32)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v29, v28);
        if (v35 >= v36)
        {
          if (v34 > &v29 || v34 + 24 * v35 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v34 + 24 * v35;
        v17 = v29;
        *(v16 + 2) = v30;
        *v16 = v17;
        ++v35;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  v18 = result;
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
    result = v18;
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
      result = v18;
    }

    v19 = __p;
    if (__p)
    {
      v20 = v41;
      v21 = __p;
      if (v41 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v41 = v19;
      operator delete(v21);
      result = v18;
    }

    v22 = v38;
    if (v38)
    {
      v23 = v39;
      v24 = v38;
      if (v39 != v38)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v23 != v22);
        v24 = v38;
      }

      v39 = v22;
      operator delete(v24);
      result = v18;
    }

    if (v34 != &v37)
    {
      free(v34);
      return v18;
    }
  }

  return result;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::setName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::setIsNegated(mlir::pdl_interp::ApplyConstraintOp *this, mlir::MLIRContext *a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getBoolAttr(&Context, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

unint64_t mlir::pdl_interp::ApplyConstraintOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a5;
  if (a8)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *v17 = a8;
  }

  v18 = *(a2 + 208);
  if (v18 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v18) = a9;
  v19 = *(a2 + 212);
  v20 = *(a2 + 208) + 1;
  *(a2 + 208) = v20;
  if (v20 >= v19)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v20) = a10;
  ++*(a2 + 208);
  v21 = *(a2 + 72);
  if (a4 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v22 = 0;
    v23 = *(a2 + 64) + 8 * v21;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v22);
      *(v23 + 8 * v22++) = result;
    }

    while (a4 != v22);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + a4;
  return result;
}

unint64_t mlir::pdl_interp::ApplyConstraintOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  v29 = 261;
  v28[0] = a5;
  v28[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v28, v17);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = StringAttr;
  result = mlir::Builder::getBoolAttr(a1, a9);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = result;
  v22 = *(a2 + 208);
  if (v22 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v22) = a10;
  v23 = *(a2 + 212);
  v24 = *(a2 + 208) + 1;
  *(a2 + 208) = v24;
  if (v24 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v24) = a11;
  ++*(a2 + 208);
  v25 = *(a2 + 72);
  if (a4 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v26 = 0;
    v27 = *(a2 + 64) + 8 * v25;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v26);
      *(v27 + 8 * v26++) = result;
    }

    while (a4 != v26);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + a4;
  return result;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

mlir::BoolAttr *mlir::pdl_interp::ApplyConstraintOp::populateDefaultProperties(uint64_t a1, mlir::BoolAttr **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  v4 = result;
  if (!*a2)
  {
    result = mlir::Builder::getBoolAttr(&v4, 0);
    *a2 = result;
  }

  return result;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v22[0] = v2;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v4, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) & 1) == 0)
    {
      return 0;
    }

    v22[0] = *this;
    if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v5, "isNegated", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) & 1) == 0)
    {
      return 0;
    }

    v6 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v7 = *(v6 + 17);
      if (v7)
      {
        v8 = 0;
        v9 = *(v6 + 9) + 24;
        while ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(*this, *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8) & 1) != 0)
        {
          ++v8;
          v9 += 32;
          if (v7 == v8)
          {
            goto LABEL_9;
          }
        }

        return 0;
      }
    }

LABEL_9:
    mlir::pdl_interp::ApplyConstraintOp::verifyInvariantsImpl();
    return LOBYTE(v22[0]);
  }

  else
  {
    v20 = "requires attribute 'name'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      v14 = v25;
      if (v25)
      {
        v15 = v26;
        v16 = v25;
        if (v26 != v25)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x259C63150](v17, 0x1000C8077774924);
            }
          }

          while (v15 != v14);
          v16 = v25;
        }

        v26 = v14;
        operator delete(v16);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v10;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v45 = *MEMORY[0x277D85DE8];
  if (mlir::pdl::PDLType::classof(a2))
  {
    return 1;
  }

  v31 = 261;
  v30[0] = a3;
  v30[1] = a4;
  mlir::Operation::emitOpError(v34, a1, v30);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    *(&v32 + 1) = " #";
    v33 = 2;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v35 + 24 * v36;
    v12 = v32;
    *(v11 + 2) = v33;
    *v11 = v12;
    v13 = ++v36;
    if (v34[0])
    {
      LODWORD(v32) = 5;
      *(&v32 + 1) = a5;
      if (v13 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v13 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v35 + 24 * v36;
      v15 = v32;
      *(v14 + 2) = v33;
      *v14 = v15;
      v16 = ++v36;
      if (v34[0])
      {
        LODWORD(v32) = 3;
        *(&v32 + 1) = " must be variadic of pdl type, but got ";
        v33 = 39;
        if (v16 >= v37)
        {
          if (v35 > &v32 || v35 + 24 * v16 <= &v32)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v17 = v35 + 24 * v36;
        v18 = v32;
        *(v17 + 2) = v33;
        *v17 = v18;
        ++v36;
        if (v34[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, a2);
          if (v36 >= v37)
          {
            if (v35 > &v32 || v35 + 24 * v36 <= &v32)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v35 + 24 * v36;
          v20 = v32;
          *(v19 + 2) = v33;
          *v19 = v20;
          ++v36;
        }
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v42;
      v23 = __p;
      if (v42 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v42 = v21;
      operator delete(v23);
    }

    v24 = v39;
    if (v39)
    {
      v25 = v40;
      v26 = v39;
      if (v40 != v39)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v39;
      }

      v40 = v24;
      operator delete(v26);
    }

    if (v35 != &v38)
    {
      free(v35);
    }
  }

  return v10;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::parse(mlir::pdl_interp::ApplyConstraintOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v28[16] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v27[0] = v28;
  v27[1] = 0x400000000;
  v25[0] = &v26;
  v25[1] = 0x100000000;
  v22 = &v24;
  v23 = 0x100000000;
  v19 = v21;
  v20 = 0x200000000;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(this, &v15, v7))
  {
    if (v15)
    {
      v8 = *(a2 + 32);
      if (!v8)
      {
        operator new();
      }

      *(v8 + 8) = v15;
    }

    if ((*(*this + 280))(this))
    {
      v9 = (*(*this + 40))(this);
      if ((*(*this + 720))(this, v27, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 104))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, v25) & 1) != 0 && ((*(*this + 296))(this) & 1) != 0 && (((*(*this + 112))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, &v22)))
      {
        v14 = (*(*this + 40))(this);
        if ((*(*this + 488))(this, a2 + 112))
        {
          v10 = *(a2 + 1);
          v16 = this;
          v17 = &v14;
          v18 = a2;
          if (mlir::pdl_interp::ApplyConstraintOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v16) && ((*(*this + 56))(this) & 1) != 0)
          {
            v16 = 0;
            v11 = (*(*this + 808))(this, &v16);
            if ((v11 & 0x100) == 0)
            {
LABEL_17:
              mlir::BlockRange::BlockRange(&v16, v19, v20);
              mlir::OperationState::addSuccessors(a2, v16, v17);
              mlir::OperationState::addTypes(a2, v22, v23);
              v12 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, v27, v25, v9, a2 + 16) & 1;
              goto LABEL_22;
            }

            if (v11)
            {
              do
              {
                llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v19, &v16);
                if (((*(*this + 128))(this) & 1) == 0)
                {
                  goto LABEL_17;
                }
              }

              while (((*(*this + 800))(this, &v16) & 1) != 0);
            }
          }
        }
      }
    }
  }

  v12 = 0;
LABEL_22:
  if (v19 != v21)
  {
    free(v19);
  }

  if (v22 != &v24)
  {
    free(v22);
  }

  if (v25[0] != &v26)
  {
    free(v25[0]);
  }

  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  return v12;
}

uint64_t llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(a1, a2);
  }

  v3 = *a1;
  *(*a1 + 8 * v2) = *a2;
  v4 = v2 + 1;
  *(a1 + 8) = v4;
  return v3 + 8 * v4 - 8;
}

void *mlir::OperationState::addTypes(void *result, const void *a2, uint64_t a3)
{
  v3 = result;
  v4 = 8 * a3;
  v5 = *(result + 18);
  if (v5 + ((8 * a3) >> 3) > *(result + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    result = memcpy((result[8] + 8 * v5), a2, v4);
    LODWORD(v5) = *(v3 + 18);
  }

  *(v3 + 18) = v5 + (v4 >> 3);
  return result;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 2);
  v7 = *(a3 + 8);
  if (v6 == v7)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v31 = 257;
    (*(*a1 + 24))(v34, a1, a4, v30);
    if (v34[0])
    {
      LODWORD(v32) = 5;
      *(&v32 + 1) = v6;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v35 + 24 * v36;
      v14 = v32;
      *(v13 + 2) = v33;
      *v13 = v14;
      v15 = ++v36;
      if (v34[0])
      {
        LODWORD(v32) = 3;
        *(&v32 + 1) = " operands present, but expected ";
        v33 = 32;
        if (v15 >= v37)
        {
          if (v35 > &v32 || v35 + 24 * v15 <= &v32)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v35 + 24 * v36;
        v17 = v32;
        *(v16 + 2) = v33;
        *v16 = v17;
        v18 = ++v36;
        if (v34[0])
        {
          LODWORD(v32) = 5;
          *(&v32 + 1) = v7;
          if (v18 >= v37)
          {
            if (v35 > &v32 || v35 + 24 * v18 <= &v32)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v35 + 24 * v36;
          v20 = v32;
          *(v19 + 2) = v33;
          *v19 = v20;
          ++v36;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v42;
        v23 = __p;
        if (v42 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v42 = v21;
        operator delete(v23);
      }

      v24 = v39;
      if (v39)
      {
        v25 = v40;
        v26 = v39;
        if (v40 != v39)
        {
          do
          {
            v28 = *--v25;
            v27 = v28;
            *v25 = 0;
            if (v28)
            {
              MEMORY[0x259C63150](v27, 0x1000C8077774924);
            }
          }

          while (v25 != v24);
          v26 = v39;
        }

        v40 = v24;
        operator delete(v26);
      }

      if (v35 != &v38)
      {
        free(v35);
      }
    }
  }

  return v12;
}

uint64_t mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::ApplyRewriteOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

uint64_t mlir::pdl_interp::ApplyRewriteOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'pdl_interp.apply_rewrite' op requires attribute 'name'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
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
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v35 + 24 * v36;
      v23 = v32;
      *(v22 + 2) = v33;
      *v22 = v23;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v42;
      v26 = __p;
      if (v42 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v42 = v24;
      operator delete(v26);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_48;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "name", 4uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 49;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v32;
    *(v10 + 2) = v33;
    *v10 = v11;
    ++v36;
    if (v34[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v35 + 24 * v36;
      v13 = v32;
      *(v12 + 2) = v33;
      *v12 = v13;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }
  }

  if (v44)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v42;
      v16 = __p;
      if (v42 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v42 = v14;
      operator delete(v16);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v17;
      operator delete(v19);
LABEL_49:
      if (v35 != &v38)
      {
        free(v35);
      }

      return 0;
    }

    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        MEMORY[0x259C63150](v20, 0x1000C8077774924);
      }
    }

    while (v18 != v17);
LABEL_47:
    v19 = v39;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "name", 4, *a2);
  if (v12 >= HIDWORD(v12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v11 + 16 * v12);
  *v4 = NamedAttr;
  v4[1] = v3;
  v5 = v11;
  v6 = __CFADD__(v12, 1);
  v7 = (v12 + 1);
  LODWORD(v12) = v12 + 1;
  if (v6)
  {
    result = 0;
    if (v11 == v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = mlir::Builder::getDictionaryAttr(&v10, v11, v7);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_9:
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

unint64_t mlir::pdl_interp::ApplyRewriteOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::ApplyRewriteOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701667182)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl_interp::ApplyRewriteOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701667182)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }

      *result = v4;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "name", 4uLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v2) & 1;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::setName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

unint64_t mlir::pdl_interp::ApplyRewriteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a5;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

unint64_t mlir::pdl_interp::ApplyRewriteOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, unint64_t a8)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  v21 = 261;
  v20[0] = a5;
  v20[1] = a6;
  result = mlir::Builder::getStringAttr(a1, v20, v14);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = result;
  v17 = *(a2 + 72);
  if (a4 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v18 = 0;
    v19 = *(a2 + 64) + 8 * v17;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v18);
      *(v19 + 8 * v18++) = result;
    }

    while (a4 != v18);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + a4;
  return result;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v20[0] = v2;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 17);
      if (v5)
      {
        v6 = 0;
        v7 = *(v4 + 9) + 24;
        while ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6) & 1) != 0)
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            goto LABEL_8;
          }
        }

        return 0;
      }
    }

LABEL_8:
    mlir::pdl_interp::ApplyConstraintOp::verifyInvariantsImpl();
    return LOBYTE(v20[0]);
  }

  else
  {
    v18 = "requires attribute 'name'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::parse(mlir::pdl_interp::ApplyRewriteOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v25[0] = v26;
  v25[1] = 0x400000000;
  v23[0] = &v24;
  v23[1] = 0x100000000;
  v19 = 0;
  __src = &v22;
  v21 = 0x100000000;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(this, &v19, v7))
  {
    goto LABEL_24;
  }

  if (v19)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v19;
  }

  if ((*(*this + 288))(this))
  {
    v9 = (*(*this + 40))(this);
    if (((*(*this + 720))(this, v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v23) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0;
  }

  if (((*(*this + 112))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, &__src) & 1) == 0 || (v18 = (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0) || (v10 = *(a2 + 1), v17[0] = this, v17[1] = &v18, v17[2] = a2, (v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96))) != 0) && (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v11, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17) & 1) == 0)
  {
LABEL_24:
    v14 = 0;
    v15 = __src;
    if (__src == &v22)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v12 = v21;
  v13 = *(a2 + 18);
  if (v13 + v21 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 8) + 8 * v13), __src, 8 * v21);
    LODWORD(v13) = *(a2 + 18);
  }

  *(a2 + 18) = v13 + v12;
  v14 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, v25, v23, v9, a2 + 16) & 1;
  v15 = __src;
  if (__src != &v22)
  {
LABEL_25:
    free(v15);
  }

LABEL_26:
  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  return v14;
}

uint64_t mlir::pdl_interp::AreEqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 208);
  if (v10 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v10) = a5;
  v11 = *(a2 + 212);
  v12 = *(a2 + 208) + 1;
  *(a2 + 208) = v12;
  if (v12 >= v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v12) = a6;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::AreEqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a6;
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v14 = *(a2 + 208);
  if (v14 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v14) = a7;
  v15 = *(a2 + 212);
  v16 = *(a2 + 208) + 1;
  *(a2 + 208) = v16;
  if (v16 >= v15)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v16) = a8;
  ++*(a2 + 208);
  v17 = *(a2 + 72);
  if (a4 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v18 = 0;
    v19 = *(a2 + 64) + 8 * v17;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v18);
      *(v19 + 8 * v18++) = result;
    }

    while (a4 != v18);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + a4;
  return result;
}

unint64_t mlir::pdl_interp::AreEqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

uint64_t mlir::pdl_interp::AreEqualOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1;
  }

  return result;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v45 = *MEMORY[0x277D85DE8];
  if (mlir::pdl::PDLType::classof(a2))
  {
    return 1;
  }

  v31 = 261;
  v30[0] = a3;
  v30[1] = a4;
  mlir::Operation::emitOpError(v34, a1, v30);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    *(&v32 + 1) = " #";
    v33 = 2;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v35 + 24 * v36;
    v12 = v32;
    *(v11 + 2) = v33;
    *v11 = v12;
    v13 = ++v36;
    if (v34[0])
    {
      LODWORD(v32) = 5;
      *(&v32 + 1) = a5;
      if (v13 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v13 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v35 + 24 * v36;
      v15 = v32;
      *(v14 + 2) = v33;
      *v14 = v15;
      v16 = ++v36;
      if (v34[0])
      {
        LODWORD(v32) = 3;
        *(&v32 + 1) = " must be pdl type, but got ";
        v33 = 27;
        if (v16 >= v37)
        {
          if (v35 > &v32 || v35 + 24 * v16 <= &v32)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v17 = v35 + 24 * v36;
        v18 = v32;
        *(v17 + 2) = v33;
        *v17 = v18;
        ++v36;
        if (v34[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, a2);
          if (v36 >= v37)
          {
            if (v35 > &v32 || v35 + 24 * v36 <= &v32)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v35 + 24 * v36;
          v20 = v32;
          *(v19 + 2) = v33;
          *v19 = v20;
          ++v36;
        }
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v42;
      v23 = __p;
      if (v42 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v42 = v21;
      operator delete(v23);
    }

    v24 = v39;
    if (v39)
    {
      v25 = v40;
      v26 = v39;
      if (v40 != v39)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v39;
      }

      v40 = v24;
      operator delete(v26);
    }

    if (v35 != &v38)
    {
      free(v35);
    }
  }

  return v10;
}

uint64_t mlir::pdl_interp::AreEqualOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1;
  }

  return result;
}

uint64_t mlir::pdl_interp::AreEqualOp::parse(mlir::pdl_interp::AreEqualOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v18[0] = v19;
  v18[1] = 0x400000000;
  v10 = 0;
  v15 = v17;
  v16 = 0x200000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 720))(this, v18, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 104))(this))
  {
    v11 = 0;
    if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(this, &v11))
    {
      v10 = v11;
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 56))(this))
      {
        v11 = 0;
        v6 = (*(*this + 808))(this, &v11);
        if ((v6 & 0x100) == 0)
        {
LABEL_7:
          mlir::BlockRange::BlockRange(&v11, v15, v16);
          mlir::OperationState::addSuccessors(a2, v11, v12);
          v11 = &v10;
          v12 = 1;
          v13 = &v10;
          v14 = 1;
          v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(this, v18, &v11, v5, a2 + 16) & 1;
          goto LABEL_16;
        }

        if (v6)
        {
          llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v15, &v11);
          while (((*(*this + 128))(this) & 1) != 0)
          {
            if (((*(*this + 800))(this, &v11) & 1) == 0)
            {
              goto LABEL_15;
            }

            v8 = v16;
            if (v16 >= HIDWORD(v16))
            {
              llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v15, &v11);
            }

            else
            {
              *(v15 + v16) = v11;
              LODWORD(v16) = v8 + 1;
            }
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_15:
  v7 = 0;
LABEL_16:
  if (v15 != v17)
  {
    free(v15);
  }

  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  return v7;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 2);
  v8 = *a3;
  v9 = a3[1];
  v10 = *a3 + 8 * v9;
  v11 = a3[2];
  v12 = a3[3];
  v13 = &v11[8 * v12];
  v14 = 0;
  if (v9 | v12)
  {
    v15 = *a3;
    v16 = a3[2];
    do
    {
      v17 = v15 == v10;
      v15 += 8;
      if (v17)
      {
        v16 += 8;
        v15 = v10;
      }

      ++v14;
    }

    while (v15 != v10 || v16 != v13);
  }

  if (v14 == v7)
  {
    v18 = *a2;
    v46 = *a2;
    v47 = v8;
    v48 = v11;
    v49 = v10;
    v50 = v13;
    if (v7)
    {
      v19 = v18 + 32 * v7;
      while (1)
      {
        v20 = &unk_28686AC20;
        do
        {
          while (1)
          {
            v22 = *(v20 - 1);
            v23 = (&v47 + (*v20 >> 1));
            if (*v20)
            {
              break;
            }

            v20 += 2;
            v21 = v22(v23);
            if (v21)
            {
              goto LABEL_16;
            }
          }

          v20 += 2;
          v21 = (*(*v23 + v22))();
        }

        while (!v21);
LABEL_16:
        if (((*(*a1 + 728))(a1, v18, *v21, a5) & 1) == 0)
        {
          return 0;
        }

        v18 = v46 + 32;
        v46 += 32;
        if (v47 == v49)
        {
          if (v48 != v50)
          {
            v48 += 8;
          }
        }

        else
        {
          v47 += 8;
        }

        if (v18 == v19)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v43 = 257;
    (*(*a1 + 24))(&v46, a1, a4, v42);
    if (v46)
    {
      LODWORD(v44) = 5;
      *(&v44 + 1) = v7;
      if (v50 >= HIDWORD(v50))
      {
        if (v49 > &v44 || v49 + 24 * v50 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v49 + 24 * v50;
      v25 = v44;
      *(v24 + 2) = v45;
      *v24 = v25;
      v26 = v50 + 1;
      LODWORD(v50) = v50 + 1;
      if (v46)
      {
        LODWORD(v44) = 3;
        *(&v44 + 1) = " operands present, but expected ";
        v45 = 32;
        if (v26 >= HIDWORD(v50))
        {
          if (v49 > &v44 || v49 + 24 * v26 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v49 + 24 * v50;
        v28 = v44;
        *(v27 + 2) = v45;
        *v27 = v28;
        v29 = v50 + 1;
        LODWORD(v50) = v50 + 1;
        if (v46)
        {
          LODWORD(v44) = 5;
          *(&v44 + 1) = v14;
          if (v29 >= HIDWORD(v50))
          {
            if (v49 > &v44 || v49 + 24 * v29 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v30 = v49 + 24 * v50;
          v31 = v44;
          *(v30 + 2) = v45;
          *v30 = v31;
          LODWORD(v50) = v50 + 1;
        }
      }
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v55;
        v35 = __p;
        if (v55 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v55 = v33;
        operator delete(v35);
      }

      v36 = v52;
      if (v52)
      {
        v37 = v53;
        v38 = v52;
        if (v53 != v52)
        {
          do
          {
            v40 = *--v37;
            v39 = v40;
            *v37 = 0;
            if (v40)
            {
              MEMORY[0x259C63150](v39, 0x1000C8077774924);
            }
          }

          while (v37 != v36);
          v38 = v52;
        }

        v53 = v36;
        operator delete(v38);
      }

      if (v49 != &v51)
      {
        free(v49);
      }
    }
  }

  return v32;
}

void mlir::pdl_interp::BranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 208);
  if (v3 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v3) = a3;
  ++*(a2 + 208);
}

void mlir::pdl_interp::BranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 208);
  if (v8 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v8) = a5;
  ++*(a2 + 208);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      *(v11 + 8 * v10) = mlir::TypeRange::dereference_iterator(a3, v10);
      ++v10;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
}

unint64_t mlir::pdl_interp::BranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

uint64_t mlir::pdl_interp::BranchOp::parse(mlir::pdl_interp::BranchOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v7 = 0;
  if (((*(*this + 800))(this, &v7, a3) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 52);
  if (v5 >= *(a2 + 53))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 25) + 8 * v5) = v7;
  ++*(a2 + 52);
  return 1;
}

void mlir::pdl_interp::BranchOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  v9 = v11;
  v10 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::CheckAttributeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

uint64_t mlir::pdl_interp::CheckAttributeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'pdl_interp.check_attribute' op requires attribute 'constantValue'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
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
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::pdl_interp::CheckAttributeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  if (v4)
  {
    v6 = mlir::DictionaryAttr::get(&v18, "constantValue", 0xDuLL);
    if (v6)
    {
      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v21, a4);
    if (v21[0])
    {
      LODWORD(v19) = 3;
      *(&v19 + 1) = "expected DictionaryAttr to set properties";
      v20 = 41;
      if (v23 >= v24)
      {
        if (v22 > &v19 || v22 + 24 * v23 <= &v19)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v22 + 24 * v23;
      v9 = v19;
      *(v8 + 2) = v20;
      *v8 = v9;
      ++v23;
      if (v21[0])
      {
        mlir::InFlightDiagnostic::report(v21);
      }
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v29;
        v12 = __p;
        if (v29 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v29 = v10;
        operator delete(v12);
      }

      v13 = v26;
      if (v26)
      {
        v14 = v27;
        v15 = v26;
        if (v27 != v26)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              MEMORY[0x259C63150](v16, 0x1000C8077774924);
            }
          }

          while (v14 != v13);
          v15 = v26;
        }

        v27 = v13;
        operator delete(v15);
      }

      if (v22 != &v25)
      {
        free(v22);
      }
    }

    return 0;
  }
}

uint64_t mlir::pdl_interp::CheckAttributeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "constantValue", 0xD, *a2);
  if (v12 >= HIDWORD(v12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v11 + 16 * v12);
  *v4 = NamedAttr;
  v4[1] = v3;
  v5 = v11;
  v6 = __CFADD__(v12, 1);
  v7 = (v12 + 1);
  LODWORD(v12) = v12 + 1;
  if (v6)
  {
    result = 0;
    if (v11 == v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = mlir::Builder::getDictionaryAttr(&v10, v11, v7);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_9:
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

unint64_t mlir::pdl_interp::CheckAttributeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::CheckAttributeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x746E6174736E6F63 ? (v4 = *(a3 + 5) == 0x65756C6156746E61) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl_interp::CheckAttributeOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x746E6174736E6F63 && *(a2 + 5) == 0x65756C6156746E61)
  {
    *result = a4;
  }

  return result;
}

uint64_t mlir::pdl_interp::CheckAttributeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "constantValue", 0xDuLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl_interp::CheckAttributeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return (*(*a1 + 48))(a1, v2) & 1;
}

uint64_t mlir::pdl_interp::CheckAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a4;
  v12 = *(a2 + 208);
  if (v12 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v12) = a5;
  v13 = *(a2 + 212);
  v14 = *(a2 + 208) + 1;
  *(a2 + 208) = v14;
  if (v14 >= v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v14) = a6;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::CheckAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a5;
  result = mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a6;
  v16 = *(a2 + 208);
  if (v16 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v16) = a7;
  v17 = *(a2 + 212);
  v18 = *(a2 + 208) + 1;
  *(a2 + 208) = v18;
  if (v18 >= v17)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v18) = a8;
  ++*(a2 + 208);
  v19 = *(a2 + 72);
  if (a4 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v20 = 0;
    v21 = *(a2 + 64) + 8 * v19;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v20);
      *(v21 + 8 * v20++) = result;
    }

    while (a4 != v20);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + a4;
  return result;
}

uint64_t mlir::pdl_interp::CheckAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

BOOL mlir::pdl_interp::CheckAttributeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
    return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
  }

  v11 = "requires attribute 'constantValue'";
  v12 = 259;
  mlir::OpState::emitOpError(this, &v11, v13);
  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v13[0])
  {
    mlir::InFlightDiagnostic::report(v13);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v19;
      v4 = __p;
      if (v19 != __p)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v19 = v2;
      operator delete(v4);
    }

    v5 = v16;
    if (v16)
    {
      v6 = v17;
      v7 = v16;
      if (v17 != v16)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            MEMORY[0x259C63150](v8, 0x1000C8077774924);
          }
        }

        while (v6 != v5);
        v7 = v16;
      }

      v17 = v5;
      operator delete(v7);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }

  return v1;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    return 1;
  }

  v28 = 261;
  v27[0] = a3;
  v27[1] = a4;
  mlir::Operation::emitOpError(v31, a1, v27);
  if (v31[0])
  {
    LODWORD(v29) = 3;
    *(&v29 + 1) = " #";
    v30 = 2;
    if (v33 >= v34)
    {
      if (v32 > &v29 || v32 + 24 * v33 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v32 + 24 * v33;
    v8 = v29;
    *(v7 + 2) = v30;
    *v7 = v8;
    v9 = ++v33;
    if (v31[0])
    {
      LODWORD(v29) = 5;
      *(&v29 + 1) = a5;
      if (v9 >= v34)
      {
        if (v32 > &v29 || v32 + 24 * v9 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v32 + 24 * v33;
      v11 = v29;
      *(v10 + 2) = v30;
      *v10 = v11;
      v12 = ++v33;
      if (v31[0])
      {
        LODWORD(v29) = 3;
        v30 = 53;
        if (v12 >= v34)
        {
          if (v32 > &v29 || v32 + 24 * v12 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v32 + 24 * v33;
        v14 = v29;
        *(v13 + 2) = v30;
        *v13 = v14;
        ++v33;
        if (v31[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v29, a2);
          if (v33 >= v34)
          {
            if (v32 > &v29 || v32 + 24 * v33 <= &v29)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v15 = v32 + 24 * v33;
          v16 = v29;
          *(v15 + 2) = v30;
          *v15 = v16;
          ++v33;
        }
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  if (v31[0])
  {
    mlir::InFlightDiagnostic::report(v31);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

  return v17;
}

uint64_t mlir::pdl_interp::CheckAttributeOp::parse(mlir::pdl_interp::CheckAttributeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12 = 0;
  v15 = v17;
  v16 = 0x200000000;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v13, 1))
  {
    v19 = 257;
    if ((*(*this + 400))(this, "is", 2, v18) & 1) != 0 && ((*(*this + 440))(this, &v12, 0))
    {
      if (v12)
      {
        v5 = *(a2 + 32);
        if (!v5)
        {
          operator new();
        }

        *v5 = v12;
      }

      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112))
      {
        mlir::NamedAttrList::get(a2 + 112, **(*(a2 + 1) + 96));
        if ((*(*this + 56))(this))
        {
          v18[0] = 0;
          v6 = (*(*this + 808))(this, v18);
          if ((v6 & 0x100) == 0)
          {
LABEL_11:
            mlir::BlockRange::BlockRange(v18, v15, v16);
            mlir::OperationState::addSuccessors(a2, v18[0], v18[1]);
            v7 = (*(*this + 32))(this);
            v8 = mlir::Builder::getType<mlir::pdl::AttributeType>(v7);
            v9 = (*(*this + 728))(this, v13, v8, a2 + 16) & 1;
            goto LABEL_20;
          }

          if (v6)
          {
            llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v15, v18);
            while (((*(*this + 128))(this) & 1) != 0)
            {
              if (((*(*this + 800))(this, v18) & 1) == 0)
              {
                goto LABEL_19;
              }

              v10 = v16;
              if (v16 >= HIDWORD(v16))
              {
                llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v15, v18);
              }

              else
              {
                *(v15 + v16) = v18[0];
                LODWORD(v16) = v10 + 1;
              }
            }

            goto LABEL_11;
          }
        }
      }
    }
  }

LABEL_19:
  v9 = 0;
LABEL_20:
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

uint64_t mlir::Builder::getType<mlir::pdl::AttributeType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
}

void mlir::pdl_interp::CheckAttributeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29545;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "is", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v29 = v31;
  v31[0] = "constantValue";
  v31[1] = 13;
  v30 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v29, v30);
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 15917;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "->", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v21 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v22 = v20 - 1;
  if (v22)
  {
    v23 = (v21 + 56);
    do
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = v25[4];
      if (v25[3] - v26 <= 1uLL)
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      else
      {
        *v26 = 8236;
        v25[4] += 2;
      }

      v24 = *v23;
      v23 += 4;
      (*(*a2 + 176))(a2, v24);
      --v22;
    }

    while (v22);
  }

LABEL_24:
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::CheckOperandCountOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

uint64_t *mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::getCount(mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase *this)
{
  v5 = *(this + 4);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::pdl_interp::CheckOperandCountOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v24 = *(a1 + 32);
    v25[0] = mlir::IntegerAttr::getType(&v24);
    if (mlir::Type::isSignlessInteger(v25, 32))
    {
      v23 = v3;
      mlir::IntegerAttr::getValue(&v23, &v27);
      v4 = v28 - 1;
      if (v28 >= 0x41)
      {
        v5 = (v27 + 8 * (v4 >> 6));
      }

      else
      {
        v5 = &v27;
      }

      v6 = (1 << v4) & *v5;
      if (v28 >= 0x41 && v27)
      {
        MEMORY[0x259C63150]();
      }

      if (!v6)
      {
        return 1;
      }
    }

    v25[0] = "'pdl_interp.check_operand_count' op attribute 'count' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative";
    v26 = 259;
    mlir::emitError(a2, v25, &v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v34;
        v10 = __p;
        if (v34 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v34 = v8;
        operator delete(v10);
      }

      v11 = v31;
      if (!v31)
      {
        goto LABEL_44;
      }

      v12 = v32;
      v13 = v31;
      if (v32 == v31)
      {
LABEL_43:
        v32 = v11;
        operator delete(v13);
LABEL_44:
        if (v29 != &v30)
        {
          free(v29);
        }

        return v7;
      }

      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          MEMORY[0x259C63150](v14, 0x1000C8077774924);
        }
      }

      while (v12 != v11);
LABEL_42:
      v13 = v31;
      goto LABEL_43;
    }
  }

  else
  {
    v25[0] = "'pdl_interp.check_operand_count' op requires attribute 'count'";
    v26 = 259;
    mlir::emitError(a2, v25, &v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v34;
        v18 = __p;
        if (v34 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v34 = v16;
        operator delete(v18);
      }

      v11 = v31;
      if (!v31)
      {
        goto LABEL_44;
      }

      v19 = v32;
      v13 = v31;
      if (v32 == v31)
      {
        goto LABEL_43;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v19 != v11);
      goto LABEL_42;
    }
  }

  return v7;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v43 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      LODWORD(v44) = 3;
      *(&v44 + 1) = "expected DictionaryAttr to set properties";
      v45 = 41;
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v47 + 24 * v48;
      v23 = v44;
      *(v22 + 2) = v45;
      *v22 = v23;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v54;
      v26 = __p;
      if (v54 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v54 = v24;
      operator delete(v26);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v27 = v52;
    v19 = v51;
    if (v52 == v51)
    {
      goto LABEL_69;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "compareAtLeast", 0xEuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 59;
        if (v48 >= v49)
        {
          if (v47 > &v44 || v47 + 24 * v48 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v47 + 24 * v48;
        v11 = v44;
        *(v10 + 2) = v45;
        *v10 = v11;
        ++v48;
        if (v46[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v9);
          if (v48 >= v49)
          {
            if (v47 > &v44 || v47 + 24 * v48 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v47 + 24 * v48;
          v13 = v44;
          *(v12 + 2) = v45;
          *v12 = v13;
          ++v48;
          if (v46[0])
          {
            mlir::InFlightDiagnostic::report(v46);
          }
        }
      }

      if ((v56 & 1) == 0)
      {
        return 0;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v54;
        v16 = __p;
        if (v54 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v54 = v14;
        operator delete(v16);
      }

      v17 = v51;
      if (!v51)
      {
        goto LABEL_70;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
      {
        goto LABEL_69;
      }

      do
      {
        v21 = *--v18;
        v20 = v21;
        *v18 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v18 != v17);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v43, "count", 5uLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 50;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v32 = v47 + 24 * v48;
    v33 = v44;
    *(v32 + 2) = v45;
    *v32 = v33;
    ++v48;
    if (v46[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v44, v31);
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = v47 + 24 * v48;
      v35 = v44;
      *(v34 + 2) = v45;
      *v34 = v35;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v39 = v52;
    v19 = v51;
    if (v52 == v51)
    {
LABEL_69:
      v52 = v17;
      operator delete(v19);
LABEL_70:
      if (v47 != &v50)
      {
        free(v47);
      }

      return 0;
    }

    do
    {
      v41 = *--v39;
      v40 = v41;
      *v39 = 0;
      if (v41)
      {
        MEMORY[0x259C63150](v40, 0x1000C8077774924);
      }
    }

    while (v39 != v17);
LABEL_68:
    v19 = v51;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "compareAtLeast", 0xE, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    v6 = v16 + 1;
    LODWORD(v16) = v16 + 1;
    v7 = a2[1];
    if (!v7)
    {
LABEL_4:
      v8 = v15;
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      DictionaryAttr = 0;
      if (v8 == v17)
      {
        return DictionaryAttr;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v11 = mlir::Builder::getNamedAttr(&v14, "count", 5, v7);
  if (v16 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = (v15 + 16 * v16);
  *v13 = v11;
  v13[1] = v12;
  v6 = v16 + 1;
  LODWORD(v16) = v6;
  v8 = v15;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v8, v6);
  v8 = v15;
  if (v15 != v17)
  {
LABEL_6:
    free(v8);
  }

  return DictionaryAttr;
}

unint64_t mlir::pdl_interp::CheckOperandCountOp::computePropertiesHash(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

unint64_t mlir::pdl_interp::CheckOperandCountOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 5)
  {
    if (a4 == 14 && *a3 == 0x41657261706D6F63 && *(a3 + 6) == 0x747361654C744165)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1853189987 || *(a3 + 4) != 116)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::pdl_interp::CheckOperandCountOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5)
  {
    if (*a2 == 1853189987 && *(a2 + 4) == 116)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 14 && *a2 == 0x41657261706D6F63 && *(a2 + 6) == 0x747361654C744165)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      *result = v7;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::pdl_interp::CheckOperandCountOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "compareAtLeast", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "count", 5uLL, v5);
  }
}

BOOL mlir::pdl_interp::CheckOperandCountOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "compareAtLeast", 14, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v9, "count", 5, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_11;
  }

  v29 = a1;
  v8 = a4;
  v9 = a5;
  *&v30 = mlir::IntegerAttr::getType(&v29);
  isSignlessInteger = mlir::Type::isSignlessInteger(&v30, 32);
  a5 = v9;
  a4 = v8;
  if (!isSignlessInteger)
  {
    goto LABEL_11;
  }

  v28 = a1;
  mlir::IntegerAttr::getValue(&v28, &v33);
  v11 = v34[0] - 1;
  if (v34[0] >= 0x41)
  {
    v12 = (v33 + 8 * (v11 >> 6));
  }

  else
  {
    v12 = &v33;
  }

  v13 = (1 << v11) & *v12;
  if (v34[0] >= 0x41 && v33)
  {
    MEMORY[0x259C63150]();
  }

  a4 = v8;
  a5 = v9;
  if (!v13)
  {
    return 1;
  }

LABEL_11:
  a4(&v33, a5);
  if (v33)
  {
    LODWORD(v30) = 3;
    *(&v30 + 1) = "attribute '";
    v31 = 11;
    if (v36 >= v37)
    {
      if (v35 > &v30 || v35 + 24 * v36 <= &v30)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = v35 + 24 * v36;
    v15 = v30;
    *(v14 + 2) = v31;
    *v14 = v15;
    ++v36;
    if (v33)
    {
      v32 = 261;
      *&v30 = a2;
      *(&v30 + 1) = a3;
      mlir::Diagnostic::operator<<(v34, &v30);
      if (v33)
      {
        LODWORD(v30) = 3;
        *(&v30 + 1) = "' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative";
        v31 = 93;
        if (v36 >= v37)
        {
          if (v35 > &v30 || v35 + 24 * v36 <= &v30)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v35 + 24 * v36;
        v17 = v30;
        *(v16 + 2) = v31;
        *v16 = v17;
        ++v36;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v42;
      v21 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v42 = v19;
      operator delete(v21);
    }

    v22 = v39;
    if (v39)
    {
      v23 = v40;
      v24 = v39;
      if (v40 != v39)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v23 != v22);
        v24 = v39;
      }

      v40 = v22;
      operator delete(v24);
    }

    if (v35 != &v38)
    {
      free(v35);
    }
  }

  return v18;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 56))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (!v27)
  {
    return 1;
  }

  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::UnitAttr]";
  *(&v28 + 1) = 64;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v40;
      v20 = __p;
      if (v40 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v40 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v37;
    if (v37)
    {
      v22 = v38;
      v23 = v37;
      if (v38 != v37)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v37;
      }

      v38 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::IntegerAttr]";
  *(&v28 + 1) = 67;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v40;
      v19 = __p;
      if (v40 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v40 = v17;
      operator delete(v19);
    }

    v20 = v37;
    if (v37)
    {
      v21 = v38;
      v22 = v37;
      if (v38 != v37)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            MEMORY[0x259C63150](v23, 0x1000C8077774924);
          }
        }

        while (v21 != v20);
        v22 = v37;
      }

      v38 = v20;
      operator delete(v22);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v16;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t *mlir::pdl_interp::CheckOperandCountOp::getCount(mlir::pdl_interp::CheckOperandCountOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::setCount(mlir::pdl_interp::CheckOperandCountOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::setCompareAtLeast(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 64) = this;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return this;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a3;
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 8) = a4;
  if (a5)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = a5;
  }

  v15 = *(a2 + 208);
  if (v15 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v15) = a6;
  v16 = *(a2 + 212);
  v17 = *(a2 + 208) + 1;
  *(a2 + 208) = v17;
  if (v17 >= v16)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v17) = a7;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::CheckOperandCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a5;
  result = mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a6;
  if (a7)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *v17 = a7;
  }

  v18 = *(a2 + 208);
  if (v18 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v18) = a8;
  v19 = *(a2 + 212);
  v20 = *(a2 + 208) + 1;
  *(a2 + 208) = v20;
  if (v20 >= v19)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v20) = a9;
  ++*(a2 + 208);
  v21 = *(a2 + 72);
  if (a4 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v22 = 0;
    v23 = *(a2 + 64) + 8 * v21;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v22);
      *(v23 + 8 * v22++) = result;
    }

    while (a4 != v22);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + a4;
  return result;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = result;
  if (!a5)
  {
    v17 = *(a2 + 208);
    if (v17 < *(a2 + 212))
    {
      goto LABEL_4;
    }

LABEL_9:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v15);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = result;
  v17 = *(a2 + 208);
  if (v17 >= *(a2 + 212))
  {
    goto LABEL_9;
  }

LABEL_4:
  *(*(a2 + 200) + 8 * v17) = a6;
  v18 = *(a2 + 212);
  v19 = *(a2 + 208) + 1;
  *(a2 + 208) = v19;
  if (v19 >= v18)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v19) = a7;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::CheckOperandCountOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9)
{
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a6);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = result;
  if (!a7)
  {
    v20 = *(a2 + 208);
    if (v20 < *(a2 + 212))
    {
      goto LABEL_4;
    }

LABEL_15:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v18);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *v26 = result;
  v20 = *(a2 + 208);
  if (v20 >= *(a2 + 212))
  {
    goto LABEL_15;
  }

LABEL_4:
  *(*(a2 + 200) + 8 * v20) = a8;
  v21 = *(a2 + 212);
  v22 = *(a2 + 208) + 1;
  *(a2 + 208) = v22;
  if (v22 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v22) = a9;
  ++*(a2 + 208);
  v23 = *(a2 + 72);
  if (a4 + v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v24 = 0;
    v25 = *(a2 + 64) + 8 * v23;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v24);
      *(v25 + 8 * v24++) = result;
    }

    while (a4 != v24);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + a4;
  return result;
}