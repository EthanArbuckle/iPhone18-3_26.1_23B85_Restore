uint64_t llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::getValueExpectedFlagDefault(uint64_t a1)
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

void *llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::~opt(void *a1)
{
  *a1 = &unk_28689DB28;
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

  a1[19] = &unk_28689DC60;
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

void llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::~opt(void *a1)
{
  *a1 = &unk_28689DB28;
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

  a1[19] = &unk_28689DC60;
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

void *llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::printOptionValue(void *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_28689DBD8;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 19), result, &v6, (result + 17), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::setDefault(uint64_t result)
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

uint64_t llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::getExtraOptionNames(uint64_t result, uint64_t a2)
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

void *llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>::~parser(void *result)
{
  *result = &unk_28689DC60;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>::~parser(void *a1)
{
  *a1 = &unk_28689DC60;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::{lambda(mlir::DefaultTimingManager::DisplayMode const&)#1},std::allocator<llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::{lambda(mlir::DefaultTimingManager::DisplayMode const&)#1}>,void ()(mlir::DefaultTimingManager::DisplayMode const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025739CD1BLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025739CD1BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025739CD1BLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025739CD1BLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *&v14 = a5;
  *(&v14 + 1) = a6;
  v15 = &unk_28689DBD8;
  v17 = 1;
  v16 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v13 || v7 + 48 * v8 <= &v13)
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>::OptionInfo,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>::OptionInfo,false>::grow();
  }

  v9 = v7 + 48 * *(a1 + 24);
  v10 = v14;
  *v9 = v13;
  *(v9 + 16) = v10;
  *(v9 + 32) = &unk_28689DC40;
  v11 = v16;
  *(v9 + 44) = v17;
  *(v9 + 40) = v11;
  *(v9 + 32) = &unk_28689DBD8;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

uint64_t llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::opt<char [19],llvm::cl::desc,llvm::cl::initializer<mlir::DefaultTimingManager::OutputFormat>,llvm::cl::ValuesClass>(uint64_t a1, const char *a2, _OWORD *a3, int **a4, uint64_t *a5)
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
  *(a1 + 136) = &unk_28689DE08;
  *(a1 + 144) = 0;
  *a1 = &unk_28689DD58;
  *(a1 + 152) = &unk_28689DE90;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 568) = &unk_28689DEF8;
  *(a1 + 592) = a1 + 568;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  v13 = **a4;
  *(a1 + 128) = v13;
  *(a1 + 148) = 1;
  *(a1 + 144) = v13;
  v14 = *(a5 + 2);
  if (v14)
  {
    v15 = *a5;
    v16 = v15 + 40 * v14;
    do
    {
      llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>::addLiteralOption<int>(a1 + 152, *v15, *(v15 + 8), (v15 + 16), *(v15 + 24), *(v15 + 32));
      v15 += 40;
    }

    while (v15 != v16);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
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
    return llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::getValueExpectedFlagDefault(v22);
  }
}

uint64_t llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::getValueExpectedFlagDefault(uint64_t a1)
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

void *llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::~opt(void *a1)
{
  *a1 = &unk_28689DD58;
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

  a1[19] = &unk_28689DE90;
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

void llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::~opt(void *a1)
{
  *a1 = &unk_28689DD58;
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

  a1[19] = &unk_28689DE90;
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

void *llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::printOptionValue(void *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_28689DE08;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 19), result, &v6, (result + 17), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::setDefault(uint64_t result)
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

uint64_t llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::getExtraOptionNames(uint64_t result, uint64_t a2)
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

void *llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>::~parser(void *result)
{
  *result = &unk_28689DE90;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>::~parser(void *a1)
{
  *a1 = &unk_28689DE90;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::{lambda(mlir::DefaultTimingManager::OutputFormat const&)#1},std::allocator<llvm::cl::opt<mlir::DefaultTimingManager::OutputFormat,false,llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>>::{lambda(mlir::DefaultTimingManager::OutputFormat const&)#1}>,void ()(mlir::DefaultTimingManager::OutputFormat const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025739D00ALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025739D00ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025739D00ALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025739D00ALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *&v14 = a5;
  *(&v14 + 1) = a6;
  v15 = &unk_28689DE08;
  v17 = 1;
  v16 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v13 || v7 + 48 * v8 <= &v13)
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>::OptionInfo,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::DefaultTimingManager::OutputFormat>::OptionInfo,false>::grow();
  }

  v9 = v7 + 48 * *(a1 + 24);
  v10 = v14;
  *v9 = v13;
  *(v9 + 16) = v10;
  *(v9 + 32) = &unk_28689DE70;
  v11 = v16;
  *(v9 + 44) = v17;
  *(v9 + 40) = v11;
  *(v9 + 32) = &unk_28689DE08;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

void *anonymous namespace::OutputJsonStrategy::printHeader(_anonymous_namespace_::OutputJsonStrategy *this, const TimeRecord *a2)
{
  result = *(this + 1);
  v3 = result[4];
  if (result[3] == v3)
  {
    result = llvm::raw_ostream::write(result, "[", 1uLL);
    v5 = result[4];
    if (result[3] != v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v3 = 91;
    v4 = result[3];
    v5 = (result[4] + 1);
    result[4] = v5;
    if (v4 != v5)
    {
LABEL_3:
      *v5 = 10;
      ++result[4];
      return result;
    }
  }

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

llvm::raw_ostream *anonymous namespace::OutputJsonStrategy::printFooter(_anonymous_namespace_::OutputJsonStrategy *this)
{
  v2 = *(this + 1);
  v3 = v2[4];
  if (v2[3] != v3)
  {
    *v3 = 93;
    v4 = v2[3];
    v5 = (v2[4] + 1);
    v2[4] = v5;
    if (v4 != v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::raw_ostream::write(v2, "\n", 1uLL);
    result = *(this + 1);
    if (*(result + 4) == *(result + 2))
    {
      return result;
    }

    goto LABEL_4;
  }

  v2 = llvm::raw_ostream::write(v2, "]", 1uLL);
  v5 = v2[4];
  if (v2[3] == v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  *v5 = 10;
  ++v2[4];
  result = *(this + 1);
  if (*(result + 4) == *(result + 2))
  {
    return result;
  }

LABEL_4:

  return llvm::raw_ostream::flush_nonempty(result);
}

void *anonymous namespace::OutputJsonStrategy::printTime(_anonymous_namespace_::OutputJsonStrategy *this, const TimeRecord *a2, const TimeRecord *a3)
{
  if (*&a3->scale == *&a3->value)
  {
LABEL_14:
    v17 = *(this + 1);
    v18 = v17[4];
    if ((v17[3] - v18) <= 8)
    {
      goto LABEL_15;
    }

LABEL_18:
    *(v18 + 8) = 123;
    *v18 = *"wall: {";
    v17[4] += 9;
    v19 = *(this + 1);
    v20 = v19[4];
    if ((v19[3] - v20) > 0xB)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v6 = *(this + 1);
  v7 = v6[4];
  if ((v6[3] - v7) > 8)
  {
    *(v7 + 8) = 123;
    *v7 = *"user: {";
    v6[4] += 9;
    v8 = *(this + 1);
    v9 = v8[4];
    if ((v8[3] - v9) > 0xB)
    {
      goto LABEL_4;
    }
  }

  else
  {
    llvm::raw_ostream::write(v6, "user: {", 9uLL);
    v8 = *(this + 1);
    v9 = v8[4];
    if ((v8[3] - v9) > 0xB)
    {
LABEL_4:
      *(v9 + 8) = 540680814;
      *v9 = *"duration: ";
      v8[4] += 12;
      goto LABEL_7;
    }
  }

  v8 = llvm::raw_ostream::write(v8, "duration: ", 0xCuLL);
LABEL_7:
  v28 = &unk_28689DAF0;
  v29 = "%8.4f";
  v30 = *&a2->scale;
  v10 = llvm::raw_ostream::operator<<(v8, &v28);
  v11 = v10[4];
  if (v10[3] - v11 > 1uLL)
  {
    *v11 = 8236;
    v10[4] += 2;
    v12 = *(this + 1);
    v13 = v12[4];
    if (v12[3] - v13 > 0xDuLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ", ", 2uLL);
    v12 = *(this + 1);
    v13 = v12[4];
    if (v12[3] - v13 > 0xDuLL)
    {
LABEL_9:
      qmemcpy(v13, "percentage: ", 14);
      v12[4] += 14;
      goto LABEL_12;
    }
  }

  v12 = llvm::raw_ostream::write(v12, "percentage: ", 0xEuLL);
LABEL_12:
  v14 = *&a2->scale * 100.0 / *&a3->scale;
  v28 = &unk_28689DAF0;
  v29 = "%5.1f";
  v30 = v14;
  llvm::raw_ostream::operator<<(v12, &v28);
  v15 = *(this + 1);
  v16 = v15[4];
  if ((v15[3] - v16) <= 2)
  {
    llvm::raw_ostream::write(v15, "}, ", 3uLL);
    goto LABEL_14;
  }

  *(v16 + 2) = 32;
  *v16 = 11389;
  v15[4] += 3;
  v17 = *(this + 1);
  v18 = v17[4];
  if ((v17[3] - v18) > 8)
  {
    goto LABEL_18;
  }

LABEL_15:
  llvm::raw_ostream::write(v17, "wall: {", 9uLL);
  v19 = *(this + 1);
  v20 = v19[4];
  if ((v19[3] - v20) > 0xB)
  {
LABEL_16:
    *(v20 + 8) = 540680814;
    *v20 = *"duration: ";
    v19[4] += 12;
    goto LABEL_20;
  }

LABEL_19:
  v19 = llvm::raw_ostream::write(v19, "duration: ", 0xCuLL);
LABEL_20:
  v28 = &unk_28689DAF0;
  v29 = "%8.4f";
  v30 = *&a2->value;
  v21 = llvm::raw_ostream::operator<<(v19, &v28);
  v22 = v21[4];
  if (v21[3] - v22 > 1uLL)
  {
    *v22 = 8236;
    v21[4] += 2;
    v23 = *(this + 1);
    v24 = v23[4];
    if (v23[3] - v24 > 0xDuLL)
    {
      goto LABEL_22;
    }
  }

  else
  {
    llvm::raw_ostream::write(v21, ", ", 2uLL);
    v23 = *(this + 1);
    v24 = v23[4];
    if (v23[3] - v24 > 0xDuLL)
    {
LABEL_22:
      qmemcpy(v24, "percentage: ", 14);
      v23[4] += 14;
      goto LABEL_25;
    }
  }

  v23 = llvm::raw_ostream::write(v23, "percentage: ", 0xEuLL);
LABEL_25:
  v25 = *&a2->value * 100.0 / *&a3->value;
  v28 = &unk_28689DAF0;
  v29 = "%5.1f";
  v30 = v25;
  llvm::raw_ostream::operator<<(v23, &v28);
  result = *(this + 1);
  v27 = result[4];
  if (result[3] == v27)
  {
    return llvm::raw_ostream::write(result, "}", 1uLL);
  }

  *v27 = 125;
  ++result[4];
  return result;
}

void *anonymous namespace::OutputJsonStrategy::printListEntry(void *a1, const char *a2, size_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = a1[1];
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, "{", 1uLL);
  }

  else
  {
    *v13 = 123;
    ++v12[4];
  }

  (*(*a1 + 32))(a1, a4, a5);
  v14 = a1[1];
  v15 = v14[4];
  if ((v14[3] - v15) <= 9)
  {
    v14 = llvm::raw_ostream::write(v14, ", name: ", 0xAuLL);
    v16 = v14[4];
    if (v14[3] != v16)
    {
      goto LABEL_6;
    }

LABEL_9:
    v14 = llvm::raw_ostream::write(v14, "", 1uLL);
    v18 = v14[4];
    if (a3 > v14[3] - v18)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  *(v15 + 8) = 8250;
  *v15 = *", name: ";
  v19 = v14[3];
  v16 = (v14[4] + 10);
  v14[4] = v16;
  if (v19 == v16)
  {
    goto LABEL_9;
  }

LABEL_6:
  *v16 = 34;
  v17 = v14[3];
  v18 = (v14[4] + 1);
  v14[4] = v18;
  if (a3 > v17 - v18)
  {
LABEL_7:
    v14 = llvm::raw_ostream::write(v14, a2, a3);
    v18 = v14[4];
    goto LABEL_12;
  }

LABEL_10:
  if (a3)
  {
    v20 = v14;
    memcpy(v18, a2, a3);
    v14 = v20;
    v18 = (v20[4] + a3);
    v20[4] = v18;
  }

LABEL_12:
  if (v14[3] == v18)
  {
    llvm::raw_ostream::write(v14, "", 1uLL);
    v21 = a1[1];
    v22 = v21[4];
    if (v21[3] != v22)
    {
LABEL_14:
      *v22 = 125;
      ++v21[4];
      if (a6)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else
  {
    *v18 = 34;
    ++v14[4];
    v21 = a1[1];
    v22 = v21[4];
    if (v21[3] != v22)
    {
      goto LABEL_14;
    }
  }

  llvm::raw_ostream::write(v21, "}", 1uLL);
  if (a6)
  {
    goto LABEL_20;
  }

LABEL_18:
  v23 = a1[1];
  v24 = v23[4];
  if (v23[3] == v24)
  {
    llvm::raw_ostream::write(v23, ",", 1uLL);
    result = a1[1];
    v26 = result[4];
    if (result[3] != v26)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  *v24 = 44;
  ++v23[4];
LABEL_20:
  result = a1[1];
  v26 = result[4];
  if (result[3] != v26)
  {
LABEL_21:
    *v26 = 10;
    ++result[4];
    return result;
  }

LABEL_23:

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

void *anonymous namespace::OutputJsonStrategy::printTreeEntry(void **a1, unsigned int a2, const char *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v11 = llvm::raw_ostream::indent(a1[1], a2);
  v12 = v11[4];
  if (v11[3] == v12)
  {
    llvm::raw_ostream::write(v11, "{", 1uLL);
  }

  else
  {
    *v12 = 123;
    ++v11[4];
  }

  ((*a1)[4])(a1, a5, a6);
  v13 = a1[1];
  v14 = v13[4];
  if ((v13[3] - v14) <= 9)
  {
    v13 = llvm::raw_ostream::write(v13, ", name: ", 0xAuLL);
    v15 = v13[4];
    if (v13[3] != v15)
    {
      goto LABEL_6;
    }

LABEL_9:
    v13 = llvm::raw_ostream::write(v13, "", 1uLL);
    v17 = v13[4];
    if (a4 > v13[3] - v17)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  *(v14 + 8) = 8250;
  *v14 = *", name: ";
  v18 = v13[3];
  v15 = (v13[4] + 10);
  v13[4] = v15;
  if (v18 == v15)
  {
    goto LABEL_9;
  }

LABEL_6:
  *v15 = 34;
  v16 = v13[3];
  v17 = (v13[4] + 1);
  v13[4] = v17;
  if (a4 > v16 - v17)
  {
LABEL_7:
    v13 = llvm::raw_ostream::write(v13, a3, a4);
    v17 = v13[4];
    goto LABEL_12;
  }

LABEL_10:
  if (a4)
  {
    v19 = v13;
    memcpy(v17, a3, a4);
    v13 = v19;
    v17 = (v19[4] + a4);
    v19[4] = v17;
  }

LABEL_12:
  if (v13[3] != v17)
  {
    *v17 = 34;
    ++v13[4];
    result = a1[1];
    v21 = result[4];
    if (result[3] - v21 <= 0xCuLL)
    {
      goto LABEL_14;
    }

LABEL_17:
    qmemcpy(v21, ", passes: [", 13);
    v23 = result[3];
    v22 = (result[4] + 13);
    result[4] = v22;
    if (v23 != v22)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  llvm::raw_ostream::write(v13, "", 1uLL);
  result = a1[1];
  v21 = result[4];
  if (result[3] - v21 > 0xCuLL)
  {
    goto LABEL_17;
  }

LABEL_14:
  result = llvm::raw_ostream::write(result, ", passes: [", 0xDuLL);
  v22 = result[4];
  if (result[3] != v22)
  {
LABEL_15:
    *v22 = 10;
    ++result[4];
    return result;
  }

LABEL_18:

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

void *anonymous namespace::OutputJsonStrategy::printTreeEntryEnd(_anonymous_namespace_::OutputJsonStrategy *this, unsigned int a2, char a3)
{
  v5 = llvm::raw_ostream::indent(*(this + 1), a2);
  v6 = v5[4];
  if ((v5[3] - v6) > 2)
  {
    *(v6 + 2) = 93;
    *v6 = 32123;
    v5[4] += 3;
    v7 = *(this + 1);
    v8 = v7[4];
    if (v7[3] != v8)
    {
LABEL_3:
      *v8 = 125;
      ++v7[4];
      if (a3)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
    llvm::raw_ostream::write(v5, "{}]", 3uLL);
    v7 = *(this + 1);
    v8 = v7[4];
    if (v7[3] != v8)
    {
      goto LABEL_3;
    }
  }

  llvm::raw_ostream::write(v7, "}", 1uLL);
  if (a3)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9 = *(this + 1);
  v10 = v9[4];
  if (v9[3] == v10)
  {
    llvm::raw_ostream::write(v9, ",", 1uLL);
    result = *(this + 1);
    v12 = result[4];
    if (result[3] != v12)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  *v10 = 44;
  ++v9[4];
LABEL_9:
  result = *(this + 1);
  v12 = result[4];
  if (result[3] != v12)
  {
LABEL_10:
    *v12 = 10;
    ++result[4];
    return result;
  }

LABEL_12:

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

uint64_t mlir::splitAndProcessBuffer(char **a1, uint64_t (*a2)(uint64_t, char **, llvm::formatv_object_base *), uint64_t a3, llvm::formatv_object_base *a4, unsigned __int8 *a5, unint64_t a6, llvm::formatv_object_base *a7, llvm::formatv_object_base *a8)
{
  v74[16] = *MEMORY[0x277D85DE8];
  v67[0] = a2;
  v67[1] = a3;
  if (a6)
  {
    v66 = *a1;
    v72 = v74;
    v73 = 0x800000000;
    v14 = *(v66 + 2) - *(v66 + 1);
    *&v70 = *(v66 + 1);
    *(&v70 + 1) = v14;
    if (a6 >= a6 - 2)
    {
      v15 = a6 - 2;
    }

    else
    {
      v15 = a6;
    }

    v16 = 1;
    llvm::StringRef::split(&v70, &v72, a5, v15, -1, 1);
    if (v73)
    {
      v55 = a8;
      llvm::SourceMgr::SourceMgr(&v63);
      v17 = *a1;
      *a1 = 0;
      v71[0] = 0;
      v70 = v17;
      v54 = a7;
      if (v64 >= v65)
      {
        v18 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v63, &v70);
      }

      else
      {
        v18 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v64, &v70) + 3;
      }

      v64 = v18;
      llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v70);
      *&v70 = v71;
      *(&v70 + 1) = 0x800000000;
      if (v73)
      {
        v22 = v72;
        v23 = &v72[16 * v73];
        if (a6 <= 2)
        {
          v24 = 0;
        }

        else
        {
          v24 = v15;
        }

        v56 = a6 - 2;
        v25 = a6 - v24;
        if (v25)
        {
          v57 = 0;
          v26 = 0;
          do
          {
            v34 = *v22;
            v35 = *(v22 + 1);
            if (v26)
            {
              if (v35 < v25 || ((v21 = memcmp(*v22, &a5[v24], v25), !v21) ? (v36 = v35 >= 3) : (v36 = 0), !v36 || v34[2] == 48))
              {
                v32 = llvm::errs(v21);
                v68[0] = "near miss with file split marker";
                LOWORD(v69) = 259;
                llvm::SourceMgr::PrintMessage(&v63, v32, v34, 1, v68, 0, 0, v33, 0, 0, 1);
                v26 += v56 + v35;
              }

              else
              {
                if (DWORD2(v70) >= HIDWORD(v70))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v37 = (v70 + 16 * DWORD2(v70));
                *v37 = v57;
                v37[1] = v26;
                ++DWORD2(v70);
                v26 = v35 - 2;
                v57 = v34 + 2;
              }
            }

            else
            {
              v26 = *(v22 + 1);
              v57 = *v22;
            }

            v22 += 16;
          }

          while (v22 != v23);
        }

        else
        {
          v57 = 0;
          v26 = 0;
          do
          {
            v30 = *v22;
            v29 = *(v22 + 1);
            if (v26)
            {
              if (v29 < 3 || v30[2] == 48)
              {
                v27 = llvm::errs(v21);
                v68[0] = "near miss with file split marker";
                LOWORD(v69) = 259;
                llvm::SourceMgr::PrintMessage(&v63, v27, v30, 1, v68, 0, 0, v28, 0, 0, 1);
                v26 += v56 + v29;
              }

              else
              {
                if (DWORD2(v70) >= HIDWORD(v70))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v31 = (v70 + 16 * DWORD2(v70));
                *v31 = v57;
                v31[1] = v26;
                ++DWORD2(v70);
                v26 = v29 - 2;
                v57 = v30 + 2;
              }
            }

            else
            {
              v26 = *(v22 + 1);
              v57 = *v22;
            }

            v22 += 16;
          }

          while (v22 != v23);
        }

        if (v26)
        {
          if (DWORD2(v70) >= HIDWORD(v70))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v38 = (v70 + 16 * DWORD2(v70));
          *v38 = v57;
          v38[1] = v26;
          ++DWORD2(v70);
        }
      }

      v62 = 0;
      v58[0] = v54;
      v58[1] = v55;
      v58[2] = "\n";
      v59 = 773;
      llvm::Twine::str(v58, __p);
      if ((v61 & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v40 = v61;
      }

      else
      {
        v40 = __p[1];
      }

      v41 = v70;
      v42 = DWORD2(v70);
      v68[0] = &v63;
      v68[1] = &v66;
      v68[2] = v67;
      v68[3] = a4;
      v69 = &v62;
      if (DWORD2(v70))
      {
        mlir::splitAndProcessBuffer(std::unique_ptr<llvm::MemoryBuffer>,llvm::function_ref<llvm::LogicalResult ()(std::unique_ptr<llvm::MemoryBuffer>,llvm::raw_ostream &)>,llvm::raw_ostream &,llvm::StringRef,llvm::StringRef)::$_0::operator()(v68, *v70, *(v70 + 8));
        if (v42 != 1)
        {
          v43 = 16 * v42;
          if (v40)
          {
            v44 = v41 + v43;
            v45 = v41 + 16;
            do
            {
              while (1)
              {
                v48 = *(a4 + 4);
                if (*(a4 + 3) - v48 < v40)
                {
                  break;
                }

                memcpy(v48, v39, v40);
                *(a4 + 4) += v40;
                v46 = *v45;
                v47 = *(v45 + 8);
                v45 += 16;
                mlir::splitAndProcessBuffer(std::unique_ptr<llvm::MemoryBuffer>,llvm::function_ref<llvm::LogicalResult ()(std::unique_ptr<llvm::MemoryBuffer>,llvm::raw_ostream &)>,llvm::raw_ostream &,llvm::StringRef,llvm::StringRef)::$_0::operator()(v68, v46, v47);
                if (v45 == v44)
                {
                  goto LABEL_60;
                }
              }

              llvm::raw_ostream::write(a4, v39, v40);
              v49 = *v45;
              v50 = *(v45 + 8);
              v45 += 16;
              mlir::splitAndProcessBuffer(std::unique_ptr<llvm::MemoryBuffer>,llvm::function_ref<llvm::LogicalResult ()(std::unique_ptr<llvm::MemoryBuffer>,llvm::raw_ostream &)>,llvm::raw_ostream &,llvm::StringRef,llvm::StringRef)::$_0::operator()(v68, v49, v50);
            }

            while (v45 != v44);
          }

          else
          {
            v51 = (v41 + 24);
            v52 = v43 - 16;
            do
            {
              mlir::splitAndProcessBuffer(std::unique_ptr<llvm::MemoryBuffer>,llvm::function_ref<llvm::LogicalResult ()(std::unique_ptr<llvm::MemoryBuffer>,llvm::raw_ostream &)>,llvm::raw_ostream &,llvm::StringRef,llvm::StringRef)::$_0::operator()(v68, *(v51 - 1), *v51);
              v51 += 2;
              v52 -= 16;
            }

            while (v52);
          }
        }
      }

LABEL_60:
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = (v62 & 1) == 0;
      if (v70 != v71)
      {
        free(v70);
      }

      llvm::SourceMgr::~SourceMgr(&v63);
    }

    if (v72 != v74)
    {
      free(v72);
    }
  }

  else
  {
    v19 = *a1;
    *a1 = 0;
    v72 = v19;
    v16 = a2(a3, &v72, a4);
    v20 = v72;
    v72 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  return v16;
}

uint64_t mlir::splitAndProcessBuffer(std::unique_ptr<llvm::MemoryBuffer>,llvm::function_ref<llvm::LogicalResult ()(std::unique_ptr<llvm::MemoryBuffer>,llvm::raw_ostream &)>,llvm::raw_ostream &,llvm::StringRef,llvm::StringRef)::$_0::operator()(uint64_t a1, char *a2, size_t a3)
{
  LineAndColumn = llvm::SourceMgr::getLineAndColumn(*a1, a2, 0);
  v7 = (*(***(a1 + 8) + 16))(**(a1 + 8));
  v17[0] = "within split at ";
  v17[2] = v7;
  v17[3] = v8;
  v18 = 1283;
  v19[0] = v17;
  v19[2] = ":";
  v20 = 770;
  v21[0] = v19;
  v21[2] = LineAndColumn;
  v22 = 2306;
  v23[0] = v21;
  v23[2] = " offset ";
  v24 = 770;
  llvm::MemoryBuffer::getMemBufferCopy(a2, a3, v23, 0, &v25);
  v9 = v25;
  v25 = 0;
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v13 = *v11;
  v12 = *(v11 + 8);
  v23[0] = v9;
  v14 = v13(v12, v23, v10);
  v15 = v23[0];
  v23[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if ((v14 & 1) == 0)
  {
    **(a1 + 32) = 1;
  }

  result = v25;
  v25 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

unint64_t mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_3, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    v6 = a1;
    mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID();
    a1 = v6;
    a2 = v7;
  }

  *&v11 = a1;
  *(&v11 + 1) = a2;
  llvm::sys::RWMutexImpl::lock_shared(&qword_27F874250);
  v2 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>(&qword_27F8742C0, &v11);
  if (!v2 || v2 == qword_27F8742C0 + 24 * dword_27F8742D0)
  {
    llvm::sys::RWMutexImpl::unlock_shared(&qword_27F874250);
    llvm::sys::RWMutexImpl::lock(&qword_27F874250);
    v8 = &mlir::detail::TypeIDResolver<void,void>::id;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>(&qword_27F8742C0, &v11, &v8, &v9);
    if (v10)
    {
      qword_27F8742B0 += 8;
      if (qword_27F874260 && (Slow = (qword_27F874260 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 8 <= qword_27F874268))
      {
        qword_27F874260 = Slow + 8;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(&qword_27F874260, 8, 8, 3);
      }

      *(v9 + 16) = Slow;
    }

    else
    {
      Slow = *(v9 + 16);
    }

    llvm::sys::RWMutexImpl::unlock(&qword_27F874250);
    return Slow;
  }

  else
  {
    v3 = *(v2 + 16);
    llvm::sys::RWMutexImpl::unlock_shared(&qword_27F874250);
    return v3;
  }
}

void sub_257148484()
{
  if (*(v0 + 88))
  {
    llvm::deallocate_buffer(**(v0 + 80), *(*(v0 + 80) + 8));
  }

  *(v0 + 88) = 0;
  v1 = *(v0 + 40);
  if (v1)
  {
    *(v0 + 96) = 0;
    v2 = *(v0 + 32);
    v3 = *v2 + 4096;
    *(v0 + 16) = *v2;
    *(v0 + 24) = v3;
    if (v1 != 1)
    {
      v4 = ((v2 + 8 - *(v0 + 32)) >> 10) & 0x1FFFFFF;
      if (v4 >= 0x1E)
      {
        LOBYTE(v4) = 30;
      }

      llvm::deallocate_buffer(*(v2 + 8), (4096 << v4));
    }

    *(v0 + 40) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 16);

  llvm::sys::RWMutexImpl::~RWMutexImpl(v0);
}

double llvm_blake3_hasher_init(uint64_t a1)
{
  *a1 = IV;
  *(a1 + 16) = unk_25739D0B0;
  *(a1 + 32) = IV;
  *(a1 + 48) = unk_25739D0B0;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 138) = 0;
  *(a1 + 144) = 0;
  return result;
}

double llvm_blake3_hasher_init_keyed(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 138) = 16;
  *(a1 + 144) = 0;
  return result;
}

double llvm_blake3_hasher_init_derive_key_raw(uint64_t a1, char *a2, unint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v8[0] = IV;
  v8[1] = unk_25739D0B0;
  memset(&v8[8] + 8, 0, 376);
  v8[2] = IV;
  v8[3] = unk_25739D0B0;
  memset(&v8[4], 0, 74);
  BYTE10(v8[8]) = 32;
  llvm_blake3_hasher_update(v8, a2, a3);
  llvm_blake3_hasher_finalize_seek(v8, 0, v7, 0x20uLL);
  v4 = v7[0];
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 138) = 64;
  *(a1 + 144) = 0;
  return result;
}

double llvm_blake3_hasher_update(__int128 *a1, char *__src, unint64_t a3)
{
  v163 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return *&v19;
  }

  v3 = a3;
  v4 = __src;
  v6 = *(a1 + 136);
  if (!(v6 + (*(a1 + 137) << 6)))
  {
    goto LABEL_27;
  }

  if (1024 - (v6 + (*(a1 + 137) << 6)) >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 1024 - (v6 + (*(a1 + 137) << 6));
  }

  if (*(a1 + 136))
  {
    if (64 - v6 >= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = 64 - v6;
    }

    v11 = (a1 + 72);
    memcpy(a1 + v6 + 72, __src, v10);
    v12 = *(a1 + 136) + v10;
    *(a1 + 136) = v12;
    v13 = __src;
    v14 = &__src[v10];
    v15 = v7 - v10;
    if (v7 == v10)
    {
      v4 = v13;
      v3 = a3;
      goto LABEL_18;
    }

    llvm_blake3_compress_in_place(a1 + 2, a1 + 72, 64, *(a1 + 8), *(a1 + 138) | (*(a1 + 137) == 0));
    ++*(a1 + 137);
    *(a1 + 136) = 0;
    *v11 = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    v4 = v13;
    v3 = a3;
    if (v15 >= 0x41)
    {
      goto LABEL_12;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_18;
  }

  v15 = v7;
  v14 = __src;
  if (v7 < 0x41)
  {
    goto LABEL_16;
  }

LABEL_12:
  v16 = *(a1 + 137);
  do
  {
    llvm_blake3_compress_in_place(a1 + 2, v14, 64, *(a1 + 8), *(a1 + 138) | (v16 == 0));
    v16 = *(a1 + 137) + 1;
    *(a1 + 137) = v16;
    v14 += 64;
    v15 -= 64;
  }

  while (v15 > 0x40);
  v12 = *(a1 + 136);
LABEL_18:
  if (64 - v12 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 64 - v12;
  }

  v18 = (a1 + 72);
  memcpy(a1 + v12 + 72, v14, v17);
  v20 = *(a1 + 136) + v17;
  *(a1 + 136) = v20;
  v3 -= v7;
  if (!v3)
  {
    return *&v19;
  }

  v21 = a1[3];
  *v149 = a1[2];
  *&v149[16] = v21;
  v22 = *(a1 + 88);
  v151 = *v18;
  v152 = v22;
  v23 = *(a1 + 120);
  v153 = *(a1 + 104);
  v4 += v7;
  v24 = *(a1 + 138) | (*(a1 + 137) == 0) | 2;
  v25 = a1[4];
  v154 = v23;
  v155 = v20;
  v150 = v25;
  BYTE1(v155) = v24;
  v26 = a1[3];
  v156 = *v149;
  v157 = v26;
  llvm_blake3_compress_in_place(&v156, &v151, v20, *&v25, v24);
  v27 = v156;
  v28 = DWORD1(v156);
  v29 = DWORD2(v156);
  v30 = HIDWORD(v156);
  v31 = v157;
  v32 = DWORD1(v157);
  v33 = DWORD2(v157);
  v34 = HIDWORD(v157);
  v35 = vcnt_s8(a1[4]);
  v35.i16[0] = vaddlv_u8(v35);
  v36 = v35.i32[0];
  v37 = *(a1 + 144);
  if (v35.i32[0] < v37)
  {
    v138 = HIDWORD(v156);
    v140 = v157;
    v141 = v3;
    v38 = *(a1 + 144);
    do
    {
      v39 = a1[1];
      v40 = &a1[2 * v38 + 9] + 1;
      v156 = *a1;
      v157 = v39;
      v41 = *(v40 - 48);
      *&v158[8] = *(v40 - 64);
      *&v158[24] = v41;
      v42 = *(v40 - 16);
      v159 = *(v40 - 32);
      v43 = *(a1 + 138);
      v160 = v42;
      v161 = 64;
      *v158 = 0;
      *(&v161 + 1) = v43 | 4;
      v44 = a1[1];
      *v144 = *a1;
      *&v144[16] = v44;
      llvm_blake3_compress_in_place(v144, &v158[8], 64, 0, v43 | 4u);
      v45 = *&v144[4];
      *(v40 - 64) = *v144;
      *(v40 - 60) = v45;
      *(v40 - 56) = *&v144[8];
      v46 = *&v144[28];
      *(v40 - 40) = *&v144[24];
      *(v40 - 36) = v46;
      LOBYTE(v37) = *(a1 + 144) - 1;
      *(a1 + 144) = v37;
      v38 = v37;
    }

    while (v36 < v37);
    v3 = v141;
    v33 = DWORD2(v140);
    v34 = HIDWORD(v140);
    v31 = v140;
    v32 = DWORD1(v140);
    v30 = v138;
  }

  v47 = &a1[2 * v37];
  *(v47 + 145) = v27;
  *(v47 + 149) = v28;
  *(v47 + 153) = v29;
  *(v47 + 157) = v30;
  *(v47 + 161) = v31;
  *(v47 + 165) = v32;
  *(v47 + 169) = v33;
  *(v47 + 173) = v34;
  *(a1 + 144) = v37 + 1;
  ++*(a1 + 8);
  *v18 = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v19 = *a1;
  v48 = a1[1];
  a1[2] = *a1;
  a1[3] = v48;
  *(a1 + 68) = 0;
LABEL_27:
  if (v3 >= 0x401)
  {
    v49 = a1 + 145;
    v50 = *(a1 + 8);
    do
    {
      v53 = 1 << (__clz(v3 | 1) ^ 0x3Fu);
      do
      {
        v54 = v53;
        v55 = v53 - 1;
        v53 >>= 1;
      }

      while ((v55 & (v50 << 10)) != 0);
      v142 = v3;
      v143 = v4;
      if (v54 > 0x400)
      {
        v84 = *(a1 + 138);
        v85 = blake3_compress_subtree_wide(v4, v54, a1, v50, *(a1 + 138), &v156);
        if ((v85 - 3) <= 1)
        {
          v86 = v85;
          do
          {
            v87 = 0;
            memset(v162, 0, sizeof(v162));
            v88 = (v86 - 2) >> 1;
            v89 = v88 + 1;
            v90 = &v156;
            do
            {
              *(v162 + v87++) = v90;
              v90 += 4;
            }

            while (v89 != v87);
            llvm_blake3_hash_many(v162, v88 + 1, 1, a1, 0, 0, v84 | 4, 0, 0, v149);
            if (((v86 - 2) & 0xFFFFFFFFFFFFFFFELL) + 2 < v86)
            {
              v91 = &v156 + 4 * v89;
              v92 = *v91;
              v93 = v91[1];
              v94 = &v149[32 * v89];
              *v94 = v92;
              v94[1] = v93;
              v89 = v88 + 2;
            }

            __memcpy_chk();
            v86 = v89;
          }

          while (v89 - 3 < 2);
        }

        *v144 = v156;
        *&v144[16] = v157;
        *v145 = *v158;
        *&v145[16] = *&v158[16];
        v95 = vcnt_s8(a1[4]);
        v95.i16[0] = vaddlv_u8(v95);
        v96 = v95.i32[0];
        v97 = *(a1 + 144);
        if (v95.i32[0] < v97)
        {
          v98 = *(a1 + 144);
          do
          {
            v99 = a1[1];
            v100 = v49 + 32 * v98;
            v156 = *a1;
            v157 = v99;
            v101 = *(v100 - 48);
            *&v158[8] = *(v100 - 64);
            *&v158[24] = v101;
            v102 = *(v100 - 16);
            v159 = *(v100 - 32);
            v103 = *(a1 + 138);
            v160 = v102;
            v161 = 64;
            *v158 = 0;
            *(&v161 + 1) = v103 | 4;
            v104 = a1[1];
            *v149 = *a1;
            *&v149[16] = v104;
            llvm_blake3_compress_in_place(v149, &v158[8], 64, 0, v103 | 4u);
            v105 = *&v149[4];
            *(v100 - 64) = *v149;
            *(v100 - 60) = v105;
            *(v100 - 56) = *&v149[8];
            v106 = *&v149[28];
            *(v100 - 40) = *&v149[24];
            *(v100 - 36) = v106;
            LOBYTE(v97) = *(a1 + 144) - 1;
            *(a1 + 144) = v97;
            v98 = v97;
          }

          while (v96 < v97);
        }

        v107 = (v49 + 32 * v97);
        v108 = *&v144[16];
        *v107 = *v144;
        v107[1] = v108;
        v109 = v97 + 1;
        *(a1 + 144) = v109;
        v110 = vcnt_s8((*(a1 + 8) + (v54 >> 11)));
        v110.i16[0] = vaddlv_u8(v110);
        v111 = v110.i32[0];
        v112 = v109;
        for (i = v143; v111 < v109; v112 = v109)
        {
          v113 = a1[1];
          v114 = v49 + 32 * v112;
          v156 = *a1;
          v157 = v113;
          v115 = *(v114 - 48);
          *&v158[8] = *(v114 - 64);
          *&v158[24] = v115;
          v116 = *(v114 - 16);
          v159 = *(v114 - 32);
          v117 = *(a1 + 138);
          v160 = v116;
          v161 = 64;
          *v158 = 0;
          *(&v161 + 1) = v117 | 4;
          v118 = a1[1];
          *v149 = *a1;
          *&v149[16] = v118;
          llvm_blake3_compress_in_place(v149, &v158[8], 64, 0, v117 | 4u);
          v119 = *&v149[4];
          *(v114 - 64) = *v149;
          *(v114 - 60) = v119;
          *(v114 - 56) = *&v149[8];
          v120 = *&v149[28];
          *(v114 - 40) = *&v149[24];
          *(v114 - 36) = v120;
          v109 = *(a1 + 144) - 1;
          *(a1 + 144) = v109;
        }

        v51 = (v49 + 32 * v109);
        *&v19 = *v145;
        v52 = *&v145[16];
        *v51 = *v145;
        v51[1] = v52;
        *(a1 + 144) = v109 + 1;
      }

      else
      {
        v56 = 0;
        v57 = *(a1 + 138);
        v58 = a1[1];
        *v149 = *a1;
        *&v149[16] = v58;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v155 = 0;
        BYTE2(v155) = v57;
        v150 = v50;
        j = v54;
        v60 = v4;
        if (v54 >= 0x41)
        {
          v61 = 0;
          v60 = v4;
          for (j = v54; j > 0x40; j -= 64)
          {
            llvm_blake3_compress_in_place(v149, v60, 64, *&v150, BYTE2(v155) | (v61 == 0));
            v61 = ++BYTE1(v155);
            v60 += 64;
          }

          v56 = v155;
        }

        if (64 - v56 >= j)
        {
          v62 = j;
        }

        else
        {
          v62 = 64 - v56;
        }

        memcpy(&v151 + v56, v60, v62);
        *v144 = *v149;
        *&v144[16] = *&v149[16];
        *&v145[8] = v151;
        *&v145[24] = v152;
        v146 = v153;
        v147 = v154;
        LOBYTE(v155) = v155 + v62;
        v148 = v155;
        *v145 = v150;
        *(&v148 + 1) = (BYTE2(v155) | (BYTE1(v155) == 0)) | 2;
        v156 = *v149;
        v157 = *&v149[16];
        llvm_blake3_compress_in_place(&v156, &v145[8], v155, *&v150, (BYTE2(v155) | (BYTE1(v155) == 0)) | 2u);
        v63 = v156;
        v64 = DWORD1(v156);
        v65 = DWORD2(v156);
        v66 = HIDWORD(v156);
        v67 = v157;
        v68 = DWORD1(v157);
        v69 = DWORD2(v157);
        v70 = HIDWORD(v157);
        *&v19 = vcnt_s8(v150);
        LOWORD(v19) = vaddlv_u8(*&v19);
        v71 = v19;
        v72 = *(a1 + 144);
        if (v19 < v72)
        {
          v136 = *(&v156 + 4);
          v137 = HIDWORD(v156);
          v139 = v157;
          v73 = *(a1 + 144);
          do
          {
            v74 = a1[1];
            v75 = v49 + 32 * v73;
            v156 = *a1;
            v157 = v74;
            v76 = *(v75 - 48);
            *&v158[8] = *(v75 - 64);
            *&v158[24] = v76;
            v77 = *(v75 - 16);
            v159 = *(v75 - 32);
            v78 = *(a1 + 138);
            v160 = v77;
            v161 = 64;
            *v158 = 0;
            *(&v161 + 1) = v78 | 4;
            v79 = a1[1];
            v162[0] = *a1;
            v162[1] = v79;
            llvm_blake3_compress_in_place(v162, &v158[8], 64, 0, v78 | 4u);
            v80 = DWORD1(v162[0]);
            *(v75 - 64) = v162[0];
            *(v75 - 60) = v80;
            *&v19 = *(&v162[0] + 1);
            *(v75 - 56) = *(v162 + 8);
            v81 = HIDWORD(v162[1]);
            *(v75 - 40) = DWORD2(v162[1]);
            *(v75 - 36) = v81;
            LOBYTE(v72) = *(a1 + 144) - 1;
            *(a1 + 144) = v72;
            v73 = v72;
          }

          while (v71 < v72);
          v69 = DWORD2(v139);
          v70 = HIDWORD(v139);
          v67 = v139;
          v68 = DWORD1(v139);
          v65 = HIDWORD(v136);
          v66 = v137;
          v64 = v136;
        }

        v82 = (v49 + 32 * v72);
        *v82 = v63;
        v82[1] = v64;
        v82[2] = v65;
        v82[3] = v66;
        v82[4] = v67;
        v82[5] = v68;
        v82[6] = v69;
        v82[7] = v70;
        *(a1 + 144) = v72 + 1;
        i = v143;
      }

      v50 = *(a1 + 8) + (v54 >> 10);
      *(a1 + 8) = v50;
      v4 = &i[v54];
      v3 = v142 - v54;
    }

    while (v142 - v54 > 0x400);
  }

  if (v3)
  {
    v121 = *(a1 + 136);
    if (*(a1 + 136))
    {
      if (64 - v121 >= v3)
      {
        v122 = v3;
      }

      else
      {
        v122 = 64 - v121;
      }

      memcpy(a1 + v121 + 72, v4, v122);
      v123 = *(a1 + 136) + v122;
      *(a1 + 136) = v123;
      v4 += v122;
      v3 -= v122;
      if (!v3)
      {
        goto LABEL_71;
      }

      llvm_blake3_compress_in_place(a1 + 2, a1 + 72, 64, *(a1 + 8), *(a1 + 138) | (*(a1 + 137) == 0));
      ++*(a1 + 137);
      *(a1 + 136) = 0;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
    }

    if (v3 < 0x41)
    {
      v123 = 0;
    }

    else
    {
      v124 = *(a1 + 137);
      do
      {
        llvm_blake3_compress_in_place(a1 + 2, v4, 64, *(a1 + 8), *(a1 + 138) | (v124 == 0));
        v124 = *(a1 + 137) + 1;
        *(a1 + 137) = v124;
        v4 += 64;
        v3 -= 64;
      }

      while (v3 > 0x40);
      v123 = *(a1 + 136);
    }

LABEL_71:
    if (64 - v123 < v3)
    {
      v3 = 64 - v123;
    }

    memcpy(a1 + v123 + 72, v4, v3);
    *(a1 + 136) += v3;
    *&v19 = vcnt_s8(a1[4]);
    LOWORD(v19) = vaddlv_u8(*&v19);
    v125 = v19;
    v126 = *(a1 + 144);
    if (v19 < v126)
    {
      do
      {
        v127 = a1[1];
        v128 = &a1[2 * v126 + 9] + 1;
        v156 = *a1;
        v157 = v127;
        v129 = *(v128 - 48);
        *&v158[8] = *(v128 - 64);
        *&v158[24] = v129;
        v130 = *(v128 - 16);
        v159 = *(v128 - 32);
        v131 = *(a1 + 138);
        v160 = v130;
        v161 = 64;
        *v158 = 0;
        *(&v161 + 1) = v131 | 4;
        v132 = a1[1];
        *v149 = *a1;
        *&v149[16] = v132;
        llvm_blake3_compress_in_place(v149, &v158[8], 64, 0, v131 | 4u);
        v133 = *&v149[4];
        *(v128 - 64) = *v149;
        *(v128 - 60) = v133;
        *&v19 = *&v149[8];
        *(v128 - 56) = *&v149[8];
        v134 = *&v149[28];
        *(v128 - 40) = *&v149[24];
        *(v128 - 36) = v134;
        LOBYTE(v126) = *(a1 + 144) - 1;
        *(a1 + 144) = v126;
        v126 = v126;
      }

      while (v125 < v126);
    }
  }

  return *&v19;
}

double llvm_blake3_hasher_init_derive_key(uint64_t a1, char *__s)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = strlen(__s);
  v9[0] = IV;
  v9[1] = unk_25739D0B0;
  memset(&v9[8] + 8, 0, 376);
  v9[2] = IV;
  v9[3] = unk_25739D0B0;
  memset(&v9[4], 0, 74);
  BYTE10(v9[8]) = 32;
  llvm_blake3_hasher_update(v9, __s, v4);
  llvm_blake3_hasher_finalize_seek(v9, 0, v8, 0x20uLL);
  v5 = v8[0];
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 138) = 64;
  *(a1 + 144) = 0;
  return result;
}

unsigned __int8 *llvm_blake3_hasher_finalize_seek(unsigned __int8 *result, unint64_t a2, char *a3, unint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return result;
  }

  v7 = result;
  v8 = result[144];
  if (result[144])
  {
    v46 = 0u;
    memset(v47, 0, sizeof(v47));
    v45 = 0u;
    v9 = result[137];
    v10 = result[136];
    if (v10 | (v9 << 6))
    {
      v11 = *(result + 8);
      v12 = result[138] | (v9 == 0) | 2;
      *(&v47[4] + 10) = 0;
      HIWORD(v47[4]) = 0;
      v13 = *(result + 3);
      v45 = *(result + 2);
      v46 = v13;
      *(v47 + 8) = *(result + 72);
      *(&v47[1] + 8) = *(result + 88);
      *(&v47[2] + 8) = *(result + 104);
      *(&v47[3] + 8) = *(result + 120);
      *&v47[0] = v11;
      BYTE8(v47[4]) = v10;
      BYTE9(v47[4]) = v12;
    }

    else
    {
      v12 = result[138] | 4;
      *(&v47[4] + 10) = 0;
      HIWORD(v47[4]) = 0;
      v26 = *(result + 1);
      v45 = *result;
      v46 = v26;
      *&v47[0] = 0;
      v10 = 64;
      BYTE8(v47[4]) = 64;
      BYTE9(v47[4]) = v12;
      v8 -= 2;
      v27 = &result[32 * v8];
      *(v47 + 8) = *(v27 + 145);
      *(&v47[1] + 8) = *(v27 + 161);
      *(&v47[2] + 8) = *(v27 + 177);
      *(&v47[3] + 8) = *(v27 + 193);
      if (!v8)
      {
LABEL_20:
        v34 = a2 >> 6;
        v35 = a2 & 0x3F;
        llvm_blake3_compress_xof(&v45, v47 + 8);
        if (a4 >= 64 - v35)
        {
          v36 = 64 - v35;
        }

        else
        {
          v36 = a4;
        }

        result = memcpy(a3, &__src[v35], v36);
        v37 = a4 - v36;
        if (a4 != v36)
        {
          v38 = &a3[v36];
          v39 = v34 + 1;
          do
          {
            llvm_blake3_compress_xof(&v45, v47 + 8);
            if (v37 >= 0x40)
            {
              v40 = 64;
            }

            else
            {
              v40 = v37;
            }

            result = memcpy(v38, __src, v40);
            v38 += v40;
            ++v39;
            v37 -= v40;
          }

          while (v37);
        }

        return result;
      }

      v11 = 0;
    }

    v28 = v8 - 1;
    v29 = &result[32 * v8 - 32];
    v41 = *(v29 + 145);
    v43 = *(v29 + 161);
    *__src = v45;
    *&__src[16] = v46;
    llvm_blake3_compress_in_place(__src, v47 + 8, v10, v11, v12);
    *(&v47[4] + 10) = 0;
    WORD4(v47[2]) = *__src;
    *(&v47[2] + 10) = *&__src[2];
    HIWORD(v47[2]) = *&__src[6];
    LODWORD(v47[3]) = *&__src[8];
    WORD2(v47[3]) = *&__src[12];
    *(&v47[3] + 6) = *&__src[14];
    *(&v47[3] + 10) = *&__src[18];
    *(&v47[4] + 2) = *&__src[26];
    WORD3(v47[4]) = *&__src[30];
    v30 = v7[138] | 4;
    HIWORD(v47[4]) = 0;
    v31 = *(v7 + 1);
    v45 = *v7;
    v46 = v31;
    *&v47[0] = 0;
    *(&v47[1] + 8) = v43;
    *(v47 + 8) = v41;
    BYTE8(v47[4]) = 64;
    BYTE9(v47[4]) = v30;
    if (v8 != 1)
    {
      v32 = 32 * v8 + 81;
      do
      {
        --v28;
        v42 = *&v7[v32];
        v44 = *&v7[v32 + 16];
        *__src = v45;
        *&__src[16] = v46;
        llvm_blake3_compress_in_place(__src, v47 + 8, 64, 0, v30);
        DWORD2(v47[2]) = *__src;
        WORD6(v47[2]) = *&__src[4];
        *(&v47[2] + 14) = *&__src[6];
        *(&v47[3] + 6) = *&__src[14];
        *(&v47[3] + 10) = *&__src[18];
        WORD1(v47[4]) = *&__src[26];
        *(&v47[4] + 5) = *&__src[29];
        v33 = *(v7 + 1);
        v45 = *v7;
        v46 = v33;
        *(v47 + 8) = v42;
        BYTE4(v47[4]) = __src[28];
        BYTE7(v47[4]) = __src[31];
        v30 = v7[138] | 4;
        *(&v47[4] + 10) = 0;
        HIWORD(v47[4]) = 0;
        *&v47[0] = 0;
        *(&v47[1] + 8) = v44;
        BYTE8(v47[4]) = 64;
        v32 -= 32;
        BYTE9(v47[4]) = v30;
      }

      while (v28);
    }

    goto LABEL_20;
  }

  v14 = result[138];
  v15 = result[137] == 0;
  v16 = result[136];
  v17 = *(result + 8);
  *(&v47[4] + 1) = 0;
  v18 = *(result + 3);
  v45 = *(result + 2);
  v46 = v18;
  *(v47 + 8) = *(result + 72);
  *(&v47[1] + 8) = *(result + 88);
  *(&v47[2] + 8) = *(result + 104);
  *(&v47[3] + 8) = *(result + 120);
  BYTE8(v47[4]) = v16;
  v19 = a2 >> 6;
  *&v47[0] = v17;
  v20 = a2 & 0x3F;
  *(&v47[4] + 9) = (v14 | v15) | 2;
  llvm_blake3_compress_xof(&v45, v47 + 8);
  if (a4 >= 64 - v20)
  {
    v21 = 64 - v20;
  }

  else
  {
    v21 = a4;
  }

  result = memcpy(a3, &__src[v20], v21);
  v22 = a4 - v21;
  if (a4 != v21)
  {
    v23 = &a3[v21];
    v24 = v19 + 1;
    do
    {
      llvm_blake3_compress_xof(&v45, v47 + 8);
      if (v22 >= 0x40)
      {
        v25 = 64;
      }

      else
      {
        v25 = v22;
      }

      result = memcpy(v23, __src, v25);
      v23 += v25;
      ++v24;
      v22 -= v25;
    }

    while (v22);
  }

  return result;
}

double llvm_blake3_hasher_reset(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 32) = *a1;
  *(a1 + 48) = v1;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t blake3_compress_subtree_wide(unint64_t a1, unint64_t a2, const float *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = *MEMORY[0x277D85DE8];
  if (a2 <= llvm_blake3_simd_degree() << 10)
  {
    v74 = 0u;
    v75 = 0u;
    v22 = a2 - 1024;
    if (a2 < 0x400)
    {
      v25 = 0;
      v21 = 0;
      v29 = a2;
LABEL_23:
      llvm_blake3_hash_many(&v74, v21, 16, a3, a4, 1u, a5, 1, 2u, a6);
      if (v25 >= a2)
      {
        return v21;
      }

      v40 = *a3;
      v41 = *(a3 + 1);
      v68 = 0;
      v63 = v40;
      v64 = v41;
      BYTE2(v68) = a5;
      memset(&v65[8], 0, 32);
      v66 = 0u;
      v67 = 0u;
      v42 = (a1 + v25);
      *v65 = v21 + a4;
      if (v29 < 0x41)
      {
        v44 = 0;
      }

      else
      {
        v43 = 0;
        do
        {
          llvm_blake3_compress_in_place(&v63, v42, 64, *v65, BYTE2(v68) | (v43 == 0));
          v43 = ++BYTE1(v68);
          v42 += 64;
          v29 -= 64;
        }

        while (v29 > 0x40);
        v44 = v68;
      }

      if (64 - v44 >= v29)
      {
        v46 = v29;
      }

      else
      {
        v46 = 64 - v44;
      }

      memcpy(&v65[v44 + 8], v42, v46);
      v69 = v63;
      v70 = v64;
      v72[0] = *&v65[8];
      v72[1] = *&v65[24];
      v72[2] = v66;
      v72[3] = v67;
      LOBYTE(v68) = v68 + v46;
      v73 = v68;
      v71 = *v65;
      *(&v73 + 1) = (BYTE2(v68) | (BYTE1(v68) == 0)) | 2;
      v47 = a6 + 32 * v21;
      *v76 = v63;
      *&v76[16] = v64;
      llvm_blake3_compress_in_place(v76, v72, v68, *v65, (BYTE2(v68) | (BYTE1(v68) == 0)) | 2u);
      v48 = *&v76[4];
      *v47 = *v76;
      *(v47 + 4) = v48;
      *(v47 + 8) = *&v76[8];
      v49 = *&v76[28];
      *(v47 + 24) = *&v76[24];
      *(v47 + 28) = v49;
      return ++v21;
    }

    v23 = v22 >> 10;
    v21 = (v22 >> 10) + 1;
    if (v22 >= 0xC00)
    {
      v24 = v21 & 0x7FFFFFFFFFFFFCLL;
      v25 = (v21 & 0x7FFFFFFFFFFFFCLL) << 10;
      v30 = xmmword_25739D090;
      v31 = &v75;
      v32 = vdupq_n_s64(0x800uLL);
      v33 = vdupq_n_s64(a1);
      v34 = vdupq_n_s64(0x1000uLL);
      v35 = v21 & 0x7FFFFFFFFFFFFCLL;
      do
      {
        v36 = vaddq_s64(v33, v30);
        v31[-1] = v36;
        *v31 = vaddq_s64(v36, v32);
        v30 = vaddq_s64(v30, v34);
        v31 += 2;
        v35 -= 4;
      }

      while (v35);
      if (v21 == v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    v37 = v23 - v24 + 1;
    v38 = &v74 + v24;
    v39 = a1 + v25;
    do
    {
      *v38++ = v39;
      v25 += 1024;
      v39 += 1024;
      --v37;
    }

    while (v37);
LABEL_22:
    v29 = a2 - v25;
    goto LABEL_23;
  }

  v12 = 1024 << (__clz(((a2 - 1) >> 10) | 1) ^ 0x3Fu);
  v13 = a2 - v12;
  v14 = llvm_blake3_simd_degree();
  if (v14 == 1 && v12 > 0x400)
  {
    v16 = 64;
  }

  else
  {
    v16 = 32 * v14;
  }

  v17 = blake3_compress_subtree_wide(a1, v12, a3, a4, a5, &v63);
  v18 = blake3_compress_subtree_wide(a1 + v12, v13, a3, a4 + (v12 >> 10), a5, &v63 + v16);
  if (v17 != 1)
  {
    v26 = v18 + v17;
    v69 = 0u;
    v70 = 0u;
    v27 = v18 + v17 - 2;
    if ((v18 + v17) < 2)
    {
      v21 = 0;
      v45 = 0;
LABEL_40:
      llvm_blake3_hash_many(&v69, v21, 1, a3, 0, 0, a5 | 4, 0, 0, a6);
      if (v45 >= v26)
      {
        return v21;
      }

      v58 = &v63 + 4 * v21;
      v59 = *v58;
      v60 = v58[1];
      v61 = (a6 + 32 * v21);
      *v61 = v59;
      v61[1] = v60;
      return ++v21;
    }

    v21 = (v27 >> 1) + 1;
    if (v27 >= 6)
    {
      v28 = v21 & 0x7FFFFFFFFFFFFFFCLL;
      v50 = xmmword_2573686A0;
      v51 = &v70;
      v52 = vdupq_n_s64(0x80uLL);
      v53 = vdupq_n_s64(&v63);
      v54 = vdupq_n_s64(4uLL);
      v55 = v21 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v56 = vaddq_s64(v53, vshlq_n_s64(v50, 6uLL));
        v51[-1] = v56;
        *v51 = vaddq_s64(v56, v52);
        v50 = vaddq_s64(v50, v54);
        v51 += 2;
        v55 -= 4;
      }

      while (v55);
      if (v21 == v28)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v28 = 0;
    }

    v57 = &v63 + 4 * v28;
    do
    {
      *(&v69 + v28++) = v57;
      v57 += 4;
    }

    while (v21 != v28);
LABEL_39:
    v45 = 2 * v28;
    goto LABEL_40;
  }

  v19 = v64;
  *a6 = v63;
  *(a6 + 16) = v19;
  v20 = *&v65[16];
  *(a6 + 32) = *v65;
  *(a6 + 48) = v20;
  return 2;
}

int *llvm_blake3_compress_in_place_portable(int *a1, int *a2, int a3, uint64_t a4, int a5)
{
  v476 = *a2;
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a1 + *a2 + v5;
  HIDWORD(v9) = v7 ^ a4;
  LODWORD(v9) = v7 ^ a4;
  v8 = v9 >> 16;
  HIDWORD(v9) = (v8 + 1779033703) ^ v5;
  LODWORD(v9) = HIDWORD(v9);
  v10 = v9 >> 12;
  v475 = a2[2];
  v481 = a2[3];
  v11 = v7 + a2[1] + v10;
  v472 = a2[1];
  v473 = a2[4];
  HIDWORD(v9) = v11 ^ v8;
  LODWORD(v9) = v11 ^ v8;
  v12 = v9 >> 8;
  v13 = v12 + v8 + 1779033703;
  v14 = a2[6];
  HIDWORD(v9) = v13 ^ v10;
  LODWORD(v9) = v13 ^ v10;
  v15 = v9 >> 7;
  v16 = a1[1] + v475 + v6;
  HIDWORD(v9) = v16 ^ HIDWORD(a4);
  LODWORD(v9) = v16 ^ HIDWORD(a4);
  v17 = v9 >> 16;
  v471 = a2[8];
  v467 = a2[9];
  v468 = a2[5];
  v18 = a2[10];
  HIDWORD(v9) = (v17 - 1150833019) ^ v6;
  LODWORD(v9) = HIDWORD(v9);
  v19 = v9 >> 12;
  v20 = a2[12];
  v21 = v16 + v481 + v19;
  HIDWORD(v9) = v21 ^ v17;
  LODWORD(v9) = v21 ^ v17;
  v22 = v9 >> 8;
  v23 = v22 + v17 - 1150833019;
  HIDWORD(v9) = v23 ^ v19;
  LODWORD(v9) = v23 ^ v19;
  v24 = v9 >> 7;
  v25 = a1[6];
  v26 = a1[7];
  v27 = a1[2] + v473 + v25;
  HIDWORD(v9) = v27 ^ a3;
  LODWORD(v9) = v27 ^ a3;
  v28 = v9 >> 16;
  HIDWORD(v9) = (v28 + 1013904242) ^ v25;
  LODWORD(v9) = HIDWORD(v9);
  v29 = v9 >> 12;
  v30 = v27 + v468 + v29;
  HIDWORD(v9) = v30 ^ v28;
  LODWORD(v9) = v30 ^ v28;
  v31 = v9 >> 8;
  v32 = v31 + v28 + 1013904242;
  HIDWORD(v9) = v32 ^ v29;
  LODWORD(v9) = v32 ^ v29;
  v33 = v9 >> 7;
  v34 = a1[3] + v14 + v26;
  HIDWORD(v9) = v34 ^ a5;
  LODWORD(v9) = v34 ^ a5;
  v35 = v9 >> 16;
  v477 = a2[14];
  v478 = v14;
  v474 = a2[15];
  v36 = v35 - 1521486534;
  HIDWORD(v9) = (v35 - 1521486534) ^ v26;
  LODWORD(v9) = HIDWORD(v9);
  v37 = v9 >> 12;
  v480 = a2[7];
  v38 = v34 + v480 + v37;
  HIDWORD(v9) = v38 ^ v35;
  LODWORD(v9) = v38 ^ v35;
  v39 = v9 >> 8;
  v40 = v39 + v36;
  HIDWORD(v9) = v40 ^ v37;
  LODWORD(v9) = v40 ^ v37;
  v41 = v9 >> 7;
  v42 = v11 + v471 + v24;
  HIDWORD(v9) = v42 ^ v39;
  LODWORD(v9) = v42 ^ v39;
  v43 = v9 >> 16;
  v44 = v43 + v32;
  HIDWORD(v9) = v44 ^ v24;
  LODWORD(v9) = v44 ^ v24;
  v45 = v9 >> 12;
  v46 = v42 + v467 + v45;
  HIDWORD(v9) = v46 ^ v43;
  LODWORD(v9) = v46 ^ v43;
  v47 = v9 >> 8;
  v48 = v47 + v44;
  HIDWORD(v9) = v48 ^ v45;
  LODWORD(v9) = v48 ^ v45;
  v49 = v9 >> 7;
  v50 = v21 + v18 + v33;
  HIDWORD(v9) = v50 ^ v12;
  LODWORD(v9) = v50 ^ v12;
  v51 = v9 >> 16;
  v52 = v51 + v40;
  HIDWORD(v9) = v52 ^ v33;
  LODWORD(v9) = v52 ^ v33;
  v53 = v9 >> 12;
  v54 = a2[11];
  v55 = v50 + v54 + v53;
  HIDWORD(v9) = v55 ^ v51;
  LODWORD(v9) = v55 ^ v51;
  v56 = v9 >> 8;
  v57 = v56 + v52;
  HIDWORD(v9) = (v56 + v52) ^ v53;
  LODWORD(v9) = HIDWORD(v9);
  v58 = v9 >> 7;
  v59 = v30 + v20 + v41;
  HIDWORD(v9) = v59 ^ v22;
  LODWORD(v9) = v59 ^ v22;
  v60 = v9 >> 16;
  v61 = v60 + v13;
  HIDWORD(v9) = v61 ^ v41;
  LODWORD(v9) = v61 ^ v41;
  v62 = v9 >> 12;
  v63 = a2[13];
  v64 = v59 + v63 + v62;
  HIDWORD(v9) = v64 ^ v60;
  LODWORD(v9) = v64 ^ v60;
  v65 = v9 >> 8;
  v66 = v65 + v61;
  HIDWORD(v9) = v66 ^ v62;
  LODWORD(v9) = v66 ^ v62;
  v67 = v9 >> 7;
  v68 = v38 + v477 + v15;
  HIDWORD(v9) = v68 ^ v31;
  LODWORD(v9) = v68 ^ v31;
  v69 = v9 >> 16;
  v70 = v69 + v23;
  HIDWORD(v9) = v70 ^ v15;
  LODWORD(v9) = v70 ^ v15;
  v71 = v9 >> 12;
  v72 = v68 + v474 + v71;
  HIDWORD(v9) = v72 ^ v69;
  LODWORD(v9) = v72 ^ v69;
  v73 = v9 >> 8;
  v74 = v73 + v70;
  HIDWORD(v9) = v74 ^ v71;
  LODWORD(v9) = v74 ^ v71;
  v75 = v9 >> 7;
  v76 = v46 + v475 + v75;
  HIDWORD(v9) = v76 ^ v56;
  LODWORD(v9) = v76 ^ v56;
  v77 = v9 >> 16;
  v78 = v77 + v66;
  HIDWORD(v9) = v78 ^ v75;
  LODWORD(v9) = v78 ^ v75;
  v79 = v9 >> 12;
  v80 = v76 + v14 + v79;
  HIDWORD(v9) = v80 ^ v77;
  LODWORD(v9) = v80 ^ v77;
  v81 = v9 >> 8;
  v82 = v81 + v78;
  HIDWORD(v9) = v82 ^ v79;
  LODWORD(v9) = v82 ^ v79;
  v83 = v9 >> 7;
  v84 = v55 + v481 + v49;
  HIDWORD(v9) = v84 ^ v65;
  LODWORD(v9) = v84 ^ v65;
  v85 = v9 >> 16;
  v86 = v85 + v74;
  HIDWORD(v9) = v86 ^ v49;
  LODWORD(v9) = v86 ^ v49;
  v87 = v9 >> 12;
  v88 = v84 + v18 + v87;
  HIDWORD(v9) = v88 ^ v85;
  LODWORD(v9) = v88 ^ v85;
  v89 = v9 >> 8;
  v90 = v89 + v86;
  HIDWORD(v9) = v90 ^ v87;
  LODWORD(v9) = v90 ^ v87;
  v91 = v9 >> 7;
  v92 = v64 + v480 + v58;
  HIDWORD(v9) = v92 ^ v73;
  LODWORD(v9) = v92 ^ v73;
  v93 = v9 >> 16;
  v94 = v93 + v48;
  HIDWORD(v9) = v94 ^ v58;
  LODWORD(v9) = v94 ^ v58;
  v95 = v9 >> 12;
  v96 = v92 + *a2 + v95;
  HIDWORD(v9) = v96 ^ v93;
  LODWORD(v9) = v96 ^ v93;
  v97 = v9 >> 8;
  v98 = v97 + v94;
  HIDWORD(v9) = (v97 + v94) ^ v95;
  LODWORD(v9) = HIDWORD(v9);
  v99 = v9 >> 7;
  v100 = v72 + v473 + v67;
  HIDWORD(v9) = v100 ^ v47;
  LODWORD(v9) = v100 ^ v47;
  v101 = v9 >> 16;
  v102 = v101 + v57;
  HIDWORD(v9) = v102 ^ v67;
  LODWORD(v9) = v102 ^ v67;
  v103 = v9 >> 12;
  v479 = v63;
  v104 = v100 + v63 + v103;
  HIDWORD(v9) = v104 ^ v101;
  LODWORD(v9) = v104 ^ v101;
  v105 = v9 >> 8;
  v106 = v105 + v102;
  HIDWORD(v9) = (v105 + v102) ^ v103;
  LODWORD(v9) = HIDWORD(v9);
  v107 = v9 >> 7;
  v108 = v80 + v472 + v91;
  HIDWORD(v9) = v108 ^ v105;
  LODWORD(v9) = v108 ^ v105;
  v109 = v9 >> 16;
  v110 = v109 + v98;
  HIDWORD(v9) = (v109 + v98) ^ v91;
  LODWORD(v9) = HIDWORD(v9);
  v111 = v9 >> 12;
  v112 = v108 + v54 + v111;
  HIDWORD(v9) = v112 ^ v109;
  LODWORD(v9) = v112 ^ v109;
  v113 = v9 >> 8;
  v114 = v113 + v110;
  HIDWORD(v9) = v114 ^ v111;
  LODWORD(v9) = v114 ^ v111;
  v115 = v9 >> 7;
  v116 = v88 + v20 + v99;
  HIDWORD(v9) = v116 ^ v81;
  LODWORD(v9) = v116 ^ v81;
  v117 = v9 >> 16;
  v118 = v117 + v106;
  HIDWORD(v9) = (v117 + v106) ^ v99;
  LODWORD(v9) = HIDWORD(v9);
  v119 = v9 >> 12;
  v120 = v116 + v468 + v119;
  HIDWORD(v9) = v120 ^ v117;
  LODWORD(v9) = v120 ^ v117;
  v121 = v9 >> 8;
  v122 = v121 + v118;
  HIDWORD(v9) = v122 ^ v119;
  LODWORD(v9) = v122 ^ v119;
  v123 = v9 >> 7;
  v124 = v96 + v467 + v107;
  HIDWORD(v9) = v124 ^ v89;
  LODWORD(v9) = v124 ^ v89;
  v125 = v9 >> 16;
  v126 = v125 + v82;
  HIDWORD(v9) = v126 ^ v107;
  LODWORD(v9) = v126 ^ v107;
  v127 = v9 >> 12;
  v128 = v124 + v477 + v127;
  HIDWORD(v9) = v128 ^ v125;
  LODWORD(v9) = v128 ^ v125;
  v129 = v9 >> 8;
  v130 = v129 + v126;
  HIDWORD(v9) = v130 ^ v127;
  LODWORD(v9) = v130 ^ v127;
  v131 = v9 >> 7;
  v132 = v104 + v474 + v83;
  HIDWORD(v9) = v132 ^ v97;
  LODWORD(v9) = v132 ^ v97;
  v133 = v9 >> 16;
  v134 = v133 + v90;
  HIDWORD(v9) = v134 ^ v83;
  LODWORD(v9) = v134 ^ v83;
  v135 = v9 >> 12;
  v136 = v132 + v471 + v135;
  HIDWORD(v9) = v136 ^ v133;
  LODWORD(v9) = v136 ^ v133;
  v137 = v9 >> 8;
  v138 = v137 + v134;
  HIDWORD(v9) = v138 ^ v135;
  LODWORD(v9) = v138 ^ v135;
  v139 = v9 >> 7;
  v140 = v112 + v481 + v139;
  HIDWORD(v9) = v140 ^ v121;
  LODWORD(v9) = v140 ^ v121;
  v141 = v9 >> 16;
  v142 = v141 + v130;
  HIDWORD(v9) = v142 ^ v139;
  LODWORD(v9) = v142 ^ v139;
  v143 = v9 >> 12;
  v144 = v140 + v473 + v143;
  HIDWORD(v9) = v144 ^ v141;
  LODWORD(v9) = v144 ^ v141;
  v145 = v9 >> 8;
  v146 = v145 + v142;
  HIDWORD(v9) = v146 ^ v143;
  LODWORD(v9) = v146 ^ v143;
  v147 = v9 >> 7;
  v470 = v18;
  v148 = v120 + v18 + v115;
  HIDWORD(v9) = v148 ^ v129;
  LODWORD(v9) = v148 ^ v129;
  v149 = v9 >> 16;
  v150 = v149 + v138;
  HIDWORD(v9) = v150 ^ v115;
  LODWORD(v9) = v150 ^ v115;
  v151 = v9 >> 12;
  v152 = v148 + v20 + v151;
  HIDWORD(v9) = v152 ^ v149;
  LODWORD(v9) = v152 ^ v149;
  v153 = v9 >> 8;
  v154 = v153 + v150;
  HIDWORD(v9) = v154 ^ v151;
  LODWORD(v9) = v154 ^ v151;
  v155 = v9 >> 7;
  v156 = v128 + v63 + v123;
  HIDWORD(v9) = v156 ^ v137;
  LODWORD(v9) = v156 ^ v137;
  v157 = v9 >> 16;
  v158 = v157 + v114;
  HIDWORD(v9) = v158 ^ v123;
  LODWORD(v9) = v158 ^ v123;
  v159 = v9 >> 12;
  v160 = v156 + v475 + v159;
  HIDWORD(v9) = v160 ^ v157;
  LODWORD(v9) = v160 ^ v157;
  v161 = v9 >> 8;
  v162 = v161 + v158;
  HIDWORD(v9) = v162 ^ v159;
  LODWORD(v9) = v162 ^ v159;
  v163 = v9 >> 7;
  v164 = v136 + v480 + v131;
  HIDWORD(v9) = v164 ^ v113;
  LODWORD(v9) = v164 ^ v113;
  v165 = v9 >> 16;
  v166 = v165 + v122;
  HIDWORD(v9) = v166 ^ v131;
  LODWORD(v9) = v166 ^ v131;
  v167 = v9 >> 12;
  v168 = v164 + v477 + v167;
  HIDWORD(v9) = v168 ^ v165;
  LODWORD(v9) = v168 ^ v165;
  v169 = v9 >> 8;
  v170 = v169 + v166;
  HIDWORD(v9) = v170 ^ v167;
  LODWORD(v9) = v170 ^ v167;
  v171 = v9 >> 7;
  v172 = v144 + v14 + v155;
  HIDWORD(v9) = v172 ^ v169;
  LODWORD(v9) = v172 ^ v169;
  v173 = v9 >> 16;
  v174 = v173 + v162;
  HIDWORD(v9) = v174 ^ v155;
  LODWORD(v9) = v174 ^ v155;
  v175 = v9 >> 12;
  v176 = v172 + v468 + v175;
  HIDWORD(v9) = v176 ^ v173;
  LODWORD(v9) = v176 ^ v173;
  v177 = v9 >> 8;
  v178 = v177 + v174;
  HIDWORD(v9) = v178 ^ v175;
  LODWORD(v9) = v178 ^ v175;
  v179 = v9 >> 7;
  v180 = v152 + v467 + v163;
  HIDWORD(v9) = v180 ^ v145;
  LODWORD(v9) = v180 ^ v145;
  v181 = v9 >> 16;
  v182 = v181 + v170;
  HIDWORD(v9) = v182 ^ v163;
  LODWORD(v9) = v182 ^ v163;
  v183 = v9 >> 12;
  v184 = v180 + *a2 + v183;
  HIDWORD(v9) = v184 ^ v181;
  LODWORD(v9) = v184 ^ v181;
  v185 = v9 >> 8;
  v186 = v185 + v182;
  HIDWORD(v9) = v186 ^ v183;
  LODWORD(v9) = v186 ^ v183;
  v187 = v9 >> 7;
  v188 = v160 + v54 + v171;
  HIDWORD(v9) = v188 ^ v153;
  LODWORD(v9) = v188 ^ v153;
  v189 = v9 >> 16;
  v190 = v189 + v146;
  HIDWORD(v9) = v190 ^ v171;
  LODWORD(v9) = v190 ^ v171;
  v191 = v9 >> 12;
  v192 = v188 + v474 + v191;
  HIDWORD(v9) = v192 ^ v189;
  LODWORD(v9) = v192 ^ v189;
  v193 = v9 >> 8;
  v194 = v193 + v190;
  HIDWORD(v9) = v194 ^ v191;
  LODWORD(v9) = v194 ^ v191;
  v195 = v9 >> 7;
  v196 = v168 + v471 + v147;
  HIDWORD(v9) = v196 ^ v161;
  LODWORD(v9) = v196 ^ v161;
  v197 = v9 >> 16;
  v198 = v197 + v154;
  HIDWORD(v9) = v198 ^ v147;
  LODWORD(v9) = v198 ^ v147;
  v199 = v9 >> 12;
  v200 = v196 + v472 + v199;
  HIDWORD(v9) = v200 ^ v197;
  LODWORD(v9) = v200 ^ v197;
  v201 = v9 >> 8;
  v202 = v201 + v198;
  HIDWORD(v9) = v202 ^ v199;
  LODWORD(v9) = v202 ^ v199;
  v203 = v9 >> 7;
  v204 = v176 + v18 + v203;
  HIDWORD(v9) = v204 ^ v185;
  LODWORD(v9) = v204 ^ v185;
  v205 = v9 >> 16;
  v206 = v205 + v194;
  HIDWORD(v9) = v206 ^ v203;
  LODWORD(v9) = v206 ^ v203;
  v207 = v9 >> 12;
  v208 = v204 + v480 + v207;
  HIDWORD(v9) = v208 ^ v205;
  LODWORD(v9) = v208 ^ v205;
  v209 = v9 >> 8;
  v210 = v209 + v206;
  HIDWORD(v9) = v210 ^ v207;
  LODWORD(v9) = v210 ^ v207;
  v211 = v9 >> 7;
  v212 = v184 + v20 + v179;
  HIDWORD(v9) = v212 ^ v193;
  LODWORD(v9) = v212 ^ v193;
  v213 = v9 >> 16;
  v214 = v213 + v202;
  HIDWORD(v9) = v214 ^ v179;
  LODWORD(v9) = v214 ^ v179;
  v215 = v9 >> 12;
  v216 = v212 + v467 + v215;
  HIDWORD(v9) = v216 ^ v213;
  LODWORD(v9) = v216 ^ v213;
  v217 = v9 >> 8;
  v218 = v217 + v214;
  HIDWORD(v9) = v218 ^ v215;
  LODWORD(v9) = v218 ^ v215;
  v219 = v9 >> 7;
  v220 = v192 + v477 + v187;
  HIDWORD(v9) = v220 ^ v201;
  LODWORD(v9) = v220 ^ v201;
  v221 = v9 >> 16;
  v222 = v221 + v178;
  HIDWORD(v9) = v222 ^ v187;
  LODWORD(v9) = v222 ^ v187;
  v223 = v9 >> 12;
  v224 = v220 + v481 + v223;
  HIDWORD(v9) = v224 ^ v221;
  LODWORD(v9) = v224 ^ v221;
  v225 = v9 >> 8;
  v226 = v225 + v222;
  HIDWORD(v9) = v226 ^ v223;
  LODWORD(v9) = v226 ^ v223;
  v227 = v9 >> 7;
  v228 = v200 + v63 + v195;
  HIDWORD(v9) = v228 ^ v177;
  LODWORD(v9) = v228 ^ v177;
  v229 = v9 >> 16;
  v230 = v229 + v186;
  HIDWORD(v9) = v230 ^ v195;
  LODWORD(v9) = v230 ^ v195;
  v231 = v9 >> 12;
  v232 = v228 + v474 + v231;
  HIDWORD(v9) = v232 ^ v229;
  LODWORD(v9) = v232 ^ v229;
  v233 = v9 >> 8;
  v234 = v233 + v230;
  HIDWORD(v9) = v234 ^ v231;
  LODWORD(v9) = v234 ^ v231;
  v235 = v9 >> 7;
  v236 = v208 + v473 + v219;
  HIDWORD(v9) = v236 ^ v233;
  LODWORD(v9) = v236 ^ v233;
  v237 = v9 >> 16;
  v238 = v237 + v226;
  HIDWORD(v9) = (v237 + v226) ^ v219;
  LODWORD(v9) = HIDWORD(v9);
  v239 = v9 >> 12;
  v240 = v236 + *a2 + v239;
  HIDWORD(v9) = v240 ^ v237;
  LODWORD(v9) = v240 ^ v237;
  v241 = v9 >> 8;
  v242 = v241 + v238;
  HIDWORD(v9) = (v241 + v238) ^ v239;
  LODWORD(v9) = HIDWORD(v9);
  v243 = v9 >> 7;
  v244 = v216 + v54 + v227;
  HIDWORD(v9) = v244 ^ v209;
  LODWORD(v9) = v244 ^ v209;
  v245 = v9 >> 16;
  v246 = v245 + v234;
  HIDWORD(v9) = (v245 + v234) ^ v227;
  LODWORD(v9) = HIDWORD(v9);
  v247 = v9 >> 12;
  v248 = v244 + v475 + v247;
  HIDWORD(v9) = v248 ^ v245;
  LODWORD(v9) = v248 ^ v245;
  v249 = v9 >> 8;
  v250 = v249 + v246;
  HIDWORD(v9) = (v249 + v246) ^ v247;
  LODWORD(v9) = HIDWORD(v9);
  v251 = v9 >> 7;
  v252 = v224 + v468 + v235;
  HIDWORD(v9) = v252 ^ v217;
  LODWORD(v9) = v252 ^ v217;
  v253 = v9 >> 16;
  v254 = v253 + v210;
  HIDWORD(v9) = v254 ^ v235;
  LODWORD(v9) = v254 ^ v235;
  v255 = v9 >> 12;
  v256 = v252 + v471 + v255;
  HIDWORD(v9) = v256 ^ v253;
  LODWORD(v9) = v256 ^ v253;
  v257 = v9 >> 8;
  v258 = v257 + v254;
  HIDWORD(v9) = v258 ^ v255;
  LODWORD(v9) = v258 ^ v255;
  v259 = v9 >> 7;
  v260 = v232 + v472 + v211;
  HIDWORD(v9) = v260 ^ v225;
  LODWORD(v9) = v260 ^ v225;
  v261 = v9 >> 16;
  v262 = v261 + v218;
  HIDWORD(v9) = v262 ^ v211;
  LODWORD(v9) = v262 ^ v211;
  v263 = v9 >> 12;
  v264 = v260 + v14 + v263;
  HIDWORD(v9) = v264 ^ v261;
  LODWORD(v9) = v264 ^ v261;
  v265 = v9 >> 8;
  v266 = v265 + v262;
  HIDWORD(v9) = v266 ^ v263;
  LODWORD(v9) = v266 ^ v263;
  v267 = v9 >> 7;
  v268 = v20;
  v269 = v240 + v20 + v267;
  HIDWORD(v9) = v269 ^ v249;
  LODWORD(v9) = v269 ^ v249;
  v270 = v9 >> 16;
  v271 = v270 + v258;
  HIDWORD(v9) = v271 ^ v267;
  LODWORD(v9) = v271 ^ v267;
  v272 = v9 >> 12;
  v273 = v269 + v63 + v272;
  HIDWORD(v9) = v273 ^ v270;
  LODWORD(v9) = v273 ^ v270;
  v274 = v9 >> 8;
  v275 = v274 + v271;
  HIDWORD(v9) = v275 ^ v272;
  LODWORD(v9) = v275 ^ v272;
  v276 = v9 >> 7;
  v277 = v248 + v467 + v243;
  HIDWORD(v9) = v277 ^ v257;
  LODWORD(v9) = v277 ^ v257;
  v278 = v9 >> 16;
  v279 = v278 + v266;
  HIDWORD(v9) = (v278 + v266) ^ v243;
  LODWORD(v9) = HIDWORD(v9);
  v280 = v9 >> 12;
  v281 = v277 + v54 + v280;
  HIDWORD(v9) = v281 ^ v278;
  LODWORD(v9) = v281 ^ v278;
  v282 = v9 >> 8;
  v283 = v282 + v279;
  HIDWORD(v9) = v283 ^ v280;
  LODWORD(v9) = v283 ^ v280;
  v284 = v9 >> 7;
  v285 = v256 + v474 + v251;
  HIDWORD(v9) = v285 ^ v265;
  LODWORD(v9) = v285 ^ v265;
  v286 = v9 >> 16;
  v287 = v286 + v242;
  HIDWORD(v9) = v287 ^ v251;
  LODWORD(v9) = v287 ^ v251;
  v288 = v9 >> 12;
  v289 = v285 + v18 + v288;
  HIDWORD(v9) = v289 ^ v286;
  LODWORD(v9) = v289 ^ v286;
  v290 = v9 >> 8;
  v291 = v290 + v287;
  HIDWORD(v9) = (v290 + v287) ^ v288;
  LODWORD(v9) = HIDWORD(v9);
  v292 = v9 >> 7;
  v293 = v264 + v477 + v259;
  HIDWORD(v9) = v293 ^ v241;
  LODWORD(v9) = v293 ^ v241;
  v294 = v9 >> 16;
  v295 = v294 + v250;
  HIDWORD(v9) = v295 ^ v259;
  LODWORD(v9) = v295 ^ v259;
  v296 = v9 >> 12;
  v297 = v293 + v471 + v296;
  HIDWORD(v9) = v297 ^ v294;
  LODWORD(v9) = v297 ^ v294;
  v298 = v9 >> 8;
  v299 = v298 + v295;
  HIDWORD(v9) = (v298 + v295) ^ v296;
  LODWORD(v9) = HIDWORD(v9);
  v300 = v9 >> 7;
  v301 = v273 + v480 + v284;
  HIDWORD(v9) = v301 ^ v298;
  LODWORD(v9) = v301 ^ v298;
  v302 = v9 >> 16;
  v303 = v302 + v291;
  HIDWORD(v9) = v303 ^ v284;
  LODWORD(v9) = v303 ^ v284;
  v304 = v9 >> 12;
  v305 = v301 + v475 + v304;
  HIDWORD(v9) = v305 ^ v302;
  LODWORD(v9) = v305 ^ v302;
  v306 = v9 >> 8;
  v307 = v306 + v303;
  HIDWORD(v9) = (v306 + v303) ^ v304;
  LODWORD(v9) = HIDWORD(v9);
  v308 = v9 >> 7;
  v309 = v281 + v468 + v292;
  HIDWORD(v9) = v309 ^ v274;
  LODWORD(v9) = v309 ^ v274;
  v310 = v9 >> 16;
  v311 = v310 + v299;
  HIDWORD(v9) = (v310 + v299) ^ v292;
  LODWORD(v9) = HIDWORD(v9);
  v312 = v9 >> 12;
  v313 = v309 + v481 + v312;
  HIDWORD(v9) = v313 ^ v310;
  LODWORD(v9) = v313 ^ v310;
  v314 = v9 >> 8;
  v315 = v314 + v311;
  HIDWORD(v9) = v315 ^ v312;
  LODWORD(v9) = v315 ^ v312;
  v316 = v9 >> 7;
  v317 = v289 + *a2 + v300;
  HIDWORD(v9) = v317 ^ v282;
  LODWORD(v9) = v317 ^ v282;
  v318 = v9 >> 16;
  v319 = v318 + v275;
  HIDWORD(v9) = v319 ^ v300;
  LODWORD(v9) = v319 ^ v300;
  v320 = v9 >> 12;
  v321 = v317 + v472 + v320;
  HIDWORD(v9) = v321 ^ v318;
  LODWORD(v9) = v321 ^ v318;
  v322 = v9 >> 8;
  v323 = v322 + v319;
  HIDWORD(v9) = v323 ^ v320;
  LODWORD(v9) = v323 ^ v320;
  v324 = v9 >> 7;
  v325 = v297 + v14 + v276;
  HIDWORD(v9) = v325 ^ v290;
  LODWORD(v9) = v325 ^ v290;
  v326 = v9 >> 16;
  v327 = v326 + v283;
  HIDWORD(v9) = v327 ^ v276;
  LODWORD(v9) = v327 ^ v276;
  v328 = v9 >> 12;
  v329 = v325 + v473 + v328;
  HIDWORD(v9) = v329 ^ v326;
  LODWORD(v9) = v329 ^ v326;
  v330 = v9 >> 8;
  v331 = v330 + v327;
  HIDWORD(v9) = v331 ^ v328;
  LODWORD(v9) = v331 ^ v328;
  v332 = v9 >> 7;
  v333 = v305 + v467 + v332;
  HIDWORD(v9) = v333 ^ v314;
  LODWORD(v9) = v333 ^ v314;
  v334 = v9 >> 16;
  v335 = v334 + v323;
  HIDWORD(v9) = v335 ^ v332;
  LODWORD(v9) = v335 ^ v332;
  v336 = v9 >> 12;
  v337 = v333 + v477 + v336;
  v338 = v313 + v54 + v308;
  HIDWORD(v9) = v338 ^ v322;
  LODWORD(v9) = v338 ^ v322;
  v339 = v9 >> 16;
  v340 = v339 + v331;
  HIDWORD(v9) = v340 ^ v308;
  LODWORD(v9) = v340 ^ v308;
  v341 = v9 >> 12;
  v342 = v338 + v468 + v341;
  HIDWORD(v9) = v342 ^ v339;
  LODWORD(v9) = v342 ^ v339;
  v343 = v9 >> 8;
  v344 = v343 + v340;
  HIDWORD(v9) = (v343 + v340) ^ v341;
  LODWORD(v9) = HIDWORD(v9);
  v345 = v9 >> 7;
  v346 = v321 + v471 + v316;
  HIDWORD(v9) = v346 ^ v330;
  LODWORD(v9) = v346 ^ v330;
  v347 = v9 >> 16;
  v348 = v347 + v307;
  HIDWORD(v9) = (v347 + v307) ^ v316;
  LODWORD(v9) = HIDWORD(v9);
  v349 = v9 >> 12;
  v350 = v337 ^ v334;
  v351 = v346 + v20 + v349;
  HIDWORD(v9) = v351 ^ v347;
  LODWORD(v9) = v351 ^ v347;
  v352 = v9 >> 8;
  v353 = v352 + v348;
  v354 = v329 + v474 + v324;
  HIDWORD(v9) = v354 ^ v306;
  LODWORD(v9) = v354 ^ v306;
  v355 = v9 >> 16;
  v356 = v353 ^ v349;
  v357 = v355 + v315;
  HIDWORD(v9) = v357 ^ v324;
  LODWORD(v9) = v357 ^ v324;
  v358 = v9 >> 12;
  v359 = v354 + v472 + v358;
  HIDWORD(v9) = v359 ^ v355;
  LODWORD(v9) = v359 ^ v355;
  v360 = v9 >> 8;
  v361 = v360 + v357;
  v362 = v337 + v63 + v345;
  HIDWORD(v9) = v362 ^ v360;
  LODWORD(v9) = v362 ^ v360;
  v363 = v9 >> 16;
  v364 = v363 + v353;
  HIDWORD(v9) = (v363 + v353) ^ v345;
  LODWORD(v9) = HIDWORD(v9);
  v365 = v9 >> 12;
  v366 = v362 + v481 + v365;
  v367 = v366 ^ v363;
  v368 = v366 + v54;
  HIDWORD(v9) = v350;
  LODWORD(v9) = v350;
  v369 = v9 >> 8;
  v370 = v369 + v335;
  HIDWORD(v9) = (v369 + v335) ^ v336;
  LODWORD(v9) = HIDWORD(v9);
  v371 = v9 >> 7;
  HIDWORD(v9) = v356;
  LODWORD(v9) = v356;
  v372 = v9 >> 7;
  v373 = v361 ^ v358;
  v374 = v342 + *a2 + v372;
  HIDWORD(v9) = v374 ^ v369;
  LODWORD(v9) = v374 ^ v369;
  v375 = v9 >> 16;
  HIDWORD(v9) = (v375 + v361) ^ v372;
  LODWORD(v9) = HIDWORD(v9);
  v376 = v9 >> 12;
  v377 = v374 + v18 + v376;
  HIDWORD(v9) = v377 ^ v375;
  LODWORD(v9) = v377 ^ v375;
  v378 = v9 >> 8;
  v379 = v378 + v375 + v361;
  v380 = v359 + v473 + v371;
  HIDWORD(v9) = v380 ^ v352;
  LODWORD(v9) = v380 ^ v352;
  v381 = v9 >> 16;
  v382 = v381 + v344;
  HIDWORD(v9) = v382 ^ v371;
  LODWORD(v9) = v382 ^ v371;
  v383 = v9 >> 12;
  v384 = v380 + v480 + v383;
  HIDWORD(v9) = v384 ^ v381;
  LODWORD(v9) = v384 ^ v381;
  v385 = v9 >> 8;
  v386 = v385 + v382;
  HIDWORD(v9) = (v385 + v382) ^ v383;
  LODWORD(v9) = HIDWORD(v9);
  v387 = v9 >> 7;
  v388 = v368 + v387;
  v389 = v377 + v468;
  HIDWORD(v9) = v373;
  LODWORD(v9) = v373;
  v390 = v9 >> 7;
  HIDWORD(v9) = v367;
  LODWORD(v9) = v367;
  v391 = v9 >> 8;
  v392 = v391 + v364;
  HIDWORD(v9) = (v391 + v364) ^ v365;
  LODWORD(v9) = HIDWORD(v9);
  v393 = v9 >> 7;
  v394 = v351 + v475 + v390;
  HIDWORD(v9) = v394 ^ v343;
  LODWORD(v9) = v394 ^ v343;
  v395 = v9 >> 16;
  v396 = v395 + v370;
  HIDWORD(v9) = (v395 + v370) ^ v390;
  LODWORD(v9) = HIDWORD(v9);
  v397 = v9 >> 12;
  v398 = v394 + v478 + v397;
  HIDWORD(v9) = v398 ^ v395;
  LODWORD(v9) = v398 ^ v395;
  v399 = v9 >> 8;
  v400 = v399 + v396;
  v401 = v389 + v393;
  v402 = v401 ^ v399;
  HIDWORD(v9) = v379 ^ v376;
  LODWORD(v9) = v379 ^ v376;
  v403 = v9 >> 7;
  v404 = v398 + v472 + v403;
  v405 = v404 ^ v385;
  v406 = v404 + v467;
  HIDWORD(v9) = v400 ^ v397;
  LODWORD(v9) = v400 ^ v397;
  v407 = v9 >> 7;
  v408 = v384 + v471 + v407;
  HIDWORD(v9) = (v368 + v387) ^ v378;
  LODWORD(v9) = HIDWORD(v9);
  v409 = v9 >> 16;
  v410 = v409 + v400;
  HIDWORD(v9) = (v409 + v400) ^ v387;
  LODWORD(v9) = HIDWORD(v9);
  v411 = v9 >> 12;
  v412 = v388 + v474 + v411;
  v413 = v412 ^ v409;
  HIDWORD(v9) = v402;
  LODWORD(v9) = v402;
  v414 = v9 >> 16;
  HIDWORD(v9) = (v414 + v386) ^ v393;
  LODWORD(v9) = HIDWORD(v9);
  v415 = v9 >> 12;
  v416 = v401 + v476 + v415;
  HIDWORD(v9) = v416 ^ v414;
  LODWORD(v9) = v416 ^ v414;
  v417 = v9 >> 8;
  v418 = v417 + v414 + v386;
  HIDWORD(v9) = v418 ^ v415;
  LODWORD(v9) = v418 ^ v415;
  v419 = v9 >> 7;
  HIDWORD(v9) = v408 ^ v391;
  LODWORD(v9) = v408 ^ v391;
  v420 = v9 >> 16;
  v421 = v420 + v379;
  HIDWORD(v9) = (v420 + v379) ^ v407;
  LODWORD(v9) = HIDWORD(v9);
  v422 = v9 >> 12;
  v423 = v412 + v477;
  v424 = v408 + v478 + v422;
  HIDWORD(v9) = v424 ^ v420;
  LODWORD(v9) = v424 ^ v420;
  v425 = v9 >> 8;
  v426 = v425 + v421;
  v427 = v423 + v419;
  HIDWORD(v9) = v413;
  LODWORD(v9) = v413;
  v428 = v9 >> 8;
  HIDWORD(v9) = v405;
  LODWORD(v9) = v405;
  v429 = v9 >> 16;
  v430 = v429 + v392;
  HIDWORD(v9) = v430 ^ v403;
  LODWORD(v9) = v430 ^ v403;
  v431 = v9 >> 12;
  v432 = v428 + v410;
  v433 = v406 + v431;
  HIDWORD(v9) = v433 ^ v429;
  LODWORD(v9) = v433 ^ v429;
  v434 = v9 >> 8;
  v435 = v434 + v430;
  HIDWORD(v9) = v435 ^ v431;
  LODWORD(v9) = v435 ^ v431;
  v436 = v9 >> 7;
  v437 = v416 + v475 + v436;
  HIDWORD(v9) = v426 ^ v422;
  LODWORD(v9) = v426 ^ v422;
  v438 = v9 >> 7;
  v439 = v433 + v481 + v438;
  HIDWORD(v9) = v432 ^ v411;
  LODWORD(v9) = v432 ^ v411;
  v440 = v9 >> 7;
  HIDWORD(v9) = v427 ^ v425;
  LODWORD(v9) = v427 ^ v425;
  v441 = v9 >> 16;
  v442 = v441 + v435;
  HIDWORD(v9) = v442 ^ v419;
  LODWORD(v9) = v442 ^ v419;
  v443 = v9 >> 12;
  HIDWORD(v9) = v437 ^ v428;
  LODWORD(v9) = v437 ^ v428;
  v444 = v9 >> 16;
  v445 = v444 + v426;
  HIDWORD(v9) = v445 ^ v436;
  LODWORD(v9) = v445 ^ v436;
  v446 = v9 >> 12;
  HIDWORD(v9) = v439 ^ v417;
  LODWORD(v9) = v439 ^ v417;
  v447 = v9 >> 16;
  v448 = v427 + v470 + v443;
  v449 = v447 + v432;
  HIDWORD(v9) = v449 ^ v438;
  LODWORD(v9) = v449 ^ v438;
  v450 = v9 >> 12;
  v451 = v439 + v473 + v450;
  HIDWORD(v9) = v451 ^ v447;
  LODWORD(v9) = v451 ^ v447;
  v452 = v9 >> 8;
  v453 = v424 + v480 + v440;
  HIDWORD(v9) = v453 ^ v434;
  LODWORD(v9) = v453 ^ v434;
  v454 = v9 >> 16;
  v455 = v454 + v418;
  HIDWORD(v9) = v455 ^ v440;
  LODWORD(v9) = v455 ^ v440;
  v456 = v9 >> 12;
  v457 = v437 + v268 + v446;
  v458 = v453 + v479 + v456;
  HIDWORD(v9) = v458 ^ v454;
  LODWORD(v9) = v458 ^ v454;
  v459 = v9 >> 8;
  v460 = v452 + v449;
  v461 = v459 + v455;
  result = a1;
  *a1 = v460 ^ v448;
  a1[1] = v461 ^ v457;
  HIDWORD(v9) = v448 ^ v441;
  LODWORD(v9) = v448 ^ v441;
  v463 = v9 >> 8;
  HIDWORD(v9) = v457 ^ v444;
  LODWORD(v9) = v457 ^ v444;
  v464 = v9 >> 8;
  v465 = v463 + v442;
  v466 = v464 + v445;
  a1[2] = v465 ^ v451;
  a1[3] = v466 ^ v458;
  a1[4] = v464 ^ __ROR4__(v461 ^ v456, 7);
  a1[5] = v452 ^ __ROR4__(v465 ^ v443, 7);
  a1[6] = v459 ^ __ROR4__(v466 ^ v446, 7);
  a1[7] = v463 ^ __ROR4__(v460 ^ v450, 7);
  return result;
}

uint64_t llvm_blake3_compress_xof_portable(_DWORD *a1, _DWORD *a2, int a3, unint64_t a4, int a5, uint64_t a6)
{
  v454 = a2[1];
  v456 = a2[2];
  v457 = a2[3];
  v6 = a2[4];
  v444 = a2[5];
  v7 = a2[7];
  v8 = a1[4];
  v9 = a1[5];
  v10 = HIDWORD(a4);
  v11 = *a1 + *a2 + v8;
  HIDWORD(v13) = v11 ^ a4;
  LODWORD(v13) = v11 ^ a4;
  v12 = v13 >> 16;
  HIDWORD(v13) = (v12 + 1779033703) ^ v8;
  LODWORD(v13) = HIDWORD(v13);
  v14 = v13 >> 12;
  v15 = v11 + v454 + v14;
  HIDWORD(v13) = v15 ^ v12;
  LODWORD(v13) = v15 ^ v12;
  v16 = v13 >> 8;
  v17 = v16 + v12 + 1779033703;
  HIDWORD(v13) = v17 ^ v14;
  LODWORD(v13) = v17 ^ v14;
  v18 = v13 >> 7;
  v19 = a1[1] + v456 + v9;
  HIDWORD(v13) = v19 ^ v10;
  LODWORD(v13) = v19 ^ v10;
  LODWORD(v10) = v13 >> 16;
  v445 = a2[8];
  v450 = a2[9];
  v20 = v10 - 1150833019;
  HIDWORD(v13) = (v10 - 1150833019) ^ v9;
  LODWORD(v13) = HIDWORD(v13);
  v21 = v13 >> 12;
  v22 = v19 + v457 + v21;
  HIDWORD(v13) = v22 ^ v10;
  LODWORD(v13) = v22 ^ v10;
  v23 = v13 >> 8;
  LODWORD(v10) = a1[3];
  v24 = v23 + v20;
  HIDWORD(v13) = (v23 + v20) ^ v21;
  LODWORD(v13) = HIDWORD(v13);
  v25 = v13 >> 7;
  v26 = a1[6];
  v27 = a1[7];
  v28 = a1[2] + v6 + v26;
  HIDWORD(v13) = v28 ^ a3;
  LODWORD(v13) = v28 ^ a3;
  v29 = v13 >> 16;
  HIDWORD(v13) = (v29 + 1013904242) ^ v26;
  LODWORD(v13) = HIDWORD(v13);
  v30 = v13 >> 12;
  v31 = v28 + v444 + v30;
  HIDWORD(v13) = v31 ^ v29;
  LODWORD(v13) = v31 ^ v29;
  v32 = v13 >> 8;
  v33 = v32 + v29 + 1013904242;
  HIDWORD(v13) = v33 ^ v30;
  LODWORD(v13) = v33 ^ v30;
  v34 = v13 >> 7;
  v453 = a2[6];
  v35 = v10 + v453 + v27;
  HIDWORD(v13) = v35 ^ a5;
  LODWORD(v13) = v35 ^ a5;
  v36 = v13 >> 16;
  v452 = a2[14];
  LODWORD(v10) = v36 - 1521486534;
  HIDWORD(v13) = (v36 - 1521486534) ^ v27;
  LODWORD(v13) = HIDWORD(v13);
  v37 = v13 >> 12;
  v38 = v35 + v7 + v37;
  HIDWORD(v13) = v38 ^ v36;
  LODWORD(v13) = v38 ^ v36;
  v39 = v13 >> 8;
  LODWORD(v10) = v39 + v10;
  HIDWORD(v13) = v10 ^ v37;
  LODWORD(v13) = v10 ^ v37;
  v40 = v13 >> 7;
  v41 = v15 + v445 + v25;
  HIDWORD(v13) = v41 ^ v39;
  LODWORD(v13) = v41 ^ v39;
  v42 = v13 >> 16;
  v43 = v42 + v33;
  HIDWORD(v13) = v43 ^ v25;
  LODWORD(v13) = v43 ^ v25;
  v44 = v13 >> 12;
  v45 = v41 + v450 + v44;
  HIDWORD(v13) = v45 ^ v42;
  LODWORD(v13) = v45 ^ v42;
  v46 = v13 >> 8;
  v47 = v46 + v43;
  HIDWORD(v13) = v47 ^ v44;
  LODWORD(v13) = v47 ^ v44;
  v48 = v13 >> 7;
  v455 = a2[10];
  v49 = v22 + v455 + v34;
  HIDWORD(v13) = v49 ^ v16;
  LODWORD(v13) = v49 ^ v16;
  v50 = v13 >> 16;
  LODWORD(v10) = v50 + v10;
  HIDWORD(v13) = v10 ^ v34;
  LODWORD(v13) = v10 ^ v34;
  v51 = v13 >> 12;
  v451 = a2[11];
  v52 = v49 + v451 + v51;
  HIDWORD(v13) = v52 ^ v50;
  LODWORD(v13) = v52 ^ v50;
  v53 = v13 >> 8;
  LODWORD(v10) = v53 + v10;
  HIDWORD(v13) = v10 ^ v51;
  LODWORD(v13) = v10 ^ v51;
  v54 = v13 >> 7;
  v55 = a2[12];
  v56 = v31 + v55 + v40;
  HIDWORD(v13) = v56 ^ v23;
  LODWORD(v13) = v56 ^ v23;
  v57 = v13 >> 16;
  v58 = v57 + v17;
  HIDWORD(v13) = v58 ^ v40;
  LODWORD(v13) = v58 ^ v40;
  v59 = v13 >> 12;
  v60 = a2[13];
  v61 = v56 + v60 + v59;
  HIDWORD(v13) = v61 ^ v57;
  LODWORD(v13) = v61 ^ v57;
  v62 = v13 >> 8;
  v63 = v62 + v58;
  HIDWORD(v13) = v63 ^ v59;
  LODWORD(v13) = v63 ^ v59;
  v64 = v13 >> 7;
  v65 = v38 + v452 + v18;
  HIDWORD(v13) = v65 ^ v32;
  LODWORD(v13) = v65 ^ v32;
  v66 = v13 >> 16;
  v67 = v66 + v24;
  HIDWORD(v13) = v67 ^ v18;
  LODWORD(v13) = v67 ^ v18;
  v68 = v13 >> 12;
  v443 = a2[15];
  v69 = v65 + v443 + v68;
  HIDWORD(v13) = v69 ^ v66;
  LODWORD(v13) = v69 ^ v66;
  v70 = v13 >> 8;
  v71 = v70 + v67;
  HIDWORD(v13) = v71 ^ v68;
  LODWORD(v13) = v71 ^ v68;
  v72 = v13 >> 7;
  v73 = v45 + v456 + v72;
  HIDWORD(v13) = v73 ^ v53;
  LODWORD(v13) = v73 ^ v53;
  v74 = v13 >> 16;
  v75 = v74 + v63;
  HIDWORD(v13) = v75 ^ v72;
  LODWORD(v13) = v75 ^ v72;
  v76 = v13 >> 12;
  v77 = v73 + v453 + v76;
  HIDWORD(v13) = v77 ^ v74;
  LODWORD(v13) = v77 ^ v74;
  v78 = v13 >> 8;
  v79 = v78 + v75;
  HIDWORD(v13) = v79 ^ v76;
  LODWORD(v13) = v79 ^ v76;
  v80 = v13 >> 7;
  v81 = v52 + v457 + v48;
  HIDWORD(v13) = v81 ^ v62;
  LODWORD(v13) = v81 ^ v62;
  v82 = v13 >> 16;
  v83 = v82 + v71;
  HIDWORD(v13) = v83 ^ v48;
  LODWORD(v13) = v83 ^ v48;
  v84 = v13 >> 12;
  v85 = v81 + v455 + v84;
  HIDWORD(v13) = v85 ^ v82;
  LODWORD(v13) = v85 ^ v82;
  v86 = v13 >> 8;
  v87 = v86 + v83;
  HIDWORD(v13) = v87 ^ v84;
  LODWORD(v13) = v87 ^ v84;
  v88 = v13 >> 7;
  v89 = v61 + v7 + v54;
  HIDWORD(v13) = v89 ^ v70;
  LODWORD(v13) = v89 ^ v70;
  v90 = v13 >> 16;
  v91 = v90 + v47;
  HIDWORD(v13) = v91 ^ v54;
  LODWORD(v13) = v91 ^ v54;
  v92 = v13 >> 12;
  v93 = v89 + *a2 + v92;
  HIDWORD(v13) = v93 ^ v90;
  LODWORD(v13) = v93 ^ v90;
  v94 = v13 >> 8;
  v95 = v94 + v91;
  HIDWORD(v13) = v95 ^ v92;
  LODWORD(v13) = v95 ^ v92;
  v96 = v13 >> 7;
  v448 = v6;
  v97 = v69 + v6 + v64;
  HIDWORD(v13) = v97 ^ v46;
  LODWORD(v13) = v97 ^ v46;
  v98 = v13 >> 16;
  LODWORD(v10) = v98 + v10;
  HIDWORD(v13) = v10 ^ v64;
  LODWORD(v13) = v10 ^ v64;
  v99 = v13 >> 12;
  v100 = v60;
  v101 = v97 + v60 + v99;
  HIDWORD(v13) = v101 ^ v98;
  LODWORD(v13) = v101 ^ v98;
  v102 = v13 >> 8;
  v103 = v102 + v10;
  HIDWORD(v13) = (v102 + v10) ^ v99;
  LODWORD(v13) = HIDWORD(v13);
  LODWORD(v10) = v13 >> 7;
  v104 = v77 + v454 + v88;
  HIDWORD(v13) = v104 ^ v102;
  LODWORD(v13) = v104 ^ v102;
  v105 = v13 >> 16;
  v106 = v105 + v95;
  HIDWORD(v13) = (v105 + v95) ^ v88;
  LODWORD(v13) = HIDWORD(v13);
  v107 = v13 >> 12;
  v108 = v104 + v451 + v107;
  HIDWORD(v13) = v108 ^ v105;
  LODWORD(v13) = v108 ^ v105;
  v109 = v13 >> 8;
  v110 = v109 + v106;
  HIDWORD(v13) = (v109 + v106) ^ v107;
  LODWORD(v13) = HIDWORD(v13);
  v111 = v13 >> 7;
  v112 = v85 + v55 + v96;
  HIDWORD(v13) = v112 ^ v78;
  LODWORD(v13) = v112 ^ v78;
  v113 = v13 >> 16;
  v114 = v113 + v103;
  HIDWORD(v13) = (v113 + v103) ^ v96;
  LODWORD(v13) = HIDWORD(v13);
  v115 = v13 >> 12;
  v116 = v112 + v444 + v115;
  HIDWORD(v13) = v116 ^ v113;
  LODWORD(v13) = v116 ^ v113;
  v117 = v13 >> 8;
  v118 = v117 + v114;
  HIDWORD(v13) = v118 ^ v115;
  LODWORD(v13) = v118 ^ v115;
  v119 = v13 >> 7;
  v120 = v93 + v450 + v10;
  HIDWORD(v13) = v120 ^ v86;
  LODWORD(v13) = v120 ^ v86;
  v121 = v13 >> 16;
  v122 = v121 + v79;
  HIDWORD(v13) = v122 ^ v10;
  LODWORD(v13) = v122 ^ v10;
  LODWORD(v10) = v13 >> 12;
  v123 = v120 + v452 + v10;
  HIDWORD(v13) = v123 ^ v121;
  LODWORD(v13) = v123 ^ v121;
  v124 = v13 >> 8;
  v125 = v124 + v122;
  HIDWORD(v13) = v125 ^ v10;
  LODWORD(v13) = v125 ^ v10;
  v126 = v13 >> 7;
  LODWORD(v10) = v101 + v443 + v80;
  HIDWORD(v13) = v10 ^ v94;
  LODWORD(v13) = v10 ^ v94;
  v127 = v13 >> 16;
  v128 = v127 + v87;
  HIDWORD(v13) = v128 ^ v80;
  LODWORD(v13) = v128 ^ v80;
  v129 = v13 >> 12;
  LODWORD(v10) = v10 + v445 + v129;
  HIDWORD(v13) = v10 ^ v127;
  LODWORD(v13) = v10 ^ v127;
  v130 = v13 >> 8;
  v131 = v130 + v128;
  HIDWORD(v13) = v131 ^ v129;
  LODWORD(v13) = v131 ^ v129;
  v132 = v13 >> 7;
  v133 = v108 + v457 + v132;
  HIDWORD(v13) = v133 ^ v117;
  LODWORD(v13) = v133 ^ v117;
  v134 = v13 >> 16;
  HIDWORD(v13) = (v134 + v125) ^ v132;
  LODWORD(v13) = HIDWORD(v13);
  v135 = v13 >> 12;
  v136 = v133 + v6 + v135;
  HIDWORD(v13) = v136 ^ v134;
  LODWORD(v13) = v136 ^ v134;
  v137 = v13 >> 8;
  v138 = v137 + v134 + v125;
  HIDWORD(v13) = v138 ^ v135;
  LODWORD(v13) = v138 ^ v135;
  v139 = v13 >> 7;
  v140 = v116 + v455 + v111;
  HIDWORD(v13) = v140 ^ v124;
  LODWORD(v13) = v140 ^ v124;
  v141 = v13 >> 16;
  v142 = v141 + v131;
  HIDWORD(v13) = v142 ^ v111;
  LODWORD(v13) = v142 ^ v111;
  v143 = v13 >> 12;
  v144 = v140 + v55 + v143;
  HIDWORD(v13) = v144 ^ v141;
  LODWORD(v13) = v144 ^ v141;
  v145 = v13 >> 8;
  v146 = v145 + v142;
  HIDWORD(v13) = v146 ^ v143;
  LODWORD(v13) = v146 ^ v143;
  v147 = v13 >> 7;
  v148 = v123 + v100 + v119;
  HIDWORD(v13) = v148 ^ v130;
  LODWORD(v13) = v148 ^ v130;
  v149 = v13 >> 16;
  v150 = v149 + v110;
  HIDWORD(v13) = v150 ^ v119;
  LODWORD(v13) = v150 ^ v119;
  v151 = v13 >> 12;
  v152 = v148 + v456 + v151;
  HIDWORD(v13) = v152 ^ v149;
  LODWORD(v13) = v152 ^ v149;
  v153 = v13 >> 8;
  v154 = v153 + v150;
  HIDWORD(v13) = (v153 + v150) ^ v151;
  LODWORD(v13) = HIDWORD(v13);
  v155 = v13 >> 7;
  v446 = a2[7];
  LODWORD(v10) = v10 + v446 + v126;
  HIDWORD(v13) = v10 ^ v109;
  LODWORD(v13) = v10 ^ v109;
  v156 = v13 >> 16;
  v157 = v156 + v118;
  HIDWORD(v13) = v157 ^ v126;
  LODWORD(v13) = v157 ^ v126;
  v158 = v13 >> 12;
  LODWORD(v10) = v10 + v452 + v158;
  HIDWORD(v13) = v10 ^ v156;
  LODWORD(v13) = v10 ^ v156;
  v159 = v13 >> 8;
  v160 = v159 + v157;
  HIDWORD(v13) = v160 ^ v158;
  LODWORD(v13) = v160 ^ v158;
  v161 = v13 >> 7;
  v162 = v136 + v453 + v147;
  HIDWORD(v13) = v162 ^ v159;
  LODWORD(v13) = v162 ^ v159;
  v163 = v13 >> 16;
  v164 = v163 + v154;
  HIDWORD(v13) = v164 ^ v147;
  LODWORD(v13) = v164 ^ v147;
  v165 = v13 >> 12;
  v166 = v162 + v444 + v165;
  HIDWORD(v13) = v166 ^ v163;
  LODWORD(v13) = v166 ^ v163;
  v167 = v13 >> 8;
  v168 = v167 + v164;
  HIDWORD(v13) = (v167 + v164) ^ v165;
  LODWORD(v13) = HIDWORD(v13);
  v169 = v13 >> 7;
  v170 = v144 + v450 + v155;
  HIDWORD(v13) = v170 ^ v137;
  LODWORD(v13) = v170 ^ v137;
  v171 = v13 >> 16;
  v172 = v171 + v160;
  HIDWORD(v13) = v172 ^ v155;
  LODWORD(v13) = v172 ^ v155;
  v173 = v13 >> 12;
  v174 = v170 + *a2 + v173;
  HIDWORD(v13) = v174 ^ v171;
  LODWORD(v13) = v174 ^ v171;
  v175 = v13 >> 8;
  v176 = v175 + v172;
  HIDWORD(v13) = v176 ^ v173;
  LODWORD(v13) = v176 ^ v173;
  v177 = v13 >> 7;
  v178 = v152 + v451 + v161;
  HIDWORD(v13) = v178 ^ v145;
  LODWORD(v13) = v178 ^ v145;
  v179 = v13 >> 16;
  v180 = v179 + v138;
  HIDWORD(v13) = v180 ^ v161;
  LODWORD(v13) = v180 ^ v161;
  v181 = v13 >> 12;
  v182 = v178 + v443 + v181;
  HIDWORD(v13) = v182 ^ v179;
  LODWORD(v13) = v182 ^ v179;
  v183 = v13 >> 8;
  v184 = v183 + v180;
  HIDWORD(v13) = v184 ^ v181;
  LODWORD(v13) = v184 ^ v181;
  v185 = v13 >> 7;
  LODWORD(v10) = v10 + v445 + v139;
  HIDWORD(v13) = v10 ^ v153;
  LODWORD(v13) = v10 ^ v153;
  v186 = v13 >> 16;
  v187 = v186 + v146;
  HIDWORD(v13) = v187 ^ v139;
  LODWORD(v13) = v187 ^ v139;
  v188 = v13 >> 12;
  LODWORD(v10) = v10 + v454 + v188;
  HIDWORD(v13) = v10 ^ v186;
  LODWORD(v13) = v10 ^ v186;
  v189 = v13 >> 8;
  v190 = v189 + v187;
  HIDWORD(v13) = v190 ^ v188;
  LODWORD(v13) = v190 ^ v188;
  v191 = v13 >> 7;
  v192 = v166 + v455 + v191;
  HIDWORD(v13) = v192 ^ v175;
  LODWORD(v13) = v192 ^ v175;
  v193 = v13 >> 16;
  v194 = v193 + v184;
  HIDWORD(v13) = v194 ^ v191;
  LODWORD(v13) = v194 ^ v191;
  v195 = v13 >> 12;
  v196 = v192 + v446 + v195;
  HIDWORD(v13) = v196 ^ v193;
  LODWORD(v13) = v196 ^ v193;
  v197 = v13 >> 8;
  v198 = v197 + v194;
  HIDWORD(v13) = v198 ^ v195;
  LODWORD(v13) = v198 ^ v195;
  v199 = v13 >> 7;
  v447 = v55;
  v200 = v174 + v55 + v169;
  HIDWORD(v13) = v200 ^ v183;
  LODWORD(v13) = v200 ^ v183;
  v201 = v13 >> 16;
  v202 = v201 + v190;
  HIDWORD(v13) = v202 ^ v169;
  LODWORD(v13) = v202 ^ v169;
  v203 = v13 >> 12;
  v204 = v200 + v450 + v203;
  HIDWORD(v13) = v204 ^ v201;
  LODWORD(v13) = v204 ^ v201;
  v205 = v13 >> 8;
  v206 = v205 + v202;
  HIDWORD(v13) = v206 ^ v203;
  LODWORD(v13) = v206 ^ v203;
  v207 = v13 >> 7;
  v208 = v182 + v452 + v177;
  HIDWORD(v13) = v208 ^ v189;
  LODWORD(v13) = v208 ^ v189;
  v209 = v13 >> 16;
  v210 = v209 + v168;
  HIDWORD(v13) = v210 ^ v177;
  LODWORD(v13) = v210 ^ v177;
  v211 = v13 >> 12;
  v212 = v208 + v457 + v211;
  HIDWORD(v13) = v212 ^ v209;
  LODWORD(v13) = v212 ^ v209;
  v213 = v13 >> 8;
  v214 = v213 + v210;
  HIDWORD(v13) = v214 ^ v211;
  LODWORD(v13) = v214 ^ v211;
  v215 = v13 >> 7;
  v449 = a2[13];
  LODWORD(v10) = v10 + v100 + v185;
  HIDWORD(v13) = v10 ^ v167;
  LODWORD(v13) = v10 ^ v167;
  v216 = v13 >> 16;
  v217 = v216 + v176;
  HIDWORD(v13) = v217 ^ v185;
  LODWORD(v13) = v217 ^ v185;
  v218 = v13 >> 12;
  LODWORD(v10) = v10 + v443 + v218;
  HIDWORD(v13) = v10 ^ v216;
  LODWORD(v13) = v10 ^ v216;
  v219 = v13 >> 8;
  v220 = v219 + v217;
  HIDWORD(v13) = v220 ^ v218;
  LODWORD(v13) = v220 ^ v218;
  v221 = v13 >> 7;
  v222 = v196 + v6 + v207;
  HIDWORD(v13) = v222 ^ v219;
  LODWORD(v13) = v222 ^ v219;
  v223 = v13 >> 16;
  v224 = v223 + v214;
  HIDWORD(v13) = v224 ^ v207;
  LODWORD(v13) = v224 ^ v207;
  v225 = v13 >> 12;
  v226 = v222 + *a2 + v225;
  HIDWORD(v13) = v226 ^ v223;
  LODWORD(v13) = v226 ^ v223;
  v227 = v13 >> 8;
  v228 = v227 + v224;
  HIDWORD(v13) = v228 ^ v225;
  LODWORD(v13) = v228 ^ v225;
  v229 = v13 >> 7;
  v230 = v204 + v451 + v215;
  HIDWORD(v13) = v230 ^ v197;
  LODWORD(v13) = v230 ^ v197;
  v231 = v13 >> 16;
  v232 = v231 + v220;
  HIDWORD(v13) = v232 ^ v215;
  LODWORD(v13) = v232 ^ v215;
  v233 = v13 >> 12;
  v234 = v230 + v456 + v233;
  HIDWORD(v13) = v234 ^ v231;
  LODWORD(v13) = v234 ^ v231;
  v235 = v13 >> 8;
  v236 = v235 + v232;
  HIDWORD(v13) = v236 ^ v233;
  LODWORD(v13) = v236 ^ v233;
  v237 = v13 >> 7;
  v238 = v212 + v444 + v221;
  HIDWORD(v13) = v238 ^ v205;
  LODWORD(v13) = v238 ^ v205;
  v239 = v13 >> 16;
  v240 = v239 + v198;
  HIDWORD(v13) = v240 ^ v221;
  LODWORD(v13) = v240 ^ v221;
  v241 = v13 >> 12;
  v242 = v238 + v445 + v241;
  HIDWORD(v13) = v242 ^ v239;
  LODWORD(v13) = v242 ^ v239;
  v243 = v13 >> 8;
  v244 = v243 + v240;
  HIDWORD(v13) = v244 ^ v241;
  LODWORD(v13) = v244 ^ v241;
  v245 = v13 >> 7;
  LODWORD(v10) = v10 + v454 + v199;
  HIDWORD(v13) = v10 ^ v213;
  LODWORD(v13) = v10 ^ v213;
  v246 = v13 >> 16;
  v247 = v246 + v206;
  HIDWORD(v13) = v247 ^ v199;
  LODWORD(v13) = v247 ^ v199;
  v248 = v13 >> 12;
  LODWORD(v10) = v10 + v453 + v248;
  HIDWORD(v13) = v10 ^ v246;
  LODWORD(v13) = v10 ^ v246;
  v249 = v13 >> 8;
  v250 = v249 + v247;
  HIDWORD(v13) = v250 ^ v248;
  LODWORD(v13) = v250 ^ v248;
  v251 = v13 >> 7;
  v252 = v226 + v55 + v251;
  HIDWORD(v13) = v252 ^ v235;
  LODWORD(v13) = v252 ^ v235;
  v253 = v13 >> 16;
  v254 = v253 + v244;
  HIDWORD(v13) = v254 ^ v251;
  LODWORD(v13) = v254 ^ v251;
  v255 = v13 >> 12;
  v256 = v252 + v100 + v255;
  HIDWORD(v13) = v256 ^ v253;
  LODWORD(v13) = v256 ^ v253;
  v257 = v13 >> 8;
  v258 = v257 + v254;
  HIDWORD(v13) = v258 ^ v255;
  LODWORD(v13) = v258 ^ v255;
  v259 = v13 >> 7;
  v260 = v234 + v450 + v229;
  HIDWORD(v13) = v260 ^ v243;
  LODWORD(v13) = v260 ^ v243;
  v261 = v13 >> 16;
  v262 = v261 + v250;
  HIDWORD(v13) = v262 ^ v229;
  LODWORD(v13) = v262 ^ v229;
  v263 = v13 >> 12;
  v264 = v260 + v451 + v263;
  HIDWORD(v13) = v264 ^ v261;
  LODWORD(v13) = v264 ^ v261;
  v265 = v13 >> 8;
  v266 = v265 + v262;
  HIDWORD(v13) = v266 ^ v263;
  LODWORD(v13) = v266 ^ v263;
  v267 = v13 >> 7;
  v268 = v242 + v443 + v237;
  HIDWORD(v13) = v268 ^ v249;
  LODWORD(v13) = v268 ^ v249;
  v269 = v13 >> 16;
  v270 = v269 + v228;
  HIDWORD(v13) = v270 ^ v237;
  LODWORD(v13) = v270 ^ v237;
  v271 = v13 >> 12;
  v272 = v268 + v455 + v271;
  HIDWORD(v13) = v272 ^ v269;
  LODWORD(v13) = v272 ^ v269;
  v273 = v13 >> 8;
  v274 = v273 + v270;
  HIDWORD(v13) = v274 ^ v271;
  LODWORD(v13) = v274 ^ v271;
  v275 = v13 >> 7;
  LODWORD(v10) = v10 + v452 + v245;
  HIDWORD(v13) = v10 ^ v227;
  LODWORD(v13) = v10 ^ v227;
  v276 = v13 >> 16;
  v277 = v276 + v236;
  HIDWORD(v13) = v277 ^ v245;
  LODWORD(v13) = v277 ^ v245;
  v278 = v13 >> 12;
  LODWORD(v10) = v10 + v445 + v278;
  HIDWORD(v13) = v10 ^ v276;
  LODWORD(v13) = v10 ^ v276;
  v279 = v13 >> 8;
  v280 = v279 + v277;
  HIDWORD(v13) = v280 ^ v278;
  LODWORD(v13) = v280 ^ v278;
  v281 = v13 >> 7;
  v282 = v256 + v446 + v267;
  HIDWORD(v13) = v282 ^ v279;
  LODWORD(v13) = v282 ^ v279;
  v283 = v13 >> 16;
  v284 = v283 + v274;
  HIDWORD(v13) = v284 ^ v267;
  LODWORD(v13) = v284 ^ v267;
  v285 = v13 >> 12;
  v286 = v282 + v456 + v285;
  HIDWORD(v13) = v286 ^ v283;
  LODWORD(v13) = v286 ^ v283;
  v287 = v13 >> 8;
  v288 = v287 + v284;
  HIDWORD(v13) = v288 ^ v285;
  LODWORD(v13) = v288 ^ v285;
  v289 = v13 >> 7;
  v290 = v264 + v444 + v275;
  HIDWORD(v13) = v290 ^ v257;
  LODWORD(v13) = v290 ^ v257;
  v291 = v13 >> 16;
  v292 = v291 + v280;
  HIDWORD(v13) = (v291 + v280) ^ v275;
  LODWORD(v13) = HIDWORD(v13);
  v293 = v13 >> 12;
  v294 = v290 + v457 + v293;
  HIDWORD(v13) = v294 ^ v291;
  LODWORD(v13) = v294 ^ v291;
  v295 = v13 >> 8;
  v296 = v295 + v292;
  HIDWORD(v13) = (v295 + v292) ^ v293;
  LODWORD(v13) = HIDWORD(v13);
  v297 = v13 >> 7;
  v298 = v272 + *a2 + v281;
  HIDWORD(v13) = v298 ^ v265;
  LODWORD(v13) = v298 ^ v265;
  v299 = v13 >> 16;
  v300 = v299 + v258;
  HIDWORD(v13) = (v299 + v258) ^ v281;
  LODWORD(v13) = HIDWORD(v13);
  v301 = v13 >> 12;
  v302 = v298 + v454 + v301;
  HIDWORD(v13) = v302 ^ v299;
  LODWORD(v13) = v302 ^ v299;
  v303 = v13 >> 8;
  v304 = v303 + v300;
  HIDWORD(v13) = v304 ^ v301;
  LODWORD(v13) = v304 ^ v301;
  v305 = v13 >> 7;
  LODWORD(v10) = v10 + v453 + v259;
  HIDWORD(v13) = v10 ^ v273;
  LODWORD(v13) = v10 ^ v273;
  v306 = v13 >> 16;
  v307 = v306 + v266;
  HIDWORD(v13) = v307 ^ v259;
  LODWORD(v13) = v307 ^ v259;
  v308 = v13 >> 12;
  LODWORD(v10) = v10 + v6 + v308;
  HIDWORD(v13) = v10 ^ v306;
  LODWORD(v13) = v10 ^ v306;
  v309 = v13 >> 8;
  v310 = v309 + v307;
  HIDWORD(v13) = v310 ^ v308;
  LODWORD(v13) = v310 ^ v308;
  v311 = v13 >> 7;
  v312 = v286 + v450 + v311;
  HIDWORD(v13) = v312 ^ v295;
  LODWORD(v13) = v312 ^ v295;
  v313 = v13 >> 16;
  v314 = v313 + v304;
  HIDWORD(v13) = (v313 + v304) ^ v311;
  LODWORD(v13) = HIDWORD(v13);
  v315 = v13 >> 12;
  v316 = v312 + v452 + v315;
  v317 = v294 + v451 + v289;
  HIDWORD(v13) = v317 ^ v303;
  LODWORD(v13) = v317 ^ v303;
  v318 = v13 >> 16;
  v319 = v318 + v310;
  HIDWORD(v13) = (v318 + v310) ^ v289;
  LODWORD(v13) = HIDWORD(v13);
  v320 = v13 >> 12;
  v321 = v317 + v444 + v320;
  HIDWORD(v13) = v321 ^ v318;
  LODWORD(v13) = v321 ^ v318;
  v322 = v13 >> 8;
  v323 = v322 + v319;
  HIDWORD(v13) = (v322 + v319) ^ v320;
  LODWORD(v13) = HIDWORD(v13);
  v324 = v13 >> 7;
  v325 = v302 + v445 + v297;
  HIDWORD(v13) = v325 ^ v309;
  LODWORD(v13) = v325 ^ v309;
  v326 = v13 >> 16;
  v327 = v326 + v288;
  HIDWORD(v13) = v327 ^ v297;
  LODWORD(v13) = v327 ^ v297;
  v328 = v13 >> 12;
  v329 = v316 ^ v313;
  v330 = v325 + v55 + v328;
  HIDWORD(v13) = v330 ^ v326;
  LODWORD(v13) = v330 ^ v326;
  v331 = v13 >> 8;
  v332 = v331 + v327;
  v333 = v10 + v443 + v305;
  HIDWORD(v13) = v333 ^ v287;
  LODWORD(v13) = v333 ^ v287;
  v334 = v13 >> 16;
  LODWORD(v10) = (v331 + v327) ^ v328;
  v335 = v334 + v296;
  HIDWORD(v13) = v335 ^ v305;
  LODWORD(v13) = v335 ^ v305;
  v336 = v13 >> 12;
  v337 = v333 + v454 + v336;
  HIDWORD(v13) = v337 ^ v334;
  LODWORD(v13) = v337 ^ v334;
  v338 = v13 >> 8;
  v339 = v338 + v335;
  v340 = v316 + v100 + v324;
  HIDWORD(v13) = v340 ^ v338;
  LODWORD(v13) = v340 ^ v338;
  v341 = v13 >> 16;
  v342 = v341 + v332;
  HIDWORD(v13) = (v341 + v332) ^ v324;
  LODWORD(v13) = HIDWORD(v13);
  v343 = v13 >> 12;
  v344 = v340 + v457 + v343;
  v345 = v344 ^ v341;
  HIDWORD(v13) = v329;
  LODWORD(v13) = v329;
  v346 = v13 >> 8;
  v347 = v346 + v314;
  HIDWORD(v13) = (v346 + v314) ^ v315;
  LODWORD(v13) = HIDWORD(v13);
  v348 = v13 >> 7;
  HIDWORD(v13) = v10;
  LODWORD(v13) = v10;
  LODWORD(v10) = v13 >> 7;
  v349 = v339 ^ v336;
  v350 = v321 + *a2 + v10;
  HIDWORD(v13) = v350 ^ v346;
  LODWORD(v13) = v350 ^ v346;
  v351 = v13 >> 16;
  v352 = v351 + v339;
  HIDWORD(v13) = (v351 + v339) ^ v10;
  LODWORD(v13) = HIDWORD(v13);
  v353 = v13 >> 12;
  LODWORD(v10) = v350 + v455 + v353;
  HIDWORD(v13) = v10 ^ v351;
  LODWORD(v13) = v10 ^ v351;
  v354 = v13 >> 8;
  v355 = v354 + v352;
  v356 = v337 + v448 + v348;
  HIDWORD(v13) = v356 ^ v331;
  LODWORD(v13) = v356 ^ v331;
  v357 = v13 >> 16;
  v358 = v357 + v323;
  HIDWORD(v13) = (v357 + v323) ^ v348;
  LODWORD(v13) = HIDWORD(v13);
  v359 = v13 >> 12;
  v360 = v356 + v446 + v359;
  HIDWORD(v13) = v360 ^ v357;
  LODWORD(v13) = v360 ^ v357;
  v361 = v13 >> 8;
  v362 = v361 + v358;
  HIDWORD(v13) = (v361 + v358) ^ v359;
  LODWORD(v13) = HIDWORD(v13);
  v363 = v13 >> 7;
  v364 = v344 + v451 + v363;
  v365 = v364 ^ v354;
  v366 = v364 + v443;
  HIDWORD(v13) = v349;
  LODWORD(v13) = v349;
  v367 = v13 >> 7;
  HIDWORD(v13) = v345;
  LODWORD(v13) = v345;
  v368 = v13 >> 8;
  HIDWORD(v13) = (v368 + v342) ^ v343;
  LODWORD(v13) = HIDWORD(v13);
  v369 = v13 >> 7;
  v370 = v330 + v456 + v367;
  HIDWORD(v13) = v370 ^ v322;
  LODWORD(v13) = v370 ^ v322;
  v371 = v13 >> 16;
  v372 = v371 + v347;
  HIDWORD(v13) = v372 ^ v367;
  LODWORD(v13) = v372 ^ v367;
  v373 = v13 >> 12;
  v374 = v370 + v453 + v373;
  HIDWORD(v13) = v374 ^ v371;
  LODWORD(v13) = v374 ^ v371;
  v375 = v13 >> 8;
  v376 = v375 + v372;
  LODWORD(v10) = v10 + v444 + v369;
  HIDWORD(v13) = v355 ^ v353;
  LODWORD(v13) = v355 ^ v353;
  v377 = v13 >> 7;
  v378 = v374 + v454 + v377;
  v379 = v378 ^ v361;
  v380 = v378 + v450;
  HIDWORD(v13) = v376 ^ v373;
  LODWORD(v13) = v376 ^ v373;
  v381 = v13 >> 7;
  v382 = v360 + v445 + v381;
  HIDWORD(v13) = v365;
  LODWORD(v13) = v365;
  v383 = v13 >> 16;
  v384 = v383 + v376;
  HIDWORD(v13) = v384 ^ v363;
  LODWORD(v13) = v384 ^ v363;
  v385 = v13 >> 12;
  v386 = v366 + v385;
  v387 = v386 ^ v383;
  HIDWORD(v13) = v10 ^ v375;
  LODWORD(v13) = v10 ^ v375;
  v388 = v13 >> 16;
  v389 = v388 + v362;
  HIDWORD(v13) = v389 ^ v369;
  LODWORD(v13) = v389 ^ v369;
  v390 = v13 >> 12;
  LODWORD(v10) = v10 + *a2 + v390;
  HIDWORD(v13) = v10 ^ v388;
  LODWORD(v13) = v10 ^ v388;
  v391 = v13 >> 8;
  v392 = v391 + v389;
  HIDWORD(v13) = (v391 + v389) ^ v390;
  LODWORD(v13) = HIDWORD(v13);
  v393 = v13 >> 7;
  HIDWORD(v13) = v382 ^ v368;
  LODWORD(v13) = v382 ^ v368;
  v394 = v13 >> 16;
  v395 = v394 + v355;
  HIDWORD(v13) = v395 ^ v381;
  LODWORD(v13) = v395 ^ v381;
  v396 = v13 >> 12;
  v397 = v386 + v452;
  v398 = v382 + v453 + v396;
  HIDWORD(v13) = v398 ^ v394;
  LODWORD(v13) = v398 ^ v394;
  v399 = v13 >> 8;
  v400 = v399 + v395;
  v401 = v397 + v393;
  v402 = v401 ^ v399;
  v403 = v401 + v455;
  HIDWORD(v13) = v387;
  LODWORD(v13) = v387;
  v404 = v13 >> 8;
  HIDWORD(v13) = v379;
  LODWORD(v13) = v379;
  v405 = v13 >> 16;
  v406 = v405 + v368 + v342;
  HIDWORD(v13) = v406 ^ v377;
  LODWORD(v13) = v406 ^ v377;
  v407 = v13 >> 12;
  v408 = v404 + v384;
  v409 = v380 + v407;
  HIDWORD(v13) = (v380 + v407) ^ v405;
  LODWORD(v13) = HIDWORD(v13);
  v410 = v13 >> 8;
  v411 = v410 + v406;
  HIDWORD(v13) = (v410 + v406) ^ v407;
  LODWORD(v13) = HIDWORD(v13);
  v412 = v13 >> 7;
  v413 = v10 + v456 + v412;
  v414 = v413 ^ v404;
  v415 = v413 + v447;
  HIDWORD(v13) = v400 ^ v396;
  LODWORD(v13) = v400 ^ v396;
  LODWORD(v10) = v13 >> 7;
  v416 = v409 + v457 + v10;
  HIDWORD(v13) = v408 ^ v385;
  LODWORD(v13) = v408 ^ v385;
  v417 = v13 >> 7;
  HIDWORD(v13) = v402;
  LODWORD(v13) = v402;
  v418 = v13 >> 16;
  v419 = v398 + v446;
  v420 = v418 + v411;
  HIDWORD(v13) = v420 ^ v393;
  LODWORD(v13) = v420 ^ v393;
  v421 = v13 >> 12;
  v422 = v403 + v421;
  HIDWORD(v13) = v416 ^ v391;
  LODWORD(v13) = v416 ^ v391;
  v423 = v13 >> 16;
  v424 = v423 + v408;
  HIDWORD(v13) = (v423 + v408) ^ v10;
  LODWORD(v13) = HIDWORD(v13);
  v425 = v13 >> 12;
  LODWORD(v10) = v422 ^ v418;
  v426 = v416 + v448 + v425;
  HIDWORD(v13) = v426 ^ v423;
  LODWORD(v13) = v426 ^ v423;
  v427 = v13 >> 8;
  v428 = v427 + v424;
  v429 = (v419 + v417) ^ v410;
  result = v449;
  v431 = v419 + v417 + v449;
  v432 = v428 ^ v422;
  *(a6 + 1) = (v428 ^ v422) >> 8;
  *(a6 + 2) = (v428 ^ v422) >> 16;
  HIDWORD(v13) = v10;
  LODWORD(v13) = v10;
  v433 = v13 >> 8;
  HIDWORD(v13) = v414;
  LODWORD(v13) = v414;
  LODWORD(v10) = v13 >> 16;
  v434 = v10 + v400;
  HIDWORD(v13) = (v10 + v400) ^ v412;
  LODWORD(v13) = HIDWORD(v13);
  v435 = v13 >> 12;
  v436 = v415 + v435;
  v437 = (v415 + v435) ^ v10;
  HIDWORD(v13) = v429;
  LODWORD(v13) = v429;
  LODWORD(v10) = v13 >> 16;
  v438 = v10 + v392;
  HIDWORD(v13) = v438 ^ v417;
  LODWORD(v13) = v438 ^ v417;
  v439 = v13 >> 12;
  HIDWORD(v13) = (v431 + v439) ^ v10;
  LODWORD(v13) = HIDWORD(v13);
  LODWORD(v10) = v13 >> 8;
  v440 = v10 + v438;
  *a6 = v432;
  *(a6 + 3) = HIBYTE(v432);
  *(a6 + 5) = (v440 ^ v436) >> 8;
  *(a6 + 6) = (v440 ^ v436) >> 16;
  *(a6 + 4) = v440 ^ v436;
  *(a6 + 7) = (v440 ^ v436) >> 24;
  *(a6 + 8) = (v433 + v420) ^ v426;
  HIDWORD(v13) = v437;
  LODWORD(v13) = v437;
  v441 = v13 >> 8;
  *(a6 + 12) = (v441 + v434) ^ (v431 + v439);
  LODWORD(v13) = __ROR4__(v440 ^ v439, 7);
  *(a6 + 17) = (v441 ^ v13) >> 8;
  *(a6 + 18) = (v441 ^ v13) >> 16;
  *(a6 + 16) = v441 ^ v13;
  *(a6 + 19) = (v441 ^ v13) >> 24;
  LODWORD(v13) = __ROR4__((v433 + v420) ^ v421, 7);
  *(a6 + 21) = (v427 ^ v13) >> 8;
  *(a6 + 22) = (v427 ^ v13) >> 16;
  *(a6 + 20) = v427 ^ v13;
  *(a6 + 23) = (v427 ^ v13) >> 24;
  LODWORD(v13) = __ROR4__((v441 + v434) ^ v435, 7);
  *(a6 + 25) = (v10 ^ v13) >> 8;
  *(a6 + 26) = (v10 ^ v13) >> 16;
  *(a6 + 24) = v10 ^ v13;
  *(a6 + 27) = (v10 ^ v13) >> 24;
  LODWORD(v13) = __ROR4__(v428 ^ v425, 7);
  *(a6 + 29) = (v433 ^ v13) >> 8;
  *(a6 + 30) = (v433 ^ v13) >> 16;
  *(a6 + 28) = v433 ^ v13;
  *(a6 + 31) = (v433 ^ v13) >> 24;
  *(a6 + 32) = v428 ^ *a1;
  *(a6 + 36) = v440 ^ a1[1];
  *(a6 + 40) = (v433 + v420) ^ a1[2];
  *(a6 + 44) = (v441 + v434) ^ a1[3];
  *(a6 + 48) = v441 ^ a1[4];
  *(a6 + 52) = v427 ^ a1[5];
  *(a6 + 56) = v10 ^ a1[6];
  *(a6 + 60) = v433 ^ a1[7];
  return result;
}

int *llvm_blake3_hash_many_neon(int *result, unint64_t a2, uint64_t a3, const float *a4, uint64_t a5, unsigned int a6, int a7, int a8, unsigned __int8 a9, int64x2_t *a10)
{
  v12 = a2;
  v13 = result;
  v793 = *MEMORY[0x277D85DE8];
  v773 = a6;
  if (a2 >= 4)
  {
    v15 = vdup_n_s32(a6);
    v16.i64[0] = v15.u32[0];
    v16.i64[1] = v15.u32[1];
    v772 = vandq_s8(vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL)), xmmword_2573695C0);
    v17 = vdupq_n_s32(0x6A09E667u);
    v775 = vdupq_n_s32(0xBB67AE85);
    v776 = v17;
    do
    {
      v30 = a4;
      v31 = vld1q_dup_f32(v30++);
      v32 = vld1q_dup_f32(v30);
      v33 = a4 + 2;
      v34 = vld1q_dup_f32(v33);
      v35 = a4 + 3;
      v36 = vld1q_dup_f32(v35);
      v37 = a4 + 4;
      v38 = vld1q_dup_f32(v37);
      v39 = a4 + 5;
      v40 = vld1q_dup_f32(v39);
      v41 = a4 + 6;
      v42 = vld1q_dup_f32(v41);
      v43 = a4 + 7;
      v44 = vld1q_dup_f32(v43);
      if (a3)
      {
        v45 = vdupq_n_s64(a5);
        v46.i32[0] = a5;
        v46.i32[1] = a5 + a6;
        v778 = vmovn_hight_s64(v46, vaddq_s64(v45, v772));
        v47.i64[0] = a5;
        v47.i64[1] = a5 + a6;
        v777 = vaddhn_high_s64(vshrn_n_s64(v47, 0x20uLL), v45, v772);
        v48 = (v13[1] + 8);
        v49 = (*v13 + 8);
        v50 = (v13[3] + 8);
        v51 = (v13[2] + 8);
        v52 = a3;
        v53 = a8 | a7;
        do
        {
          v779 = v44;
          --v52;
          v54 = *(v49 - 32);
          v55 = *(v49 - 16);
          if (v52)
          {
            result = 0;
          }

          else
          {
            result = a9;
          }

          v56 = *(v48 - 32);
          v57 = *(v48 - 16);
          v58 = *(v51 - 32);
          v59 = *(v51 - 16);
          v60 = *(v50 - 32);
          v61 = *(v50 - 16);
          v62 = *(v49 + 16);
          v63 = *(v48 + 16);
          v64 = *(v51 + 16);
          v65 = *(v50 + 16);
          v66 = vtrn1q_s32(v54, v56);
          v67 = vtrn2q_s32(v54, v56);
          v68 = vtrn1q_s32(v58, v60);
          v69 = vtrn2q_s32(v58, v60);
          v70 = vzip2q_s64(v66, v68);
          v71 = vzip2q_s64(v67, v69);
          v72 = vtrn1q_s32(v55, v57);
          v73 = vtrn2q_s32(v55, v57);
          v66.i64[1] = v68.i64[0];
          v74 = v66;
          v789 = v66;
          v75 = vtrn1q_s32(v59, v61);
          v76 = vzip2q_s64(v72, v75);
          v72.i64[1] = v75.i64[0];
          v786 = v72;
          v77 = vtrn2q_s32(v59, v61);
          v78 = vzip2q_s64(v73, v77);
          v79 = vtrn1q_s32(*v49, *v48);
          v67.i64[1] = v69.i64[0];
          v80 = v67;
          v81 = vtrn2q_s32(*v49, *v48);
          v82 = vtrn1q_s32(*v51, *v50);
          v83 = vtrn2q_s32(*v51, *v50);
          v84 = vzip2q_s64(v79, v82);
          v73.i64[1] = v77.i64[0];
          v67.i64[0] = v79.i64[0];
          v780 = vzip2q_s64(v81, v83);
          v79.i64[0] = v81.i64[0];
          v85 = vtrn1q_s32(v62, v63);
          v67.i64[1] = v82.i64[0];
          v86 = vtrn2q_s32(v62, v63);
          v87 = vtrn1q_s32(v64, v65);
          v88 = vtrn2q_s32(v64, v65);
          v788 = vzip2q_s64(v85, v87);
          v79.i64[1] = v83.i64[0];
          v85.i64[1] = v87.i64[0];
          v89 = v85;
          v90.i64[0] = v86.i64[0];
          v90.i64[1] = v88.i64[0];
          v785 = vzip2q_s64(v86, v88);
          v91 = vaddq_s32(vaddq_s32(v32, v40), v70);
          v92 = v70;
          v787 = v70;
          v93 = vaddq_s32(vaddq_s32(v31, v38), v74);
          v94 = vaddq_s32(vaddq_s32(v34, v42), v72);
          v95 = vaddq_s32(vaddq_s32(v36, v779), v76);
          v96 = v76;
          v782 = v76;
          v97 = veorq_s8(v93, v778);
          v98 = veorq_s8(v91, v777);
          v83.i64[0] = 0x4000000040;
          v83.i64[1] = 0x4000000040;
          v99 = veorq_s8(v94, v83);
          v100 = veorq_s8(v95, vdupq_n_s32((result | v53)));
          v101 = vsraq_n_u32(vshlq_n_s32(v98, 0x10uLL), v98, 0x10uLL);
          v102 = vsraq_n_u32(vshlq_n_s32(v97, 0x10uLL), v97, 0x10uLL);
          v103 = vsraq_n_u32(vshlq_n_s32(v99, 0x10uLL), v99, 0x10uLL);
          v104 = vsraq_n_u32(vshlq_n_s32(v100, 0x10uLL), v100, 0x10uLL);
          v105 = vaddq_s32(v102, v17);
          v106 = vaddq_s32(v101, v775);
          v107 = vaddq_s32(v103, vdupq_n_s32(0x3C6EF372u));
          v108 = veorq_s8(v105, v38);
          v109 = veorq_s8(v106, v40);
          v110 = vsraq_n_u32(vshlq_n_s32(v108, 0x14uLL), v108, 0xCuLL);
          v111 = vsraq_n_u32(vshlq_n_s32(v109, 0x14uLL), v109, 0xCuLL);
          v112 = veorq_s8(v107, v42);
          v113 = vsraq_n_u32(vshlq_n_s32(v112, 0x14uLL), v112, 0xCuLL);
          v114 = vaddq_s32(v104, vdupq_n_s32(0xA54FF53A));
          v115 = veorq_s8(v114, v779);
          v116 = vsraq_n_u32(vshlq_n_s32(v115, 0x14uLL), v115, 0xCuLL);
          v117 = vaddq_s32(vaddq_s32(v93, v80), v110);
          v118 = veorq_s8(v117, v102);
          v119 = vsraq_n_u32(vshlq_n_s32(v118, 0x18uLL), v118, 8uLL);
          v120 = vaddq_s32(vaddq_s32(v91, v71), v111);
          v121 = veorq_s8(v120, v101);
          v122 = vsraq_n_u32(vshlq_n_s32(v121, 0x18uLL), v121, 8uLL);
          v123 = vaddq_s32(vaddq_s32(v94, v73), v113);
          v124 = veorq_s8(v123, v103);
          v125 = vsraq_n_u32(vshlq_n_s32(v124, 0x18uLL), v124, 8uLL);
          v126 = vaddq_s32(vaddq_s32(v95, v78), v116);
          v127 = veorq_s8(v126, v104);
          v128 = vsraq_n_u32(vshlq_n_s32(v127, 0x18uLL), v127, 8uLL);
          v129 = vaddq_s32(v119, v105);
          v130 = veorq_s8(v129, v110);
          v131 = vsraq_n_u32(vshlq_n_s32(v130, 0x19uLL), v130, 7uLL);
          v132 = vaddq_s32(v122, v106);
          v133 = veorq_s8(v132, v111);
          v134 = vsraq_n_u32(vshlq_n_s32(v133, 0x19uLL), v133, 7uLL);
          v135 = vaddq_s32(v125, v107);
          v136 = veorq_s8(v135, v113);
          v137 = vsraq_n_u32(vshlq_n_s32(v136, 0x19uLL), v136, 7uLL);
          v138 = vaddq_s32(v128, v114);
          v139 = veorq_s8(v138, v116);
          v140 = vsraq_n_u32(vshlq_n_s32(v139, 0x19uLL), v139, 7uLL);
          v141 = vaddq_s32(vaddq_s32(v67, v117), v134);
          v142 = veorq_s8(v128, v141);
          v143 = vsraq_n_u32(vshlq_n_s32(v142, 0x10uLL), v142, 0x10uLL);
          v144 = vaddq_s32(vaddq_s32(v84, v120), v137);
          v145 = veorq_s8(v144, v119);
          v146 = vsraq_n_u32(vshlq_n_s32(v145, 0x10uLL), v145, 0x10uLL);
          v147 = vaddq_s32(vaddq_s32(v89, v123), v140);
          v148 = veorq_s8(v147, v122);
          v149 = vsraq_n_u32(vshlq_n_s32(v148, 0x10uLL), v148, 0x10uLL);
          v150 = vaddq_s32(vaddq_s32(v788, v126), v131);
          v151 = veorq_s8(v150, v125);
          v152 = vsraq_n_u32(vshlq_n_s32(v151, 0x10uLL), v151, 0x10uLL);
          v153 = vaddq_s32(v143, v135);
          v154 = veorq_s8(v153, v134);
          v155 = vsraq_n_u32(vshlq_n_s32(v154, 0x14uLL), v154, 0xCuLL);
          v156 = vaddq_s32(v146, v138);
          v157 = veorq_s8(v156, v137);
          v158 = vsraq_n_u32(vshlq_n_s32(v157, 0x14uLL), v157, 0xCuLL);
          v159 = vaddq_s32(v149, v129);
          v160 = veorq_s8(v159, v140);
          v161 = vsraq_n_u32(vshlq_n_s32(v160, 0x14uLL), v160, 0xCuLL);
          v162 = vaddq_s32(v152, v132);
          v163 = veorq_s8(v162, v131);
          v164 = vsraq_n_u32(vshlq_n_s32(v163, 0x14uLL), v163, 0xCuLL);
          v165 = vaddq_s32(vaddq_s32(v141, v79), v155);
          v166 = veorq_s8(v165, v143);
          v167 = vsraq_n_u32(vshlq_n_s32(v166, 0x18uLL), v166, 8uLL);
          v168 = vaddq_s32(vaddq_s32(v144, v780), v158);
          v169 = veorq_s8(v168, v146);
          v170 = vsraq_n_u32(vshlq_n_s32(v169, 0x18uLL), v169, 8uLL);
          v171 = vaddq_s32(vaddq_s32(v147, v90), v161);
          v172 = veorq_s8(v171, v149);
          v173 = vsraq_n_u32(vshlq_n_s32(v172, 0x18uLL), v172, 8uLL);
          v174 = vaddq_s32(vaddq_s32(v150, v785), v164);
          v175 = veorq_s8(v174, v152);
          v176 = vsraq_n_u32(vshlq_n_s32(v175, 0x18uLL), v175, 8uLL);
          v177 = vaddq_s32(v167, v153);
          v178 = veorq_s8(v177, v155);
          v179 = vsraq_n_u32(vshlq_n_s32(v178, 0x19uLL), v178, 7uLL);
          v180 = vaddq_s32(v170, v156);
          v181 = veorq_s8(v180, v158);
          v182 = vsraq_n_u32(vshlq_n_s32(v181, 0x19uLL), v181, 7uLL);
          v183 = vaddq_s32(v173, v159);
          v184 = veorq_s8(v183, v161);
          v185 = vsraq_n_u32(vshlq_n_s32(v184, 0x19uLL), v184, 7uLL);
          v186 = vaddq_s32(v176, v162);
          v187 = veorq_s8(v186, v164);
          v188 = vsraq_n_u32(vshlq_n_s32(v187, 0x19uLL), v187, 7uLL);
          v189 = vaddq_s32(vaddq_s32(v165, v92), v188);
          v190 = veorq_s8(v189, v170);
          v191 = vsraq_n_u32(vshlq_n_s32(v190, 0x10uLL), v190, 0x10uLL);
          v784 = v71;
          v192 = vaddq_s32(vaddq_s32(v168, v71), v179);
          v193 = veorq_s8(v173, v192);
          v194 = vsraq_n_u32(vshlq_n_s32(v193, 0x10uLL), v193, 0x10uLL);
          v195 = vaddq_s32(vaddq_s32(v171, v78), v182);
          v196 = veorq_s8(v195, v176);
          v197 = vsraq_n_u32(vshlq_n_s32(v196, 0x10uLL), v196, 0x10uLL);
          v198 = vaddq_s32(vaddq_s32(v174, v786), v185);
          v199 = veorq_s8(v198, v167);
          v200 = vsraq_n_u32(vshlq_n_s32(v199, 0x10uLL), v199, 0x10uLL);
          v201 = vaddq_s32(v191, v183);
          v202 = veorq_s8(v201, v188);
          v203 = vsraq_n_u32(vshlq_n_s32(v202, 0x14uLL), v202, 0xCuLL);
          v204 = vaddq_s32(v194, v186);
          v205 = veorq_s8(v204, v179);
          v206 = vsraq_n_u32(vshlq_n_s32(v205, 0x14uLL), v205, 0xCuLL);
          v207 = vaddq_s32(v197, v177);
          v208 = veorq_s8(v207, v182);
          v209 = vsraq_n_u32(vshlq_n_s32(v208, 0x14uLL), v208, 0xCuLL);
          v210 = vaddq_s32(v200, v180);
          v211 = veorq_s8(v210, v185);
          v212 = vsraq_n_u32(vshlq_n_s32(v211, 0x14uLL), v211, 0xCuLL);
          v213 = vaddq_s32(vaddq_s32(v189, v96), v203);
          v214 = veorq_s8(v213, v191);
          v215 = vsraq_n_u32(vshlq_n_s32(v214, 0x18uLL), v214, 8uLL);
          v216 = vaddq_s32(vaddq_s32(v192, v84), v206);
          v217 = veorq_s8(v216, v194);
          v218 = vsraq_n_u32(vshlq_n_s32(v217, 0x18uLL), v217, 8uLL);
          v219 = vaddq_s32(vaddq_s32(v195, v789), v209);
          v220 = veorq_s8(v219, v197);
          v221 = vsraq_n_u32(vshlq_n_s32(v220, 0x18uLL), v220, 8uLL);
          v222 = vaddq_s32(vaddq_s32(v198, v90), v212);
          v223 = veorq_s8(v222, v200);
          v224 = vsraq_n_u32(vshlq_n_s32(v223, 0x18uLL), v223, 8uLL);
          v225 = vaddq_s32(v215, v201);
          v226 = veorq_s8(v225, v203);
          v227 = vsraq_n_u32(vshlq_n_s32(v226, 0x19uLL), v226, 7uLL);
          v228 = vaddq_s32(v218, v204);
          v229 = veorq_s8(v228, v206);
          v230 = vsraq_n_u32(vshlq_n_s32(v229, 0x19uLL), v229, 7uLL);
          v231 = vaddq_s32(v221, v207);
          v232 = veorq_s8(v231, v209);
          v233 = vsraq_n_u32(vshlq_n_s32(v232, 0x19uLL), v232, 7uLL);
          v234 = vaddq_s32(v224, v210);
          v235 = veorq_s8(v234, v212);
          v236 = vsraq_n_u32(vshlq_n_s32(v235, 0x19uLL), v235, 7uLL);
          v237 = vaddq_s32(vaddq_s32(v213, v80), v230);
          v238 = veorq_s8(v224, v237);
          v239 = vsraq_n_u32(vshlq_n_s32(v238, 0x10uLL), v238, 0x10uLL);
          v240 = vaddq_s32(vaddq_s32(v216, v89), v233);
          v241 = veorq_s8(v240, v215);
          v242 = vsraq_n_u32(vshlq_n_s32(v241, 0x10uLL), v241, 0x10uLL);
          v243 = vaddq_s32(vaddq_s32(v219, v79), v236);
          v244 = veorq_s8(v243, v218);
          v245 = vsraq_n_u32(vshlq_n_s32(v244, 0x10uLL), v244, 0x10uLL);
          v246 = vaddq_s32(vaddq_s32(v222, v785), v227);
          v247 = veorq_s8(v246, v221);
          v248 = vsraq_n_u32(vshlq_n_s32(v247, 0x10uLL), v247, 0x10uLL);
          v249 = vaddq_s32(v239, v231);
          v250 = veorq_s8(v249, v230);
          v251 = vsraq_n_u32(vshlq_n_s32(v250, 0x14uLL), v250, 0xCuLL);
          v252 = vaddq_s32(v242, v234);
          v253 = veorq_s8(v252, v233);
          v254 = vsraq_n_u32(vshlq_n_s32(v253, 0x14uLL), v253, 0xCuLL);
          v255 = vaddq_s32(v245, v225);
          v256 = veorq_s8(v255, v236);
          v257 = vsraq_n_u32(vshlq_n_s32(v256, 0x14uLL), v256, 0xCuLL);
          v258 = vaddq_s32(v248, v228);
          v259 = veorq_s8(v258, v227);
          v260 = vsraq_n_u32(vshlq_n_s32(v259, 0x14uLL), v259, 0xCuLL);
          v261 = vaddq_s32(vaddq_s32(v237, v780), v251);
          v262 = veorq_s8(v261, v239);
          v263 = vsraq_n_u32(vshlq_n_s32(v262, 0x18uLL), v262, 8uLL);
          v264 = vaddq_s32(vaddq_s32(v240, v73), v254);
          v265 = veorq_s8(v264, v242);
          v266 = vsraq_n_u32(vshlq_n_s32(v265, 0x18uLL), v265, 8uLL);
          v267 = vaddq_s32(vaddq_s32(v243, v788), v257);
          v268 = veorq_s8(v267, v245);
          v269 = vsraq_n_u32(vshlq_n_s32(v268, 0x18uLL), v268, 8uLL);
          v270 = vaddq_s32(vaddq_s32(v246, v67), v260);
          v271 = veorq_s8(v270, v248);
          v272 = vsraq_n_u32(vshlq_n_s32(v271, 0x18uLL), v271, 8uLL);
          v273 = vaddq_s32(v263, v249);
          v274 = veorq_s8(v273, v251);
          v275 = vsraq_n_u32(vshlq_n_s32(v274, 0x19uLL), v274, 7uLL);
          v276 = vaddq_s32(v266, v252);
          v277 = veorq_s8(v276, v254);
          v278 = vsraq_n_u32(vshlq_n_s32(v277, 0x19uLL), v277, 7uLL);
          v279 = vaddq_s32(v269, v255);
          v280 = veorq_s8(v279, v257);
          v281 = vsraq_n_u32(vshlq_n_s32(v280, 0x19uLL), v280, 7uLL);
          v282 = vaddq_s32(v272, v258);
          v283 = veorq_s8(v282, v260);
          v284 = vsraq_n_u32(vshlq_n_s32(v283, 0x19uLL), v283, 7uLL);
          v285 = vaddq_s32(vaddq_s32(v261, v71), v284);
          v286 = veorq_s8(v285, v266);
          v287 = vsraq_n_u32(vshlq_n_s32(v286, 0x10uLL), v286, 0x10uLL);
          v783 = v84;
          v288 = vaddq_s32(vaddq_s32(v264, v84), v275);
          v289 = veorq_s8(v269, v288);
          v290 = vsraq_n_u32(vshlq_n_s32(v289, 0x10uLL), v289, 0x10uLL);
          v291 = vaddq_s32(vaddq_s32(v267, v90), v278);
          v292 = veorq_s8(v291, v272);
          v293 = vsraq_n_u32(vshlq_n_s32(v292, 0x10uLL), v292, 0x10uLL);
          v294 = vaddq_s32(vaddq_s32(v270, v78), v281);
          v295 = veorq_s8(v294, v263);
          v296 = vsraq_n_u32(vshlq_n_s32(v295, 0x10uLL), v295, 0x10uLL);
          v297 = vaddq_s32(v287, v279);
          v298 = veorq_s8(v297, v284);
          v299 = vsraq_n_u32(vshlq_n_s32(v298, 0x14uLL), v298, 0xCuLL);
          v300 = vaddq_s32(v290, v282);
          v301 = veorq_s8(v300, v275);
          v302 = vsraq_n_u32(vshlq_n_s32(v301, 0x14uLL), v301, 0xCuLL);
          v303 = vaddq_s32(v293, v273);
          v304 = veorq_s8(v303, v278);
          v305 = vsraq_n_u32(vshlq_n_s32(v304, 0x14uLL), v304, 0xCuLL);
          v306 = vaddq_s32(v296, v276);
          v307 = veorq_s8(v306, v281);
          v308 = vsraq_n_u32(vshlq_n_s32(v307, 0x14uLL), v307, 0xCuLL);
          v309 = vaddq_s32(vaddq_s32(v285, v786), v299);
          v310 = veorq_s8(v309, v287);
          v311 = vsraq_n_u32(vshlq_n_s32(v310, 0x18uLL), v310, 8uLL);
          v312 = vaddq_s32(vaddq_s32(v288, v89), v302);
          v313 = veorq_s8(v312, v290);
          v314 = vsraq_n_u32(vshlq_n_s32(v313, 0x18uLL), v313, 8uLL);
          v315 = vaddq_s32(vaddq_s32(v291, v787), v305);
          v316 = veorq_s8(v315, v293);
          v317 = vsraq_n_u32(vshlq_n_s32(v316, 0x18uLL), v316, 8uLL);
          v318 = vaddq_s32(vaddq_s32(v294, v788), v308);
          v319 = veorq_s8(v318, v296);
          v320 = vsraq_n_u32(vshlq_n_s32(v319, 0x18uLL), v319, 8uLL);
          v321 = vaddq_s32(v311, v297);
          v322 = veorq_s8(v321, v299);
          v323 = vsraq_n_u32(vshlq_n_s32(v322, 0x19uLL), v322, 7uLL);
          v324 = vaddq_s32(v314, v300);
          v325 = veorq_s8(v324, v302);
          v326 = vsraq_n_u32(vshlq_n_s32(v325, 0x19uLL), v325, 7uLL);
          v327 = vaddq_s32(v317, v303);
          v328 = veorq_s8(v327, v305);
          v329 = vsraq_n_u32(vshlq_n_s32(v328, 0x19uLL), v328, 7uLL);
          v330 = vaddq_s32(v320, v306);
          v331 = veorq_s8(v330, v308);
          v332 = vsraq_n_u32(vshlq_n_s32(v331, 0x19uLL), v331, 7uLL);
          v333 = vaddq_s32(vaddq_s32(v309, v782), v326);
          v334 = veorq_s8(v320, v333);
          v335 = vsraq_n_u32(vshlq_n_s32(v334, 0x10uLL), v334, 0x10uLL);
          v336 = vaddq_s32(vaddq_s32(v312, v79), v329);
          v337 = veorq_s8(v336, v311);
          v338 = vsraq_n_u32(vshlq_n_s32(v337, 0x10uLL), v337, 0x10uLL);
          v339 = vaddq_s32(vaddq_s32(v315, v780), v332);
          v340 = veorq_s8(v339, v314);
          v341 = vsraq_n_u32(vshlq_n_s32(v340, 0x10uLL), v340, 0x10uLL);
          v342 = vaddq_s32(vaddq_s32(v318, v67), v323);
          v343 = veorq_s8(v342, v317);
          v344 = vsraq_n_u32(vshlq_n_s32(v343, 0x10uLL), v343, 0x10uLL);
          v345 = vaddq_s32(v335, v327);
          v346 = veorq_s8(v345, v326);
          v347 = vsraq_n_u32(vshlq_n_s32(v346, 0x14uLL), v346, 0xCuLL);
          v348 = vaddq_s32(v338, v330);
          v349 = veorq_s8(v348, v329);
          v350 = vsraq_n_u32(vshlq_n_s32(v349, 0x14uLL), v349, 0xCuLL);
          v351 = vaddq_s32(v341, v321);
          v352 = veorq_s8(v351, v332);
          v353 = vsraq_n_u32(vshlq_n_s32(v352, 0x14uLL), v352, 0xCuLL);
          v354 = vaddq_s32(v344, v324);
          v355 = veorq_s8(v354, v323);
          v356 = vsraq_n_u32(vshlq_n_s32(v355, 0x14uLL), v355, 0xCuLL);
          v357 = vaddq_s32(vaddq_s32(v333, v73), v347);
          v358 = veorq_s8(v357, v335);
          v359 = vsraq_n_u32(vshlq_n_s32(v358, 0x18uLL), v358, 8uLL);
          v360 = vaddq_s32(vaddq_s32(v336, v789), v350);
          v361 = veorq_s8(v360, v338);
          v362 = vsraq_n_u32(vshlq_n_s32(v361, 0x18uLL), v361, 8uLL);
          v363 = vaddq_s32(vaddq_s32(v339, v785), v353);
          v364 = veorq_s8(v363, v341);
          v365 = vsraq_n_u32(vshlq_n_s32(v364, 0x18uLL), v364, 8uLL);
          v366 = vaddq_s32(vaddq_s32(v342, v80), v356);
          v367 = veorq_s8(v366, v344);
          v368 = vsraq_n_u32(vshlq_n_s32(v367, 0x18uLL), v367, 8uLL);
          v369 = vaddq_s32(v359, v345);
          v370 = veorq_s8(v369, v347);
          v371 = vsraq_n_u32(vshlq_n_s32(v370, 0x19uLL), v370, 7uLL);
          v372 = vaddq_s32(v362, v348);
          v373 = veorq_s8(v372, v350);
          v374 = vsraq_n_u32(vshlq_n_s32(v373, 0x19uLL), v373, 7uLL);
          v375 = vaddq_s32(v365, v351);
          v376 = veorq_s8(v375, v353);
          v377 = vsraq_n_u32(vshlq_n_s32(v376, 0x19uLL), v376, 7uLL);
          v378 = vaddq_s32(v368, v354);
          v379 = veorq_s8(v378, v356);
          v380 = vsraq_n_u32(vshlq_n_s32(v379, 0x19uLL), v379, 7uLL);
          v381 = vaddq_s32(vaddq_s32(v357, v84), v380);
          v382 = veorq_s8(v381, v362);
          v383 = vsraq_n_u32(vshlq_n_s32(v382, 0x10uLL), v382, 0x10uLL);
          v384 = vaddq_s32(vaddq_s32(v360, v89), v371);
          v385 = veorq_s8(v365, v384);
          v386 = vsraq_n_u32(vshlq_n_s32(v385, 0x10uLL), v385, 0x10uLL);
          v387 = vaddq_s32(vaddq_s32(v363, v788), v374);
          v388 = veorq_s8(v387, v368);
          v389 = vsraq_n_u32(vshlq_n_s32(v388, 0x10uLL), v388, 0x10uLL);
          v390 = v90;
          v391 = vaddq_s32(vaddq_s32(v366, v90), v377);
          v392 = veorq_s8(v391, v359);
          v393 = vsraq_n_u32(vshlq_n_s32(v392, 0x10uLL), v392, 0x10uLL);
          v394 = vaddq_s32(v383, v375);
          v395 = veorq_s8(v394, v380);
          v396 = vsraq_n_u32(vshlq_n_s32(v395, 0x14uLL), v395, 0xCuLL);
          v397 = vaddq_s32(v386, v378);
          v398 = veorq_s8(v397, v371);
          v399 = vsraq_n_u32(vshlq_n_s32(v398, 0x14uLL), v398, 0xCuLL);
          v400 = vaddq_s32(v389, v369);
          v401 = veorq_s8(v400, v374);
          v402 = vsraq_n_u32(vshlq_n_s32(v401, 0x14uLL), v401, 0xCuLL);
          v403 = vaddq_s32(v393, v372);
          v404 = veorq_s8(v403, v377);
          v405 = vsraq_n_u32(vshlq_n_s32(v404, 0x14uLL), v404, 0xCuLL);
          v406 = vaddq_s32(vaddq_s32(v381, v78), v396);
          v407 = veorq_s8(v406, v383);
          v408 = vsraq_n_u32(vshlq_n_s32(v407, 0x18uLL), v407, 8uLL);
          v409 = vaddq_s32(vaddq_s32(v384, v79), v399);
          v410 = veorq_s8(v409, v386);
          v411 = vsraq_n_u32(vshlq_n_s32(v410, 0x18uLL), v410, 8uLL);
          v412 = vaddq_s32(vaddq_s32(v387, v71), v402);
          v413 = veorq_s8(v412, v389);
          v414 = vsraq_n_u32(vshlq_n_s32(v413, 0x18uLL), v413, 8uLL);
          v415 = vaddq_s32(vaddq_s32(v391, v785), v405);
          v416 = veorq_s8(v415, v393);
          v417 = vsraq_n_u32(vshlq_n_s32(v416, 0x18uLL), v416, 8uLL);
          v418 = vaddq_s32(v408, v394);
          v419 = veorq_s8(v418, v396);
          v420 = vsraq_n_u32(vshlq_n_s32(v419, 0x19uLL), v419, 7uLL);
          v421 = vaddq_s32(v411, v397);
          v422 = veorq_s8(v421, v399);
          v423 = vsraq_n_u32(vshlq_n_s32(v422, 0x19uLL), v422, 7uLL);
          v424 = vaddq_s32(v414, v400);
          v425 = veorq_s8(v424, v402);
          v426 = vsraq_n_u32(vshlq_n_s32(v425, 0x19uLL), v425, 7uLL);
          v427 = vaddq_s32(v417, v403);
          v428 = veorq_s8(v427, v405);
          v429 = vsraq_n_u32(vshlq_n_s32(v428, 0x19uLL), v428, 7uLL);
          v430 = vaddq_s32(vaddq_s32(v406, v786), v423);
          v431 = veorq_s8(v417, v430);
          v432 = vsraq_n_u32(vshlq_n_s32(v431, 0x10uLL), v431, 0x10uLL);
          v433 = vaddq_s32(vaddq_s32(v409, v780), v426);
          v434 = veorq_s8(v433, v408);
          v435 = vsraq_n_u32(vshlq_n_s32(v434, 0x10uLL), v434, 0x10uLL);
          v436 = vaddq_s32(vaddq_s32(v412, v73), v429);
          v437 = veorq_s8(v436, v411);
          v438 = vsraq_n_u32(vshlq_n_s32(v437, 0x10uLL), v437, 0x10uLL);
          v439 = vaddq_s32(vaddq_s32(v415, v80), v420);
          v440 = veorq_s8(v439, v414);
          v441 = vsraq_n_u32(vshlq_n_s32(v440, 0x10uLL), v440, 0x10uLL);
          v442 = vaddq_s32(v432, v424);
          v443 = veorq_s8(v442, v423);
          v444 = vsraq_n_u32(vshlq_n_s32(v443, 0x14uLL), v443, 0xCuLL);
          v445 = vaddq_s32(v435, v427);
          v446 = veorq_s8(v445, v426);
          v447 = vsraq_n_u32(vshlq_n_s32(v446, 0x14uLL), v446, 0xCuLL);
          v448 = vaddq_s32(v438, v418);
          v449 = veorq_s8(v448, v429);
          v450 = vsraq_n_u32(vshlq_n_s32(v449, 0x14uLL), v449, 0xCuLL);
          v451 = vaddq_s32(v441, v421);
          v452 = veorq_s8(v451, v420);
          v453 = vsraq_n_u32(vshlq_n_s32(v452, 0x14uLL), v452, 0xCuLL);
          v454 = vaddq_s32(vaddq_s32(v430, v789), v444);
          v455 = veorq_s8(v454, v432);
          v456 = vsraq_n_u32(vshlq_n_s32(v455, 0x18uLL), v455, 8uLL);
          v457 = vaddq_s32(vaddq_s32(v433, v787), v447);
          v458 = veorq_s8(v457, v435);
          v459 = vsraq_n_u32(vshlq_n_s32(v458, 0x18uLL), v458, 8uLL);
          v460 = vaddq_s32(vaddq_s32(v436, v67), v450);
          v461 = veorq_s8(v460, v438);
          v462 = vsraq_n_u32(vshlq_n_s32(v461, 0x18uLL), v461, 8uLL);
          v463 = vaddq_s32(vaddq_s32(v439, v782), v453);
          v464 = veorq_s8(v463, v441);
          v465 = vsraq_n_u32(vshlq_n_s32(v464, 0x18uLL), v464, 8uLL);
          v466 = vaddq_s32(v456, v442);
          v467 = veorq_s8(v466, v444);
          v468 = vsraq_n_u32(vshlq_n_s32(v467, 0x19uLL), v467, 7uLL);
          v469 = vaddq_s32(v459, v445);
          v470 = veorq_s8(v469, v447);
          v471 = vsraq_n_u32(vshlq_n_s32(v470, 0x19uLL), v470, 7uLL);
          v472 = vaddq_s32(v462, v448);
          v473 = veorq_s8(v472, v450);
          v474 = vsraq_n_u32(vshlq_n_s32(v473, 0x19uLL), v473, 7uLL);
          v475 = vaddq_s32(v465, v451);
          v476 = veorq_s8(v475, v453);
          v477 = vsraq_n_u32(vshlq_n_s32(v476, 0x19uLL), v476, 7uLL);
          v781 = v89;
          v478 = vaddq_s32(vaddq_s32(v454, v89), v477);
          v479 = veorq_s8(v478, v459);
          v480 = vsraq_n_u32(vshlq_n_s32(v479, 0x10uLL), v479, 0x10uLL);
          v481 = vaddq_s32(vaddq_s32(v457, v79), v468);
          v482 = veorq_s8(v462, v481);
          v483 = vsraq_n_u32(vshlq_n_s32(v482, 0x10uLL), v482, 0x10uLL);
          v484 = vaddq_s32(vaddq_s32(v460, v785), v471);
          v485 = veorq_s8(v484, v465);
          v486 = vsraq_n_u32(vshlq_n_s32(v485, 0x10uLL), v485, 0x10uLL);
          v487 = vaddq_s32(vaddq_s32(v463, v788), v474);
          v488 = veorq_s8(v487, v456);
          v489 = vsraq_n_u32(vshlq_n_s32(v488, 0x10uLL), v488, 0x10uLL);
          v490 = vaddq_s32(v480, v472);
          v491 = veorq_s8(v490, v477);
          v492 = vsraq_n_u32(vshlq_n_s32(v491, 0x14uLL), v491, 0xCuLL);
          v493 = vaddq_s32(v483, v475);
          v494 = veorq_s8(v493, v468);
          v495 = vsraq_n_u32(vshlq_n_s32(v494, 0x14uLL), v494, 0xCuLL);
          v496 = vaddq_s32(v486, v466);
          v497 = veorq_s8(v496, v471);
          v498 = vsraq_n_u32(vshlq_n_s32(v497, 0x14uLL), v497, 0xCuLL);
          v499 = vaddq_s32(v489, v469);
          v500 = veorq_s8(v499, v474);
          v501 = vsraq_n_u32(vshlq_n_s32(v500, 0x14uLL), v500, 0xCuLL);
          v502 = vaddq_s32(vaddq_s32(v478, v90), v492);
          v503 = veorq_s8(v502, v480);
          v504 = vsraq_n_u32(vshlq_n_s32(v503, 0x18uLL), v503, 8uLL);
          v505 = vaddq_s32(vaddq_s32(v481, v780), v495);
          v506 = veorq_s8(v505, v483);
          v507 = vsraq_n_u32(vshlq_n_s32(v506, 0x18uLL), v506, 8uLL);
          v508 = vaddq_s32(vaddq_s32(v484, v84), v498);
          v509 = veorq_s8(v508, v486);
          v510 = vsraq_n_u32(vshlq_n_s32(v509, 0x18uLL), v509, 8uLL);
          v511 = vaddq_s32(vaddq_s32(v487, v67), v501);
          v512 = veorq_s8(v511, v489);
          v513 = vsraq_n_u32(vshlq_n_s32(v512, 0x18uLL), v512, 8uLL);
          v514 = vaddq_s32(v504, v490);
          v515 = veorq_s8(v514, v492);
          v516 = vsraq_n_u32(vshlq_n_s32(v515, 0x19uLL), v515, 7uLL);
          v517 = vaddq_s32(v507, v493);
          v518 = veorq_s8(v517, v495);
          v519 = vsraq_n_u32(vshlq_n_s32(v518, 0x19uLL), v518, 7uLL);
          v520 = vaddq_s32(v510, v496);
          v521 = veorq_s8(v520, v498);
          v522 = vsraq_n_u32(vshlq_n_s32(v521, 0x19uLL), v521, 7uLL);
          v523 = vaddq_s32(v513, v499);
          v524 = veorq_s8(v523, v501);
          v525 = vsraq_n_u32(vshlq_n_s32(v524, 0x19uLL), v524, 7uLL);
          v526 = vaddq_s32(vaddq_s32(v502, v78), v519);
          v527 = veorq_s8(v513, v526);
          v528 = vsraq_n_u32(vshlq_n_s32(v527, 0x10uLL), v527, 0x10uLL);
          v529 = vaddq_s32(vaddq_s32(v505, v73), v522);
          v530 = veorq_s8(v529, v504);
          v531 = vsraq_n_u32(vshlq_n_s32(v530, 0x10uLL), v530, 0x10uLL);
          v532 = vaddq_s32(vaddq_s32(v508, v789), v525);
          v533 = veorq_s8(v532, v507);
          v534 = vsraq_n_u32(vshlq_n_s32(v533, 0x10uLL), v533, 0x10uLL);
          v535 = vaddq_s32(vaddq_s32(v511, v782), v516);
          v536 = veorq_s8(v535, v510);
          v537 = vsraq_n_u32(vshlq_n_s32(v536, 0x10uLL), v536, 0x10uLL);
          v538 = vaddq_s32(v528, v520);
          v539 = veorq_s8(v538, v519);
          v540 = vsraq_n_u32(vshlq_n_s32(v539, 0x14uLL), v539, 0xCuLL);
          v541 = vaddq_s32(v531, v523);
          v542 = veorq_s8(v541, v522);
          v543 = vsraq_n_u32(vshlq_n_s32(v542, 0x14uLL), v542, 0xCuLL);
          v544 = vaddq_s32(v534, v514);
          v545 = veorq_s8(v544, v525);
          v546 = vsraq_n_u32(vshlq_n_s32(v545, 0x14uLL), v545, 0xCuLL);
          v547 = vaddq_s32(v537, v517);
          v548 = veorq_s8(v547, v516);
          v549 = vsraq_n_u32(vshlq_n_s32(v548, 0x14uLL), v548, 0xCuLL);
          v550 = vaddq_s32(vaddq_s32(v526, v787), v540);
          v551 = veorq_s8(v550, v528);
          v552 = vsraq_n_u32(vshlq_n_s32(v551, 0x18uLL), v551, 8uLL);
          v553 = vaddq_s32(vaddq_s32(v529, v71), v543);
          v554 = veorq_s8(v553, v531);
          v555 = vsraq_n_u32(vshlq_n_s32(v554, 0x18uLL), v554, 8uLL);
          v556 = vaddq_s32(vaddq_s32(v532, v80), v546);
          v557 = veorq_s8(v556, v534);
          v558 = vsraq_n_u32(vshlq_n_s32(v557, 0x18uLL), v557, 8uLL);
          v559 = vaddq_s32(vaddq_s32(v535, v786), v549);
          v560 = veorq_s8(v559, v537);
          v561 = vsraq_n_u32(vshlq_n_s32(v560, 0x18uLL), v560, 8uLL);
          v562 = vaddq_s32(v552, v538);
          v563 = veorq_s8(v562, v540);
          v564 = vsraq_n_u32(vshlq_n_s32(v563, 0x19uLL), v563, 7uLL);
          v565 = vaddq_s32(v555, v541);
          v566 = veorq_s8(v565, v543);
          v567 = vsraq_n_u32(vshlq_n_s32(v566, 0x19uLL), v566, 7uLL);
          v568 = vaddq_s32(v558, v544);
          v569 = veorq_s8(v568, v546);
          v570 = vsraq_n_u32(vshlq_n_s32(v569, 0x19uLL), v569, 7uLL);
          v571 = vaddq_s32(v561, v547);
          v572 = veorq_s8(v571, v549);
          v573 = vsraq_n_u32(vshlq_n_s32(v572, 0x19uLL), v572, 7uLL);
          v574 = vaddq_s32(vaddq_s32(v550, v79), v573);
          v575 = veorq_s8(v574, v555);
          v576 = vsraq_n_u32(vshlq_n_s32(v575, 0x10uLL), v575, 0x10uLL);
          v577 = vaddq_s32(vaddq_s32(v553, v780), v564);
          v578 = veorq_s8(v558, v577);
          v579 = vsraq_n_u32(vshlq_n_s32(v578, 0x10uLL), v578, 0x10uLL);
          v580 = vaddq_s32(vaddq_s32(v556, v67), v567);
          v581 = veorq_s8(v580, v561);
          v582 = vsraq_n_u32(vshlq_n_s32(v581, 0x10uLL), v581, 0x10uLL);
          v583 = vaddq_s32(vaddq_s32(v559, v785), v570);
          v584 = veorq_s8(v583, v552);
          v585 = vsraq_n_u32(vshlq_n_s32(v584, 0x10uLL), v584, 0x10uLL);
          v586 = vaddq_s32(v576, v568);
          v587 = veorq_s8(v586, v573);
          v588 = vsraq_n_u32(vshlq_n_s32(v587, 0x14uLL), v587, 0xCuLL);
          v589 = vaddq_s32(v579, v571);
          v590 = veorq_s8(v589, v564);
          v591 = vsraq_n_u32(vshlq_n_s32(v590, 0x14uLL), v590, 0xCuLL);
          v592 = vaddq_s32(v582, v562);
          v593 = veorq_s8(v592, v567);
          v594 = vsraq_n_u32(vshlq_n_s32(v593, 0x14uLL), v593, 0xCuLL);
          v595 = vaddq_s32(v585, v565);
          v596 = veorq_s8(v595, v570);
          v597 = vsraq_n_u32(vshlq_n_s32(v596, 0x14uLL), v596, 0xCuLL);
          v598 = vaddq_s32(vaddq_s32(v574, v788), v588);
          v599 = veorq_s8(v598, v576);
          v600 = vsraq_n_u32(vshlq_n_s32(v599, 0x18uLL), v599, 8uLL);
          v601 = vaddq_s32(vaddq_s32(v577, v73), v591);
          v602 = veorq_s8(v601, v579);
          v603 = vsraq_n_u32(vshlq_n_s32(v602, 0x18uLL), v602, 8uLL);
          v604 = vaddq_s32(vaddq_s32(v580, v89), v594);
          v605 = veorq_s8(v604, v582);
          v606 = vsraq_n_u32(vshlq_n_s32(v605, 0x18uLL), v605, 8uLL);
          v607 = vaddq_s32(vaddq_s32(v583, v80), v597);
          v608 = veorq_s8(v607, v585);
          v609 = vsraq_n_u32(vshlq_n_s32(v608, 0x18uLL), v608, 8uLL);
          v610 = vaddq_s32(v600, v586);
          v611 = veorq_s8(v610, v588);
          v612 = vsraq_n_u32(vshlq_n_s32(v611, 0x19uLL), v611, 7uLL);
          v613 = vaddq_s32(v603, v589);
          v614 = veorq_s8(v613, v591);
          v615 = vsraq_n_u32(vshlq_n_s32(v614, 0x19uLL), v614, 7uLL);
          v616 = vaddq_s32(v606, v592);
          v617 = veorq_s8(v616, v594);
          v618 = vsraq_n_u32(vshlq_n_s32(v617, 0x19uLL), v617, 7uLL);
          v619 = vaddq_s32(v609, v595);
          v620 = veorq_s8(v619, v597);
          v621 = vsraq_n_u32(vshlq_n_s32(v620, 0x19uLL), v620, 7uLL);
          v622 = vaddq_s32(vaddq_s32(v598, v90), v615);
          v623 = veorq_s8(v609, v622);
          v624 = vsraq_n_u32(vshlq_n_s32(v623, 0x10uLL), v623, 0x10uLL);
          v625 = vaddq_s32(vaddq_s32(v601, v789), v618);
          v626 = veorq_s8(v625, v600);
          v627 = vsraq_n_u32(vshlq_n_s32(v626, 0x10uLL), v626, 0x10uLL);
          v628 = vaddq_s32(vaddq_s32(v604, v787), v621);
          v629 = veorq_s8(v628, v603);
          v630 = vsraq_n_u32(vshlq_n_s32(v629, 0x10uLL), v629, 0x10uLL);
          v631 = vaddq_s32(vaddq_s32(v607, v786), v612);
          v632 = veorq_s8(v631, v606);
          v633 = vsraq_n_u32(vshlq_n_s32(v632, 0x10uLL), v632, 0x10uLL);
          v634 = vaddq_s32(v624, v616);
          v635 = veorq_s8(v634, v615);
          v636 = vsraq_n_u32(vshlq_n_s32(v635, 0x14uLL), v635, 0xCuLL);
          v637 = vaddq_s32(v627, v619);
          v638 = veorq_s8(v637, v618);
          v639 = vsraq_n_u32(vshlq_n_s32(v638, 0x14uLL), v638, 0xCuLL);
          v640 = vaddq_s32(v630, v610);
          v641 = veorq_s8(v640, v621);
          v642 = vsraq_n_u32(vshlq_n_s32(v641, 0x14uLL), v641, 0xCuLL);
          v643 = vaddq_s32(v633, v613);
          v644 = veorq_s8(v643, v612);
          v645 = vsraq_n_u32(vshlq_n_s32(v644, 0x14uLL), v644, 0xCuLL);
          v646 = vaddq_s32(vaddq_s32(v622, v71), v636);
          v647 = veorq_s8(v646, v624);
          v648 = vsraq_n_u32(vshlq_n_s32(v647, 0x18uLL), v647, 8uLL);
          v649 = vaddq_s32(vaddq_s32(v625, v84), v639);
          v650 = veorq_s8(v649, v627);
          v651 = vsraq_n_u32(vshlq_n_s32(v650, 0x18uLL), v650, 8uLL);
          v652 = vaddq_s32(vaddq_s32(v628, v782), v642);
          v653 = veorq_s8(v652, v630);
          v654 = vsraq_n_u32(vshlq_n_s32(v653, 0x18uLL), v653, 8uLL);
          v655 = vaddq_s32(vaddq_s32(v631, v78), v645);
          v656 = veorq_s8(v655, v633);
          v657 = vsraq_n_u32(vshlq_n_s32(v656, 0x18uLL), v656, 8uLL);
          v658 = vaddq_s32(v648, v634);
          v659 = veorq_s8(v658, v636);
          v660 = vsraq_n_u32(vshlq_n_s32(v659, 0x19uLL), v659, 7uLL);
          v661 = vaddq_s32(v651, v637);
          v662 = veorq_s8(v661, v639);
          v663 = vsraq_n_u32(vshlq_n_s32(v662, 0x19uLL), v662, 7uLL);
          v664 = vaddq_s32(v654, v640);
          v665 = veorq_s8(v664, v642);
          v666 = vsraq_n_u32(vshlq_n_s32(v665, 0x19uLL), v665, 7uLL);
          v667 = vaddq_s32(v657, v643);
          v668 = veorq_s8(v667, v645);
          v669 = vsraq_n_u32(vshlq_n_s32(v668, 0x19uLL), v668, 7uLL);
          v670 = vaddq_s32(vaddq_s32(v646, v780), v669);
          v671 = vaddq_s32(vaddq_s32(v649, v73), v660);
          v672 = vaddq_s32(vaddq_s32(v652, v80), v663);
          v673 = vaddq_s32(vaddq_s32(v655, v67), v666);
          v674 = veorq_s8(v670, v651);
          v675 = veorq_s8(v654, v671);
          v676 = veorq_s8(v672, v657);
          v677 = veorq_s8(v673, v648);
          v678 = vsraq_n_u32(vshlq_n_s32(v674, 0x10uLL), v674, 0x10uLL);
          v679 = vsraq_n_u32(vshlq_n_s32(v675, 0x10uLL), v675, 0x10uLL);
          v680 = vsraq_n_u32(vshlq_n_s32(v676, 0x10uLL), v676, 0x10uLL);
          v681 = vsraq_n_u32(vshlq_n_s32(v677, 0x10uLL), v677, 0x10uLL);
          v682 = vaddq_s32(v678, v664);
          v683 = vaddq_s32(v679, v667);
          v684 = vaddq_s32(v680, v658);
          v685 = vaddq_s32(v681, v661);
          v686 = veorq_s8(v682, v669);
          v687 = veorq_s8(v683, v660);
          v688 = veorq_s8(v684, v663);
          v689 = veorq_s8(v685, v666);
          v690 = vsraq_n_u32(vshlq_n_s32(v686, 0x14uLL), v686, 0xCuLL);
          v691 = vsraq_n_u32(vshlq_n_s32(v687, 0x14uLL), v687, 0xCuLL);
          v692 = vsraq_n_u32(vshlq_n_s32(v688, 0x14uLL), v688, 0xCuLL);
          v693 = vsraq_n_u32(vshlq_n_s32(v689, 0x14uLL), v689, 0xCuLL);
          v694 = vaddq_s32(vaddq_s32(v670, v785), v690);
          v695 = vaddq_s32(vaddq_s32(v671, v789), v691);
          v696 = vaddq_s32(vaddq_s32(v672, v79), v692);
          v697 = vaddq_s32(vaddq_s32(v673, v782), v693);
          v698 = veorq_s8(v694, v678);
          v699 = veorq_s8(v695, v679);
          v700 = veorq_s8(v696, v680);
          v701 = veorq_s8(v697, v681);
          v702 = vsraq_n_u32(vshlq_n_s32(v698, 0x18uLL), v698, 8uLL);
          v703 = vsraq_n_u32(vshlq_n_s32(v699, 0x18uLL), v699, 8uLL);
          v704 = vsraq_n_u32(vshlq_n_s32(v700, 0x18uLL), v700, 8uLL);
          v705 = vsraq_n_u32(vshlq_n_s32(v701, 0x18uLL), v701, 8uLL);
          v706 = vaddq_s32(v702, v682);
          v707 = vaddq_s32(v703, v683);
          v708 = vaddq_s32(v704, v684);
          v709 = vaddq_s32(v705, v685);
          v710 = veorq_s8(v706, v690);
          v711 = veorq_s8(v707, v691);
          v712 = veorq_s8(v708, v692);
          v713 = veorq_s8(v709, v693);
          v714 = vsraq_n_u32(vshlq_n_s32(v710, 0x19uLL), v710, 7uLL);
          v715 = vsraq_n_u32(vshlq_n_s32(v711, 0x19uLL), v711, 7uLL);
          v716 = vsraq_n_u32(vshlq_n_s32(v712, 0x19uLL), v712, 7uLL);
          v717 = vsraq_n_u32(vshlq_n_s32(v713, 0x19uLL), v713, 7uLL);
          v718 = vaddq_s32(vaddq_s32(v694, v788), v715);
          v719 = vaddq_s32(vaddq_s32(v696, v784), v717);
          v720 = vaddq_s32(vaddq_s32(v695, v787), v716);
          v721 = vaddq_s32(vaddq_s32(v697, v78), v714);
          v722 = veorq_s8(v705, v718);
          v723 = veorq_s8(v720, v702);
          v724 = veorq_s8(v719, v703);
          v725 = veorq_s8(v721, v704);
          v726 = vsraq_n_u32(vshlq_n_s32(v722, 0x10uLL), v722, 0x10uLL);
          v727 = vsraq_n_u32(vshlq_n_s32(v723, 0x10uLL), v723, 0x10uLL);
          v728 = vsraq_n_u32(vshlq_n_s32(v724, 0x10uLL), v724, 0x10uLL);
          v729 = vsraq_n_u32(vshlq_n_s32(v725, 0x10uLL), v725, 0x10uLL);
          v730 = vaddq_s32(v726, v708);
          v731 = vaddq_s32(v727, v709);
          v732 = vaddq_s32(v728, v706);
          v733 = vaddq_s32(v729, v707);
          v734 = veorq_s8(v730, v715);
          v735 = veorq_s8(v731, v716);
          v736 = veorq_s8(v732, v717);
          v737 = veorq_s8(v733, v714);
          v17 = v776;
          v738 = vsraq_n_u32(vshlq_n_s32(v734, 0x14uLL), v734, 0xCuLL);
          v739 = vsraq_n_u32(vshlq_n_s32(v735, 0x14uLL), v735, 0xCuLL);
          v740 = vsraq_n_u32(vshlq_n_s32(v736, 0x14uLL), v736, 0xCuLL);
          v741 = vsraq_n_u32(vshlq_n_s32(v737, 0x14uLL), v737, 0xCuLL);
          v742 = vaddq_s32(vaddq_s32(v718, v783), v738);
          v743 = vaddq_s32(vaddq_s32(v719, v786), v740);
          v744 = vaddq_s32(vaddq_s32(v720, v781), v739);
          v745 = vaddq_s32(vaddq_s32(v721, v390), v741);
          v746 = veorq_s8(v742, v726);
          v747 = veorq_s8(v744, v727);
          v748 = veorq_s8(v743, v728);
          v749 = veorq_s8(v745, v729);
          v750 = vsraq_n_u32(vshlq_n_s32(v746, 0x18uLL), v746, 8uLL);
          v751 = vsraq_n_u32(vshlq_n_s32(v747, 0x18uLL), v747, 8uLL);
          v752 = vsraq_n_u32(vshlq_n_s32(v748, 0x18uLL), v748, 8uLL);
          v753 = vsraq_n_u32(vshlq_n_s32(v749, 0x18uLL), v749, 8uLL);
          v754 = vaddq_s32(v750, v730);
          v755 = vaddq_s32(v751, v731);
          v756 = vaddq_s32(v752, v732);
          v757 = vaddq_s32(v753, v733);
          v758 = veorq_s8(v754, v738);
          v759 = veorq_s8(v755, v739);
          v760 = veorq_s8(v756, v740);
          v761 = veorq_s8(v757, v741);
          v31 = veorq_s8(v756, v742);
          v32 = veorq_s8(v744, v757);
          v34 = veorq_s8(v743, v754);
          v36 = veorq_s8(v755, v745);
          v38 = veorq_s8(v751, vsraq_n_u32(vshlq_n_s32(v761, 0x19uLL), v761, 7uLL));
          v40 = veorq_s8(v752, vsraq_n_u32(vshlq_n_s32(v758, 0x19uLL), v758, 7uLL));
          v42 = veorq_s8(vsraq_n_u32(vshlq_n_s32(v759, 0x19uLL), v759, 7uLL), v753);
          v44 = veorq_s8(vsraq_n_u32(vshlq_n_s32(v760, 0x19uLL), v760, 7uLL), v750);
          v48 += 64;
          v49 += 64;
          v50 += 64;
          v51 += 64;
          v53 = a7;
        }

        while (v52);
      }

      v18 = vtrn1q_s32(v31, v32);
      v19 = vtrn2q_s32(v31, v32);
      v20 = vtrn1q_s32(v34, v36);
      v21 = vtrn2q_s32(v34, v36);
      v22 = vzip2q_s64(v18, v20);
      v18.i64[1] = v20.i64[0];
      v23 = vzip2q_s64(v19, v21);
      v19.i64[1] = v21.i64[0];
      v24 = vtrn1q_s32(v38, v40);
      v25 = vtrn2q_s32(v38, v40);
      v26 = vtrn1q_s32(v42, v44);
      v27 = vtrn2q_s32(v42, v44);
      v28 = vzip2q_s64(v24, v26);
      v24.i64[1] = v26.i64[0];
      v29 = vzip2q_s64(v25, v27);
      v25.i64[1] = v27.i64[0];
      *a10 = v18;
      a10[1] = v24;
      a10[2] = v19;
      a10[3] = v25;
      a10[4] = v22;
      a10[5] = v28;
      a10[6] = v23;
      a10[7] = v29;
      if (a6)
      {
        a5 += 4;
      }

      v13 += 4;
      v12 -= 4;
      a10 += 8;
    }

    while (v12 > 3);
  }

  if (v12)
  {
    v762 = a8 | a7;
    v790 = a8 | a7 | a9;
    v763 = a7 | a9;
    do
    {
      v765 = *v13;
      v766 = *(a4 + 4);
      v791 = *a4;
      v792 = v766;
      v767 = a3;
      if (a3)
      {
        v768 = a3;
        if (a3 == 1)
        {
          v769 = v790;
        }

        else
        {
          v769 = v762;
        }

        result = llvm_blake3_compress_in_place_portable(v791.i32, v765, 64, a5, v769);
        for (i = v765 + 16; ; i += 16)
        {
          if (v768 == 2)
          {
            v771 = v763;
          }

          else
          {
            v771 = a7;
            if (v768 == 1)
            {
              break;
            }
          }

          result = llvm_blake3_compress_in_place_portable(v791.i32, i, 64, a5, v771);
          --v768;
        }
      }

      v764 = v792;
      *a10 = v791;
      a10[1] = v764;
      a10 += 2;
      a5 += v773;
      ++v13;
      --v12;
      a3 = v767;
    }

    while (v12);
  }

  return result;
}

uint64_t llvm::AMDGPU::HSAMD::fromString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[87] = *MEMORY[0x277D85DE8];
  llvm::yaml::Input::Input(v6, a1, a2, 0, 0, 0, 0);
  llvm::yaml::Input::setCurrentDocument(v6);
  (*(v6[0] + 104))(v6);
  llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Metadata>::mapping(v6, a3);
  (*(v6[0] + 112))(v6);
  v4 = llvm::yaml::Input::error(v6);
  llvm::yaml::Input::~Input(v6);
  return v4;
}

uint64_t llvm::AMDGPU::HSAMD::toString(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v9 = 0;
  v10 = 1;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v4 = &unk_2868A3EF8;
  v11 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v4, 0, 0, 0);
  llvm::yaml::Output::Output(v12, &v4, 0, 0x7FFFFFFF);
  llvm::yaml::Output::beginDocuments(v12);
  if (llvm::yaml::Output::preflightDocument(v12, 0))
  {
    (*(v12[0] + 104))(v12);
    llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Metadata>::mapping(v12, a1);
    (*(v12[0] + 112))(v12);
    llvm::yaml::Output::postflightDocument(v12);
  }

  llvm::yaml::Output::endDocuments(v12);
  std::system_category();
  llvm::yaml::Output::~Output(v12);
  llvm::raw_ostream::~raw_ostream(&v4);
  return 0;
}

uint64_t llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Metadata>::mapping(llvm::yaml::IO *a1, uint64_t a2)
{
  __p = 0;
  v12 = 0;
  if ((*(*a1 + 120))(a1, "Version", 1, 0, &v12, &__p))
  {
    llvm::yaml::yamlize<std::vector<unsigned int>,llvm::yaml::EmptyContext>(a1, a2);
    (*(*a1 + 128))(a1, __p);
  }

  __p = 0;
  v10 = 0;
  v11 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::vector<std::string>,llvm::yaml::EmptyContext>(a1, "Printf", (a2 + 24), &__p, 0);
  v4 = __p;
  if (__p)
  {
    v5 = v10;
    v6 = __p;
    if (v10 != __p)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    v10 = v4;
    operator delete(v6);
  }

  if (*(a2 + 48) != *(a2 + 56) || (result = (*(*a1 + 16))(a1), (result & 1) == 0))
  {
    result = (*(*a1 + 56))(a1);
    if (!result || *(a2 + 48) != *(a2 + 56))
    {
      __p = 0;
      v12 = 0;
      result = (*(*a1 + 120))(a1, "Kernels", 0, 0, &v12, &__p);
      if (result)
      {
        llvm::yaml::yamlize<std::vector<llvm::AMDGPU::HSAMD::Kernel::Metadata>,llvm::yaml::EmptyContext>(a1, (a2 + 48));
        return (*(*a1 + 128))(a1, __p);
      }
    }
  }

  return result;
}

uint64_t llvm::yaml::yamlize<std::vector<unsigned int>,llvm::yaml::EmptyContext>(llvm::yaml::IO *a1, std::vector<unsigned int> *a2)
{
  v4 = (*(*a1 + 64))(a1);
  if ((*(*a1 + 16))(a1))
  {
    v5 = ((a2->__end_ - a2->__begin_) >> 2);
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = 0;
      if ((*(*a1 + 72))(a1, i, &v10))
      {
        begin = a2->__begin_;
        v8 = a2->__end_ - a2->__begin_;
        if (v8 <= i)
        {
          std::vector<unsigned int>::__append(a2, i - v8 + 1);
          begin = a2->__begin_;
        }

        llvm::yaml::yamlize<unsigned int>(a1, &begin[i]);
        (*(*a1 + 80))(a1, v10);
      }
    }
  }

  return (*(*a1 + 88))(a1);
}

void llvm::yaml::yamlize<unsigned int>(llvm::yaml::IO *a1, unsigned int *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v19 = &v20;
    v20 = v22;
    v21 = xmmword_257371870;
    LODWORD(v13) = 2;
    v17 = 0;
    v18 = 1;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v12 = &unk_2868A3F88;
    llvm::raw_ostream::SetBufferAndMode(&v12, 0, 0, 0);
    Context = llvm::yaml::IO::getContext(a1);
    llvm::yaml::ScalarTraits<unsigned int,void>::output(a2, Context, &v12);
    v5 = v19[1];
    v11[0] = *v19;
    v11[1] = v5;
    (*(*a1 + 216))(a1, v11, 0);
    llvm::raw_ostream::~raw_ostream(&v12);
    if (v20 != v22)
    {
      free(v20);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    (*(*a1 + 216))(a1, &v12, 0);
    v6 = v12;
    v7 = v13;
    v8 = llvm::yaml::IO::getContext(a1);
    v9 = llvm::yaml::ScalarTraits<unsigned int,void>::input(v6, v7, v8, a2);
    if (v10)
    {
      v22[4] = 261;
      v20 = v9;
      *&v21 = v10;
      (*(*a1 + 248))(a1, &v20);
    }
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * __n;
    bzero(v11, 4 * __n);
    memcpy(0, begin, v6);
    this->__begin_ = 0;
    this->__end_ = &v11[v12];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void llvm::yaml::IO::processKeyWithDefault<std::vector<std::string>,llvm::yaml::EmptyContext>(llvm::yaml::IO *a1, uint64_t a2, std::vector<std::string> *a3, std::string **a4, uint64_t a5)
{
  v21 = 0;
  if ((*(*a1 + 16))(a1))
  {
    begin = a3->__begin_;
    end = a3->__end_;
    v12 = *a4;
    if (end - a3->__begin_ == a4[1] - *a4)
    {
      if (begin == end)
      {
LABEL_18:
        v19 = 1;
        goto LABEL_20;
      }

      while (1)
      {
        v13 = SHIBYTE(begin->__r_.__value_.__r.__words[2]);
        if (v13 >= 0)
        {
          size = HIBYTE(begin->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = begin->__r_.__value_.__l.__size_;
        }

        v15 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = v12->__r_.__value_.__l.__size_;
        }

        if (size != v15)
        {
          break;
        }

        v17 = v13 >= 0 ? begin : begin->__r_.__value_.__r.__words[0];
        v18 = v16 >= 0 ? v12 : v12->__r_.__value_.__r.__words[0];
        if (memcmp(v17, v18, size))
        {
          break;
        }

        ++begin;
        ++v12;
        if (begin == end)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v19 = 0;
LABEL_20:
  v20 = 0;
  if ((*(*a1 + 120))(a1, a2, a5, v19, &v20, &v21))
  {
    llvm::yaml::yamlize<std::vector<std::string>,llvm::yaml::EmptyContext>(a1, a3);
    (*(*a1 + 128))(a1, v21);
  }

  else if (a3 != a4 && (v20 & 1) != 0)
  {
    std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(a3, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  }
}

uint64_t llvm::yaml::yamlize<std::vector<std::string>,llvm::yaml::EmptyContext>(llvm::yaml::IO *a1, std::vector<std::string> *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if ((*(*a1 + 16))(a1))
  {
    v4 = -1431655765 * ((a2->__end_ - a2->__begin_) >> 3);
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v9 = 0;
      if ((*(*a1 + 32))(a1, i, &v9))
      {
        begin = a2->__begin_;
        v7 = 0xAAAAAAAAAAAAAAABLL * ((a2->__end_ - a2->__begin_) >> 3);
        if (v7 <= i)
        {
          std::vector<std::string>::__append(a2, i - v7 + 1);
          begin = a2->__begin_;
        }

        llvm::yaml::yamlize<std::string>(a1, &begin[i]);
        (*(*a1 + 40))(a1, v9);
      }
    }
  }

  return (*(*a1 + 48))(a1);
}

void llvm::yaml::yamlize<std::string>(llvm::yaml::IO *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v21 = &v22;
    v22 = v24;
    v23 = xmmword_257371870;
    LODWORD(v15) = 2;
    v19 = 0;
    v20 = 1;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v14 = &unk_2868A3F88;
    llvm::raw_ostream::SetBufferAndMode(&v14, 0, 0, 0);
    Context = llvm::yaml::IO::getContext(a1);
    llvm::yaml::ScalarTraits<std::string,void>::output(a2, Context, &v14);
    v5 = v21[1];
    v13[0] = *v21;
    v13[1] = v5;
    v6 = llvm::yaml::needsQuotes(v13[0], v5, 1);
    (*(*a1 + 216))(a1, v13, v6);
    llvm::raw_ostream::~raw_ostream(&v14);
    if (v22 != v24)
    {
      free(v22);
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v7 = llvm::yaml::needsQuotes(0, 0, 1);
    (*(*a1 + 216))(a1, &v14, v7);
    v8 = v14;
    v9 = v15;
    v10 = llvm::yaml::IO::getContext(a1);
    v11 = llvm::yaml::ScalarTraits<std::string,void>::input(v8, v9, v10, a2);
    if (v12)
    {
      v24[4] = 261;
      v22 = v11;
      *&v23 = v12;
      (*(*a1 + 248))(a1, &v22);
    }
  }
}

uint64_t llvm::yaml::needsQuotes(unsigned __int8 *a1, unint64_t a2, int a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = *a1;
    v6 = 1;
    if ((v5 - 9) >= 5 && v5 != 32)
    {
      v14 = a1[a2 - 1];
      if ((v14 - 9) >= 5)
      {
        v6 = v14 == 32;
      }
    }

    if (!a3)
    {
      goto LABEL_43;
    }

    switch(a2)
    {
      case 1uLL:
        if (*a1 == 126)
        {
          v6 = 1;
        }

        goto LABEL_40;
      case 5uLL:
        if ((*a1 != 1936482662 || a1[4] != 101) && (*a1 != 1936482630 || a1[4] != 101))
        {
          v17 = bswap64(*a1 | (a1[4] << 32));
          v11 = v17 >= 0x46414C5345000000;
          v12 = v17 > 0x46414C5345000000;
LABEL_30:
          v18 = v12;
          v19 = !v11;
          if (v18 != v19)
          {
            goto LABEL_40;
          }
        }

        break;
      case 4uLL:
        if (*a1 == 1819047278 || *a1 == 1819047246 || ((v7 = bswap32(*a1), v11 = v7 >= 0x4E554C4C, v8 = v7 > 0x4E554C4C, v11) ? (v9 = 0) : (v9 = 1), v8 == v9))
        {
          v6 = 1;
        }

        if (*a1 != 1702195828 && *a1 != 1702195796)
        {
          v10 = bswap32(*a1);
          v11 = v10 >= 0x54525545;
          v12 = v10 > 0x54525545;
          goto LABEL_30;
        }

        break;
      default:
LABEL_40:
        if (llvm::yaml::isNumeric(a1, a2))
        {
          v6 = 1;
        }

        LOBYTE(v5) = *v4;
LABEL_43:
        {
          v20 = 1;
        }

        else
        {
          v20 = v6;
        }

        while (1)
        {
          v21 = *v4;
          if (v21 - 48 < 0xA || (v21 & 0xFFFFFFDF) - 65 < 0x1A)
          {
            goto LABEL_47;
          }

          result = 2;
          if (v21 <= 0x2E)
          {
            if (((1 << v21) & 0x700100000200) != 0)
            {
              goto LABEL_47;
            }

            if (((1 << v21) & 0x2400) != 0)
            {
              return result;
            }
          }

          if (v21 - 94 >= 2)
          {
            if (v21 == 127 || v21 < 32)
            {
              return result;
            }

            v20 = 1;
          }

LABEL_47:
          ++v4;
          result = v20;
          if (!--v3)
          {
            return result;
          }
        }
    }

    v6 = 1;
    goto LABEL_40;
  }

  return 1;
}

BOOL llvm::yaml::isNumeric(_DWORD *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (a2 == 4)
  {
    if (!memcmp(a1, ".nan", 4uLL))
    {
      return 1;
    }

    if (*a1 == 1314999854)
    {
      return 1;
    }

    v3 = a1;
    if (*a1 == 1312902702)
    {
      return 1;
    }
  }

  else if (a2 == 1)
  {
    result = 0;
    v5 = *v3;
    if (v5 == 43 || v5 == 45)
    {
      return result;
    }

    goto LABEL_11;
  }

  v5 = *v3;
  if (v5 == 45)
  {
LABEL_12:
    v7 = v3 + 1;
    v8 = a2 - 1;
    goto LABEL_13;
  }

LABEL_11:
  v7 = v3;
  v8 = a2;
  if (v5 == 43)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v8 == 4 && (*v7 == 1718511918 || *v7 == 1718503726 || *v7 == 1179535662))
  {
    return 1;
  }

  if (a2 == 1)
  {
    goto LABEL_20;
  }

  if (*v3 == 28464)
  {
    if (a2 < 3)
    {
      return 0;
    }

    v20 = v3 + 1;
    v21 = a2 - 2;
    v10 = "01234567";
    v11 = 8;
    return llvm::StringRef::find_first_not_of(&v20, v10, v11, 0) == -1;
  }

  if (*v3 == 30768)
  {
    if (a2 < 3)
    {
      return 0;
    }

    v20 = v3 + 1;
    v21 = a2 - 2;
    v10 = "0123456789abcdefABCDEF";
    v11 = 22;
    return llvm::StringRef::find_first_not_of(&v20, v10, v11, 0) == -1;
  }

LABEL_20:
  if (!v8)
  {
    goto LABEL_34;
  }

  result = 0;
  v9 = *v7;
  if (v9 != 101 && v9 != 69)
  {
    if (v9 != 46)
    {
      goto LABEL_34;
    }

    if (v8 == 1)
    {
      return 0;
    }

    result = 0;
    v12 = v7[1];
    if (v12 <= 0x3F && ((1 << v12) & 0x3FF000000000001) != 0)
    {
LABEL_34:
      v13 = llvm::yaml::isNumeric(llvm::StringRef)::{lambda(llvm::StringRef)#1}::operator()(&v20, v7, v8);
      if (v14)
      {
        v15 = *v13;
        if (v15 == 101 || v15 == 69)
        {
LABEL_40:
          v16 = v14 - 1;
          if (v14 != 1)
          {
            v17 = (v13 + 1);
            v18 = v13[1];
            if (v18 != 45 && v18 != 43)
            {
              goto LABEL_45;
            }

            v16 = v14 - 2;
            if (v14 != 2)
            {
              v17 = (v13 + 2);
LABEL_45:
              llvm::yaml::isNumeric(llvm::StringRef)::{lambda(llvm::StringRef)#1}::operator()(&v20, v17, v16);
              return v19 == 0;
            }
          }

          return 0;
        }

        if (v15 != 46)
        {
          return 0;
        }

        v13 = llvm::yaml::isNumeric(llvm::StringRef)::{lambda(llvm::StringRef)#1}::operator()(&v20, (v13 + 1), v14 - 1);
        if (v14)
        {
          if ((*v13 | 0x20) != 0x65)
          {
            return 0;
          }

          goto LABEL_40;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t llvm::yaml::isNumeric(llvm::StringRef)::{lambda(llvm::StringRef)#1}::operator()(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  v7 = a3;
  first_not_of = llvm::StringRef::find_first_not_of(&v6, "0123456789", 10, 0);
  if (first_not_of >= v7)
  {
    v4 = v7;
  }

  else
  {
    v4 = first_not_of;
  }

  return v6 + v4;
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
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
        while (1)
        {
          v18 = &v15[v17 / 0x18];
          v19 = &v13[v17 / 8];
          if ((SHIBYTE(v15[v17 / 0x18].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            break;
          }

          std::string::__init_copy_ctor_external(v19, *v18, *(v18 + 1));
          v17 += 24;
          if (&v15[v17 / 0x18] == a3)
          {
            goto LABEL_17;
          }
        }

        v20 = *v18;
        v19->__r_.__value_.__r.__words[2] = *(v18 + 2);
        *&v19->__r_.__value_.__l.__data_ = v20;
        v17 += 24;
      }

      while (&v15[v17 / 0x18] != a3);
LABEL_17:
      v16 = &v13[v17 / 8];
    }

    *(a1 + 8) = v16;
  }
}

uint64_t llvm::yaml::yamlize<std::vector<llvm::AMDGPU::HSAMD::Kernel::Metadata>,llvm::yaml::EmptyContext>(llvm::yaml::IO *a1, uint64_t *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if ((*(*a1 + 16))(a1))
  {
    v4 = 954437177 * ((a2[1] - *a2) >> 5);
  }

  if (v4)
  {
    v5 = 0;
    v6 = v4;
    do
    {
      v11 = 0;
      if ((*(*a1 + 32))(a1, v5, &v11))
      {
        v8 = *a2;
        v9 = 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 5);
        if (v9 <= v5)
        {
          std::vector<llvm::AMDGPU::HSAMD::Kernel::Metadata>::__append(a2, v5 - v9 + 1);
          v8 = *a2;
        }

        v7 = v8 + 288 * v5;
        (*(*a1 + 104))(a1);
        llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::Metadata>::mapping(a1, v7);
        (*(*a1 + 112))(a1);
        (*(*a1 + 40))(a1, v11);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return (*(*a1 + 48))(a1);
}

uint64_t llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::Metadata>::mapping(llvm::yaml::IO *a1, uint64_t a2)
{
  __p = 0;
  v10 = 0;
  if ((*(*a1 + 120))(a1, "Name", 1, 0, &v10, &__p))
  {
    llvm::yaml::yamlize<std::string>(a1, a2);
    (*(*a1 + 128))(a1, __p);
  }

  __p = 0;
  v10 = 0;
  if ((*(*a1 + 120))(a1, "SymbolName", 1, 0, &v10, &__p))
  {
    llvm::yaml::yamlize<std::string>(a1, a2 + 24);
    (*(*a1 + 128))(a1, __p);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::string,llvm::yaml::EmptyContext>(a1, "Language", a2 + 48, &__p, 0);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::vector<unsigned int>,llvm::yaml::EmptyContext>(a1, "LanguageVersion", (a2 + 72), &__p, 0);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (*(a2 + 96) != *(a2 + 104) || *(a2 + 120) != *(a2 + 128))
  {
    goto LABEL_18;
  }

  v4 = *(a2 + 167);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 152);
  }

  if (v4)
  {
    goto LABEL_18;
  }

  v5 = *(a2 + 191);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 176);
  }

  if (v5 || ((*(*a1 + 16))(a1) & 1) == 0)
  {
LABEL_18:
    __p = 0;
    v10 = 0;
    if ((*(*a1 + 120))(a1, "Attrs", 0, 0, &v10, &__p))
    {
      (*(*a1 + 104))(a1);
      llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::Attrs::Metadata>::mapping(a1, (a2 + 96));
      (*(*a1 + 112))(a1);
      (*(*a1 + 128))(a1, __p);
    }
  }

  if ((*(a2 + 192) != *(a2 + 200) || ((*(*a1 + 16))(a1) & 1) == 0) && (!(*(*a1 + 56))(a1) || *(a2 + 192) != *(a2 + 200)))
  {
    __p = 0;
    v10 = 0;
    if ((*(*a1 + 120))(a1, "Args", 0, 0, &v10, &__p))
    {
      llvm::yaml::yamlize<std::vector<llvm::AMDGPU::HSAMD::Kernel::Arg::Metadata>,llvm::yaml::EmptyContext>(a1, (a2 + 192));
      (*(*a1 + 128))(a1, __p);
    }
  }

  __p = 0;
  v10 = 0;
  if ((*(*a1 + 120))(a1, "CodeProps", 0, 0, &v10, &__p))
  {
    (*(*a1 + 104))(a1);
    llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::CodeProps::Metadata>::mapping(a1, a2 + 216);
    (*(*a1 + 112))(a1);
    (*(*a1 + 128))(a1, __p);
  }

  if (*(a2 + 256) != *(a2 + 264) || (result = (*(*a1 + 16))(a1), (result & 1) == 0))
  {
    __p = 0;
    v10 = 0;
    result = (*(*a1 + 120))(a1, "DebugProps", 0, 0, &v10, &__p);
    if (result)
    {
      (*(*a1 + 104))(a1);
      llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::DebugProps::Metadata>::mapping(a1, a2 + 256);
      (*(*a1 + 112))(a1);
      return (*(*a1 + 128))(a1, __p);
    }
  }

  return result;
}

std::string *llvm::yaml::IO::processKeyWithDefault<std::string,llvm::yaml::EmptyContext>(llvm::yaml::IO *a1, uint64_t a2, uint64_t a3, const void **a4, uint64_t a5)
{
  if (!(*(*a1 + 16))(a1))
  {
    goto LABEL_15;
  }

  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = *(a4 + 23);
  v13 = v12;
  if (v12 < 0)
  {
    v12 = a4[1];
  }

  if (v11 == v12)
  {
    if (v10 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (v13 >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    v16 = memcmp(v14, v15, v11) == 0;
  }

  else
  {
LABEL_15:
    v16 = 0;
  }

  v19 = 0;
  v18 = 0;
  result = (*(*a1 + 120))(a1, a2, a5, v16, &v18, &v19);
  if (result)
  {
    llvm::yaml::yamlize<std::string>(a1, a3);
    return (*(*a1 + 128))(a1, v19);
  }

  else if (v18 == 1)
  {
    return std::string::operator=(a3, a4);
  }

  return result;
}

char *llvm::yaml::IO::processKeyWithDefault<std::vector<unsigned int>,llvm::yaml::EmptyContext>(llvm::yaml::IO *a1, uint64_t a2, std::vector<unsigned int> *a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(*a1 + 16))(a1) && (v10 = a3->__end_ - a3->__begin_, v10 == *(a4 + 8) - *a4) && memcmp(a3->__begin_, *a4, v10) == 0;
  v14 = 0;
  v13 = 0;
  result = (*(*a1 + 120))(a1, a2, a5, v11, &v13, &v14);
  if (result)
  {
    llvm::yaml::yamlize<std::vector<unsigned int>,llvm::yaml::EmptyContext>(a1, a3);
    return (*(*a1 + 128))(a1, v14);
  }

  else if (a3 != a4 && (v13 & 1) != 0)
  {
    return std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(a3, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  }

  return result;
}

char *std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
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

    a1[1] = &v12[v15];
  }

  return result;
}

void llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::Attrs::Metadata>::mapping(llvm::yaml::IO *a1, std::vector<unsigned int> *a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::vector<unsigned int>,llvm::yaml::EmptyContext>(a1, "ReqdWorkGroupSize", a2, &__p, 0);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  __p = 0;
  v5 = 0;
  v6 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::vector<unsigned int>,llvm::yaml::EmptyContext>(a1, "WorkGroupSizeHint", a2 + 1, &__p, 0);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  __p = 0;
  v5 = 0;
  v6 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::string,llvm::yaml::EmptyContext>(a1, "VecTypeHint", &a2[2], &__p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v5 = 0;
  v6 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::string,llvm::yaml::EmptyContext>(a1, "RuntimeHandle", &a2[3], &__p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }
}

uint64_t llvm::yaml::yamlize<std::vector<llvm::AMDGPU::HSAMD::Kernel::Arg::Metadata>,llvm::yaml::EmptyContext>(llvm::yaml::IO *a1, uint64_t *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if ((*(*a1 + 16))(a1))
  {
    v4 = -858993459 * ((a2[1] - *a2) >> 4);
  }

  if (v4)
  {
    v5 = 0;
    v6 = v4;
    do
    {
      v11 = 0;
      if ((*(*a1 + 32))(a1, v5, &v11))
      {
        v8 = *a2;
        v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4);
        if (v9 <= v5)
        {
          std::vector<llvm::AMDGPU::HSAMD::Kernel::Arg::Metadata>::__append(a2, v5 - v9 + 1);
          v8 = *a2;
        }

        v7 = v8 + 80 * v5;
        (*(*a1 + 104))(a1);
        llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::Arg::Metadata>::mapping(a1, v7);
        (*(*a1 + 112))(a1);
        (*(*a1 + 40))(a1, v11);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return (*(*a1 + 48))(a1);
}

uint64_t llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::Arg::Metadata>::mapping(llvm::yaml::IO *a1, uint64_t a2)
{
  __p = 0;
  v25 = 0;
  v26 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::string,llvm::yaml::EmptyContext>(a1, "Name", a2, &__p, 0);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::string,llvm::yaml::EmptyContext>(a1, "TypeName", a2 + 24, &__p, 0);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  LOBYTE(v23) = 0;
  if ((*(*a1 + 120))(a1, "Size", 1, 0, &v23, &__p))
  {
    llvm::yaml::yamlize<unsigned int>(a1, (a2 + 48));
    (*(*a1 + 128))(a1, __p);
  }

  __p = 0;
  LOBYTE(v23) = 0;
  if ((*(*a1 + 120))(a1, "Align", 1, 0, &v23, &__p))
  {
    llvm::yaml::yamlize<unsigned int>(a1, (a2 + 56));
    (*(*a1 + 128))(a1, __p);
  }

  __p = 0;
  LOBYTE(v23) = 0;
  if ((*(*a1 + 120))(a1, "ValueKind", 1, 0, &v23, &__p))
  {
    (*(*a1 + 160))(a1);
    llvm::yaml::ScalarEnumerationTraits<llvm::AMDGPU::HSAMD::ValueKind,void>::enumeration(a1, (a2 + 60));
    (*(*a1 + 184))(a1);
    (*(*a1 + 128))(a1, __p);
  }

  v23 = 0;
  LOWORD(__p) = 0;
  llvm::yaml::IO::processKeyWithDefault<llvm::AMDGPU::HSAMD::ValueType,llvm::yaml::EmptyContext>(a1, "ValueType", &v23, &__p, 0);
  __p = 0;
  v27 = 0;
  v4 = (*(*a1 + 16))(a1);
  if (*(a2 + 64))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((*(*a1 + 120))(a1, "PointeeAlign", 0, v5, &v27, &__p))
  {
    llvm::yaml::yamlize<unsigned int>(a1, (a2 + 64));
    (*(*a1 + 128))(a1, __p);
  }

  else if (v27 == 1)
  {
    *(a2 + 64) = 0;
  }

  __p = 0;
  v27 = 0;
  v6 = (*(*a1 + 16))(a1);
  if (*(a2 + 68) == 0xFF)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((*(*a1 + 120))(a1, "AddrSpaceQual", 0, v7, &v27, &__p))
  {
    (*(*a1 + 160))(a1);
    llvm::yaml::ScalarEnumerationTraits<llvm::AMDGPU::HSAMD::AddressSpaceQualifier,void>::enumeration(a1, (a2 + 68));
    (*(*a1 + 184))(a1);
    (*(*a1 + 128))(a1, __p);
  }

  else if (v27 == 1)
  {
    *(a2 + 68) = -1;
  }

  __p = 0;
  v27 = 0;
  v8 = (*(*a1 + 16))(a1);
  if (*(a2 + 69) == 0xFF)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((*(*a1 + 120))(a1, "AccQual", 0, v9, &v27, &__p))
  {
    (*(*a1 + 160))(a1);
    llvm::yaml::ScalarEnumerationTraits<llvm::AMDGPU::HSAMD::AccessQualifier,void>::enumeration(a1, (a2 + 69));
    (*(*a1 + 184))(a1);
    (*(*a1 + 128))(a1, __p);
  }

  else if (v27 == 1)
  {
    *(a2 + 69) = -1;
  }

  __p = 0;
  v27 = 0;
  v10 = (*(*a1 + 16))(a1);
  if (*(a2 + 70) == 0xFF)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ((*(*a1 + 120))(a1, "ActualAccQual", 0, v11, &v27, &__p))
  {
    (*(*a1 + 160))(a1);
    llvm::yaml::ScalarEnumerationTraits<llvm::AMDGPU::HSAMD::AccessQualifier,void>::enumeration(a1, (a2 + 70));
    (*(*a1 + 184))(a1);
    (*(*a1 + 128))(a1, __p);
  }

  else if (v27 == 1)
  {
    *(a2 + 70) = -1;
  }

  __p = 0;
  v27 = 0;
  v12 = (*(*a1 + 16))(a1);
  if (*(a2 + 71))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if ((*(*a1 + 120))(a1, "IsConst", 0, v13, &v27, &__p))
  {
    llvm::yaml::yamlize<BOOL>(a1, (a2 + 71));
    (*(*a1 + 128))(a1, __p);
  }

  else if (v27 == 1)
  {
    *(a2 + 71) = 0;
  }

  __p = 0;
  v27 = 0;
  v14 = (*(*a1 + 16))(a1);
  if (*(a2 + 72))
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if ((*(*a1 + 120))(a1, "IsRestrict", 0, v15, &v27, &__p))
  {
    llvm::yaml::yamlize<BOOL>(a1, (a2 + 72));
    (*(*a1 + 128))(a1, __p);
  }

  else if (v27 == 1)
  {
    *(a2 + 72) = 0;
  }

  __p = 0;
  v27 = 0;
  v16 = (*(*a1 + 16))(a1);
  if (*(a2 + 73))
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if ((*(*a1 + 120))(a1, "IsVolatile", 0, v17, &v27, &__p))
  {
    llvm::yaml::yamlize<BOOL>(a1, (a2 + 73));
    (*(*a1 + 128))(a1, __p);
  }

  else if (v27 == 1)
  {
    *(a2 + 73) = 0;
  }

  __p = 0;
  v27 = 0;
  v18 = (*(*a1 + 16))(a1);
  v20 = *(a2 + 74);
  v19 = (a2 + 74);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  result = (*(*a1 + 120))(a1, "IsPipe", 0, v21, &v27, &__p);
  if (result)
  {
    llvm::yaml::yamlize<BOOL>(a1, v19);
    return (*(*a1 + 128))(a1, __p);
  }

  else if (v27 == 1)
  {
    *v19 = 0;
  }

  return result;
}

uint64_t llvm::yaml::ScalarEnumerationTraits<llvm::AMDGPU::HSAMD::ValueKind,void>::enumeration(uint64_t a1, _BYTE *a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((*(*a1 + 168))(a1, "ByValue", v5))
  {
    *a2 = 0;
  }

  v6 = (*(*a1 + 16))(a1);
  if (*a2 == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((*(*a1 + 168))(a1, "GlobalBuffer", v7))
  {
    *a2 = 1;
  }

  v8 = (*(*a1 + 16))(a1);
  if (*a2 == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((*(*a1 + 168))(a1, "DynamicSharedPointer", v9))
  {
    *a2 = 2;
  }

  v10 = (*(*a1 + 16))(a1);
  if (*a2 == 3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ((*(*a1 + 168))(a1, "Sampler", v11))
  {
    *a2 = 3;
  }

  v12 = (*(*a1 + 16))(a1);
  if (*a2 == 4)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ((*(*a1 + 168))(a1, "Image", v13))
  {
    *a2 = 4;
  }

  v14 = (*(*a1 + 16))(a1);
  if (*a2 == 5)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if ((*(*a1 + 168))(a1, "Pipe", v15))
  {
    *a2 = 5;
  }

  v16 = (*(*a1 + 16))(a1);
  if (*a2 == 6)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ((*(*a1 + 168))(a1, "Queue", v17))
  {
    *a2 = 6;
  }

  v18 = (*(*a1 + 16))(a1);
  if (*a2 == 7)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if ((*(*a1 + 168))(a1, "HiddenGlobalOffsetX", v19))
  {
    *a2 = 7;
  }

  v20 = (*(*a1 + 16))(a1);
  if (*a2 == 8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if ((*(*a1 + 168))(a1, "HiddenGlobalOffsetY", v21))
  {
    *a2 = 8;
  }

  v22 = (*(*a1 + 16))(a1);
  if (*a2 == 9)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if ((*(*a1 + 168))(a1, "HiddenGlobalOffsetZ", v23))
  {
    *a2 = 9;
  }

  v24 = (*(*a1 + 16))(a1);
  if (*a2 == 10)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if ((*(*a1 + 168))(a1, "HiddenNone", v25))
  {
    *a2 = 10;
  }

  v26 = (*(*a1 + 16))(a1);
  if (*a2 == 11)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if ((*(*a1 + 168))(a1, "HiddenPrintfBuffer", v27))
  {
    *a2 = 11;
  }

  v28 = (*(*a1 + 16))(a1);
  if (*a2 == 15)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if ((*(*a1 + 168))(a1, "HiddenHostcallBuffer", v29))
  {
    *a2 = 15;
  }

  v30 = (*(*a1 + 16))(a1);
  if (*a2 == 12)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if ((*(*a1 + 168))(a1, "HiddenDefaultQueue", v31))
  {
    *a2 = 12;
  }

  v32 = (*(*a1 + 16))(a1);
  if (*a2 == 13)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if ((*(*a1 + 168))(a1, "HiddenCompletionAction", v33))
  {
    *a2 = 13;
  }

  v34 = (*(*a1 + 16))(a1);
  if (*a2 == 14)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  result = (*(*a1 + 168))(a1, "HiddenMultiGridSyncArg", v35);
  if (result)
  {
    *a2 = 14;
  }

  return result;
}

uint64_t llvm::yaml::IO::processKeyWithDefault<llvm::AMDGPU::HSAMD::ValueType,llvm::yaml::EmptyContext>(llvm::yaml::Input *a1, uint64_t a2, _BYTE *a3, _WORD *a4, uint64_t a5)
{
  v21 = 1;
  v10 = (*(*a1 + 16))(a1);
  v11 = a3[1];
  result = (*(*a1 + 16))(a1);
  if (result & 1) != 0 || (a3[1])
  {
    if ((a3[1] & 1) == 0)
    {
LABEL_10:
      *a3 = *a4;
      return result;
    }
  }

  else
  {
    *a3 = 256;
  }

  v22 = 0;
  result = (*(*a1 + 120))(a1, a2, a5, v10 & (v11 ^ 1u), &v21, &v22);
  if (!result)
  {
    if ((v21 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((*(*a1 + 16))(a1))
  {
    goto LABEL_7;
  }

  CurrentNode = llvm::yaml::Input::getCurrentNode(a1);
  if (!CurrentNode || *(CurrentNode + 32) != 1)
  {
    goto LABEL_7;
  }

  v14 = *(CurrentNode + 80);
  v19 = *(CurrentNode + 72);
  v20 = v14;
  last_not_of = llvm::StringRef::find_last_not_of(&v19, 0x20u, 0xFFFFFFFFFFFFFFFFLL);
  if (last_not_of + 1 < v20)
  {
    v16 = last_not_of + 1;
  }

  else
  {
    v16 = v20;
  }

  v17 = v20 - v14 + v16;
  if (v20 < v17)
  {
    v17 = v20;
  }

  if (v17 == 6 && (*v19 == 1852796476 ? (v18 = *(v19 + 4) == 15973) : (v18 = 0), v18))
  {
    *a3 = *a4;
  }

  else
  {
LABEL_7:
    (*(*a1 + 160))(a1);
    llvm::yaml::ScalarEnumerationTraits<llvm::AMDGPU::HSAMD::ValueType,void>::enumeration(a1, a3);
    (*(*a1 + 184))(a1);
  }

  return (*(*a1 + 128))(a1, v22);
}

uint64_t llvm::yaml::ScalarEnumerationTraits<llvm::AMDGPU::HSAMD::ValueType,void>::enumeration(uint64_t a1, _BYTE *a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((*(*a1 + 168))(a1, "Struct", v5))
  {
    *a2 = 0;
  }

  v6 = (*(*a1 + 16))(a1);
  if (*a2 == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((*(*a1 + 168))(a1, "I8", v7))
  {
    *a2 = 1;
  }

  v8 = (*(*a1 + 16))(a1);
  if (*a2 == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((*(*a1 + 168))(a1, "U8", v9))
  {
    *a2 = 2;
  }

  v10 = (*(*a1 + 16))(a1);
  if (*a2 == 3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ((*(*a1 + 168))(a1, "I16", v11))
  {
    *a2 = 3;
  }

  v12 = (*(*a1 + 16))(a1);
  if (*a2 == 4)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ((*(*a1 + 168))(a1, "U16", v13))
  {
    *a2 = 4;
  }

  v14 = (*(*a1 + 16))(a1);
  if (*a2 == 5)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if ((*(*a1 + 168))(a1, "F16", v15))
  {
    *a2 = 5;
  }

  v16 = (*(*a1 + 16))(a1);
  if (*a2 == 6)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ((*(*a1 + 168))(a1, "I32", v17))
  {
    *a2 = 6;
  }

  v18 = (*(*a1 + 16))(a1);
  if (*a2 == 7)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if ((*(*a1 + 168))(a1, "U32", v19))
  {
    *a2 = 7;
  }

  v20 = (*(*a1 + 16))(a1);
  if (*a2 == 8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if ((*(*a1 + 168))(a1, "F32", v21))
  {
    *a2 = 8;
  }

  v22 = (*(*a1 + 16))(a1);
  if (*a2 == 9)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if ((*(*a1 + 168))(a1, "I64", v23))
  {
    *a2 = 9;
  }

  v24 = (*(*a1 + 16))(a1);
  if (*a2 == 10)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if ((*(*a1 + 168))(a1, "U64", v25))
  {
    *a2 = 10;
  }

  v26 = (*(*a1 + 16))(a1);
  if (*a2 == 11)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  result = (*(*a1 + 168))(a1, "F64", v27);
  if (result)
  {
    *a2 = 11;
  }

  return result;
}

uint64_t llvm::yaml::ScalarEnumerationTraits<llvm::AMDGPU::HSAMD::AddressSpaceQualifier,void>::enumeration(uint64_t a1, _BYTE *a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((*(*a1 + 168))(a1, "Private", v5))
  {
    *a2 = 0;
  }

  v6 = (*(*a1 + 16))(a1);
  if (*a2 == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((*(*a1 + 168))(a1, "Global", v7))
  {
    *a2 = 1;
  }

  v8 = (*(*a1 + 16))(a1);
  if (*a2 == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((*(*a1 + 168))(a1, "Constant", v9))
  {
    *a2 = 2;
  }

  v10 = (*(*a1 + 16))(a1);
  if (*a2 == 3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ((*(*a1 + 168))(a1, "Local", v11))
  {
    *a2 = 3;
  }

  v12 = (*(*a1 + 16))(a1);
  if (*a2 == 4)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ((*(*a1 + 168))(a1, "Generic", v13))
  {
    *a2 = 4;
  }

  v14 = (*(*a1 + 16))(a1);
  if (*a2 == 5)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = (*(*a1 + 168))(a1, "Region", v15);
  if (result)
  {
    *a2 = 5;
  }

  return result;
}

uint64_t llvm::yaml::ScalarEnumerationTraits<llvm::AMDGPU::HSAMD::AccessQualifier,void>::enumeration(uint64_t a1, _BYTE *a2)
{
  v4 = (*(*a1 + 16))(a1);
  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((*(*a1 + 168))(a1, "Default", v5))
  {
    *a2 = 0;
  }

  v6 = (*(*a1 + 16))(a1);
  if (*a2 == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((*(*a1 + 168))(a1, "ReadOnly", v7))
  {
    *a2 = 1;
  }

  v8 = (*(*a1 + 16))(a1);
  if (*a2 == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((*(*a1 + 168))(a1, "WriteOnly", v9))
  {
    *a2 = 2;
  }

  v10 = (*(*a1 + 16))(a1);
  if (*a2 == 3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  result = (*(*a1 + 168))(a1, "ReadWrite", v11);
  if (result)
  {
    *a2 = 3;
  }

  return result;
}

void llvm::yaml::yamlize<BOOL>(llvm::yaml::IO *a1, _BYTE *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v19 = &v20;
    v20 = v22;
    v21 = xmmword_257371870;
    LODWORD(v13) = 2;
    v17 = 0;
    v18 = 1;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v12 = &unk_2868A3F88;
    llvm::raw_ostream::SetBufferAndMode(&v12, 0, 0, 0);
    Context = llvm::yaml::IO::getContext(a1);
    llvm::yaml::ScalarTraits<BOOL,void>::output(a2, Context, &v12);
    v5 = v19[1];
    v11[0] = *v19;
    v11[1] = v5;
    (*(*a1 + 216))(a1, v11, 0);
    llvm::raw_ostream::~raw_ostream(&v12);
    if (v20 != v22)
    {
      free(v20);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    (*(*a1 + 216))(a1, &v12, 0);
    v6 = v12;
    v7 = v13;
    v8 = llvm::yaml::IO::getContext(a1);
    v9 = llvm::yaml::ScalarTraits<BOOL,void>::input(v6, v7, v8, a2);
    if (v10)
    {
      v22[4] = 261;
      v20 = v9;
      *&v21 = v10;
      (*(*a1 + 248))(a1, &v20);
    }
  }
}

void std::vector<llvm::AMDGPU::HSAMD::Kernel::Arg::Metadata>::__append(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 80 * a2;
      do
      {
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 60) = -1;
        *(v3 + 68) = -1;
        *(v3 + 70) = -1;
        v3 += 80;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x333333333333333)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x199999999999999)
    {
      v8 = 0x333333333333333;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x333333333333333)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 80 * v5;
    v11 = 80 * v5 + 80 * a2;
    v12 = v10;
    do
    {
      *(v12 + 48) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 60) = -1;
      *(v12 + 68) = -1;
      *(v12 + 70) = -1;
      v12 += 80;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        v18 = *v16;
        *(v17 + 16) = *(v16 + 2);
        *v17 = v18;
        *(v16 + 1) = 0;
        *(v16 + 2) = 0;
        *v16 = 0;
        v19 = *(v16 + 24);
        *(v17 + 40) = *(v16 + 5);
        *(v17 + 24) = v19;
        *(v16 + 4) = 0;
        *(v16 + 5) = 0;
        *(v16 + 3) = 0;
        v20 = v16[3];
        *(v17 + 59) = *(v16 + 59);
        *(v17 + 48) = v20;
        v16 += 5;
        v17 += 80;
      }

      while (v16 != v14);
      while (1)
      {
        if (*(v13 + 47) < 0)
        {
          operator delete(*(v13 + 24));
          if (*(v13 + 23) < 0)
          {
LABEL_27:
            operator delete(*v13);
          }
        }

        else if (*(v13 + 23) < 0)
        {
          goto LABEL_27;
        }

        v13 += 80;
        if (v13 == v14)
        {
          v13 = *a1;
          break;
        }
      }
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::CodeProps::Metadata>::mapping(llvm::yaml::IO *a1, uint64_t a2)
{
  v22 = 0;
  v21 = 0;
  if ((*(*a1 + 120))(a1, "KernargSegmentSize", 1, 0, &v21, &v22))
  {
    llvm::yaml::yamlize<unsigned long long>(a1, a2);
    (*(*a1 + 128))(a1, v22);
  }

  v22 = 0;
  v21 = 0;
  if ((*(*a1 + 120))(a1, "GroupSegmentFixedSize", 1, 0, &v21, &v22))
  {
    llvm::yaml::yamlize<unsigned int>(a1, (a2 + 8));
    (*(*a1 + 128))(a1, v22);
  }

  v22 = 0;
  v21 = 0;
  if ((*(*a1 + 120))(a1, "PrivateSegmentFixedSize", 1, 0, &v21, &v22))
  {
    llvm::yaml::yamlize<unsigned int>(a1, (a2 + 12));
    (*(*a1 + 128))(a1, v22);
  }

  v22 = 0;
  v21 = 0;
  if ((*(*a1 + 120))(a1, "KernargSegmentAlign", 1, 0, &v21, &v22))
  {
    llvm::yaml::yamlize<unsigned int>(a1, (a2 + 16));
    (*(*a1 + 128))(a1, v22);
  }

  v22 = 0;
  v21 = 0;
  if ((*(*a1 + 120))(a1, "WavefrontSize", 1, 0, &v21, &v22))
  {
    llvm::yaml::yamlize<unsigned int>(a1, (a2 + 20));
    (*(*a1 + 128))(a1, v22);
  }

  v22 = 0;
  v21 = 0;
  v4 = (*(*a1 + 16))(a1);
  if (*(a2 + 24))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((*(*a1 + 120))(a1, "NumSGPRs", 0, v5, &v21, &v22))
  {
    llvm::yaml::yamlize<unsigned short>(a1, (a2 + 24));
    (*(*a1 + 128))(a1, v22);
  }

  else if (v21 == 1)
  {
    *(a2 + 24) = 0;
  }

  v22 = 0;
  v21 = 0;
  v6 = (*(*a1 + 16))(a1);
  if (*(a2 + 26))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if ((*(*a1 + 120))(a1, "NumVGPRs", 0, v7, &v21, &v22))
  {
    llvm::yaml::yamlize<unsigned short>(a1, (a2 + 26));
    (*(*a1 + 128))(a1, v22);
  }

  else if (v21 == 1)
  {
    *(a2 + 26) = 0;
  }

  v22 = 0;
  v21 = 0;
  v8 = (*(*a1 + 16))(a1);
  if (*(a2 + 28))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if ((*(*a1 + 120))(a1, "MaxFlatWorkGroupSize", 0, v9, &v21, &v22))
  {
    llvm::yaml::yamlize<unsigned int>(a1, (a2 + 28));
    (*(*a1 + 128))(a1, v22);
  }

  else if (v21 == 1)
  {
    *(a2 + 28) = 0;
  }

  v22 = 0;
  v21 = 0;
  v10 = (*(*a1 + 16))(a1);
  if (*(a2 + 32))
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if ((*(*a1 + 120))(a1, "IsDynamicCallStack", 0, v11, &v21, &v22))
  {
    llvm::yaml::yamlize<BOOL>(a1, (a2 + 32));
    (*(*a1 + 128))(a1, v22);
  }

  else if (v21 == 1)
  {
    *(a2 + 32) = 0;
  }

  v22 = 0;
  v21 = 0;
  v12 = (*(*a1 + 16))(a1);
  if (*(a2 + 33))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if ((*(*a1 + 120))(a1, "IsXNACKEnabled", 0, v13, &v21, &v22))
  {
    llvm::yaml::yamlize<BOOL>(a1, (a2 + 33));
    (*(*a1 + 128))(a1, v22);
  }

  else if (v21 == 1)
  {
    *(a2 + 33) = 0;
  }

  v22 = 0;
  v21 = 0;
  v14 = (*(*a1 + 16))(a1);
  if (*(a2 + 34))
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if ((*(*a1 + 120))(a1, "NumSpilledSGPRs", 0, v15, &v21, &v22))
  {
    llvm::yaml::yamlize<unsigned short>(a1, (a2 + 34));
    (*(*a1 + 128))(a1, v22);
  }

  else if (v21 == 1)
  {
    *(a2 + 34) = 0;
  }

  v22 = 0;
  v21 = 0;
  v16 = (*(*a1 + 16))(a1);
  v18 = *(a2 + 36);
  v17 = (a2 + 36);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v16;
  }

  result = (*(*a1 + 120))(a1, "NumSpilledVGPRs", 0, v19, &v21, &v22);
  if (result)
  {
    llvm::yaml::yamlize<unsigned short>(a1, v17);
    return (*(*a1 + 128))(a1, v22);
  }

  else if (v21 == 1)
  {
    *v17 = 0;
  }

  return result;
}

void llvm::yaml::yamlize<unsigned long long>(llvm::yaml::IO *a1, unint64_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v19 = &v20;
    v20 = v22;
    v21 = xmmword_257371870;
    LODWORD(v13) = 2;
    v17 = 0;
    v18 = 1;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v12 = &unk_2868A3F88;
    llvm::raw_ostream::SetBufferAndMode(&v12, 0, 0, 0);
    Context = llvm::yaml::IO::getContext(a1);
    llvm::yaml::ScalarTraits<unsigned long long,void>::output(a2, Context, &v12);
    v5 = v19[1];
    v11[0] = *v19;
    v11[1] = v5;
    (*(*a1 + 216))(a1, v11, 0);
    llvm::raw_ostream::~raw_ostream(&v12);
    if (v20 != v22)
    {
      free(v20);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    (*(*a1 + 216))(a1, &v12, 0);
    v6 = v12;
    v7 = v13;
    v8 = llvm::yaml::IO::getContext(a1);
    v9 = llvm::yaml::ScalarTraits<unsigned long long,void>::input(v6, v7, v8, a2);
    if (v10)
    {
      v22[4] = 261;
      v20 = v9;
      *&v21 = v10;
      (*(*a1 + 248))(a1, &v20);
    }
  }
}

void llvm::yaml::yamlize<unsigned short>(llvm::yaml::IO *a1, unsigned __int16 *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v19 = &v20;
    v20 = v22;
    v21 = xmmword_257371870;
    LODWORD(v13) = 2;
    v17 = 0;
    v18 = 1;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v12 = &unk_2868A3F88;
    llvm::raw_ostream::SetBufferAndMode(&v12, 0, 0, 0);
    Context = llvm::yaml::IO::getContext(a1);
    llvm::yaml::ScalarTraits<unsigned short,void>::output(a2, Context, &v12);
    v5 = v19[1];
    v11[0] = *v19;
    v11[1] = v5;
    (*(*a1 + 216))(a1, v11, 0);
    llvm::raw_ostream::~raw_ostream(&v12);
    if (v20 != v22)
    {
      free(v20);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    (*(*a1 + 216))(a1, &v12, 0);
    v6 = v12;
    v7 = v13;
    v8 = llvm::yaml::IO::getContext(a1);
    v9 = llvm::yaml::ScalarTraits<unsigned short,void>::input(v6, v7, v8, a2);
    if (v10)
    {
      v22[4] = 261;
      v20 = v9;
      *&v21 = v10;
      (*(*a1 + 248))(a1, &v20);
    }
  }
}

uint64_t llvm::yaml::MappingTraits<llvm::AMDGPU::HSAMD::Kernel::DebugProps::Metadata>::mapping(llvm::yaml::IO *a1, uint64_t a2)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  llvm::yaml::IO::processKeyWithDefault<std::vector<unsigned int>,llvm::yaml::EmptyContext>(a1, "DebuggerABIVersion", a2, &__p, 0);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  __p = 0;
  v18 = 0;
  v4 = (*(*a1 + 16))(a1);
  if (*(a2 + 24))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if ((*(*a1 + 120))(a1, "ReservedNumVGPRs", 0, v5, &v18, &__p))
  {
    llvm::yaml::yamlize<unsigned short>(a1, (a2 + 24));
    (*(*a1 + 128))(a1, __p);
  }

  else if (v18 == 1)
  {
    *(a2 + 24) = 0;
  }

  __p = 0;
  v18 = 0;
  v6 = (*(*a1 + 16))(a1);
  if (*(a2 + 26) == 0xFFFF)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((*(*a1 + 120))(a1, "ReservedFirstVGPR", 0, v7, &v18, &__p))
  {
    llvm::yaml::yamlize<unsigned short>(a1, (a2 + 26));
    (*(*a1 + 128))(a1, __p);
  }

  else if (v18 == 1)
  {
    *(a2 + 26) = -1;
  }

  __p = 0;
  v18 = 0;
  v8 = (*(*a1 + 16))(a1);
  if (*(a2 + 28) == 0xFFFF)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((*(*a1 + 120))(a1, "PrivateSegmentBufferSGPR", 0, v9, &v18, &__p))
  {
    llvm::yaml::yamlize<unsigned short>(a1, (a2 + 28));
    (*(*a1 + 128))(a1, __p);
  }

  else if (v18 == 1)
  {
    *(a2 + 28) = -1;
  }

  __p = 0;
  v18 = 0;
  v10 = (*(*a1 + 16))(a1);
  v12 = *(a2 + 30);
  v11 = (a2 + 30);
  if (v12 == -1)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  result = (*(*a1 + 120))(a1, "WavefrontPrivateSegmentOffsetSGPR", 0, v13, &v18, &__p);
  if (result)
  {
    llvm::yaml::yamlize<unsigned short>(a1, v11);
    return (*(*a1 + 128))(a1, __p);
  }

  else if (v18 == 1)
  {
    *v11 = -1;
  }

  return result;
}

void std::vector<llvm::AMDGPU::HSAMD::Kernel::Metadata>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v3) >> 5) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 288 * a2;
      do
      {
        v10 = (v3 + 282);
        *(v3 + 256) = 0uLL;
        *(v3 + 272) = 0uLL;
        *(v3 + 224) = 0uLL;
        *(v3 + 240) = 0uLL;
        *(v3 + 192) = 0uLL;
        *(v3 + 208) = 0uLL;
        *(v3 + 160) = 0uLL;
        *(v3 + 176) = 0uLL;
        *(v3 + 128) = 0uLL;
        *(v3 + 144) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 112) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 32) = 0uLL;
        *(v3 + 48) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 286) = -1;
        v3 += 288;
        *v10 = -1;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 5);
    v6 = v5 + a2;
    if (v5 + a2 > 0xE38E38E38E38E3)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 5);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x71C71C71C71C71)
    {
      v8 = 0xE38E38E38E38E3;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xE38E38E38E38E3)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 288 * v5;
    v12 = 288 * v5 + 288 * a2;
    v13 = v11;
    do
    {
      v14 = (v13 + 282);
      *(v13 + 256) = 0uLL;
      *(v13 + 272) = 0uLL;
      *(v13 + 224) = 0uLL;
      *(v13 + 240) = 0uLL;
      *(v13 + 192) = 0uLL;
      *(v13 + 208) = 0uLL;
      *(v13 + 160) = 0uLL;
      *(v13 + 176) = 0uLL;
      *(v13 + 128) = 0uLL;
      *(v13 + 144) = 0uLL;
      *(v13 + 96) = 0uLL;
      *(v13 + 112) = 0uLL;
      *(v13 + 64) = 0uLL;
      *(v13 + 80) = 0uLL;
      *(v13 + 32) = 0uLL;
      *(v13 + 48) = 0uLL;
      *v13 = 0uLL;
      *(v13 + 16) = 0uLL;
      *(v13 + 286) = -1;
      v13 += 288;
      *v14 = -1;
    }

    while (v13 != v12);
    v15 = *(a1 + 8);
    v16 = v11 + *a1 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::AMDGPU::HSAMD::Kernel::Metadata>,llvm::AMDGPU::HSAMD::Kernel::Metadata*>(a1, *a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::AMDGPU::HSAMD::Kernel::Metadata>,llvm::AMDGPU::HSAMD::Kernel::Metadata*>(uint64_t a1, llvm::AMDGPU::HSAMD::Kernel::Metadata *a2, llvm::AMDGPU::HSAMD::Kernel::Metadata *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v9 = *(v6 + 3);
      *(a4 + 64) = *(v6 + 8);
      *(a4 + 48) = v9;
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 6) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 11);
      *(v6 + 9) = 0;
      *(v6 + 10) = 0;
      *(v6 + 11) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 6);
      *(a4 + 112) = *(v6 + 14);
      *(v6 + 12) = 0;
      *(v6 + 13) = 0;
      *(v6 + 14) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 136) = *(v6 + 17);
      *(v6 + 15) = 0;
      *(v6 + 16) = 0;
      *(v6 + 17) = 0;
      v10 = *(v6 + 9);
      *(a4 + 160) = *(v6 + 20);
      *(a4 + 144) = v10;
      *(v6 + 19) = 0;
      *(v6 + 20) = 0;
      *(v6 + 18) = 0;
      v11 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 23);
      *(a4 + 168) = v11;
      *(v6 + 22) = 0;
      *(v6 + 23) = 0;
      *(v6 + 21) = 0;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 192) = *(v6 + 12);
      *(a4 + 208) = *(v6 + 26);
      *(v6 + 24) = 0;
      *(v6 + 25) = 0;
      *(v6 + 26) = 0;
      v12 = *(v6 + 216);
      v13 = *(v6 + 31);
      *(a4 + 232) = *(v6 + 232);
      *(a4 + 216) = v12;
      *(a4 + 248) = v13;
      *(a4 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 272) = 0;
      *(a4 + 256) = *(v6 + 16);
      *(a4 + 272) = *(v6 + 34);
      *(v6 + 32) = 0;
      *(v6 + 33) = 0;
      *(v6 + 34) = 0;
      *(a4 + 280) = *(v6 + 35);
      v6 = (v6 + 288);
      a4 += 288;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      llvm::AMDGPU::HSAMD::Kernel::Metadata::~Metadata(v5);
      v5 = (v14 + 288);
    }
  }
}

void llvm::AMDGPU::HSAMD::Kernel::Metadata::~Metadata(llvm::AMDGPU::HSAMD::Kernel::Metadata *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    v4 = *(this + 25);
    v5 = *(this + 24);
    if (v4 == v3)
    {
LABEL_13:
      *(this + 25) = v3;
      operator delete(v5);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v4 - 33) < 0)
      {
        operator delete(*(v4 - 7));
        v6 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
LABEL_11:
          operator delete(*v6);
        }
      }

      else
      {
        v6 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          goto LABEL_11;
        }
      }

      v4 = v6;
      if (v6 == v3)
      {
        v5 = *(this + 24);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
    if ((*(this + 167) & 0x80000000) == 0)
    {
LABEL_16:
      v7 = *(this + 15);
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*(this + 167) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*(this + 18));
  v7 = *(this + 15);
  if (v7)
  {
LABEL_17:
    *(this + 16) = v7;
    operator delete(v7);
  }

LABEL_18:
  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_24:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_31:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_31;
  }
}

llvm::raw_ostream *llvm::FixedPointSemantics::print(llvm::FixedPointSemantics *this, llvm::raw_ostream *a2)
{
  v2 = a2;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 5)
  {
    *(v4 + 4) = 15720;
    *v4 = 1952737655;
    *(a2 + 4) += 6;
    v6 = llvm::raw_ostream::operator<<(a2, *this);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 1uLL)
    {
LABEL_3:
      *v7 = 8236;
      *(v6 + 4) += 2;
      v8 = *this;
      v9 = (8 * *this) >> 19;
      if (v9 > 0)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(a2, "width=", 6uLL);
    v6 = llvm::raw_ostream::operator<<(v5, *this);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 1uLL)
    {
      goto LABEL_3;
    }
  }

  llvm::raw_ostream::write(v6, ", ", 2uLL);
  v8 = *this;
  v9 = (8 * *this) >> 19;
  if (v9 > 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v8 >= -v9)
  {
    v10 = *(v2 + 4);
    if ((*(v2 + 3) - v10) > 5)
    {
      *(v10 + 4) = 15717;
      *v10 = 1818321779;
      *(v2 + 4) += 6;
      v11 = v2;
    }

    else
    {
      v11 = llvm::raw_ostream::write(v2, "scale=", 6uLL);
    }

    v12 = llvm::raw_ostream::operator<<(v11, -((8 * *this) >> 19));
    v13 = *(v12 + 4);
    if (*(v12 + 3) - v13 > 1uLL)
    {
      *v13 = 8236;
      *(v12 + 4) += 2;
      v14 = *(v2 + 4);
      if (*(v2 + 3) - v14 <= 3uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    llvm::raw_ostream::write(v12, ", ", 2uLL);
  }

LABEL_13:
  v14 = *(v2 + 4);
  if (*(v2 + 3) - v14 <= 3uLL)
  {
LABEL_14:
    v15 = llvm::raw_ostream::write(v2, "msb=", 4uLL);
    goto LABEL_17;
  }

LABEL_16:
  *v14 = 1029862253;
  *(v2 + 4) += 4;
  v15 = v2;
LABEL_17:
  v16 = llvm::raw_ostream::operator<<(v15, ((8 * *this) >> 19) + *this - 1);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 1uLL)
  {
    *v17 = 8236;
    *(v16 + 4) += 2;
    v18 = *(v2 + 4);
    if (*(v2 + 3) - v18 > 3uLL)
    {
      goto LABEL_19;
    }
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
    v18 = *(v2 + 4);
    if (*(v2 + 3) - v18 > 3uLL)
    {
LABEL_19:
      *v18 = 1029862252;
      *(v2 + 4) += 4;
      v19 = v2;
      goto LABEL_22;
    }
  }

  v19 = llvm::raw_ostream::write(v2, "lsb=", 4uLL);
LABEL_22:
  v20 = llvm::raw_ostream::operator<<(v19, (8 * *this) >> 19);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 1uLL)
  {
    *v21 = 8236;
    *(v20 + 4) += 2;
    v22 = *(v2 + 4);
    if ((*(v2 + 3) - v22) > 8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    llvm::raw_ostream::write(v20, ", ", 2uLL);
    v22 = *(v2 + 4);
    if ((*(v2 + 3) - v22) > 8)
    {
LABEL_24:
      *(v22 + 8) = 61;
      *v22 = *"IsSigned=";
      *(v2 + 4) += 9;
      v23 = v2;
      goto LABEL_27;
    }
  }

  v23 = llvm::raw_ostream::write(v2, "IsSigned=", 9uLL);
LABEL_27:
  v24 = llvm::raw_ostream::operator<<(v23, (*this >> 29) & 1);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 1uLL)
  {
    *v25 = 8236;
    *(v24 + 4) += 2;
    v26 = *(v2 + 4);
    if ((*(v2 + 3) - v26) > 0x12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    llvm::raw_ostream::write(v24, ", ", 2uLL);
    v26 = *(v2 + 4);
    if ((*(v2 + 3) - v26) > 0x12)
    {
LABEL_29:
      *(v26 + 15) = 1030188649;
      *v26 = *"HasUnsignedPadding=";
      *(v2 + 4) += 19;
      v27 = v2;
      goto LABEL_32;
    }
  }

  v27 = llvm::raw_ostream::write(v2, "HasUnsignedPadding=", 0x13uLL);
LABEL_32:
  v28 = llvm::raw_ostream::operator<<(v27, *this >> 31);
  v29 = *(v28 + 4);
  if (*(v28 + 3) - v29 > 1uLL)
  {
    *v29 = 8236;
    *(v28 + 4) += 2;
    v30 = *(v2 + 4);
    if ((*(v2 + 3) - v30) > 0xB)
    {
      goto LABEL_34;
    }
  }

  else
  {
    llvm::raw_ostream::write(v28, ", ", 2uLL);
    v30 = *(v2 + 4);
    if ((*(v2 + 3) - v30) > 0xB)
    {
LABEL_34:
      *(v30 + 8) = 1029989748;
      *v30 = *"IsSaturated=";
      *(v2 + 4) += 12;
      goto LABEL_37;
    }
  }

  v2 = llvm::raw_ostream::write(v2, "IsSaturated=", 0xCuLL);
LABEL_37:
  v31 = (*this >> 30) & 1;

  return llvm::raw_ostream::operator<<(v2, v31);
}

uint64_t llvm::APFixedPoint::convert@<X0>(llvm::APInt *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = *(a1 + 2);
  if (v43 > 0x40)
  {
    llvm::APInt::initSlowCase(&v42, a1);
  }

  v42 = *a1;
  v7 = *(a1 + 12);
  v44 = *(a1 + 12);
  v8 = ((8 * *(a1 + 4)) >> 19) - ((8 * *a2) >> 19);
  if (a3)
  {
    *a3 = 0;
  }

  if (v8 < 1)
  {
    v12 = -v8;
    if (v7)
    {
      goto LABEL_17;
    }

LABEL_11:
    llvm::APInt::relativeAShr(&v42, v12, &v45);
    v13 = 0;
    v14 = v46;
    v15 = v45;
    if (v43 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v7)
  {
    llvm::APInt::zext(&v42, v43 + v8, &v47);
    v9 = v48;
    v10 = v44;
    v11 = v47;
    if (v43 < 0x41)
    {
      goto LABEL_16;
    }
  }

  else
  {
    llvm::APInt::sext(&v42, v43 + v8, &v47);
    v9 = v48;
    v10 = v44;
    v11 = v47;
    if (v43 < 0x41)
    {
      goto LABEL_16;
    }
  }

  if (v42)
  {
    MEMORY[0x259C63150](v42, 0x1000C8000313F17);
  }

LABEL_16:
  v42 = v11;
  v43 = v9;
  v12 = -v8;
  v44 = v10;
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  llvm::APInt::relativeLShr(&v42, v12, &v47);
  v13 = 1;
  v14 = v48;
  v15 = v47;
  if (v43 < 0x41)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (v42)
  {
    MEMORY[0x259C63150](v42, 0x1000C8000313F17);
  }

LABEL_20:
  v42 = v15;
  v43 = v14;
  v44 = v13;
  if (v14 >= ((((8 * *a2) >> 19) + *a2 - ((*a2 & 0xA0000000) != 0)) & ~((((8 * *a2) >> 19) + *a2 - ((*a2 & 0xA0000000) != 0)) >> 31)) - ((8 * *a2) >> 19))
  {
    v16 = ((((8 * *a2) >> 19) + *a2 - ((*a2 & 0xA0000000) != 0)) & ~((((8 * *a2) >> 19) + *a2 - ((*a2 & 0xA0000000) != 0)) >> 31)) - ((8 * *a2) >> 19);
  }

  else
  {
    v16 = v14;
  }

  v41 = v14;
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v40);
  }

  v40 = 0;
  if (v14 != v16)
  {
    if (v16 > 0x3F)
    {
      llvm::APInt::setBitsSlowCase(&v40, v16, v14);
      v17 = v43;
      v37 = v43;
      if (v43 < 0x41)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v40 |= 0xFFFFFFFFFFFFFFFFLL >> ((v16 | 0x40) - v14) << v16;
      v17 = v43;
      v37 = v43;
      if (v43 < 0x41)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    llvm::APInt::initSlowCase(&v36, &v42);
  }

  v17 = v43;
  v37 = v43;
  if (v43 >= 0x41)
  {
    goto LABEL_32;
  }

LABEL_26:
  v18 = v42 & v40;
  v36 = v42 & v40;
  v39 = v17;
  v38 = v42 & v40;
  v37 = 0;
  if (v18 == v40 || !v18)
  {
    goto LABEL_54;
  }

  if ((*(a2 + 3) & 0x40) == 0)
  {
    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_54;
  }

  if (v44 == 1)
  {
    v19 = v41;
  }

  else
  {
    v19 = v41;
    if ((v42 >> (v43 - 1)))
    {
      v35 = v41;
      if (v41 > 0x40)
      {
        llvm::APInt::initSlowCase(&v34, &v40);
      }

      v20 = 0;
      v34 = v40;
      goto LABEL_48;
    }
  }

  v33 = v19;
  if (v19 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v32, &v40);
  }

  v21 = 0xFFFFFFFFFFFFFFFFLL >> -v19;
  if (!v19)
  {
    v21 = 0;
  }

  v32 = v21 & ~v40;
  v35 = v19;
  v34 = v32;
  v20 = 1;
  v33 = 0;
LABEL_48:
  v42 = v34;
  v43 = v35;
  v35 = 0;
  if (v33 > 0x40)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == 1 && v32)
  {
    MEMORY[0x259C63150](v32, 0x1000C8000313F17);
  }

LABEL_54:
  v23 = v44;
  if ((*a2 & 0x20000000) == 0 && (v44 & 1) == 0)
  {
    v24 = v43;
    v25 = (v42 + 8 * ((v43 - 1) >> 6));
    if (v43 < 0x41)
    {
      v25 = &v42;
    }

    if (((*v25 >> (v43 - 1)) & 1) == 0)
    {
      goto LABEL_62;
    }

    if ((*a2 & 0x40000000) == 0)
    {
      if (a3)
      {
        *a3 = 1;
LABEL_65:
        v26 = *a2;
        goto LABEL_70;
      }

LABEL_62:
      v26 = *a2;
      goto LABEL_70;
    }

    if (v43 <= 0x40)
    {
      v42 = 0;
      goto LABEL_65;
    }

    *v42 = 0;
    bzero((v42 + 8), (((v24 + 63) >> 3) - 8) & 0xFFFFFFF8);
    v23 = v44;
  }

  v26 = *a2;
  if (v23)
  {
    result = llvm::APInt::zextOrTrunc(&v42, v26, &v47);
    v28 = v48;
    v29 = v47;
    if (v43 < 0x41)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = llvm::APInt::sextOrTrunc(&v42, v26, &v45);
  v28 = v46;
  v29 = v45;
  if (v43 < 0x41)
  {
    goto LABEL_73;
  }

LABEL_71:
  result = v42;
  if (v42)
  {
    result = MEMORY[0x259C63150](v42, 0x1000C8000313F17);
  }

LABEL_73:
  v42 = v29;
  v43 = v28;
  v30 = *a2;
  v31 = *a2 & 0x20000000;
  v44 = v31 == 0;
  v48 = v28;
  if (v28 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v47, &v42);
  }

  *(a4 + 8) = v28;
  *a4 = v29;
  *(a4 + 12) = v31 == 0;
  *(a4 + 16) = v30;
  if (v39 >= 0x41)
  {
    result = v38;
    if (v38)
    {
      result = MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }
  }

  if (v41 >= 0x41)
  {
    result = v40;
    if (v40)
    {
      result = MEMORY[0x259C63150](v40, 0x1000C8000313F17);
    }
  }

  if (v43 >= 0x41)
  {
    result = v42;
    if (v42)
    {
      return MEMORY[0x259C63150](v42, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APFixedPoint::compare(llvm::APInt *a1, llvm::APInt *a2)
{
  v4 = *(a1 + 2);
  v49 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, a1);
  }

  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = (v6 & 0x20000000) == 0;
  v46 = v4;
  v45 = v5;
  v47 = v7;
  v8 = *(a2 + 2);
  v49 = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, a2);
  }

  v9 = *a2;
  v10 = *(a2 + 4);
  v37 = v10 & 0x20000000;
  v43 = v8;
  v42 = v9;
  v44 = (v10 & 0x20000000) == 0;
  v11 = *(a1 + 12);
  v12 = (8 * v6) >> 19;
  v13 = (8 * v10) >> 19;
  if (v13 >= v12)
  {
    v14 = (8 * v6) >> 19;
  }

  else
  {
    v14 = (8 * v10) >> 19;
  }

  v15 = v12 + v6 - 1;
  if (v15 <= v13 + v10 - 1)
  {
    v15 = v13 + v10 - 1;
  }

  v16 = v15 - v14;
  if (v7)
  {
    llvm::APInt::zextOrTrunc(&v45, v16 + 1, &v48);
  }

  else
  {
    llvm::APInt::sextOrTrunc(&v45, v16 + 1, &v48);
  }

  v17 = v49;
  v18 = v47;
  v19 = v48;
  if (v46 >= 0x41 && v45)
  {
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
  }

  v45 = v19;
  v46 = v17;
  v47 = v18;
  if (v44)
  {
    llvm::APInt::zextOrTrunc(&v42, v16 + 1, &v48);
    v20 = v49;
    v21 = v44;
    v22 = v48;
    if (v43 < 0x41)
    {
      goto LABEL_23;
    }
  }

  else
  {
    llvm::APInt::sextOrTrunc(&v42, v16 + 1, &v48);
    v20 = v49;
    v21 = v44;
    v22 = v48;
    if (v43 < 0x41)
    {
      goto LABEL_23;
    }
  }

  if (v42)
  {
    MEMORY[0x259C63150](v42, 0x1000C8000313F17);
  }

LABEL_23:
  v42 = v22;
  v43 = v20;
  v44 = v21;
  v23 = ((8 * *(a1 + 4)) >> 19) - v14;
  v41 = v46;
  if (v46 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v40, &v45);
  }

  v24 = v45 << v23;
  if (v46 == v23)
  {
    v24 = 0;
  }

  if (v46)
  {
    v25 = 0xFFFFFFFFFFFFFFFFLL >> -v46;
  }

  else
  {
    v25 = 0;
  }

  v40 = v25 & v24;
  v45 = v25 & v24;
  v46 = v41;
  v41 = 0;
  v26 = ((8 * *(a2 + 4)) >> 19) - v14;
  v39 = v43;
  if (v43 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v38, &v42);
  }

  v27 = v42 << v26;
  if (v43 == v26)
  {
    v27 = 0;
  }

  if (v43)
  {
    v28 = 0xFFFFFFFFFFFFFFFFLL >> -v43;
  }

  else
  {
    v28 = 0;
  }

  v38 = v28 & v27;
  v29 = v10 & 0x20000000;
  v42 = v38;
  v30 = v39;
  v43 = v39;
  v39 = 0;
  if ((v11 & 1) != 0 || !v29)
  {
    if (!v11 || v29)
    {
      if ((v11 | (v37 >> 29)))
      {
        v33 = (v38 + 8 * ((v30 - 1) >> 6));
        if (v30 < 0x41)
        {
          v33 = &v42;
        }

        if ((*v33 >> (v30 - 1)))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v34 = v46 - 1;
        v35 = &v45;
        if (v46 >= 0x41)
        {
          v35 = (v45 + 8 * (v34 >> 6));
        }

        if ((*v35 >> v34))
        {
          goto LABEL_56;
        }
      }
    }

    v31 = llvm::APInt::compare(&v45, &v42);
    if (v31 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v31 = llvm::APInt::compareSigned(&v45, &v42);
    if (v31 <= 0)
    {
LABEL_44:
      if ((v31 & 0x80000000) == 0)
      {
        v32 = 0;
        if (v30 < 0x41)
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }

LABEL_56:
      v32 = 0xFFFFFFFFLL;
      if (v30 < 0x41)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }
  }

LABEL_51:
  v32 = 1;
  if (v30 < 0x41)
  {
    goto LABEL_59;
  }

LABEL_57:
  if (v38)
  {
    MEMORY[0x259C63150](v38, 0x1000C8000313F17);
  }

LABEL_59:
  if (v46 >= 0x41 && v45)
  {
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
  }

  return v32;
}

int *llvm::APFixedPoint::getMax@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *result;
  v14 = v4;
  if ((v3 & 0x20000000) != 0)
  {
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(&v13);
    }

    v6 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v4)
    {
      v6 = 0;
    }

    v13 = v6 & ~(1 << (v4 - 1));
    v4 = v14;
    v11 = v14;
    v5 = v13;
    v10 = v13;
    v12 = 0;
  }

  else
  {
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(&v13);
    }

    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v4)
    {
      v5 = 0;
    }

    v11 = v4;
    v10 = v5;
    v12 = 1;
    if (v3 < 0)
    {
      if (v4 == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v5 >> 1;
      }

      v5 = v9;
      v10 = v9;
      v11 = v4;
      v14 = v4;
      goto LABEL_15;
    }
  }

  v14 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v13, &v10);
  }

LABEL_15:
  v7 = *result;
  v8 = (*result & 0x20000000) == 0;
  *(a2 + 8) = v4;
  *a2 = v5;
  *(a2 + 12) = v8;
  *(a2 + 16) = v7;
  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

int *llvm::APFixedPoint::getMin@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *result;
  v12 = v4;
  if ((v3 & 0x20000000) != 0)
  {
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(&v11);
    }

    v11 = 1 << (v4 - 1);
    v4 = v12;
    v5 = v11;
    v9 = v12;
    v8 = v11;
    v10 = (v3 & 0x20000000) == 0;
    if (v12 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v11, &v8);
    }
  }

  else
  {
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(&v11);
    }

    v5 = 0;
    v9 = v4;
    v8 = 0;
    v10 = 1;
  }

  v6 = *result;
  v7 = (*result & 0x20000000) == 0;
  *(a2 + 8) = v4;
  *a2 = v5;
  *(a2 + 12) = v7;
  *(a2 + 16) = v6;
  return result;
}

int *llvm::APFixedPoint::getEpsilon@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v6 = *result;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5);
  }

  v7 = (v2 & 0x20000000) == 0;
  v5 = 1;
  v8 = v6;
  v3 = *result;
  v4 = (*result & 0x20000000) == 0;
  *(a2 + 8) = v6;
  *a2 = 1;
  *(a2 + 12) = v4;
  *(a2 + 16) = v3;
  return result;
}

BOOL llvm::FixedPointSemantics::fitsInFloatSemantics(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  Max = llvm::APFixedPoint::getMax(a1, &v20);
  v10 = v21;
  if (v21 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v9, &v20);
  }

  v5 = v22;
  v16 = v21;
  v15 = v20;
  v17 = (v22 & 0x20000000) == 0;
  v6 = llvm::APFloatBase::PPCDoubleDouble(Max);
  if (v6 == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v21, a2);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v21, a2);
  if (v6 == v21)
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt();
  }

  if ((llvm::detail::IEEEFloat::convertFromAPInt(&v21, &v15, (v5 >> 29) & 1, 4) & 4) != 0)
  {
    v7 = 0;
  }

  else if ((*(a1 + 3) & 0x20) != 0)
  {
    llvm::APFixedPoint::getMin(a1, &v9);
    v19 = v10;
    if (v10 >= 0x41)
    {
      llvm::APInt::initSlowCase(v18, &v9);
    }

    v13 = v10;
    v12 = v9;
    v14 = (v11 & 0x20000000) == 0;
    if (v6 == v21)
    {
      llvm::detail::DoubleAPFloat::convertFromAPInt();
    }

    v7 = (llvm::detail::IEEEFloat::convertFromAPInt(&v21, &v12, (v11 >> 29) & 1, 4) & 4) == 0;
    if (v13 >= 0x41 && v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  else
  {
    v7 = 1;
  }

  if (v6 == v21)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v21);
    if (v16 < 0x41)
    {
      return v7;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v21);
    if (v16 < 0x41)
    {
      return v7;
    }
  }

  if (v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

  return v7;
}