uint64_t sub_1001683A8(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 4);
    if (v3)
    {
      v4 = *a1;
      v5 = v3 - 1;
      v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
      v7 = *(*a1 + 8 * v6);
      if (*a2 == v7)
      {
LABEL_4:
        *(v4 + 8 * v6) = -8192;
        v10 = *(a1 + 8);
        v8 = a1 + 4;
        v9 = v10;
        v11 = *(v8 - 5) + 1;
        *(v8 - 6) = v2 - 1;
        *(v8 - 5) = v11;
        i = *(v8 - 1);
        v13 = &i[v10];
        if (v10)
        {
          v14 = 8 * v9;
          while (*i != *a2)
          {
            ++i;
            v14 -= 8;
            if (!v14)
            {
              i = v13;
              break;
            }
          }
        }

        v15 = i + 1;
        v16 = v13 - (i + 1);
        if (v13 == i + 1)
        {
          *v8 = v9 - 1;
          return 1;
        }

        goto LABEL_19;
      }

      v23 = 1;
      while (v7 != -4096)
      {
        v24 = v6 + v23++;
        v6 = v24 & v5;
        v7 = *(v4 + 8 * v6);
        if (*a2 == v7)
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v8 = a1 + 4;
    v18 = v19;
    if (v19)
    {
      v20 = 8 * v18;
      for (i = *(v8 - 1); *i != *a2; ++i)
      {
        v20 -= 8;
        if (!v20)
        {
          return 0;
        }
      }
    }

    else
    {
      i = *(v8 - 1);
    }

    v21 = *(v8 - 1) + 8 * v18;
    if (i != v21)
    {
      v15 = i + 1;
      v16 = v21 - (i + 1);
      if (v21 == i + 1)
      {
LABEL_20:
        *v8 = v18 - 1;
        return 1;
      }

LABEL_19:
      v22 = v8;
      memmove(i, v15, v16);
      v8 = v22;
      LODWORD(v18) = *v22;
      goto LABEL_20;
    }
  }

  return 0;
}

uint64_t sub_100168510(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v7 = (a1 + 24);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = v8;
    if (v9)
    {
      v11 = *a2;
      v12 = 8 * v9;
      v10 = *(a1 + 24);
      while (*v10 != v11)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 != &v8[v9])
    {
      return 0;
    }

    v11 = *a2;
LABEL_14:
    if (v9 >= *(a1 + 36))
    {
      v16 = (a1 + 24);
      v17 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v9 + 1, 8);
      v7 = v16;
      *(*(a1 + 24) + 8 * *(a1 + 32)) = v17;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 2)
      {
LABEL_16:
        v14 = *v7;
        v15 = 8 * v13;
        do
        {
          sub_100153A08(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }
    }

    else
    {
      v8[v9] = v11;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 2)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  sub_100153A08(a1, a2, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v5 + 1, 8);
    LODWORD(v5) = *(a1 + 32);
  }

  *(*(a1 + 24) + 8 * v5) = v4;
  ++*(a1 + 32);
  return 1;
}

void mlir::detail::RecoveryReproducerContext::crashHandler(mlir::detail::RecoveryReproducerContext *this, void *a2)
{
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, sub_100169F30, sub_100169F78);
  }

  v2 = *(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32);
  if (v2)
  {
    v3 = *(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 24);
    v4 = &v3[v2];
    v5 = "A signal was caught while processing the MLIR module:";
    do
    {
      while (1)
      {
        v6 = *v3;
        v25[0] = 0;
        v25[1] = 0;
        v26 = 0;
        sub_100167F94(v25, *(v6 + 24), *(v6 + 32), v6, *(v6 + 40), *(v6 + 41));
        mlir::emitError(*(*(v6 + 24) + 24), &v31);
        if (v31)
        {
          LODWORD(v27) = 3;
          v28 = v5;
          v29 = 53;
          v7 = v33;
          if (v34 >= v35)
          {
            if (v33 <= &v27 && v33 + 24 * v34 > &v27)
            {
              v23 = &v27 - v33;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
              v7 = v33;
              v8 = (v33 + v23);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
              v8 = &v27;
              v7 = v33;
            }
          }

          else
          {
            v8 = &v27;
          }

          v9 = &v7[24 * v34];
          v10 = *v8;
          *(v9 + 2) = v8[2];
          *v9 = v10;
          ++v34;
          if (v31)
          {
            v30 = 260;
            v27 = v25;
            mlir::Diagnostic::operator<<(&v32, &v27);
            if (v31)
            {
              LODWORD(v27) = 3;
              v28 = "; marking pass as failed";
              v29 = 24;
              v11 = v33;
              if (v34 >= v35)
              {
                if (v33 <= &v27 && v33 + 24 * v34 > &v27)
                {
                  v24 = &v27 - v33;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
                  v11 = v33;
                  v12 = (v33 + v24);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
                  v12 = &v27;
                  v11 = v33;
                }
              }

              else
              {
                v12 = &v27;
              }

              v13 = &v11[24 * v34];
              v14 = *v12;
              *(v13 + 2) = v12[2];
              *v13 = v14;
              ++v34;
              if (v31)
              {
                mlir::InFlightDiagnostic::report(&v31);
              }
            }
          }
        }

        if (v42 == 1)
        {
          if (v41 != &v42)
          {
            free(v41);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v40;
            v17 = __p;
            if (v40 != __p)
            {
              do
              {
                v16 = sub_10005BEF4(v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v40 = v15;
            operator delete(v17);
          }

          v18 = v37;
          if (v37)
          {
            v19 = v5;
            v20 = v38;
            v21 = v37;
            if (v38 != v37)
            {
              do
              {
                v22 = *--v20;
                *v20 = 0;
                if (v22)
                {
                  operator delete[]();
                }
              }

              while (v20 != v18);
              v21 = v37;
            }

            v38 = v18;
            operator delete(v21);
            v5 = v19;
          }

          if (v33 != v36)
          {
            free(v33);
          }
        }

        if (SHIBYTE(v26) < 0)
        {
          break;
        }

        if (++v3 == v4)
        {
          return;
        }
      }

      operator delete(v25[0]);
      ++v3;
    }

    while (v3 != v4);
  }
}

void mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(mlir::detail::PassCrashReproducerGenerator *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    sub_100169FEC(v2);
    operator delete();
  }
}

void mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(uint64_t *a1, mlir::Pass **a2, mlir::Pass **a3, void *a4)
{
  __p[3] = a4;
  memset(__p, 0, 24);
  v13 = 0;
  v17 = 0;
  v18 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12 = &off_1002D49D0;
  v19 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v12, 0, 0, 0);
  if (a2 != a3)
  {
    v8 = *a2;
    v7 = a2 + 1;
    mlir::Pass::printAsTextualPipeline(v8, &v12);
    while (v7 != a3)
    {
      while ((v15 - v16) <= 1)
      {
        llvm::raw_ostream::write(&v12, ", ", 2uLL);
        v9 = *v7++;
        mlir::Pass::printAsTextualPipeline(v9, &v12);
        if (v7 == a3)
        {
          goto LABEL_7;
        }
      }

      *v16++ = 8236;
      v10 = *v7++;
      mlir::Pass::printAsTextualPipeline(v10, &v12);
    }
  }

LABEL_7:
  v11 = *a1;
  sub_100169C08();
}

uint64_t *mlir::detail::PassCrashReproducerGenerator::finalize(uint64_t *result, uint64_t a2, char a3)
{
  v3 = *result;
  v4 = *(*result + 48);
  if (v4)
  {
    if ((a3 & 1) == 0)
    {
      v8 = result;
      mlir::emitError(*(a2 + 24), &v26);
      if (v26)
      {
        LODWORD(v37) = 3;
        v38[0] = "Failures have been detected while processing an MLIR pass pipeline";
        v38[1] = 66;
        v9 = &v37;
        v10 = v27;
        if (v28 >= v29)
        {
          if (v27 <= &v37 && v27 + 24 * v28 > &v37)
          {
            v22 = &v37 - v27;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v30, v28 + 1, 24);
            v10 = v27;
            v9 = v27 + v22;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v30, v28 + 1, 24);
            v9 = &v37;
            v10 = v27;
          }
        }

        v11 = &v10[24 * v28];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        ++v28;
      }

      sub_10006BAFC(&v37, &v26);
      if (v26)
      {
        mlir::InFlightDiagnostic::report(&v26);
      }

      if (v36 == 1)
      {
        if (v35 != &v36)
        {
          free(v35);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v34;
          v15 = __p;
          if (v34 != __p)
          {
            do
            {
              v14 = sub_10005BEF4(v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v34 = v13;
          operator delete(v15);
        }

        v16 = v31;
        if (v31)
        {
          v17 = v32;
          v18 = v31;
          if (v32 != v31)
          {
            do
            {
              v19 = *--v17;
              *v17 = 0;
              if (v19)
              {
                operator delete[]();
              }
            }

            while (v17 != v16);
            v18 = v31;
          }

          v32 = v16;
          operator delete(v18);
        }

        if (v27 != v30)
        {
          free(v27);
        }
      }

      v20 = *v8;
      if (*(*v8 + 32))
      {
        v21 = *(*(v20 + 40) + 8 * *(v20 + 48) - 8);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        sub_100167F94(&v23, *(v21 + 24), *(v21 + 32), v21, *(v21 + 40), *(v21 + 41));
        mlir::Diagnostic::attachNote(v38, 0, 0);
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      sub_100167F94(&v23, *(**(v20 + 40) + 24), *(**(v20 + 40) + 32), **(v20 + 40), *(**(v20 + 40) + 40), *(**(v20 + 40) + 41));
      mlir::Diagnostic::attachNote(v38, 0, 0);
    }

    v5 = 8 * v4;
    v6 = *(v3 + 40) - 8;
    do
    {
      v7 = *(v6 + v5);
      *(v6 + v5) = 0;
      if (v7)
      {
        mlir::Operation::erase(*(v7 + 24));
        mlir::detail::RecoveryReproducerContext::disable(v7);
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        operator delete();
      }

      v5 -= 8;
    }

    while (v5);
    *(v3 + 48) = 0;
  }

  return result;
}

uint64_t sub_10016970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 16;
  v6 = *(a1 + 16);
  LODWORD(NameAttr) = 3;
  v55 = 1;
  v8 = *(a1 + 24);
  v9 = &NameAttr;
  if (v8 >= *(a1 + 28))
  {
    if (v6 <= &NameAttr && v6 + 24 * v8 > &NameAttr)
    {
      v45 = &NameAttr - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &v45[v6];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &NameAttr;
    }
  }

  v10 = v6 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = v9[2];
  *v10 = v11;
  ++*(a1 + 24);
  v12 = (*(*a2 + 16))(a2);
  v56 = 261;
  NameAttr = v12;
  v54 = v13;
  v14 = mlir::Diagnostic::operator<<(a1, &NameAttr);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  LODWORD(v57) = 3;
  v59 = 5;
  v17 = *(v14 + 24);
  v18 = &v57;
  if (v17 >= *(v14 + 28))
  {
    if (v15 <= &v57 && v15 + 24 * v17 > &v57)
    {
      v46 = &v57 - v15;
      v47 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14 + 16, (v14 + 32), v17 + 1, 24);
      v14 = v47;
      v15 = *(v47 + 16);
      v18 = &v46[v15];
    }

    else
    {
      v42 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14 + 16, (v14 + 32), v17 + 1, 24);
      v14 = v42;
      v15 = *(v42 + 16);
      v18 = &v57;
    }
  }

  v19 = v15 + 24 * *(v14 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v14 + 28);
  v22 = (*(v14 + 24) + 1);
  *(v14 + 24) = v22;
  LODWORD(v57) = 3;
  v58 = "'";
  v59 = 1;
  v23 = *(v14 + 16);
  v24 = &v57;
  if (v22 >= v21)
  {
    if (v23 <= &v57 && v23 + 24 * v22 > &v57)
    {
      v48 = &v57 - v23;
      v49 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v16, (v14 + 32), v22 + 1, 24);
      v14 = v49;
      v23 = *(v49 + 16);
      v24 = &v48[v23];
    }

    else
    {
      v43 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v16, (v14 + 32), v22 + 1, 24);
      v14 = v43;
      v23 = *(v43 + 16);
      v24 = &v57;
    }
  }

  v25 = v23 + 24 * *(v14 + 24);
  v26 = *v24;
  *(v25 + 16) = *(v24 + 2);
  *v25 = v26;
  ++*(v14 + 24);
  v27 = mlir::Diagnostic::operator<<(v14, *(a3 + 48));
  v28 = *(v27 + 16);
  LODWORD(v57) = 3;
  v58 = "' operation";
  v59 = 11;
  v29 = *(v27 + 24);
  v30 = &v57;
  if (v29 >= *(v27 + 28))
  {
    if (v28 <= &v57 && v28 + 24 * v29 > &v57)
    {
      v50 = &v57 - v28;
      v51 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 16, (v27 + 32), v29 + 1, 24);
      v27 = v51;
      v28 = *(v51 + 16);
      v30 = &v50[v28];
    }

    else
    {
      v44 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 16, (v27 + 32), v29 + 1, 24);
      v27 = v44;
      v28 = *(v44 + 16);
      v30 = &v57;
    }
  }

  v31 = v28 + 24 * *(v27 + 24);
  v32 = *v30;
  *(v31 + 16) = *(v30 + 2);
  *v31 = v32;
  ++*(v27 + 24);
  result = sub_100151E80(a3);
  if (!result)
  {
    goto LABEL_9;
  }

  if (*(a3 + 47) && (result = mlir::Operation::getInherentAttr(a3, "sym_name", 8), (v34 & 1) != 0))
  {
    if (!result)
    {
LABEL_9:
      v57 = 0;
      v58 = result;
      return result;
    }
  }

  else if (!mlir::DictionaryAttr::contains(a3 + 56, "sym_name", 8uLL))
  {
    result = 0;
    v57 = 0;
    v58 = 0;
    return result;
  }

  result = sub_100151E80(a3);
  v57 = a3;
  v58 = result;
  if (a3)
  {
    LODWORD(NameAttr) = 3;
    v54 = ": @";
    v55 = 3;
    v35 = *(a1 + 24);
    v36 = *(a1 + 16);
    v37 = &NameAttr;
    if (v35 >= *(a1 + 28))
    {
      if (v36 <= &NameAttr && v36 + 24 * v35 > &NameAttr)
      {
        v52 = &NameAttr - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v35 + 1, 24);
        v36 = *(a1 + 16);
        v37 = &v52[v36];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v35 + 1, 24);
        v36 = *(a1 + 16);
        v37 = &NameAttr;
      }
    }

    v38 = v36 + 24 * *(a1 + 24);
    v39 = *v37;
    *(v38 + 16) = v37[2];
    *v38 = v39;
    ++*(a1 + 24);
    NameAttr = mlir::SymbolOpInterface::getNameAttr(&v57);
    Value = mlir::StringAttr::getValue(&NameAttr);
    v56 = 261;
    NameAttr = Value;
    v54 = v41;
    return mlir::Diagnostic::operator<<(a1, &NameAttr);
  }

  return result;
}

void mlir::PassManager::runWithCrashRecovery(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a3;
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = mlir::OpPassManager::begin(a1);
  v7 = mlir::OpPassManager::end(a1);
  v8 = (*(a1 + 56) >> 1) & 1;
  llvm::CrashRecoveryContext::Enable(v7);
  v9 = *v5;
  *(v9 + 144) = v8;
  if ((*(v9 + 32) & 1) == 0)
  {
    mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(v5, v6, v7, a2);
  }

  v13 = 0;
  llvm::CrashRecoveryContext::CrashRecoveryContext(v10);
  llvm::CrashRecoveryContext::RunSafelyOnThread();
}

void sub_100169E00(void **a1)
{
  mlir::AsmResourcePrinter::~AsmResourcePrinter(a1);

  operator delete();
}

uint64_t sub_100169E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = v5[1];
  }

  (*(*a3 + 24))(a3, "pipeline", 8, v7, v8);
  (*(*a3 + 16))(a3, "disable_threading", 17, **(a1 + 40));
  v9 = **(a1 + 48);
  v10 = *(*a3 + 16);

  return v10(a3, "verify_each", 11, v9);
}

uint64_t sub_100169F78(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2 != (v1 + 40))
    {
      free(v2);
    }

    llvm::deallocate_buffer(*v1, (8 * *(v1 + 16)), 8uLL);

    operator delete();
  }

  return result;
}

uint64_t sub_100169FEC(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(a1 + 104), (16 * *(a1 + 120)), 8uLL);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = v3 - 8;
    do
    {
      v7 = *&v6[v5];
      *&v6[v5] = 0;
      if (v7)
      {
        mlir::Operation::erase(*(v7 + 24));
        mlir::detail::RecoveryReproducerContext::disable(v7);
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        operator delete();
      }

      v5 -= 8;
    }

    while (v5);
    v3 = *(a1 + 40);
  }

  if (v3 != (a1 + 56))
  {
    free(v3);
  }

  v8 = *(a1 + 24);
  if (v8 == a1)
  {
    (*(*v8 + 32))(v8);
    return a1;
  }

  else
  {
    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    return a1;
  }
}

void sub_10016A138(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    *(a1 + 8) = 0;
    if (!v2)
    {
      return;
    }

    buffer = *a1;
  }

  else
  {
    llvm::deallocate_buffer(*a1, (16 * v2), 8uLL);
    if (!v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      return;
    }

    v7 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
    v8 = v7 | (v7 >> 2) | ((v7 | (v7 >> 2)) >> 4);
    LODWORD(v8) = (((v8 | (v8 >> 8)) >> 16) | v8 | (v8 >> 8)) + 1;
    *(a1 + 16) = v8;
    buffer = llvm::allocate_buffer((16 * v8), 8uLL);
    *a1 = buffer;
    *(a1 + 8) = 0;
    v2 = *(a1 + 16);
    if (!v2)
    {
      return;
    }
  }

  memset_pattern16(buffer, &unk_1002B0EE0, 16 * v2);
}

void sub_10016A238(uint64_t a1, unint64_t a2)
{
  v24 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v24);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v9 = 8 * v7;
  if (v8 < 0xB)
  {
    v10 = v4;
LABEL_12:
    v19 = &v5[8 * v7];
    do
    {
      v20 = *v6;
      *v6 = 0;
      v6 += 8;
      *v10 = v20;
      v10 += 8;
    }

    while (v6 != v19);
    goto LABEL_14;
  }

  v11 = v5 >= &v4[v9] || v4 >= &v5[v9];
  v10 = v4;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v8 + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v10 = &v4[v13];
  v6 = &v5[v13];
  v14 = (v5 + 16);
  v15 = v4 + 16;
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    *(v14 - 1) = 0uLL;
    *v14 = 0uLL;
    *(v15 - 1) = v17;
    *v15 = v18;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v21 = v5 - 8;
  do
  {
    v22 = *&v21[v9];
    *&v21[v9] = 0;
    if (v22)
    {
      mlir::Operation::erase(*(v22 + 24));
      mlir::detail::RecoveryReproducerContext::disable(v22);
      if (*(v22 + 23) < 0)
      {
        operator delete(*v22);
      }

      operator delete();
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_21:
  v23 = v24;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v23;
}

uint64_t sub_10016A3B4(uint64_t a1)
{
  result = mlir::PassManager::runPasses(*(a1 + 8), **(a1 + 16), **(a1 + 24));
  **a1 = result;
  return result;
}

uint64_t sub_10016A3F0(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a2 <= a3)
  {
    return -1;
  }

  v6 = a4;
  while (1)
  {
    v8 = *(a1 + a3);
    if (v8 == v6)
    {
      return a3;
    }

    if (*(a1 + a3) <= 0x27u)
    {
      break;
    }

    switch(v8)
    {
      case '{':
        v7 = 125;
        goto LABEL_4;
      case '[':
        v7 = 93;
LABEL_4:
        a3 = sub_10016A3F0(a1, a2, a3 + 1, v7);
        if (a3 == -1)
        {
          return a3;
        }

        break;
      case '(':
        v7 = 41;
        goto LABEL_4;
    }

LABEL_5:
    if (++a3 >= a2)
    {
      return -1;
    }
  }

  if (v8 != 34)
  {
    if (v8 != 39)
    {
      goto LABEL_5;
    }

    v9 = a3 + 1;
    v10 = a2 >= a3 + 1;
    v11 = a2 - (a3 + 1);
    if (v11 == 0 || !v10)
    {
      return -1;
    }

    v12 = memchr((a1 + v9), 39, v11);
    if (!v12)
    {
      return -1;
    }

    goto LABEL_22;
  }

  v13 = a3 + 1;
  v10 = a2 >= a3 + 1;
  v14 = a2 - (a3 + 1);
  if (v14 != 0 && v10)
  {
    v12 = memchr((a1 + v13), 34, v14);
    if (v12)
    {
LABEL_22:
      a3 = &v12[-a1];
      if (&v12[-a1] == -1)
      {
        return a3;
      }

      goto LABEL_5;
    }
  }

  return -1;
}

unsigned __int8 *sub_10016A518(unsigned __int8 **a1, unint64_t a2)
{
  if (a1[1] >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1[1];
  }

  v28 = *a1;
  v29 = v4;
  first_not_of = llvm::StringRef::find_first_not_of(&v28, " \t\n\v\f\r", 6, 0);
  if (first_not_of >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = first_not_of;
  }

  if (v29 < v6)
  {
    v6 = v29;
  }

  v7 = v29 - v6;
  v30 = &v28[v6];
  v31 = v29 - v6;
  last_not_of = llvm::StringRef::find_last_not_of(&v30, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v7 - (last_not_of + 1);
  if (v7 < last_not_of + 1)
  {
    v9 = 0;
  }

  v10 = v30;
  v11 = v31 - v9;
  if (v31 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v31;
  }

  v13 = a1[1];
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a1[1];
  }

  v15 = &v13[-v14];
  v30 = &(*a1)[v14];
  v31 = &v13[-v14];
  v16 = llvm::StringRef::find_first_not_of(&v30, " \t\n\v\f\r", 6, 0);
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = v31;
  if (v31 < v17)
  {
    v17 = v31;
  }

  *a1 = &v30[v17];
  a1[1] = (v18 - v17);
  v19 = v12 - 2;
  if (v12 >= 2)
  {
    v20 = *v10;
    v21 = &v10[v12];
    if (v20 == 34)
    {
      if (*(v21 - 1) != 34)
      {
        return v10;
      }
    }

    else
    {
      if (v20 == 123)
      {
        v22 = sub_10016A3F0(v10, v12, 1uLL, 0x7Du);
        if (v22 != v12 - 1)
        {
          return v10;
        }

        if (v22 >= v19)
        {
          v23 = v12 - 2;
        }

        else
        {
          v23 = v22;
        }

        v28 = v10 + 1;
        v29 = v23;
        v24 = llvm::StringRef::find_first_not_of(&v28, " \t\n\v\f\r", 6, 0);
        if (v24 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        goto LABEL_39;
      }

      if (v20 != 39 || *(v21 - 1) != 39)
      {
        return v10;
      }
    }

    v28 = v10 + 1;
    v29 = v12 - 2;
    v26 = llvm::StringRef::find_first_not_of(&v28, " \t\n\v\f\r", 6, 0);
    if (v26 >= v19)
    {
      v25 = v12 - 2;
    }

    else
    {
      v25 = v26;
    }

LABEL_39:
    if (v29 < v25)
    {
      v25 = v29;
    }

    v30 = &v28[v25];
    v31 = v29 - v25;
    llvm::StringRef::find_last_not_of(&v30, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    return v30;
  }

  return v10;
}

uint64_t mlir::detail::PassOptions::copyOptionValuesFrom(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  v3 = *(result + 168);
  if (v2 != v3)
  {
    v4 = *(a2 + 160);
    v5 = *(a2 + 168);
    if (v4 != v5)
    {
      v6 = v4 + 8;
      v7 = v2 + 8;
      do
      {
        result = (*(**(v7 - 8) + 40))(*(v7 - 8), *(v6 - 8));
        if (v7 == v3)
        {
          break;
        }

        v7 += 8;
        v8 = v6 == v5;
        v6 += 8;
      }

      while (!v8);
    }
  }

  return result;
}

uint64_t mlir::detail::PassOptions::parseFromString(uint64_t a1, unsigned __int8 *a2, unint64_t a3, void *a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  while (2)
  {
    v8 = 0;
    v46 = a2;
    v47 = v5;
    do
    {
      v9 = a2[v8];
      if (v9 == 61)
      {
        v10 = sub_10016A518(&v46, v8);
        v12 = v15;
        v16 = v47;
        v17 = v47 != 0;
        if (v47)
        {
          v18 = v46 + 1;
        }

        else
        {
          v18 = v46;
        }

        v19 = v47 - v17;
        v46 = v18;
        v47 -= v17;
        if (v16 < 2)
        {
          v20 = 0;
          goto LABEL_58;
        }

        v20 = 0;
        while (1)
        {
          v23 = v18[v20];
          switch(v23)
          {
            case '""':
              v35 = v20 + 1;
              if (v19 > v20 + 1)
              {
                v36 = 34;
LABEL_17:
                v21 = memchr(&v18[v35], v36, v19 - v35);
                v22 = v21 - v18 == -1 || v21 == 0;
                if (!v22)
                {
                  v20 = v21 - v18;
                }
              }

              break;
            case '\'':
              v35 = v20 + 1;
              if (v19 > v20 + 1)
              {
                v36 = 39;
                goto LABEL_17;
              }

              break;
            case ' ':
              goto LABEL_58;
            default:
              v24 = v20 + 1;
              if (v23 == 123 && v24 != v19)
              {
                v26 = 1;
                do
                {
                  v27 = v18[v24];
                  if (v27 > 0x7A)
                  {
                    if (v27 == 123)
                    {
                      ++v26;
                    }

                    else if (v27 == 125 && !--v26)
                    {
                      goto LABEL_22;
                    }
                  }

                  else
                  {
                    if (v27 != 34)
                    {
                      v22 = v27 == 39;
                      v28 = v20 + 2;
                      if (!v22 || v19 <= v28)
                      {
                        goto LABEL_32;
                      }

                      v30 = v19 - v28;
                      v31 = &v18[v28];
                      v32 = 39;
                      goto LABEL_47;
                    }

                    v30 = v19 - (v20 + 2);
                    if (v19 > v20 + 2)
                    {
                      v31 = &v18[v20 + 2];
                      v32 = 34;
LABEL_47:
                      v33 = memchr(v31, v32, v30);
                      if (v33 - v18 != -1 && v33 != 0)
                      {
                        v24 = v33 - v18;
                      }
                    }
                  }

LABEL_32:
                  v20 = v24++;
                }

                while (v24 != v19);
              }

              break;
          }

LABEL_22:
          if (++v20 == v19)
          {
            v20 = v19;
LABEL_58:
            v14 = sub_10016A518(&v46, v20);
            v13 = v37;
            a2 = v46;
            v5 = v47;
            if (!v12)
            {
              goto LABEL_3;
            }

LABEL_59:
            v38 = llvm::StringMapImpl::hash(v10, v12);
            Key = llvm::StringMapImpl::FindKey((a1 + 128), v10, v12, v38);
            if (Key != -1 && Key != *(a1 + 136))
            {
              if ((llvm::cl::ProvidePositionalOption(*(*(*(a1 + 128) + 8 * Key) + 8), v14, v13, 0) & 1) == 0)
              {
                goto LABEL_3;
              }

              return 0;
            }

            v41 = a4[4];
            if (a4[3] - v41 > 0x25uLL)
            {
              qmemcpy(v41, "<Pass-Options-Parser>: no such option ", 38);
              v45 = a4[3];
              v42 = (a4[4] + 38);
              a4[4] = v42;
              if (v12 <= v45 - v42)
              {
LABEL_66:
                memcpy(v42, v10, v12);
                v43 = a4[3];
                v44 = (a4[4] + v12);
                a4[4] = v44;
                if (v43 != v44)
                {
LABEL_67:
                  result = 0;
                  *v44 = 10;
                  ++a4[4];
                  return result;
                }

LABEL_71:
                llvm::raw_ostream::write(a4, "\n", 1uLL);
                return 0;
              }
            }

            else
            {
              a4 = llvm::raw_ostream::write(a4, "<Pass-Options-Parser>: no such option ", 0x26uLL);
              v42 = a4[4];
              if (v12 <= a4[3] - v42)
              {
                goto LABEL_66;
              }
            }

            a4 = llvm::raw_ostream::write(a4, v10->i8, v12);
            v44 = a4[4];
            if (a4[3] != v44)
            {
              goto LABEL_67;
            }

            goto LABEL_71;
          }
        }
      }

      if (v9 == 32)
      {
        goto LABEL_9;
      }

      ++v8;
    }

    while (v5 != v8);
    v8 = v5;
LABEL_9:
    v10 = sub_10016A518(&v46, v8);
    v12 = v11;
    v13 = 0;
    v14 = 0;
    a2 = v46;
    v5 = v47;
    if (v11)
    {
      goto LABEL_59;
    }

LABEL_3:
    if (v5)
    {
      continue;
    }

    return 1;
  }
}

void mlir::detail::PassOptions::print(mlir::detail::PassOptions *this, llvm::raw_ostream *a2)
{
  if (!*(this + 35))
  {
    return;
  }

  v4 = *(this + 20);
  v3 = *(this + 21);
  __base = v30;
  v29 = 0x400000000;
  v5 = v3 - v4;
  v6 = (v3 - v4) >> 3;
  if (v6 < 5)
  {
    v7 = 0;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__base, v30, v6, 8);
    v7 = v29;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  v8 = __base + 8 * v7;
  if (v5 - 8 < 0x38)
  {
    goto LABEL_32;
  }

  v9 = __base + 8 * v7;
  if ((v9 - v4) < 0x20)
  {
    goto LABEL_32;
  }

  v10 = ((v5 - 8) >> 3) + 1;
  v11 = 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL);
  v8 = (v8 + v11);
  v12 = &v4[v11];
  v13 = (v4 + 16);
  v14 = v9 + 16;
  v15 = v10 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 2;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  v4 = v12;
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
  {
LABEL_32:
    do
    {
      v17 = *v4;
      v4 += 8;
      *v8++ = v17;
    }

    while (v4 != v3);
  }

LABEL_12:
  v18 = v7 + (v5 >> 3);
  LODWORD(v29) = v18;
  if (v18 >= 2)
  {
    qsort(__base, v18, 8uLL, sub_10016ADF4);
  }

  v19 = *(a2 + 4);
  if (v19 < *(a2 + 3))
  {
    *(a2 + 4) = v19 + 1;
    *v19 = 123;
    v20 = v29;
    if (!v29)
    {
      goto LABEL_19;
    }

LABEL_18:
    v21 = __base;
    (*(**__base + 24))(*__base, a2);
    if (v20 != 1)
    {
      v24 = (v21 + 8);
      v25 = 8 * v20 - 8;
      do
      {
        v27 = *(a2 + 4);
        if (*(a2 + 3) == v27)
        {
          llvm::raw_ostream::write(a2, " ", 1uLL);
        }

        else
        {
          *v27 = 32;
          ++*(a2 + 4);
        }

        v26 = *v24++;
        (*(*v26 + 24))(v26, a2);
        v25 -= 8;
      }

      while (v25);
    }

    goto LABEL_19;
  }

  llvm::raw_ostream::write(a2, 123);
  v20 = v29;
  if (v29)
  {
    goto LABEL_18;
  }

LABEL_19:
  v22 = *(a2 + 4);
  if (v22 >= *(a2 + 3))
  {
    llvm::raw_ostream::write(a2, 125);
    v23 = __base;
    if (__base == v30)
    {
      return;
    }
  }

  else
  {
    *(a2 + 4) = v22 + 1;
    *v22 = 125;
    v23 = __base;
    if (__base == v30)
    {
      return;
    }
  }

  free(v23);
}

uint64_t sub_10016ADF4(void *a1, uint64_t a2)
{
  v3 = (*(**a1 + 32))(*a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = (*(**a2 + 32))();
  v7 = *(v6 + 24);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 24);
  }

  if (v8)
  {
    v9 = memcmp(v4, *(v6 + 16), v8);
    if (v9)
    {
      return (v9 >> 31) | 1u;
    }
  }

  if (v5 < v7)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v7)
  {
    return 0;
  }

  else
  {
    return v11;
  }
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
        if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
        {
          if (v11 == qword_1002E0E00)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1002A2B0C();
          if (v11 == qword_1002E0E00)
          {
LABEL_5:
            v12 = *(v9 + 344);
            v13 = *(v10 + 344);
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
              v15 = *(v9 + 336);
              v16 = *(v10 + 336);
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

void mlir::PassManager::dumpStatistics(mlir::PassManager *this)
{
  sub_10016B424(this);
  v2 = *(this + 4);
  llvm::CreateInfoOutputFile();
}

void sub_10016B424(mlir::OpPassManager *a1)
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
      if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
      {
        if (v6 == qword_1002E0E00)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1002A2B0C();
        if (v6 == qword_1002E0E00)
        {
LABEL_7:
          v7 = *(v5 + 336);
          v8 = *(v5 + 344);
          v9 = *(v5 + 368);
          if (v9)
          {
            v10 = *(v5 + 360);
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
                  sub_10016B424(*v10 + v13);
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
              sub_10016B424(v7);
              v7 += 8;
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

uint64_t sub_10016B5C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002D82C0;
  a2[1] = v2;
  return result;
}

void sub_10016B5F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 8);
  if (atomic_load_explicit(&qword_1002E0E08, memory_order_acquire))
  {
    if (v4 != qword_1002E0E00)
    {
      return;
    }
  }

  else
  {
    sub_1002A2B0C();
    if (v4 != qword_1002E0E00)
    {
      return;
    }
  }

  v5 = *(v3 + 344);
  if (v5)
  {
    v6 = *(v3 + 336);
    v7 = (v6 + 8 * v5);
    do
    {
      v8 = mlir::OpPassManager::begin(v6);
      v9 = mlir::OpPassManager::end(v6);
      if (v8 != v9)
      {
        v10 = v9;
        do
        {
          v11 = *(a1 + 8);
          v14 = *v8;
          v12 = *(v11 + 24);
          if (!v12)
          {
            v13 = sub_10000520C();
            mlir::ODIE::Compiler::CoreML::CoreMLDialect::initialize(v13);
          }

          (*(*v12 + 48))(v12, &v14);
          ++v8;
        }

        while (v8 != v10);
      }

      v6 = (v6 + 8);
    }

    while (v6 != v7);
  }
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::CoreMLDialect(mlir::ODIE::Compiler::CoreML::CoreMLDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "coreml", 6, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id);
  *v2 = off_1002D8308;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  mlir::ODIE::Compiler::CoreML::CoreMLDialect::initialize(v2);
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::~CoreMLDialect(mlir::ODIE::Compiler::CoreML::CoreMLDialect *this)
{
  *this = off_1002D8308;
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = this;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = this;
  }

  mlir::Dialect::~Dialect(v4);
}

{
  *this = off_1002D8308;
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  mlir::Dialect::~Dialect(this);

  operator delete();
}

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 24))(a1, "coreml", 6);
  if (v4)
  {
    v5 = *(result + 8);
    *a2 = off_1002D8388;
    a2[1] = v5;
  }

  else
  {
    *a2 = off_1002D8388;
    a2[1] = 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::flattenSymbolRef(uint64_t a1)
{
  v33 = a1;
  if (!a1)
  {
    sub_1002A3014();
  }

  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &off_1002D49D0;
  v30 = v31;
  llvm::raw_ostream::SetBufferAndMode(&v23, 0, 0, 0);
  v21[0] = mlir::SymbolRefAttr::getRootReference(&v33);
  Value = mlir::StringAttr::getValue(v21);
  v3 = v1;
  if (v1 <= v26 - v27)
  {
    if (v1)
    {
      memcpy(v27, Value, v1);
      v27 += v3;
    }
  }

  else
  {
    llvm::raw_ostream::write(&v23, Value, v1);
  }

  mlir::SymbolRefAttr::getNestedReferences(&v33);
  if (v4)
  {
    if (v26 == v27)
    {
      llvm::raw_ostream::write(&v23, "_", 1uLL);
      NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v33);
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v27++ = 95;
      NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v33);
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    v7 = NestedReferences;
    v8 = v6;
    v34 = *NestedReferences;
    v21[0] = mlir::SymbolRefAttr::getRootReference(&v34);
    v10 = mlir::StringAttr::getValue(v21);
    v11 = v9;
    if (v9 <= v26 - v27)
    {
      if (v9)
      {
        memcpy(v27, v10, v9);
        v27 += v11;
      }
    }

    else
    {
      llvm::raw_ostream::write(&v23, v10, v9);
    }

    if (v8 != 1)
    {
      v16 = v7 + 1;
      v17 = 8 * v8 - 8;
      do
      {
        if (v26 == v27)
        {
          llvm::raw_ostream::write(&v23, "_", 1uLL);
        }

        else
        {
          *v27++ = 95;
        }

        v34 = *v16;
        v21[0] = mlir::SymbolRefAttr::getRootReference(&v34);
        v19 = mlir::StringAttr::getValue(v21);
        v20 = v18;
        if (v18 > v26 - v27)
        {
          llvm::raw_ostream::write(&v23, v19, v18);
        }

        else if (v18)
        {
          memcpy(v27, v19, v18);
          v27 += v20;
        }

        ++v16;
        v17 -= 8;
      }

      while (v17);
    }
  }

LABEL_16:
  Context = mlir::Attribute::getContext(&v33);
  v22 = 260;
  v21[0] = v31;
  v14 = mlir::StringAttr::get(Context, v21, v13);
  llvm::raw_ostream::~raw_ostream(&v23);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  return v14;
}

void *mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  result = sub_10006BC04(a3);
  v23[0] = result;
  v23[1] = v10;
  if (result)
  {
    if (mlir::TypedAttr::getType(v23) == a4)
    {
      if (a3)
      {
        v11 = *a3;
        {
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1002A30CC();
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        v15 = v13;
        v16 = v14;
        do
        {
          v17 = v16 >> 1;
          v18 = &v15[2 * (v16 >> 1)];
          v20 = *v18;
          v19 = v18 + 2;
          v16 += ~(v16 >> 1);
          if (v20 < v12)
          {
            v15 = v19;
          }

          else
          {
            v16 = v17;
          }
        }

        while (v16);
        if (v15 != &v13[2 * v14] && *v15 == v12)
        {
          v21 = v15[1];
          goto LABEL_19;
        }
      }

LABEL_18:
      v21 = 0;
LABEL_19:
      v22[0] = a3;
      v22[1] = v21;
      return sub_10016C43C(a2, a5, &v24, v22);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10016C43C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_1002A3110(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v17, *a3, *a4, a4[1]);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
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

void *mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(mlir::ODIE::Compiler::CoreML::ParamDeclAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v15 = *(*this + 8);
  Value = mlir::StringAttr::getValue(&v15);
  (*(*a2 + 72))(a2, Value, v7);
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 8250;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ": ", 2uLL);
  }

  (*(*a2 + 32))(a2, *(*this + 16));
  v10 = *(*this + 24);
  if (v10)
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = v11[4];
    if ((v11[3] - v12) > 2)
    {
      *(v12 + 2) = 32;
      *v12 = 15648;
      v11[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v11, " = ", 3uLL);
    }

    (*(*a2 + 48))(a2, v10);
  }

  result = (*(*a2 + 16))(a2);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v14 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  v20 = 0;
  if ((*(*a1 + 152))(a1) & 1) == 0 || (sub_10016CAAC(a1) & 1) == 0 || ((*(*a1 + 576))(a1, &v20) & 1) == 0 || (v18 = 0, v19 = 0, ((*(*a1 + 144))(a1)) && !sub_10016CD64(a1, &v18, v20) || ((*(*a1 + 168))(a1) & 1) == 0)
  {
    result = 0;
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v2 = v18;
  v3 = (*(*a1 + 32))(a1);
  if (!v2)
  {
    v17 = 260;
    v16[0] = __p;
    StringAttr = mlir::Builder::getStringAttr(v3, v16, v4);
    v23 = v20;
    Context = mlir::Type::getContext(&v23);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v24[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
    v24[1] = Context;
    v30[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrERNS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
    v30[1] = v24;
    v27 = StringAttr;
    v28 = v23;
    v29 = 0;
    v10 = (v28 >> 4) ^ (v28 >> 9);
    v11 = 0xB492B66FBE98F273 * ((StringAttr >> 4) ^ (StringAttr >> 9));
    v12 = __ROR8__(v11 - v10, 43) - 0x3C5A37A36834CED9 * v10 - 0x4AA9CCC802B940A1;
    v13 = v11 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA731BLL;
    v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v13)));
    v25[0] = &v27;
    v25[1] = v30;
    v26 = &v27;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v14 >> 47) ^ v14), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v26, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v25);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_13:
    v15 = result;
    operator delete(__p[0]);
    return v15;
  }

  v17 = 260;
  v16[0] = __p;
  v5 = mlir::Builder::getStringAttr(v3, v16, v4);
  result = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(v5, v18, v19);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10016CAAC(uint64_t a1)
{
  if ((*(*a1 + 432))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 40))(a1);
  v18 = 257;
  (*(*a1 + 24))(v22, a1, v3, v17);
  if (v22[0])
  {
    v19 = 3;
    v20 = "expected valid keyword or string";
    v21 = 32;
    v4 = &v19;
    v5 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v5 = v23;
        v4 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = &v19;
        v5 = v23;
      }
    }

    v6 = &v5[24 * v24];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v30;
      v10 = __p;
      if (v30 != __p)
      {
        do
        {
          v9 = sub_10005BEF4(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v30 = v8;
      operator delete(v10);
    }

    v11 = v27;
    if (v27)
    {
      v12 = v28;
      v13 = v27;
      if (v28 != v27)
      {
        do
        {
          v14 = *--v12;
          *v12 = 0;
          if (v14)
          {
            operator delete[]();
          }
        }

        while (v12 != v11);
        v13 = v27;
      }

      v28 = v11;
      operator delete(v13);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

BOOL sub_10016CD64(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = sub_10006BC04(v20);
  *a2 = v7;
  a2[1] = v8;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v10 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v10;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = sub_10005BEF4(v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v15;
          *v15 = 0;
          if (v17)
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v10;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a2;
  v14[1] = a3;
  Context = mlir::Attribute::getContext(v14);
  Type = mlir::TypedAttr::getType(v14);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrENS1_4TypeERNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v19[1] = v15;
  v18[0] = a1;
  v18[1] = Type;
  v18[2] = v14[0];
  v7 = (Type >> 4) ^ (Type >> 9);
  v8 = 0xB492B66FBE98F273 * ((a1 >> 4) ^ (a1 >> 9));
  v9 = 0x9AE16A3B2F90404FLL * ((LODWORD(v14[0]) >> 4) ^ (LODWORD(v14[0]) >> 9));
  v10 = __ROR8__(v7 ^ 0xC949D7C7509E6557, 20);
  v11 = __ROR8__(v8 - v7, 43) - 0x3C5A37A36834CED9 * v7 + __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30);
  v12 = 0x9DDFEA08EB382D69 * ((v8 + v10 - 0xAE502812AA7333 - v9 + 24) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v8 + v10 - 0xAE502812AA7333 - v9 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v8 + v10 - 0xAE502812AA7333 - v9 + 24))));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

void *mlir::ODIE::Compiler::CoreML::ParamRefAttr::print(mlir::ODIE::Compiler::CoreML::ParamRefAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v10 = *(*this + 8);
  Value = mlir::StringAttr::getValue(&v10);
  (*(*a2 + 72))(a2, Value, v7);
  result = (*(*a2 + 16))(a2);
  v9 = result[4];
  if (result[3] == v9)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v9 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefAttr::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v18 = 0;
  v19 = a2;
  __p[0] = 0;
  __p[1] = 0;
  if ((*(*a1 + 152))(a1) & 1) != 0 && (sub_10016CAAC(a1) & 1) != 0 && ((*(*a1 + 168))(a1) & 1) != 0 && (a2 || ((*(*a1 + 576))(a1, &v19)))
  {
    Context = mlir::AsmParser::getContext(a1);
    v5 = (*(*a1 + 32))(a1);
    v16 = 260;
    v15 = __p;
    StringAttr = mlir::Builder::getStringAttr(v5, &v15, v6);
    v8 = v19;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v20[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
    v20[1] = Context;
    v24[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
    v24[1] = v20;
    v23[0] = StringAttr;
    v23[1] = v8;
    v10 = (v8 >> 4) ^ (v8 >> 9);
    v11 = __ROR8__(v10 + 16, 16);
    v12 = 0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ (StringAttr >> 4) ^ (StringAttr >> 9));
    v22 = v23;
    v21[0] = v23;
    v21[1] = v24;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12)))) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = 0;
  if (SHIBYTE(v18) < 0)
  {
LABEL_7:
    v14 = result;
    operator delete(__p[0]);
    return v14;
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(uint64_t a1, uint64_t a2)
{
  if (*(**(a2 + 8) + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = v4[4];
    if (v4[3] == v5)
    {
      llvm::raw_ostream::write(v4, "<", 1uLL);
    }

    else
    {
      *v5 = 60;
      ++v4[4];
    }

    (*(*a1 + 40))(a1, a2);
    goto LABEL_9;
  }

  (*(*a1 + 40))(a1);
  v6 = (*(*a1 + 16))(a1);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "<", 1uLL);
    v8 = *(a2 + 32);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *v7 = 60;
    ++v6[4];
    v8 = *(a2 + 32);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v11 = *(a2 + 24);
  sub_1001EA2C8(a1, *v11, v11[1]);
  if (v8 != 1)
  {
    v12 = &v11[2 * v8];
    v13 = v11 + 2;
    do
    {
      while (1)
      {
        v16 = (*(*a1 + 16))(a1);
        v17 = v16[4];
        if (v16[3] - v17 <= 1uLL)
        {
          break;
        }

        *v17 = 8236;
        v16[4] += 2;
        v14 = *v13;
        v15 = v13[1];
        v13 += 2;
        sub_1001EA2C8(a1, v14, v15);
        if (v13 == v12)
        {
          goto LABEL_9;
        }
      }

      llvm::raw_ostream::write(v16, ", ", 2uLL);
      v18 = *v13;
      v19 = v13[1];
      v13 += 2;
      sub_1001EA2C8(a1, v18, v19);
    }

    while (v13 != v12);
  }

LABEL_9:
  result = (*(*a1 + 16))(a1);
  v10 = result[4];
  if (result[3] == v10)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v10 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(mlir::ODIE::Compiler::CoreML::ParamBindAttr *this)
{
  v1 = *this;
  result = *(*this + 24);
  v3 = *(v1 + 32);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  if (((*(*a1 + 440))(a1, &v16) & 1) == 0)
  {
    return 0;
  }

  if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = v16;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    *a2 = v16;
    return 1;
  }

  v18 = v20;
  v19 = 0x300000000;
  v15[0] = a1;
  v15[1] = &v18;
  if ((*(*a1 + 392))(a1, 7, sub_1001EA48C, v15, 0, 0))
  {
    if (v19)
    {
      v5 = (*(*a1 + 32))(a1);
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v5);
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id);
      v8 = v18;
      v9 = v19;
      v17 = v4;
      Context = mlir::Attribute::getContext(&v17);
      v11 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v17, SingletonImpl, v8, v9);
    }

    else
    {
      v11 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v4);
    }

    *a2 = v11;
    result = 1;
    v13 = v18;
    if (v18 != v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = 0;
    v13 = v18;
    if (v18 != v20)
    {
LABEL_15:
      v14 = result;
      free(v13);
      return v14;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  v2 = mlir::Attribute::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v2);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_13SymbolRefAttrENS4_10SymbolTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = SingletonImpl;
  v6 = (SingletonImpl >> 4) ^ (SingletonImpl >> 9);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

{
  v11 = a1;
  Context = mlir::Type::getContext(&v11);
  v2 = mlir::TypeAttr::get(v11);
  v3 = mlir::Type::getContext(&v11);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v3);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJNS1_8TypeAttrENS4_8TypeTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v16[1] = v12;
  v15[0] = v2;
  v15[1] = SingletonImpl;
  v7 = (SingletonImpl >> 4) ^ (SingletonImpl >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v2 >> 4) ^ (v2 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::print(mlir::ODIE::Compiler::CoreML::ParamBindAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  (*(*a2 + 48))(a2, *(*this + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 2)
  {
    *(v7 + 2) = 91;
    *v7 = 8236;
    v6[4] += 3;
    v8 = *this;
    v9 = *(*this + 32);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    llvm::raw_ostream::write(v6, ", [", 3uLL);
    v8 = *this;
    v9 = *(*this + 32);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v10 = *(v8 + 24);
  v11 = v10[1];
  sub_1001EA2C8(a2, *v10);
  if (v9 != 1)
  {
    v12 = &v10[2 * v9];
    v13 = v10 + 2;
    do
    {
      while (1)
      {
        v16 = (*(*a2 + 16))(a2);
        v17 = v16[4];
        if (v16[3] - v17 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(v16, ", ", 2uLL);
        v14 = *v13;
        v15 = v13[1];
        v13 += 2;
        sub_1001EA2C8(a2, v14);
        if (v13 == v12)
        {
          goto LABEL_13;
        }
      }

      *v17 = 8236;
      v16[4] += 2;
      v18 = *v13;
      v19 = v13[1];
      v13 += 2;
      sub_1001EA2C8(a2, v18);
    }

    while (v13 != v12);
  }

LABEL_13:
  result = (*(*a2 + 16))(a2);
  v21 = result[4];
  if (result[3] - v21 > 1uLL)
  {
    *v21 = 15965;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]>", 2uLL);
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(uint64_t a1, void **a2)
{
  v2 = a2;
  v14 = v16;
  v15 = 0x300000000;
  v10 = 0;
  v11[0] = a1;
  v11[1] = &v14;
  v12 = a2;
  if ((*(*a1 + 152))(a1) & 1) != 0 && ((*(*a1 + 440))(a1, &v10, 0) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 392))(a1, 2, sub_1001EAA44, v11, 0, 0) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    if (v2)
    {
      goto LABEL_9;
    }

    if ((*(*a1 + 576))(a1, &v12))
    {
      v2 = v12;
LABEL_9:
      v4 = v14;
      v5 = v15;
      v13 = v10;
      Context = mlir::Attribute::getContext(&v13);
      v7 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v13, v2, v4, v5);
      v8 = v14;
      if (v14 == v16)
      {
        return v7;
      }

      goto LABEL_12;
    }
  }

  v7 = 0;
  v8 = v14;
  if (v14 != v16)
  {
LABEL_12:
    free(v8);
  }

  return v7;
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(mlir::MLIRContext *a1, uint64_t (*a2)(), void **a3, _DWORD *a4, uint64_t a5)
{
  if (a5)
  {
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id || a2 == 0)
    {
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
      v61 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
      v62 = a1;
      v70 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJRNS1_9AttributeERNS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS7_;
      v71 = &v61;
      v12 = (a2 >> 4) ^ (a2 >> 9);
      v66 = a2;
      v67 = a3;
      v68 = a4;
      v69 = a5;
      v13 = (a3 >> 4) ^ (a3 >> 9);
      v14 = sub_1001EAA50(a4, &a4[4 * a5]);
      v15 = 0xB492B66FBE98F273 * v12 + __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * v14 + 24;
      v16 = (__ROR8__(0xB492B66FBE98F273 * v12 - v13, 43) - 0x3C5A37A36834CED9 * v13 + __ROR8__((0x9AE16A3B2F90404FLL * v14) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v15;
      v17 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
      v63 = &v66;
      v64 = &v70;
      v65 = &v66;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id, -348639895 * ((v17 >> 47) ^ v17), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v63);
      if (!result)
      {
        return result;
      }

      v18 = *result;
      {
        v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        if (!v21)
        {
          return result;
        }
      }

      else
      {
        v56 = result;
        sub_1002A30CC();
        result = v56;
        v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        if (!v21)
        {
          return result;
        }
      }

      v22 = v20;
      v23 = v21;
      do
      {
        v24 = v23 >> 1;
        v25 = &v22[2 * (v23 >> 1)];
        v27 = *v25;
        v26 = v25 + 2;
        v23 += ~(v23 >> 1);
        if (v27 < v19)
        {
          v22 = v26;
        }

        else
        {
          v23 = v24;
        }
      }

      while (v23);
    }

    else
    {
      v40 = *(a2 + 1);
      v39 = *(a2 + 2);
      v42 = mlir::MLIRContext::getAttributeUniquer(a1);
      v61 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
      v62 = a1;
      v70 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJNS1_9AttributeENS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESN_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSP_E_EEvlS7_;
      v71 = &v61;
      v43 = (v40 >> 4) ^ (v40 >> 9);
      v66 = v40;
      v67 = v39;
      v68 = a4;
      v69 = a5;
      v44 = (v39 >> 4) ^ (v39 >> 9);
      v45 = sub_1001EAA50(a4, &a4[4 * a5]);
      v46 = 0xB492B66FBE98F273 * v43 + __ROR8__(v44 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * v45 + 24;
      v47 = (__ROR8__(0xB492B66FBE98F273 * v43 - v44, 43) - 0x3C5A37A36834CED9 * v44 + __ROR8__((0x9AE16A3B2F90404FLL * v45) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v46;
      v48 = 0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * v47) >> 47) ^ (0x9DDFEA08EB382D69 * v47));
      v63 = &v66;
      v64 = &v70;
      v65 = &v66;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(v42, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id, -348639895 * ((v48 >> 47) ^ v48), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v63);
      if (!result)
      {
        return result;
      }

      v50 = *result;
      {
        v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v20 = *(v50 + 8);
        v21 = *(v50 + 16);
        if (!v21)
        {
          return result;
        }
      }

      else
      {
        v57 = result;
        sub_1002A30CC();
        result = v57;
        v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v20 = *(v50 + 8);
        v21 = *(v50 + 16);
        if (!v21)
        {
          return result;
        }
      }

      v22 = v20;
      v51 = v21;
      do
      {
        v52 = v51 >> 1;
        v53 = &v22[2 * (v51 >> 1)];
        v55 = *v53;
        v54 = v53 + 2;
        v51 += ~(v51 >> 1);
        if (v55 < v19)
        {
          v22 = v54;
        }

        else
        {
          v51 = v52;
        }
      }

      while (v51);
    }
  }

  else
  {
    result = sub_10006BC04(a2);
    if (result)
    {
      return result;
    }

    v60 = a2;
    Context = mlir::Attribute::getContext(&v60);
    v29 = mlir::MLIRContext::getAttributeUniquer(Context);
    v61 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    v62 = Context;
    v66 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
    v67 = &v61;
    v70 = v60;
    v71 = a3;
    v30 = (a3 >> 4) ^ (a3 >> 9);
    v31 = __ROR8__(v30 + 16, 16);
    v32 = 0x9DDFEA08EB382D69 * (v31 ^ 0xFF51AFD7ED558CCDLL ^ (v60 >> 4) ^ (v60 >> 9));
    v63 = &v70;
    v64 = &v66;
    v65 = &v70;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v29, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) >> 32) >> 15) ^ (-348639895 * (v31 ^ (v32 >> 47) ^ v32)))) ^ v30, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v63);
    if (!result)
    {
      return result;
    }

    v33 = *result;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v20 = *(v33 + 8);
      v21 = *(v33 + 16);
      if (!v21)
      {
        return result;
      }
    }

    else
    {
      v58 = result;
      sub_1002A30CC();
      result = v58;
      v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v20 = *(v33 + 8);
      v21 = *(v33 + 16);
      if (!v21)
      {
        return result;
      }
    }

    v22 = v20;
    v34 = v21;
    do
    {
      v35 = v34 >> 1;
      v36 = &v22[2 * (v34 >> 1)];
      v38 = *v36;
      v37 = v36 + 2;
      v34 += ~(v34 >> 1);
      if (v38 < v19)
      {
        v22 = v37;
      }

      else
      {
        v34 = v35;
      }
    }

    while (v34);
  }

  if (v22 != &v20[2 * v21] && *v22 == v19)
  {
    v59 = v22[1];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

{
  v9[0] = a1;
  v9[1] = a2;
  Context = mlir::Attribute::getContext(v9);
  Type = mlir::TypedAttr::getType(v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9TypedAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v14[1] = v10;
  v13[0] = v9[0];
  v13[1] = Type;
  v5 = (Type >> 4) ^ (Type >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (LODWORD(v9[0]) >> 4) ^ (LODWORD(v9[0]) >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::parse(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = 0;
  v12 = a2;
  if ((*(*a1 + 152))(a1) & 1) != 0 && ((*(*a1 + 440))(a1, &v11, 0) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    v4 = *(*v11 + 136);
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }

    v10 = v5;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      Value = mlir::TypeAttr::getValue(&v10);
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(Value);
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11);
    }

    v6 = sub_10006BC04(v11);
    if (v6)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v6, v7);
    }

    if (v2)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11, v2);
    }

    if ((*(*a1 + 576))(a1, &v12))
    {
      v2 = v12;
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11, v2);
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::ArrayType::print(mlir::ODIE::Compiler::CoreML::ArrayType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (v6)
  {
    v7 = *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6[1];
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v8 = 0;
    }

    v15 = v8;
    if (v9 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      Value = mlir::TypeAttr::getValue(&v15);
      (*(*a2 + 32))(a2, Value);
    }
  }

  else
  {
    (*(*a2 + 40))(a2);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] - v12 > 1uLL)
  {
    *v12 = 8250;
    v11[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, ": ", 2uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  result = (*(*a2 + 16))(a2);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v14 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ArrayType::parse(mlir::ODIE::Compiler::CoreML::ArrayType *this, mlir::AsmParser *a2)
{
  v43 = 0;
  v44 = 0;
  v42 = (*(*this + 40))(this, a2);
  v41[0] = this;
  v41[1] = &v42;
  if (((*(*this + 152))(this) & 1) == 0 || ((*(*this + 440))(this, &v44, 0) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || ((*(*this + 440))(this, &v43, 0) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v3 = v44;
  if (*(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = (*(*this + 32))(this);
    v5 = sub_10016EF64(v4);
    v44 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v3, v5);
  }

  Context = mlir::AsmParser::getContext(this);
  v7 = Context;
  v8 = v44;
  if (!v44)
  {
    goto LABEL_22;
  }

  v9 = *v44;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_19:
    v12 = 0;
    v13 = v11;
    goto LABEL_20;
  }

  v37 = v9;
  v39 = Context;
  v35 = v8;
  sub_1002A30CC();
  v8 = v35;
  v7 = v39;
  v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v11 = *(v37 + 8);
  v12 = *(v37 + 16);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
LABEL_20:
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v20 = v13[1];
    v21 = v43;
    if (!v43)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

LABEL_22:
  v20 = 0;
  v21 = v43;
  if (!v43)
  {
    goto LABEL_37;
  }

LABEL_23:
  v22 = *v21;
  {
    v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_34:
    v25 = 0;
    v26 = v24;
    goto LABEL_35;
  }

  v38 = v20;
  v40 = v7;
  v32 = v8;
  v34 = v21;
  v36 = v22;
  sub_1002A30CC();
  v21 = v34;
  v20 = v38;
  v7 = v40;
  v8 = v32;
  v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v24 = *(v36 + 8);
  v25 = *(v36 + 16);
  if (!v25)
  {
    goto LABEL_34;
  }

LABEL_25:
  v26 = v24;
  v27 = v25;
  do
  {
    v28 = v27 >> 1;
    v29 = &v26[2 * (v27 >> 1)];
    v31 = *v29;
    v30 = v29 + 2;
    v27 += ~(v27 >> 1);
    if (v31 < v23)
    {
      v26 = v30;
    }

    else
    {
      v27 = v28;
    }
  }

  while (v27);
LABEL_35:
  if (v26 != &v24[2 * v25] && *v26 == v23)
  {
    v33 = v26[1];
    return sub_10017D35C(sub_1001EB458, v41, v7, v8, v20, v21, v33);
  }

LABEL_37:
  v33 = 0;
  return sub_10017D35C(sub_1001EB458, v41, v7, v8, v20, v21, v33);
}

uint64_t sub_10016EF64(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id);
}

uint64_t mlir::ODIE::Compiler::CoreML::ArrayType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43[0] = a3;
  v43[1] = a4;
  v42[0] = a5;
  v42[1] = a6;
  if (*(*mlir::TypedAttr::getType(v43) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (*(*mlir::TypedAttr::getType(v42) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      return 1;
    }

    a1(v47, a2);
    if (v47[0])
    {
      v44 = 3;
      v45 = "expected a size expression of any integer type, got ";
      v46 = 52;
      v24 = &v44;
      v25 = v48;
      if (v49 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v49 > &v44)
        {
          v40 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v25 = v48;
          v24 = (v48 + v40);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v24 = &v44;
          v25 = v48;
        }
      }

      v26 = &v25[24 * v49];
      v27 = *v24;
      *(v26 + 2) = *(v24 + 2);
      *v26 = v27;
      ++v49;
      if (v47[0])
      {
        v28 = &v44;
        mlir::DiagnosticArgument::DiagnosticArgument(&v44, v42[0]);
        v29 = v48;
        if (v49 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v49 > &v44)
          {
            v41 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v29 = v48;
            v28 = (v48 + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v28 = &v44;
            v29 = v48;
          }
        }

        v30 = &v29[24 * v49];
        v31 = *v28;
        *(v30 + 2) = *(v28 + 2);
        *v30 = v31;
        ++v49;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v55;
        v34 = __p;
        if (v55 != __p)
        {
          do
          {
            v33 = sub_10005BEF4(v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v55 = v32;
        operator delete(v34);
      }

      v20 = v52;
      if (!v52)
      {
        goto LABEL_47;
      }

      v35 = v53;
      v22 = v52;
      if (v53 == v52)
      {
        goto LABEL_46;
      }

      do
      {
        v36 = *--v35;
        *v35 = 0;
        if (v36)
        {
          operator delete[]();
        }
      }

      while (v35 != v20);
      goto LABEL_45;
    }
  }

  else
  {
    a1(v47, a2);
    if (v47[0])
    {
      v44 = 3;
      v46 = 56;
      v8 = &v44;
      v9 = v48;
      if (v49 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v49 > &v44)
        {
          v38 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v9 = v48;
          v8 = (v48 + v38);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v8 = &v44;
          v9 = v48;
        }
      }

      v10 = &v9[24 * v49];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v49;
      if (v47[0])
      {
        v12 = &v44;
        mlir::DiagnosticArgument::DiagnosticArgument(&v44, v43[0]);
        v13 = v48;
        if (v49 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v49 > &v44)
          {
            v39 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v13 = v48;
            v12 = (v48 + v39);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v12 = &v44;
            v13 = v48;
          }
        }

        v14 = &v13[24 * v49];
        v15 = *v12;
        *(v14 + 2) = *(v12 + 2);
        *v14 = v15;
        ++v49;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v55;
        v19 = __p;
        if (v55 != __p)
        {
          do
          {
            v18 = sub_10005BEF4(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v55 = v17;
        operator delete(v19);
      }

      v20 = v52;
      if (!v52)
      {
        goto LABEL_47;
      }

      v21 = v53;
      v22 = v52;
      if (v53 == v52)
      {
LABEL_46:
        v53 = v20;
        operator delete(v22);
LABEL_47:
        if (v48 != v51)
        {
          free(v48);
        }

        return v16;
      }

      do
      {
        v23 = *--v21;
        *v21 = 0;
        if (v23)
        {
          operator delete[]();
        }
      }

      while (v21 != v20);
LABEL_45:
      v22 = v52;
      goto LABEL_46;
    }
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = a2[1];
    v6 = *(*v5 + 136);
    if (v6 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v5 = 0;
    }

    v15[0] = v5;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return mlir::TypeAttr::getValue(v15);
    }
  }

  v11 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
  v10[1] = &v11;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v10;
  v14[0] = a2;
  v14[1] = a3;
  v8 = 0x9DDFEA08EB382D69 * ((8 * ((a2 >> 4) ^ (a2 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v8 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5)
{
  *&v26 = a4;
  *(&v26 + 1) = a5;
  if (*(*mlir::TypedAttr::getType(&v26) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (v26)
    {
      v19 = *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
      goto LABEL_28;
    }

    v20 = *(v26 + 8);
    v21 = *(*v20 + 136);
    if (v21 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v20 = 0;
    }

    v33[0] = v20;
    if (v21 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return mlir::TypeAttr::getValue(v33);
    }

    else
    {
LABEL_28:
      v30 = a3;
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
      v29[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
      v29[1] = &v30;
      v33[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
      v33[1] = v29;
      v27 = v26;
      v23 = 0x9DDFEA08EB382D69 * ((8 * ((v26 >> 4) ^ (v26 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
      v31[0] = &v27;
      v31[1] = v33;
      v32 = &v27;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v23 ^ (v23 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v31);
    }
  }

  else
  {
    a1(v33, a2);
    if (v33[0])
    {
      LODWORD(v27) = 3;
      v28 = 46;
      v8 = &v27;
      v9 = v34;
      if (v35 >= v36)
      {
        if (v34 <= &v27 && v34 + 24 * v35 > &v27)
        {
          v25 = &v27 - v34;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v9 = v34;
          v8 = v34 + v25;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v8 = &v27;
          v9 = v34;
        }
      }

      v10 = &v9[24 * v35];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v35;
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v41;
        v14 = __p;
        if (v41 != __p)
        {
          do
          {
            v13 = sub_10005BEF4(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v41 = v12;
        operator delete(v14);
      }

      v15 = v38;
      if (v38)
      {
        v16 = v39;
        v17 = v38;
        if (v39 != v38)
        {
          do
          {
            v18 = *--v16;
            *v16 = 0;
            if (v18)
            {
              operator delete[]();
            }
          }

          while (v16 != v15);
          v17 = v38;
        }

        v39 = v15;
        operator delete(v17);
      }

      if (v34 != v37)
      {
        free(v34);
      }
    }

    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::print(mlir::ODIE::Compiler::CoreML::SymbolRefType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  v7 = (*v6)[17];
  if (v6)
  {
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (*(*v6[1] + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v6)
    {
      v9 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v6);
      goto LABEL_16;
    }
  }

  (*(*a2 + 40))(a2);
LABEL_16:
  result = (*(*a2 + 16))(a2);
  v11 = result[4];
  if (result[3] == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++result[4];
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(mlir::ODIE::Compiler::CoreML::SymbolRefType *this, mlir::AsmParser *a2)
{
  v11 = 0;
  v3 = (*(*this + 40))(this, a2);
  v9[0] = this;
  v9[1] = &v10;
  v10 = v3;
  if (((*(*this + 152))(this) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v11) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  result = sub_10006BC04(v11);
  if (result)
  {
    v6 = result;
    v7 = v5;
    Context = mlir::AsmParser::getContext(this);
    return sub_10017D88C(sub_1001EB5B4, v9, Context, v6, v7);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SymbolRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v20[1] = a4;
  if (*(*mlir::TypedAttr::getType(v20) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    return 1;
  }

  a1(v24, a2);
  if (v24[0])
  {
    v21 = 3;
    v23 = 48;
    v6 = &v21;
    v7 = v25;
    if (v26 >= v27)
    {
      if (v25 <= &v21 && v25 + 24 * v26 > &v21)
      {
        v19 = &v21 - v25;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v7 = v25;
        v6 = (v25 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v6 = &v21;
        v7 = v25;
      }
    }

    v8 = &v7[24 * v26];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v26;
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v32;
      v13 = __p;
      if (v32 != __p)
      {
        do
        {
          v12 = sub_10005BEF4(v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v32 = v11;
      operator delete(v13);
    }

    v14 = v29;
    if (v29)
    {
      v15 = v30;
      v16 = v29;
      if (v30 != v29)
      {
        do
        {
          v17 = *--v15;
          *v15 = 0;
          if (v17)
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
        v16 = v29;
      }

      v30 = v14;
      operator delete(v16);
    }

    if (v25 != v28)
    {
      free(v25);
    }
  }

  return v10;
}

uint64_t sub_10016FF08(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, _DWORD *a4, uint64_t a5)
{
  if ((mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::verify(a1, a2, a4, a5) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id;
  v13[1] = a3;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail30TorchLocationExtrasAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23TorchLocationExtrasAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v17[1] = v13;
  v16[0] = a4;
  v16[1] = a5;
  v9 = sub_1000E0184(a4, &a4[2 * a5]);
  v10 = HIDWORD(v9) ^ 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v9 + 8) ^ v10);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return 1;
  }

  a1(v21, a2);
  if (v21[0])
  {
    v18 = 3;
    v19 = "stack trace must not be empty";
    v20 = 29;
    v5 = &v18;
    v6 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v17 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v6 = v22;
        v5 = (v22 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v5 = &v18;
        v6 = v22;
      }
    }

    v7 = &v6[24 * v23];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v23;
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
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
          v10 = sub_10005BEF4(v10 - 1);
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
          v15 = *--v13;
          *v13 = 0;
          if (v15)
          {
            operator delete[]();
          }
        }

        while (v13 != v12);
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v35) = 0;
  v38 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_100170754(a1, &v31);
  if (v38 == v34)
  {
    if (v38)
    {
      v3 = v31;
      if (v31 != v33)
      {
        if (v35 != v37)
        {
          free(v35);
          v3 = v31;
        }

        v35 = v3;
        v36 = v32;
        v31 = v33;
        v32 = 0;
        if (v34 != 1)
        {
          goto LABEL_29;
        }

LABEL_27:
        if (v31 != v33)
        {
          free(v31);
        }

        goto LABEL_29;
      }

      v5 = v32;
      v6 = v36;
      if (v36 >= v32)
      {
        if (v32)
        {
          memmove(v35, v31, 8 * v32);
        }

LABEL_64:
        LODWORD(v36) = v5;
        LODWORD(v32) = 0;
        if (v34 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (HIDWORD(v36) >= v32)
      {
        if (v36)
        {
          memmove(v35, v31, 8 * v36);
          goto LABEL_62;
        }
      }

      else
      {
        LODWORD(v36) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v32, 8);
      }

      v6 = 0;
LABEL_62:
      v20 = v32 - v6;
      if (v20)
      {
        memcpy(&v35[8 * v6], &v31[8 * v6], 8 * v20);
      }

      goto LABEL_64;
    }

LABEL_26:
    if (v34 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (!v38)
  {
    v35 = v37;
    v36 = 0x600000000;
    v4 = v32;
    if (v32)
    {
      if (v31 == v33)
      {
        v7 = v32;
        if (v32 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v32, 8), (v7 = v32) != 0))
        {
          memcpy(v35, v31, 8 * v7);
        }

        LODWORD(v36) = v4;
      }

      else
      {
        v35 = v31;
        v36 = v32;
        v31 = v33;
        HIDWORD(v32) = 0;
      }

      LODWORD(v32) = 0;
    }

    v38 = 1;
    goto LABEL_26;
  }

  if (v35 != v37)
  {
    free(v35);
  }

  v38 = 0;
  if (v34 == 1)
  {
    goto LABEL_27;
  }

LABEL_29:
  v8 = *a1;
  if ((v38 & 1) == 0)
  {
    v11 = (*(v8 + 40))(a1);
    v33[8] = 259;
    (*(*a1 + 24))(v22, a1, v11, &v31);
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

      v12 = __p;
      if (__p)
      {
        v13 = v28;
        v14 = __p;
        if (v28 != __p)
        {
          do
          {
            v13 = sub_10005BEF4(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v28 = v12;
        operator delete(v14);
      }

      v15 = v25;
      if (v25)
      {
        v16 = v26;
        v17 = v25;
        if (v26 != v25)
        {
          do
          {
            v18 = *--v16;
            *v16 = 0;
            if (v18)
            {
              operator delete[]();
            }
          }

          while (v16 != v15);
          v17 = v25;
        }

        v26 = v15;
        operator delete(v17);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

LABEL_53:
    result = 0;
    if (v38 != 1)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (((*(v8 + 296))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  Context = mlir::AsmParser::getContext(a1);
  v21 = v2;
  v31 = a1;
  v32 = &v21;
  result = sub_10016FF08(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrEJPNS1_11MLIRContextENS_8ArrayRefINS1_10StringAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &v31, Context, v35, v36);
  if (v38 != 1)
  {
    return result;
  }

LABEL_54:
  if (v35 != v37)
  {
    v19 = result;
    free(v35);
    return v19;
  }

  return result;
}

void sub_100170754(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src = v10;
  v9 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v9;
  v4 = 1;
  if (!v9 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v10)
  {
    v7 = v9;
    if (v9 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9, 8), (v7 = v9) != 0))
    {
      memcpy(*a2, __src, 8 * v7);
    }

    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v9);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v10;
    HIDWORD(v9) = 0;
  }

  LODWORD(v9) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v10)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::print(mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v5 = 40;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v8 = *(v6 + 8);
  (*(*a2 + 40))(a2, *v8);
  if (v7 != 1)
  {
    v11 = v8 + 1;
    v12 = 8 * v7 - 8;
    do
    {
      v14 = (*(*a2 + 16))(a2);
      v15 = v14[4];
      if (v14[3] - v15 <= 1uLL)
      {
        llvm::raw_ostream::write(v14, ", ", 2uLL);
      }

      else
      {
        *v15 = 8236;
        v14[4] += 2;
      }

      v13 = *v11++;
      (*(*a2 + 40))(a2, v13);
      v12 -= 8;
    }

    while (v12);
  }

LABEL_6:
  result = (*(*a2 + 16))(a2);
  v10 = result[4];
  if (result[3] == v10)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id;
  v13[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28ODIELocationFrameAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21ODIELocationFrameAttrEJNS1_10StringAttrESF_NSt3__18optionalINS1_9AttributeEEEEEENSG_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v18[1] = v13;
  v15 = a2;
  v16 = a3;
  v17[0] = a4;
  v17[1] = a5;
  memset(v20, 0, sizeof(v20));
  v21 = 0xFF51AFD7ED558CCDLL;
  v19 = ((a2 >> 4) ^ (a2 >> 9));
  v11 = sub_1001EB9A0(&v19, 0, v20, &v20[3] + 8, &v16, v17);
  v14 = &v15;
  v19 = &v15;
  *&v20[0] = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id, v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v19);
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 280))(a1))
  {
    v28 = 257;
    if ((*(*a1 + 400))(a1, "method", 6, v27) & 1) != 0 && ((*(*a1 + 136))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
      *v27 = 0;
      v3 = sub_1001EBC00(a1, v27, 0);
      v4 = *a1;
      if (!v3)
      {
        v16 = (*(v4 + 40))(a1);
        v28 = 259;
        (*(*a1 + 24))(v31, a1, v16, v27);
        if (v31[0])
        {
          mlir::InFlightDiagnostic::report(v31);
        }

        if (v39 == 1)
        {
          if (v38 != &v39)
          {
            free(v38);
          }

          v17 = __p;
          if (__p)
          {
            v18 = v37;
            v19 = __p;
            if (v37 != __p)
            {
              do
              {
                v18 = sub_10005BEF4(v18 - 1);
              }

              while (v18 != v17);
              v19 = __p;
            }

            v37 = v17;
            operator delete(v19);
          }

          v20 = v34;
          if (v34)
          {
            v21 = v35;
            v22 = v34;
            if (v35 != v34)
            {
              do
              {
                v23 = *--v21;
                *v21 = 0;
                if (v23)
                {
                  operator delete[]();
                }
              }

              while (v21 != v20);
              v22 = v34;
            }

            v35 = v20;
            operator delete(v22);
          }

          if (v32 != &v33)
          {
            free(v32);
          }
        }

        return 0;
      }

      v5 = *v27;
      if ((*(v4 + 120))(a1))
      {
        v28 = 257;
        if ((*(*a1 + 400))(a1, "codeSnippet", 11, v27) & 1) != 0 && ((*(*a1 + 136))(a1))
        {
          v6 = sub_100171218(a1);
          v7 = *a1;
          if (v8)
          {
            v9 = v6;
            if (((*(v7 + 120))(a1) & 1) == 0)
            {
              return 0;
            }

            v28 = 257;
            if (((*(*a1 + 400))(a1, "frontendAttribute", 17, v27) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
            {
              return 0;
            }

            *v27 = 0;
            v10 = (*(*a1 + 456))(a1, v27, 0);
            v11 = 0;
            v12 = 0;
            v13 = 0;
            if ((v10 & 0x100) == 0)
            {
              goto LABEL_15;
            }

            if (v10)
            {
              v11 = *v27 & 0xFFFFFFFFFFFFFF00;
              v12 = v27[0];
              v13 = 1;
LABEL_15:
              if ((*(*a1 + 296))(a1))
              {
                v14 = mlir::AsmParser::getContext(a1);
                return mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(v14, v5, v9, v12 | v11, v13);
              }

              return 0;
            }

            v26 = (*(*a1 + 40))(a1);
            v28 = 259;
            (*(*a1 + 24))(v29, a1, v26, v27);
            v25 = v29;
          }

          else
          {
            v24 = (*(v7 + 40))(a1);
            v28 = 259;
            (*(*a1 + 24))(v30, a1, v24, v27);
            v25 = v30;
          }

          sub_10006296C(v25);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100171218(mlir::AsmParser *a1)
{
  Context = mlir::AsmParser::getContext(a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
  v6 = 0;
  v3 = sub_1001EBC00(a1, &v6, 0);
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void *mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::print(mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 5)
  {
    *(v7 + 4) = 25711;
    *v7 = 1752458605;
    v6[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "method", 6uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if ((v18[3] - v19) > 0xA)
  {
    *(v19 + 7) = 1952804976;
    *v19 = *"codeSnippet";
    v18[4] += 11;
  }

  else
  {
    llvm::raw_ostream::write(v18, "codeSnippet", 0xBuLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "=", 1uLL);
  }

  else
  {
    *v23 = 61;
    ++v22[4];
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++v26[4];
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if ((v30[3] - v31) > 0x10)
  {
    *(v31 + 16) = 101;
    *v31 = *"frontendAttribute";
    v30[4] += 17;
  }

  else
  {
    llvm::raw_ostream::write(v30, "frontendAttribute", 0x11uLL);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, "=", 1uLL);
    if (!*(*this + 32))
    {
      goto LABEL_56;
    }
  }

  else
  {
    *v35 = 61;
    ++v34[4];
    if (!*(*this + 32))
    {
      goto LABEL_56;
    }
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this;
  v39 = *(*this + 24);
  v40 = *(v38 + 32);
  v41 = (*(*a2 + 16))(a2);
  if (v40)
  {
    v44 = v39;
    mlir::Attribute::print(&v44, v41);
  }

  else
  {
    llvm::operator<<(v41);
  }

LABEL_56:
  result = (*(*a2 + 16))(a2);
  v43 = result[4];
  if (result[3] == v43)
  {
    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  *v43 = 41;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ExternAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v23) = 0;
  v26 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  __p = 0;
  v21 = 0uLL;
  if ((sub_10017F4BC(a1, &__p) & 1) == 0)
  {
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    v11 = (*(*a1 + 40))(a1);
    v22 = 259;
    (*(*a1 + 24))(v30, a1, v11, &__p);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v12 = v35;
      if (v35)
      {
        v13 = v36;
        v14 = v35;
        if (v36 != v35)
        {
          do
          {
            v13 = sub_10005BEF4(v13 - 1);
          }

          while (v13 != v12);
          v14 = v35;
        }

        v36 = v12;
        operator delete(v14);
      }

      v15 = v33;
      if (v33)
      {
        v16 = v34;
        v17 = v33;
        if (v34 != v33)
        {
          do
          {
            v18 = *--v16;
            *v16 = 0;
            if (v18)
            {
              operator delete[]();
            }
          }

          while (v16 != v15);
          v17 = v33;
        }

        v34 = v15;
        operator delete(v17);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

LABEL_34:
    ParametricStorageTypeImpl = 0;
    if (v26 != 1)
    {
      return ParametricStorageTypeImpl;
    }

    goto LABEL_35;
  }

  *(&v39 + 7) = *(&v21 + 7);
  *&v39 = v21;
  v23 = __p;
  *v24 = v21;
  *&v24[7] = *(&v39 + 7);
  v25 = HIBYTE(v21);
  v26 = 1;
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  Context = mlir::AsmParser::getContext(a1);
  v3 = Context;
  if (v25 >= 0)
  {
    v4 = &v23;
  }

  else
  {
    v4 = v23;
  }

  if (v25 >= 0)
  {
    v5 = v25;
  }

  else
  {
    v5 = *v24;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v27[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id;
  v27[1] = v3;
  __p = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17ExternAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10ExternAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  *&v21 = v27;
  *&v39 = v4;
  *(&v39 + 1) = v5;
  v7 = llvm::hash_value(v4, v5);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v28[0] = &v39;
  v28[1] = &__p;
  v29 = &v39;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v29, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v28);
  if (v26 == 1)
  {
LABEL_35:
    if (v25 < 0)
    {
      operator delete(v23);
    }
  }

  return ParametricStorageTypeImpl;
}

void *mlir::ODIE::Compiler::CoreML::ExternAttr::print(mlir::ODIE::Compiler::CoreML::ExternAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = sub_10002D970(a2, a2 + 4 * a3);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v43) = 0;
  v46 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_100172588(a1, &v39);
  if (v46 == v42)
  {
    if (v46)
    {
      v2 = v39;
      if (v39 != v41)
      {
        if (v43 != v45)
        {
          free(v43);
          v2 = v39;
        }

        v43 = v2;
        v44 = v40;
        v39 = v41;
        v40 = 0;
        if (v42 != 1)
        {
          goto LABEL_29;
        }

LABEL_27:
        if (v39 != v41)
        {
          free(v39);
        }

        goto LABEL_29;
      }

      v4 = v40;
      v5 = v44;
      if (v44 >= v40)
      {
        if (v40)
        {
          memmove(v43, v39, 4 * v40);
        }

LABEL_64:
        LODWORD(v44) = v4;
        LODWORD(v40) = 0;
        if (v42 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (HIDWORD(v44) >= v40)
      {
        if (v44)
        {
          memmove(v43, v39, 4 * v44);
          goto LABEL_62;
        }
      }

      else
      {
        LODWORD(v44) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v40, 4);
      }

      v5 = 0;
LABEL_62:
      v25 = v40 - v5;
      if (v25)
      {
        memcpy(&v43[4 * v5], &v39[4 * v5], 4 * v25);
      }

      goto LABEL_64;
    }

LABEL_26:
    if (v42 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (!v46)
  {
    v43 = v45;
    v44 = 0xC00000000;
    v3 = v40;
    if (v40)
    {
      if (v39 == v41)
      {
        v6 = v40;
        if (v40 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v40, 4), (v6 = v40) != 0))
        {
          memcpy(v43, v39, 4 * v6);
        }

        LODWORD(v44) = v3;
      }

      else
      {
        v43 = v39;
        v44 = v40;
        v39 = v41;
        HIDWORD(v40) = 0;
      }

      LODWORD(v40) = 0;
    }

    v46 = 1;
    goto LABEL_26;
  }

  if (v43 != v45)
  {
    free(v43);
  }

  v46 = 0;
  if (v42 == 1)
  {
    goto LABEL_27;
  }

LABEL_29:
  v7 = *a1;
  if ((v46 & 1) == 0)
  {
    v16 = (*(v7 + 40))(a1);
    v41[8] = 259;
    (*(*a1 + 24))(v30, a1, v16, &v39);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v36;
        v19 = __p;
        if (v36 != __p)
        {
          do
          {
            v18 = sub_10005BEF4(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v36 = v17;
        operator delete(v19);
      }

      v20 = v33;
      if (v33)
      {
        v21 = v34;
        v22 = v33;
        if (v34 != v33)
        {
          do
          {
            v23 = *--v21;
            *v21 = 0;
            if (v23)
            {
              operator delete[]();
            }
          }

          while (v21 != v20);
          v22 = v33;
        }

        v34 = v20;
        operator delete(v22);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

LABEL_53:
    result = 0;
    if (v46 != 1)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (((*(v7 + 296))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  Context = mlir::AsmParser::getContext(a1);
  v9 = v43;
  v10 = v44;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v26[1] = Context;
  v39 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v40 = v26;
  v29[0] = v9;
  v29[1] = v10;
  v12 = sub_10002D970(v9, &v9[4 * v10]);
  v13 = HIDWORD(v12) ^ 0xFF51AFD7ED558CCDLL;
  v14 = 0x9DDFEA08EB382D69 * ((8 * v12 + 8) ^ v13);
  v27[0] = v29;
  v27[1] = &v39;
  v28 = v29;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  if (v46 != 1)
  {
    return result;
  }

LABEL_54:
  if (v43 != v45)
  {
    v24 = result;
    free(v43);
    return v24;
  }

  return result;
}

void sub_100172588(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src = v10;
  v9 = 0xC00000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  v3 = v9;
  v4 = 1;
  if (!v9 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v10)
  {
    v7 = v9;
    if (v9 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9, 4), (v7 = v9) != 0))
    {
      memcpy(*a2, __src, 4 * v7);
    }

    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v9);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v10;
    HIDWORD(v9) = 0;
  }

  LODWORD(v9) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v10)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(mlir::ODIE::Compiler::CoreML::TensorEncodingAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  sub_100172820(a2, *(*this + 8), *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++result[4];
  }

  return result;
}

llvm::raw_ostream *sub_100172820(llvm::raw_ostream *result, int *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = (*(*result + 16))(result);
    result = llvm::raw_ostream::operator<<(v6, *a2);
    if (a3 != 1)
    {
      v7 = 4 * a3;
      v8 = a2 + 1;
      v9 = v7 - 4;
      do
      {
        v12 = (*(*v5 + 16))(v5);
        v13 = v12[4];
        if (v12[3] - v13 <= 1uLL)
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        else
        {
          *v13 = 8236;
          v12[4] += 2;
        }

        v10 = (*(*v5 + 16))(v5);
        v11 = *v8++;
        result = llvm::raw_ostream::operator<<(v10, v11);
        v9 -= 4;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::getDimsOrdering(mlir::ODIE::Compiler::CoreML::TensorEncodingAttr *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = sub_1000E0184(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v49) = 0;
  v52 = 0;
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_68;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    sub_1001730C4(a1, &v45);
    if (v52 == v48)
    {
      if (v52)
      {
        v6 = v45;
        if (v45 != v47)
        {
          if (v49 != v51)
          {
            free(v49);
            v6 = v45;
          }

          v49 = v6;
          v50 = v46;
          v45 = v47;
          v46 = 0;
          if (v48 != 1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        v14 = v46;
        v15 = v50;
        if (v50 >= v46)
        {
          if (v46)
          {
            memmove(v49, v45, 8 * v46);
          }

LABEL_79:
          LODWORD(v50) = v14;
          LODWORD(v46) = 0;
          if (v48 != 1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        if (HIDWORD(v50) >= v46)
        {
          if (v50)
          {
            memmove(v49, v45, 8 * v50);
            goto LABEL_77;
          }
        }

        else
        {
          LODWORD(v50) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v46, 8);
        }

        v15 = 0;
LABEL_77:
        v27 = v46 - v15;
        if (v27)
        {
          memcpy(&v49[8 * v15], &v45[8 * v15], 8 * v27);
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v52)
      {
        if (v49 != v51)
        {
          free(v49);
        }

        v52 = 0;
        if (v48 != 1)
        {
LABEL_45:
          v17 = *a1;
          if (v52)
          {
            if ((*(v17 + 328))(a1))
            {
              goto LABEL_3;
            }
          }

          else
          {
            v18 = (*(v17 + 40))(a1);
            v47[8] = 259;
            (*(*a1 + 24))(v36, a1, v18, &v45);
            if (v36[0])
            {
              mlir::InFlightDiagnostic::report(v36);
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
                    v20 = sub_10005BEF4(v20 - 1);
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
                    v25 = *--v23;
                    *v23 = 0;
                    if (v25)
                    {
                      operator delete[]();
                    }
                  }

                  while (v23 != v22);
                  v24 = v39;
                }

                v40 = v22;
                operator delete(v24);
              }

              if (v37 != &v38)
              {
                free(v37);
              }
            }
          }

LABEL_68:
          ParametricStorageTypeImpl = 0;
          if (v52 != 1)
          {
            return ParametricStorageTypeImpl;
          }

          goto LABEL_69;
        }

LABEL_43:
        if (v45 != v47)
        {
          free(v45);
        }

        goto LABEL_45;
      }

      v49 = v51;
      v50 = 0x600000000;
      v8 = v46;
      if (v46)
      {
        if (v45 == v47)
        {
          v16 = v46;
          if (v46 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v46, 8), (v16 = v46) != 0))
          {
            memcpy(v49, v45, 8 * v16);
          }

          LODWORD(v50) = v8;
        }

        else
        {
          v49 = v45;
          v50 = v46;
          v45 = v47;
          HIDWORD(v46) = 0;
        }

        LODWORD(v46) = 0;
      }

      v52 = 1;
    }

    if (v48 != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_3:
  Context = mlir::AsmParser::getContext(a1);
  v33 = v35;
  v34 = 0x600000000;
  v45 = v47;
  v46 = 0x600000000;
  if (v52 != 1 || (v3 = v50, !v50))
  {
    v3 = 0;
    v7 = v47;
    goto LABEL_27;
  }

  if (v50 < 7)
  {
    v5 = v47;
    v4 = v50;
    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v50, 8);
  v4 = v50;
  if (v50)
  {
    v5 = v45;
LABEL_25:
    memcpy(v5, v49, 8 * v4);
  }

  LODWORD(v46) = v3;
  v7 = v45;
LABEL_27:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v28[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v28[1] = Context;
  v32[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v32[1] = v28;
  v31[0] = v7;
  v31[1] = v3;
  v10 = sub_1000E0184(v7, &v7[8 * v3]);
  v11 = HIDWORD(v10) ^ 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((8 * v10 + 8) ^ v11);
  v29[0] = v31;
  v29[1] = v32;
  v30 = v31;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
  if (v45 != v47)
  {
    free(v45);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v52 == 1)
  {
LABEL_69:
    if (v49 != v51)
    {
      free(v49);
    }
  }

  return ParametricStorageTypeImpl;
}

void sub_1001730C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src = v10;
  v9 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v9;
  v4 = 1;
  if (!v9 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v10)
  {
    v7 = v9;
    if (v9 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9, 8), (v7 = v9) != 0))
    {
      memcpy(*a2, __src, 8 * v7);
    }

    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v9);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v10;
    HIDWORD(v9) = 0;
  }

  LODWORD(v9) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v10)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::print(mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "[", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (v7)
    {
LABEL_3:
      v8 = *(v6 + 8);
      v9 = (*(*a2 + 16))(a2);
      v12[0] = ", ";
      v12[1] = 2;
      sub_1001ECAD0(v8, (v8 + 8 * v7), a2, v9, v12);
      result = (*(*a2 + 16))(a2);
      v11 = result[4];
      if (result[3] == v11)
      {
        return llvm::raw_ostream::write(result, "]", 1uLL);
      }

      goto LABEL_7;
    }
  }

  else
  {
    *v5 = 91;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  result = (*(*a2 + 16))(a2);
  v11 = result[4];
  if (result[3] != v11)
  {
LABEL_7:
    *v11 = 93;
    ++result[4];
    return result;
  }

  return llvm::raw_ostream::write(result, "]", 1uLL);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IntentAttr::get(mlir::MLIRContext *a1, unint64_t a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v12[1] = v8;
  v11 = a2;
  v5 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::IntentAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v87 = 0;
  v88 = 0;
  if ((sub_10006EC0C(a1, &v87) & 1) == 0)
  {
LABEL_47:
    v67 = (*(*a1 + 40))(a1);
    LOWORD(v104) = 259;
    (*(*a1 + 24))(v93, a1, v67, v102);
    if (v93[0])
    {
      mlir::InFlightDiagnostic::report(v93);
    }

    if (v101 == 1)
    {
      if (v100 != &v101)
      {
        free(v100);
      }

      v68 = v98;
      if (v98)
      {
        v69 = v99;
        v70 = v98;
        if (v99 != v98)
        {
          do
          {
            v69 = sub_10005BEF4(v69 - 1);
          }

          while (v69 != v68);
          v70 = v98;
        }

        v99 = v68;
        operator delete(v70);
      }

      v71 = v96;
      if (v96)
      {
        v72 = v97;
        v73 = v96;
        if (v97 != v96)
        {
          do
          {
            v74 = *--v72;
            *v72 = 0;
            if (v74)
            {
              operator delete[]();
            }
          }

          while (v72 != v71);
          v73 = v96;
        }

        v97 = v71;
        operator delete(v73);
      }

      if (v94 != &v95)
      {
        free(v94);
      }
    }

    return 0;
  }

  v3 = mlir::ODIE::Compiler::CoreML::symbolizeIntent(v87, v88);
  if ((v4 & 1) == 0)
  {
    v86 = 257;
    (*(*a1 + 24))(v102, a1, v2, v85);
    if (v102[0])
    {
      LODWORD(v89) = 3;
      v90 = "expected ";
      v91 = 9;
      v11 = &v89;
      v12 = v103;
      if (v104 >= v105)
      {
        if (v103 <= &v89 && v103 + 24 * v104 > &v89)
        {
          v75 = &v89 - v103;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v104 + 1, 24);
          v12 = v103;
          v11 = (v103 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v104 + 1, 24);
          v11 = &v89;
          v12 = v103;
        }
      }

      v13 = &v12[24 * v104];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      v15 = ++v104;
      if (v102[0])
      {
        LODWORD(v89) = 3;
        v90 = "mlir::ODIE::Compiler::CoreML::Intent";
        v91 = 36;
        v16 = &v89;
        v17 = v103;
        if (v15 >= v105)
        {
          if (v103 <= &v89 && v103 + 24 * v15 > &v89)
          {
            v76 = &v89 - v103;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v15 + 1, 24);
            v17 = v103;
            v16 = (v103 + v76);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v15 + 1, 24);
            v16 = &v89;
            v17 = v103;
          }
        }

        v18 = &v17[24 * v104];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        v20 = ++v104;
        if (v102[0])
        {
          LODWORD(v89) = 3;
          v90 = " to be one of: ";
          v91 = 15;
          v21 = &v89;
          v22 = v103;
          if (v20 >= v105)
          {
            if (v103 <= &v89 && v103 + 24 * v20 > &v89)
            {
              v77 = &v89 - v103;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v20 + 1, 24);
              v22 = v103;
              v21 = (v103 + v77);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v20 + 1, 24);
              v21 = &v89;
              v22 = v103;
            }
          }

          v23 = &v22[24 * v104];
          v24 = *v21;
          *(v23 + 2) = v21[2];
          *v23 = v24;
          v25 = ++v104;
          if (v102[0])
          {
            LODWORD(v89) = 3;
            v90 = "out";
            v91 = 3;
            v26 = &v89;
            v27 = v103;
            if (v25 >= v105)
            {
              if (v103 <= &v89 && v103 + 24 * v25 > &v89)
              {
                v78 = &v89 - v103;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v25 + 1, 24);
                v27 = v103;
                v26 = (v103 + v78);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v25 + 1, 24);
                v26 = &v89;
                v27 = v103;
              }
            }

            v28 = &v27[24 * v104];
            v29 = *v26;
            *(v28 + 2) = v26[2];
            *v28 = v29;
            v30 = ++v104;
            if (v102[0])
            {
              LODWORD(v89) = 3;
              v90 = ", ";
              v91 = 2;
              v31 = &v89;
              v32 = v103;
              if (v30 >= v105)
              {
                if (v103 <= &v89 && v103 + 24 * v30 > &v89)
                {
                  v79 = &v89 - v103;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v30 + 1, 24);
                  v32 = v103;
                  v31 = (v103 + v79);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v30 + 1, 24);
                  v31 = &v89;
                  v32 = v103;
                }
              }

              v33 = &v32[24 * v104];
              v34 = *v31;
              *(v33 + 2) = v31[2];
              *v33 = v34;
              v35 = ++v104;
              if (v102[0])
              {
                LODWORD(v89) = 3;
                v90 = "inout";
                v91 = 5;
                v36 = &v89;
                v37 = v103;
                if (v35 >= v105)
                {
                  if (v103 <= &v89 && v103 + 24 * v35 > &v89)
                  {
                    v80 = &v89 - v103;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v35 + 1, 24);
                    v37 = v103;
                    v36 = (v103 + v80);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v35 + 1, 24);
                    v36 = &v89;
                    v37 = v103;
                  }
                }

                v38 = &v37[24 * v104];
                v39 = *v36;
                *(v38 + 2) = v36[2];
                *v38 = v39;
                v40 = ++v104;
                if (v102[0])
                {
                  LODWORD(v89) = 3;
                  v90 = ", ";
                  v91 = 2;
                  v41 = &v89;
                  v42 = v103;
                  if (v40 >= v105)
                  {
                    if (v103 <= &v89 && v103 + 24 * v40 > &v89)
                    {
                      v81 = &v89 - v103;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v40 + 1, 24);
                      v42 = v103;
                      v41 = (v103 + v81);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v40 + 1, 24);
                      v41 = &v89;
                      v42 = v103;
                    }
                  }

                  v43 = &v42[24 * v104];
                  v44 = *v41;
                  *(v43 + 2) = v41[2];
                  *v43 = v44;
                  v45 = ++v104;
                  if (v102[0])
                  {
                    LODWORD(v89) = 3;
                    v90 = "return";
                    v91 = 6;
                    v46 = &v89;
                    v47 = v103;
                    if (v45 >= v105)
                    {
                      if (v103 <= &v89 && v103 + 24 * v45 > &v89)
                      {
                        v82 = &v89 - v103;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v45 + 1, 24);
                        v47 = v103;
                        v46 = (v103 + v82);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v45 + 1, 24);
                        v46 = &v89;
                        v47 = v103;
                      }
                    }

                    v48 = &v47[24 * v104];
                    v49 = *v46;
                    *(v48 + 2) = v46[2];
                    *v48 = v49;
                    v50 = ++v104;
                    if (v102[0])
                    {
                      LODWORD(v89) = 3;
                      v90 = ", ";
                      v91 = 2;
                      v51 = &v89;
                      v52 = v103;
                      if (v50 >= v105)
                      {
                        if (v103 <= &v89 && v103 + 24 * v50 > &v89)
                        {
                          v83 = &v89 - v103;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v50 + 1, 24);
                          v52 = v103;
                          v51 = (v103 + v83);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v50 + 1, 24);
                          v51 = &v89;
                          v52 = v103;
                        }
                      }

                      v53 = &v52[24 * v104];
                      v54 = *v51;
                      *(v53 + 2) = v51[2];
                      *v53 = v54;
                      v55 = ++v104;
                      if (v102[0])
                      {
                        LODWORD(v89) = 3;
                        v90 = "in";
                        v91 = 2;
                        v56 = &v89;
                        v57 = v103;
                        if (v55 >= v105)
                        {
                          if (v103 <= &v89 && v103 + 24 * v55 > &v89)
                          {
                            v84 = &v89 - v103;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v55 + 1, 24);
                            v57 = v103;
                            v56 = (v103 + v84);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v55 + 1, 24);
                            v56 = &v89;
                            v57 = v103;
                          }
                        }

                        v58 = &v57[24 * v104];
                        v59 = *v56;
                        *(v58 + 2) = v56[2];
                        *v58 = v59;
                        ++v104;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
    if (v102[0])
    {
      mlir::InFlightDiagnostic::report(v102);
    }

    if (v112 == 1)
    {
      if (v111 != &v112)
      {
        free(v111);
      }

      v60 = __p;
      if (__p)
      {
        v61 = v110;
        v62 = __p;
        if (v110 != __p)
        {
          do
          {
            v61 = sub_10005BEF4(v61 - 1);
          }

          while (v61 != v60);
          v62 = __p;
        }

        v110 = v60;
        operator delete(v62);
      }

      v63 = v107;
      if (v107)
      {
        v64 = v108;
        v65 = v107;
        if (v108 != v107)
        {
          do
          {
            v66 = *--v64;
            *v64 = 0;
            if (v66)
            {
              operator delete[]();
            }
          }

          while (v64 != v63);
          v65 = v107;
        }

        v108 = v63;
        operator delete(v65);
      }

      if (v103 != v106)
      {
        free(v103);
      }
    }

    goto LABEL_47;
  }

  v5 = v3;
  if ((*(*a1 + 168))(a1))
  {
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v89 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
    v90 = Context;
    v102[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
    v102[1] = &v89;
    v87 = v5;
    v8 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
    v9 = 0x9DDFEA08EB382D69 * ((8 * v5 + 8) ^ v8);
    v92 = &v87;
    v85[0] = &v87;
    v85[1] = v102;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v92, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v85);
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::IntentAttr::print(mlir::ODIE::Compiler::CoreML::IntentAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
LABEL_3:
      if (v6)
      {
        if (v6 == 1)
        {
          v7 = 0;
          v8 = "inout";
          v9 = 5;
          goto LABEL_13;
        }

LABEL_10:
        v9 = 0;
        v8 = "";
        v7 = 1;
        goto LABEL_13;
      }

      v7 = 0;
      v8 = "out";
      v9 = 3;
      goto LABEL_13;
    }
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v7 = 0;
      v8 = "in";
      v9 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v7 = 0;
  v8 = "return";
  v9 = 6;
LABEL_13:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

const char *mlir::ODIE::Compiler::CoreML::stringifyIntent(unint64_t a1)
{
  if (a1 > 3)
  {
    return "";
  }

  v1 = qword_1002B0EF0[a1];
  return (&off_1002DE590)[a1];
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v98) = 0;
  v101 = 0;
  LOBYTE(v94) = 0;
  v97 = 0;
  LOBYTE(__p) = 0;
  v93 = 0;
  if ((*(*a1 + 152))(a1))
  {
    v88 = 0;
    v89 = 0;
    if ((sub_10006EC0C(a1, &v88) & 1) == 0)
    {
LABEL_109:
      v26 = (*(*a1 + 40))(a1);
      v144 = "expected a parameter name in struct";
      WORD4(v146) = 259;
      (*(*a1 + 24))(v104, a1, v26, &v144);
      if (v104[0])
      {
        mlir::InFlightDiagnostic::report(v104);
      }

      if (v110 == 1)
      {
        if (v109 != &v110)
        {
          free(v109);
        }

        v27 = v107;
        if (v107)
        {
          v28 = v108;
          v29 = v107;
          if (v108 != v107)
          {
            do
            {
              v28 = sub_10005BEF4(v28 - 1);
            }

            while (v28 != v27);
            v29 = v107;
          }

          v108 = v27;
          operator delete(v29);
        }

        v30 = v105;
        if (v105)
        {
          v31 = v106;
          v32 = v105;
          if (v106 != v105)
          {
            do
            {
              v33 = *--v31;
              *v31 = 0;
              if (v33)
              {
                operator delete[]();
              }
            }

            while (v31 != v30);
            v32 = v105;
          }

          v106 = v30;
          operator delete(v32);
        }

        v34 = v104[3];
        v35 = v104;
LABEL_128:
        if (v34 != v35 + 5)
        {
          free(v34);
        }
      }

      goto LABEL_130;
    }

    v84 = 0;
    v85 = 0;
    v4 = 0;
    v5 = 0;
    v81 = 0;
    v82 = 0;
    v6 = 0;
    v87 = 0;
    v7 = 0;
    v8 = 5;
    v86 = v3;
    v83 = v3;
    while (1)
    {
      v9 = v88;
      v10 = v89;
      if (((*(*a1 + 136))(a1) & 1) == 0)
      {
        break;
      }

      if (!(v5 & 1 | (v10 != 6)))
      {
        if (*v9 != 1885958772 || *(v9 + 4) != 25964)
        {
          v10 = 6;
          goto LABEL_212;
        }

        v111 = 0;
        v112 = 0uLL;
        if (sub_10017F4BC(a1, &v111))
        {
          v16 = v111;
          *&v156 = v112;
          *(&v156 + 7) = *(&v112 + 7);
          v17 = 1;
          v10 = HIBYTE(v112);
          if (v6 != 1)
          {
            goto LABEL_28;
          }

LABEL_45:
          if (v6)
          {
            if ((v1 & 0x80) != 0)
            {
              operator delete(v98);
            }

            v98 = v16;
            *v99 = v156;
            *&v99[7] = *(&v156 + 7);
            v100 = v10;
            goto LABEL_53;
          }
        }

        else
        {
          if (SHIBYTE(v112) < 0)
          {
            operator delete(v111);
            v17 = 0;
            v16 = 0;
            if (!v6)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v17 = 0;
            v16 = 0;
            if (!v6)
            {
              goto LABEL_45;
            }
          }

LABEL_28:
          if ((v6 & 1) == 0)
          {
            v98 = v16;
            *v99 = v156;
            *&v99[7] = *(&v156 + 7);
            v100 = v10;
            v6 = 1;
            v101 = 1;
            v1 = v10;
            v5 = 1;
            if (!--v8)
            {
              goto LABEL_140;
            }

            goto LABEL_107;
          }

          if ((v1 & 0x80) != 0)
          {
            operator delete(v98);
          }

          v6 = 0;
          v101 = 0;
        }

        if (v17 && (v10 & 0x80) != 0)
        {
          operator delete(v16);
        }

        v10 = v1;
LABEL_53:
        if ((v6 & 1) == 0)
        {
          v47 = (*(*a1 + 40))(a1);
          v114 = 259;
          (*(*a1 + 24))(&v144, a1, v47, &v111);
          if (v144)
          {
            mlir::InFlightDiagnostic::report(&v144);
          }

          if (v155 == 1)
          {
            if (v154 != &v155)
            {
              free(v154);
            }

            v48 = v152;
            if (v152)
            {
              v49 = v153;
              v50 = v152;
              if (v153 != v152)
              {
                do
                {
                  v49 = sub_10005BEF4(v49 - 1);
                }

                while (v49 != v48);
                v50 = v152;
              }

              v153 = v48;
              operator delete(v50);
            }

            v51 = v150;
            if (v150)
            {
              v52 = v151;
              v53 = v150;
              if (v151 != v150)
              {
                do
                {
                  v54 = *--v52;
                  *v52 = 0;
                  if (v54)
                  {
                    operator delete[]();
                  }
                }

                while (v52 != v51);
                v53 = v150;
              }

              v151 = v51;
              operator delete(v53);
            }

            v34 = v146;
            v35 = &v144;
            goto LABEL_128;
          }

          break;
        }

        v5 = 1;
        v1 = v10;
        if (!--v8)
        {
          goto LABEL_140;
        }

        goto LABEL_107;
      }

      if (!(v4 & 1 | (v10 != 3)))
      {
        if (*v9 != 28531 || *(v9 + 2) != 99)
        {
          v10 = 3;
          goto LABEL_212;
        }

        v111 = 0;
        v112 = 0uLL;
        if (sub_10017F4BC(a1, &v111))
        {
          v19 = v111;
          *&v156 = v112;
          *(&v156 + 7) = *(&v112 + 7);
          v20 = 1;
          v10 = HIBYTE(v112);
          v21 = v87;
          if (v87 != 1)
          {
            goto LABEL_39;
          }

LABEL_69:
          if (v21)
          {
            if ((v86 & 0x80) != 0)
            {
              operator delete(v94);
            }

            v94 = v19;
            *v95 = v156;
            *&v95[7] = *(&v156 + 7);
            v96 = v10;
            goto LABEL_77;
          }
        }

        else
        {
          if (SHIBYTE(v112) < 0)
          {
            operator delete(v111);
          }

          v20 = 0;
          v19 = 0;
          v21 = v87;
          if (!v87)
          {
            goto LABEL_69;
          }

LABEL_39:
          if ((v21 & 1) == 0)
          {
            v94 = v19;
            *v95 = v156;
            *&v95[7] = *(&v156 + 7);
            v96 = v10;
            v87 = 1;
            v97 = 1;
            v86 = v10;
            v4 = 1;
            if (!--v8)
            {
              goto LABEL_140;
            }

            goto LABEL_107;
          }

          if ((v86 & 0x80) != 0)
          {
            operator delete(v94);
          }

          v87 = 0;
          v97 = 0;
        }

        if (v20 && (v10 & 0x80) != 0)
        {
          operator delete(v19);
        }

        v10 = v86;
LABEL_77:
        if ((v87 & 1) == 0)
        {
          v55 = (*(*a1 + 40))(a1);
          v114 = 259;
          (*(*a1 + 24))(v132, a1, v55, &v111);
          if (v132[0])
          {
            mlir::InFlightDiagnostic::report(v132);
          }

          if (v143 == 1)
          {
            if (v142 != &v143)
            {
              free(v142);
            }

            v56 = v140;
            if (v140)
            {
              v57 = v141;
              v58 = v140;
              if (v141 != v140)
              {
                do
                {
                  v57 = sub_10005BEF4(v57 - 1);
                }

                while (v57 != v56);
                v58 = v140;
              }

              v141 = v56;
              operator delete(v58);
            }

            v59 = v138;
            if (v138)
            {
              v60 = v139;
              v61 = v138;
              if (v139 != v138)
              {
                do
                {
                  v62 = *--v60;
                  *v60 = 0;
                  if (v62)
                  {
                    operator delete[]();
                  }
                }

                while (v60 != v59);
                v61 = v138;
              }

              v139 = v59;
              operator delete(v61);
            }

            v34 = v134;
            v35 = v132;
            goto LABEL_128;
          }

          break;
        }

        v4 = 1;
        v86 = v10;
        if (!--v8)
        {
          goto LABEL_140;
        }

        goto LABEL_107;
      }

      if (!(BYTE4(v85) & 1 | (v10 != 10)))
      {
        if (*v9 != 0x6F79614C61746164 || *(v9 + 8) != 29813)
        {
          v10 = 10;
          goto LABEL_212;
        }

        Context = mlir::AsmParser::getContext(a1);
        mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
        v111 = 0;
        if (!sub_10017F6C0(a1, &v111, 0))
        {
          v63 = (*(*a1 + 40))(a1);
          v114 = 259;
          (*(*a1 + 24))(v125, a1, v63, &v111);
          if (v125[0])
          {
            mlir::InFlightDiagnostic::report(v125);
          }

          if (v131 == 1)
          {
            if (v130 != &v131)
            {
              free(v130);
            }

            v64 = v128;
            if (v128)
            {
              v65 = v129;
              v66 = v128;
              if (v129 != v128)
              {
                do
                {
                  v65 = sub_10005BEF4(v65 - 1);
                }

                while (v65 != v64);
                v66 = v128;
              }

              v129 = v64;
              operator delete(v66);
            }

            v67 = v126;
            if (v126)
            {
              v68 = v127;
              v69 = v126;
              if (v127 != v126)
              {
                do
                {
                  v70 = *--v68;
                  *v68 = 0;
                  if (v70)
                  {
                    operator delete[]();
                  }
                }

                while (v68 != v67);
                v69 = v126;
              }

              v127 = v67;
              operator delete(v69);
            }

            v34 = v125[3];
            v35 = v125;
            goto LABEL_128;
          }

          break;
        }

        v84 = v111;
        BYTE4(v85) = 1;
        if (!--v8)
        {
          goto LABEL_140;
        }

        goto LABEL_107;
      }

      if (!(v85 & 1 | (v10 != 15)))
      {
        if (*v9 != 0x65746167656C6564 || *(v9 + 7) != 0x736E6F6974704F65)
        {
          v10 = 15;
          goto LABEL_212;
        }

        v25 = mlir::AsmParser::getContext(a1);
        mlir::MLIRContext::getOrLoadDialect(v25, "builtin", 7);
        v111 = 0;
        if (!sub_10017F6C0(a1, &v111, 0))
        {
          v79 = (*(*a1 + 40))(a1);
          v114 = 259;
          (*(*a1 + 24))(&v122, a1, v79, &v111);
          if (v122)
          {
            mlir::InFlightDiagnostic::report(&v122);
          }

          if (v124 != 1)
          {
            break;
          }

          sub_10005BE10(&v123);
          ParametricStorageTypeImpl = 0;
          if (v93 == 1)
          {
            goto LABEL_131;
          }

          goto LABEL_133;
        }

        v81 = v111;
        LOBYTE(v85) = 1;
        if (!--v8)
        {
          goto LABEL_140;
        }

        goto LABEL_107;
      }

      if (v82 & 1 | (v10 != 5))
      {
        goto LABEL_212;
      }

      if (*v9 != 1920235621 || *(v9 + 4) != 97)
      {
        v10 = 5;
LABEL_212:
        v71 = (*(*a1 + 40))(a1);
        v102 = "duplicate or unknown struct parameter name: ";
        v103 = 259;
        (*(*a1 + 24))(&v111, a1, v71, &v102);
        if (v111)
        {
          v157 = 261;
          *&v156 = v9;
          *(&v156 + 1) = v10;
          mlir::Diagnostic::operator<<(&v112, &v156);
          if (v111)
          {
            mlir::InFlightDiagnostic::report(&v111);
          }
        }

        if (v120 == 1)
        {
          if (v119 != &v120)
          {
            free(v119);
          }

          v72 = v117;
          if (v117)
          {
            v73 = v118;
            v74 = v117;
            if (v118 != v117)
            {
              do
              {
                v73 = sub_10005BEF4(v73 - 1);
              }

              while (v73 != v72);
              v74 = v117;
            }

            v118 = v72;
            operator delete(v74);
          }

          v75 = v115;
          if (v115)
          {
            v76 = v116;
            v77 = v115;
            if (v116 != v115)
            {
              do
              {
                v78 = *--v76;
                *v76 = 0;
                if (v78)
                {
                  operator delete[]();
                }
              }

              while (v76 != v75);
              v77 = v115;
            }

            v116 = v75;
            operator delete(v77);
          }

          v34 = v113;
          v35 = &v111;
          goto LABEL_128;
        }

        break;
      }

      v111 = 0;
      v112 = 0uLL;
      if (sub_10017F4BC(a1, &v111))
      {
        v12 = v111;
        *&v156 = v112;
        *(&v156 + 7) = *(&v112 + 7);
        v13 = 1;
        v10 = HIBYTE(v112);
        v14 = v7;
        if (v7 != 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (SHIBYTE(v112) < 0)
        {
          operator delete(v111);
        }

        v12 = 0;
        v13 = 0;
        v14 = v7;
        if (v7)
        {
LABEL_17:
          if ((v14 & 1) == 0)
          {
            __p = v12;
            *v91 = v156;
            *&v91[7] = *(&v156 + 7);
            v92 = v10;
            v7 = 1;
            v93 = 1;
            v83 = v10;
            v82 = 1;
            if (!--v8)
            {
              goto LABEL_140;
            }

            goto LABEL_107;
          }

          if ((v83 & 0x80) != 0)
          {
            operator delete(__p);
          }

          v7 = 0;
          v93 = 0;
LABEL_99:
          if (v13 && (v10 & 0x80) != 0)
          {
            operator delete(v12);
          }

          v10 = v83;
          goto LABEL_103;
        }
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_99;
      }

      if ((v83 & 0x80) != 0)
      {
        operator delete(__p);
      }

      __p = v12;
      *v91 = v156;
      *&v91[7] = *(&v156 + 7);
      v92 = v10;
LABEL_103:
      if ((v7 & 1) == 0)
      {
        v80 = (*(*a1 + 40))(a1);
        v114 = 259;
        (*(*a1 + 24))(v121, a1, v80, &v111);
        sub_10006296C(v121);
        ParametricStorageTypeImpl = 0;
        if (v93 == 1)
        {
          goto LABEL_131;
        }

        goto LABEL_133;
      }

      v82 = 1;
      v83 = v10;
      if (!--v8)
      {
LABEL_140:
        if (((*(*a1 + 168))(a1) & 1) == 0)
        {
          break;
        }

        v38 = mlir::AsmParser::getContext(a1);
        v39 = v38;
        if ((v1 & 0x80u) == 0)
        {
          v40 = &v98;
        }

        else
        {
          v40 = v98;
        }

        if ((v1 & 0x80u) == 0)
        {
          v1 = v1;
        }

        else
        {
          v1 = *v99;
        }

        if ((v86 & 0x80u) == 0)
        {
          v41 = &v94;
        }

        else
        {
          v41 = v94;
        }

        if ((v86 & 0x80u) == 0)
        {
          v42 = v86;
        }

        else
        {
          v42 = *v95;
        }

        if ((v83 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v83 & 0x80u) == 0)
        {
          v44 = v83;
        }

        else
        {
          v44 = *v91;
        }

        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v38);
        v122 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
        v123 = v39;
        v125[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJNS_9StringRefESF_NS1_14DictionaryAttrESG_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
        v125[1] = &v122;
        v132[0] = v40;
        v132[1] = v1;
        v133 = v41;
        v134 = v42;
        v135 = v84;
        v136 = v81;
        v137[0] = p_p;
        v137[1] = v44;
        memset(v148, 0, sizeof(v148));
        v147 = 0u;
        v146 = 0u;
        v145 = 0u;
        v149 = 0xFF51AFD7ED558CCDLL;
        v144 = llvm::hash_value(v40, v1);
        v46 = sub_1001ED344(&v144, 0, &v145, &v148[8], &v133, &v135, &v136, v137);
        v121[0] = v132;
        v144 = v132;
        *&v145 = v125;
        ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v46, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v121, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v144);
        if (v93 == 1)
        {
          goto LABEL_131;
        }

        goto LABEL_133;
      }

LABEL_107:
      if (((*(*a1 + 120))(a1) & 1) == 0)
      {
        break;
      }

      v88 = 0;
      v89 = 0;
      if ((sub_10006EC0C(a1, &v88) & 1) == 0)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_130:
  ParametricStorageTypeImpl = 0;
  if (v93 == 1)
  {
LABEL_131:
    if (v92 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_133:
  if (v97 == 1 && v96 < 0)
  {
    operator delete(v94);
  }

  if (v101 == 1 && v100 < 0)
  {
    operator delete(v98);
  }

  return ParametricStorageTypeImpl;
}

void *mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(mlir::ODIE::Compiler::CoreML::TargetSpecAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 8)
  {
    *(v7 + 8) = 32;
    *v7 = *"triple = ";
    v6[4] += 9;
  }

  else
  {
    llvm::raw_ostream::write(v6, "triple = ", 9uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 8236;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if ((v10[3] - v11) > 5)
  {
    *(v11 + 4) = 8253;
    *v11 = 543387507;
    v10[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v10, "soc = ", 6uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 24), *(*this + 32));
  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] - v13 > 1uLL)
  {
    *v13 = 8236;
    v12[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, ", ", 2uLL);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] - v15 > 0xCuLL)
  {
    qmemcpy(v15, "dataLayout = ", 13);
    v14[4] += 13;
  }

  else
  {
    llvm::raw_ostream::write(v14, "dataLayout = ", 0xDuLL);
  }

  (*(*a2 + 40))(a2, *(*this + 40));
  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 8236;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if ((v18[3] - v19) > 0x11)
  {
    *(v19 + 16) = 8253;
    *v19 = *"delegateOptions = ";
    v18[4] += 18;
  }

  else
  {
    llvm::raw_ostream::write(v18, "delegateOptions = ", 0x12uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 48));
  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] - v21 > 1uLL)
  {
    *v21 = 8236;
    v20[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, ", ", 2uLL);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] - v23 > 7uLL)
  {
    *v23 = 0x203D206172747865;
    v22[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(v22, "extra = ", 8uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 56), *(*this + 64));
  result = (*(*a2 + 16))(a2);
  v25 = result[4];
  if (result[3] == v25)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v25 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::ApproximateAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v74 = 0;
  v75 = 0;
  if ((sub_10006EC0C(a1, &v74) & 1) == 0)
  {
LABEL_50:
    v51 = (*(*a1 + 40))(a1);
    LOWORD(v91) = 259;
    (*(*a1 + 24))(v80, a1, v51, v89);
    if (v80[0])
    {
      mlir::InFlightDiagnostic::report(v80);
    }

    if (v88 == 1)
    {
      if (v87 != &v88)
      {
        free(v87);
      }

      v52 = v85;
      if (v85)
      {
        v53 = v86;
        v54 = v85;
        if (v86 != v85)
        {
          do
          {
            v53 = sub_10005BEF4(v53 - 1);
          }

          while (v53 != v52);
          v54 = v85;
        }

        v86 = v52;
        operator delete(v54);
      }

      v55 = v83;
      if (v83)
      {
        v56 = v84;
        v57 = v83;
        if (v84 != v83)
        {
          do
          {
            v58 = *--v56;
            *v56 = 0;
            if (v58)
            {
              operator delete[]();
            }
          }

          while (v56 != v55);
          v57 = v83;
        }

        v84 = v55;
        operator delete(v57);
      }

      if (v81 != &v82)
      {
        free(v81);
      }
    }

    return 0;
  }

  if (v75 != 7)
  {
    if (v75 == 4)
    {
      if (*v74 == 1701736302)
      {
        v3 = 0;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }

      if (*v74 == 1752064372)
      {
        v3 = 1;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }
    }

    goto LABEL_13;
  }

  if (*v74 != 1835493747 || *(v74 + 3) != 1684631405)
  {
LABEL_13:
    v73 = 257;
    (*(*a1 + 24))(v89, a1, v2, v72);
    if (v89[0])
    {
      LODWORD(v76) = 3;
      v77 = "expected ";
      v78 = 9;
      v5 = &v76;
      v6 = v90;
      if (v91 >= v92)
      {
        if (v90 <= &v76 && v90 + 24 * v91 > &v76)
        {
          v64 = &v76 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v6 = v90;
          v5 = (v90 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v5 = &v76;
          v6 = v90;
        }
      }

      v7 = &v6[24 * v91];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v91;
      if (v89[0])
      {
        LODWORD(v76) = 3;
        v77 = "mlir::ODIE::Compiler::CoreML::Approximate";
        v78 = 41;
        v10 = &v76;
        v11 = v90;
        if (v9 >= v92)
        {
          if (v90 <= &v76 && v90 + 24 * v9 > &v76)
          {
            v65 = &v76 - v90;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v9 + 1, 24);
            v11 = v90;
            v10 = (v90 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v9 + 1, 24);
            v10 = &v76;
            v11 = v90;
          }
        }

        v12 = &v11[24 * v91];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v91;
        if (v89[0])
        {
          LODWORD(v76) = 3;
          v77 = " to be one of: ";
          v78 = 15;
          v15 = &v76;
          v16 = v90;
          if (v14 >= v92)
          {
            if (v90 <= &v76 && v90 + 24 * v14 > &v76)
            {
              v66 = &v76 - v90;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
              v16 = v90;
              v15 = (v90 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
              v15 = &v76;
              v16 = v90;
            }
          }

          v17 = &v16[24 * v91];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          v19 = ++v91;
          if (v89[0])
          {
            LODWORD(v76) = 3;
            v77 = "none";
            v78 = 4;
            v20 = &v76;
            v21 = v90;
            if (v19 >= v92)
            {
              if (v90 <= &v76 && v90 + 24 * v19 > &v76)
              {
                v67 = &v76 - v90;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v19 + 1, 24);
                v21 = v90;
                v20 = (v90 + v67);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v19 + 1, 24);
                v20 = &v76;
                v21 = v90;
              }
            }

            v22 = &v21[24 * v91];
            v23 = *v20;
            *(v22 + 2) = v20[2];
            *v22 = v23;
            v24 = ++v91;
            if (v89[0])
            {
              LODWORD(v76) = 3;
              v77 = ", ";
              v78 = 2;
              v25 = &v76;
              v26 = v90;
              if (v24 >= v92)
              {
                if (v90 <= &v76 && v90 + 24 * v24 > &v76)
                {
                  v68 = &v76 - v90;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v24 + 1, 24);
                  v26 = v90;
                  v25 = (v90 + v68);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v24 + 1, 24);
                  v25 = &v76;
                  v26 = v90;
                }
              }

              v27 = &v26[24 * v91];
              v28 = *v25;
              *(v27 + 2) = v25[2];
              *v27 = v28;
              v29 = ++v91;
              if (v89[0])
              {
                LODWORD(v76) = 3;
                v77 = "tanh";
                v78 = 4;
                v30 = &v76;
                v31 = v90;
                if (v29 >= v92)
                {
                  if (v90 <= &v76 && v90 + 24 * v29 > &v76)
                  {
                    v69 = &v76 - v90;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v29 + 1, 24);
                    v31 = v90;
                    v30 = (v90 + v69);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v29 + 1, 24);
                    v30 = &v76;
                    v31 = v90;
                  }
                }

                v32 = &v31[24 * v91];
                v33 = *v30;
                *(v32 + 2) = v30[2];
                *v32 = v33;
                v34 = ++v91;
                if (v89[0])
                {
                  LODWORD(v76) = 3;
                  v77 = ", ";
                  v78 = 2;
                  v35 = &v76;
                  v36 = v90;
                  if (v34 >= v92)
                  {
                    if (v90 <= &v76 && v90 + 24 * v34 > &v76)
                    {
                      v70 = &v76 - v90;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v34 + 1, 24);
                      v36 = v90;
                      v35 = (v90 + v70);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v34 + 1, 24);
                      v35 = &v76;
                      v36 = v90;
                    }
                  }

                  v37 = &v36[24 * v91];
                  v38 = *v35;
                  *(v37 + 2) = v35[2];
                  *v37 = v38;
                  v39 = ++v91;
                  if (v89[0])
                  {
                    LODWORD(v76) = 3;
                    v77 = "sigmoid";
                    v78 = 7;
                    v40 = &v76;
                    v41 = v90;
                    if (v39 >= v92)
                    {
                      if (v90 <= &v76 && v90 + 24 * v39 > &v76)
                      {
                        v71 = &v76 - v90;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v39 + 1, 24);
                        v41 = v90;
                        v40 = (v90 + v71);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v39 + 1, 24);
                        v40 = &v76;
                        v41 = v90;
                      }
                    }

                    v42 = &v41[24 * v91];
                    v43 = *v40;
                    *(v42 + 2) = v40[2];
                    *v42 = v43;
                    ++v91;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
    if (v89[0])
    {
      mlir::InFlightDiagnostic::report(v89);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v97;
        v46 = __p;
        if (v97 != __p)
        {
          do
          {
            v45 = sub_10005BEF4(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v97 = v44;
        operator delete(v46);
      }

      v47 = v94;
      if (v94)
      {
        v48 = v95;
        v49 = v94;
        if (v95 != v94)
        {
          do
          {
            v50 = *--v48;
            *v48 = 0;
            if (v50)
            {
              operator delete[]();
            }
          }

          while (v48 != v47);
          v49 = v94;
        }

        v95 = v47;
        operator delete(v49);
      }

      if (v90 != v93)
      {
        free(v90);
      }
    }

    goto LABEL_50;
  }

  v3 = 2;
  if ((*(*a1 + 168))(a1))
  {
LABEL_75:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v76 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
    v77 = Context;
    v89[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
    v89[1] = &v76;
    v79 = v3;
    v62 = v3 ^ 0xFF51AFD7ED558CCDLL;
    v63 = 0x9DDFEA08EB382D69 * (((8 * v3) | 4) ^ v62);
    v74 = &v79;
    v72[0] = &v79;
    v72[1] = v89;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 32) >> 15) ^ (-348639895 * (v62 ^ (v63 >> 47) ^ v63))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v74, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v72);
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::ApproximateAttr::print(mlir::ODIE::Compiler::CoreML::ApproximateAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "none";
    v8 = 4;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "sigmoid";
    v8 = 7;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "tanh";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::PaddingModeAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v98 = 0;
    v99 = 0;
    if ((sub_10006EC0C(a1, &v98) & 1) == 0)
    {
LABEL_51:
      v76 = (*(*a1 + 40))(a1);
      LOWORD(v115) = 259;
      (*(*a1 + 24))(v104, a1, v76, v113);
      if (v104[0])
      {
        mlir::InFlightDiagnostic::report(v104);
      }

      if (v112 == 1)
      {
        if (v111 != &v112)
        {
          free(v111);
        }

        v77 = v109;
        if (v109)
        {
          v78 = v110;
          v79 = v109;
          if (v110 != v109)
          {
            do
            {
              v78 = sub_10005BEF4(v78 - 1);
            }

            while (v78 != v77);
            v79 = v109;
          }

          v110 = v77;
          operator delete(v79);
        }

        v80 = v107;
        if (v107)
        {
          v81 = v108;
          v82 = v107;
          if (v108 != v107)
          {
            do
            {
              v83 = *--v81;
              *v81 = 0;
              if (v83)
              {
                operator delete[]();
              }
            }

            while (v81 != v80);
            v82 = v107;
          }

          v108 = v80;
          operator delete(v82);
        }

        if (v105 != &v106)
        {
          free(v105);
        }
      }

      return 0;
    }

    v3 = mlir::ODIE::Compiler::CoreML::symbolizePaddingMode(v98, v99);
    if ((v3 & 0x100000000) == 0)
    {
      v97 = 257;
      (*(*a1 + 24))(v113, a1, v2, v96);
      if (v113[0])
      {
        LODWORD(v100) = 3;
        v101 = "expected ";
        v102 = 9;
        v4 = &v100;
        v5 = v114;
        if (v115 >= v116)
        {
          if (v114 <= &v100 && v114 + 24 * v115 > &v100)
          {
            v84 = &v100 - v114;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            v5 = v114;
            v4 = (v114 + v84);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            v4 = &v100;
            v5 = v114;
          }
        }

        v6 = &v5[24 * v115];
        v7 = *v4;
        *(v6 + 2) = v4[2];
        *v6 = v7;
        v8 = ++v115;
        if (v113[0])
        {
          LODWORD(v100) = 3;
          v101 = "mlir::ODIE::Compiler::CoreML::PaddingMode";
          v102 = 41;
          v9 = &v100;
          v10 = v114;
          if (v8 >= v116)
          {
            if (v114 <= &v100 && v114 + 24 * v8 > &v100)
            {
              v85 = &v100 - v114;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v8 + 1, 24);
              v10 = v114;
              v9 = (v114 + v85);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v8 + 1, 24);
              v9 = &v100;
              v10 = v114;
            }
          }

          v11 = &v10[24 * v115];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          v13 = ++v115;
          if (v113[0])
          {
            LODWORD(v100) = 3;
            v101 = " to be one of: ";
            v102 = 15;
            v14 = &v100;
            v15 = v114;
            if (v13 >= v116)
            {
              if (v114 <= &v100 && v114 + 24 * v13 > &v100)
              {
                v86 = &v100 - v114;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v13 + 1, 24);
                v15 = v114;
                v14 = (v114 + v86);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v13 + 1, 24);
                v14 = &v100;
                v15 = v114;
              }
            }

            v16 = &v15[24 * v115];
            v17 = *v14;
            *(v16 + 2) = v14[2];
            *v16 = v17;
            v18 = ++v115;
            if (v113[0])
            {
              LODWORD(v100) = 3;
              v101 = "circular";
              v102 = 8;
              v19 = &v100;
              v20 = v114;
              if (v18 >= v116)
              {
                if (v114 <= &v100 && v114 + 24 * v18 > &v100)
                {
                  v87 = &v100 - v114;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v18 + 1, 24);
                  v20 = v114;
                  v19 = (v114 + v87);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v18 + 1, 24);
                  v19 = &v100;
                  v20 = v114;
                }
              }

              v21 = &v20[24 * v115];
              v22 = *v19;
              *(v21 + 2) = v19[2];
              *v21 = v22;
              v23 = ++v115;
              if (v113[0])
              {
                LODWORD(v100) = 3;
                v101 = ", ";
                v102 = 2;
                v24 = &v100;
                v25 = v114;
                if (v23 >= v116)
                {
                  if (v114 <= &v100 && v114 + 24 * v23 > &v100)
                  {
                    v88 = &v100 - v114;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v23 + 1, 24);
                    v25 = v114;
                    v24 = (v114 + v88);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v23 + 1, 24);
                    v24 = &v100;
                    v25 = v114;
                  }
                }

                v26 = &v25[24 * v115];
                v27 = *v24;
                *(v26 + 2) = v24[2];
                *v26 = v27;
                v28 = ++v115;
                if (v113[0])
                {
                  LODWORD(v100) = 3;
                  v101 = "constant";
                  v102 = 8;
                  v29 = &v100;
                  v30 = v114;
                  if (v28 >= v116)
                  {
                    if (v114 <= &v100 && v114 + 24 * v28 > &v100)
                    {
                      v89 = &v100 - v114;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v28 + 1, 24);
                      v30 = v114;
                      v29 = (v114 + v89);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v28 + 1, 24);
                      v29 = &v100;
                      v30 = v114;
                    }
                  }

                  v31 = &v30[24 * v115];
                  v32 = *v29;
                  *(v31 + 2) = v29[2];
                  *v31 = v32;
                  v33 = ++v115;
                  if (v113[0])
                  {
                    LODWORD(v100) = 3;
                    v101 = ", ";
                    v102 = 2;
                    v34 = &v100;
                    v35 = v114;
                    if (v33 >= v116)
                    {
                      if (v114 <= &v100 && v114 + 24 * v33 > &v100)
                      {
                        v90 = &v100 - v114;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v33 + 1, 24);
                        v35 = v114;
                        v34 = (v114 + v90);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v33 + 1, 24);
                        v34 = &v100;
                        v35 = v114;
                      }
                    }

                    v36 = &v35[24 * v115];
                    v37 = *v34;
                    *(v36 + 2) = v34[2];
                    *v36 = v37;
                    v38 = ++v115;
                    if (v113[0])
                    {
                      LODWORD(v100) = 3;
                      v101 = "reflect";
                      v102 = 7;
                      v39 = &v100;
                      v40 = v114;
                      if (v38 >= v116)
                      {
                        if (v114 <= &v100 && v114 + 24 * v38 > &v100)
                        {
                          v91 = &v100 - v114;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v38 + 1, 24);
                          v40 = v114;
                          v39 = (v114 + v91);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v38 + 1, 24);
                          v39 = &v100;
                          v40 = v114;
                        }
                      }

                      v41 = &v40[24 * v115];
                      v42 = *v39;
                      *(v41 + 2) = v39[2];
                      *v41 = v42;
                      v43 = ++v115;
                      if (v113[0])
                      {
                        LODWORD(v100) = 3;
                        v101 = ", ";
                        v102 = 2;
                        v44 = &v100;
                        v45 = v114;
                        if (v43 >= v116)
                        {
                          if (v114 <= &v100 && v114 + 24 * v43 > &v100)
                          {
                            v92 = &v100 - v114;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v43 + 1, 24);
                            v45 = v114;
                            v44 = (v114 + v92);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v43 + 1, 24);
                            v44 = &v100;
                            v45 = v114;
                          }
                        }

                        v46 = &v45[24 * v115];
                        v47 = *v44;
                        *(v46 + 2) = v44[2];
                        *v46 = v47;
                        v48 = ++v115;
                        if (v113[0])
                        {
                          LODWORD(v100) = 3;
                          v101 = "replicate";
                          v102 = 9;
                          v49 = &v100;
                          v50 = v114;
                          if (v48 >= v116)
                          {
                            if (v114 <= &v100 && v114 + 24 * v48 > &v100)
                            {
                              v93 = &v100 - v114;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v48 + 1, 24);
                              v50 = v114;
                              v49 = (v114 + v93);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v48 + 1, 24);
                              v49 = &v100;
                              v50 = v114;
                            }
                          }

                          v51 = &v50[24 * v115];
                          v52 = *v49;
                          *(v51 + 2) = v49[2];
                          *v51 = v52;
                          v53 = ++v115;
                          if (v113[0])
                          {
                            LODWORD(v100) = 3;
                            v101 = ", ";
                            v102 = 2;
                            v54 = &v100;
                            v55 = v114;
                            if (v53 >= v116)
                            {
                              if (v114 <= &v100 && v114 + 24 * v53 > &v100)
                              {
                                v94 = &v100 - v114;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v53 + 1, 24);
                                v55 = v114;
                                v54 = (v114 + v94);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v53 + 1, 24);
                                v54 = &v100;
                                v55 = v114;
                              }
                            }

                            v56 = &v55[24 * v115];
                            v57 = *v54;
                            *(v56 + 2) = v54[2];
                            *v56 = v57;
                            v58 = ++v115;
                            if (v113[0])
                            {
                              LODWORD(v100) = 3;
                              v101 = "symmetric";
                              v102 = 9;
                              v59 = &v100;
                              v60 = v114;
                              if (v58 >= v116)
                              {
                                if (v114 <= &v100 && v114 + 24 * v58 > &v100)
                                {
                                  v95 = &v100 - v114;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v58 + 1, 24);
                                  v60 = v114;
                                  v59 = (v114 + v95);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v58 + 1, 24);
                                  v59 = &v100;
                                  v60 = v114;
                                }
                              }

                              v61 = &v60[24 * v115];
                              v62 = *v59;
                              *(v61 + 2) = v59[2];
                              *v61 = v62;
                              ++v115;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v113);
      if (v113[0])
      {
        mlir::InFlightDiagnostic::report(v113);
      }

      if (v123 == 1)
      {
        if (v122 != &v123)
        {
          free(v122);
        }

        v63 = __p;
        if (__p)
        {
          v64 = v121;
          v65 = __p;
          if (v121 != __p)
          {
            do
            {
              v64 = sub_10005BEF4(v64 - 1);
            }

            while (v64 != v63);
            v65 = __p;
          }

          v121 = v63;
          operator delete(v65);
        }

        v66 = v118;
        if (v118)
        {
          v67 = v119;
          v68 = v118;
          if (v119 != v118)
          {
            do
            {
              v69 = *--v67;
              *v67 = 0;
              if (v69)
              {
                operator delete[]();
              }
            }

            while (v67 != v66);
            v68 = v118;
          }

          v119 = v66;
          operator delete(v68);
        }

        if (v114 != v117)
        {
          free(v114);
        }
      }

      goto LABEL_51;
    }

    v70 = v3;
    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v100 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id;
      v101 = Context;
      v113[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15PaddingModeAttrEJNS4_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
      v113[1] = &v100;
      v103 = v70;
      v73 = 0x9DDFEA08EB382D69 * (((8 * v70) | 4) ^ v70 ^ 0xFF51AFD7ED558CCDLL);
      v74 = 0x9DDFEA08EB382D69 * (v70 ^ 0xFF51AFD7ED558CCDLL ^ (v73 >> 47) ^ v73);
      v98 = &v103;
      v96[0] = &v103;
      v96[1] = v113;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id, -348639895 * ((v74 >> 47) ^ v74), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v98, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v96);
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::PaddingModeAttr::print(mlir::ODIE::Compiler::CoreML::PaddingModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 > 1)
    {
LABEL_3:
      switch(v6)
      {
        case 2:
          v7 = 0;
          v8 = "reflect";
          v9 = 7;
          goto LABEL_15;
        case 3:
          v7 = 0;
          v8 = "replicate";
          v9 = 9;
          goto LABEL_15;
        case 4:
          v7 = 0;
          v8 = "symmetric";
          v9 = 9;
          goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (!v6)
  {
    v7 = 0;
    v8 = "circular";
    v9 = 8;
    goto LABEL_15;
  }

  if (v6 == 1)
  {
    v7 = 0;
    v8 = "constant";
    v9 = 8;
    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
  v8 = "";
  v7 = 1;
LABEL_15:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

const char *mlir::ODIE::Compiler::CoreML::stringifyPaddingMode(unsigned int a1)
{
  if (a1 > 4)
  {
    return "";
  }

  v1 = qword_1002B0F10[a1];
  return (&off_1002DE5B0)[a1];
}

uint64_t mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v63 = 0;
    v64 = 0;
    if ((sub_10006EC0C(a1, &v63) & 1) == 0)
    {
LABEL_49:
      v42 = (*(*a1 + 40))(a1);
      LOWORD(v80) = 259;
      (*(*a1 + 24))(v69, a1, v42, v78);
      if (v69[0])
      {
        mlir::InFlightDiagnostic::report(v69);
      }

      if (v77 == 1)
      {
        if (v76 != &v77)
        {
          free(v76);
        }

        v43 = v74;
        if (v74)
        {
          v44 = v75;
          v45 = v74;
          if (v75 != v74)
          {
            do
            {
              v44 = sub_10005BEF4(v44 - 1);
            }

            while (v44 != v43);
            v45 = v74;
          }

          v75 = v43;
          operator delete(v45);
        }

        v46 = v72;
        if (v72)
        {
          v47 = v73;
          v48 = v72;
          if (v73 != v72)
          {
            do
            {
              v49 = *--v47;
              *v47 = 0;
              if (v49)
              {
                operator delete[]();
              }
            }

            while (v47 != v46);
            v48 = v72;
          }

          v73 = v46;
          operator delete(v48);
        }

        if (v70 != &v71)
        {
          free(v70);
        }
      }

      return 0;
    }

    if (v64 == 16)
    {
      if (*v63 != 0x5F7473657261656ELL || *(v63 + 1) != 0x726F62686769656ELL)
      {
        goto LABEL_16;
      }

      v4 = 1;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v64 != 6 || (*v63 == 1701734764 ? (v3 = *(v63 + 2) == 29281) : (v3 = 0), !v3))
      {
LABEL_16:
        v62 = 257;
        (*(*a1 + 24))(v78, a1, v2, v61);
        if (v78[0])
        {
          LODWORD(v65) = 3;
          v66 = "expected ";
          v67 = 9;
          v6 = &v65;
          v7 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v65 && v79 + 24 * v80 > &v65)
            {
              v55 = &v65 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v7 = v79;
              v6 = (v79 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v6 = &v65;
              v7 = v79;
            }
          }

          v8 = &v7[24 * v80];
          v9 = *v6;
          *(v8 + 2) = v6[2];
          *v8 = v9;
          v10 = ++v80;
          if (v78[0])
          {
            LODWORD(v65) = 3;
            v66 = "mlir::ODIE::Compiler::CoreML::InterpolationMode";
            v67 = 47;
            v11 = &v65;
            v12 = v79;
            if (v10 >= v81)
            {
              if (v79 <= &v65 && v79 + 24 * v10 > &v65)
              {
                v56 = &v65 - v79;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v10 + 1, 24);
                v12 = v79;
                v11 = (v79 + v56);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v10 + 1, 24);
                v11 = &v65;
                v12 = v79;
              }
            }

            v13 = &v12[24 * v80];
            v14 = *v11;
            *(v13 + 2) = v11[2];
            *v13 = v14;
            v15 = ++v80;
            if (v78[0])
            {
              LODWORD(v65) = 3;
              v66 = " to be one of: ";
              v67 = 15;
              v16 = &v65;
              v17 = v79;
              if (v15 >= v81)
              {
                if (v79 <= &v65 && v79 + 24 * v15 > &v65)
                {
                  v57 = &v65 - v79;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v15 + 1, 24);
                  v17 = v79;
                  v16 = (v79 + v57);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v15 + 1, 24);
                  v16 = &v65;
                  v17 = v79;
                }
              }

              v18 = &v17[24 * v80];
              v19 = *v16;
              *(v18 + 2) = v16[2];
              *v18 = v19;
              v20 = ++v80;
              if (v78[0])
              {
                LODWORD(v65) = 3;
                v66 = "linear";
                v67 = 6;
                v21 = &v65;
                v22 = v79;
                if (v20 >= v81)
                {
                  if (v79 <= &v65 && v79 + 24 * v20 > &v65)
                  {
                    v58 = &v65 - v79;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v20 + 1, 24);
                    v22 = v79;
                    v21 = (v79 + v58);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v20 + 1, 24);
                    v21 = &v65;
                    v22 = v79;
                  }
                }

                v23 = &v22[24 * v80];
                v24 = *v21;
                *(v23 + 2) = v21[2];
                *v23 = v24;
                v25 = ++v80;
                if (v78[0])
                {
                  LODWORD(v65) = 3;
                  v66 = ", ";
                  v67 = 2;
                  v26 = &v65;
                  v27 = v79;
                  if (v25 >= v81)
                  {
                    if (v79 <= &v65 && v79 + 24 * v25 > &v65)
                    {
                      v59 = &v65 - v79;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v25 + 1, 24);
                      v27 = v79;
                      v26 = (v79 + v59);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v25 + 1, 24);
                      v26 = &v65;
                      v27 = v79;
                    }
                  }

                  v28 = &v27[24 * v80];
                  v29 = *v26;
                  *(v28 + 2) = v26[2];
                  *v28 = v29;
                  v30 = ++v80;
                  if (v78[0])
                  {
                    LODWORD(v65) = 3;
                    v66 = "nearest_neighbor";
                    v67 = 16;
                    v31 = &v65;
                    v32 = v79;
                    if (v30 >= v81)
                    {
                      if (v79 <= &v65 && v79 + 24 * v30 > &v65)
                      {
                        v60 = &v65 - v79;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v30 + 1, 24);
                        v32 = v79;
                        v31 = (v79 + v60);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v30 + 1, 24);
                        v31 = &v65;
                        v32 = v79;
                      }
                    }

                    v33 = &v32[24 * v80];
                    v34 = *v31;
                    *(v33 + 2) = v31[2];
                    *v33 = v34;
                    ++v80;
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
        if (v78[0])
        {
          mlir::InFlightDiagnostic::report(v78);
        }

        if (v88 == 1)
        {
          if (v87 != &v88)
          {
            free(v87);
          }

          v35 = __p;
          if (__p)
          {
            v36 = v86;
            v37 = __p;
            if (v86 != __p)
            {
              do
              {
                v36 = sub_10005BEF4(v36 - 1);
              }

              while (v36 != v35);
              v37 = __p;
            }

            v86 = v35;
            operator delete(v37);
          }

          v38 = v83;
          if (v83)
          {
            v39 = v84;
            v40 = v83;
            if (v84 != v83)
            {
              do
              {
                v41 = *--v39;
                *v39 = 0;
                if (v41)
                {
                  operator delete[]();
                }
              }

              while (v39 != v38);
              v40 = v83;
            }

            v84 = v38;
            operator delete(v40);
          }

          if (v79 != v82)
          {
            free(v79);
          }
        }

        goto LABEL_49;
      }

      v4 = 0;
      if ((*(*a1 + 168))(a1))
      {
LABEL_72:
        Context = mlir::AsmParser::getContext(a1);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v65 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id;
        v66 = Context;
        v78[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28InterpolationModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21InterpolationModeAttrEJNS4_17InterpolationModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
        v78[1] = &v65;
        v68 = v4;
        v53 = v4 ^ 0xFF51AFD7ED558CCDLL;
        v54 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v53);
        v63 = &v68;
        v61[0] = &v68;
        v61[1] = v78;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 32) >> 15) ^ (-348639895 * (v53 ^ (v54 >> 47) ^ v54))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v63, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v61);
      }
    }
  }

  return 0;
}