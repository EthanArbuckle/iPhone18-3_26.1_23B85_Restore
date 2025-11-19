void anonymous namespace::Canonicalizer::~Canonicalizer(_anonymous_namespace_::Canonicalizer *this)
{
  *this = &unk_28685BD90;
  v2 = *(this + 301);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_28685BE48;
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(this + 260);
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(this + 226);
  *(this + 200) = &unk_28689F938;
  v3 = *(this + 223);
  if (v3 == (this + 1760))
  {
    (*(*v3 + 32))(v3);
    *(this + 200) = &unk_28689F010;
    v4 = *(this + 212);
    if (v4 != *(this + 211))
    {
LABEL_8:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(this + 200) = &unk_28689F010;
    v4 = *(this + 212);
    if (v4 != *(this + 211))
    {
      goto LABEL_8;
    }
  }

  v5 = *(this + 208);
  if (v5 != this + 1680)
  {
    free(v5);
  }

  *(this + 173) = &unk_28685E3C0;
  v6 = *(this + 197);
  if (v6 == (this + 1552))
  {
    (*(*v6 + 32))(v6);
    *(this + 173) = &unk_28689F010;
    v7 = *(this + 185);
    if (v7 != *(this + 184))
    {
LABEL_15:
      free(v7);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 173) = &unk_28689F010;
    v7 = *(this + 185);
    if (v7 != *(this + 184))
    {
      goto LABEL_15;
    }
  }

  v8 = *(this + 181);
  if (v8 != this + 1464)
  {
    free(v8);
  }

  *(this + 146) = &unk_28685E3C0;
  v9 = *(this + 170);
  if (v9 == (this + 1336))
  {
    (*(*v9 + 32))(v9);
    *(this + 146) = &unk_28689F010;
    v10 = *(this + 158);
    if (v10 != *(this + 157))
    {
LABEL_22:
      free(v10);
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    *(this + 146) = &unk_28689F010;
    v10 = *(this + 158);
    if (v10 != *(this + 157))
    {
      goto LABEL_22;
    }
  }

  v11 = *(this + 154);
  if (v11 != this + 1248)
  {
    free(v11);
  }

  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(this + 69);
  *(this + 43) = &unk_28689F938;
  v12 = *(this + 66);
  if (v12 == (this + 504))
  {
    (*(*v12 + 32))(v12);
    *(this + 43) = &unk_28689F010;
    v13 = *(this + 55);
    if (v13 != *(this + 54))
    {
LABEL_29:
      free(v13);
    }
  }

  else
  {
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    *(this + 43) = &unk_28689F010;
    v13 = *(this + 55);
    if (v13 != *(this + 54))
    {
      goto LABEL_29;
    }
  }

  v14 = *(this + 51);
  if (v14 != this + 424)
  {
    free(v14);
  }

  mlir::Pass::~Pass(this);
}

{

  JUMPOUT(0x259C63180);
}

__n128 anonymous namespace::Canonicalizer::runOnOperation(__n128 *this)
{
  v1 = this[2].n128_u64[1] & 0xFFFFFFFFFFFFFFF8;
  v2 = this[150].n128_i64[0];
  v6 = this[147];
  v7 = this[148];
  result = this[149];
  v4 = *(v1 + 44);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = (((v1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40));
    v9 = 0;
    v8[0] = v6;
    v8[1] = v7;
    v8[2] = result;
    mlir::applyPatternsAndFoldGreedily(v5, v2, v8);
  }

  return result;
}

void anonymous namespace::Canonicalizer::initialize(_anonymous_namespace_::Canonicalizer *this, mlir::MLIRContext *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *(this + 2352) = *(this + 472);
  *(this + 589) = *(this + 170);
  *(this + 295) = *(this + 162);
  *(this + 296) = *(this + 189);
  v13 = a2;
  *__p = 0u;
  v15 = 0u;
  v16 = v18;
  v17 = 0x600000000;
  v18[6] = 0;
  v18[7] = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0x2800000000;
  v23 = 0;
  v24 = 0;
  v25 = 0x2800000000;
  mlir::MLIRContext::getLoadedDialects(a2, &v11);
  v3 = v11;
  v4 = v12;
  if (v11 != v12)
  {
    do
    {
      v5 = *v3++;
      (*(*v5 + 16))(v5, &v13);
    }

    while (v3 != v4);
    v3 = v11;
  }

  if (v3)
  {
    v12 = v3;
    operator delete(v3);
  }

  RegisteredOperations = mlir::MLIRContext::getRegisteredOperations(a2);
  if (v7)
  {
    v8 = RegisteredOperations;
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      (*(*v10 + 24))(v10, &v13, a2);
      v9 -= 8;
    }

    while (v9);
  }

  operator new();
}

uint64_t mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6, uint64_t *a7)
{
  v18 = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v12[1] = a4;
  v15 = a2;
  v16 = 0;
  v9 = llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(a1, v12, &v15, a5, a6, a7);
  *(v9 + 608) = 0;
  *v9 = &unk_28685C020;
  *(v9 + 600) = &unk_28685C0A0;
  v15 = (v9 + 600);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v15);
  v13[0] = &unk_28685C330;
  v13[1] = a1;
  v17 = &v15;
  v14 = v13;
  v15 = &unk_28685C330;
  v16 = a1;
  std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::swap[abi:nn200100](&v15, a1 + 568);
  if (v17 != &v15)
  {
    if (v17)
    {
      (*(*v17 + 5))();
    }

    v10 = v14;
    if (v14 != v13)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v10 + 32))(v10);
    return a1;
  }

  (*(*v17 + 4))(v17);
  v10 = v14;
  if (v14 == v13)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  return a1;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v23 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    v13 = 0;
    v14 = (v12 + 8);
    if (a4)
    {
      v15 = (v12 + 8);
      while (1)
      {
        v16 = *v15;
        v15 += 6;
        if (v16 == a4)
        {
          a1 = memcmp(*(v14 - 1), a3, a4);
          if (!a1)
          {
            break;
          }
        }

        ++v13;
        v14 = v15;
        if (v11 == v13)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
        v17 = *v14;
        v14 += 6;
        if (!v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          goto LABEL_17;
        }
      }
    }

    v18 = *(v12 + 48 * v13 + 40);
    v23 = v18;
  }

  else
  {
LABEL_17:
    v25 = 1283;
    v24[0] = "Cannot find option named '";
    v24[2] = a3;
    v24[3] = a4;
    v26[0] = v24;
    v26[2] = "'!";
    v27 = 770;
    v19 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v26, 0, 0, v19))
    {
      return 1;
    }

    v18 = 0;
  }

  *(v7 + 128) = v18;
  *(v7 + 12) = a2;
  v21 = *(v7 + 592);
  if (v21)
  {
    (*(*v21 + 48))(v21, &v23);
    return 0;
  }

  else
  {
    v22 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getValueExpectedFlagDefault(v22);
  }
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::Pass::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(void *a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1);

  JUMPOUT(0x259C63180);
}

void *llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::printOptionValue(void *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_28685C148;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 19), result, &v6, (result + 17), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getExtraOptionNames(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 160) + 24))
  {
    v3 = result + 152;
    result = (*(*(result + 152) + 16))(result + 152);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        result = (*(*v3 + 24))(v3, v5);
        v7 = *(a2 + 8);
        if (v7 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = (*a2 + 16 * v7);
        *v8 = result;
        v8[1] = v6;
        ++*(a2 + 8);
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }

  return result;
}

void *mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::print(uint64_t a1, llvm::raw_ostream *this)
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
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
    goto LABEL_8;
  }

  v7 = llvm::raw_ostream::write(this, v4, v5);
  v6 = *(v7 + 4);
  if (v6 < *(v7 + 3))
  {
    goto LABEL_7;
  }

LABEL_3:
  llvm::raw_ostream::write(v7, 61);
LABEL_8:
    ;
  }

  v10 = *(i - 44);
  v11 = *(i - 36);
  result = *(this + 4);
  if (v11 <= *(this + 3) - result)
  {
    if (v11)
    {
      v13 = *(i - 36);
      result = memcpy(result, v10, v11);
      *(this + 4) += v13;
    }
  }

  else
  {

    return llvm::raw_ostream::write(this, v10, v11);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 472);
  *(result + 608) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option((a1 - 600));

  JUMPOUT(0x259C63180);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 472) = *(a2 - 472);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, int **a5, uint64_t *a6)
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
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685C148;
  *(a1 + 144) = 0;
  *a1 = &unk_28685C0E0;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 152) = &unk_28685C1D0;
  *(a1 + 568) = &unk_28685C2A0;
  *(a1 + 592) = a1 + 568;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v14 = **a5;
  *(a1 + 128) = v14;
  *(a1 + 148) = 1;
  *(a1 + 144) = v14;
  v15 = *(a6 + 2);
  if (v15)
  {
    v16 = *a6;
    v17 = v16 + 40 * v15;
    do
    {
      llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::addLiteralOption<int>(a1 + 152, *v16, *(v16 + 8), (v16 + 16), *(v16 + 24), *(v16 + 32));
      v16 += 40;
    }

    while (v16 != v17);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(void *a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1);

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option((a1 - 600));

  JUMPOUT(0x259C63180);
}

void *llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~opt(void *a1)
{
  *a1 = &unk_28685C0E0;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_28685C250;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_28689F010;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

void llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~opt(void *a1)
{
  *a1 = &unk_28685C0E0;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_28685C250;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_28689F010;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>::~GenericOptionParser(void *result)
{
  *result = &unk_28685C250;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_28685C250;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

void *llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::~parser(void *result)
{
  *result = &unk_28685C250;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::~parser(void *a1)
{
  *a1 = &unk_28685C250;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::{lambda(mlir::GreedySimplifyRegionLevel const&)#1},std::allocator<llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::{lambda(mlir::GreedySimplifyRegionLevel const&)#1}>,void ()(mlir::GreedySimplifyRegionLevel const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257369AEDLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257369AEDLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257369AEDLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257369AEDLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *&v14 = a5;
  *(&v14 + 1) = a6;
  v15 = &unk_28685C148;
  v17 = 1;
  v16 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v13 || v7 + 48 * v8 <= &v13)
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow();
  }

  v9 = v7 + 48 * *(a1 + 24);
  v10 = v14;
  *v9 = v13;
  *(v9 + 16) = v10;
  *(v9 + 32) = &unk_28685C1B0;
  v11 = v16;
  *(v9 + 44) = v17;
  *(v9 + 40) = v11;
  *(v9 + 32) = &unk_28685C148;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

uint64_t std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
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
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_25GreedySimplifyRegionLevelENS4_19GenericOptionParserIS6_EEEC1IJN4llvm2cl4descENSC_11initializerIS6_EENSC_11ValuesClassEEEERS4_NSB_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISP_EEFvRKS6_EE7__cloneEPNS0_6__baseISU_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685C330;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_25GreedySimplifyRegionLevelENS4_19GenericOptionParserIS6_EEEC1IJN4llvm2cl4descENSC_11initializerIS6_EENSC_11ValuesClassEEEERS4_NSB_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISP_EEFvRKS6_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(void *a1)
{
  *a1 = &unk_28685C0E0;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_28685C250;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_28689F010;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v8 = llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(a1, v11, &v14, a5, a6);
  *(v8 + 208) = 0;
  *v8 = &unk_28685E300;
  *(v8 + 200) = &unk_28685E380;
  v14 = (v8 + 200);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v14);
  v12[0] = &unk_28685C3C0;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_28685C3C0;
  v15 = a1;
  std::__function::__value_func<void ()(long long const&)>::swap[abi:nn200100](&v14, a1 + 168);
  if (v16 != &v14)
  {
    if (v16)
    {
      (*(*v16 + 5))();
    }

    v9 = v13;
    if (v13 != v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v9 + 32))(v9);
    return a1;
  }

  (*(*v16 + 4))(v16);
  v9 = v13;
  if (v13 == v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  return a1;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<long long>::parse(a1 + 160, a1, a3, a4, a5, a6, &v11);
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
      return llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void *mlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_28685E3C0;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_28685E3C0;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 152) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v6 = *(a1 + 144);
    v8 = *(a1 + 152);
    v7[0] = &unk_28685E428;
    v7[1] = v6;
    llvm::cl::parser<long long>::printOptionDiff((a1 + 160), a1, v5, v7, a2);
  }
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::setDefault(uint64_t result)
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

llvm::raw_ostream *mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::print(void *a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = a1[3];
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
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = a1[16];

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 72);
  *(result + 208) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_28685E3C0;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_28689F010;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_28689F010;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  *(a1 - 200) = &unk_28685E3C0;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_28689F010;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_28689F010;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

llvm::raw_ostream *non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 184);
  v5 = *(a1 - 176);
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
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = *(a1 - 72);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 72) = *(a2 - 72);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, int **a5)
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
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_28685E428;
  *a1 = &unk_28685E3C0;
  *(a1 + 160) = &unk_28689F378;
  *(a1 + 168) = &unk_28685E448;
  *(a1 + 192) = a1 + 168;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v12 = **a5;
  *(a1 + 128) = v12;
  *(a1 + 152) = 1;
  *(a1 + 144) = v12;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_28685E3C0;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_28685E3C0;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_28685E3C0;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_28689F010;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_28689F010;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  *(a1 - 200) = &unk_28685E3C0;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_28689F010;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_28689F010;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void *llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::~opt(void *a1)
{
  *a1 = &unk_28685E3C0;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::~opt(void *a1)
{
  *a1 = &unk_28685E3C0;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__value_func<void ()(long long const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
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
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685C3C0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28685C468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::impl::CompositeFixedPointPassBase<anonymous namespace::CompositeFixedPointPass>::CompositeFixedPointPassBase(uint64_t a1)
{
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
  *a1 = &unk_28685C558;
  *&v5 = "Composite pass display name";
  *(&v5 + 1) = 27;
  v4 = "CompositeFixedPointPass";
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [24]>>(a1 + 344, (a1 + 152), "name", 4, &v5, &v4);
  *(a1 + 344) = &unk_28685B5D0;
  *(a1 + 576) = &unk_28685B650;
  *&v5 = "Composite pass inner pipeline";
  *(&v5 + 1) = 29;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "pipeline", 8, &v5);
  *(a1 + 592) = &unk_28685B5D0;
  *(a1 + 824) = &unk_28685B650;
  *&v5 = "Maximum number of iterations if inner pipeline";
  *(&v5 + 1) = 46;
  v3 = 10;
  v4 = &v3;
  mlir::detail::PassOptions::Option<int,llvm::cl::parser<int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 840, (a1 + 152), "max-iterations", 14, &v5, &v4);
  *(a1 + 840) = &unk_28685C648;
  *(a1 + 1032) = &unk_28685C6C8;
  return a1;
}

void anonymous namespace::CompositeFixedPointPass::~CompositeFixedPointPass(_anonymous_namespace_::CompositeFixedPointPass *this)
{
  mlir::OpPassManager::~OpPassManager((this + 1048));
  *this = &unk_28685C558;
  *(this + 105) = &unk_28689F710;
  v2 = *(this + 128);
  if (v2 == (this + 1000))
  {
    (*(*v2 + 32))(v2);
    *(this + 105) = &unk_28689F010;
    v3 = *(this + 117);
    if (v3 != *(this + 116))
    {
LABEL_5:
      free(v3);
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    *(this + 105) = &unk_28689F010;
    v3 = *(this + 117);
    if (v3 != *(this + 116))
    {
      goto LABEL_5;
    }
  }

  v4 = *(this + 113);
  if (v4 != this + 920)
  {
    free(v4);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::CompositeFixedPointPass::getName(_anonymous_namespace_::CompositeFixedPointPass *this)
{
  if (*(this + 495) >= 0)
  {
    return this + 472;
  }

  else
  {
    return *(this + 59);
  }
}

uint64_t anonymous namespace::CompositeFixedPointPass::initializeOptions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void ***), uint64_t a5)
{
  v8 = mlir::Pass::initializeOptions(a1, a2, a3, a4, a5);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 743);
  if (v9 >= 0)
  {
    v10 = (a1 + 720);
  }

  else
  {
    v10 = *(a1 + 720);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 743);
  }

  else
  {
    v11 = *(a1 + 728);
  }

  v12 = llvm::errs(v8);
  if (mlir::parsePassPipeline(v10, v11, (a1 + 1048), v12))
  {
    return 1;
  }

  v14 = "Failed to parse composite pass pipeline";
  v15 = 259;
  return a4(a5, &v14);
}

void anonymous namespace::CompositeFixedPointPass::runOnOperation(_anonymous_namespace_::CompositeFixedPointPass *this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  mlir::OperationFingerPrint::OperationFingerPrint(&v33, (v2 & 0xFFFFFFFFFFFFFFF8), 1);
  v3 = *(this + 242);
  if ((*(this + 13))(*(this + 14), this + 1048, v2 & 0xFFFFFFFFFFFFFFF8))
  {
    v4 = (v3 & ~(v3 >> 31)) + 1;
    while (--v4)
    {
      mlir::OperationFingerPrint::OperationFingerPrint(&v21, (v2 & 0xFFFFFFFFFFFFFFF8), 1);
      if (v21 == v33 && *(&v21 + 1) == *(&v33 + 1) && v22 == v34)
      {
        return;
      }

      v33 = v21;
      v34 = v22;
      if (((*(this + 13))(*(this + 14), this + 1048, v2 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v15[0] = "Composite pass ";
    v15[2] = this + 472;
    v16 = 1027;
    v17[0] = v15;
    v17[2] = "+ didn't converge in ";
    v18 = 770;
    v19[0] = v17;
    v19[2] = v3;
    v20 = 2562;
    *&v21 = v19;
    v22 = " iterations";
    v23 = 770;
    mlir::Operation::emitWarning((v2 & 0xFFFFFFFFFFFFFFF8), &v21, v24);
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
      if (v27)
      {
        v11 = v28;
        v12 = v27;
        if (v28 != v27)
        {
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
          v12 = v27;
        }

        v28 = v10;
        operator delete(v12);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }

  else
  {
LABEL_12:
    *(this + 5) |= 4uLL;
  }
}

BOOL anonymous namespace::CompositeFixedPointPass::initialize(_anonymous_namespace_::CompositeFixedPointPass *this, mlir::MLIRContext *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(this + 242) > 0)
  {
    return 1;
  }

  v4 = mlir::UnknownLoc::get(a2, a2);
  mlir::emitError(v4, &v20);
  if (v20)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "Invalid maxIterations value: ";
    v19 = 29;
    if (v23 >= v24)
    {
      if (v22 > &v18 || v22 + 24 * v23 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v22 + 24 * v23;
    v6 = v18;
    *(v5 + 2) = v19;
    *v5 = v6;
    ++v23;
    if (v20)
    {
      mlir::Diagnostic::operator<<(&v21, *(this + 968));
      if (v20)
      {
        LODWORD(v18) = 3;
        *(&v18 + 1) = "\n";
        v19 = 1;
        if (v23 >= v24)
        {
          if (v22 > &v18 || v22 + 24 * v23 <= &v18)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v22 + 24 * v23;
        v8 = v18;
        *(v7 + 2) = v19;
        *v7 = v8;
        ++v23;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v29;
      v11 = __p;
      if (v29 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v29 = v9;
      operator delete(v11);
    }

    v12 = v26;
    if (v26)
    {
      v13 = v27;
      v14 = v26;
      if (v27 != v26)
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
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
    }

    if (v22 != &v25)
    {
      free(v22);
    }
  }

  return v2;
}

uint64_t mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [24]>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, const char **a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v8 = llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [24]>>(a1, v11, &v14, a5, a6);
  *(v8 + 240) = 0;
  *v8 = &unk_28685B690;
  *(v8 + 232) = &unk_28685B710;
  v14 = (v8 + 232);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v14);
  v12[0] = &unk_28685C5C8;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_28685C5C8;
  v15 = a1;
  std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](&v14, a1 + 200);
  if (v16 != &v14)
  {
    if (v16)
    {
      (*(*v16 + 5))();
    }

    v9 = v13;
    if (v13 != v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v9 + 32))(v9);
    return a1;
  }

  (*(*v16 + 4))(v16);
  v9 = v13;
  if (v13 == v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  return a1;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [24]>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, const char **a5)
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
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 152) = &unk_28689F108;
  *(a1 + 160) = 0;
  *a1 = &unk_28689F7C0;
  *(a1 + 192) = &unk_28689F5B8;
  *(a1 + 200) = &unk_28685B770;
  *(a1 + 224) = a1 + 200;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::initializer<char [24]>::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(a5, a1);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void llvm::cl::initializer<char [24]>::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(const char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = strlen(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  std::string::operator=((a2 + 128), &__dst);
  *(a2 + 184) = 1;
  std::string::operator=((a2 + 160), &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA24_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685C5C8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA24_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA24_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA24_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA24_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA24_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::PassOptions::Option<int,llvm::cl::parser<int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v8 = llvm::cl::opt<int,false,llvm::cl::parser<int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(a1, v11, &v14, a5, a6);
  *(v8 + 200) = 0;
  *v8 = &unk_28685C758;
  *(v8 + 192) = &unk_28685C7D8;
  v14 = (v8 + 192);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v14);
  v12[0] = &unk_28685C910;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_28685C910;
  v15 = a1;
  std::__function::__value_func<void ()(int const&)>::swap[abi:nn200100](&v14, a1 + 160);
  if (v16 != &v14)
  {
    if (v16)
    {
      (*(*v16 + 5))();
    }

    v9 = v13;
    if (v13 != v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v9 + 32))(v9);
    return a1;
  }

  (*(*v16 + 4))(v16);
  v9 = v13;
  if (v13 == v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  return a1;
}

void *mlir::Pass::Option<int,llvm::cl::parser<int>>::~Option(void *a1)
{
  *a1 = &unk_28689F710;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<int,llvm::cl::parser<int>>::~Option(void *a1)
{
  *a1 = &unk_28689F710;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<int,llvm::cl::parser<int>>::print(uint64_t a1, llvm::raw_ostream *this)
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
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = *(a1 + 128);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t mlir::detail::PassOptions::Option<int,llvm::cl::parser<int>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 64);
  *(result + 200) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<int,llvm::cl::parser<int>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_28689F710;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 192) = &unk_28689F010;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 192) = &unk_28689F010;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  *(a1 - 192) = &unk_28689F710;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 192) = &unk_28689F010;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 192) = &unk_28689F010;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

llvm::raw_ostream *non-virtual thunk tomlir::detail::PassOptions::Option<int,llvm::cl::parser<int>>::print(uint64_t a1, llvm::raw_ostream *this)
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
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = *(a1 - 64);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<int,llvm::cl::parser<int>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 64) = *(a2 - 64);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, int **a5)
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
  *(a1 + 136) = &unk_28685C818;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F710;
  *(a1 + 152) = &unk_28689F2B8;
  *(a1 + 160) = &unk_28685C880;
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

void *mlir::detail::PassOptions::Option<int,llvm::cl::parser<int>>::~Option(void *a1)
{
  *a1 = &unk_28689F710;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<int,llvm::cl::parser<int>>::~Option(void *a1)
{
  *a1 = &unk_28689F710;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<int,llvm::cl::parser<int>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_28689F710;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 192) = &unk_28689F010;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 192) = &unk_28689F010;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  *(a1 - 192) = &unk_28689F710;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 192) = &unk_28689F010;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 192) = &unk_28689F010;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<llvm::cl::opt<int,false,llvm::cl::parser<int>>::{lambda(int const&)#1},std::allocator<llvm::cl::opt<int,false,llvm::cl::parser<int>>::{lambda(int const&)#1}>,void ()(int const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025736A306)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025736A306 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025736A306))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025736A306 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(int const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
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
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIiN4llvm2cl6parserIiEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKiEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685C910;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIiN4llvm2cl6parserIiEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKiEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionIiN4llvm2cl6parserIiEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionIiN4llvm2cl6parserIiEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionIiN4llvm2cl6parserIiEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionIiN4llvm2cl6parserIiEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void anonymous namespace::ControlFlowSink::~ControlFlowSink(_anonymous_namespace_::ControlFlowSink *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ControlFlowSink::runOnOperation(_anonymous_namespace_::ControlFlowSink *this)
{
  v2 = *(this + 6);
  v9[0] = v2;
  v3 = *(v2 + 72);
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) == 0 && v4)
  {
    do
    {
      v5 = *(v4 + 72);
      v4 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v5 & 4) == 0 && v4);
  }

  v6 = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>(v2 + 24, v4);
  v7 = *(this + 5);
  v9[0] = this;
  v9[1] = v6;
  v10 = v9;
  return mlir::detail::walk<mlir::ForwardIterator>((v7 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_115ControlFlowSink14runOnOperationEvE3__0NS1_23RegionBranchOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v10, 1);
}

uint64_t mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>(uint64_t a1, std::recursive_mutex **a2)
{
  {
    v4 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    v4 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v7 = ((v4 >> 4) ^ (v4 >> 9)) & (v6 - 1);
  v8 = *(v5 + 16 * v7);
  if (v4 != v8)
  {
    v23 = 1;
    while (v8 != -4096)
    {
      v24 = v7 + v23++;
      v7 = v24 & (v6 - 1);
      v8 = *(v5 + 16 * v7);
      if (v4 == v8)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    if (a2)
    {
      v25 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DominanceInfo]";
      v26 = 69;
      v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
      if (v26 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v26;
      }

      v11 = &v25[v10];
      v12 = v26 - v10;
      if (v26 - v10 >= 0x12)
      {
        v13 = 18;
      }

      else
      {
        v13 = v26 - v10;
      }

      v14 = &v11[v13];
      v15 = v12 - v13;
      if (v15 >= v15 - 1)
      {
        v16 = v15 - 1;
      }

      else
      {
        v16 = v15;
      }

      if (v16 >= 6)
      {
        if (*v14 == 1919511661 && *(v14 + 4) == 14906)
        {
          v14 += 6;
          v16 -= 6;
        }

        else if (v16 >= 0x17 && *v14 == 0x6F6D796E6F6E6128 && *(v14 + 8) == 0x73656D616E207375 && *(v14 + 15) == 0x3A3A296563617073)
        {
          v14 += 23;
          v16 -= 23;
        }
      }

      mlir::PassInstrumentor::runBeforeAnalysis(a2, v14, v16, v4, *a1);
    }

    operator new();
  }

LABEL_4:
  if (v7 == v6)
  {
    goto LABEL_5;
  }

  v21 = *(v5 + 16 * v7 + 8);
  if (*(a1 + 40) == v21)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 32) + 16 * v21 + 8) + 8;
}

const char *llvm::getTypeName<mlir::DominanceInfo>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DominanceInfo]";
  v6 = 69;
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

void mlir::detail::AnalysisModel<mlir::DominanceInfo>::~AnalysisModel(void *a1)
{
  *a1 = &unk_28685CAA0;
  mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase();
}

{
  *a1 = &unk_28685CAA0;
  mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase();
}

BOOL mlir::detail::AnalysisModel<mlir::DominanceInfo>::invalidate(int a1, const void ***this)
{
  v3 = mlir::detail::PreservedAnalyses::isPreserved<mlir::DominanceInfo>(this);
  if (!v3)
  {
    mlir::detail::PreservedAnalyses::unpreserve<mlir::DominanceInfo>(this);
  }

  return !v3;
}

void mlir::detail::PreservedAnalyses::unpreserve<mlir::DominanceInfo>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
LABEL_3:
      v4 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      if (v4)
      {
        *v4 = -2;
        ++*(this + 6);
      }

      return;
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = v3; *i != v2; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return;
      }
    }

    v8 = v5 - 1;
    *(this + 5) = v8;
    *i = v3[v8];
  }
}

BOOL mlir::detail::PreservedAnalyses::isPreserved<mlir::DominanceInfo>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
LABEL_3:
      v3 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      v4 = *this;
      v5 = this[1];
      if (!v3)
      {
        v6 = 16;
        if (v5 == v4)
        {
          v6 = 20;
        }

        v3 = &v5[*(this + v6)];
      }

      goto LABEL_14;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v3 != v2)
    {
      ++v3;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = &v4[v7];
  }

  v5 = v4;
LABEL_14:
  v9 = v5 == v4;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  return v3 != &v5[*(this + v10)];
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_115ControlFlowSink14runOnOperationEvE3__0NS1_23RegionBranchOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2) && a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v5 = **a1;
    v8 = v10;
    v9 = 0x600000000;
    mlir::getSinglyExecutedRegionsToSink(a2, InterfaceFor, &v8);
    mlir::RegionRange::RegionRange(v7, v8, v9);
    v6 = mlir::controlFlowSink(v7[0], v7[1]);
    mlir::Pass::Statistic::operator=(v5 + 344, v6);
    if (v8 != v10)
    {
      free(v8);
    }
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *,mlir::Region *)>::callback_fn<anonymous namespace::ControlFlowSink::runOnOperation(void)::$_0::operator() const(mlir::RegionBranchOpInterface)::{lambda(mlir::Operation *,mlir::Region *)#2}>(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v5 = (v4 - 8);
  }

  else
  {
    v5 = 0;
  }

  return mlir::Operation::moveBefore(a2, v5, v5[5]);
}

void mlir::eliminateCommonSubExpressions(mlir *this, mlir::RewriterBase *a2, mlir::DominanceInfo *a3, mlir::Operation *a4, BOOL *a5)
{
  v5[0] = this;
  memset(&v5[1], 0, 24);
  v5[5] = 0;
  v5[6] = 0;
  v5[4] = a2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
}

void sub_25646BC6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }
}

void anonymous namespace::CSEDriver::simplify(_anonymous_namespace_::CSEDriver *this, mlir::Operation *a2, BOOL *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v11, 0, 24);
  v11[3] = v12;
  v11[4] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0;
  v13[0] = 0;
  v13[1] = 1;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = *(a2 + 11);
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = (((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v7 = 24 * (v5 & 0x7FFFFF);
    do
    {
      v6 += 3;
      v7 -= 24;
    }

    while (v7);
  }

  v8 = *(this + 1);
  v9 = *(this + 2);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(**this + 16))(*this, v10);
  }

  if (a3)
  {
    *a3 = *(this + 1) != *(this + 2);
  }

  llvm::deallocate_buffer(v14, (16 * v16));
}

void sub_25646BDB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (v39)
  {
    llvm::deallocate_buffer(*v38, 0x1000);
  }

  if (v41)
  {
    llvm::deallocate_buffer(*v40, *(v40 + 8));
  }

  if (v40 != v37)
  {
    free(v40);
  }

  if (v38 != v36)
  {
    free(v38);
  }
}

void anonymous namespace::CSEDriver::simplifyRegion(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != a3)
  {
    v15 = v12;
    v16 = v11;
    v17 = v10;
    v18 = v9;
    v19 = v8;
    v20 = v7;
    v21 = v6;
    v22 = v5;
    v23 = v4;
    v24 = v3;
    v25 = v13;
    v26 = v14;
    mlir::detail::DominanceInfoBase<false>::getDominanceInfo();
  }
}

void anonymous namespace::CSEDriver::simplifyBlock(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a3 + 32;
  v6 = *(a3 + 40);
  if (v6 != a3 + 32)
  {
    v65 = a3 + 32;
    while (1)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v6);
      v9 = ValuePtr;
      if ((*(ValuePtr + 44) & 0x7FFFFF) != 0)
      {
        {
          v10 = *(ValuePtr + 48);
          if (v10[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v10 = *(v9 + 48);
          if (v10[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
LABEL_9:
            v72 = 0;
            v73 = 0;
            v74[0] = 0;
            v74[1] = &v75;
            v74[2] = 0x400000000;
            v78 = 0;
            v79[0] = 0;
            v77 = v79;
            v79[1] = 1;
            v80 = 0;
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v11 = *(v9 + 44);
            if ((v11 & 0x7FFFFF) != 0)
            {
              v12 = v9 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 32 * *(v9 + 40) + 64;
              v13 = 24 * (v11 & 0x7FFFFF);
              do
              {
                v12 += 24;
                v13 -= 24;
              }

              while (v13);
              llvm::deallocate_buffer(v80, (16 * v82));
            }

            llvm::deallocate_buffer(0, 0);
          }
        }

        if ((*(*v10 + 4))(v10, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          goto LABEL_9;
        }

        v14 = *(v9 + 44);
        if ((v14 & 0x7FFFFF) != 0)
        {
          v15 = v9 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 32 * *(v9 + 40) + 64;
          v16 = 24 * (v14 & 0x7FFFFF);
          do
          {
            v15 += 24;
            v16 -= 24;
          }

          while (v16);
        }
      }

      v68 = v9;
      {
      }

      if (((*(**(v9 + 48) + 32))(*(v9 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        v18 = v68;
        if (mlir::isOpTriviallyDead(v68, v17))
        {
          std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 8, &v68);
          ++*(a1 + 72);
          goto LABEL_4;
        }

        v20 = *(v18 + 11);
        v21 = v20 & 0x7FFFFF;
        if ((v20 & 0x7FFFFF) != 0)
        {
          v22 = (((v18 + 16 * ((v20 >> 23) & 1) + ((v20 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 10));
          v23 = 24 * v21;
          do
          {
            if (v22 != *v22)
            {
              v24 = v22[1];
              if (v22 == v24 || v22 != *(v24 + 8))
              {
                goto LABEL_4;
              }
            }

            v22 += 3;
            v23 -= 24;
          }

          while (v23);
        }

        if (mlir::isMemoryEffectFree(v18, v19))
        {
          if (v25)
          {
            ++*(a1 + 64);
          }

          else
          {
            v27 = a2[16];
            v29 = *(v27 + 16);
            v30 = *v28;
            Slow = *a2;
            if (*a2)
            {
              *a2 = *Slow;
            }

            else
            {
              a2[11] += 32;
              v39 = a2[1];
              if (v39 && (Slow = ((v39 + 7) & 0xFFFFFFFFFFFFFFF8), (Slow + 4) <= a2[2]))
              {
                a2[1] = Slow + 4;
              }

              else
              {
                v60 = v29;
                v62 = v28;
                Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((a2 + 1), 32, 32, 3);
                v29 = v60;
                v28 = v62;
              }
            }

            Slow[2] = v18;
            Slow[3] = v18;
            *Slow = v29;
            Slow[1] = v30;
            *v28 = Slow;
            *(v27 + 16) = Slow;
          }

          goto LABEL_4;
        }

        if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v18))
        {
          v66 = 0;
          v67 = 0;
          goto LABEL_4;
        }

        v26 = v18 ? mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v18) : 0;
        v66 = v18;
        v67 = v26;
        if (v18)
        {
          if (mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>(&v66))
          {
            break;
          }
        }
      }

LABEL_4:
      v6 = *(v6 + 8);
      if (v6 == v5)
      {
        goto LABEL_89;
      }
    }

    if (!v32)
    {
      goto LABEL_43;
    }

    v33 = v32[2];
    if (v33 != *(v18 + 2))
    {
      goto LABEL_43;
    }

    v71 = v32;
    if (v32[1] == v33 + 32)
    {
      v43 = 0;
    }

    else
    {
      v42 = v32;
      v43 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v32[1]);
      v32 = v42;
    }

    v59 = v32;
    v72 = v32;
    v73 = 0;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::try_emplace<std::pair<mlir::Operation *,decltype(nullptr)>>(a1 + 40, &v71, &v72, &v69);
    if (v70 == 1)
    {
      if (*(v69 + 16))
      {
        goto LABEL_43;
      }

      v43 = *(v69 + 8);
    }

    if (!v43)
    {
LABEL_60:
      v44 = v69;
      *(v69 + 8) = v18;
      *(v44 + 16) = 0;
      goto LABEL_4;
    }

    while (1)
    {
      if (v43 == v18)
      {
        goto LABEL_60;
      }

      mlir::getEffectsRecursively(v43, &v72);
      if ((v76 & 1) == 0)
      {
        {
          goto LABEL_83;
        }

        goto LABEL_79;
      }

      v61 = v43;
      if (v73)
      {
        v45 = v72;
        for (i = 40 * v73; i; i -= 40)
        {
          v47 = **v45;
          {
            if (v47 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
            {
              goto LABEL_78;
            }
          }

          else
          {
            if (v47 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
            {
LABEL_78:
              v5 = v65;
              v43 = v61;
              {
                goto LABEL_79;
              }

LABEL_83:
              {
                mlir::MemoryEffects::Write::Write(&mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance);
              }

LABEL_79:
              v49 = v69;
              *(v69 + 8) = v43;
              *(v49 + 16) = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
              if (v76 == 1 && v72 != v74)
              {
                free(v72);
              }

LABEL_43:
              v34 = a2[16];
              v36 = *(v34 + 16);
              v37 = *v35;
              v38 = *a2;
              if (*a2)
              {
                *a2 = *v38;
              }

              else
              {
                a2[11] += 32;
                v40 = a2[1];
                if (v40 && (v38 = ((v40 + 7) & 0xFFFFFFFFFFFFFFF8), (v38 + 4) <= a2[2]))
                {
                  a2[1] = v38 + 4;
                }

                else
                {
                  v63 = v35;
                  v38 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((a2 + 1), 32, 32, 3);
                  v35 = v63;
                }
              }

              v41 = v68;
              v38[2] = v68;
              v38[3] = v41;
              *v38 = v36;
              v38[1] = v37;
              *v35 = v38;
              *(v34 + 16) = v38;
              goto LABEL_4;
            }
          }

          v45 += 5;
        }
      }

      v48 = *(v61 + 1);
      if (v48 == *(v61 + 2) + 32)
      {
        v43 = 0;
        v5 = v65;
        if (v76 == 1)
        {
LABEL_76:
          if (v72 != v74)
          {
            free(v72);
          }
        }
      }

      else
      {
        v43 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v48);
        v5 = v65;
        if (v76 == 1)
        {
          goto LABEL_76;
        }
      }

      if (!v43)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_89:
  v50 = *(a1 + 48);
  if (v50 || *(a1 + 52))
  {
    v51 = *(a1 + 56);
    if (v51 > 4 * v50 && v51 >= 0x41)
    {
      llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::shrink_and_clear(a1 + 40);
      return;
    }

    if (!v51)
    {
      goto LABEL_102;
    }

    v52 = *(a1 + 40);
    v53 = 24 * v51 - 24;
    if (v53 > 0x17)
    {
      v55 = v53 / 0x18 + 1;
      v54 = (v52 + 24 * (v55 & 0x1FFFFFFFFFFFFFFELL));
      v56 = *(a1 + 40);
      v57 = v55 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v56 = -4096;
        v56[3] = -4096;
        v56 += 6;
        v57 -= 2;
      }

      while (v57);
      if (v55 == (v55 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_102;
      }
    }

    else
    {
      v54 = *(a1 + 40);
    }

    v58 = (v52 + 24 * v51);
    do
    {
      *v54 = -4096;
      v54 += 3;
    }

    while (v54 != v58);
LABEL_102:
    *(a1 + 48) = 0;
  }
}

int32x2_t **llvm::ScopedHashTableScope<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>>::~ScopedHashTableScope(int32x2_t **a1)
{
  v2 = *a1;
  (*a1)[16] = a1[1];
  v3 = a1[2];
  if (v3)
  {
    do
    {
      if (v3[1])
      {
      }

      else
      {
        v5 = v2[15].i32[0];
        if (v5)
        {
          v6 = v2[13];
          v7 = v5 - 1;
          v13 = v7 & mlir::OperationEquivalence::computeHash(*&v3[2], llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
          v14 = (*&v6 + 16 * v13);
          v15 = v3[2];
          v16 = *v14;
          if (v15 == *v14)
          {
LABEL_16:
            *v14 = -8192;
            v2[14] = vadd_s32(v2[14], 0x1FFFFFFFFLL);
          }

          else
          {
            v17 = 1;
            while (1)
            {
              if (v16 != -4096 && v16 != -8192 && v15 != -8192 && v15 != -4096)
              {
                mlir::OperationEquivalence::isEquivalentTo(v15, v16, 1u, v8, v9, v10, v11, v12);
              }

              if (v16 == -4096)
              {
                break;
              }

              v18 = v13 + v17++;
              v13 = v18 & v7;
              v14 = (*&v6 + 16 * (v18 & v7));
              v15 = v3[2];
              v16 = *v14;
              if (v15 == *v14)
              {
                goto LABEL_16;
              }
            }
          }
        }
      }

      v4 = *v3;
      a1[2] = *v3;
      v2 = *a1;
      *v3 = **a1;
      *v2 = v3;
      v3 = v4;
    }

    while (v4);
  }

  return a1;
}

void *std::deque<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode>>::emplace_back<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode>>(void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[4];
  if (v6 == result[5] + v7)
  {
    v8 = v7 >= 0x200;
    v9 = v7 - 512;
    if (!v8)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    result[4] = v9;
    v18 = *v5;
    result[1] = v5 + 8;
  }

  v14 = v3[5];
  v15 = v3[4] + v14;
  v16 = *(v3[1] + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8));
  v17 = *a2;
  *a2 = 0;
  *(v16 + 8 * (v15 & 0x1FF)) = v17;
  v3[5] = v14 + 1;
  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsIsolatedFromAbove<Empty>]";
  v6 = 91;
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

void std::vector<mlir::Operation *>::push_back[abi:nn200100](uint64_t a1, void *a2)
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

BOOL mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>(uint64_t a1)
{
  v12[20] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0x400000000;
  mlir::MemoryEffectOpInterface::getEffects(a1, &v10);
  if (v11)
  {
    v1 = v10;
    v2 = 40 * v11 - 40;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    do
    {
      v4 = **v1;
      {
        v8 = v2;
        v9 = v1;
        mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>();
        p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
        v2 = v8;
        v1 = v9;
      }

      v6 = v4 == p_opt_class_meths[36];
      v5 = v6;
      v6 = !v6 || v2 == 0;
      v2 -= 40;
      v1 += 5;
    }

    while (!v6);
  }

  else
  {
    v5 = 0;
  }

  if (v10 != v12)
  {
    free(v10);
  }

  return v5;
}

uint64_t llvm::ScopedHashTable<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>>::lookup(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v5 = *(a1 + 104);
    v6 = v3 - 1;
    LODWORD(v12) = v6 & mlir::OperationEquivalence::computeHash(a2, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
    v13 = (v5 + 16 * v12);
    v14 = *v13;
    if (*v13 == a2)
    {
      goto LABEL_15;
    }

    if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v15 = 1;
      while (v14 != -4096)
      {
        v16 = v12 + v15++;
        v12 = v16 & v6;
        v14 = *(v5 + 16 * v12);
        if (v14 == a2)
        {
          v13 = (v5 + 16 * v12);
          goto LABEL_15;
        }
      }
    }

    else
    {
      v17 = 1;
      while (1)
      {
        if ((v14 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          mlir::OperationEquivalence::isEquivalentTo(a2, v14, 1u, v7, v8, v9, v10, v11);
        }

        if (v14 == -4096)
        {
          break;
        }

        v18 = v12 + v17++;
        LODWORD(v12) = v18 & v6;
        v13 = (v5 + 16 * (v18 & v6));
        v14 = *v13;
        if (*v13 == a2)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v13 = (*(a1 + 104) + 16 * *(a1 + 120));
LABEL_15:
  if (v13 == (*(a1 + 104) + 16 * *(a1 + 120)))
  {
    return 0;
  }

  else
  {
    return *(v13[1] + 24);
  }
}

void anonymous namespace::CSEDriver::replaceUsesAndDelete(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4;
  v6 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v51 = a3;
  if (a5)
  {
    v7 = *(*a1 + 16);
    if (v7 && mlir::RewriterBase::Listener::classof(*(*a1 + 16)))
    {
      (*(*v7 + 48))(v7, a3, v5);
    }

    v8 = *v6;
    v9 = *(a3 + 36);
    if (v9)
    {
      v10 = a3 - 16;
    }

    else
    {
      v10 = 0;
    }

    mlir::ValueRange::ValueRange(&v54, v10, v9);
    v11 = *(v5 + 36);
    if (v11)
    {
      v12 = v5 - 16;
    }

    else
    {
      v12 = 0;
    }

    mlir::ValueRange::ValueRange(&v52, v12, v11);
    mlir::RewriterBase::replaceAllUsesWith(v8, v54, v55, v52, v53);
    v13 = (v6 + 1);
    goto LABEL_54;
  }

  v50 = a2;
  v15 = *(*a1 + 16);
  if (v15 && mlir::RewriterBase::Listener::classof(*(*a1 + 16)))
  {
    v16 = *(a3 + 36);
    v17 = (a3 - 16);
    if (!v16)
    {
      v17 = 0;
    }

    v47 = v17;
    v48 = *(a3 + 36);
    if (v16)
    {
      for (i = 0; i != v48; ++i)
      {
        v19 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v47, i);
        v20 = *(a2 + 120);
        if (v19)
        {
          v21 = v20 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          if (!v20)
          {
            goto LABEL_37;
          }

LABEL_25:
          v22 = v19[2];
          v23 = *(a2 + 104);
          v24 = v20 - 1;
          v30 = v24 & mlir::OperationEquivalence::computeHash(v22, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
          v31 = *(v23 + 16 * v30);
          if (v31 == v22)
          {
            continue;
          }

          if ((v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v32 = 1;
            do
            {
              if (v31 == -4096)
              {
                goto LABEL_37;
              }

              v33 = v30 + v32++;
              v30 = v33 & v24;
              v31 = *(v23 + 16 * (v33 & v24));
            }

            while (v31 != v22);
            continue;
          }

          v34 = 1;
          while (1)
          {
            if ((v31 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              mlir::OperationEquivalence::isEquivalentTo(v22, v31, 1u, v25, v26, v27, v28, v29);
            }

            if (v31 == -4096)
            {
              break;
            }

            v35 = v30 + v34++;
            v30 = v35 & v24;
            v31 = *(v23 + 16 * (v35 & v24));
            if (v31 == v22)
            {
              goto LABEL_19;
            }
          }

LABEL_37:
          while (1)
          {
            v19 = *v19;
            if (!v19)
            {
              break;
            }

            v20 = *(a2 + 120);
            if (v20)
            {
              goto LABEL_25;
            }
          }
        }

        (*(*v15 + 48))(v15, a3, a4);
LABEL_19:
        ;
      }
    }
  }

  v6 = a1;
  v36 = *a1;
  v37 = *(a3 + 36);
  if (v37)
  {
    v38 = a3 - 16;
  }

  else
  {
    v38 = 0;
  }

  mlir::ValueRange::ValueRange(&v54, v38, v37);
  v5 = a4;
  v39 = *(a4 + 36);
  if (v39)
  {
    v40 = a4 - 16;
  }

  else
  {
    v40 = 0;
  }

  mlir::ValueRange::ValueRange(&v52, v40, v39);
  v41 = *(v51 + 36);
  if (v41)
  {
    v42 = v51 - 16;
  }

  else
  {
    v42 = 0;
  }

  if (!v41)
  {
LABEL_53:
    v13 = (a1 + 1);
LABEL_54:
    std::vector<mlir::Operation *>::push_back[abi:nn200100](v13, &v51);
    goto LABEL_55;
  }

  v43 = 0;
  while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v42, v43))
  {
    if (v41 == ++v43)
    {
      goto LABEL_53;
    }
  }

LABEL_55:
  if (*(**(v5 + 24) + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    v44 = *(v51 + 24);
    if (*(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      *(v5 + 24) = v44;
    }
  }

  ++v6[8];
}

const char *llvm::getTypeName<mlir::MemoryEffects::Read>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Read]";
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

unint64_t mlir::OperationEquivalence::directHashValue(unint64_t a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * a1 - 0xAE502812AA7333) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::try_emplace<std::pair<mlir::Operation *,decltype(nullptr)>>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 24 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
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
      v9 = (v6 + 24 * (v16 & v7));
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

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
        v9[2] = 0;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 24 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 24 * v6);
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
        v7 = (v4 + 24 * (v13 & v5));
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

void *llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::grow(uint64_t a1, int a2)
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
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result[3 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[3] = -4096;
        v17 += 6;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v27 = *(a1 + 16) - 1;
              v28 = v27 & ((v26 >> 4) ^ (v26 >> 9));
              v25 = *a1 + 24 * v28;
              v29 = *v25;
              if (v26 != *v25)
              {
                v30 = 0;
                v31 = 1;
                while (v29 != -4096)
                {
                  if (v30)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 == -8192;
                  }

                  if (v32)
                  {
                    v30 = v25;
                  }

                  v33 = v28 + v31++;
                  v28 = v33 & v27;
                  v25 = *a1 + 24 * (v33 & v27);
                  v29 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v30)
                {
                  v25 = v30;
                }
              }

LABEL_26:
              *v25 = v26;
              *(v25 + 8) = *(v20 + 8);
              ++*(a1 + 8);
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[3 * v10];
    do
    {
      *v12 = -4096;
      v12 += 3;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = &result[3 * v13];
      do
      {
        *v15 = -4096;
        v15 += 3;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = &result[3 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[3] = -4096;
      v22 += 6;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

void *mlir::MemoryEffects::Write::Write(void *this)
{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    mlir::MemoryEffects::Write::Write();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id;
  }

  return this;
}

{
  {
    v1 = this;
    mlir::MemoryEffects::Write::Write();
    this = v1;
  }

  *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id;
  return this;
}

const char *llvm::getTypeName<mlir::MemoryEffects::Write>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Write]";
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

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<anonymous namespace::CSEDriver::replaceUsesAndDelete(llvm::ScopedHashTable<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>> &,mlir::Operation *,mlir::Operation *,BOOL)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 120);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 16);
  v4 = *(*a1 + 104);
  v5 = v2 - 1;
  v11 = v5 & mlir::OperationEquivalence::computeHash(v3, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
  v12 = *(v4 + 16 * v11);
  if (v12 == v3)
  {
    return 0;
  }

  if ((v3 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v13 = 1;
    do
    {
      result = v12 == -4096;
      if (v12 == -4096)
      {
        break;
      }

      result = 0;
      v15 = v11 + v13++;
      v11 = v15 & v5;
      v12 = *(v4 + 16 * (v15 & v5));
    }

    while (v12 != v3);
  }

  else
  {
    v16 = 1;
    while (1)
    {
      if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        mlir::OperationEquivalence::isEquivalentTo(v3, v12, 1u, v6, v7, v8, v9, v10);
      }

      if (v12 == -4096)
      {
        break;
      }

      result = 0;
      v17 = v11 + v16++;
      v11 = v17 & v5;
      v12 = *(v4 + 16 * (v17 & v5));
      if (v12 == v3)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::operator[](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v19 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v4 = a1;
  v5 = *a1;
  v6 = v3 - 1;
  v12 = (v3 - 1) & mlir::OperationEquivalence::computeHash(*a2, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
  v13 = (v5 + 16 * v12);
  v14 = *a2;
  v15 = *v13;
  if (*a2 != *v13)
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      if (v15 != -4096 && v15 != -8192 && v14 != -8192 && v14 != -4096)
      {
        mlir::OperationEquivalence::isEquivalentTo(v14, v15, 1u, v7, v8, v9, v10, v11);
      }

      a1 = v4;
      if (v15 == -4096)
      {
        break;
      }

      if (v15 == -8192 && v16 == 0)
      {
        v16 = v13;
      }

      v18 = v12 + v17++;
      v12 = v18 & v6;
      v13 = (v5 + 16 * (v18 & v6));
      v14 = *a2;
      v15 = *v13;
      if (*a2 == *v13)
      {
        return v13 + 1;
      }
    }

    if (v16)
    {
      v13 = v16;
    }

    v19 = *(v4 + 16);
LABEL_15:
    v24 = v13;
    v20 = *(a1 + 8);
    if (4 * v20 + 4 >= 3 * v19)
    {
      v19 *= 2;
    }

    else if (v19 + ~v20 - *(a1 + 12) > v19 >> 3)
    {
      *(a1 + 8) = v20 + 1;
      if (*v13 == -4096)
      {
LABEL_19:
        *v13 = *a2;
        v13[1] = 0;
        return v13 + 1;
      }

LABEL_18:
      --*(a1 + 12);
      goto LABEL_19;
    }

    v22 = a1;
    a1 = v22;
    v23 = *(v22 + 8);
    v13 = v24;
    *(a1 + 8) = v23 + 1;
    if (*v13 == -4096)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return v13 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::LookupBucketFor<mlir::Operation *>(uint64_t result, int a2, uint64_t *a3, uint64_t **a4)
{
  if (a2)
  {
    v6 = result;
    v7 = a2 - 1;
    v13 = (a2 - 1) & mlir::OperationEquivalence::computeHash(*a3, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
    v14 = (v6 + 16 * v13);
    result = *a3;
    v15 = *v14;
    if (*a3 != *v14)
    {
      v16 = 0;
      v17 = 1;
      while (1)
      {
        if (v15 != -4096 && result != -8192 && result != -4096 && v15 != -8192)
        {
          mlir::OperationEquivalence::isEquivalentTo(result, v15, 1u, v8, v9, v10, v11, v12);
        }

        if (v15 == -4096)
        {
          break;
        }

        if (v15 == -8192 && v16 == 0)
        {
          v16 = v14;
        }

        v18 = v13 + v17++;
        v13 = v18 & v7;
        v14 = (v6 + 16 * (v18 & v7));
        result = *a3;
        v15 = *v14;
        if (*a3 == *v14)
        {
          goto LABEL_15;
        }
      }

      if (v16)
      {
        v14 = v16;
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  *a4 = v14;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::grow(uint64_t a1, int a2)
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

    v38 = v3;
    if (v3)
    {
      v16 = (v4 + 16 * v3);
      v17 = v4;
      do
      {
        while ((*v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v17 += 2;
          if (v17 == v16)
          {
            goto LABEL_33;
          }
        }

        v25 = *a1;
        v26 = *(a1 + 16) - 1;
        v21 = v26 & mlir::OperationEquivalence::computeHash(*v17, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
        v22 = (v25 + 16 * v21);
        v23 = *v17;
        v24 = *v22;
        if (*v17 != *v22)
        {
          v18 = 0;
          v20 = 1;
          while (1)
          {
            if (v24 != -4096 && v24 != -8192 && v23 != -8192 && v23 != -4096)
            {
              mlir::OperationEquivalence::isEquivalentTo(v23, v24, 1u, v27, v28, v29, v30, v31);
            }

            if (v24 == -4096)
            {
              break;
            }

            if (v24 == -8192 && v18 == 0)
            {
              v18 = v22;
            }

            v19 = v21 + v20++;
            v21 = v19 & v26;
            v22 = (v25 + 16 * (v19 & v26));
            v23 = *v17;
            v24 = *v22;
            if (*v17 == *v22)
            {
              goto LABEL_32;
            }
          }

          if (v18)
          {
            v22 = v18;
          }
        }

LABEL_32:
        v32 = *v17;
        v17 += 2;
        *v22 = v32;
        ++*(a1 + 8);
      }

      while (v17 != v16);
    }

LABEL_33:

    llvm::deallocate_buffer(v4, (16 * v38));
  }

  *(a1 + 8) = 0;
  v33 = *(a1 + 16);
  if (v33)
  {
    if (((v33 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_41;
    }

    v34 = ((v33 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v34 & 0x1FFFFFFFFFFFFFFELL)];
    v35 = result + 2;
    v36 = v34 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v35 - 2) = -4096;
      *v35 = -4096;
      v35 += 4;
      v36 -= 2;
    }

    while (v36);
    if (v34 != (v34 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_41:
      v37 = &result[2 * v33];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v37);
    }
  }

  return result;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 1 << a4;
  v6 = a3 + (1 << a4);
  v7 = v6 - 1;
  if ((v6 - 1) <= 0x1000)
  {
    v13 = *(a1 + 24) >> 7;
    if (v13 >= 0x1E)
    {
      LOBYTE(v13) = 30;
    }

    v14 = 4096 << v13;
    buffer = llvm::allocate_buffer(4096 << v13, 8uLL);
    v16 = *(a1 + 24);
    if (v16 >= *(a1 + 28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a1 + 16) + 8 * v16) = buffer;
    ++*(a1 + 24);
    v17 = &buffer[v14];
    result = &buffer[v5 - 1] & -v5;
    *a1 = result + a3;
    *(a1 + 8) = v17;
  }

  else
  {
    v8 = llvm::allocate_buffer(v6 - 1, 8uLL);
    v9 = *(a1 + 72);
    if (v9 >= *(a1 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (*(a1 + 64) + 16 * v9);
    *v10 = v8;
    v10[1] = v7;
    ++*(a1 + 72);
    return (v8 + v5 - 1) & -v5;
  }

  return result;
}

uint64_t llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::shrink_and_clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != v1)
  {
    llvm::deallocate_buffer(*result, (24 * v1));
  }

  *(result + 8) = 0;
  if (v1)
  {
    v5 = *result;
    v6 = 24 * v1 - 24;
    if (v6 < 0x18)
    {
      v7 = *result;
LABEL_14:
      v11 = (v5 + 24 * v1);
      do
      {
        *v7 = -4096;
        v7 = (v7 + 24);
      }

      while (v7 != v11);
      return result;
    }

    v8 = v6 / 0x18 + 1;
    v7 = (v5 + 24 * (v8 & 0x1FFFFFFFFFFFFFFELL));
    v9 = *result;
    v10 = v8 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v9 = -4096;
      *(v9 + 3) = -4096;
      v9 = (v9 + 48);
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void *std::__split_buffer<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode> *,std::allocator<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode> *>>::emplace_back<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode> *&>(void *result, void *a2)
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
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void anonymous namespace::CSE::~CSE(_anonymous_namespace_::CSE *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::CSE::runOnOperation(_anonymous_namespace_::CSE *this)
{
  v11[1] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v11[2], 0, 24);
  v11[0] = &unk_28685B570;
  v2 = *(this + 6);
  v7[0] = v2;
  v3 = *(v2 + 72);
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) == 0 && v4)
  {
    do
    {
      v5 = *(v4 + 72);
      v4 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v5 & 4) == 0 && v4);
  }

  v7[0] = v11;
  memset(&v7[1], 0, 24);
  v7[5] = 0;
  v7[6] = 0;
  v7[4] = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>(v2 + 24, v4);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0;
}

void sub_25646EDCC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, llvm *a18, uint64_t a19, unsigned int a20, int a21, unsigned int a22, int a23, unsigned int a24)
{
  mlir::Pass::Statistic::operator=(v24 + 344, a22);
  mlir::Pass::Statistic::operator=(v24 + 345, a24);
  if (a12)
  {
    mlir::detail::PreservedAnalyses::preserve<mlir::DominanceInfo>((v24 + 56));
    mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>((v24 + 56));
  }

  else
  {
    mlir::detail::PreservedAnalyses::preserveAll((v24 + 56));
  }

  llvm::deallocate_buffer(a18, (24 * a20));
}

void sub_25646EE20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v29)
  {
    operator delete(v29);
  }

  mlir::RewriterBase::~RewriterBase((v28 - 56));
}

const void **mlir::detail::PreservedAnalyses::preserveAll(const void **this)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v2 = *this;
    if (this[1] != *this)
    {
LABEL_3:

      return llvm::SmallPtrSetImplBase::insert_imp_big(this, v1);
    }
  }

  else
  {
    v6 = this;
    mlir::detail::PreservedAnalyses::preserveAll();
    this = v6;
    v1 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v2 = *v6;
    if (v6[1] != *v6)
    {
      goto LABEL_3;
    }
  }

  v3 = *(this + 5);
  if (!v3)
  {
LABEL_11:
    if (v3 < *(this + 4))
    {
      *(this + 5) = v3 + 1;
      v2[v3] = v1;
      return this;
    }

    goto LABEL_3;
  }

  v4 = 8 * v3;
  v5 = v2;
  while (*v5 != v1)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return this;
}

const char *llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::PreservedAnalyses::AllAnalysesType]";
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

const void **mlir::detail::PreservedAnalyses::preserve<mlir::DominanceInfo>(const void **result)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *result;
    if (result[1] != *result)
    {
LABEL_3:

      return llvm::SmallPtrSetImplBase::insert_imp_big(result, v1);
    }
  }

  else
  {
    v6 = result;
    mlir::detail::PreservedAnalyses::preserve<mlir::DominanceInfo>();
    result = v6;
    v1 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *v6;
    if (v6[1] != *v6)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 5);
  if (!v3)
  {
LABEL_11:
    if (v3 < *(result + 4))
    {
      *(result + 5) = v3 + 1;
      v2[v3] = v1;
      return result;
    }

    goto LABEL_3;
  }

  v4 = 8 * v3;
  v5 = v2;
  while (*v5 != v1)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

const void **mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>(const void **result)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::PostDominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *result;
    if (result[1] != *result)
    {
LABEL_3:

      return llvm::SmallPtrSetImplBase::insert_imp_big(result, v1);
    }
  }

  else
  {
    v6 = result;
    mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>();
    result = v6;
    v1 = mlir::detail::TypeIDResolver<mlir::PostDominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *v6;
    if (v6[1] != *v6)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 5);
  if (!v3)
  {
LABEL_11:
    if (v3 < *(result + 4))
    {
      *(result + 5) = v3 + 1;
      v2[v3] = v1;
      return result;
    }

    goto LABEL_3;
  }

  v4 = 8 * v3;
  v5 = v2;
  while (*v5 != v1)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::PostDominanceInfo>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PostDominanceInfo]";
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

void anonymous namespace::GenerateRuntimeVerificationPass::~GenerateRuntimeVerificationPass(_anonymous_namespace_::GenerateRuntimeVerificationPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::GenerateRuntimeVerificationPass::runOnOperation(_anonymous_namespace_::GenerateRuntimeVerificationPass *this)
{
  v1 = *(this + 5);
  v3 = this;
  v4 = &v3;
  return mlir::detail::walk<mlir::ForwardIterator>((v1 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_131GenerateRuntimeVerificationPass14runOnOperationEvE3__0NS1_28RuntimeVerifiableOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v4, 1);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_131GenerateRuntimeVerificationPass14runOnOperationEvE3__0NS1_28RuntimeVerifiableOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::RuntimeVerifiableOpInterface,mlir::detail::RuntimeVerifiableOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    if (a2)
    {
      InterfaceFor = mlir::OpInterface<mlir::RuntimeVerifiableOpInterface,mlir::detail::RuntimeVerifiableOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v6 = *(**a1 + 40);
      v8[0] = a2;
      v8[1] = InterfaceFor;
      v7[0] = mlir::Attribute::getContext(((v6 & 0xFFFFFFFFFFFFFFF8) + 24));
      v7[1] = 0;
      v7[2] = *(a2 + 16);
      v7[3] = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
      return mlir::RuntimeVerifiableOpInterface::generateRuntimeVerification(v8, v7, *(a2 + 24));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::RuntimeVerifiableOpInterface,mlir::detail::RuntimeVerifiableOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::RuntimeVerifiableOpInterface,mlir::detail::RuntimeVerifiableOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::RuntimeVerifiableOpInterface,mlir::detail::RuntimeVerifiableOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::RuntimeVerifiableOpInterface,mlir::detail::RuntimeVerifiableOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[46];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::RuntimeVerifiableOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RuntimeVerifiableOpInterface]";
  v6 = 84;
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

void mlir::createInlinerPass()
{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

uint64_t std::__function::__func<void (*)(mlir::OpPassManager &),std::allocator<void (*)(mlir::OpPassManager &)>,void ()(mlir::OpPassManager &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685CCA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(mlir::OpPassManager &),std::allocator<void (*)(mlir::OpPassManager &)>,void ()(mlir::OpPassManager &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025736A68ALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025736A68ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025736A68ALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025736A68ALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t anonymous namespace::InlinerPass::InlinerPass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
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
  *a1 = &unk_28685CDF0;
  *&v30 = "The optimizer pipeline used for callables that do not have a dedicated optimizer pipeline in opPipelineList";
  *(&v30 + 1) = 107;
  v29[0] = "canonicalize";
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [13]>>(a1 + 344, (a1 + 152), "default-pipeline", 16, &v30, v29);
  *(a1 + 344) = &unk_28685B5D0;
  *(a1 + 576) = &unk_28685B650;
  *(&v28 + 1) = 87;
  *&v30 = "op-pipelines";
  *(&v30 + 1) = 12;
  v29[0] = (a1 + 152);
  v29[1] = 0;
  llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1 + 592, &v30, v29, &v28);
  *(a1 + 848) = 0;
  *(a1 + 592) = &unk_28685D038;
  *(a1 + 840) = &unk_28685D0B8;
  *(a1 + 856) = &unk_286868440;
  v29[0] = (a1 + 840);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 312, v29);
  *(a1 + 592) = &unk_28685CEE0;
  *(a1 + 840) = &unk_28685CF60;
  *&v30 = "Maximum number of iterations when inlining within an SCC";
  *(&v30 + 1) = 56;
  LODWORD(v28) = 4;
  v29[0] = &v28;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 864, (a1 + 152), "max-iterations", 14, &v30, v29);
  *(a1 + 864) = &unk_28685B820;
  *(a1 + 1056) = &unk_28685B8A0;
  *&v30 = "If the ratio between the number of the operations in the callee and the number of the operations in the caller exceeds this value (in percentage), then the callee is not inlined even if it is legal to inline it";
  *(&v30 + 1) = 210;
  LODWORD(v28) = -1;
  v29[0] = &v28;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<unsigned int>>(a1 + 1072, (a1 + 152), "inlining-threshold", 18, &v30, v29);
  *(a1 + 1072) = &unk_28685B820;
  *(a1 + 1264) = &unk_28685B8A0;
  *a1 = &unk_28685CD50;
  v6 = *(a2 + 24);
  if (!v6)
  {
    v31 = 0;
    v7 = *(a1 + 992);
    goto LABEL_5;
  }

  if (v6 != a2)
  {
    v31 = *(a2 + 24);
    *(a2 + 24) = 0;
    v7 = *(a1 + 992);
    goto LABEL_7;
  }

  v31 = &v30;
  (*(*v6 + 24))(v6, &v30);
  v6 = v31;
  v7 = *(a1 + 992);
  if (!v31)
  {
LABEL_5:
    *(a1 + 1320) = 0;
    *(a1 + 1328) = 0x1000000000;
    *(a1 + 1304) = 0u;
LABEL_9:
    *(a1 + 1336) = v7;
    goto LABEL_10;
  }

LABEL_7:
  if (v6 != &v30)
  {
    *(a1 + 1304) = v6;
    v31 = 0;
    *(a1 + 1312) = 0u;
    *(a1 + 1328) = 0x1000000000;
    goto LABEL_9;
  }

  *(a1 + 1304) = a1 + 1280;
  (*(*v6 + 24))(v6);
  v27 = v31;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0x1000000000;
  *(a1 + 1336) = v7;
  if (v27 == &v30)
  {
    (*(*v27 + 32))(v27);
  }

  else if (v27)
  {
    (*(*v27 + 40))(v27);
  }

LABEL_10:
  v8 = *(a3 + 12);
  if (v8)
  {
    v9 = *a3;
    v10 = *(a3 + 8);
    v11 = *a3;
    if (v10)
    {
      v11 = *a3;
      if (!*v9 || *v9 == -8)
      {
        do
        {
          v14 = v11[1];
          ++v11;
          v13 = v14;
          if (v14)
          {
            v15 = v13 == -8;
          }

          else
          {
            v15 = 1;
          }
        }

        while (v15);
      }
    }

    if (v11 != &v9[v10])
    {
      v16 = *v11;
      v17 = *(a1 + 728);
      if (v17 < *(a1 + 736))
      {
        mlir::OpPassManager::OpPassManager(v17, (v16 + 8));
      }

      std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>((a1 + 720), (v16 + 8));
    }

    v18 = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v19 = *(a1 + 1312);
    *(a1 + 1312) = v9;
    v20 = *(a1 + 1320);
    *(a1 + 1320) = v10;
    v21 = *(a1 + 1324);
    *(a1 + 1324) = v8;
    *(a1 + 1328) = v18;
    if (v21 && v20)
    {
      v22 = v19;
      do
      {
        v23 = *v22;
        if (*v22 != -8 && v23 != 0)
        {
          v25 = *v23;
          mlir::OpPassManager::~OpPassManager((v23 + 1));
          llvm::deallocate_buffer(v23, (v25 + 17));
        }

        ++v22;
        --v20;
      }

      while (v20);
    }

    free(v19);
  }

  return a1;
}

void anonymous namespace::InlinerPass::~InlinerPass(_anonymous_namespace_::InlinerPass *this)
{
  *this = &unk_28685CD50;
  v2 = this + 1280;
  if (*(this + 331))
  {
    v3 = *(this + 330);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 164) + v4);
        if (v5 != -8 && v5 != 0)
        {
          v7 = *v5;
          mlir::OpPassManager::~OpPassManager((v5 + 1));
          llvm::deallocate_buffer(v5, (v7 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 164));
  v8 = *(this + 163);
  if (v8 == v2)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  *this = &unk_28685CDF0;
  *(this + 134) = &unk_28689F660;
  v9 = *(this + 157);
  if (v9 == (this + 1232))
  {
    (*(*v9 + 32))(v9);
    *(this + 134) = &unk_28689F010;
    v10 = *(this + 146);
    if (v10 != *(this + 145))
    {
LABEL_18:
      free(v10);
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    *(this + 134) = &unk_28689F010;
    v10 = *(this + 146);
    if (v10 != *(this + 145))
    {
      goto LABEL_18;
    }
  }

  v11 = *(this + 142);
  if (v11 != this + 1152)
  {
    free(v11);
  }

  *(this + 108) = &unk_28689F660;
  v12 = *(this + 131);
  if (v12 == (this + 1024))
  {
    (*(*v12 + 32))(v12);
    *(this + 108) = &unk_28689F010;
    v13 = *(this + 120);
    if (v13 != *(this + 119))
    {
LABEL_25:
      free(v13);
    }
  }

  else
  {
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    *(this + 108) = &unk_28689F010;
    v13 = *(this + 120);
    if (v13 != *(this + 119))
    {
      goto LABEL_25;
    }
  }

  v14 = *(this + 116);
  if (v14 != this + 944)
  {
    free(v14);
  }

  llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(this + 74);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::InlinerPass::initializeOptions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void ***), uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((mlir::Pass::initializeOptions(a1, a2, a3, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v6 = (a1 + 472);
  if (*(a1 + 495) < 0)
  {
    v8 = *(a1 + 480);
    if (v8)
    {
      std::string::__init_copy_ctor_external(&v24, *v6, v8);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if (*(a1 + 495))
  {
    *&v24.__r_.__value_.__l.__data_ = *v6;
    v24.__r_.__value_.__r.__words[2] = *(a1 + 488);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      v23 = v24;
      goto LABEL_10;
    }

LABEL_9:
    std::string::__init_copy_ctor_external(&v23, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
LABEL_10:
    operator new();
  }

  if (*(a1 + 352))
  {
    v9 = *(a1 + 1304);
    *(a1 + 1304) = 0;
    if (v9 == a1 + 1280)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    *(a1 + 1304) = 0;
  }

  *&v24.__r_.__value_.__l.__data_ = 0uLL;
  v24.__r_.__value_.__r.__words[2] = 0x1000000000;
  v10 = *(a1 + 720);
  if (v10 != *(a1 + 728))
  {
    mlir::OpPassManager::OpPassManager(v22, v10);
  }

  memset(&v24, 0, 20);
  v11 = *(a1 + 1312);
  *(a1 + 1312) = 0;
  v12 = *(a1 + 1320);
  v13 = *(a1 + 1324);
  *(a1 + 1320) = 0;
  *(a1 + 1328) = 0;
  if (v13 && v12)
  {
    v14 = v11;
    do
    {
      v15 = *v14;
      if (*v14 != -8 && v15 != 0)
      {
        v17 = *v15;
        mlir::OpPassManager::~OpPassManager((v15 + 1));
        llvm::deallocate_buffer(v15, (v17 + 17));
      }

      ++v14;
      --v12;
    }

    while (v12);
  }

  free(v11);
  *(a1 + 1336) = *(a1 + 992);
  if (HIDWORD(v24.__r_.__value_.__r.__words[1]) && LODWORD(v24.__r_.__value_.__r.__words[1]))
  {
    v18 = 0;
    do
    {
      v19 = *(v24.__r_.__value_.__r.__words[0] + v18);
      if (v19 != -8 && v19 != 0)
      {
        v21 = *v19;
        mlir::OpPassManager::~OpPassManager((v19 + 1));
        llvm::deallocate_buffer(v19, (v21 + 17));
      }

      v18 += 8;
    }

    while (8 * LODWORD(v24.__r_.__value_.__r.__words[1]) != v18);
  }

  free(v24.__r_.__value_.__l.__data_);
  return 1;
}

void anonymous namespace::InlinerPass::runOnOperation(_anonymous_namespace_::InlinerPass *this)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  v25[0] = v2;
  v3 = *(v2 + 72);
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) == 0 && v4)
  {
    do
    {
      v5 = *(v4 + 72);
      v4 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v5 & 4) == 0 && v4);
  }

  v6 = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>(v2 + 24, v4);
  v7 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  {
  }

  if ((*(**(v7 + 6) + 32))(*(v7 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v8 = *(this + 6);
    v24[0] = &unk_28685D340;
    v24[3] = v24;
    v25[0] = v7;
    v23[0] = &unk_28685D3F0;
    v23[1] = this;
    v23[3] = v23;
    v25[1] = v6;
    v25[2] = this;
    v26 = v8;
    v28[2] = &v27;
    v28[3] = this + 1280;
    v27 = &unk_28685D340;
    v29[3] = v29;
    v29[0] = &unk_28685D3F0;
    v29[1] = this;
    mlir::Inliner::doInlining(v25);
  }

  v20 = 257;
  mlir::Operation::emitOpError(v25, v7, &v19);
  if (v25[0])
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = " was scheduled to run under the inliner, but does not define a symbol table";
    v22 = 75;
    if (v27 >= HIDWORD(v27))
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v26 + 24 * v27;
    v10 = v21;
    *(v9 + 2) = v22;
    *v9 = v10;
    LODWORD(v27) = v27 + 1;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v33;
      v13 = __p;
      if (v33 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v33 = v11;
      operator delete(v13);
    }

    v14 = v30;
    if (v30)
    {
      v15 = v31;
      v16 = v30;
      if (v31 != v30)
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
        v16 = v30;
      }

      v31 = v14;
      operator delete(v16);
    }

    if (v26 != v28)
    {
      free(v26);
    }
  }

  *(this + 5) |= 4uLL;
}

uint64_t mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [13]>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, const char **a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v8 = llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [24]>>(a1, v11, &v14, a5, a6);
  *(v8 + 240) = 0;
  *v8 = &unk_28685B690;
  *(v8 + 232) = &unk_28685B710;
  v14 = (v8 + 232);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v14);
  v12[0] = &unk_28685CE60;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_28685CE60;
  v15 = a1;
  std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](&v14, a1 + 200);
  if (v16 != &v14)
  {
    if (v16)
    {
      (*(*v16 + 5))();
    }

    v9 = v13;
    if (v13 != v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v9 + 32))(v9);
    return a1;
  }

  (*(*v16 + 4))(v16);
  v9 = v13;
  if (v13 == v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA13_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685CE60;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA13_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA13_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA13_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA13_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionINSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEN4llvm2cl6parserIS9_EEEC1IJNSB_4descENSB_11initializerIA13_cEEEEERS1_NSA_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v11 = *(a1 + 128);
    v10 = *(a1 + 136);
    v12 = a1;
    while (v10 != v11)
    {
      v10 = (v10 - 8);
      mlir::OpPassManager::~OpPassManager(v10);
    }

    a1 = v12;
    *(v12 + 136) = v11;
    *(v12 + 176) = 0;
  }

  *(a1 + 256) = 1;
  v14 = a1;
  v15[0] = a1 + 264;
  v16[0] = a3;
  v16[1] = a4;
  v15[1] = a1;
  v15[2] = v16;
  v15[3] = &v14;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<mlir::OpPassManager>,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<mlir::OpPassManager> &,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v15) & 1) == 0;
}

void mlir::Pass::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(void *a1)
{
  llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(a1);

  JUMPOUT(0x259C63180);
}

void llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::setDefault(void *a1)
{
  v2 = a1 + 16;
  v3 = a1[16];
  a1[24] = a1[23];
    ;
  }

  a1[17] = v3;
  v5 = a1[19];
  if (v5 != a1[20])
  {
    v6 = *(v5 + 8);
    if (v3 < a1[18])
    {
      mlir::OpPassManager::OpPassManager(v3, v6);
    }

    std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>(v2, v6);
  }
}

void *mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::print(void *result, llvm::raw_ostream *this)
{
  if (result[17] == result[16])
  {
    return result;
  }

  v3 = result;
  v4 = result[2];
  v5 = result[3];
  result = *(this + 4);
  if (v5 > *(this + 3) - result)
  {
    v6 = llvm::raw_ostream::write(this, v4, v5);
    result = *(v6 + 4);
    if (*(v6 + 3) - result > 1uLL)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = llvm::raw_ostream::write(v6, "={", 2uLL);
    v7 = v3[16];
    v8 = v3[17];
    if (v7 == v8)
    {
      goto LABEL_15;
    }

LABEL_10:
    result = llvm::cl::parser<mlir::OpPassManager>::print(this, v7);
    for (i = v7 + 1; i != v8; ++i)
    {
      while (1)
      {
        v11 = *(this + 4);
        if (*(this + 3) == v11)
        {
          break;
        }

        *v11 = 44;
        ++*(this + 4);
        result = llvm::cl::parser<mlir::OpPassManager>::print(this, i++);
        if (i == v8)
        {
          goto LABEL_15;
        }
      }

      llvm::raw_ostream::write(this, ",", 1uLL);
      result = llvm::cl::parser<mlir::OpPassManager>::print(this, i);
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v9 = v5;
    memcpy(result, v4, v5);
    result = (*(this + 4) + v9);
    *(this + 4) = result;
  }

  v6 = this;
  if (*(this + 3) - result <= 1uLL)
  {
    goto LABEL_9;
  }

LABEL_4:
  *result = 31549;
  *(v6 + 4) += 2;
  v7 = v3[16];
  v8 = v3[17];
  if (v7 != v8)
  {
    goto LABEL_10;
  }

LABEL_15:
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

  return result;
}

void mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<mlir::OpPassManager>::__assign_with_size[abi:nn200100]<mlir::OpPassManager const*,mlir::OpPassManager const*>((a1 + 128), *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 3);
  *(a1 + 256) = 1;
  *(a1 + 256) = *(a2 + 8);
}

void non-virtual thunk tomlir::Pass::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(uint64_t a1)
{
  llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list((a1 - 248));

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<mlir::OpPassManager>::__assign_with_size[abi:nn200100]<mlir::OpPassManager const*,mlir::OpPassManager const*>((a1 - 120), *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 3);
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
}

uint64_t llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4)
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
  *a1 = &unk_28685D0F8;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = &unk_286868440;
  *(a1 + 216) = &unk_28685D160;
  *(a1 + 240) = a1 + 216;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(void *a1)
{
  llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(a1);

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(uint64_t a1)
{
  llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list((a1 - 248));

  JUMPOUT(0x259C63180);
}

uint64_t llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, size_t a6)
{
  v17 = a2;
  llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::ParsedPassManager(&v16);
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v12 = *(a1 + 128);
      ;
    }

    *(a1 + 136) = v12;
    *(a1 + 176) = 0;
  }

  v13 = llvm::cl::parser<mlir::OpPassManager>::parse((a1 + 208), a1, a3, a4, a5, a6);
  if ((v13 & 1) == 0)
  {
    v14 = *(a1 + 136);
    if (v14 < *(a1 + 144))
    {
      mlir::OpPassManager::OpPassManager(v14, v16);
    }

    std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>((a1 + 128), v16);
  }

  llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::~ParsedPassManager(&v16);
  return v13;
}

void llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(void *a1)
{
  llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(a1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::{lambda(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)#1},std::allocator<llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::{lambda(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)#1}>,void ()(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025736AABDLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025736AABDLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025736AABDLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025736AABDLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>(void *a1, const mlir::OpPassManager *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 61))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 2 > v3)
    {
      v3 = v4 >> 2;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      if (!(v5 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    mlir::OpPassManager::OpPassManager((8 * v2), a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(void *a1)
{
  *a1 = &unk_28685D0F8;
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
      do
      {
        v6 = llvm::cl::OptionValue<mlir::OpPassManager>::~OptionValue(v6 - 16);
      }

      while (v6 != v5);
      v7 = a1[19];
    }

    a1[20] = v5;
    operator delete(v7);
  }

  v8 = a1[16];
  if (v8)
  {
    v9 = a1[17];
    v10 = a1[16];
    if (v9 != v8)
    {
      do
      {
        mlir::OpPassManager::~OpPassManager((v9 - 8));
      }

      while (v9 != v8);
      v10 = a1[16];
    }

    a1[17] = v8;
    operator delete(v10);
  }

  *a1 = &unk_28689F010;
  v11 = a1[12];
  if (v11 != a1[11])
  {
    free(v11);
  }

  v12 = a1[8];
  if (v12 != a1 + 10)
  {
    free(v12);
  }

  return a1;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<mlir::OpPassManager>,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<mlir::OpPassManager> &,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1} &&)::{lambda(llvm::StringRef)#1}>(uint64_t a1, const char *a2, size_t a3)
{
  llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::ParsedPassManager(&v9);
  if ((llvm::cl::parser<mlir::OpPassManager>::parse(*a1, *(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), a2, a3) & 1) == 0)
  {
    v6 = **(a1 + 24);
    v7 = v6[17];
    if (v7 < v6[18])
    {
      mlir::OpPassManager::OpPassManager(v7, v9);
    }

    std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>(v6 + 16, v9);
  }

  llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::~ParsedPassManager(&v9);
  return 0;
}

void std::vector<mlir::OpPassManager>::__assign_with_size[abi:nn200100]<mlir::OpPassManager const*,mlir::OpPassManager const*>(void **a1, const mlir::OpPassManager *a2, const mlir::OpPassManager *a3, unint64_t a4)
{
  v5 = a1[2];
  v6 = *a1;
  if (a4 > (v5 - *a1) >> 3)
  {
    if (v6)
    {
      v7 = a4;
      v8 = a1[1];
      v9 = v6;
      if (v8 != v6)
      {
        do
        {
          mlir::OpPassManager::~OpPassManager((v8 - 8));
        }

        while (v8 != v6);
        v9 = *a1;
      }

      a1[1] = v6;
      operator delete(v9);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v7;
    }

    if (!(a4 >> 61))
    {
      v10 = v5 >> 2;
      if (v5 >> 2 <= a4)
      {
        v10 = a4;
      }

      v11 = v5 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = a1[1];
  if (a4 <= (v13 - v6) >> 3)
  {
    if (a2 != a3)
    {
      mlir::OpPassManager::operator=();
    }

    while (v13 != v6)
    {
      v13 = (v13 - 8);
      mlir::OpPassManager::~OpPassManager(v13);
    }

    a1[1] = v6;
  }

  else
  {
    v14 = (a2 + v13 - v6);
    if (v13 != v6)
    {
      mlir::OpPassManager::operator=();
    }

    if (v14 != a3)
    {
      mlir::OpPassManager::OpPassManager(v13, v14);
    }

    a1[1] = v13;
  }
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<unsigned int>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v8 = llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<unsigned int>>(a1, v11, &v14, a5, a6);
  *(v8 + 200) = 0;
  *v8 = &unk_28685B8E0;
  *(v8 + 192) = &unk_28685B960;
  v14 = (v8 + 192);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v14);
  v12[0] = &unk_28685D200;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_28685D200;
  v15 = a1;
  std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](&v14, a1 + 160);
  if (v16 != &v14)
  {
    if (v16)
    {
      (*(*v16 + 5))();
    }

    v9 = v13;
    if (v13 != v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v9 + 32))(v9);
    return a1;
  }

  (*(*v16 + 4))(v16);
  v9 = v13;
  if (v13 == v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  return a1;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<unsigned int>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, int **a5)
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

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIjEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685D200;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIjEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::~__func(uint64_t result)
{
  *result = &unk_28685D280;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::~__func(uint64_t a1)
{
  *a1 = &unk_28685D280;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C63180);
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28685D280;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::operator()(uint64_t a1, mlir::OpPassManager *a2)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  v9 = llvm::errs(v3);

  return mlir::parsePassPipeline(v7, v8, a2, v9);
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12_GLOBAL__N_111InlinerPass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12_GLOBAL__N_111InlinerPass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12_GLOBAL__N_111InlinerPass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12_GLOBAL__N_111InlinerPass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::try_emplace_with_hash<mlir::OpPassManager&>(uint64_t a1, void *a2, size_t a3, unsigned int a4, const mlir::OpPassManager *a5)
{
  v9 = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4));
  v10 = *v9;
  if (*v9 == -8)
  {
    --*(a1 + 16);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v12 = buffer + 2;
    if (!a3)
    {
LABEL_5:
      v12[a3] = 0;
      *buffer = a3;
      mlir::OpPassManager::OpPassManager((buffer + 1), a5);
    }

LABEL_4:
    memcpy(v12, a2, a3);
    goto LABEL_5;
  }

  if (!v10)
  {
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v12 = buffer + 2;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  while (!v10 || v10 == -8)
  {
    v13 = v9[1];
    ++v9;
    v10 = v13;
  }

  return v9;
}

uint64_t mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>(uint64_t a1, std::recursive_mutex **a2)
{
  {
    v4 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>();
    v4 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v7 = ((v4 >> 4) ^ (v4 >> 9)) & (v6 - 1);
  v8 = *(v5 + 16 * v7);
  if (v4 != v8)
  {
    v23 = 1;
    while (v8 != -4096)
    {
      v24 = v7 + v23++;
      v7 = v24 & (v6 - 1);
      v8 = *(v5 + 16 * v7);
      if (v4 == v8)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    if (a2)
    {
      v25 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallGraph]";
      v26 = 65;
      v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
      if (v26 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v26;
      }

      v11 = &v25[v10];
      v12 = v26 - v10;
      if (v26 - v10 >= 0x12)
      {
        v13 = 18;
      }

      else
      {
        v13 = v26 - v10;
      }

      v14 = &v11[v13];
      v15 = v12 - v13;
      if (v15 >= v15 - 1)
      {
        v16 = v15 - 1;
      }

      else
      {
        v16 = v15;
      }

      if (v16 >= 6)
      {
        if (*v14 == 1919511661 && *(v14 + 4) == 14906)
        {
          v14 += 6;
          v16 -= 6;
        }

        else if (v16 >= 0x17 && *v14 == 0x6F6D796E6F6E6128 && *(v14 + 8) == 0x73656D616E207375 && *(v14 + 15) == 0x3A3A296563617073)
        {
          v14 += 23;
          v16 -= 23;
        }
      }

      mlir::PassInstrumentor::runBeforeAnalysis(a2, v14, v16, v4, *a1);
    }

    operator new();
  }

LABEL_4:
  if (v7 == v6)
  {
    goto LABEL_5;
  }

  v21 = *(v5 + 16 * v7 + 8);
  if (*(a1 + 40) == v21)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 32) + 16 * v21 + 8) + 8;
}

const char *llvm::getTypeName<mlir::CallGraph>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallGraph]";
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

void mlir::detail::AnalysisModel<mlir::CallGraph>::~AnalysisModel(void *a1)
{
  *a1 = &unk_28685D300;
  mlir::CallGraph::~CallGraph((a1 + 1));
}

{
  *a1 = &unk_28685D300;
  mlir::CallGraph::~CallGraph((a1 + 1));
}

BOOL mlir::detail::AnalysisModel<mlir::CallGraph>::invalidate(int a1, const void ***this)
{
  v3 = mlir::detail::PreservedAnalyses::isPreserved<mlir::CallGraph>(this);
  if (!v3)
  {
    mlir::detail::PreservedAnalyses::unpreserve<mlir::CallGraph>(this);
  }

  return !v3;
}

void mlir::CallGraph::~CallGraph(mlir::CallGraph *this)
{
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  if ((*(this + 144) & 1) == 0)
  {
    llvm::deallocate_buffer(*(this + 19), (8 * *(this + 40)));
  }

  v3 = *(this + 11);
  if (v3 != this + 104)
  {
    free(v3);
  }

  if ((*(this + 48) & 1) == 0)
  {
    llvm::deallocate_buffer(*(this + 7), (8 * *(this + 16)));
  }

  v4 = *(this + 3);
  v5 = *(this + 8);
  if (v5)
  {
    v6 = v4 - 8;
    v7 = 16 * v5;
    do
    {
      v8 = *&v6[v7];
      *&v6[v7] = 0;
      if (v8)
      {
        v9 = *(v8 + 48);
        if (v9 != (v8 + 64))
        {
          free(v9);
        }

        if ((*(v8 + 8) & 1) == 0)
        {
          llvm::deallocate_buffer(*(v8 + 16), (8 * *(v8 + 24)));
        }

        MEMORY[0x259C63180](v8, 0x10A0C40D4B41969);
      }

      v7 -= 16;
    }

    while (v7);
    v4 = *(this + 3);
  }

  if (v4 != this + 40)
  {
    free(v4);
  }

  llvm::deallocate_buffer(*this, (16 * *(this + 4)));
}

void mlir::detail::PreservedAnalyses::unpreserve<mlir::CallGraph>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
LABEL_3:
      v4 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      if (v4)
      {
        *v4 = -2;
        ++*(this + 6);
      }

      return;
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = v3; *i != v2; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return;
      }
    }

    v8 = v5 - 1;
    *(this + 5) = v8;
    *i = v3[v8];
  }
}

BOOL mlir::detail::PreservedAnalyses::isPreserved<mlir::CallGraph>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
LABEL_3:
      v3 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      v4 = *this;
      v5 = this[1];
      if (!v3)
      {
        v6 = 16;
        if (v5 == v4)
        {
          v6 = 20;
        }

        v3 = &v5[*(this + v6)];
      }

      goto LABEL_14;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v3 != v2)
    {
      ++v3;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = &v4[v7];
  }

  v5 = v4;
LABEL_14:
  v9 = v5 == v4;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  return v3 != &v5[*(this + v10)];
}

const char *llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SymbolTable<Empty>]";
  v6 = 83;
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

uint64_t std::__function::__func<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *),std::allocator<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>,llvm::LogicalResult ()(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685D340;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *),std::allocator<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>,llvm::LogicalResult ()(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025736AEACLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025736AEACLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025736AEACLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025736AEACLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::InlinerPass::runOnOperation(void)::$_0>,BOOL ()(mlir::Inliner::ResolvedCall const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685D3F0;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<anonymous namespace::InlinerPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::InlinerPass::runOnOperation(void)::$_0>,BOOL ()(mlir::Inliner::ResolvedCall const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 1200);
  if (!v2)
  {
    return 0;
  }

  if (v2 == -1)
  {
    return 1;
  }

  CallableRegion = mlir::CallGraphNode::getCallableRegion(*(a2 + 16));
  v5 = mlir::CallGraphNode::getCallableRegion(*(a2 + 24));
  v23 = 0;
  v22 = &v23;
  v6 = *(CallableRegion + 8);
  if (v6 == CallableRegion)
  {
    return 1;
  }

  v7 = v5;
  do
  {
    v8 = v6 - 8;
    if (!v6)
    {
      v8 = 0;
    }

    v9 = *(v8 + 40);
    v10 = v8 + 32;
    if (v9 != v8 + 32)
    {
      do
      {
        v11 = *(v9 + 8);
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v9);
        mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<isProfitableToInline(mlir::Inliner::ResolvedCall const&,unsigned int)::$_0::operator() const(mlir::Region *)::{lambda(mlir::Operation *)#1}>, &v22, 1);
        v9 = v11;
      }

      while (v11 != v10);
    }

    v6 = *(v6 + 8);
  }

  while (v6 != CallableRegion);
  v14 = v23;
  if (!v23)
  {
    return 1;
  }

  v23 = 0;
  v22 = &v23;
  v15 = *(v7 + 8);
  if (v15 == v7)
  {
    v21 = 0;
  }

  else
  {
    do
    {
      v16 = v15 - 8;
      if (!v15)
      {
        v16 = 0;
      }

      v17 = *(v16 + 40);
      v18 = v16 + 32;
      if (v17 != v16 + 32)
      {
        do
        {
          v19 = *(v17 + 8);
          v20 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v17);
          mlir::detail::walk<mlir::ForwardIterator>(v20, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<isProfitableToInline(mlir::Inliner::ResolvedCall const&,unsigned int)::$_0::operator() const(mlir::Region *)::{lambda(mlir::Operation *)#1}>, &v22, 1);
          v17 = v19;
        }

        while (v19 != v18);
      }

      v15 = *(v15 + 8);
    }

    while (v15 != v7);
    v21 = 100 * v23;
  }

  return v21 / v14 <= v2;
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::InlinerPass::runOnOperation(void)::$_0>,BOOL ()(mlir::Inliner::ResolvedCall const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12_GLOBAL__N_111InlinerPass14runOnOperationEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12_GLOBAL__N_111InlinerPass14runOnOperationEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12_GLOBAL__N_111InlinerPass14runOnOperationEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12_GLOBAL__N_111InlinerPass14runOnOperationEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

llvm::StringMapImpl *llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1000000000;
  if (*(a2 + 12))
  {
    llvm::StringMapImpl::init(this, *(a2 + 8));
    v4 = *this;
    v5 = *(this + 2);
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = *(*a2 + 8 * i);
        if (v7)
        {
          v8 = v7 + 1 == 0;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          v9 = *v7;
          buffer = llvm::allocate_buffer(*v7 + 17, 8uLL);
          v11 = buffer;
          v12 = (buffer + 2);
          if (v9)
          {
            memcpy(buffer + 2, v7 + 2, v9);
          }

          v12[v9] = 0;
          *v11 = v9;
          mlir::OpPassManager::OpPassManager((v11 + 1), (v7 + 1));
        }

        *(v4 + 8 * i) = v7;
      }
    }
  }

  return this;
}

void generateLocationsFromIR(llvm::raw_ostream *a1, llvm **a2, uint64_t *a3, uint64_t a4, uint64_t a5, llvm **a6, uint64_t *a7)
{
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  mlir::AsmState::AsmState(&v24, a4, a5, v25, 0);
  mlir::Operation::print(a4, a1, &v24);
  Context = mlir::Attribute::getContext((a4 + 24));
  LOBYTE(v21) = 0;
  v22 = 0;
  if (a7)
  {
    v20 = 261;
    v16 = a6;
    v17 = a7;
    StringAttr = mlir::Builder::getStringAttr(&Context, &v16, v13);
    v22 = 1;
    v21 = StringAttr;
  }

  v20 = 261;
  v16 = a2;
  v17 = a3;
  v15 = mlir::Builder::getStringAttr(&Context, &v16, v13);
  v16 = v25;
  v17 = &v15;
  v18 = &v21;
  p_Context = &Context;
  mlir::detail::walk<mlir::ForwardIterator>(a4, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<generateLocationsFromIR(llvm::raw_ostream &,llvm::StringRef,mlir::Operation *,mlir::OpPrintingFlags const&,llvm::StringRef)::$_0>, &v16, 1);
  mlir::AsmState::~AsmState(&v24);
  llvm::deallocate_buffer(v25[0], (16 * v26));
}

BOOL generateLocationsFromIR(const void *a1, size_t a2, mlir::Operation *a3)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v39 = v41;
  v40 = xmmword_25736B040;
  if (a2 >= 0x21)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v5 = 0;
  if (a2)
  {
    memcpy(v39, a1, a2);
    v5 = v40;
  }

  *&v40 = v5 + a2;
  if (v5 + a2 || (v27 = "mlir_snapshot", LOWORD(v30) = 259, llvm::sys::fs::createTemporaryFile(&v27, "tmp.mlir", 8, &v39, 0), *&v23.__val_ = v6, v23.__cat_ = v7, !v6))
  {
    memset(&v20, 0, sizeof(v20));
    mlir::openOutputFile();
  }

  v22 = 257;
  mlir::Operation::emitError(&v27, a3, v21);
  if (v27)
  {
    LODWORD(v24) = 3;
    *(&v24 + 1) = "failed to generate temporary file for location snapshot: ";
    v25 = 57;
    if (v30 >= v31)
    {
      if (v29 > &v24 || v29 + 24 * v30 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v29 + 24 * v30;
    v9 = v24;
    *(v8 + 2) = v25;
    *v8 = v9;
    ++v30;
  }

  std::error_code::message(&v20, &v23);
  if (v27)
  {
    v26 = 260;
    *&v24 = &v20;
    mlir::Diagnostic::operator<<(&v28, &v24);
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
  }

  if (v38)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v36;
      v13 = __p;
      if (v36 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v36 = v11;
      operator delete(v13);
    }

    v14 = v33;
    if (v33)
    {
      v15 = v34;
      v16 = v33;
      if (v34 != v33)
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
        v16 = v33;
      }

      v34 = v14;
      operator delete(v16);
    }

    if (v29 != &v32)
    {
      free(v29);
    }
  }

  if (v39 != v41)
  {
    free(v39);
  }

  return v10;
}

uint64_t **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<generateLocationsFromIR(llvm::raw_ostream &,llvm::StringRef,mlir::Operation *,mlir::OpPrintingFlags const&,llvm::StringRef)::$_0>(uint64_t **result, uint64_t a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = *(*result + 4);
  if (v2)
  {
    v4 = **result;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == a2)
    {
LABEL_3:
      if (v5 != v2)
      {
        v7 = result;
        result = mlir::FileLineColLoc::get(*result[1], *(v4 + 16 * v5 + 8), *(v4 + 16 * v5 + 12));
        v8 = v7[2];
        if (v8[1])
        {
          v9 = v7[3];
          v12[0] = *(a2 + 24);
          v12[1] = mlir::NameLoc::get(*v8, result);
          mlir::Builder::getFusedLoc(v9, v12, 2, 0);
        }

        *(a2 + 24) = result;
      }
    }

    else
    {
      v10 = 1;
      while (v6 != -4096)
      {
        v11 = v5 + v10++;
        v5 = v11 & (v2 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

void anonymous namespace::LocationSnapshotPass::~LocationSnapshotPass(_anonymous_namespace_::LocationSnapshotPass *this)
{
  *this = &unk_28685D520;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_28685D520;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

BOOL anonymous namespace::LocationSnapshotPass::runOnOperation(_anonymous_namespace_::LocationSnapshotPass *this)
{
  v2 = *(this + 5);
  v3 = *(this + 495);
  if (v3 >= 0)
  {
    v4 = this + 472;
  }

  else
  {
    v4 = *(this + 59);
  }

  if (v3 >= 0)
  {
    v5 = *(this + 495);
  }

  else
  {
    v5 = *(this + 60);
  }

  mlir::OpPrintingFlags::OpPrintingFlags(&v7);
  result = generateLocationsFromIR(v4, v5, (v2 & 0xFFFFFFFFFFFFFFF8));
  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

void anonymous namespace::LoopInvariantCodeMotion::~LoopInvariantCodeMotion(_anonymous_namespace_::LoopInvariantCodeMotion *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::LoopInvariantCodeMotion::runOnOperation(_anonymous_namespace_::LoopInvariantCodeMotion *this)
{
  v1 = *(this + 5);
  v4 = &v3;
  return mlir::detail::walk<mlir::ForwardIterator>((v1 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvE3__0NS1_19LoopLikeOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v4, 1);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvE3__0NS1_19LoopLikeOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result && a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);

    return mlir::moveLoopInvariantCode(a2, InterfaceFor);
  }

  return result;
}

void anonymous namespace::LoopInvariantSubsetHoisting::~LoopInvariantSubsetHoisting(_anonymous_namespace_::LoopInvariantSubsetHoisting *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::LoopInvariantSubsetHoisting::runOnOperation(_anonymous_namespace_::LoopInvariantSubsetHoisting *this)
{
  v4[1] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v4[2], 0, 24);
  v3 = v4;
  v4[0] = &unk_28685B570;
  v2 = *(this + 5);
  v5 = &v3;
  mlir::detail::walk<mlir::ForwardIterator>((v2 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_127LoopInvariantSubsetHoisting14runOnOperationEvE3__0NS1_19LoopLikeOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v5, 1);
  mlir::RewriterBase::~RewriterBase(v4);
}

mlir::Operation *_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_127LoopInvariantSubsetHoisting14runOnOperationEvE3__0NS1_19LoopLikeOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::RewriterBase ***a1, mlir::Operation *a2)
{
  result = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result && a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v6 = **a1;

    return mlir::hoistLoopInvariantSubsets(v6, a2, InterfaceFor);
  }

  return result;
}

void mlir::tryToPromoteMemorySlots(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v8 = 0;
  v206[3] = *MEMORY[0x277D85DE8];
  v164 = a6;
  v165 = a7;
  v162 = 0;
  v161 = 0;
  v163 = 0;
  v178 = v180;
  v179 = 0x300000000;
  if (((16 * a2) >> 4) >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    memcpy(v178, __src, 16 * a2);
    v8 = v179;
  }

  LODWORD(v179) = v8 + v7;
  v175 = v177;
  v176 = 0x300000000;
  if ((v8 + v7) >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!v179)
  {
    v148 = v175;
    if (v175 != v177)
    {
LABEL_284:
      free(v148);
    }

LABEL_285:
    if (v178 != v180)
    {
      free(v178);
    }

    v149 = v161;
    if (v163)
    {
      v150 = 32 * v163;
      do
      {
        if ((*v149 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          llvm::deallocate_buffer(*(v149 + 1), (16 * *(v149 + 6)));
        }

        v149 = (v149 + 32);
        v150 -= 32;
      }

      while (v150);
      v149 = v161;
      v151 = (32 * v163);
    }

    else
    {
      v151 = 0;
    }

    llvm::deallocate_buffer(v149, v151);
  }

  v9 = v178;
  v152 = v178 + 16 * v179;
  v10 = 0;
  while (1)
  {
    v153 = v10;
    v154 = v9;
    v160 = *v9;
    mlir::PromotableAllocationOpInterface::getPromotableSlots(&v172, &v160);
    v11 = v172;
    if (v173)
    {
      break;
    }

    if (v172 != v174)
    {
LABEL_278:
      free(v11);
    }

LABEL_279:
    v10 = v153;
    if (v176 >= HIDWORD(v176))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v175 + v176) = v160;
    LODWORD(v176) = v176 + 1;
    ++v9;
    if (v154 + 1 == v152)
    {
      v148 = v175;
      if (v175 != v177)
      {
        goto LABEL_284;
      }

      goto LABEL_285;
    }
  }

  while (!**v11)
  {
    v11 += 2;
    if (v11 == (v172 + 16 * v173))
    {
      v11 = v172;
      if (v172 != v174)
      {
        goto LABEL_278;
      }

      goto LABEL_279;
    }
  }

  v155 = v11[1];
  v158[0] = *v11;
  v158[1] = v155;
  v158[2] = a5;
  v159 = a4;
  v181 = v185;
  v182 = v185;
  v183 = 8;
  v184 = 0;
  v186 = 0;
  v187 = 0;
  v188 = 0;
  v189 = &v191;
  v190 = 0;
  ParentRegion = mlir::Value::getParentRegion(v158);
  v13 = *(ParentRegion + 2);
  if (!mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v13))
  {
    v200 = 0;
    v201 = 0;
    goto LABEL_20;
  }

  if (!v13)
  {
    v200 = 0;
    v201 = 0;
    goto LABEL_20;
  }

  InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v13);
  v200 = v13;
  v201 = InterfaceFor;
  RegionNumber = mlir::Region::getRegionNumber(ParentRegion);
  if (mlir::RegionKindInterface::getRegionKind(&v200, RegionNumber) != 1)
  {
LABEL_20:
    v16 = v158[0];
    v17 = *v158[0];
    if (!*v158[0])
    {
LABEL_80:
      v203 = 0;
      v202 = 0u;
      v204 = v206;
      v205 = 0;
      v169 = 0;
      LOBYTE(v170) = 0;
      mlir::getForwardSlice(v16, &v202, &v166);
      if (v169 == &v166)
      {
        (*(*v169 + 4))(v169);
        v45 = v205;
        if (!v205)
        {
          goto LABEL_253;
        }
      }

      else
      {
        if (v169)
        {
          (*(*v169 + 5))();
        }

        v45 = v205;
        if (!v205)
        {
          goto LABEL_253;
        }
      }

      v46 = v188;
      if (!v188)
      {
        goto LABEL_253;
      }

      v47 = v204;
      v48 = &v204[v45];
LABEL_89:
      v49 = *v47;
      v50 = (*v47 >> 4) ^ (*v47 >> 9);
      v51 = v46 - 1;
      v52 = v50 & (v46 - 1);
      v53 = (v186 + 16 * v52);
      v54 = *v53;
      if (*v53 == *v47)
      {
        if (v52 == v46)
        {
          goto LABEL_252;
        }

LABEL_91:
        v55 = *(v186 + 4 * v52 + 2);
        v56 = v189;
        v192 = &v194;
        v193 = 0x600000000;
        v57 = mlir::OpInterface<mlir::PromotableOpInterface,mlir::detail::PromotableOpInterfaceInterfaceTraits>::getInterfaceFor(v49);
        if (v57)
        {
          goto LABEL_92;
        }

        goto LABEL_122;
      }

      v60 = 1;
      v61 = *v53;
      v62 = v50 & v51;
      do
      {
        if (v61 == -4096)
        {
          goto LABEL_252;
        }

        v63 = v62 + v60++;
        v62 = v63 & v51;
        v61 = *(v186 + 2 * v62);
      }

      while (v61 != v49);
      if (v62 == v46)
      {
LABEL_252:
        while (++v47 != v48)
        {
          v46 = v188;
          if (v188)
          {
            goto LABEL_89;
          }
        }

LABEL_253:
        if (v190)
        {
          v139 = v189;
          v140 = 72 * v190;
          while (1)
          {
            if (mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor(*v139))
            {
              v141 = *(*v139 + 16);
              if (v141)
              {
                Parent = mlir::Block::getParent(v141);
                if (Parent != mlir::Value::getParentRegion(v158))
                {
LABEL_260:
                  v143 = v204;
                  if (v204 == v206)
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_265;
                }
              }

              else if (mlir::Value::getParentRegion(v158))
              {
                goto LABEL_260;
              }
            }

            v139 += 9;
            v140 -= 72;
            if (!v140)
            {
              v143 = v204;
              if (v204 == v206)
              {
LABEL_266:
                llvm::deallocate_buffer(v202, (8 * v203));
              }

LABEL_265:
              free(v143);
              goto LABEL_266;
            }
          }
        }

        goto LABEL_264;
      }

      v64 = 0;
      v65 = 1;
      while (v54 != -4096)
      {
        if (v64)
        {
          v66 = 0;
        }

        else
        {
          v66 = v54 == -8192;
        }

        if (v66)
        {
          v64 = v53;
        }

        v67 = v52 + v65++;
        v52 = v67 & v51;
        v53 = (v186 + 16 * v52);
        v54 = *v53;
        if (v49 == *v53)
        {
          goto LABEL_91;
        }
      }

      if (4 * v187 + 4 >= 3 * v46)
      {
        v46 *= 2;
      }

      else
      {
        if (v64)
        {
          v68 = v64;
        }

        else
        {
          v68 = v53;
        }

        if (v46 + ~v187 - HIDWORD(v187) > v46 >> 3)
        {
          LODWORD(v187) = v187 + 1;
          if (*v68 == -4096)
          {
            goto LABEL_116;
          }

          goto LABEL_115;
        }
      }

      llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(&v186, v46);
      if (v188)
      {
        v133 = (v188 - 1) & v50;
        v68 = v186 + 16 * v133;
        v134 = *v68;
        if (v49 != *v68)
        {
          v135 = 0;
          v136 = 1;
          while (v134 != -4096)
          {
            if (v135)
            {
              v137 = 0;
            }

            else
            {
              v137 = v134 == -8192;
            }

            if (v137)
            {
              v135 = v68;
            }

            v138 = v133 + v136++;
            v133 = v138 & (v188 - 1);
            v68 = v186 + 16 * v133;
            v134 = *v68;
            if (v49 == *v68)
            {
              goto LABEL_246;
            }
          }

          if (v135)
          {
            v68 = v135;
          }
        }
      }

      else
      {
        v68 = 0;
      }

LABEL_246:
      LODWORD(v187) = v187 + 1;
      if (*v68 == -4096)
      {
LABEL_116:
        *v68 = v49;
        *(v68 + 2) = 0;
        v195 = v199;
        v196 = v199;
        v197 = 4;
        LODWORD(v198) = 0;
        v166 = v49;
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v167, &v171, 4, &v195);
        if (v190 >= HIDWORD(v190))
        {
          if (v189 > &v166 || v189 + 72 * v190 <= &v166)
          {
            llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>,false>::grow();
          }

          llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>,false>::grow();
        }

        v69 = (v189 + 72 * v190);
        *v69 = v166;
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v69 + 1), v69 + 5, 4, &v167);
        LODWORD(v190) = v190 + 1;
        if (v168 != v167)
        {
          free(v168);
        }

        if (v196 != v195)
        {
          free(v196);
        }

        v55 = v190 - 1;
        *(v68 + 2) = v190 - 1;
        v56 = v189;
        v192 = &v194;
        v193 = 0x600000000;
        v57 = mlir::OpInterface<mlir::PromotableOpInterface,mlir::detail::PromotableOpInterfaceInterfaceTraits>::getInterfaceFor(v49);
        if (v57)
        {
LABEL_92:
          if (v49)
          {
            v58 = mlir::OpInterface<mlir::PromotableOpInterface,mlir::detail::PromotableOpInterfaceInterfaceTraits>::getInterfaceFor(v49);
            v166 = v49;
            v167 = v58;
            if (mlir::PromotableOpInterface::canUsesBeRemoved(&v166, &v56[72 * v55 + 8], &v192, v159))
            {
LABEL_129:
              if (!v193)
              {
                v131 = 1;
                v132 = v192;
                if (v192 == &v194)
                {
                  goto LABEL_224;
                }

                goto LABEL_223;
              }

              v71 = v192;
              v72 = (v192 + 8 * v193);
              while (1)
              {
                v73 = *v71;
                v74 = *(*v71 + 2);
                v75 = v186;
                v76 = v188;
                if (v188)
                {
                  v77 = ((v74 >> 4) ^ (v74 >> 9)) & (v188 - 1);
                  v78 = v186 + 16 * v77;
                  v79 = *v78;
                  if (v74 == *v78)
                  {
LABEL_135:
                    v80 = v189 + 72 * *(v186 + 4 * v77 + 2);
                    v82 = *(v80 + 1);
                    v83 = *(v80 + 2);
                    v81 = (v80 + 8);
                    if (v83 != v82)
                    {
                      goto LABEL_131;
                    }

                    goto LABEL_147;
                  }

                  v94 = 0;
                  v95 = 1;
                  while (v79 != -4096)
                  {
                    if (v94)
                    {
                      v96 = 0;
                    }

                    else
                    {
                      v96 = v79 == -8192;
                    }

                    if (v96)
                    {
                      v94 = v78;
                    }

                    v97 = v77 + v95++;
                    v77 = v97 & (v188 - 1);
                    v78 = v186 + 16 * v77;
                    v79 = *v78;
                    if (v74 == *v78)
                    {
                      goto LABEL_135;
                    }
                  }

                  if (v94)
                  {
                    v84 = v94;
                  }

                  else
                  {
                    v84 = v78;
                  }

                  v85 = v187;
                  if (4 * v187 + 4 >= 3 * v188)
                  {
LABEL_166:
                    v86 = 2 * v188;
                    goto LABEL_167;
                  }
                }

                else
                {
                  v84 = 0;
                  v85 = v187;
                  if (4 * v187 + 4 >= 3 * v188)
                  {
                    goto LABEL_166;
                  }
                }

                v86 = v188;
                if (v188 + ~v85 - HIDWORD(v187) > v188 >> 3)
                {
                  LODWORD(v187) = v85 + 1;
                  if (*v84 == -4096)
                  {
                    goto LABEL_141;
                  }

LABEL_140:
                  --HIDWORD(v187);
                  goto LABEL_141;
                }

LABEL_167:
                v98 = (v86 - 1) | ((v86 - 1) >> 1);
                v99 = v98 | (v98 >> 2) | ((v98 | (v98 >> 2)) >> 4);
                v100 = ((v99 | (v99 >> 8)) >> 16) | v99 | (v99 >> 8);
                if ((v100 + 1) > 0x40)
                {
                  v101 = v100 + 1;
                }

                else
                {
                  v101 = 64;
                }

                v188 = v101;
                buffer = llvm::allocate_buffer(16 * v101, 8uLL);
                v186 = buffer;
                if (v75)
                {
                  v187 = 0;
                  v103 = v188;
                  if (v188)
                  {
                    v104 = buffer;
                    if (((v188 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
                    {
                      goto LABEL_299;
                    }

                    v105 = ((v188 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
                    v104 = (buffer + 16 * (v105 & 0x1FFFFFFFFFFFFFFELL));
                    v106 = (buffer + 16);
                    v107 = v105 & 0x1FFFFFFFFFFFFFFELL;
                    do
                    {
                      *(v106 - 2) = -4096;
                      *v106 = -4096;
                      v106 += 4;
                      v107 -= 2;
                    }

                    while (v107);
                    if (v105 != (v105 & 0x1FFFFFFFFFFFFFFELL))
                    {
LABEL_299:
                      do
                      {
                        *v104 = -4096;
                        v104 = (v104 + 16);
                      }

                      while (v104 != (buffer + 16 * v103));
                    }
                  }

                  if (v76)
                  {
                    v108 = 0;
                    v109 = v103 - 1;
                    v110 = v75;
                    do
                    {
                      v124 = *v110;
                      if ((*v110 | 0x1000) != 0xFFFFFFFFFFFFF000)
                      {
                        v125 = ((v124 >> 4) ^ (v124 >> 9)) & v109;
                        v123 = buffer + 16 * v125;
                        v126 = *v123;
                        if (v124 != *v123)
                        {
                          v127 = 0;
                          v128 = 1;
                          while (v126 != -4096)
                          {
                            if (v127)
                            {
                              v129 = 0;
                            }

                            else
                            {
                              v129 = v126 == -8192;
                            }

                            if (v129)
                            {
                              v127 = v123;
                            }

                            v130 = v125 + v128++;
                            v125 = v130 & v109;
                            v123 = buffer + 16 * (v130 & v109);
                            v126 = *v123;
                            if (v124 == *v123)
                            {
                              goto LABEL_201;
                            }
                          }

                          if (v127)
                          {
                            v123 = v127;
                          }
                        }

LABEL_201:
                        *v123 = v124;
                        *(v123 + 2) = *(v110 + 2);
                        LODWORD(v187) = ++v108;
                      }

                      v110 = (v110 + 16);
                    }

                    while (v110 != (v75 + 16 * v76));
                  }

                  llvm::deallocate_buffer(v75, (16 * v76));
                }

                v187 = 0;
                v111 = v188;
                if (!v188)
                {
                  goto LABEL_215;
                }

                v112 = buffer;
                if (((v188 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
                {
                  goto LABEL_300;
                }

                v113 = ((v188 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
                v112 = (buffer + 16 * (v113 & 0x1FFFFFFFFFFFFFFELL));
                v114 = (buffer + 16);
                v115 = v113 & 0x1FFFFFFFFFFFFFFELL;
                do
                {
                  *(v114 - 2) = -4096;
                  *v114 = -4096;
                  v114 += 4;
                  v115 -= 2;
                }

                while (v115);
                if (v113 != (v113 & 0x1FFFFFFFFFFFFFFELL))
                {
LABEL_300:
                  do
                  {
                    *v112 = -4096;
                    v112 = (v112 + 16);
                  }

                  while (v112 != (buffer + 16 * v111));
                }

                if (v111)
                {
                  v116 = v111 - 1;
                  v117 = v116 & ((v74 >> 4) ^ (v74 >> 9));
                  v84 = buffer + 16 * v117;
                  v118 = *v84;
                  if (v74 != *v84)
                  {
                    v119 = 0;
                    v120 = 1;
                    while (v118 != -4096)
                    {
                      if (v119)
                      {
                        v121 = 0;
                      }

                      else
                      {
                        v121 = v118 == -8192;
                      }

                      if (v121)
                      {
                        v119 = v84;
                      }

                      v122 = v117 + v120++;
                      v117 = v122 & v116;
                      v84 = buffer + 16 * v117;
                      v118 = *v84;
                      if (v74 == *v84)
                      {
                        goto LABEL_216;
                      }
                    }

                    if (v119)
                    {
                      v84 = v119;
                    }
                  }
                }

                else
                {
LABEL_215:
                  v84 = 0;
                }

LABEL_216:
                LODWORD(v187) = v187 + 1;
                if (*v84 != -4096)
                {
                  goto LABEL_140;
                }

LABEL_141:
                *v84 = v74;
                *(v84 + 2) = 0;
                v195 = v199;
                v196 = v199;
                v197 = 4;
                LODWORD(v198) = 0;
                v166 = v74;
                llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v167, &v171, 4, &v195);
                if (v190 >= HIDWORD(v190))
                {
                  if (v189 > &v166 || v189 + 72 * v190 <= &v166)
                  {
                    llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>,false>::grow();
                  }

                  llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>,false>::grow();
                }

                v87 = (v189 + 72 * v190);
                *v87 = v166;
                llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v87 + 1), v87 + 5, 4, &v167);
                LODWORD(v190) = v190 + 1;
                if (v168 != v167)
                {
                  free(v168);
                }

                if (v196 != v195)
                {
                  free(v196);
                }

                v88 = v190 - 1;
                *(v84 + 2) = v190 - 1;
                v89 = v189 + 72 * v88;
                v82 = *(v89 + 1);
                v90 = *(v89 + 2);
                v81 = (v89 + 8);
                if (v90 != v82)
                {
                  goto LABEL_131;
                }

LABEL_147:
                v91 = *(v81 + 5);
                if (v91)
                {
                  v92 = 8 * v91;
                  v93 = v82;
                  while (*v93 != v73)
                  {
                    ++v93;
                    v92 -= 8;
                    if (!v92)
                    {
                      goto LABEL_151;
                    }
                  }

                  goto LABEL_132;
                }

LABEL_151:
                if (v91 < *(v81 + 4))
                {
                  *(v81 + 5) = v91 + 1;
                  v82[v91] = v73;
                  goto LABEL_132;
                }

LABEL_131:
                llvm::SmallPtrSetImplBase::insert_imp_big(v81, v73);
LABEL_132:
                if (++v71 == v72)
                {
                  v131 = 1;
                  v132 = v192;
                  if (v192 == &v194)
                  {
                    goto LABEL_224;
                  }

LABEL_223:
                  free(v132);
LABEL_224:
                  if (v131)
                  {
                    goto LABEL_252;
                  }

LABEL_264:
                  v143 = v204;
                  if (v204 == v206)
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_265;
                }
              }
            }

LABEL_222:
            v131 = 0;
            v132 = v192;
            if (v192 != &v194)
            {
              goto LABEL_223;
            }

            goto LABEL_224;
          }

          v59 = &v56[72 * v55];
          v166 = 0;
          v167 = 0;
LABEL_123:
          if (mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor(v49))
          {
            if (v49)
            {
              v70 = mlir::OpInterface<mlir::PromotableMemOpInterface,mlir::detail::PromotableMemOpInterfaceInterfaceTraits>::getInterfaceFor(v49);
              v195 = v49;
              v196 = v70;
              if (mlir::PromotableMemOpInterface::canUsesBeRemoved(&v195, v158, (v59 + 8), &v192, v159))
              {
                goto LABEL_129;
              }
            }

            else
            {
              v195 = 0;
              v196 = 0;
            }
          }

          else
          {
            v195 = 0;
            v196 = 0;
          }

          goto LABEL_222;
        }

LABEL_122:
        v59 = &v56[72 * v55];
        v166 = 0;
        v167 = v57;
        goto LABEL_123;
      }

LABEL_115:
      --HIDWORD(v187);
      goto LABEL_116;
    }

    while (1)
    {
      v18 = *(v17 + 2);
      v19 = v188;
      if (!v188)
      {
        goto LABEL_57;
      }

      v20 = ((v18 >> 4) ^ (v18 >> 9)) & (v188 - 1);
      v21 = (v186 + 16 * v20);
      v22 = *v21;
      if (v18 == *v21)
      {
LABEL_26:
        v23 = v189 + 72 * *(v186 + 4 * v20 + 2);
        v25 = *(v23 + 1);
        v26 = *(v23 + 2);
        v24 = (v23 + 8);
        if (v26 != v25)
        {
          goto LABEL_22;
        }

        goto LABEL_38;
      }

      v34 = 0;
      v35 = 1;
      while (v22 != -4096)
      {
        if (v34)
        {
          v36 = 0;
        }

        else
        {
          v36 = v22 == -8192;
        }

        if (v36)
        {
          v34 = v21;
        }

        v37 = v20 + v35++;
        v20 = v37 & (v188 - 1);
        v21 = (v186 + 16 * v20);
        v22 = *v21;
        if (v18 == *v21)
        {
          goto LABEL_26;
        }
      }

      v38 = (v34 ? v34 : v21);
      if (4 * v187 + 4 < 3 * v188)
      {
        if (v188 + ~v187 - HIDWORD(v187) > v188 >> 3)
        {
          LODWORD(v187) = v187 + 1;
          if (*v38 == -4096)
          {
            goto LABEL_32;
          }

LABEL_31:
          --HIDWORD(v187);
          goto LABEL_32;
        }
      }

      else
      {
LABEL_57:
        v19 = 2 * v188;
      }

      llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(&v186, v19);
      if (v188)
      {
        v39 = (v188 - 1) & ((v18 >> 4) ^ (v18 >> 9));
        v38 = v186 + 16 * v39;
        v40 = *v38;
        if (v18 != *v38)
        {
          v41 = 0;
          v42 = 1;
          while (v40 != -4096)
          {
            if (v41)
            {
              v43 = 0;
            }

            else
            {
              v43 = v40 == -8192;
            }

            if (v43)
            {
              v41 = v38;
            }

            v44 = v39 + v42++;
            v39 = v44 & (v188 - 1);
            v38 = v186 + 16 * v39;
            v40 = *v38;
            if (v18 == *v38)
            {
              goto LABEL_73;
            }
          }

          if (v41)
          {
            v38 = v41;
          }
        }
      }

      else
      {
        v38 = 0;
      }

LABEL_73:
      LODWORD(v187) = v187 + 1;
      if (*v38 != -4096)
      {
        goto LABEL_31;
      }

LABEL_32:
      *v38 = v18;
      *(v38 + 2) = 0;
      v195 = v199;
      v196 = v199;
      v197 = 4;
      LODWORD(v198) = 0;
      v166 = v18;
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v167, &v171, 4, &v195);
      if (v190 >= HIDWORD(v190))
      {
        if (v189 > &v166 || v189 + 72 * v190 <= &v166)
        {
          llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>,false>::grow();
        }

        llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallPtrSet<mlir::OpOperand *,4u>>,false>::grow();
      }

      v27 = (v189 + 72 * v190);
      *v27 = v166;
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v27 + 1), v27 + 5, 4, &v167);
      LODWORD(v190) = v190 + 1;
      if (v168 != v167)
      {
        free(v168);
      }

      if (v196 != v195)
      {
        free(v196);
      }

      v28 = v190 - 1;
      *(v38 + 2) = v190 - 1;
      v29 = v189 + 72 * v28;
      v25 = *(v29 + 1);
      v30 = *(v29 + 2);
      v24 = (v29 + 8);
      if (v30 != v25)
      {
        goto LABEL_22;
      }

LABEL_38:
      v31 = *(v24 + 5);
      if (v31)
      {
        v32 = 8 * v31;
        v33 = v25;
        while (*v33 != v17)
        {
          ++v33;
          v32 -= 8;
          if (!v32)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_23;
      }

LABEL_42:
      if (v31 < *(v24 + 4))
      {
        *(v24 + 5) = v31 + 1;
        v25[v31] = v17;
        goto LABEL_23;
      }

LABEL_22:
      llvm::SmallPtrSetImplBase::insert_imp_big(v24, v17);
LABEL_23:
      v17 = *v17;
      if (!v17)
      {
        v16 = v158[0];
        goto LABEL_80;
      }
    }
  }

  v144 = v189;
  if (v190)
  {
    v145 = (v189 + 72 * v190 - 64);
    v146 = -72 * v190;
    do
    {
      v147 = v145[1];
      if (v147 != *v145)
      {
        free(v147);
      }

      v145 -= 9;
      v146 += 72;
    }

    while (v146);
    v144 = v189;
    if (v189 == &v191)
    {
LABEL_270:
      llvm::deallocate_buffer(v186, (16 * v188));
    }
  }

  else if (v189 == &v191)
  {
    goto LABEL_270;
  }

  free(v144);
  goto LABEL_270;
}

_DWORD *llvm::SmallVectorImpl<mlir::PromotableAllocationOpInterface>::swap(_DWORD *result, _DWORD *a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  v4 = *result;
  if (*result != result + 4 && *a2 != a2 + 4)
  {
    *result = *a2;
    *a2 = v4;
    v5 = result[2];
    result[2] = a2[2];
    a2[2] = v5;
    v6 = result[3];
    result[3] = a2[3];
    a2[3] = v6;
    return result;
  }

  if (result[3] < a2[2])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = result[2];
  if (a2[3] < v7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = a2[2];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v13 = 0;
    do
    {
      v14 = *a2;
      v15 = *(*result + v13);
      *(*result + v13) = *(*a2 + v13);
      *(v14 + v13) = v15;
      v13 += 16;
    }

    while (16 * v9 != v13);
    v7 = result[2];
    v8 = a2[2];
    v10 = v7;
    v11 = v8;
    v12 = v7 - v8;
    if (v7 > v8)
    {
LABEL_12:
      if (v9 != v7)
      {
        result = memcpy((*a2 + 16 * v11), (*result + 16 * v9), 16 * (v10 - v9));
        v8 = a2[2];
      }

      a2[2] = v12 + v8;
      v3[2] = v9;
      return result;
    }
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = v7 - v8;
    if (v7 > v8)
    {
      goto LABEL_12;
    }
  }

  v16 = v8 - v7;
  if (v8 > v7)
  {
    if (v9 != v8)
    {
      result = memcpy((*result + 16 * v10), (*a2 + 16 * v9), 16 * (v11 - v9));
      v7 = v3[2];
    }

    v3[2] = v16 + v7;
    a2[2] = v9;
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[189];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::RegionKindInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionKindInterface]";
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

void *llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(uint64_t a1, int a2)
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
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v24 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v23 = &result[2 * (v31 & v25)];
              v27 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_24:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}