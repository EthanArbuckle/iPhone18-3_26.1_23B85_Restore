uint64_t mlir::PassInfo::lookup(unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3)
{
  if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

  v5 = _MergedGlobals_26[0];
  v6 = llvm::xxh3_64bits(a1, a2, a3);
  Key = llvm::StringMapImpl::FindKey(v5, a1, a2, v6);
  if (Key == -1)
  {
    v8 = *(v5 + 8);
  }

  else
  {
    v8 = Key;
  }

  v9 = (*v5 + 8 * v8);
  if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

  if ((*_MergedGlobals_26[0] + 8 * *(_MergedGlobals_26[0] + 8)) == v9)
  {
    return 0;
  }

  else
  {
    return *v9 + 8;
  }
}

uint64_t mlir::PassPipelineInfo::lookup(unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3)
{
  if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  v5 = qword_27FC1EE70[0];
  v6 = llvm::xxh3_64bits(a1, a2, a3);
  Key = llvm::StringMapImpl::FindKey(v5, a1, a2, v6);
  if (Key == -1)
  {
    v8 = *(v5 + 8);
  }

  else
  {
    v8 = Key;
  }

  v9 = (*v5 + 8 * v8);
  if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  if ((*qword_27FC1EE70[0] + 8 * *(qword_27FC1EE70[0] + 8)) == v9)
  {
    return 0;
  }

  else
  {
    return *v9 + 8;
  }
}

uint64_t mlir::detail::pass_options::parseCommaSeparatedList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, uint64_t), uint64_t a7)
{
  v20 = a4;
  v21 = a5;
  if (!a5)
  {
    return 1;
  }

  v8 = a5;
  Char = findChar(a4, a5, 0, 0x2Cu);
  if (Char == -1)
  {
LABEL_9:
    ArgAndUpdateOptions = extractArgAndUpdateOptions(&v20, v8);

    return a6(a7, ArgAndUpdateOptions, v16);
  }

  else
  {
    v10 = Char;
    while (1)
    {
      v11 = extractArgAndUpdateOptions(&v20, v10);
      if ((a6(a7, v11, v12) & 1) == 0)
      {
        return 0;
      }

      v13 = v21;
      v14 = v21 != 0;
      if (v21)
      {
        v15 = v20 + 1;
      }

      else
      {
        v15 = v20;
      }

      v8 = v21 - v14;
      v20 = v15;
      v21 -= v14;
      v10 = findChar(v15, v13 - v14, 0, 0x2Cu);
      if (v10 == -1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t findChar(uint64_t a1, unint64_t a2, unint64_t Char, unsigned __int8 a4)
{
  if (a2 > Char)
  {
    v6 = a4;
    while (1)
    {
      v7 = *(a1 + Char);
      if (v7 == v6)
      {
        return Char;
      }

      if (*(a1 + Char) <= 0x27u)
      {
        if (v7 == 34)
        {
          v14 = Char + 1;
          v10 = a2 >= Char + 1;
          v11 = a2 - (Char + 1);
          if (v11 == 0 || !v10)
          {
            return -1;
          }

          v12 = (a1 + v14);
          v13 = 34;
LABEL_20:
          v15 = memchr(v12, v13, v11);
          if (!v15)
          {
            return -1;
          }

          Char = v15 - a1;
LABEL_22:
          if (Char == -1)
          {
            return Char;
          }

          goto LABEL_23;
        }

        if (v7 == 39)
        {
          v9 = Char + 1;
          v10 = a2 >= Char + 1;
          v11 = a2 - (Char + 1);
          if (v11 == 0 || !v10)
          {
            return -1;
          }

          v12 = (a1 + v9);
          v13 = 39;
          goto LABEL_20;
        }
      }

      else
      {
        switch(v7)
        {
          case '{':
            v8 = 125;
            goto LABEL_16;
          case '[':
            v8 = 93;
            goto LABEL_16;
          case '(':
            v8 = 41;
LABEL_16:
            Char = findChar(a1, a2, Char + 1, v8);
            goto LABEL_22;
        }
      }

LABEL_23:
      if (++Char >= a2)
      {
        return -1;
      }
    }
  }

  return -1;
}

unint64_t extractArgAndUpdateOptions(llvm::StringRef *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 >= a2)
  {
    v4 = a2;
  }

  v21 = *a1;
  v22 = v4;
  v5 = llvm::StringRef::trim(&v21, " \t\n\v\f\r", 6);
  v7 = v6;
  v9 = *a1;
  v8 = *(a1 + 1);
  if (v8 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = *(a1 + 1);
  }

  v11 = v9 + v10;
  v12 = v8 - v10;
  v21 = (v9 + v10);
  v22 = v8 - v10;
  first_not_of = llvm::StringRef::find_first_not_of(&v21, " \t\n\v\f\r", 6, 0);
  if (first_not_of >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = first_not_of;
  }

  *a1 = v11 + v14;
  *(a1 + 1) = v12 - v14;
  if (v7 >= 2)
  {
    v15 = 0;
    v20 = 572663591;
    v16 = *v5;
    do
    {
      if (v16 == *(&v20 + v15) && v5[v7 - 1] == *(&v20 + v15 + 1))
      {
        v21 = v5 + 1;
        v22 = v7 - 2;
        return llvm::StringRef::trim(&v21, " \t\n\v\f\r", 6);
      }

      v15 += 2;
    }

    while (v15 != 4);
    if (v16 == 123)
    {
      Char = findChar(v5, v7, 1uLL, 0x7Du);
      v18 = Char;
      if (Char == v7 - 1)
      {
        if (Char >= v7 - 2)
        {
          v18 = v7 - 2;
        }

        v21 = v5 + 1;
        v22 = v18;
        return llvm::StringRef::trim(&v21, " \t\n\v\f\r", 6);
      }
    }
  }

  return v5;
}

uint64_t mlir::detail::PassOptions::copyOptionValuesFrom(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  v3 = *(result + 168);
  v4 = *(result + 160);
  if (v4 != v3)
  {
    v5 = *(a2 + 160);
    v6 = *(a2 + 168);
    if (v5 != v6)
    {
      v7 = v5 + 8;
      v8 = v4 + 8;
      do
      {
        result = (*(**(v8 - 8) + 40))(*(v8 - 8), *(v7 - 8));
        if (v8 == v3)
        {
          break;
        }

        v8 += 8;
        v9 = v7 == v6;
        v7 += 8;
      }

      while (!v9);
    }
  }

  return result;
}

uint64_t mlir::detail::PassOptions::parseFromString(uint64_t a1, uint64_t a2, unint64_t a3, llvm::raw_ostream *a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  while (1)
  {
    v8 = 0;
    v45 = a2;
    v46 = v5;
    do
    {
      v9 = *(a2 + v8);
      if (v9 == 61)
      {
        ArgAndUpdateOptions = extractArgAndUpdateOptions(&v45, v8);
        v12 = v15;
        v16 = v46;
        v17 = v46 != 0;
        if (v46)
        {
          v18 = v45 + 1;
        }

        else
        {
          v18 = v45;
        }

        v19 = v46 - v17;
        v45 = v18;
        v46 -= v17;
        if (v16 < 2)
        {
          v20 = 0;
LABEL_57:
          v14 = extractArgAndUpdateOptions(&v45, v20);
          v13 = v37;
          goto LABEL_58;
        }

        v20 = 0;
        while (1)
        {
          v21 = *(v18 + v20);
          switch(v21)
          {
            case '""':
              v33 = v20 + 1;
              if (v19 > v20 + 1)
              {
                v34 = 34;
LABEL_50:
                v35 = memchr((v18 + v33), v34, v19 - v33);
                if (&v35[-v18] != -1 && v35 != 0)
                {
                  v20 = &v35[-v18];
                }
              }

              break;
            case '\'':
              v33 = v20 + 1;
              if (v19 > v20 + 1)
              {
                v34 = 39;
                goto LABEL_50;
              }

              break;
            case ' ':
              goto LABEL_57;
            default:
              v22 = (v20 + 1);
              v23 = v21 != 123 || v22 == v19;
              if (!v23)
              {
                v24 = 1;
                do
                {
                  v25 = v22[v18];
                  if (v25 > 0x7A)
                  {
                    if (v25 == 123)
                    {
                      ++v24;
                    }

                    else if (v25 == 125 && !--v24)
                    {
                      goto LABEL_55;
                    }
                  }

                  else if (v25 == 34)
                  {
                    v28 = v19 - (v20 + 2);
                    if (v19 > v20 + 2)
                    {
                      v29 = (v18 + v20 + 2);
                      v30 = 34;
LABEL_37:
                      v31 = memchr(v29, v30, v28);
                      if (&v31[-v18] != -1 && v31 != 0)
                      {
                        v22 = &v31[-v18];
                      }
                    }
                  }

                  else
                  {
                    v23 = v25 == 39;
                    v26 = v20 + 2;
                    if (v23 && v19 > v26)
                    {
                      v28 = v19 - v26;
                      v29 = (v18 + v26);
                      v30 = 39;
                      goto LABEL_37;
                    }
                  }

                  v20 = v22++;
                }

                while (v22 != v19);
              }

              break;
          }

LABEL_55:
          if (++v20 == v19)
          {
            v20 = v19;
            goto LABEL_57;
          }
        }
      }

      if (v9 == 32)
      {
        goto LABEL_8;
      }

      ++v8;
    }

    while (v5 != v8);
    v8 = v5;
LABEL_8:
    ArgAndUpdateOptions = extractArgAndUpdateOptions(&v45, v8);
    v12 = v11;
    v13 = 0;
    v14 = 0;
LABEL_58:
    a2 = v45;
    v5 = v46;
    if (v12)
    {
      break;
    }

LABEL_61:
    if (!v5)
    {
      return 1;
    }
  }

  v38 = llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::find(a1 + 128, ArgAndUpdateOptions, v12);
  if (*(a1 + 128) + 8 * *(a1 + 136) == v38)
  {
    v41 = *(a4 + 4);
    if (*(a4 + 3) - v41 > 0x25uLL)
    {
      qmemcpy(v41, "<Pass-Options-Parser>: no such option ", 38);
      *(a4 + 4) += 38;
    }

    else
    {
      a4 = llvm::raw_ostream::write(a4, "<Pass-Options-Parser>: no such option ", 0x26uLL);
    }

    v42 = llvm::raw_ostream::operator<<(a4, ArgAndUpdateOptions, v12);
    v43 = v42;
    v44 = *(v42 + 4);
    if (*(v42 + 3) == v44)
    {
      llvm::raw_ostream::write(v42, "\n", 1uLL);
      return 0;
    }

    result = 0;
    *v44 = 10;
    ++*(v43 + 4);
  }

  else
  {
    v39 = *(*v38 + 8);
    LODWORD(v45) = 0;
    if ((ProvideOption(v39, *(v39 + 16), *(v39 + 24), v14, v13, 0, 0, &v45) & 1) == 0)
    {
      goto LABEL_61;
    }

    return 0;
  }

  return result;
}

void mlir::detail::PassOptions::print(mlir::detail::PassOptions *this, llvm::raw_ostream *a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (*(this + 35))
  {
    v3 = *(this + 20);
    v4 = *(this + 21);
    __base = v16;
    __nel = 0x400000000;
    llvm::SmallVectorImpl<mlir::detail::PassOptions::OptionBase *>::append<std::__wrap_iter<mlir::detail::PassOptions::OptionBase * const*>,void>(&__base, v3, v4);
    if (__nel >= 2)
    {
      qsort(__base, __nel, 8uLL, mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke);
    }

    v5 = *(a2 + 4);
    if (v5 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 123);
    }

    else
    {
      *(a2 + 4) = v5 + 1;
      *v5 = 123;
    }

    v6 = __nel;
    if (__nel)
    {
      v7 = __base;
      (*(**__base + 24))(*__base, a2);
      if (v6 != 1)
      {
        v8 = (v7 + 8);
        v9 = 8 * v6 - 8;
        do
        {
          v10 = *(a2 + 4);
          if (*(a2 + 3) == v10)
          {
            llvm::raw_ostream::write(a2, " ", 1uLL);
          }

          else
          {
            *v10 = 32;
            ++*(a2 + 4);
          }

          v11 = *v8++;
          (*(*v11 + 24))(v11, a2);
          v9 -= 8;
        }

        while (v9);
      }
    }

    v12 = *(a2 + 4);
    if (v12 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 125);
    }

    else
    {
      *(a2 + 4) = v12 + 1;
      *v12 = 125;
    }

    if (__base != v16)
    {
      free(__base);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

char *mlir::parsePassPipeline@<X0>(char *a1@<X0>, size_t a2@<X1>, llvm::raw_ostream *a3@<X2>, _BYTE *a4@<X8>)
{
  v14 = a1;
  v15 = a2;
  result = llvm::StringRef::trim(&v14, " \t\n\v\f\r", 6);
  v14 = result;
  v15 = v7;
  if (v7)
  {
    v8 = result;
    v9 = v7;
    result = memchr(result, 40, v7);
    v10 = result ? result - v8 : -1;
    if (v10 + 1 >= 2 && v8[v9 - 1] == 41)
    {
      v15 = v9 - 1;
      if (v9 - 1 <= v10)
      {
        v11 = (v9 - 1);
      }

      else
      {
        v11 = (result - v8);
      }

      v13[0] = v8;
      v13[1] = v11;
      llvm::StringRef::find_last_not_of(v13, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
      operator new();
    }
  }

  v12 = *(a3 + 4);
  if (*(a3 + 3) - v12 > 0x5EuLL)
  {
    qmemcpy(v12, "expected pass pipeline to be wrapped with the anchor operation type, e.g. 'builtin.module(...)'", 95);
    *(a3 + 4) += 95;
  }

  else
  {
    result = llvm::raw_ostream::write(a3, "expected pass pipeline to be wrapped with the anchor operation type, e.g. 'builtin.module(...)'", 0x5FuLL);
  }

  *a4 = 0;
  a4[8] = 0;
  return result;
}

BOOL llvm::cl::OptionValue<mlir::OpPassManager>::compare(uint64_t a1, const char **a2)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v21 = 0;
  v25 = 0;
  v26 = 1;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = &unk_286E79D28;
  v27 = &v31;
  llvm::raw_ostream::SetUnbuffered(&v20);
  mlir::OpPassManager::printAsTextualPipeline(*(a1 + 8), &v20);
  v13 = 0;
  v17 = 0;
  v18 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12 = &unk_286E79D28;
  v19 = &v28;
  llvm::raw_ostream::SetUnbuffered(&v12);
  mlir::OpPassManager::printAsTextualPipeline(a2, &v12);
  llvm::raw_ostream::~raw_ostream(&v12);
  llvm::raw_ostream::~raw_ostream(&v20);
  v4 = 0;
  v5 = HIBYTE(v33);
  if (v33 >= 0)
  {
    v6 = HIBYTE(v33);
  }

  else
  {
    v6 = v32;
  }

  v7 = HIBYTE(v30);
  v8 = SHIBYTE(v30);
  if (v30 < 0)
  {
    v7 = v29;
  }

  if (v6 != v7)
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    operator delete(v28);
    if ((v33 & 0x8000000000000000) == 0)
    {
      return v4;
    }

LABEL_18:
    operator delete(v31);
    return v4;
  }

  if (v33 >= 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31;
  }

  if (v30 >= 0)
  {
    v11 = &v28;
  }

  else
  {
    v11 = v28;
  }

  v4 = memcmp(v10, v11, v6) == 0;
  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v5 < 0)
  {
    goto LABEL_18;
  }

  return v4;
}

uint64_t llvm::cl::parser<mlir::OpPassManager>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, size_t a6)
{
  v8 = llvm::errs(a1);
  mlir::parsePassPipeline(a5, a6, v8, &v10);
  if (v11 == 1)
  {
    operator new();
  }

  return v11 ^ 1u;
}

uint64_t mlir::parsePassPipeline(char *a1, unint64_t a2, uint64_t *a3, llvm::raw_ostream *a4)
{
  v5 = a3;
  v86 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v71 = 0;
  v72 = 0;
  if (!a2)
  {
    v59 = 0;
    v60 = 0;
    goto LABEL_81;
  }

  v6 = a2;
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v85 = 261;
  v82 = "MLIR Textual PassPipeline Parser";
  v83 = 32;
  v80[0] = &v82;
  v8 = operator new(24, v80);
  *v8 = &unk_286E796E0;
  *(v8 + 1) = a1;
  *(v8 + 2) = &a1[v6];
  v83 = 0;
  v84[0] = 0;
  v82 = v8;
  std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](v75, &v82);
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v82);
  v73 = v75;
  v74 = a4;
  v68 = a4;
  v77 = a1;
  v78 = v6;
  v82 = v84;
  v84[0] = &v70;
  v9 = 1;
  v10 = " \t\n\v\f\r";
  v83 = 0x400000001;
  for (i = v84; ; i = v82)
  {
    v12 = *&i[8 * v9 - 8];
    first_of = llvm::StringRef::find_first_of(&v77, ",(){", 4, 0);
    v14 = first_of;
    if (v6 >= first_of)
    {
      v15 = first_of;
    }

    else
    {
      v15 = v6;
    }

    v80[0] = a1;
    v80[1] = v15;
    v16 = v10;
    v17 = llvm::StringRef::trim(v80, v10, 6);
    v21 = *(v12 + 8);
    v20 = *(v12 + 16);
    if (v21 >= v20)
    {
      v23 = *v12;
      v24 = (v21 - *v12) >> 6;
      v25 = v24 + 1;
      if ((v24 + 1) >> 58)
      {
      }

      v26 = v20 - v23;
      if (v26 >> 5 > v25)
      {
        v25 = v26 >> 5;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFC0)
      {
        v27 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (!(v27 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v28 = (v21 - *v12) >> 6;
      v29 = v24 << 6;
      *v29 = v17;
      *(v29 + 8) = v18;
      *(v29 + 16) = 0u;
      *(v29 + 32) = 0u;
      *(v29 + 48) = 0u;
      v30 = v29 - (v28 << 6);
      if (v23 != v21)
      {
        v31 = v23;
        v32 = v30;
        do
        {
          v33 = *v31;
          v34 = *(v31 + 1);
          *(v32 + 32) = v31[4];
          *v32 = v33;
          *(v32 + 16) = v34;
          *(v32 + 48) = 0;
          *(v32 + 56) = 0;
          *(v32 + 40) = *(v31 + 5);
          *(v32 + 56) = v31[7];
          v31[5] = 0;
          v31[6] = 0;
          v31[7] = 0;
          v31 += 8;
          v32 += 64;
        }

        while (v31 != v21);
        do
        {
          v79 = v23 + 5;
          v23 += 8;
        }

        while (v23 != v21);
        v23 = *v12;
      }

      v22 = v29 + 64;
      *v12 = v30;
      *(v12 + 8) = v29 + 64;
      *(v12 + 16) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v21 = v17;
      *(v21 + 8) = v18;
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0u;
      v22 = v21 + 64;
      *(v21 + 48) = 0u;
    }

    v10 = v16;
    *(v12 + 8) = v22;
    if (v14 == -1)
    {
      goto LABEL_84;
    }

    v35 = v78 >= v14 ? v14 : v78;
    v36 = &v77[v35];
    v37 = v78 - v35;
    v77 = v36;
    v38 = *v36;
    if (v38 != 40)
    {
      break;
    }

    if (v78 <= v14)
    {
      a1 = v36;
    }

    else
    {
      a1 = v36 + 1;
    }

    v6 = (__PAIR128__(v37, v14) - v78) >> 64;
    v77 = a1;
    v78 = v6;
    v44 = *(v12 + 8);
    v45 = v83;
    if (v83 >= HIDWORD(v83))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v83 + 1, 8);
      v45 = v83;
    }

    *&v82[8 * v45] = v44 - 24;
    v9 = v83 + 1;
    LODWORD(v83) = v83 + 1;
LABEL_69:
    ;
  }

  if (v38 != 123)
  {
    goto LABEL_58;
  }

  if (v78 <= v14)
  {
    v39 = v36;
  }

  else
  {
    v39 = v36 + 1;
  }

  v40 = (__PAIR128__(v37, v14) - v78) >> 64;
  if (!v40)
  {
LABEL_71:
    v61 = "missing closing '}' while processing pass options";
    v36 = v39 - 1;
    goto LABEL_73;
  }

  v41 = 0;
  v42 = 1;
  while (1)
  {
    v43 = v39[v41];
    if (v43 != 125)
    {
      if (v43 == 123)
      {
        ++v42;
      }

      goto LABEL_40;
    }

    if (!--v42)
    {
      break;
    }

LABEL_40:
    if (v40 == ++v41)
    {
      goto LABEL_71;
    }
  }

  if (v40 >= v41)
  {
    v46 = v41;
  }

  else
  {
    v46 = v40;
  }

  v47 = *(v12 + 8);
  *(v47 - 48) = v39;
  *(v47 - 40) = v46;
  if (v40 >= v41 + 1)
  {
    v48 = v41 + 1;
  }

  else
  {
    v48 = v40;
  }

  v49 = &v39[v48];
  v50 = v40 - v48;
  v77 = &v39[v48];
  v78 = v40 - v48;
  first_not_of = llvm::StringRef::find_first_not_of(&v77, v16, 6, 0);
  if (first_not_of >= v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = first_not_of;
  }

  v36 = &v49[v52];
  v37 = v50 - v52;
  v77 = v36;
LABEL_58:
  if (!v37)
  {
LABEL_84:
    v67 = v83;
LABEL_85:
    LOBYTE(v53) = 1;
    a4 = v68;
    v5 = a3;
    if (v67 >= 2)
    {
      v80[0] = "encountered unbalanced parentheses while parsing pipeline";
      v81 = 259;
      llvm::SourceMgr::PrintMessage(v73, v74, v77, 0, v80, 0, 0, v19, 0, 0, 1u);
      LOBYTE(v53) = 0;
    }

    goto LABEL_76;
  }

  v53 = v83 - 1;
  while (1)
  {
    v54 = *v36;
    if (v54 != 41)
    {
      break;
    }

    v55 = v36 + 1;
    v56 = v37 - 1;
    v77 = v36 + 1;
    v78 = v37 - 1;
    if (!v53)
    {
      v80[0] = "encountered extra closing ')' creating unbalanced parentheses while parsing pipeline";
      v81 = 259;
      llvm::SourceMgr::PrintMessage(v73, v74, v36, 0, v80, 0, 0, v19, 0, 0, 1u);
      goto LABEL_75;
    }

    LODWORD(v83) = v53;
    v57 = llvm::StringRef::find_first_not_of(&v77, v16, 6, 0);
    if (v57 >= v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = v57;
    }

    v36 = &v55[v58];
    --v53;
    v37 = v56 - v58;
    v77 = v36;
    v78 = v37;
    if (!v37)
    {
      v67 = v53 + 1;
      goto LABEL_85;
    }
  }

  if (v54 == 44)
  {
    a1 = v36 + 1;
    v6 = v37 - 1;
    v77 = v36 + 1;
    v78 = v37 - 1;
    v9 = v53 + 1;
    goto LABEL_69;
  }

  v61 = "expected ',' after parsing pipeline";
LABEL_73:
  v80[0] = v61;
  v81 = 259;
  llvm::SourceMgr::PrintMessage(v73, v74, v36, 0, v80, 0, 0, v19, 0, 0, 1u);
  LOBYTE(v53) = 0;
LABEL_75:
  a4 = v68;
  v5 = a3;
LABEL_76:
  if (v82 != v84)
  {
    free(v82);
  }

  if (v53)
  {
    llvm::SourceMgr::~SourceMgr(v75);
    if (v62)
    {
      v60 = v70;
      v59 = v71;
LABEL_81:
      *&v75[0] = a4;
      v63 = *(*v5 + 68);
      *(*v5 + 68) = 1;
      *(*v5 + 68) = v63;
      v62 = v64 & 1;
    }
  }

  else
  {
    llvm::SourceMgr::~SourceMgr(v75);
    v62 = 0;
  }

  *&v75[0] = &v70;
  v65 = *MEMORY[0x277D85DE8];
  return v62;
}

llvm::cl::Option **std::unique_ptr<mlir::detail::PassPipelineCLParserImpl>::~unique_ptr[abi:nn200100](llvm::cl::Option **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x25F891040]();
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<mlir::PassRegistryEntry *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

void *std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E84D38;
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E84D38;
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x25F891040);
}

void std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v25 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](v25, v26);
  }

  v6 = *a3;
  v7 = a3[1];
  v8 = *a4;
  v9 = *(a4 + 8);
  (*(*v4 + 48))(&v39);
  v10 = (*(*v39 + 48))(v39, v6, v7, v8, v9);
  v11 = *a2;
  v12 = *(*a2 + 23);
  if ((v12 & 0x8000000000000000) == 0)
  {
    if (*(*a2 + 23))
    {
      goto LABEL_4;
    }

LABEL_21:
    v15 = v39;
    goto LABEL_22;
  }

  if (!*(v11 + 8))
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v12 >= 0)
  {
    v13 = *a2;
  }

  else
  {
    v13 = *v11;
  }

  if (v12 >= 0)
  {
    v14 = *(*a2 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  v15 = v39;
  if (*(v11 + 68) != 1 || (*(v39 + 32) & 1) == 0 || v14 == *(v39 + 24) && (!v14 || !memcmp(v13, *(v39 + 16), v14)))
  {
LABEL_22:
    v39 = 0;
    v37[0] = v15;
    mlir::OpPassManager::addPass(a2, v37);
    if (v37[0])
    {
      (*(*v37[0] + 8))(v37[0]);
    }

    goto LABEL_24;
  }

  v16 = (*(*v15 + 16))(v15);
  v27[0] = "Can't add pass '";
  v27[2] = v16;
  v27[3] = v17;
  v28 = 1283;
  v29[0] = v27;
  v29[2] = "' restricted to '";
  v30 = 770;
  v18 = *(v39 + 16);
  v19 = *(v39 + 24);
  v31[0] = v29;
  v31[2] = v18;
  v31[3] = v19;
  v32 = 1282;
  v33[0] = v31;
  v33[2] = "' on a PassManager intended to run on '";
  v34 = 770;
  v20 = *a2;
  v21 = *(*a2 + 23);
  if (v21 < 0)
  {
    if (*(v20 + 1))
    {
LABEL_17:
      v22 = *(v20 + 1);
      if (v21 < 0)
      {
        v20 = *v20;
        v21 = v22;
      }

      goto LABEL_29;
    }
  }

  else if (*(*a2 + 23))
  {
    goto LABEL_17;
  }

  v20 = "any";
  v21 = 3;
LABEL_29:
  v35[0] = v33;
  v35[2] = v20;
  v35[3] = v21;
  v36 = 1282;
  v37[0] = v35;
  v37[2] = "', did you intend to nest?";
  v38 = 770;
  v10 = v8(v9, v37);
LABEL_24:
  v23 = v39;
  v39 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  return v10;
}

uint64_t std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke(void *a1, void *a2)
{
  v6 = *((*(**a1 + 32))(*a1) + 16);
  v4 = (*(**a2 + 32))(*a2, v3);
  return llvm::StringRef::compare(&v6, *(v4 + 16), *(v4 + 24));
}

uint64_t mlir::detail::PassOptions::printHelp(unsigned long,unsigned long)const::$_0::__invoke(void *a1, void *a2)
{
  v6 = *((*(**a1 + 32))(*a1) + 16);
  v4 = (*(**a2 + 32))(*a2, v3);
  return llvm::StringRef::compare(&v6, *(v4 + 16), *(v4 + 24));
}

uint64_t anonymous namespace::TextualPipeline::resolvePipelineElements(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v7 = a2 << 6;
  while (*(a1 + 40) != *(a1 + 48))
  {
    {
      return 0;
    }

LABEL_9:
    a1 += 64;
    v7 -= 64;
    if (!v7)
    {
      return 1;
    }
  }

  v8 = mlir::PassPipelineInfo::lookup(*a1, *(a1 + 8), a3);
  *(a1 + 32) = v8;
  if (v8)
  {
    goto LABEL_9;
  }

  v9 = mlir::PassInfo::lookup(*a1, *(a1 + 8), a3);
  *(a1 + 32) = v9;
  if (v9)
  {
    goto LABEL_9;
  }

  v10 = *a1;
  v11 = *(a1 + 8);
  v14 = 1283;
  v13[0] = "'";
  v13[2] = v10;
  v13[3] = v11;
  v15 = v13;
  v16 = "' does not refer to a registered pass or pass pipeline";
  v17 = 770;
  if ((a3)(a4))
  {
    goto LABEL_9;
  }

  return 0;
}

void std::vector<anonymous namespace::TextualPipeline::PipelineElement>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 64;
        v7 = v4 - 24;
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(char const*,llvm::Twine)>::callback_fn<anonymous namespace::TextualPipeline::initialize(llvm::StringRef,llvm::raw_ostream &)::$_0>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  llvm::SourceMgr::PrintMessage(*a1, *(a1 + 8), a2, 0, v10, 0, 0, a8, 0, 0, 1u);
  return 0;
}

uint64_t anonymous namespace::TextualPipeline::addToPipeline(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5)
{
  if (!a2)
  {
    return 1;
  }

  v8 = (a1 + 24);
  v9 = a2 << 6;
  do
  {
    v10 = v8[1];
    if (!v10)
    {
      v11 = (v8[3] - v8[2]) >> 6;
      v12 = *(v8 - 3);
      v13 = *(v8 - 2);
      mlir::detail::OpPassManagerImpl::nest(*a3);
    }

    if ((std::function<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(v10 + 48, a3, *(v8 - 1), *v8, a4, a5) & 1) == 0)
    {
      v18 = 1283;
      v17[2] = *(v8 - 3);
      v17[3] = *(v8 - 2);
      v19[0] = v17;
      v20 = 770;
      v15 = *(v8 - 1);
      v14 = *v8;
      v21[0] = v19;
      v21[2] = v15;
      v21[3] = v14;
      v22 = 1282;
      v23[0] = v21;
      v24 = 770;
      return a4(a5, v23);
    }

    v8 += 8;
    v9 -= 64;
  }

  while (v9);
  return 1;
}

uint64_t std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*v1 + v3);
          if (v5 != -8 && v5 != 0)
          {
            std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v5 + 88);
            std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](v5 + 56);
            if (*(v5 + 55) < 0)
            {
              operator delete(*(v5 + 32));
            }

            if (*(v5 + 31) < 0)
            {
              operator delete(*(v5 + 8));
            }

            MEMORY[0x25F891030](v5, 8);
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::printHelpStr(unsigned long,unsigned long)::$_0>(size_t *a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 160);
  v4 = *(a2 + 168);
  __base = v17;
  __nel = 0x400000000;
  llvm::SmallVectorImpl<mlir::detail::PassOptions::OptionBase *>::append<std::__wrap_iter<mlir::detail::PassOptions::OptionBase * const*>,void>(&__base, v5, v4);
  v7 = __nel;
  if (__nel >= 2)
  {
    qsort(__base, __nel, 8uLL, mlir::detail::PassOptions::printHelp(unsigned long,unsigned long)const::$_0::__invoke);
    v7 = __nel;
  }

  v8 = __base;
  if (v7)
  {
    v9 = v3 - v2;
    v10 = 8 * v7;
    do
    {
      v11 = *v8++;
      v12 = llvm::outs(v6);
      llvm::raw_ostream::indent(v12, v2);
      v13 = (*(*v11 + 32))(v11);
      v6 = (*(*v13 + 48))(v13, v9);
      v10 -= 8;
    }

    while (v10);
    v8 = __base;
  }

  if (v8 != v17)
  {
    free(v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

unint64_t llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>(unint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 160);
  v4 = *(a2 + 168);
  if (v3 == v4)
  {
    v8 = 2;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3++;
      v7 = (*(*v6 + 32))(v6);
      result = (*(*v7 + 40))(v7);
      if (v5 <= result)
      {
        v5 = result;
      }
    }

    while (v3 != v4);
    v8 = v5 + 2;
  }

  **v2 = v8;
  return result;
}

uint64_t llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*v1 + v3);
          if (v5 != -8 && v5 != 0)
          {
            std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v5 + 88);
            std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](v5 + 56);
            if (*(v5 + 55) < 0)
            {
              operator delete(*(v5 + 32));
            }

            if (*(v5 + 31) < 0)
            {
              operator delete(*(v5 + 8));
            }

            MEMORY[0x25F891030](v5, 8);
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void *std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E84D80;
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E84D80;
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    llvm::object_creator<llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>>::call();
  }

  v4 = *a2;
  v3 = *(a2 + 8);
  (*(*v2 + 48))(&v6);
  v4(v3, v6 + 144);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t llvm::object_deleter<llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*v1 + v3);
          if (v5 != -8 && v5 != 0)
          {
            MEMORY[0x25F891030]();
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::detail::PassOptions::OptionBase *>::append<std::__wrap_iter<mlir::detail::PassOptions::OptionBase * const*>,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (a3 != v4)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t **std::unique_ptr<mlir::OpPassManager>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v2, 0);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<mlir::parsePassPipeline(llvm::StringRef,mlir::OpPassManager &,llvm::raw_ostream &)::$_0>(llvm::raw_ostream **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v2;
  v7 = *(a2 + 32);
  v3 = *a1;
  llvm::Twine::print(v6, *a1);
  v4 = *(v3 + 4);
  if (*(v3 + 3) == v4)
  {
    llvm::raw_ostream::write(v3, "\n", 1uLL);
  }

  else
  {
    *v4 = 10;
    ++*(v3 + 4);
  }

  return 0;
}

uint64_t mlir::detail::PassPipelineCLParserImpl::PassPipelineCLParserImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = llvm::cl::Option::Option(a1, 1, 0);
  *(v12 + 152) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 168) = 0;
  *v12 = &unk_286E84DC8;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0u;
  *(v12 + 216) = v12 + 232;
  v13 = v12 + 216;
  *(v12 + 224) = 0x800000000;
  *(v12 + 200) = &unk_286E84E30;
  *(v12 + 208) = v12;
  *(v12 + 744) = 0;
  *(v12 + 752) = &unk_286E84ED0;
  *(v12 + 776) = v12 + 752;
  llvm::cl::Option::setArgStr(v12, a2, a3);
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  llvm::cl::Option::addArgument(a1);
  if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

  v14 = *(_MergedGlobals_26[0] + 8);
  if (v14)
  {
      ;
    }
  }

  else
  {
    i = *_MergedGlobals_26[0];
  }

  v17 = *_MergedGlobals_26[0] + 8 * v14;
  if (i != v17)
  {
    v18 = *i;
    do
    {
      v21 = *(v18 + 8);
      v19 = v18 + 8;
      v20 = v21;
      v22 = *(v19 + 23);
      if (v22 >= 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = v20;
      }

      if (v22 >= 0)
      {
        v24 = *(v19 + 23);
      }

      else
      {
        v24 = *(v19 + 8);
      }

      v25 = *(v19 + 47);
      v26 = v19 + 24;
      if (v25 < 0)
      {
        v26 = *(v19 + 24);
      }

      if (v25 < 0)
      {
        v25 = *(v19 + 32);
      }

      v45 = v23;
      v46 = v24;
      v47 = v26;
      v48 = v25;
      v49 = &unk_286E84F18;
      v50 = v19;
      v51 = 0;
      v52 = 0;
      llvm::cl::AddLiteralOption(*(a1 + 208), v23, v24);
      do
      {
        v27 = i[1];
        ++i;
        v18 = v27;
        if (v27)
        {
          v28 = v18 == -8;
        }

        else
        {
          v28 = 1;
        }
      }

      while (v28);
    }

    while (i != v17);
  }

  if ((*(a1 + 744) & 1) == 0)
  {
    if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
    }

    v29 = *(qword_27FC1EE70[0] + 8);
    if (v29)
    {
        ;
      }
    }

    else
    {
      j = *qword_27FC1EE70[0];
    }

    v32 = *qword_27FC1EE70[0] + 8 * v29;
    if (j != v32)
    {
      v33 = *j;
      do
      {
        v36 = *(v33 + 8);
        v34 = v33 + 8;
        v35 = v36;
        v37 = *(v34 + 23);
        if (v37 >= 0)
        {
          v38 = v34;
        }

        else
        {
          v38 = v35;
        }

        if (v37 >= 0)
        {
          v39 = *(v34 + 23);
        }

        else
        {
          v39 = *(v34 + 8);
        }

        v40 = *(v34 + 47);
        v41 = v34 + 24;
        if (v40 < 0)
        {
          v41 = *(v34 + 24);
        }

        if (v40 < 0)
        {
          v40 = *(v34 + 32);
        }

        v45 = v38;
        v46 = v39;
        v47 = v41;
        v48 = v40;
        v49 = &unk_286E84F18;
        v50 = v34;
        v51 = 0;
        v52 = 0;
        llvm::cl::AddLiteralOption(*(a1 + 208), v38, v39);
        do
        {
          v42 = j[1];
          ++j;
          v33 = v42;
          if (v42)
          {
            v43 = v33 == -8;
          }

          else
          {
            v43 = 1;
          }
        }

        while (v43);
      }

      while (j != v32);
    }
  }

  *(a1 + 744) = a6;
  *(a1 + 10) = *(a1 + 10) & 0xFFE7 | 8;
  return a1;
}

uint64_t llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::handleOccurrence(uint64_t a1, int a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v9 = a1;
  v32 = 0uLL;
  v33 = 0;
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    *(a1 + 128) = *(a1 + 120);
    *(a1 + 168) = 0;
  }

  v10 = *(*(a1 + 208) + 24);
  if (v10)
  {
    a3 = a5;
  }

  if (v10)
  {
    a4 = a6;
  }

  v13 = *(a1 + 224);
  if (v13)
  {
    v14 = *(a1 + 216);
    while (1)
    {
      if (*(v14 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v14, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v14 += 64;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    *&v32 = *(v14 + 40);
  }

  else
  {
LABEL_15:
    v35 = 1283;
    v34[0] = "Cannot find option named '";
    v34[2] = a3;
    v34[3] = a4;
    v36[0] = v34;
    v36[2] = "'!";
    v37 = 770;
    v15 = llvm::errs(a1);
    if (llvm::cl::Option::error(v9, v36, 0, 0, v15))
    {
      return 1;
    }
  }

  *(&v32 + 1) = a5;
  v33 = a6;
  *(v9 + 12) = a2;
  v18 = *(v9 + 184);
  v17 = *(v9 + 192);
  if (v18 >= v17)
  {
    v20 = *(v9 + 176);
    v21 = v18 - v20;
    v22 = (v18 - v20) >> 2;
    v23 = v22 + 1;
    if ((v22 + 1) >> 62)
    {
      goto LABEL_32;
    }

    v24 = v17 - v20;
    if (v24 >> 1 > v23)
    {
      v23 = v24 >> 1;
    }

    v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
    v26 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v25)
    {
      v26 = v23;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v9 + 176, v26);
    }

    v27 = (v18 - v20) >> 2;
    v28 = (4 * v22);
    v29 = (4 * v22 - 4 * v27);
    *v28 = a2;
    v19 = v28 + 1;
    memcpy(v29, v20, v21);
    v30 = *(v9 + 176);
    *(v9 + 176) = v29;
    *(v9 + 184) = v19;
    *(v9 + 192) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v18 = a2;
    v19 = v18 + 4;
  }

  *(v9 + 184) = v19;
  v31 = *(v9 + 776);
  if (!v31)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_32:
    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
  }

  (*(*v31 + 48))(v31, &v32);
  return 0;
}

uint64_t llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 208) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::~list(llvm::cl::Option *this)
{
  *this = &unk_286E84DC8;
  v2 = this + 752;
  v3 = *(this + 97);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 25) = &unk_286E84E80;
  v4 = *(this + 27);
  if (v4 != this + 232)
  {
    free(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    *(this + 16) = v7;
    operator delete(v7);
  }

  llvm::cl::Option::~Option(this);
}

void llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::~list(llvm::cl::Option *a1)
{

  JUMPOUT(0x25F891040);
}

void llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::setDefault(void *a1)
{
  v2 = (a1 + 15);
  v1 = a1[15];
  a1[23] = a1[22];
  a1[16] = v1;
  v3 = a1[18];
  v4 = a1[19];
  while (v3 != v4)
  {
    v3 += 32;
  }
}

void anonymous namespace::PassNameParser::~PassNameParser(_anonymous_namespace_::PassNameParser *this)
{
  *this = &unk_286E84E80;
  v2 = *(this + 2);
  if (v2 != this + 32)
  {
    free(v2);
  }
}

{
  *this = &unk_286E84E80;
  v2 = *(this + 2);
  if (v2 != this + 32)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::parser<anonymous namespace::PassArgData>::getOption(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + (a2 << 6));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t llvm::cl::parser<anonymous namespace::PassArgData>::getDescription(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + (a2 << 6);
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

unint64_t anonymous namespace::PassNameParser::getOptionWidth(_anonymous_namespace_::PassNameParser *this, const llvm::cl::Option *a2)
{
  OptionWidth = llvm::cl::generic_parser_base::getOptionWidth(this, a2);
  if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

  v3 = OptionWidth + 2;
  v4 = *(_MergedGlobals_26[0] + 8);
  if (v4)
  {
      ;
    }
  }

  else
  {
    i = *_MergedGlobals_26[0];
  }

  v7 = *_MergedGlobals_26[0] + 8 * v4;
  if (i != v7)
  {
    v8 = *i;
    do
    {
      v19 = &v20;
      v20 = 0;
      std::function<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(*(v8 + 112), llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>, &v19);
      do
      {
        v9 = i[1];
        ++i;
        v8 = v9;
        if (v9)
        {
          v10 = v8 == -8;
        }

        else
        {
          v10 = 1;
        }
      }

      while (v10);
      if (v3 <= v20 + 4)
      {
        v3 = v20 + 4;
      }
    }

    while (i != v7);
  }

  if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  v11 = *(qword_27FC1EE70[0] + 8);
  if (v11)
  {
      ;
    }
  }

  else
  {
    j = *qword_27FC1EE70[0];
  }

  v14 = *qword_27FC1EE70[0] + 8 * v11;
  if (j != v14)
  {
    v15 = *j;
    do
    {
      v19 = &v20;
      v20 = 0;
      std::function<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(*(v15 + 112), llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>, &v19);
      do
      {
        v16 = j[1];
        ++j;
        v15 = v16;
        if (v16)
        {
          v17 = v15 == -8;
        }

        else
        {
          v17 = 1;
        }
      }

      while (v17);
      if (v3 <= v20 + 4)
      {
        v3 = v20 + 4;
      }
    }

    while (j != v14);
  }

  return v3;
}

void anonymous namespace::PassNameParser::printOptionInfo(_anonymous_namespace_::PassNameParser *this, const llvm::cl::Option *a2, size_t a3)
{
  v50[32] = *MEMORY[0x277D85DE8];
  if (*(this + 544) == 1)
  {
    v5 = llvm::outs(this);
    v6 = *(v5 + 4);
    if (*(v5 + 3) - v6 > 3uLL)
    {
      *v6 = 757932064;
      *(v5 + 4) += 4;
    }

    else
    {
      v5 = llvm::raw_ostream::write(v5, "  --", 4uLL);
    }

    v11 = llvm::raw_ostream::operator<<(v5, *(a2 + 2), *(a2 + 3));
    v12 = *(v11 + 4);
    if ((*(v11 + 3) - v12) > 0xA)
    {
      *(v12 + 7) = 1046966881;
      *v12 = *"=<pass-arg>";
      *(v11 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v11, "=<pass-arg>", 0xBuLL);
    }

    v13 = *(a2 + 4);
    v14 = *(a2 + 5);
    v15 = *MEMORY[0x277D85DE8];
    v16 = *(a2 + 3) + 18;

    llvm::cl::Option::printHelpStr(v13, v14, a3, v16);
  }

  else
  {
    v7 = *(a2 + 3);
    v8 = llvm::outs(this);
    v9 = *(v8 + 4);
    v10 = *(v8 + 3) - v9;
    if (v7)
    {
      if (v10 > 3)
      {
        *v9 = 757932064;
        *(v8 + 4) += 4;
      }

      else
      {
        v8 = llvm::raw_ostream::write(v8, "  --", 4uLL);
      }

      llvm::raw_ostream::operator<<(v8, *(a2 + 2), *(a2 + 3));
      v18 = llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, *(a2 + 3) + 7);
    }

    else
    {
      v17 = *(v8 + 3) != v9;
      if (v10 > 1)
      {
        *v9 = 8224;
        *(v8 + 4) += 2;
      }

      else
      {
        v8 = llvm::raw_ostream::write(v8, "  ", 2uLL);
      }

      v18 = llvm::raw_ostream::operator<<(v8, *(a2 + 4), *(a2 + 5));
      v19 = *(v18 + 4);
      if (v19 >= *(v18 + 3))
      {
        v18 = llvm::raw_ostream::write(v18, 10);
      }

      else
      {
        *(v18 + 4) = v19 + 1;
        *v19 = 10;
      }
    }

    if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
    }

    __base = v50;
    __nel = 0x2000000000;
    v20 = *(_MergedGlobals_26[0] + 8);
    if (v20)
    {
        ;
      }
    }

    else
    {
      i = *_MergedGlobals_26[0];
    }

    v23 = *_MergedGlobals_26[0] + 8 * v20;
    if (i != v23)
    {
      v24 = *i;
      do
      {
        llvm::SmallVectorTemplateBase<mlir::PassRegistryEntry *,true>::push_back(&__base, v24 + 8);
        do
        {
          v25 = i[1];
          ++i;
          v24 = v25;
          if (v25)
          {
            v26 = v24 == -8;
          }

          else
          {
            v26 = 1;
          }
        }

        while (v26);
      }

      while (i != v23);
      if (__nel >= 2)
      {
        qsort(__base, __nel, 8uLL, _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir8PassInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_);
      }
    }

    v27 = llvm::outs(v18);
    v28 = llvm::raw_ostream::write(v27, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, 4uLL);
    v29 = *(v27 + 4);
    if ((*(v27 + 3) - v29) > 5)
    {
      *(v29 + 4) = 29541;
      *v29 = 1936941392;
      v30 = (*(v27 + 4) + 6);
      *(v27 + 4) = v30;
    }

    else
    {
      v28 = llvm::raw_ostream::write(v27, "Passes", 6uLL);
      v27 = v28;
      v30 = *(v28 + 4);
    }

    if (*(v27 + 3) - v30 > 1uLL)
    {
      *v30 = 2618;
      *(v27 + 4) += 2;
    }

    else
    {
      v28 = llvm::raw_ostream::write(v27, ":\n", 2uLL);
    }

    v31 = __base;
    if (__nel)
    {
      v32 = 8 * __nel;
      do
      {
        v33 = *v31++;
        mlir::PassRegistryEntry::printHelpStr(v33, a3);
        v32 -= 8;
      }

      while (v32);
      v31 = __base;
    }

    if (v31 != v50)
    {
      free(v31);
    }

    if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
    }

    if (*(qword_27FC1EE70[0] + 12))
    {
      if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
      {
        llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
      }

      __base = v50;
      __nel = 0x2000000000;
      v34 = *(qword_27FC1EE70[0] + 8);
      if (v34)
      {
          ;
        }
      }

      else
      {
        j = *qword_27FC1EE70[0];
      }

      v37 = *qword_27FC1EE70[0] + 8 * v34;
      if (j != v37)
      {
        v38 = *j;
        do
        {
          llvm::SmallVectorTemplateBase<mlir::PassRegistryEntry *,true>::push_back(&__base, v38 + 8);
          do
          {
            v39 = j[1];
            ++j;
            v38 = v39;
            if (v39)
            {
              v40 = v38 == -8;
            }

            else
            {
              v40 = 1;
            }
          }

          while (v40);
        }

        while (j != v37);
        if (__nel >= 2)
        {
          qsort(__base, __nel, 8uLL, _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir16PassPipelineInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_);
        }
      }

      v41 = llvm::outs(v28);
      llvm::raw_ostream::write(v41, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, 4uLL);
      v42 = *(v41 + 4);
      if (*(v41 + 3) - v42 > 0xDuLL)
      {
        qmemcpy(v42, "Pass Pipelines", 14);
        v43 = (*(v41 + 4) + 14);
        *(v41 + 4) = v43;
      }

      else
      {
        v41 = llvm::raw_ostream::write(v41, "Pass Pipelines", 0xEuLL);
        v43 = *(v41 + 4);
      }

      if (*(v41 + 3) - v43 > 1uLL)
      {
        *v43 = 2618;
        *(v41 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v41, ":\n", 2uLL);
      }

      v44 = __base;
      if (__nel)
      {
        v45 = 8 * __nel;
        do
        {
          v46 = *v44++;
          mlir::PassRegistryEntry::printHelpStr(v46, a3);
          v45 -= 8;
        }

        while (v45);
        v44 = __base;
      }

      if (v44 != v50)
      {
        free(v44);
      }
    }

    v47 = *MEMORY[0x277D85DE8];
  }
}

void *llvm::cl::parser<anonymous namespace::PassArgData>::~parser(void *a1)
{
  *a1 = &unk_286E84E80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<anonymous namespace::PassArgData>::~parser(void *a1)
{
  *a1 = &unk_286E84E80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir8PassInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_(void **a1, const void ***a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if (v3 < 0)
  {
    v2 = **a1;
  }

  if (v3 < 0)
  {
    v3 = (*a1)[1];
  }

  v9[0] = v2;
  v9[1] = v3;
  v4 = *(*a2 + 23);
  v5 = (*a2)[1];
  if (v4 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = **a2;
  }

  if (v4 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return llvm::StringRef::compare(v9, v6, v7);
}

uint64_t _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir16PassPipelineInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_(void **a1, const void ***a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if (v3 < 0)
  {
    v2 = **a1;
  }

  if (v3 < 0)
  {
    v3 = (*a1)[1];
  }

  v9[0] = v2;
  v9[1] = v3;
  v4 = *(*a2 + 23);
  v5 = (*a2)[1];
  if (v4 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = **a2;
  }

  if (v4 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return llvm::StringRef::compare(v9, v6, v7);
}

__n128 llvm::SmallVectorTemplateBase<llvm::cl::parser<anonymous namespace::PassArgData>::OptionInfo,false>::push_back(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= a2 && v5 + (v4 << 6) > a2)
    {
      v10 = a2 - v5;
      v5 = *a1;
      v2 = *a1 + v10;
    }

    else
    {
      v5 = *a1;
    }
  }

  v6 = v5 + (*(a1 + 8) << 6);
  v7 = *(v2 + 16);
  *v6 = *v2;
  *(v6 + 16) = v7;
  *(v6 + 32) = &unk_286E84F18;
  result = *(v2 + 40);
  *(v6 + 56) = *(v2 + 56);
  *(v6 + 40) = result;
  ++*(a1 + 8);
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<anonymous namespace::PassArgData>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[64 * v6];
    v8 = v4 + 32;
    v9 = v4;
    do
    {
      v10 = *(v5 + 1);
      *v9 = *v5;
      *(v9 + 1) = v10;
      *(v9 + 4) = &unk_286E84F18;
      v11 = *(v5 + 40);
      *(v9 + 7) = *(v5 + 7);
      *(v9 + 40) = v11;
      v9 += 64;
      v5 += 64;
      v8 += 64;
    }

    while (v5 != v7);
    v5 = *a1;
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

void llvm::cl::list_storage<anonymous namespace::PassArgData,BOOL>::addValue<anonymous namespace::PassArgData>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
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

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

mlir::Pass::Statistic *mlir::Pass::Statistic::Statistic(mlir::Pass::Statistic *this, mlir::Pass *a2, const char *a3, const char *a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 17);
  if (v7 >= v6)
  {
    v9 = *(a2 + 15);
    v10 = (v7 - v9) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<mlir::Pass::Statistic *>::__throw_length_error[abi:nn200100]();
    }

    v11 = v6 - v9;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Pass::Statistic *>>(a2 + 120, v13);
    }

    *(8 * v10) = this;
    v8 = 8 * v10 + 8;
    v14 = *(a2 + 15);
    v15 = *(a2 + 16) - v14;
    v16 = (8 * v10 - v15);
    memcpy(v16, v14, v15);
    v17 = *(a2 + 15);
    *(a2 + 15) = v16;
    *(a2 + 16) = v8;
    *(a2 + 17) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v7 = this;
    v8 = (v7 + 1);
  }

  *(a2 + 16) = v8;
  return this;
}

uint64_t mlir::OpPassManager::mergeStatisticsInto(uint64_t this, mlir::OpPassManager *a2)
{
  v2 = *(*this + 40);
  v3 = *(*this + 48);
  v4 = *(*a2 + 40);
  v5 = *(*a2 + 48);
  if (v2 != v3 && v4 != v5)
  {
    do
    {
      v7 = *v2;
      v8 = *v4;
      v9 = *(*v2 + 8);
      this = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
      if (v7)
      {
        v10 = v9 == this;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = *(v7 + 344);
        v12 = *(v8 + 344);
        if (v11 && v12 != 0)
        {
          v14 = *(v7 + 336);
          v15 = *(v8 + 336);
          v16 = 8 * v12 - 8;
          v17 = 8 * v11 - 8;
          do
          {
            this = mlir::OpPassManager::mergeStatisticsInto(v14, v15);
            if (!v17)
            {
              break;
            }

            v14 = (v14 + 8);
            v15 = (v15 + 8);
            v18 = v16;
            v16 -= 8;
            v17 -= 8;
          }

          while (v18);
        }
      }

      if (++v2 == v3)
      {
        break;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return this;
}

void mlir::PassManager::dumpStatistics(mlir::PassManager *this)
{
  v3 = *MEMORY[0x277D85DE8];
  prepareStatistics(this);
  v2 = *(this + 4);
  llvm::CreateInfoOutputFile();
}

uint64_t prepareStatistics(uint64_t result)
{
  v1 = *(*result + 40);
  for (i = *(*result + 48); v1 != i; ++v1)
  {
    v3 = *v1;
    v4 = *(*v1 + 8);
    result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
    if (v3)
    {
      v5 = v4 == result;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = *(v3 + 336);
      v7 = *(v3 + 344);
      v8 = *(v3 + 368);
      if (v8)
      {
        v9 = *(v3 + 360);
        v10 = v9 + 24 * v8;
        do
        {
          v11 = *(v9 + 8);
          if (v11)
          {
            v12 = 0;
            v13 = v6;
            do
            {
              prepareStatistics((*v9 + v12));
              result = mlir::OpPassManager::mergeStatisticsInto(*v9 + v12, v13);
              v13 = (v13 + 8);
              v12 += 8;
              --v11;
            }

            while (v11);
          }

          v9 += 24;
        }

        while (v9 != v10);
      }

      if (v7)
      {
        v14 = 8 * v7;
        do
        {
          result = prepareStatistics(v6);
          v6 = (v6 + 8);
          v14 -= 8;
        }

        while (v14);
      }
    }
  }

  return result;
}

uint64_t std::function<void ()(mlir::Pass *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25CB7B358);
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E84F38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 8);
  result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v3)
  {
    v6 = v4 == result;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v3 + 344);
    if (v7)
    {
      v8 = *(v3 + 336);
      v9 = v8 + 8 * v7;
      do
      {
        v10 = *(*v8 + 40);
        v11 = *(*v8 + 48);
        while (v10 != v11)
        {
          v12 = *v10++;
          result = std::function<void ()(mlir::Pass *)>::operator()(*(*(a1 + 8) + 24), v12);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Pass::Statistic *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void mlir::PassManager::enableTiming(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }
}

void anonymous namespace::PassTiming::~PassTiming(char **this)
{
  *this = &unk_286E84F80;
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::destroyAll(this + 7);
  MEMORY[0x25F891030](this[7], 8);
  v2 = this[5];
  if (v2)
  {
    (*(*v2 + 32))(v2, this[6]);
  }

  this[5] = 0;
  this[6] = 0;
  v3 = this[4];
  this[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  MEMORY[0x25F891030](this[1], 8);
}

{
  *this = &unk_286E84F80;
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::destroyAll(this + 7);
  MEMORY[0x25F891030](this[7], 8);
  v2 = this[5];
  if (v2)
  {
    (*(*v2 + 32))(v2, this[6]);
  }

  this[5] = 0;
  this[6] = 0;
  v3 = this[4];
  this[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  MEMORY[0x25F891030](this[1], 8);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::PassTiming::runBeforePipeline(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t *a4)
{
  {
    v9 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v20 = llvm::get_threadid(void)::Self();
    *v20 = v21;
  }

  v24 = v9;
  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &v24);
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::doFind<mlir::PassInstrumentation::PipelineParentInfo>(v11, v12, *a4, a4[1]);
  if (!v13 || v13 == (v11 + 24 * v12))
  {
    v14 = *(a1 + 80);
  }

  else
  {
    v14 = (*llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, a4) + 16 * *(v13 + 4));
  }

  v25[0] = a2;
  v25[1] = a3;
  v15 = *v14;
  if (*v14)
  {
    if (a3)
    {
      v16 = a2;
    }

    else
    {
      v16 = 0;
    }

    v22 = v15;
    v23 = v17;
    (*(*v15 + 24))(v15, v17);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v18 = llvm::SmallVectorTemplateCommon<mlir::TimingScope,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::TimingScope,false>>(v10, &v22);
  *(*v10 + 16 * *(v10 + 2)) = *v18;
  *v18 = 0;
  *(v18 + 8) = 0;
  ++*(v10 + 2);
  result = v22;
  if (v22)
  {
    return (*(*v22 + 32))(v22, v23);
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterPipeline(uint64_t a1)
{
  {
    v3 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v6 = llvm::get_threadid(void)::Self();
    *v6 = v7;
  }

  v8 = v3;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &v8);

  return llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::pop_back(v4);
}

uint64_t anonymous namespace::PassTiming::runBeforePass(_anonymous_namespace_::PassTiming *this, mlir::Pass *a2, mlir::Operation *a3)
{
  {
    v6 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v30 = llvm::get_threadid(void)::Self();
    *v30 = v31;
  }

  v7 = v6;
  v34 = v6;
  v8 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](this + 56, &v34);
  v9 = v8;
  v10 = *(v8 + 2);
  if (v10)
  {
    v11 = (*v8 + 16 * v10 - 16);
  }

  else
  {
    v11 = *(this + 10);
  }

  v12 = *(a2 + 1);
  v13 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (!a2 || v12 != v13)
  {
    v24 = *(a2 + 41);
    v35 = a2;
    v25 = *v11;
    if (*v11)
    {
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = a2;
      }

      v32 = v25;
      v33 = v27;
      (*(*v25 + 24))(v25, v27);
      goto LABEL_27;
    }

LABEL_26:
    v32 = 0;
    v33 = 0;
    goto LABEL_27;
  }

  v14 = *(v9 + 8);
  v15 = *(this + 1);
  v35 = 0;
  v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(v15, *(this + 6), v7, a2, &v35);
  v17 = v35;
  if ((v16 & 1) == 0)
  {
    v32 = v35;
    v18 = *(this + 4);
    v19 = *(this + 6);
    if (4 * v18 + 4 >= 3 * v19)
    {
      v19 *= 2;
    }

    else if (v19 + ~v18 - *(this + 5) > v19 >> 3)
    {
      goto LABEL_11;
    }

    llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::grow(this + 8, v19);
    llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(*(this + 1), *(this + 6), v7, a2, &v32);
    v18 = *(this + 4);
    v17 = v32;
LABEL_11:
    *(this + 4) = v18 + 1;
    if (*v17 != -1 || *(v17 + 8) != -4096)
    {
      --*(this + 5);
    }

    *v17 = v7;
    *(v17 + 8) = a2;
    *(v17 + 16) = 0;
  }

  *(v17 + 16) = v14;
  v20 = *(a2 + 41);
  v35 = a2;
  v21 = *v11;
  if (!*v11)
  {
    goto LABEL_26;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = a2;
  }

  v32 = v21;
  v33 = v23;
  (*(*v21 + 24))(v21, v23);
  if (*(a2 + 86) < 2u)
  {
    (*(*v21 + 48))(v21, v23);
  }

LABEL_27:
  v28 = llvm::SmallVectorTemplateCommon<mlir::TimingScope,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::TimingScope,false>>(v9, &v32);
  *(*v9 + 16 * *(v9 + 8)) = *v28;
  *v28 = 0;
  *(v28 + 8) = 0;
  ++*(v9 + 8);
  result = v32;
  if (v32)
  {
    return (*(*v32 + 32))(v32, v33);
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterPass(_anonymous_namespace_::PassTiming *this, mlir::Pass *a2, mlir::Operation *a3)
{
  {
    v6 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v12 = llvm::get_threadid(void)::Self();
    *v12 = v13;
  }

  v7 = v6;
  v14 = v6;
  v8 = *(a2 + 1);
  if (v8 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID())
  {
    v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::doFind<mlir::PassInstrumentation::PipelineParentInfo>(*(this + 1), *(this + 6), v7, a2);
    if (v9)
    {
      *v9 = xmmword_25D0A07F0;
      *(this + 2) = vadd_s32(*(this + 16), 0x1FFFFFFFFLL);
    }
  }

  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](this + 56, &v14);

  return llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::pop_back(v10);
}

uint64_t anonymous namespace::PassTiming::runBeforeAnalysis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  {
    v9 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v18 = llvm::get_threadid(void)::Self();
    *v18 = v19;
  }

  v22 = v9;
  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &v22);
  v11 = v10;
  v12 = *(v10 + 2);
  if (v12)
  {
    v13 = (*v10 + 16 * v12 - 16);
  }

  else
  {
    v13 = *(a1 + 80);
  }

  v23[0] = a2;
  v23[1] = a3;
  v14 = *v13;
  if (*v13)
  {
    v20 = v14;
    v21 = v15;
    (*(*v14 + 24))(v14, v15);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v16 = llvm::SmallVectorTemplateCommon<mlir::TimingScope,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::TimingScope,false>>(v11, &v20);
  *(*v11 + 16 * *(v11 + 8)) = *v16;
  *v16 = 0;
  *(v16 + 8) = 0;
  ++*(v11 + 8);
  result = v20;
  if (v20)
  {
    return (*(*v20 + 32))(v20, v21);
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterAnalysis(uint64_t a1)
{
  {
    v3 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v6 = llvm::get_threadid(void)::Self();
    *v6 = v7;
  }

  v8 = v3;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &v8);

  return llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::pop_back(v4);
}

char **llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::destroyAll(char **result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 88 * v1;
    result = (*result + 8);
    do
    {
      if (*(result - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        result = llvm::SmallVector<mlir::TimingScope,4u>::~SmallVector(result);
      }

      result += 11;
      v2 -= 88;
    }

    while (v2);
  }

  return result;
}

char **llvm::SmallVector<mlir::TimingScope,4u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[16 * v3 - 16];
    v5 = -16 * v3;
    do
    {
      if (*v4)
      {
        (*(**v4 + 32))(*v4, *(v4 + 1));
      }

      *v4 = 0;
      *(v4 + 1) = 0;
      v4 -= 16;
      v5 += 16;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::InsertIntoBucketImpl<unsigned long long>(a1, a2, v7);
    *inserted = *a2;
    inserted[1] = inserted + 3;
    inserted[2] = 0x400000000;
  }

  return inserted + 1;
}

{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::InsertIntoBucketImpl<unsigned long long>(a1, a2, v7);
    *inserted = *a2;
    inserted[1] = inserted + 3;
    inserted[2] = 0x400000000;
  }

  return inserted + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (a2 - 1) & (((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3));
    v6 = (a1 + 88 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 88 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::InsertIntoBucketImpl<unsigned long long>(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((88 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 88 * v10 - 88;
      v13 = vdupq_n_s64(v12 / 0x58);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -1;
        }

        if (v14.i8[4])
        {
          result[11] = -1;
        }

        v11 += 2;
        result += 22;
      }

      while (((v12 / 0x58 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (!v3)
    {
LABEL_27:

      JUMPOUT(0x25F891030);
    }

    v15 = v4 + 88 * v3;
    v16 = v4;
    while (1)
    {
      v17 = *v16;
      if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

LABEL_26:
      v16 += 88;
      if (v16 == v15)
      {
        goto LABEL_27;
      }
    }

    v30 = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v17, &v30);
    v18 = v30;
    *v30 = *v16;
    v19 = v18 + 3;
    v18[1] = v18 + 3;
    v18[2] = 0x400000000;
    if (v18 == v16 || (v20 = *(v16 + 16), !v20))
    {
LABEL_25:
      ++*(a1 + 8);
      llvm::SmallVector<mlir::TimingScope,4u>::~SmallVector((v16 + 8));
      goto LABEL_26;
    }

    v21 = *(v16 + 8);
    if (v21 != v16 + 24)
    {
      v22 = *(v16 + 20);
      v18[1] = v21;
      *(v18 + 4) = v20;
      *(v18 + 5) = v22;
      *(v16 + 8) = v16 + 24;
      *(v16 + 16) = 0;
      goto LABEL_25;
    }

    if (v20 <= 4)
    {
      v24 = v21 + 16 * v20;
    }

    else
    {
      llvm::SmallVectorImpl<mlir::TimingScope>::clear(v18 + 2);
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow((v18 + 1), v20);
      v23 = *(v16 + 16);
      if (!v23)
      {
LABEL_24:
        *(v18 + 4) = v20;
        llvm::SmallVectorImpl<mlir::TimingScope>::clear((v16 + 8));
        goto LABEL_25;
      }

      v21 = *(v16 + 8);
      v24 = v21 + 16 * v23;
      v19 = v18[1];
    }

    do
    {
      *v19++ = *v21;
      *v21 = 0;
      *(v21 + 8) = 0;
      v21 += 16;
    }

    while (v21 != v24);
    goto LABEL_24;
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = 88 * v25 - 88;
    v28 = vdupq_n_s64(v27 / 0x58);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *result = -1;
      }

      if (v29.i8[4])
      {
        result[11] = -1;
      }

      v26 += 2;
      result += 22;
    }

    while (((v27 / 0x58 + 2) & 0x7FFFFFFFFFFFFFELL) != v26);
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<mlir::TimingScope>::clear(unsigned int *result)
{
  v1 = result;
  v2 = result[2];
  if (v2)
  {
    v3 = *result + 16 * v2 - 16;
    v4 = -16 * v2;
    do
    {
      result = *v3;
      if (*v3)
      {
        result = (*(*result + 32))(result, *(v3 + 8));
      }

      *v3 = 0;
      *(v3 + 8) = 0;
      v3 -= 16;
      v4 += 16;
    }

    while (v4);
  }

  v1[2] = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 16 * v6;
    v8 = v4;
    do
    {
      *v8++ = *v5;
      *v5 = 0;
      v5[1] = 0;
      v5 += 2;
      v7 -= 16;
    }

    while (v7);
    v5 = *a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = &v5[2 * v9 - 2];
      v11 = -16 * v9;
      do
      {
        if (*v10)
        {
          (*(**v10 + 32))(*v10, v10[1]);
        }

        *v10 = 0;
        v10[1] = 0;
        v10 -= 2;
        v11 += 16;
      }

      while (v11);
      v5 = *a1;
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::doFind<mlir::PassInstrumentation::PipelineParentInfo>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0xBF58476D1CE4E5B9 * ((a4 >> 4) ^ (a4 >> 9) | ((((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3)) << 32));
  v5 = a2 - 1;
  v6 = (a2 - 1) & ((v4 >> 31) ^ v4);
  v7 = (a1 + 24 * v6);
  v9 = *v7;
  v8 = v7[1];
  if (*v7 != a3 || v8 != a4)
  {
    v11 = 1;
    while (v9 != -1 || v8 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & v5;
      v7 = (a1 + 24 * (v12 & v5));
      v9 = *v7;
      v8 = v7[1];
      if (*v7 == a3 && v8 == a4)
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::TimingScope,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::TimingScope,false>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 16 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(a1, v3 + 1);
    }
  }

  return v2;
}

void llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforePipeline(std::optional<mlir::OperationName>,mlir::PassInstrumentation::PipelineParentInfo const&)::{lambda(void)#1}>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[8] == 1)
  {
    v4 = *(*a1 + 8);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  else
  {
    v5 = "any";
    v6 = 3;
  }

  v11 = v2;
  v12 = v3;
  v8 = 1283;
  v7[0] = "'";
  v7[2] = v5;
  v7[3] = v6;
  v9[0] = v7;
  v9[2] = "' Pipeline";
  v10 = 770;
  llvm::Twine::str(v9, a2);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::pop_back(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  *(a1 + 8) = v1;
  v2 = (*a1 + 16 * v1);
  result = *v2;
  if (*v2)
  {
    result = (*(*result + 32))(result, v2[1]);
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = 0xBF58476D1CE4E5B9 * ((a4 >> 4) ^ (a4 >> 9) | ((((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3)) << 32));
    v6 = a2 - 1;
    v7 = (a2 - 1) & ((v5 >> 31) ^ v5);
    v8 = (a1 + 24 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 == a3 && v10 == a4)
    {
      v12 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (v9 != -1 || v10 != -4096)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v10 == -8192;
        }

        if (v16 && v9 == -2)
        {
          v14 = v8;
        }

        v18 = v7 + v15++;
        v7 = v18 & v6;
        v8 = (a1 + 24 * (v18 & v6));
        v9 = *v8;
        v10 = v8[1];
        v12 = 1;
        if (*v8 == a3 && v10 == a4)
        {
          goto LABEL_9;
        }
      }

      v12 = 0;
      if (v14)
      {
        v8 = v14;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_9:
  *a5 = v8;
  return v12;
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_25D0A0800;
        result = (result + 24);
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        v14 = *v13;
        v15 = *(v13 + 8);
        if ((*v13 != -1 || v15 != -4096) && (v14 != -2 || v15 != -8192))
        {
          v19 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(*a1, *(a1 + 16), v14, v15, &v19);
          v16 = v19;
          *v19 = *v13;
          *(v16 + 4) = *(v13 + 16);
          ++*(a1 + 8);
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 24 * v17;
    do
    {
      *result = xmmword_25D0A0800;
      result = (result + 24);
      v18 -= 24;
    }

    while (v18);
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
  }

  a2[v5] = 0;
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

void mlir::detail::PDLByteCodePattern::create(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v37[16] = *MEMORY[0x277D85DE8];
  v31 = a2;
  Benefit = mlir::pdl_interp::RecordMatchOp::getBenefit(&v31);
  v9 = *(***(a2 + 24) + 32);
  v35 = v37;
  v36 = 0x800000000;
  v10 = (*(a2 + 44) >> 23) & 1;
  v11 = *(a2 + 64 + 16 * v10 + 8);
  if (!v11)
  {
    goto LABEL_12;
  }

  v30 = a4;
  v12 = a3;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v32 = v34;
  v33 = 0x800000000;
  if (v14 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v14, 16);
    v15 = v33;
    goto LABEL_6;
  }

  if (v14)
  {
    v15 = 0;
LABEL_6:
    v16 = &v13[v14];
    v17 = v32 + 16 * v15;
    do
    {
      v18 = *v13++;
      *v17++ = *(v18 + 16);
    }

    while (v13 != v16);
    v19 = v33;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_9:
  LODWORD(v33) = v19 + v14;
  llvm::SmallVectorImpl<llvm::StringRef>::operator=(&v35, &v32);
  a3 = v12;
  if (v32 != v34)
  {
    free(v32);
  }

  v10 = (*(a2 + 44) >> 23) & 1;
  a4 = v30;
LABEL_12:
  v20 = *(a2 + 64 + 16 * v10 + 24);
  if (v20)
  {
    v21 = v35;
    v22 = v36;
    mlir::OperationName::OperationName(&v32, *(v20 + 16), *(v20 + 24), v9);
    v23 = v32;
    v24 = a1;
    v25 = 1;
    v26 = v21;
    v27 = v22;
    v28 = Benefit;
  }

  else
  {
    v26 = v35;
    v27 = v36;
    v28 = Benefit;
    v24 = a1;
    v23 = 0;
    v25 = 0;
  }

  mlir::Pattern::Pattern(v24, v23, v25, v26, v27, v28, v9);
  *(a1 + 88) = a4;
  *(a1 + 96) = a3;
  if (v35 != v37)
  {
    free(v35);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::PDLByteCode::PDLByteCode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v193 = *MEMORY[0x277D85DE8];
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(a1, a3);
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = xmmword_25D0A05D0;
  *(a1 + 240) = a1 + 264;
  *(a1 + 248) = xmmword_25D0A05D0;
  *(a1 + 392) = a1 + 408;
  *(a1 + 400) = 0x2000000000;
  *(a1 + 3736) = 0u;
  *(a1 + 3752) = 0u;
  *(a1 + 3768) = 0u;
  v130 = (a1 + 3736);
  *(a1 + 3778) = 0u;
  v10 = *(***(a2 + 24) + 32);
  v134 = 0;
  v133[0] = 0;
  v133[1] = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v138[0] = 0;
  v138[1] = 0;
  v139 = 0;
  v140 = 16;
  v141[0] = 0;
  v141[1] = 0;
  v142 = 0;
  v143 = 16;
  v144[0] = 0;
  v144[1] = 0;
  v145 = 0;
  v146 = 16;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v152[0] = 0;
  v152[1] = 0;
  v151 = v10;
  v153 = 0;
  v154 = a1 + 64;
  v155 = (a1 + 88);
  v156 = a1 + 240;
  v157 = a1 + 392;
  v158 = (a1 + 3784);
  v159 = (a1 + 3786);
  v160 = (a1 + 3788);
  v161 = (a1 + 3790);
  v162 = a1 + 3792;
  v163 = a4;
  v11 = *(a5 + 8);
  v125 = a1;
  v128 = a5;
  v129 = a1 + 64;
  v12 = *a5;
  if (v11)
  {
    while (!*v12 || *v12 + 1 == 0)
    {
      ++v12;
    }
  }

  v14 = *a5 + 8 * v11;
  if (v12 != v14)
  {
    v15 = 0;
    v16 = *v12;
    do
    {
      v18 = *v16;
      v17 = (v16 + 5);
      *&v188 = v15;
      v19 = llvm::xxh3_64bits(v17, v18, a3);
      llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v141, v17, v18, v19, &v188);
      do
      {
        v20 = v12[1];
        ++v12;
        v16 = v20;
        if (v20)
        {
          v21 = v16 + 1 == 0;
        }

        else
        {
          v21 = 1;
        }
      }

      while (v21);
      ++v15;
    }

    while (v12 != v14);
  }

  v22 = *(a6 + 8);
  if (v22)
  {
      ;
    }
  }

  else
  {
    i = *a6;
  }

  v25 = *a6 + 8 * v22;
  if (i != v25)
  {
    v26 = 0;
    v27 = *i;
    do
    {
      v29 = *v27;
      v28 = (v27 + 5);
      *&v188 = v26;
      v30 = llvm::xxh3_64bits(v28, v29, a3);
      llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v138, v28, v29, v30, &v188);
      do
      {
        v31 = i[1];
        ++i;
        v27 = v31;
        if (v31)
        {
          v32 = v27 + 1 == 0;
        }

        else
        {
          v32 = 1;
        }
      }

      while (v32);
      ++v26;
    }

    while (i != v25);
  }

  v33 = mlir::SymbolTable::lookupSymbolIn(a2, "matcher", 7);
  if (v33)
  {
    if (*(*(v33 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v131 = v34;
  }

  else
  {
    v131 = 0;
  }

  v35 = mlir::SymbolTable::lookupSymbolIn(a2, "rewriters", 9);
  if (v35)
  {
    if (*(*(v35 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  v126 = v36 + 64;
  v127 = v36;
  mlir::Region::getOps<mlir::pdl_interp::FuncOp>(&v188, (((v36 + 64 + 16 * ((*(v36 + 44) >> 23) & 1) + ((*(v36 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v36 + 40)));
  v182 = v189;
  v181 = v188;
  v183 = v190;
  v184 = v191;
  v37 = v192;
  if (v189 == v192)
  {
    goto LABEL_75;
  }

  do
  {
    v38 = (*(&v184 + 1))();
    LOWORD(v169) = 0;
    LOWORD(v168) = 0;
    LOWORD(v172) = 0;
    v177 = v133;
    *&v178 = &v169;
    *(&v178 + 1) = &v168;
    v179 = &v172;
    v39 = v38 + 64;
    v40 = *(v38 + 44);
    v41 = (v40 >> 23) & 1;
    v42 = (v40 >> 21) & 0x7F8;
    v43 = 32 * *(v38 + 40);
    v44 = (((v38 + 64 + 16 * v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8) + v43);
    if (*v44 == v44)
    {
      goto LABEL_61;
    }

    v45 = v44[1];
    v46 = v45 ? v45 - 8 : 0;
    v48 = *(v46 + 48);
    v47 = *(v46 + 56);
    if (v47 == v48)
    {
      goto LABEL_61;
    }

    v49 = v38;
    v50 = v37;
    do
    {
      v175[0] = *v48;
      v51 = v175[0];
      v52 = v177;
      v53 = (*v178)++;
      LOWORD(v173[0]) = v53;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(&v164, v52, v175, v173);
      v54 = (*(v51 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((*v54)[17] != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        goto LABEL_59;
      }

      v55 = *(*v54[1] + 136);
      if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v56 = *(&v178 + 1);
      }

      else
      {
        if (v55 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
        {
          goto LABEL_59;
        }

        v56 = v179;
      }

      v57 = (*v56)++;
      LOWORD(v173[0]) = v57;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(&v164, v52 + 24, v175, v173);
LABEL_59:
      ++v48;
    }

    while (v48 != v47);
    v58 = *(v49 + 44);
    v41 = (v58 >> 23) & 1;
    v42 = (v58 >> 21) & 0x7F8;
    v43 = 32 * *(v49 + 40);
    v37 = v50;
LABEL_61:
    v59 = ((v39 + 16 * v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8) + v43;
    v164 = &v177;
    for (j = *(v59 + 8); j != v59; j = *(j + 8))
    {
      v61 = j - 8;
      if (!j)
      {
        v61 = 0;
      }

      v62 = *(v61 + 40);
      v63 = v61 + 32;
      if (v62 != v61 + 32)
      {
        do
        {
          v64 = *(v62 + 8);
          v62 = v64;
        }

        while (v64 != v63);
      }
    }

    if (v169 > *v158)
    {
      *v158 = v169;
    }

    if (v168 > *v160)
    {
      *v160 = v168;
    }

    if (v172 > *v161)
    {
      *v161 = v172;
    }

    mlir::Region::OpIterator::operator++(&v181);
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v181);
  }

  while (v182 != v37);
LABEL_75:
  v175[0] = 0;
  v175[1] = 0;
  v176 = 0;
  v173[0] = 0;
  v173[1] = 0;
  v174 = 0;
  v172 = 0;
  buffer = llvm::allocate_buffer(0x20, 8uLL);
  v178 = xmmword_25D0A0540;
  *buffer = v175;
  buffer[1] = &v172;
  buffer[2] = &v177;
  buffer[3] = v173;
  v177 = buffer;
  *&v182 = 0;
  *(&v182 + 1) = &v183 + 8;
  v185 = v187;
  v186 = 0;
  v187[0] = 0;
  v187[1] = 1;
  v67 = *(v131 + 40);
  v66 = *(v131 + 44);
  v181 = 0uLL;
  *&v183 = 0x400000000;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v68 = *(((v131 + 64 + 16 * ((v66 >> 23) & 1) + ((v66 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v67 + 8);
  if (v68)
  {
    v69 = v68 - 8;
  }

  else
  {
    v69 = 0;
  }

  v168 = **(v69 + 48);
  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v133, &v168) = 0;
  v165 = 0;
  m = 0;
  v164 = v131;
  v167 = 0;
  mlir::Liveness::build(&v164);
  *&v188 = &v164;
  *(&v188 + 1) = &v168;
  *&v189 = &v169;
  *(&v189 + 1) = &v181;
  *&v190 = v175;
  *(&v190 + 1) = v173;
  if (v170)
  {
    if (v171)
    {
      v70 = 40 * v171;
      v71 = v169;
      while ((*v71 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v71 += 5;
        v70 -= 40;
        if (!v70)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v71 = v169;
    }

    v72 = (v169 + 40 * v171);
    if (v71 == v72)
    {
      LOWORD(v70) = 0;
    }

    else
    {
      LODWORD(v70) = 0;
LABEL_88:
      v124 = v70;
      if (!*llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v133, v71))
      {
        operator new();
      }

      LODWORD(v70) = v124;
      while (1)
      {
        v71 += 5;
        if (v71 == v72)
        {
          break;
        }

        if ((*v71 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v71 != v72)
          {
            goto LABEL_88;
          }

          break;
        }
      }
    }
  }

  else
  {
    LOWORD(v70) = 0;
  }

LABEL_96:
  if (!*v158)
  {
    *v158 = 1;
  }

  if (*v159 < v70)
  {
    *v159 = v70;
  }

  *v160;
  *v161;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::destroyAll(&v165);
  MEMORY[0x25F891030](v165, 8);
  v73 = v169;
  if (v171)
  {
    v74 = 40 * v171;
    v75 = (v169 + 8);
    do
    {
      if ((*(v75 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v76 = *v75;
        *v75 = 0;
        if (v76)
        {
          std::default_delete<llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>>::operator()[abi:nn200100](v76);
        }
      }

      v75 += 5;
      v74 -= 40;
    }

    while (v74);
    v73 = v169;
  }

  MEMORY[0x25F891030](v73, 8);
  *&v181 = 0;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&v181 + 8);
  v78 = v179;
  if (v179 >= 8)
  {
    if ((v179 & 4) != 0)
    {
      if ((v179 & 2) != 0)
      {
        v79 = &v177;
      }

      else
      {
        v79 = v177;
      }

      (*((v179 & 0xFFFFFFFFFFFFFFF8) + 16))(v79, v77);
    }

    if ((v78 & 2) == 0)
    {
      MEMORY[0x25F891030](v177, *(&v178 + 1));
    }
  }

  MEMORY[0x25F891030](v173[0], 8);
  MEMORY[0x25F891030](v175[0], 8);
  *&v178 = 0;
  v177 = 0;
  DWORD2(v178) = 0;
  v179 = v156;
  v180 = v133;
  mlir::Region::getOps<mlir::pdl_interp::FuncOp>(&v188, (((v126 + 16 * ((*(v127 + 44) >> 23) & 1) + ((*(v127 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v127 + 40)));
  v182 = v189;
  v181 = v188;
  v183 = v190;
  v184 = v191;
  v85 = v192;
  while (v182 != v85)
  {
    v86 = (*(&v184 + 1))();
    Attr = mlir::Operation::getAttr(v86, "sym_name", 8uLL);
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v89 = Attr;
    }

    else
    {
      v89 = 0;
    }

    v90 = *(v89 + 16);
    v91 = *(v89 + 24);
    v164 = *(v156 + 8);
    v92 = llvm::xxh3_64bits(v90, v91, v88);
    llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v144, v90, v91, v92, &v164);
    v93 = (((v86 + 16 * ((*(v86 + 44) >> 23) & 1) + ((*(v86 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v86 + 40));
    if (*v93 != v93)
    {
      for (k = v93[1]; k != v93; k = *(k + 8))
      {
        v95 = k - 8;
        if (!k)
        {
          v95 = 0;
        }

        if (*(v95 + 32) != v95 + 32)
        {
          break;
        }
      }

      if (k != v93)
      {
        v96 = k - 8;
        if (!k)
        {
          v96 = 0;
        }

        v97 = *(v96 + 40);
        v164 = (((v86 + 16 * ((*(v86 + 44) >> 23) & 1) + ((*(v86 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v86 + 40));
        v165 = k;
        for (m = v97; m; v97 = m)
        {
          mlir::Region::OpIterator::operator++(&v164);
        }
      }
    }

    mlir::Region::OpIterator::operator++(&v181);
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v181);
  }

  v188 = 0uLL;
  LODWORD(v189) = 0;
  *(&v189 + 1) = v155;
  *&v190 = v133;
  if (DWORD2(v188))
  {
    if (v189)
    {
      v98 = 40 * v189;
      v99 = v188;
      while ((*v99 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v99 += 40;
        v98 -= 40;
        if (!v98)
        {
          goto LABEL_137;
        }
      }
    }

    else
    {
      v99 = v188;
    }

    v117 = v188 + 40 * v189;
LABEL_174:
    if (v99 != v117)
    {
      v118 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v152, v99);
      v119 = *(v99 + 16);
      if (v119)
      {
        v120 = *v118;
        v121 = *(v99 + 8);
        v122 = 4 * v119;
        do
        {
          v123 = *v121++;
          *(*v155 + 2 * v123) = v120;
          v122 -= 4;
        }

        while (v122);
      }

      while (1)
      {
        v99 += 40;
        if (v99 == v117)
        {
          break;
        }

        if ((*v99 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_174;
        }
      }
    }
  }

LABEL_137:
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::destroyAll(v188, v189);
  MEMORY[0x25F891030](v188, 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::destroyAll(v177, DWORD2(v178));
  MEMORY[0x25F891030](v177, 8);
  v100 = *(v128 + 8);
  if (v100)
  {
    v101 = *v128;
    v102 = v130;
    while (!*v101 || *v101 == -8)
    {
      ++v101;
    }
  }

  else
  {
    v101 = *v128;
    v102 = v130;
  }

  v104 = *v128 + 8 * v100;
  if (v101 != v104)
  {
    v105 = *v101;
    do
    {
      std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::push_back[abi:nn200100](v102, v105 + 8);
      do
      {
        v106 = v101[1];
        ++v101;
        v105 = v106;
        if (v106)
        {
          v107 = v105 == -8;
        }

        else
        {
          v107 = 1;
        }
      }

      while (v107);
    }

    while (v101 != v104);
  }

  v108 = *(a6 + 8);
  if (v108)
  {
      ;
    }
  }

  else
  {
    n = *a6;
  }

  v111 = *a6 + 8 * v108;
  if (n != v111)
  {
    v112 = *n;
    do
    {
      std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::push_back[abi:nn200100]((v129 + 3696), (v112 + 1));
      do
      {
        v113 = n[1];
        ++n;
        v112 = v113;
        if (v113)
        {
          v114 = v112 + 1 == 0;
        }

        else
        {
          v114 = 1;
        }
      }

      while (v114);
    }

    while (n != v111);
  }

  MEMORY[0x25F891030](v152[0], 8);
  MEMORY[0x25F891030](v147, 8);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(v144);
  llvm::StringMap<unsigned short,llvm::MallocAllocator>::~StringMap(v141);
  llvm::StringMap<unsigned short,llvm::MallocAllocator>::~StringMap(v138);
  MEMORY[0x25F891030](v135, 8);
  MEMORY[0x25F891030](v133[0], 8);
  v115 = *MEMORY[0x277D85DE8];
  return v125;
}

void std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *a1) >> 5;
    if ((v6 + 1) >> 59)
    {
      std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::__throw_length_error[abi:nn200100]();
    }

    v7 = v4 - *a1;
    v8 = v7 >> 4;
    if (v7 >> 4 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 32 * v6;
    std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::__value_func[abi:nn200100](v10, a2);
    v5 = v10 + 32;
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::__value_func[abi:nn200100](v15, v14);
        v14 += 32;
        v15 = v16 + 32;
      }

      while (v14 != v12);
      do
      {
        std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::~__value_func[abi:nn200100](v11);
        v11 += 32;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    v5 = std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::__value_func[abi:nn200100](v3, a2) + 32;
  }

  a1[1] = v5;
}

void mlir::detail::PDLByteCode::initializeMutableState(mlir::detail::PDLByteCode *this, mlir::detail::PDLByteCodeMutableState *a2)
{
  v4 = *(this + 1892);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = &v6[-*a2];
  v8 = v7 >> 3;
  if (v4 <= v7 >> 3)
  {
    if (v4 >= v8)
    {
      goto LABEL_13;
    }

    v13 = (v5 + 8 * v4);
  }

  else
  {
    v9 = v4 - v8;
    v10 = *(a2 + 2);
    if (v9 > (v10 - v6) >> 3)
    {
      v11 = v10 - v5;
      if (v11 >> 2 > v4)
      {
        v4 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v4;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(v12);
    }

    bzero(v6, ((8 * v4 - v7 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    v13 = &v6[8 * v9];
  }

  *(a2 + 1) = v13;
LABEL_13:
  v14 = *(this + 1893);
  v15 = *(a2 + 3);
  v16 = *(a2 + 4);
  v17 = (v16 - v15) >> 4;
  if (v14 <= v17)
  {
    if (v14 < v17)
    {
      v22 = v15 + 16 * v14;
      while (v16 != v22)
      {
        v24 = *(v16 - 16);
        v16 -= 16;
        v23 = v24;
        if (v24)
        {
          MEMORY[0x25F891010](v23, 0x20C8093837F09);
        }
      }

      *(a2 + 4) = v22;
    }
  }

  else
  {
    v18 = v14 - v17;
    v19 = *(a2 + 5);
    if (v18 > (v19 - v16) >> 4)
    {
      v20 = v19 - v15;
      if (v20 >> 3 > v14)
      {
        v14 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v14;
      }

      if (!(v21 >> 60))
      {
        operator new();
      }

      goto LABEL_88;
    }

    bzero(*(a2 + 4), 16 * v18);
    *(a2 + 4) = v16 + 16 * v18;
  }

  v25 = *(this + 1894);
  v27 = *(a2 + 6);
  v26 = *(a2 + 7);
  v28 = (v26 - v27) >> 4;
  if (v25 <= v28)
  {
    if (v25 < v28)
    {
      *(a2 + 7) = v27 + 16 * v25;
    }
  }

  else
  {
    v29 = *(a2 + 8);
    if (v25 - v28 > (v29 - v26) >> 4)
    {
      v30 = v29 - v27;
      v31 = (v29 - v27) >> 3;
      if (v31 <= v25)
      {
        v31 = *(this + 1894);
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v32 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      if (!(v32 >> 60))
      {
        operator new();
      }

      goto LABEL_88;
    }

    v33 = &v26[v25 - v28];
    v34 = 16 * v25 - 16 * v28;
    do
    {
      *v26++ = xmmword_25D0A0640;
      v34 -= 16;
    }

    while (v34);
    *(a2 + 7) = v33;
  }

  v35 = *(this + 1895);
  v36 = *(a2 + 12);
  v37 = *(a2 + 13);
  v38 = (v37 - v36) >> 4;
  if (v35 <= v38)
  {
    if (v35 >= v38)
    {
      goto LABEL_56;
    }

    v44 = v36 + 16 * v35;
  }

  else
  {
    v39 = v35 - v38;
    v40 = *(a2 + 14);
    if (v39 > (v40 - v37) >> 4)
    {
      v41 = v40 - v36;
      v42 = v41 >> 3;
      if (v41 >> 3 <= v35)
      {
        v42 = *(this + 1895);
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF0)
      {
        v43 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (!(v43 >> 60))
      {
        operator new();
      }

LABEL_88:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(*(a2 + 13), ((16 * v35 - (v37 - v36) - 16) & 0xFFFFFFFFFFFFFFF0) + 16);
    v44 = v37 + 16 * v39;
  }

  *(a2 + 13) = v44;
LABEL_56:
  v45 = *(a2 + 18);
  v46 = *(a2 + 19);
  v47 = *(this + 1896);
  v48 = (v46 - v45) >> 2;
  if (v47 <= v48)
  {
    if (v47 >= v48)
    {
      goto LABEL_68;
    }

    v54 = v45 + 4 * v47;
  }

  else
  {
    v49 = v47 - v48;
    v50 = *(a2 + 20);
    if (v49 > (v50 - v46) >> 2)
    {
      v51 = v50 - v45;
      v52 = v51 >> 1;
      if (v51 >> 1 <= v47)
      {
        v52 = *(this + 1896);
      }

      if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v53 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v52;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a2 + 144, v53);
    }

    bzero(*(a2 + 19), ((4 * v47 - (v46 - v45) - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v54 = v46 + 4 * v49;
  }

  *(a2 + 19) = v54;
LABEL_68:
  v55 = *(this + 100);
  v56 = *(a2 + 21);
  if (v55 > (*(a2 + 23) - v56) >> 1)
  {
    v57 = *(a2 + 22) - v56;
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::PatternBenefit>>(v55);
  }

  v58 = *(this + 100);
  if (v58)
  {
    v59 = *(a2 + 22);
    v60 = 104 * v58;
    v61 = (*(this + 49) + 12);
    do
    {
      v63 = *v61;
      v61 += 52;
      v62 = v63;
      v64 = *(a2 + 23);
      if (v59 >= v64)
      {
        v65 = *(a2 + 21);
        v66 = v59 - v65;
        v67 = (v59 - v65) >> 1;
        if (v67 <= -2)
        {
          std::vector<mlir::PatternBenefit>::__throw_length_error[abi:nn200100]();
        }

        v68 = v64 - v65;
        if (v68 <= v67 + 1)
        {
          v69 = v67 + 1;
        }

        else
        {
          v69 = v68;
        }

        if (v68 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v70 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v70 = v69;
        }

        if (v70)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::PatternBenefit>>(v70);
        }

        v71 = (v59 - v65) >> 1;
        v72 = (2 * v67);
        v73 = (2 * v67 - 2 * v71);
        *v72 = v62;
        v59 = (v72 + 1);
        memcpy(v73, v65, v66);
        v74 = *(a2 + 21);
        *(a2 + 21) = v73;
        *(a2 + 22) = v59;
        *(a2 + 23) = 0;
        if (v74)
        {
          operator delete(v74);
        }
      }

      else
      {
        *v59 = v62;
        v59 += 2;
      }

      *(a2 + 22) = v59;
      v60 -= 104;
    }

    while (v60);
  }
}

void mlir::detail::PDLByteCode::match(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42[30] = *MEMORY[0x277D85DE8];
  **a5 = a2;
  v6 = *a5;
  v7 = (*(a5 + 8) - *a5) >> 3;
  v8 = *(a5 + 24);
  v9 = (*(a5 + 32) - v8) >> 4;
  v10 = *(a5 + 48);
  v11 = (*(a5 + 56) - v10) >> 4;
  v12 = a5 + 72;
  v13 = *(a5 + 96);
  v14 = (*(a5 + 104) - v13) >> 4;
  v15 = a5 + 120;
  v16 = *(a5 + 144);
  v17 = (*(a5 + 152) - v16) >> 2;
  v18 = *(a1 + 64);
  v19 = (*(a1 + 72) - v18) >> 3;
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  v22 = *(a5 + 168);
  v23 = (*(a5 + 176) - v22) >> 1;
  v24 = *(a1 + 392);
  v25 = *(a1 + 400);
  v26 = *(a1 + 3736);
  v27 = (*(a1 + 3744) - v26) >> 5;
  v28 = *(a1 + 3760);
  v29 = (*(a1 + 3768) - v28) >> 5;
  v39 = v20;
  v40 = v42;
  v41 = 0x600000000;
  v42[6] = v6;
  v42[7] = v7;
  v42[8] = v8;
  v42[9] = v9;
  v42[10] = v10;
  v42[11] = v11;
  v42[12] = v12;
  v42[13] = v13;
  v42[14] = v14;
  v42[15] = v15;
  v42[16] = v16;
  v42[17] = v17;
  v42[18] = v18;
  v42[19] = v19;
  v42[20] = v20;
  v42[21] = v21;
  v42[22] = v22;
  v42[23] = v23;
  v42[24] = v24;
  v42[25] = v25;
  v42[26] = v26;
  v42[27] = v27;
  v42[28] = v28;
  v42[29] = v29;
  v30 = *a4;
  v31 = *(a4 + 8);
  if (v31)
  {
    v32 = MEMORY[0x277D826F0];
    v33 = v31;
    while (1)
    {
      v34 = operator new(120 * v33, v32);
      if (v34)
      {
        break;
      }

      v35 = v33 >> 1;
      v36 = v33 > 1;
      v33 >>= 1;
      if (!v36)
      {
        goto LABEL_7;
      }
    }

    v37 = v34;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v30, (v30 + 120 * v31), v31, v34, v33);
    operator delete(v37);
  }

  else
  {
    v35 = 0;
LABEL_7:
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v30, (v30 + 120 * v31), v31, 0, v35);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::ByteCodeExecutor::execute(unsigned __int16 **this, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a2;
  v362[32] = *MEMORY[0x277D85DE8];
LABEL_2:
  while (2)
  {
    v6 = *this;
    v8 = *this + 1;
    v7 = **this;
    *this = v8;
    result = 1;
    switch(v7)
    {
      case 0:
        *this = v6 + 2;
        v128 = v6[1];
        *&v361 = v362;
        *(&v361 + 1) = 0x1000000000;
        v129 = *this;
        v130 = **this;
        *this += 2;
        v131 = v129[1];
        v132 = this[29];
        mlir::PDLResultList::PDLResultList(&__src, v131);
        v133 = std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::operator()(*&v132[16 * v128 + 12], v4, &__src, v361, DWORD2(v361));
        LODWORD(v128) = v130 == (v133 & 1);
        LOBYTE(v346) = v133;
        v134 = *this;
        *this += 2 * v128;
        *this = &this[23][*&v134[2 * v128]];
        llvm::SmallVector<llvm::OwningArrayRef<mlir::Value>,3u>::~SmallVector(v360);
        llvm::SmallVector<llvm::OwningArrayRef<mlir::Type>,3u>::~SmallVector(v357);
        if (v355 != v356)
        {
          free(v355);
        }

        if (v352[0] != v353)
        {
          free(v352[0]);
        }

        if (__src != &v349)
        {
          free(__src);
        }

        v135 = v361;
        if (v361 == v362)
        {
          continue;
        }

        goto LABEL_361;
      case 1:
        *this = v6 + 2;
        v170 = v6[1];
        v171 = this[31];
        *&v361 = v362;
        *(&v361 + 1) = 0x1000000000;
        v172 = *(*this)++;
        mlir::PDLResultList::PDLResultList(&__src, v172);
        v173 = std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::operator()(*&v171[16 * v170 + 12], v4, &__src, v361, DWORD2(v361));
        LOBYTE(v346) = v173;
        llvm::SmallVector<llvm::OwningArrayRef<mlir::Value>,3u>::~SmallVector(v360);
        llvm::SmallVector<llvm::OwningArrayRef<mlir::Type>,3u>::~SmallVector(v357);
        if (v355 != v356)
        {
          free(v355);
        }

        if (v352[0] != v353)
        {
          free(v352[0]);
        }

        if (__src != &v349)
        {
          free(__src);
        }

        if (v361 != v362)
        {
          free(v361);
        }

        if (v173)
        {
          continue;
        }

        result = 0;
        goto LABEL_388;
      case 2:
        v151 = v6[2];
        v150 = v6 + 2;
        v149 = v151;
        *this = v150;
        v152 = *(v150 - 1);
        v153 = this[10];
        v154 = 21;
        if (v153 <= v152)
        {
          v155 = 21;
        }

        else
        {
          v155 = 9;
        }

        if (v153 <= v152)
        {
          v156 = this[10];
        }

        else
        {
          v156 = 0;
        }

        v157 = *&this[v155][4 * (v152 - v156)];
        v158 = v150 + 1;
        *this = v150 + 1;
        if (v153 > v149)
        {
          v154 = 9;
          v153 = 0;
        }

        v159 = v157 != *&this[v154][4 * (v149 - v153)];
        *this = &v158[2 * v159];
        v52 = *&v158[2 * v159];
        goto LABEL_358;
      case 3:
        v89 = v6[3];
        v88 = v6 + 3;
        v87 = v89;
        v90 = *(v88 - 2);
        *this = v88;
        v91 = *(v88 - 1);
        v92 = this[10];
        v93 = 21;
        if (v92 <= v91)
        {
          v94 = 21;
        }

        else
        {
          v94 = 9;
        }

        if (v92 <= v91)
        {
          v95 = this[10];
        }

        else
        {
          v95 = 0;
        }

        v96 = *&this[v94][4 * (v91 - v95)];
        v97 = v88 + 1;
        *this = v88 + 1;
        if (v92 > v87)
        {
          v93 = 9;
          v92 = 0;
        }

        v98 = *&this[v93][4 * (v87 - v92)];
        if (v90 == 3)
        {
          v99 = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v96, v98);
          v97 = *this;
          if (v99)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v299 = v96[1];
          if (v299 == v98[1])
          {
            v300 = *v98;
            __src = *v96;
            v348 = 0;
            v361 = v300;
            if (!v299)
            {
LABEL_279:
              v182 = 0;
              goto LABEL_357;
            }

            v301 = 0;
            while (1)
            {
              v302 = mlir::ValueRange::dereference_iterator(&__src, v301);
              if (v302 != mlir::ValueRange::dereference_iterator(&v361, v301))
              {
                break;
              }

              v348 = ++v301;
              *(&v361 + 1) = v301;
              if (v299 == v301)
              {
                v97 = *this;
                goto LABEL_279;
              }
            }

            v97 = *this;
          }
        }

        v182 = 2;
LABEL_357:
        *this = &v97[v182];
        v52 = *&v97[v182];
LABEL_358:
        v46 = &this[23][v52];
LABEL_359:
        *this = v46;
        continue;
      case 4:
        goto LABEL_257;
      case 5:
        *this = v6 + 2;
        v123 = *&this[9][4 * v6[1]];
        v124 = *(v6 + 1);
        v97 = v6 + 5;
        *this = v6 + 5;
        v125 = *(v123 + 44);
        if (v6[4])
        {
          if ((v125 & 0x800000) != 0)
          {
            v126 = *(v123 + 68);
          }

          else
          {
            v126 = 0;
          }

          v127 = v126 < v124;
        }

        else
        {
          if ((v125 & 0x800000) != 0)
          {
            v308 = *(v123 + 68);
          }

          else
          {
            v308 = 0;
          }

          v127 = v308 != v124;
        }

        v182 = 2 * v127;
        goto LABEL_357;
      case 6:
        v138 = v6[2];
        v137 = v6 + 2;
        v136 = v138;
        *this = v137;
        v139 = this[10];
        v140 = *&this[9][4 * *(v137 - 1)];
        v141 = v137 + 1;
        *this = v137 + 1;
        v142 = 21;
        if (v139 > v138)
        {
          v142 = 9;
          v139 = 0;
        }

        v143 = *(v140 + 48) != *&this[v142][4 * (v136 - v139)];
        *this = &v141[2 * v143];
        v52 = *&v141[2 * v143];
        goto LABEL_358;
      case 7:
        *this = v6 + 2;
        v102 = *(v6 + 1);
        v103 = *(*&this[9][4 * v6[1]] + 36);
        v305 = v103 == v102;
        v104 = v103 < v102;
        v105 = !v305;
        v106 = 4 * v105;
        v107 = 4 * v104;
        if (!v6[4])
        {
          v107 = v106;
        }

        v108 = (v6 + v107 + 10);
        *this = v108;
        v52 = *v108;
        goto LABEL_358;
      case 8:
        v176 = v6[2];
        v175 = v6 + 2;
        v174 = v176;
        *this = v175;
        v177 = this[10];
        v178 = *&this[9][4 * *(v175 - 1)];
        *this = v175 + 1;
        v179 = 21;
        if (v177 > v176)
        {
          v179 = 9;
          v177 = 0;
        }

        v180 = *&this[v179][4 * (v174 - v177)];
        v181 = _ZN4llvm6detaileqINS_14iterator_rangeINS_15mapped_iteratorIN4mlir9ArrayAttr19attr_value_iteratorINS4_8TypeAttrEEEZNKS5_15getAsValueRangeIS7_NS4_4TypeEEEDavEUlS7_E_SA_EEEENS4_9TypeRangeENS_12PointerUnionIJPKNS4_5ValueEPKSA_PNS4_9OpOperandEPNS4_6detail12OpResultImplEEEESA_SA_SA_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_(*v178, v178[1], *(v180 + 8), *(v180 + 8) + 8 * *(v180 + 16));
        v97 = *this;
        v182 = 2;
        if (v181)
        {
          v182 = 0;
        }

        goto LABEL_357;
      case 9:
        *this = v6 + 2;
        ++*&this[19][2 * v6[1]];
        v73 = *(this + 4);
        *this = *&this[1][4 * v73 - 4];
        *(this + 4) = v73 - 1;
        continue;
      case 10:
        v64 = v6[1];
        v65 = v6[2];
        *this = v6 + 4;
        v66 = v6[3];
        v67 = this[10];
        v68 = 21;
        if (v67 > v66)
        {
          v68 = 9;
          v67 = 0;
        }

        v69 = *&this[v68][4 * (v66 - v67)];
        v70 = *(v69 + 16);
        if (v70)
        {
          v71 = *(v69 + 8) + 8 * v70;
          v72 = this[15];
          operator new[]();
        }

        v335 = &this[13][8 * v65];
        *v335 = 2;
        *(v335 + 1) = 0;
        *&this[9][4 * v64] = &this[13][8 * v65];
        continue;
      case 11:
        v202 = v6[1];
        *this = v6 + 3;
        v203 = v6[2];
        v204 = this[10];
        v205 = 21;
        if (v204 > v203)
        {
          v205 = 9;
          v204 = 0;
        }

        v206 = *&this[v205][4 * (v203 - v204)];
        __src = a4;
        v348 = v206;
        *&v349 = &v350;
        *(&v349 + 1) = 0x400000000;
        v352[0] = v353;
        v352[1] = 0x400000000;
        v354[0] = &v355;
        v354[1] = 0x400000000;
        v357[0] = 4;
        v357[1] = v358;
        v357[2] = 0x100000000;
        v358[1] = v359;
        v358[2] = 0x100000000;
        v359[1] = 0;
        v360[0] = 0;
        v360[1] = &mlir::detail::TypeIDResolver<void,void>::id;
        v360[2] = 0;
        v360[4] = 0;
        v207 = *this + 1;
        v208 = **this;
        *this = v207;
        if (v208)
        {
          do
          {
            v209 = *this;
            v210 = (*this)[1];
            ++*this;
            v213 = *v209;
            v211 = v209 + 2;
            v212 = v213;
            v214 = this[10];
            v215 = v214 > v213;
            if (v214 <= v213)
            {
              v216 = 21;
            }

            else
            {
              v216 = 9;
            }

            if (v215)
            {
              v217 = 0;
            }

            else
            {
              v217 = this[10];
            }

            v218 = *&this[v216][4 * (v212 - v217)];
            *this = v211;
            if (v214 <= v210)
            {
              v219 = 21;
            }

            else
            {
              v219 = 9;
            }

            if (v214 <= v210)
            {
              v220 = v214;
            }

            else
            {
              v220 = 0;
            }

            v221 = *&this[v219][4 * (v210 - v220)];
            if (v221)
            {
              mlir::NamedAttrList::push_back(v354, v218, v221);
            }

            --v208;
          }

          while (v208);
          v207 = *this;
        }

        v223 = *v207;
        v222 = v223;
        *this = v207 + 1;
        if (!v223)
        {
          goto LABEL_189;
        }

        if (v222 == 0xFFFF)
        {
          v224 = v348;
          v225 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();
          v226 = *mlir::detail::InterfaceMap::lookup(v224 + 32, v225);
          v227 = __src;
          v228 = v349;
          v229 = *(**__src + 32);
          v230 = DWORD2(v349);
          Dictionary = mlir::NamedAttrList::getDictionary(v354, v229);
          if ((v226(v229, v227, 1, v228 & 0xFFFFFFFFFFFFFFF9, v230, Dictionary, v360[0]) & 1) == 0)
          {
            goto LABEL_190;
          }
        }

        else
        {
          do
          {
            v232 = *this;
            v233 = **this;
            *this += 2;
            v234 = v232[1];
            if (v233 == 2)
            {
              v235 = this[10];
              v236 = 21;
              if (v235 > v234)
              {
                v236 = 9;
                v235 = 0;
              }

              llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v352, *&this[v236][4 * (v234 - v235)]);
            }

            else
            {
              v237 = *&this[9][4 * v234];
              llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v352, *v237, 0, *v237, v237[1]);
            }

            --v222;
          }

          while (v222);
        }

LABEL_189:
        v238 = mlir::Operation::create(&__src);
        mlir::OpBuilder::insert((v4 + 8), v238);
        *&this[9][4 * v202] = v238;
LABEL_190:
        mlir::OperationState::~OperationState(&__src);
        continue;
      case 12:
        v160 = v6[1];
        v161 = v6[2];
        __src = &v349;
        v348 = 0x600000000;
        *this = v6 + 4;
        v162 = v6[3];
        if (v6[3])
        {
          do
          {
            v163 = *this;
            v164 = **this;
            *this += 2;
            v165 = v163[1];
            if (v164 == 2)
            {
              v166 = this[10];
              v167 = 21;
              if (v166 > v165)
              {
                v167 = 9;
                v166 = 0;
              }

              llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&__src, *&this[v167][4 * (v165 - v166)]);
            }

            else
            {
              v168 = *&this[9][4 * v165];
              llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(&__src, *v168, 0, *v168, v168[1]);
            }

            --v162;
          }

          while (v162);
          if (v348)
          {
            v169 = this[15];
            operator new[]();
          }
        }

        v337 = &this[13][8 * v161];
        *v337 = 2;
        *(v337 + 1) = 0;
        *&this[9][4 * v160] = &this[13][8 * v161];
        v135 = __src;
        goto LABEL_360;
      case 13:
        v53 = v6[1];
        *this = v6 + 3;
        v54 = v6[2];
        __src = &v349;
        v348 = 0x600000000;
        if (v348)
        {
          v55 = this[18];
          operator new[]();
        }

        v307 = &this[16][8 * v54];
        *v307 = 0;
        *(v307 + 1) = 0;
        *&this[9][4 * v53] = &this[16][8 * v54];
        goto LABEL_347;
      case 14:
        *this = v6 + 2;
        (*(*v4 + 16))(v4, *&this[9][4 * v6[1]]);
        continue;
      case 15:
        *this = v6 + 2;
        v239 = v6[1];
        v240 = this[10];
        v241 = 21;
        if (v240 > v239)
        {
          v241 = 9;
          v240 = 0;
        }

        v242 = *&this[v241][4 * (v239 - v240)];
        v243 = *(v6 + 1);
        *this = v6 + 5;
        if (v242)
        {
          if (v242[1] <= v243)
          {
            v242 = 0;
          }

          else
          {
            v242 = *(*v242 + 8 * v243);
          }
        }

        *&this[9][4 * v6[4]] = v242;
        continue;
      case 16:
        *this = v6 + 2;
        v100 = this[9];
        v244 = *&v100[4 * v6[1]];
        v245 = *(v6 + 1);
        *this = v6 + 5;
        v81 = v6[4];
        if (!v244 || v244[1] <= v245)
        {
          goto LABEL_201;
        }

        Attr = mlir::TypeRange::dereference_iterator(*v244, v245);
        goto LABEL_200;
      case 17:
        *this = v6 + 2;
        v100 = this[9];
        Attr = *&v100[4 * v6[1]];
        v101 = *(v6 + 1);
        *this = v6 + 5;
        v81 = v6[4];
        if (!Attr)
        {
          goto LABEL_202;
        }

        if (Attr[1] <= v101)
        {
LABEL_201:
          Attr = 0;
        }

        else
        {
          Attr = mlir::ValueRange::dereference_iterator(Attr, v101);
LABEL_200:
          v100 = this[9];
        }

LABEL_202:
        *&v100[4 * v81] = Attr;
        continue;
      case 18:
LABEL_388:
        v342 = *MEMORY[0x277D85DE8];
        return result;
      case 19:
        v39 = v6[1];
        v40 = v6[2];
        v8 = v6 + 5;
        *this = v6 + 5;
        v41 = v6[4];
        v42 = this[19];
        v43 = &this[11][8 * v39];
        v44 = *&v42[2 * v41];
        if (*(v43 + 1) > v44)
        {
          *&this[9][4 * v40] = *(*v43 + 8 * v44);
          v45 = *(this + 4);
          if (v45 >= *(this + 5))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod((this + 1), this + 3, v45 + 1, 8);
            v45 = *(this + 4);
          }

          *&this[1][4 * v45] = v6;
          ++*(this + 4);
          v46 = (*this + 2);
          goto LABEL_359;
        }

        *&v42[2 * v41] = 0;
        *this = v8;
LABEL_257:
        v52 = *v8;
        goto LABEL_358;
      case 20:
        v185 = v6[3];
        v184 = v6 + 3;
        v183 = v185;
        v81 = *(v184 - 2);
        *this = v184;
        v186 = this[10];
        v187 = *&this[9][4 * *(v184 - 1)];
        *this = v184 + 1;
        v188 = 21;
        if (v186 <= v185)
        {
          v189 = v186;
        }

        else
        {
          v188 = 9;
          v189 = 0;
        }

        Attr = mlir::Operation::getAttr(v187, *&this[v188][4 * (v183 - v189)]);
        goto LABEL_200;
      case 21:
        v81 = v6[1];
        *this = v6 + 3;
        v82 = v6[2];
        v83 = this[10];
        v84 = 21;
        if (v83 > v82)
        {
          v84 = 9;
          v83 = 0;
        }

        Attr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*&this[v84][4 * (v82 - v83)]);
        if (Attr)
        {
          Attr = (*v86)(v86, Attr);
        }

        goto LABEL_200;
      case 22:
        v27 = v6[1];
        v250 = v6[2];
        *this = v6 + 4;
        v28 = this[9];
        v29 = *&v28[4 * v6[3]];
        if (v250 == 4)
        {
          if (!v29)
          {
            goto LABEL_354;
          }

          if ((v29[1] & 7) != 7)
          {
LABEL_351:
            v336 = v29[1] & 7;
            if (v336 == 6)
            {
              v29 += 3 * v29[2] + 15;
            }

            else
            {
              v29 += 2 * v336 + 2;
            }

LABEL_354:
            *&v28[4 * v27] = v29;
            continue;
          }
        }

        else
        {
          if (!v29)
          {
            goto LABEL_354;
          }

          if (v29[1])
          {
            v303 = *v29;
            v304 = v303 & 6;
            v29 = (v303 & 0xFFFFFFFFFFFFFFF8);
            if (v304)
            {
              v305 = 1;
            }

            else
            {
              v305 = v29 == 0;
            }

            if (v305)
            {
              if (v304 == 2 && v29 != 0)
              {
                v29 = v29[3];
              }
            }

            else
            {
              v29 = *v29;
            }

            if ((~*(v29 + 2) & 7) == 0)
            {
              v29 = 0;
            }

            if (!v29)
            {
              goto LABEL_354;
            }

            goto LABEL_351;
          }
        }

        v29 = 0;
        goto LABEL_354;
      case 23:
      case 24:
      case 25:
      case 26:
        v10 = v7 - 23;
        goto LABEL_4;
      case 27:
        v10 = *(v6 + 1);
        *this = v6 + 3;
LABEL_4:
        continue;
      case 28:
        v111 = v6[4];
        v110 = v6 + 4;
        v109 = v111;
        v112 = *(v110 - 3);
        *this = v110;
        v113 = *&this[9][4 * *(v110 - 1)];
        *this = v110 + 1;
        if ((*(v113 + 46) & 0x80) != 0)
        {
          v114 = *(v113 + 72);
          v115 = *(v113 + 68);
        }

        else
        {
          v114 = 0;
          v115 = 0;
        }

        v116 = this[16];
        if (v112 == -1)
        {
          goto LABEL_364;
        }

        v117 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
        if ((*(**(v113 + 48) + 32))(*(v113 + 48), v117))
        {
          v118 = mlir::Operation::getAttrOfType<mlir::detail::DenseArrayAttrImpl<int>>(v113, "operandSegmentSizes", 0x13uLL);
          if (!v118 || v112 >= v118[4] >> 2)
          {
            v331 = 0;
            goto LABEL_369;
          }

          if (v112)
          {
            LODWORD(v119) = 0;
            v120 = 4 * v112;
            v121 = v118[3];
            do
            {
              v122 = *v121++;
              v119 = (v122 + v119);
              v120 -= 4;
            }

            while (v120);
          }

          else
          {
            v119 = 0;
          }

          v115 = *(v118[3] + 4 * v112);
          v114 += 32 * v119;
        }

        else
        {
          v309 = v115 >= v112;
          v115 -= v112;
          if (!v309)
          {
            goto LABEL_368;
          }

          v114 += 32 * v112;
        }

LABEL_364:
        if (v109 != 0xFFFF)
        {
          v331 = &v116[8 * v109];
          *v331 = v114 & 0xFFFFFFFFFFFFFFF9 | 2;
          v331[1] = v115;
          goto LABEL_369;
        }

        if (v115 == 1)
        {
          v331 = *(v114 + 24);
          goto LABEL_369;
        }

LABEL_368:
        v331 = 0;
LABEL_369:
        v338 = *(*this)++;
        *&this[9][4 * v338] = v331;
        continue;
      case 29:
      case 30:
      case 31:
      case 32:
        v11 = v7 - 29;
        goto LABEL_6;
      case 33:
        v11 = *(v6 + 1);
        *this = v6 + 3;
LABEL_6:
        continue;
      case 34:
        v266 = v6[4];
        v265 = v6 + 4;
        v264 = v266;
        v267 = *(v265 - 3);
        *this = v265;
        v268 = *&this[9][4 * *(v265 - 1)];
        *this = v265 + 1;
        v269 = *(v268 + 36);
        v270 = v268 - 16;
        v271 = this[16];
        if (v269)
        {
          v272 = v268 - 16;
        }

        else
        {
          v272 = 0;
        }

        if (v267 == -1)
        {
          goto LABEL_375;
        }

        if ((atomic_load_explicit(&qword_27FC1EEA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EEA8))
        {
          v340 = llvm::getTypeName<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>>();
          _MergedGlobals_27 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v340, v341);
          __cxa_guard_release(&qword_27FC1EEA8);
        }

        if (!(*(**(v268 + 48) + 32))(*(v268 + 48), _MergedGlobals_27))
        {
          if (v269 < v267)
          {
            goto LABEL_332;
          }

          if (v267)
          {
            v332 = *(v272 + 8) & 7;
            v333 = v267;
            if (v332 == 6)
            {
              goto LABEL_343;
            }

            v334 = (5 - v332);
            v333 = v267 - v334;
            if (v267 <= v334)
            {
              v272 = v270 - 16 * v267;
            }

            else
            {
              v270 -= 16 * v334;
LABEL_343:
              v272 = v270 - 24 * v333;
            }
          }

          v269 -= v267;
          goto LABEL_375;
        }

        v273 = mlir::Operation::getAttrOfType<mlir::detail::DenseArrayAttrImpl<int>>(v268, "resultSegmentSizes", 0x12uLL);
        if (!v273 || v267 >= v273[4] >> 2)
        {
LABEL_332:
          v330 = 0;
          v4 = a2;
          goto LABEL_380;
        }

        v274 = v273[3];
        if (v267)
        {
          LODWORD(v275) = 0;
          v276 = 4 * v267;
          v277 = v273[3];
          do
          {
            v278 = *v277++;
            v275 = (v278 + v275);
            v276 -= 4;
          }

          while (v276);
          v279 = *(v274 + 4 * v267);
          if (v275)
          {
            if (!v269)
            {
              goto LABEL_240;
            }

            v280 = *(v272 + 8) & 7;
            if (v280 == 6)
            {
              goto LABEL_240;
            }

            v281 = (5 - v280);
            if (v275 > v281)
            {
              v270 -= 16 * v281;
              v275 -= v281;
LABEL_240:
              v272 = v270 - 24 * v275;
              goto LABEL_374;
            }

            v272 = v270 - 16 * v275;
          }
        }

        else
        {
          v279 = *(v274 + 4 * v267);
        }

LABEL_374:
        v269 = v279;
LABEL_375:
        v4 = a2;
        if (v264 == 0xFFFF)
        {
          if (v269 == 1)
          {
            v330 = v272;
          }

          else
          {
            v330 = 0;
          }
        }

        else
        {
          v330 = &v271[8 * v264];
          *v330 = v272 & 0xFFFFFFFFFFFFFFF9 | 4;
          v330[1] = v269;
        }

LABEL_380:
        v339 = *(*this)++;
        *&this[9][4 * v339] = v330;
        continue;
      case 35:
        v56 = v6[1];
        *this = v6 + 3;
        v57 = &this[11][8 * v6[2]];
        *&this[9][4 * v56] = v57;
        if (*v57)
        {
          MEMORY[0x25F891010](*v57, 0x20C8093837F09);
        }

        *v57 = 0;
        *(v57 + 1) = 0;
        v58 = *this;
        v59 = **this;
        *this += 2;
        v60 = *&this[9][4 * v58[1]];
        if (v59 == 4)
        {
          if (v60)
          {
            v61 = *v60;
            if (*v60)
            {
              v62 = 0;
              v63 = -1;
              do
              {
                v61 = *v61;
                ++v63;
                v62 += 8;
              }

              while (v61);
            }

            operator new[]();
          }
        }

        else if (v60)
        {
          __src = &v349;
          v348 = 0x600000000;
          v361 = *v60;
          v290 = v60[1];
          if (v290)
          {
            for (i = 0; i != v290; *(&v361 + 1) = i)
            {
              v292 = mlir::ValueRange::dereference_iterator(&v361, i);
              v293 = *v292;
              if (*v292)
              {
                v294 = 0;
                v295 = *v292;
                do
                {
                  ++v294;
                  v295 = *v295;
                }

                while (v295);
              }

              else
              {
                v294 = 0;
              }

              v296 = v348;
              v297 = v294 + v348;
              if (v297 > HIDWORD(v348))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v349, v297, 8);
                v296 = v348;
              }

              if (v293)
              {
                v298 = __src + 8 * v296;
                do
                {
                  *v298++ = v293[2];
                  v293 = *v293;
                }

                while (v293);
              }

              LODWORD(v348) = v296 + v294;
              ++i;
            }
          }

          operator new[]();
        }

        continue;
      case 36:
        v27 = v6[1];
        *this = v6 + 3;
        v28 = this[9];
        v29 = *&v28[4 * v6[2]];
        if (v29)
        {
          v29 = (v29[1] & 0xFFFFFFFFFFFFFFF8);
        }

        goto LABEL_354;
      case 37:
        v144 = v6[1];
        v145 = v6[2];
        *this = v6 + 4;
        v146 = this[9];
        v147 = *&v146[4 * v6[3]];
        if (v147)
        {
          v348 = 0;
          v148 = *v147;
          __src = *v147;
          v349 = v148;
          mlir::TypeRange::TypeRange<mlir::ValueRange>(&v361, &__src);
          *&this[13][8 * v145] = v361;
          *&this[9][4 * v144] = &this[13][8 * v145];
        }

        else
        {
          *&v146[4 * v144] = 0;
        }

        continue;
      case 38:
        v47 = v6 + 2;
        *this = v6 + 2;
        v48 = v6[1];
        v49 = this[10];
        v50 = 21;
        if (v49 > v48)
        {
          v50 = 9;
          v49 = 0;
        }

        v51 = *&this[v50][4 * (v48 - v49)] == 0;
        *this = &v47[2 * v51];
        v52 = *&v47[2 * v51];
        goto LABEL_358;
      case 39:
        v246 = v6[1];
        v346 = this[25][v246];
        v247 = v346;
        *this = v6 + 2;
        v248 = &this[23][*(v6 + 1)];
        if (v247 == 0xFFFF)
        {
          *this = v248;
          continue;
        }

        *this = v6 + 5;
        v249 = v6[4];
        __src = &v349;
        v348 = 0x400000000;
        if (v249 < 5)
        {
          if (!v249)
          {
            v312 = 0;
            v311 = &v349;
            goto LABEL_310;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v349, v249, 8);
        }

        do
        {
          v310 = *(*this)++;
          llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(&__src, *(*&this[9][4 * v310] + 24));
          LODWORD(v249) = v249 - 1;
        }

        while (v249);
        v311 = __src;
        v312 = v348;
LABEL_310:
        v313 = mlir::FusedLoc::get(v311, v312, 0, *(v4 + 8));
        *&v361 = v313;
        v314 = &this[27][52 * v246];
        v315 = *(a3 + 8);
        if (v315 >= *(a3 + 12))
        {
          llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCode::MatchResult,false>::growAndEmplaceBack<mlir::Location &,mlir::detail::PDLByteCodePattern const&,mlir::PatternBenefit &>(a3, &v361, v314, &v346);
          v317 = *(a3 + 8);
        }

        else
        {
          v316 = *a3 + 120 * v315;
          *v316 = v313;
          *(v316 + 8) = v316 + 24;
          *(v316 + 104) = v314;
          *(v316 + 16) = 0x600000000;
          *(v316 + 88) = v316 + 104;
          *(v316 + 72) = v316 + 88;
          *(v316 + 80) = 0;
          *(v316 + 96) = 0;
          *(v316 + 112) = v247;
          v317 = *(a3 + 8) + 1;
          *(a3 + 8) = v317;
        }

        v318 = *a3 + 120 * v317;
        v319 = *(*this)++;
        if (*(v318 - 100) < v319)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v318 - 112, (v318 - 96), v319, 8);
        }

        if (*(v318 - 36) < v319)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v318 - 48, (v318 - 32), v319, 16);
        }

        if (*(v318 - 20) < v319)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v318 - 32, (v318 - 16), v319, 16);
        }

        if (!v319)
        {
          goto LABEL_328;
        }

        break;
      case 40:
        *this = v6 + 2;
        v190 = *&this[9][4 * v6[1]];
        __src = &v349;
        v348 = 0x1000000000;
        (**v4)(v4, v190, __src & 0xFFFFFFFFFFFFFFF9, v348);
LABEL_347:
        v135 = __src;
LABEL_360:
        if (v135 != &v349)
        {
LABEL_361:
          free(v135);
        }

        continue;
      case 41:
        v14 = v6[2];
        v13 = v6 + 2;
        v12 = v14;
        *this = v13;
        v15 = *(v13 - 1);
        v16 = this[10];
        v17 = 21;
        if (v16 <= v15)
        {
          v18 = 21;
        }

        else
        {
          v18 = 9;
        }

        if (v16 <= v15)
        {
          v19 = this[10];
        }

        else
        {
          v19 = 0;
        }

        v20 = *&this[v18][4 * (v15 - v19)];
        v21 = v13 + 1;
        *this = v13 + 1;
        if (v16 > v12)
        {
          v17 = 9;
          v16 = 0;
        }

        v22 = *&this[v17][4 * (v12 - v16)];
        v23 = *(v22 + 16);
        if (!v23)
        {
          goto LABEL_338;
        }

        v24 = 0;
        v25 = *(v22 + 8);
        v26 = 8 * v23;
        while (*v25 != v20)
        {
          ++v25;
          v24 += 8;
          v26 -= 8;
          if (!v26)
          {
            goto LABEL_338;
          }
        }

        goto LABEL_253;
      case 42:
        *this = v6 + 2;
        v282 = this[10];
        v283 = *&this[9][4 * v6[1]];
        *this = v6 + 3;
        v284 = v6[2];
        v285 = 21;
        if (v282 > v284)
        {
          v285 = 9;
          v282 = 0;
        }

        *&v361 = *&this[v285][4 * (v284 - v282)];
        mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(&v361, &__src);
        if ((*(v283 + 46) & 0x80) != 0)
        {
          v286 = *(v283 + 68);
        }

        else
        {
          v286 = 0;
        }

        v287 = v349;
        if (v349 == v351)
        {
          goto LABEL_252;
        }

        v79 = -4;
        while (1)
        {
          v288 = (v348 & 1) != 0 ? 0 : v287;
          if (*(__src + v288) == v286)
          {
            goto LABEL_255;
          }

          ++v287;
          v79 -= 4;
          if (v351 == v287)
          {
            goto LABEL_252;
          }
        }

      case 43:
        v30 = v6[2];
        *this = v6 + 2;
        v31 = *(*&this[9][4 * v6[1]] + 48);
        v32 = v6 + 3;
        *this = v6 + 3;
        if (!v30)
        {
          goto LABEL_301;
        }

        v33 = 0;
        v34 = this[10];
        v35 = 5;
        while (1)
        {
          *this = &v6[v33 + 4];
          v36 = v6[v33 + 3];
          v37 = 21;
          if (v34 <= v36)
          {
            v38 = v34;
          }

          else
          {
            v37 = 9;
            v38 = 0;
          }

          if (*&this[v37][4 * (v36 - v38)] == v31)
          {
            break;
          }

          ++v33;
          v35 += 2;
          if (v30 == v33)
          {
            v32 = &v6[v33 + 3];
            goto LABEL_301;
          }
        }

        v32 = &v6[v30 + v35];
        *this = v32;
LABEL_301:
        v52 = *v32;
        goto LABEL_358;
      case 44:
        *this = v6 + 2;
        v74 = this[10];
        v75 = *&this[9][4 * v6[1]];
        *this = v6 + 3;
        v76 = v6[2];
        v77 = 21;
        if (v74 > v76)
        {
          v77 = 9;
          v74 = 0;
        }

        *&v361 = *&this[v77][4 * (v76 - v74)];
        mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(&v361, &__src);
        v78 = v349;
        if (v349 == v351)
        {
          goto LABEL_252;
        }

        v79 = -4;
        while (1)
        {
          v80 = (v348 & 1) != 0 ? 0 : v78;
          if (*(__src + v80) == *(v75 + 36))
          {
            break;
          }

          ++v78;
          v79 -= 4;
          if (v351 == v78)
          {
            goto LABEL_252;
          }
        }

LABEL_255:
        v21 = &(*this)[v79 / 0xFFFFFFFFFFFFFFFELL];
        goto LABEL_337;
      case 45:
        v253 = v6[2];
        v252 = v6 + 2;
        v251 = v253;
        *this = v252;
        v254 = *(v252 - 1);
        v255 = this[10];
        v256 = 21;
        if (v255 <= v254)
        {
          v257 = 21;
        }

        else
        {
          v257 = 9;
        }

        if (v255 <= v254)
        {
          v258 = this[10];
        }

        else
        {
          v258 = 0;
        }

        v259 = *&this[v257][4 * (v254 - v258)];
        v21 = v252 + 1;
        *this = v252 + 1;
        if (v255 > v251)
        {
          v256 = 9;
          v255 = 0;
        }

        v260 = *&this[v256][4 * (v251 - v255)];
        v261 = *(v260 + 16);
        if (!v261)
        {
          goto LABEL_338;
        }

        v24 = 0;
        v262 = *(v260 + 8);
        v263 = v262 + 8 * v261;
        while (v259 != *(*v262 + 8))
        {
          v262 += 8;
          v24 += 8;
          if (v262 == v263)
          {
            goto LABEL_338;
          }
        }

LABEL_253:
        v289 = v21 + (v24 >> 1);
        goto LABEL_336;
      case 46:
        v193 = v6[2];
        v192 = v6 + 2;
        v191 = v193;
        *this = v192;
        v194 = this[10];
        v195 = *&this[9][4 * *(v192 - 1)];
        v21 = v192 + 1;
        *this = v192 + 1;
        v196 = 21;
        if (v194 > v193)
        {
          v196 = 9;
          v194 = 0;
        }

        if (!v195)
        {
          goto LABEL_338;
        }

        v197 = *&this[v196][4 * (v191 - v194)];
        v198 = *(v197 + 16);
        if (!v198)
        {
          goto LABEL_338;
        }

        v199 = 0;
        v200 = *(v197 + 8);
        v201 = v200 + 8 * v198;
        while (!_ZN4llvm6detaileqINS_14iterator_rangeINS_15mapped_iteratorIN4mlir9ArrayAttr19attr_value_iteratorINS4_8TypeAttrEEEZNKS5_15getAsValueRangeIS7_NS4_4TypeEEEDavEUlS7_E_SA_EEEENS4_9TypeRangeENS_12PointerUnionIJPKNS4_5ValueEPKSA_PNS4_9OpOperandEPNS4_6detail12OpResultImplEEEESA_SA_SA_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_(*v195, v195[1], *(*v200 + 8), *(*v200 + 8) + 8 * *(*v200 + 16)))
        {
          v200 += 8;
          v199 += 8;
          if (v200 == v201)
          {
LABEL_252:
            v21 = *this;
            goto LABEL_338;
          }
        }

        v289 = *this + (v199 >> 1);
LABEL_336:
        v21 = (v289 + 4);
LABEL_337:
        *this = v21;
LABEL_338:
        v52 = *v21;
        goto LABEL_358;
      default:
        continue;
    }

    break;
  }

  while (1)
  {
    v320 = *this;
    v321 = **this;
    *this += 2;
    v322 = v320[1];
    if (v321 == 5)
    {
      v326 = *&this[9][4 * v322];
      llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(v318 - 32, *v326, v326[1]);
      v324 = *(v318 - 32);
      v325 = *(v318 - 24);
    }

    else
    {
      if (v321 != 3)
      {
        v328 = this[10];
        v329 = 21;
        if (v328 > v322)
        {
          v329 = 9;
          v328 = 0;
        }

        v327 = *&this[v329][4 * (v322 - v328)];
        goto LABEL_327;
      }

      v323 = *&this[9][4 * v322];
      llvm::SmallVectorTemplateBase<mlir::TypeRange,true>::push_back(v318 - 48, *v323, v323[1]);
      v324 = *(v318 - 48);
      v325 = *(v318 - 40);
    }

    v327 = v324 + 16 * v325 - 16;
LABEL_327:
    llvm::SmallVectorTemplateBase<void const*,true>::push_back(v318 - 112, v327);
    LODWORD(v319) = v319 - 1;
    if (!v319)
    {
LABEL_328:
      *this = v248;
      if (__src != &v349)
      {
        free(__src);
      }

      v4 = a2;
      goto LABEL_2;
    }
  }
}

uint64_t mlir::detail::PDLByteCode::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48[30] = *MEMORY[0x277D85DE8];
  v8 = *(*(a3 + 104) + 96);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = *v8;
      v11 = 8 * v9;
      do
      {
        v12 = *v10++;
        (*(*v12 + 16))(v12, a2);
        v11 -= 8;
      }

      while (v11);
    }
  }

  v13 = *a4;
  v14 = *(a3 + 16);
  if (v14)
  {
    memmove(v13, *(a3 + 8), 8 * v14);
    v13 = *a4;
  }

  v15 = *(a1 + 240);
  v16 = *(a1 + 248);
  v17 = (*(a4 + 8) - v13) >> 3;
  v18 = *(a4 + 24);
  v19 = (*(a4 + 32) - v18) >> 4;
  v20 = *(a4 + 48);
  v21 = (*(a4 + 56) - v20) >> 4;
  v22 = a4 + 72;
  v23 = *(a4 + 96);
  v24 = (*(a4 + 104) - v23) >> 4;
  v25 = a4 + 120;
  v26 = *(a4 + 144);
  v27 = (*(a4 + 152) - v26) >> 2;
  v28 = *(a1 + 64);
  v29 = (*(a1 + 72) - v28) >> 3;
  v30 = *(a4 + 168);
  v31 = (*(a4 + 176) - v30) >> 1;
  v32 = *(a1 + 392);
  v33 = *(a1 + 400);
  v34 = *(a1 + 3736);
  v35 = (*(a1 + 3744) - v34) >> 5;
  v36 = *(a1 + 3760);
  v37 = (*(a1 + 3768) - v36) >> 5;
  v45 = (v15 + 2 * *(*(a3 + 104) + 88));
  v46 = v48;
  v47 = 0x600000000;
  v48[6] = v13;
  v48[7] = v17;
  v48[8] = v18;
  v48[9] = v19;
  v48[10] = v20;
  v48[11] = v21;
  v48[12] = v22;
  v48[13] = v23;
  v48[14] = v24;
  v48[15] = v25;
  v48[16] = v26;
  v48[17] = v27;
  v48[18] = v28;
  v48[19] = v29;
  v48[20] = v15;
  v48[21] = v16;
  v48[22] = v30;
  v48[23] = v31;
  v48[24] = v32;
  v48[25] = v33;
  v48[26] = v34;
  v48[27] = v35;
  v48[28] = v36;
  v48[29] = v37;
  if (v8)
  {
    v39 = *(v8 + 8);
    if (v39)
    {
      v40 = *v8;
      v41 = 8 * v39;
      do
      {
        v42 = *v40++;
        (*(*v42 + 24))(v42, a2);
        v41 -= 8;
      }

      while (v41);
    }
  }

  if ((v38 & 1) == 0 && ((*(*a2 + 80))(a2) & 1) == 0)
  {
    llvm::report_fatal_error("Native PDL Rewrite failed, but the pattern rewriter doesn't support recovery. Failable pattern rewrites should not be used with pattern rewriters that do not support them.", 1);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4, void *a5)
{
  result = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = *a1;
  v11 = result;
  v12 = *(*a1 + 8 * result);
  if (v12 == -8)
  {
    --*(a1 + 4);
  }

  else if (v12)
  {
    return result;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v14 = buffer;
  v15 = buffer + 16;
  if (a3)
  {
    memcpy(buffer + 16, a2, a3);
  }

  v15[a3] = 0;
  *v14 = a3;
  *(v14 + 4) = *a5;
  *(v10 + 8 * v11) = v14;
  ++*(a1 + 3);
  result = llvm::StringMapImpl::RehashTable(a1, v11);
    ;
  }

  return result;
}

void anonymous namespace::Generator::generate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v356[2] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 48) + 16);
  if (a2 && v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id)
  {
    v350 = a2;
    v347 = a2 + 64;
    v6 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = llvm::xxh3_64bits(v7, v8, a3);
    LOWORD(v7) = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 72), v7, v8, v9) + 8);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 0);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v7);
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v10 = *(a2 + 68);
      v11 = *(a2 + 72);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    IsNegated = mlir::pdl_interp::ApplyConstraintOp::getIsNegated(&v350);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), IsNegated);
    v13 = *(a2 + 36);
    v14 = a2;
    v15 = a2 - 16;
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), *(a2 + 36));
    if (v13)
    {
      v16 = 0;
      v17 = a2 - 16;
      while (1)
      {
        v18 = v15;
        if (v16)
        {
          v19 = *(v14 - 8) & 7;
          v20 = v15;
          v21 = v16;
          if (v19 == 6)
          {
            goto LABEL_11;
          }

          v22 = (5 - v19);
          v18 = v17;
          v21 = v16 - v22;
          if (v16 > v22)
          {
            break;
          }
        }

LABEL_12:
        if (*(*(*(v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          __src[0] = v18;
          v23 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, __src);
          llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), *v23);
        }

        v25 = *(a3 + 24);
        v24 = *(a3 + 32);
        __src[0] = v18;
        v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v24, __src);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v25, *v26);
        ++v16;
        v17 -= 16;
        if (v13 == v16)
        {
          goto LABEL_15;
        }
      }

      v20 = v15 - 16 * v22;
LABEL_11:
      v18 = v20 - 24 * v21;
      goto LABEL_12;
    }

LABEL_15:
    v27 = *(v14 + 40);
    if (v27)
    {
      v28 = (((v347 + 16 * ((*(v14 + 44) >> 23) & 1) + ((*(v14 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      do
      {
        v29 = *v28;
        v28 += 4;
        --v27;
      }

      while (v27);
    }

    goto LABEL_111;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    v46 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v47 = *(v46 + 16);
    v48 = *(v46 + 24);
    v49 = llvm::xxh3_64bits(v47, v48, a3);
    LOWORD(v47) = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 48), v47, v48, v49) + 8);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 1);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v47);
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v50 = *(a2 + 68);
      v51 = *(a2 + 72);
    }

    else
    {
      v51 = 0;
      v50 = 0;
    }

    v52 = *(a2 + 36);
    v53 = a2;
    v54 = a2 - 16;
    if (*(a2 + 36))
    {
      v55 = a2 - 16;
    }

    else
    {
      v55 = 0;
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v52);
    if (!v52)
    {
      goto LABEL_111;
    }

    v56 = 0;
    v57 = v54;
    while (1)
    {
      v58 = v55;
      if (v56)
      {
        v59 = *(v53 - 8) & 7;
        v60 = v54;
        v61 = v56;
        if (v59 == 6)
        {
          goto LABEL_56;
        }

        v62 = (5 - v59);
        v58 = v57;
        v61 = v56 - v62;
        if (v56 > v62)
        {
          break;
        }
      }

LABEL_57:
      if (*(*(*(v58 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        __src[0] = v58;
        v63 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, __src);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), *v63);
      }

      v65 = *(a3 + 24);
      v64 = *(a3 + 32);
      __src[0] = v58;
      v66 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v64, __src);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v65, *v66);
      ++v56;
      v57 -= 16;
      if (v52 == v56)
      {
        goto LABEL_111;
      }
    }

    v60 = v54 - 16 * v62;
LABEL_56:
    v58 = v60 - 24 * v61;
    goto LABEL_57;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id)
  {
    v67 = *(a2 + 72);
    v68 = *(v67 + 24);
    if (*(*(*(v68 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v69 = *(v67 + 56);
      v70 = *(a2 + 40);
      v71 = (a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
      if (v70)
      {
        v72 = (a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v72 = 0;
      }

      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 2);
      v74 = *(a3 + 24);
      v73 = *(a3 + 32);
      __src[0] = v68;
      v75 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v73, __src);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v74, *v75);
      v76 = *MEMORY[0x277D85DE8];
      v77 = a3;
      v78 = v69;
      v79 = v72;
      v80 = v70;
      goto LABEL_82;
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 3);
    v97 = *(a2 + 72);
    v98 = *(v97 + 56);
    v99 = *(a2 + 40);
    v100 = (a2 + 8 * *(a2 + 47) + 87) & 0xFFFFFFFFFFFFFFF8;
    if (v99)
    {
      v101 = (a2 + 8 * *(a2 + 47) + 87) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v101 = 0;
    }

    v103 = *(a3 + 24);
    v102 = *(a3 + 32);
    __src[0] = *(v97 + 24);
    v104 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v102, __src);
    v105 = v103;
LABEL_81:
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v105, v104);
    v106 = *MEMORY[0x277D85DE8];
    v77 = a3;
    v78 = v98;
    v79 = v101;
    v80 = v99;
LABEL_82:

    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::BranchOp,void>::id)
  {
    v81 = *(a2 + 40);
    if (v81)
    {
      v82 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 4);
      v83 = (v82 + 24);
      do
      {
        v84 = *v83;
        v83 += 4;
        --v81;
      }

      while (v81);
      goto LABEL_111;
    }

    v117 = *(a3 + 24);
    v118 = *MEMORY[0x277D85DE8];
    v119 = 4;
LABEL_90:

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v117, v119);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id)
  {
    v85 = *(a2 + 80);
    v86 = *(*(a2 + 72) + 24);
    v87 = *(a2 + 40);
    v88 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v87)
    {
      v89 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v89 = 0;
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 2);
    v91 = *(a3 + 24);
    v90 = *(a3 + 32);
    __src[0] = v86;
    v92 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v90, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v91, *v92);
    v93 = *(a3 + 24);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v93, *v94);
    if (v87)
    {
      v95 = (v89 + 24);
      do
      {
        v96 = *v95;
        v95 += 4;
        --v87;
      }

      while (v87);
    }

    goto LABEL_111;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id)
  {
    __src[0] = a2;
    v107 = *(*(a2 + 72) + 24);
    Count = mlir::pdl_interp::CheckOperandCountOp::getCount(__src);
    v109 = *(a2 + 40);
    v110 = *(a2 + 44);
    v111 = a2 + 16 * ((v110 >> 23) & 1);
    v112 = *(v111 + 64) != 0;
    v113 = (v111 + 64 + ((v110 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v109)
    {
      v114 = v113;
    }

    else
    {
      v114 = 0;
    }

    v115 = a3;
    v116 = 5;
    goto LABEL_99;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id)
  {
    v120 = *(*(a2 + 72) + 24);
    mlir::OperationName::OperationName(&v350, *(*(a2 + 80) + 16), *(*(a2 + 80) + 24), *(a1 + 152));
    v121 = *(a2 + 40);
    if (v121)
    {
      v122 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v122 = 0;
    }

    v137 = v350;
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 6);
    v139 = *(a3 + 24);
    v138 = *(a3 + 32);
    __src[0] = v120;
    v140 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v138, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v139, *v140);
    if (v121)
    {
      v141 = (v122 + 24);
      do
      {
        v142 = *v141;
        v141 += 4;
        --v121;
      }

      while (v121);
    }

    goto LABEL_111;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id)
  {
    __src[0] = a2;
    v107 = *(*(a2 + 72) + 24);
    Count = mlir::pdl_interp::CheckResultCountOp::getCount(__src);
    v109 = *(a2 + 40);
    v123 = *(a2 + 44);
    v124 = a2 + 16 * ((v123 >> 23) & 1);
    v112 = *(v124 + 64) != 0;
    v125 = (v124 + 64 + ((v123 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v109)
    {
      v114 = v125;
    }

    else
    {
      v114 = 0;
    }

    v115 = a3;
    v116 = 7;
LABEL_99:
LABEL_111:
    v143 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id)
  {
    v126 = *(*(a2 + 72) + 24);
    v127 = *(*(a2 + 80) + 8);
    v128 = *(a2 + 40);
    if (v128)
    {
      v129 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v129 = 0;
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 2);
    v131 = *(a3 + 24);
    v130 = *(a3 + 32);
    __src[0] = v126;
    v132 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v130, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v131, *v132);
    v133 = *(a3 + 24);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v133, *v134);
    if (v128)
    {
      v135 = (v129 + 24);
      do
      {
        v136 = *v135;
        v135 += 4;
        --v128;
      }

      while (v128);
    }

    goto LABEL_111;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id)
  {
    v144 = *(a2 + 80);
    v145 = *(*(a2 + 72) + 24);
    v146 = *(a2 + 40);
    if (v146)
    {
      v147 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v147 = 0;
    }

    v148 = *MEMORY[0x277D85DE8];
    v149 = a3;
    v150 = 8;
    goto LABEL_116;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ContinueOp,void>::id)
  {
    v151 = *(a1 + 144);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 9);
    v117 = *(a3 + 24);
    v152 = *MEMORY[0x277D85DE8];
    v119 = v151 - 1;
    goto LABEL_90;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
  {
    v153 = a1;
LABEL_121:
    v155 = *v154;
    if (*(a2 + 36))
    {
      v156 = a2 - 16;
    }

    else
    {
      v156 = 0;
    }

    __src[0] = v156;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v153, __src) = v155;
    goto LABEL_111;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id)
  {
    v350 = a2;
    if (*(a2 + 36))
    {
      v157 = a2 - 16;
    }

    else
    {
      v157 = 0;
    }

    v158 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
    mlir::OperationName::OperationName(&v349, *(v158 + 16), *(v158 + 24), *(a1 + 152));
    v159 = v349;
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 11);
    v161 = *(a3 + 24);
    v160 = *(a3 + 32);
    __src[0] = v157;
    v162 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v160, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v161, *v162);
    v163 = *(a2 + 44);
    if ((v163 & 0x800000) != 0)
    {
      v164 = *(a2 + 72);
    }

    else
    {
      v164 = 0;
    }

    ODSOperands = mlir::pdl_interp::CreateOperationOp::getODSOperands(&v350, 1u);
    v167 = v166;
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v166);
    v168 = v350;
    v169 = (*(v350 + 44) >> 23) & 1;
    v170 = *(v350 + 16 * v169 + 72);
    v171 = *(v170 + 16);
    if (v171 && v167)
    {
      v172 = *(v170 + 8);
      v173 = v167 - 1;
      v174 = (ODSOperands + 24);
      v175 = 8 * v171 - 8;
      do
      {
        v177 = *v174;
        v174 += 4;
        v176 = v177;
        v178 = *v172++;
        v179 = *(a3 + 24);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v179, *v180);
        v182 = *(a3 + 24);
        v181 = *(a3 + 32);
        __src[0] = v176;
        v183 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v181, __src);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v182, *v183);
        v185 = v173-- != 0;
        if (!v175)
        {
          break;
        }

        v175 -= 8;
      }

      while (v185);
      v168 = v350;
      v169 = (*(v350 + 44) >> 23) & 1;
    }

    if (!*(v168 + 16 * v169 + 64))
    {
      v190 = mlir::pdl_interp::CreateOperationOp::getODSOperands(&v350, 2u);
LABEL_147:
      v192 = v190;
      v193 = v191;
      v194 = a3;
      v195 = v192;
      v196 = v193;
LABEL_148:
      goto LABEL_111;
    }

    v186 = *(a3 + 24);
    v187 = -1;
    goto LABEL_141;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id)
  {
    v188 = *(**((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 136);
    if (v188 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v189 = 12;
    }

    else
    {
      if (v188 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
LABEL_158:
        if (*(a2 + 36))
        {
          v206 = a2 - 16;
        }

        else
        {
          v206 = 0;
        }

        __src[0] = v206;
        v207 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, __src);
        v209 = *(a3 + 24);
        v208 = *(a3 + 32);
        __src[0] = v206;
        v210 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v208, __src);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v209, *v210);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v207);
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v211 = *(a2 + 72);
          v212 = *(a2 + 68);
        }

        else
        {
          v211 = 0;
          v212 = 0;
        }

        v213 = *MEMORY[0x277D85DE8];

        return;
      }

      v189 = 13;
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v189);
    goto LABEL_158;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
  {
    v153 = a1;
    goto LABEL_121;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v197 = a2 - 16;
    }

    else
    {
      v197 = 0;
    }

    __src[0] = v197;
    v198 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, __src);
    v199 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 10);
    v201 = *(a3 + 24);
    v200 = *(a3 + 32);
    __src[0] = v197;
    v202 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v200, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v201, *v202);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v198);
    v203 = *(a3 + 24);
    v204 = *(a3 + 32);
    v205 = *MEMORY[0x277D85DE8];

    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id)
  {
    v214 = *(*(a2 + 72) + 24);
    v215 = *(a3 + 24);
    v216 = 14;
LABEL_167:
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v215, v216);
LABEL_168:
    v218 = *(a3 + 24);
    v217 = *(a3 + 32);
    __src[0] = v214;
LABEL_169:
    v119 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v217, __src);
LABEL_170:
    v219 = *MEMORY[0x277D85DE8];
    v117 = v218;
    goto LABEL_90;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id)
  {
    v350 = a2;
    v220 = a2 - 16;
    if (*(a2 + 36))
    {
      v221 = a2 - 16;
    }

    else
    {
      v221 = 0;
    }

    v222 = *(*(*(v221 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v222 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      v223 = 15;
    }

    else if (v222 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      v223 = 17;
    }

    else
    {
      v223 = 16 * (v222 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    }

    v233 = *(*(a2 + 72) + 24);
    Index = mlir::pdl_interp::ExtractOp::getIndex(&v350);
    if (!*(a2 + 36))
    {
      v220 = 0;
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v223);
    v236 = *(a3 + 24);
    v235 = *(a3 + 32);
    __src[0] = v233;
    v237 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v235, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v236, *v237);
    v238 = *(a3 + 24);
    LODWORD(__src[0]) = Index;
    llvm::SmallVectorImpl<unsigned short>::append<unsigned short const*,void>(v238, __src, __src + 4);
    v240 = *(a3 + 24);
    v239 = *(a3 + 32);
    __src[0] = v220;
    goto LABEL_205;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id)
  {
    v117 = *(a3 + 24);
    v224 = *MEMORY[0x277D85DE8];
    v119 = 18;
    goto LABEL_90;
  }

  if (a2 && v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id)
  {
    v30 = a2 + 64;
    v31 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
    if (v31)
    {
      v32 = v31 - 8;
    }

    else
    {
      v32 = 0;
    }

    v33 = **(v32 + 48);
    __src[0] = *(*(a2 + 72) + 24);
    v34 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 19);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v34);
    v36 = *(a3 + 24);
    v35 = *(a3 + 32);
    __src[0] = v33;
    v37 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v35, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v36, *v37);
    v38 = *(((v30 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), *(a1 + 144));
    v44 = *(a1 + 144) + 1;
    *(a1 + 144) = v44;
    v45 = *(a1 + 248);
    if (*v45 < v44)
    {
      *v45 = v44;
    }

    --*(a1 + 144);
    goto LABEL_111;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v241 = a2 - 16;
    }

    else
    {
      v241 = 0;
    }

    v242 = *(a2 + 80);
    v243 = *(*(a2 + 72) + 24);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 20);
    v245 = *(a3 + 24);
    v244 = *(a3 + 32);
    __src[0] = v241;
    v246 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v244, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v245, *v246);
    v248 = *(a3 + 24);
    v247 = *(a3 + 32);
    __src[0] = v243;
    v249 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v247, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v248, *v249);
    v218 = *(a3 + 24);
    v250 = *(a3 + 32);
    v350 = v242;
    v349 = **(v250 + 216) + ((*(*(v250 + 184) + 8) - **(v250 + 184)) >> 3);
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(__src, v250 + 120, &v350, &v349);
    if (v352 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v250 + 184), &v350);
    }

    v119 = *(__src[0] + 8);
    goto LABEL_170;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v251 = a2 - 16;
    }

    else
    {
      v251 = 0;
    }

    v252 = *(*(a2 + 72) + 24);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 21);
    v254 = *(a3 + 24);
    v253 = *(a3 + 32);
    __src[0] = v251;
    v255 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v253, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v254, *v255);
    v218 = *(a3 + 24);
    v217 = *(a3 + 32);
    __src[0] = v252;
    goto LABEL_169;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v256 = a2 - 16;
    }

    else
    {
      v256 = 0;
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 22);
    v258 = *(a3 + 24);
    v257 = *(a3 + 32);
    __src[0] = v256;
    v259 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v257, __src);
    v260 = v258;
    goto LABEL_220;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id)
  {
    __src[0] = a2;
    v261 = mlir::pdl_interp::GetOperandOp::getIndex(__src);
    v262 = v261;
    if (v261 <= 3)
    {
      v263 = v261 + 23;
LABEL_233:
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v263);
LABEL_247:
      if (*(a2 + 36))
      {
        v276 = a2 - 16;
      }

      else
      {
        v276 = 0;
      }

      goto LABEL_111;
    }

    v270 = *(a3 + 24);
    v271 = 27;
LABEL_246:
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v270, v271);
    v275 = *(a3 + 24);
    LODWORD(v350) = v262;
    llvm::SmallVectorImpl<unsigned short>::append<unsigned short const*,void>(v275, &v350, &v350 + 4);
    goto LABEL_247;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id)
  {
    v350 = a2;
    if (*(a2 + 36))
    {
      v264 = a2 - 16;
    }

    else
    {
      v264 = 0;
    }

    v265 = mlir::pdl_interp::GetOperandsOp::getIndex(&v350);
    if ((v265 & 0x100000000) != 0)
    {
      v266 = v265;
    }

    else
    {
      v266 = -1;
    }

    v267 = *(*(a2 + 72) + 24);
    v268 = a3;
    v269 = 28;
    goto LABEL_241;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id)
  {
    __src[0] = a2;
    v272 = mlir::pdl_interp::GetResultOp::getIndex(__src);
    v262 = v272;
    if (v272 <= 3)
    {
      v263 = v272 + 29;
      goto LABEL_233;
    }

    v270 = *(a3 + 24);
    v271 = 33;
    goto LABEL_246;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v350 = a2;
    if (*(a2 + 36))
    {
      v264 = a2 - 16;
    }

    else
    {
      v264 = 0;
    }

    v273 = mlir::pdl_interp::GetResultsOp::getIndex(&v350);
    if ((v273 & 0x100000000) != 0)
    {
      v266 = v273;
    }

    else
    {
      v266 = -1;
    }

    v267 = *(*(a2 + 72) + 24);
    v268 = a3;
    v269 = 34;
LABEL_241:
    if (*(*(*(v264 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      __src[0] = v264;
      v274 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, __src);
    }

    else
    {
      v274 = -1;
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v274);
    v240 = *(a3 + 24);
    v239 = *(a3 + 32);
    __src[0] = v264;
LABEL_205:
    v187 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v239, __src);
    v186 = v240;
LABEL_141:
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v186, v187);
    goto LABEL_111;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v277 = a2 - 16;
    }

    else
    {
      v277 = 0;
    }

    __src[0] = v277;
    v278 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 35);
    v280 = *(a3 + 24);
    v279 = *(a3 + 32);
    __src[0] = v277;
    v281 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v279, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v280, *v281);
    v260 = *(a3 + 24);
    v259 = v278;
LABEL_220:
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v260, v259);
    v214 = *(*(a2 + 72) + 24);
    goto LABEL_168;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v282 = a2 - 16;
    }

    else
    {
      v282 = 0;
    }

    if (*(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      __src[0] = v282;
      v291 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, __src);
      v292 = *(*(a2 + 72) + 24);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 37);
      v294 = *(a3 + 24);
      v293 = *(a3 + 32);
      __src[0] = v282;
      v295 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v293, __src);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v294, *v295);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v291);
      v218 = *(a3 + 24);
      v217 = *(a3 + 32);
      __src[0] = v292;
      goto LABEL_169;
    }

    v214 = *(*(a2 + 72) + 24);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 36);
    v284 = *(a3 + 24);
    v283 = *(a3 + 32);
    __src[0] = v282;
    v216 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v283, __src);
    v215 = v284;
    goto LABEL_167;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id)
  {
    v98 = *(*(a2 + 72) + 24);
    v99 = *(a2 + 40);
    v285 = (a2 + 8 * *(a2 + 47) + 87) & 0xFFFFFFFFFFFFFFF8;
    if (v99)
    {
      v101 = (a2 + 8 * *(a2 + 47) + 87) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v101 = 0;
    }

    v105 = *(a3 + 24);
    v104 = 38;
    goto LABEL_81;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id)
  {
    v350 = a2;
    __src[0] = a2;
    v286 = *(a1 + 208);
    v287 = *(v286 + 8);
    v288 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>,mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::doFind<mlir::Operation const*>(*(a1 + 256), __src);
    if (v288)
    {
      v290 = *(v288 + 8);
    }

    else
    {
      v290 = 0;
    }

    v307 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
    v308 = v307[3];
    if (v308)
    {
      v307 = *(v307[2] + 8 * v308 - 8);
    }

    v309 = v307[1];
    v310 = *(v309 + 16);
    v311 = *(v309 + 24);
    v312 = llvm::xxh3_64bits(v310, v311, v289);
    v313 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 96), v310, v311, v312);
    mlir::detail::PDLByteCodePattern::create(__src, a2, v290, *(*v313 + 8));
    llvm::SmallVectorImpl<mlir::detail::PDLByteCodePattern>::emplace_back<mlir::detail::PDLByteCodePattern>(v286, __src);
    if (v355 != v356)
    {
      free(v355);
    }

    if (v353 != &v354)
    {
      free(v353);
    }

    v314 = *(a2 + 40);
    if (v314)
    {
      v315 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v315 = 0;
    }

    v316 = mlir::pdl_interp::RecordMatchOp::getODSOperands(&v350, 1u);
    v318 = v317;
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 39);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v287);
    if (v314)
    {
      v319 = (v315 + 24);
      do
      {
        v320 = *v319;
        v319 += 4;
        --v314;
      }

      while (v314);
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v318);
    if (v318)
    {
      v321 = (v316 + 24);
      do
      {
        v322 = *v321;
        v321 += 4;
        v324 = *(a3 + 24);
        v323 = *(a3 + 32);
        __src[0] = v322;
        v325 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v323, __src);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v324, *v325);
        --v318;
      }

      while (v318);
    }

    v326 = *(v350 + 44);
    v196 = *(v350 + 16 * ((v326 >> 23) & 1) + 96);
    if ((v326 & 0x800000) != 0)
    {
      v195 = *(v350 + 72);
    }

    else
    {
      v195 = 0;
    }

    v194 = a3;
    goto LABEL_148;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id)
  {
    v350 = a2;
    v296 = *(mlir::pdl_interp::ReplaceOp::getODSOperands(&v350, 0) + 24);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 40);
    v298 = *(a3 + 24);
    v297 = *(a3 + 32);
    __src[0] = v296;
    v299 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v297, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v298, *v299);
    v190 = mlir::pdl_interp::ReplaceOp::getODSOperands(&v350, 1u);
    goto LABEL_147;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id)
  {
    v300 = *(a2 + 80);
    v301 = *(*(a2 + 72) + 24);
    v302 = *(a2 + 40);
    v303 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v302)
    {
      v304 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v304 = 0;
    }

    v305 = *(a3 + 24);
    v306 = 41;
    goto LABEL_297;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id)
  {
    v300 = *(a2 + 80);
    v301 = *(*(a2 + 72) + 24);
    v302 = *(a2 + 40);
    v327 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v302)
    {
      v304 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v304 = 0;
    }

    v305 = *(a3 + 24);
    v306 = 45;
LABEL_297:
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v305, v306);
    v329 = *(a3 + 24);
    v328 = *(a3 + 32);
    __src[0] = v301;
    v330 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v328, __src);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v329, *v330);
    v331 = *MEMORY[0x277D85DE8];

    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id)
  {
    v144 = *(a2 + 80);
    v145 = *(*(a2 + 72) + 24);
    v146 = *(a2 + 40);
    if (v146)
    {
      v147 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v147 = 0;
    }

    v332 = *MEMORY[0x277D85DE8];
    v149 = a3;
    v150 = 46;
LABEL_116:

    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id)
  {
    v226 = *(a2 + 80);
    v227 = *(*(a2 + 72) + 24);
    v228 = *(a2 + 40);
    if (v228)
    {
      v229 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v229 = 0;
    }

    v333 = *MEMORY[0x277D85DE8];
    v231 = a3;
    v232 = 42;
  }

  else
  {
    if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id)
    {
      v334 = *(a2 + 80);
      v335 = *(v334 + 8);
      v336 = *(v334 + 16);
      v337 = *(*(a2 + 72) + 24);
      v338 = *(a2 + 40);
      if (v338)
      {
        v339 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v339 = 0;
      }

      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), 43);
      v341 = *(a3 + 24);
      v340 = *(a3 + 32);
      __src[0] = v337;
      v342 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v340, __src);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v341, *v342);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 24), v336);
      if (v336)
      {
        v343 = 8 * v336;
        do
        {
          v344 = *v335++;
          mlir::OperationName::OperationName(__src, *(v344 + 16), *(v344 + 24), *(a1 + 152));
          v343 -= 8;
        }

        while (v343);
      }

      if (v338)
      {
        v345 = (v339 + 24);
        do
        {
          v346 = *v345;
          v345 += 4;
          --v338;
        }

        while (v338);
      }

      goto LABEL_111;
    }

    v226 = *(a2 + 80);
    v227 = *(*(a2 + 72) + 24);
    v228 = *(a2 + 40);
    if (v228)
    {
      v229 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v229 = 0;
    }

    v230 = *MEMORY[0x277D85DE8];
    v231 = a3;
    v232 = 44;
  }
}

void anonymous namespace::Generator::generate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  off_286E74118(a1, a2, a3, a4, a5, a6, a7, a8, v216[43]);
  v9 = v8;
  v11 = v10;
  v216[40] = *MEMORY[0x277D85DE8];
  v61 = &v63;
  v62 = 0x800000000;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = (v13 - 8);
  }

  else
  {
    v14 = 0;
  }

  v89 = v14;
  v66[0] = &v69;
  v66[1] = 8;
  v67 = 0;
  v68 = 1;
  v70 = v72;
  v71 = 0x800000000;
  llvm::SmallPtrSetImpl<mlir::Block *>::insert(v66, v14, &v178);
  mlir::SuccessorRange::SuccessorRange(&v178, v14);
  v154 = v178;
  mlir::SuccessorRange::SuccessorRange(&v178, v14);
  llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(&v70, &v89, &v154, &v178);
  llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>::traverseChild(v66);
  memset(&v64[2], 0, 72);
  memset(&v65[1], 0, 328);
  v64[0] = &v64[3];
  v64[1] = 8;
  BYTE4(v64[2]) = 1;
  HIDWORD(v65[1]) = 8;
  v65[0] = &v65[2];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&__src, v85, v66);
  v86 = v88;
  v87 = 0x800000000;
  if (v71)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v86, &v70);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v73, v77, v64);
  v78 = v80;
  v79 = 0x800000000;
  if (LODWORD(v65[1]))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v78, v65);
  }

  v15 = v84;
  if (v84 == 1)
  {
    v106 = v110;
    v16 = HIDWORD(v82);
    if (HIDWORD(v82))
    {
      memmove(v110, __src, 8 * HIDWORD(v82));
    }
  }

  else
  {
    v106 = __src;
    __src = v85;
    v16 = HIDWORD(v82);
  }

  v107 = __PAIR64__(v16, v82);
  v108 = v83;
  v109 = v15;
  v82 = 8;
  v83 = 0;
  v84 = 1;
  v111 = v113;
  v112 = 0x800000000;
  if (v87)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v111, &v86);
  }

  v17 = v76;
  if (v76 == 1)
  {
    v98 = v102;
    v18 = HIDWORD(v74);
    if (HIDWORD(v74))
    {
      memmove(v102, v73, 8 * HIDWORD(v74));
    }
  }

  else
  {
    v98 = v73;
    v73 = v77;
    v18 = HIDWORD(v74);
  }

  v99 = __PAIR64__(v18, v74);
  v100 = v75;
  v101 = v17;
  v74 = 8;
  v75 = 0;
  v76 = 1;
  v103 = v105;
  v104 = 0x800000000;
  if (v79)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v103, &v78);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v170, v174, &v106);
  v175 = v177;
  v176 = 0x800000000;
  if (v112)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v175, &v111);
  }

  v19 = v101;
  if (v101 == 1)
  {
    v162 = v166;
    v20 = HIDWORD(v99);
    if (HIDWORD(v99))
    {
      memmove(v166, v98, 8 * HIDWORD(v99));
    }
  }

  else
  {
    v162 = v98;
    v98 = v102;
    v20 = HIDWORD(v99);
  }

  v163 = __PAIR64__(v20, v99);
  v164 = v100;
  v165 = v19;
  v99 = 8;
  v100 = 0;
  v101 = 1;
  v167 = v169;
  v168 = 0x800000000;
  if (v104)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v167, &v103);
  }

  v21 = v173;
  if (v173 == 1)
  {
    v89 = v94;
    v22 = HIDWORD(v171);
    if (HIDWORD(v171))
    {
      memmove(v94, v170, 8 * HIDWORD(v171));
    }
  }

  else
  {
    v89 = v170;
    v170 = v174;
    v22 = HIDWORD(v171);
  }

  v90 = v171;
  v91 = v22;
  v92 = v172;
  v93 = v21;
  v171 = 8;
  v172 = 0;
  v173 = 1;
  v95 = v97;
  v96 = 0x800000000;
  if (v176)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v95, &v175);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v178, v181, &v89);
  v182 = v184;
  v183 = 0x800000000;
  if (v96)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v182, &v95);
  }

  v23 = v180;
  if (v180 == 1)
  {
    *&v154 = v157;
    v24 = HIDWORD(v178);
    if (HIDWORD(v178))
    {
      memmove(v157, v178, 8 * HIDWORD(v178));
    }
  }

  else
  {
    *&v154 = v178;
    *&v178 = v181;
    v24 = HIDWORD(v178);
  }

  *(&v154 + 1) = __PAIR64__(v24, DWORD2(v178));
  v155 = v179;
  v156 = v23;
  *(&v178 + 1) = 8;
  v179 = 0;
  v180 = 1;
  v158 = v160;
  v159 = 0x800000000;
  if (v183)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v158, &v182);
  }

  if (v182 != v184)
  {
    free(v182);
  }

  if ((v180 & 1) == 0)
  {
    free(v178);
  }

  v25 = v165;
  if (v165 == 1)
  {
    v201 = v205;
    v26 = HIDWORD(v163);
    if (HIDWORD(v163))
    {
      memmove(v205, v162, 8 * HIDWORD(v163));
    }
  }

  else
  {
    v201 = v162;
    v162 = v166;
    v26 = HIDWORD(v163);
  }

  v202 = __PAIR64__(v26, v163);
  v203 = v164;
  v204 = v25;
  v163 = 8;
  v164 = 0;
  v165 = 1;
  v206 = v208;
  v207 = 0x800000000;
  if (v168)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v206, &v167);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v178, v181, &v201);
  v182 = v184;
  v183 = 0x800000000;
  if (v207)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v182, &v206);
  }

  v27 = v180;
  if (v180 == 1)
  {
    v209 = v213;
    v28 = HIDWORD(v178);
    if (HIDWORD(v178))
    {
      memmove(v213, v178, 8 * HIDWORD(v178));
    }
  }

  else
  {
    v209 = v178;
    *&v178 = v181;
    v28 = HIDWORD(v178);
  }

  v210 = __PAIR64__(v28, DWORD2(v178));
  v211 = v179;
  v212 = v27;
  *(&v178 + 1) = 8;
  v179 = 0;
  v180 = 1;
  v214 = v216;
  v215 = 0x800000000;
  if (v183)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v214, &v182);
  }

  if (v182 != v184)
  {
    free(v182);
  }

  if ((v180 & 1) == 0)
  {
    free(v178);
  }

  v29 = v156;
  if (v156 == 1)
  {
    *&v178 = v181;
    v30 = HIDWORD(v154);
    if (HIDWORD(v154))
    {
      memmove(v181, v154, 8 * HIDWORD(v154));
    }
  }

  else
  {
    *&v178 = v154;
    *&v154 = v157;
    v30 = HIDWORD(v154);
  }

  *(&v178 + 1) = __PAIR64__(v30, DWORD2(v154));
  v179 = v155;
  v180 = v29;
  *(&v154 + 1) = 8;
  v155 = 0;
  v156 = 1;
  v182 = v184;
  v183 = 0x800000000;
  if (v159)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v182, &v158);
  }

  v31 = v212;
  if (v212 == 1)
  {
    v185 = v189;
    v32 = HIDWORD(v210);
    if (HIDWORD(v210))
    {
      memmove(v189, v209, 8 * HIDWORD(v210));
    }
  }

  else
  {
    v185 = v209;
    v209 = v213;
    v32 = HIDWORD(v210);
  }

  v186 = __PAIR64__(v32, v210);
  v187 = v211;
  v188 = v31;
  v210 = 8;
  v211 = 0;
  v212 = 1;
  v190 = v192;
  v191 = 0x800000000;
  if (v215)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v190, &v214);
  }

  if (v214 != v216)
  {
    free(v214);
  }

  if ((v212 & 1) == 0)
  {
    free(v209);
  }

  if (v206 != v208)
  {
    free(v206);
  }

  if ((v204 & 1) == 0)
  {
    free(v201);
  }

  if (v158 != v160)
  {
    free(v158);
  }

  if ((v156 & 1) == 0)
  {
    free(v154);
  }

  if (v95 != v97)
  {
    free(v95);
  }

  if ((v93 & 1) == 0)
  {
    free(v89);
  }

  if (v167 != v169)
  {
    free(v167);
  }

  if ((v165 & 1) == 0)
  {
    free(v162);
  }

  if (v175 != v177)
  {
    free(v175);
  }

  if ((v173 & 1) == 0)
  {
    free(v170);
  }

  v33 = v180;
  if (v180 == 1)
  {
    v146 = v150;
    v34 = HIDWORD(v178);
    if (HIDWORD(v178))
    {
      memmove(v150, v178, 8 * HIDWORD(v178));
    }
  }

  else
  {
    v146 = v178;
    *&v178 = v181;
    v34 = HIDWORD(v178);
  }

  v147 = __PAIR64__(v34, DWORD2(v178));
  v148 = v179;
  v149 = v33;
  *(&v178 + 1) = 8;
  v179 = 0;
  v180 = 1;
  v151 = v153;
  v152 = 0x800000000;
  if (v183)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v151, &v182);
  }

  v35 = v188;
  if (v188 == 1)
  {
    v138 = v143;
    v36 = HIDWORD(v186);
    if (HIDWORD(v186))
    {
      memmove(v143, v185, 8 * HIDWORD(v186));
    }
  }

  else
  {
    v138 = v185;
    v185 = v189;
    v36 = HIDWORD(v186);
  }

  v139 = v186;
  v140 = v36;
  v141 = v187;
  v142 = v35;
  v186 = 8;
  v187 = 0;
  v188 = 1;
  v144[0] = v145;
  v144[1] = 0x800000000;
  if (v191)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v144, &v190);
  }

  if ((llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v151, v144) & 1) == 0)
  {
    do
    {
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v61, *(v151 + 5 * v152 - 5));
      LODWORD(v152) = v152 - 1;
      if (v152)
      {
        llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>::traverseChild(&v146);
      }
    }

    while (!llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v151, v144));
  }

  v37 = v149;
  if (v149 == 1)
  {
    *&v154 = v157;
    v38 = HIDWORD(v147);
    if (HIDWORD(v147))
    {
      memmove(v157, v146, 8 * HIDWORD(v147));
    }
  }

  else
  {
    *&v154 = v146;
    v146 = v150;
    v38 = HIDWORD(v147);
  }

  *(&v154 + 1) = __PAIR64__(v38, v147);
  v155 = v148;
  v156 = v37;
  v147 = 8;
  v148 = 0;
  v149 = 1;
  v158 = v160;
  v159 = 0x800000000;
  if (v152)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v158, &v151);
  }

  v161 = &v61;
  if (v144[0] != v145)
  {
    free(v144[0]);
  }

  if ((v142 & 1) == 0)
  {
    free(v138);
  }

  if (v151 != v153)
  {
    free(v151);
  }

  if ((v149 & 1) == 0)
  {
    free(v146);
  }

  v39 = v109;
  if (v109 == 1)
  {
    v122 = v126;
    v40 = HIDWORD(v107);
    if (HIDWORD(v107))
    {
      memmove(v126, v106, 8 * HIDWORD(v107));
    }
  }

  else
  {
    v122 = v106;
    v106 = v110;
    v40 = HIDWORD(v107);
  }

  v123 = __PAIR64__(v40, v107);
  v124 = v108;
  v125 = v39;
  v107 = 8;
  v108 = 0;
  v109 = 1;
  v127 = v129;
  v128 = 0x800000000;
  if (v112)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v127, &v111);
  }

  v41 = v156;
  if (v156 == 1)
  {
    v114 = v118;
    v42 = HIDWORD(v154);
    if (HIDWORD(v154))
    {
      memmove(v118, v154, 8 * HIDWORD(v154));
    }
  }

  else
  {
    v114 = v154;
    *&v154 = v157;
    v42 = HIDWORD(v154);
  }

  v115 = __PAIR64__(v42, DWORD2(v154));
  v116 = v155;
  v117 = v41;
  *(&v154 + 1) = 8;
  v155 = 0;
  v156 = 1;
  v119 = v121;
  v120 = 0x800000000;
  if (v159)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v119, &v158);
  }

  v43 = v125;
  if (v125 == 1)
  {
    v201 = v205;
    v44 = HIDWORD(v123);
    if (HIDWORD(v123))
    {
      memmove(v205, v122, 8 * HIDWORD(v123));
    }
  }

  else
  {
    v201 = v122;
    v122 = v126;
    v44 = HIDWORD(v123);
  }

  v202 = __PAIR64__(v44, v123);
  v203 = v124;
  v204 = v43;
  v123 = 8;
  v124 = 0;
  v125 = 1;
  v206 = v208;
  v207 = 0x800000000;
  if (v128)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v206, &v127);
  }

  v45 = v117;
  if (v117 == 1)
  {
    v193 = v197;
    v46 = HIDWORD(v115);
    if (HIDWORD(v115))
    {
      memmove(v197, v114, 8 * HIDWORD(v115));
    }
  }

  else
  {
    v193 = v114;
    v114 = v118;
    v46 = HIDWORD(v115);
  }

  v194 = __PAIR64__(v46, v115);
  v195 = v116;
  v196 = v45;
  v115 = 8;
  v116 = 0;
  v117 = 1;
  v198 = v200;
  v199 = 0x800000000;
  if (v120)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v198, &v119);
  }

  v47 = v204;
  if (v204 == 1)
  {
    v89 = v94;
    v48 = HIDWORD(v202);
    if (HIDWORD(v202))
    {
      memmove(v94, v201, 8 * HIDWORD(v202));
    }
  }

  else
  {
    v89 = v201;
    v201 = v205;
    v48 = HIDWORD(v202);
  }

  v90 = v202;
  v91 = v48;
  v92 = v203;
  v93 = v47;
  v202 = 8;
  v203 = 0;
  v204 = 1;
  v95 = v97;
  v96 = 0x800000000;
  if (v207)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v95, &v206);
  }

  v49 = v196;
  if (v196 == 1)
  {
    v209 = v213;
    v50 = HIDWORD(v194);
    if (HIDWORD(v194))
    {
      memmove(v213, v193, 8 * HIDWORD(v194));
    }
  }

  else
  {
    v209 = v193;
    v193 = v197;
    v50 = HIDWORD(v194);
  }

  v210 = __PAIR64__(v50, v194);
  v211 = v195;
  v212 = v49;
  v194 = 8;
  v195 = 0;
  v196 = 1;
  v214 = v216;
  v215 = 0x800000000;
  if (v199)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v214, &v198);
    v49 = v212;
  }

  if (v49)
  {
    v130 = v134;
    v51 = HIDWORD(v210);
    if (HIDWORD(v210))
    {
      memmove(v134, v209, 8 * HIDWORD(v210));
    }
  }

  else
  {
    v130 = v209;
    v209 = v213;
    v51 = HIDWORD(v210);
  }

  v131 = __PAIR64__(v51, v210);
  v132 = v211;
  v133 = v49;
  v210 = 8;
  v211 = 0;
  v212 = 1;
  v135 = v137;
  v136 = 0x800000000;
  if (v215)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v135, &v214);
  }

  if (v214 != v216)
  {
    free(v214);
  }

  if ((v212 & 1) == 0)
  {
    free(v209);
  }

  if (v95 != v97)
  {
    free(v95);
  }

  if ((v93 & 1) == 0)
  {
    free(v89);
  }

  if (v198 != v200)
  {
    free(v198);
  }

  if ((v196 & 1) == 0)
  {
    free(v193);
  }

  if (v206 != v208)
  {
    free(v206);
  }

  if ((v204 & 1) == 0)
  {
    free(v201);
  }

  v52 = v161;
  v53 = v133;
  if (v133 == 1)
  {
    v89 = v94;
    v54 = HIDWORD(v131);
    if (HIDWORD(v131))
    {
      memmove(v94, v130, 8 * HIDWORD(v131));
    }
  }

  else
  {
    v89 = v130;
    v130 = v134;
    v54 = HIDWORD(v131);
  }

  v90 = v131;
  v91 = v54;
  v92 = v132;
  v93 = v53;
  v131 = 8;
  v132 = 0;
  v133 = 1;
  v95 = v97;
  v96 = 0x800000000;
  if (v136)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v95, &v135);
  }

  v97[40] = v52;
  if (v135 != v137)
  {
    free(v135);
  }

  if ((v133 & 1) == 0)
  {
    free(v130);
  }

  if (v119 != v121)
  {
    free(v119);
  }

  if ((v117 & 1) == 0)
  {
    free(v114);
  }

  if (v127 != v129)
  {
    free(v127);
  }

  if ((v125 & 1) == 0)
  {
    free(v122);
  }

  if (v158 != v160)
  {
    free(v158);
  }

  if ((v156 & 1) == 0)
  {
    free(v154);
  }

  if (v190 != v192)
  {
    free(v190);
  }

  if ((v188 & 1) == 0)
  {
    free(v185);
  }

  if (v182 != v184)
  {
    free(v182);
  }

  if ((v180 & 1) == 0)
  {
    free(v178);
  }

  if (v103 != v105)
  {
    free(v103);
  }

  if ((v101 & 1) == 0)
  {
    free(v98);
  }

  if (v111 != v113)
  {
    free(v111);
  }

  if ((v109 & 1) == 0)
  {
    free(v106);
  }

  if (v95 != v97)
  {
    free(v95);
  }

  if ((v93 & 1) == 0)
  {
    free(v89);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  if ((v76 & 1) == 0)
  {
    free(v73);
  }

  if (v86 != v88)
  {
    free(v86);
  }

  if ((v84 & 1) == 0)
  {
    free(__src);
  }

  if (v65[0] != &v65[2])
  {
    free(v65[0]);
  }

  if ((BYTE4(v64[2]) & 1) == 0)
  {
    free(v64[0]);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  if ((v68 & 1) == 0)
  {
    free(v66[0]);
  }

  v55 = v61;
  if (v62)
  {
    v56 = v61 + 8 * v62;
    do
    {
      v57 = *(v56 - 1);
      v56 -= 8;
      *&v154 = v57;
      v89 = *(*(v11 + 192) + 8);
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>(v11 + 160, &v154, &v89, &v178);
      v58 = v154 + 32;
      for (i = *(v154 + 40); i != v58; i = *(i + 8))
      {
      }
    }

    while (v56 != v55);
    v55 = v61;
  }

  if (v55 != &v63)
  {
    free(v55);
  }

  v60 = *MEMORY[0x277D85DE8];
}