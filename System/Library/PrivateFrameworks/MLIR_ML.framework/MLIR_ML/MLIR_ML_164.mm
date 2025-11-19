void mlir::presburger::QuasiPolynomial::collectTerms(mlir::presburger::QuasiPolynomial *this@<X0>, uint64_t a2@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  v53 = v55;
  v54 = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(&v53, 0, 0);
  __p = 0;
  v51 = 0;
  v52 = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(&__p, 0, 0, 0);
  v3 = this;
  v48 = -1431655765 * ((*(this + 12) - *(this + 11)) >> 3);
  if (v48)
  {
    v4 = 0;
    while (1)
    {
      v6 = -1431655765 * ((v51 - __p) >> 3);
      if (v6)
      {
        break;
      }

LABEL_42:
      v24 = *(v3 + 5) + 32 * v4;
      if (v54 >= HIDWORD(v54))
      {
        llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::growAndEmplaceBack<mlir::presburger::Fraction>();
      }

      v25 = v53 + 32 * v54;
      *v25 = *v24;
      *(v25 + 2) = 0;
      v26 = *(v24 + 8);
      if (v26)
      {
        *(v25 + 2) = v26;
        if (v26 > 0x40)
        {
          llvm::APInt::initSlowCase(v25, v24);
        }

        *v25 = *v24;
      }

      v28 = *(v24 + 16);
      v27 = (v24 + 16);
      *(v25 + 2) = v28;
      v29 = (v25 + 16);
      *(v25 + 6) = 0;
      v30 = *(v27 + 2);
      if (v30)
      {
        *(v25 + 6) = v30;
        if (v30 > 0x40)
        {
          llvm::APInt::initSlowCase(v29, v27);
        }

        *v29 = *v27;
      }

      LODWORD(v54) = v54 + 1;
      v31 = (*(v3 + 11) + 24 * v4);
      v32 = v51;
      if (v51 >= v52)
      {
        v5 = std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__emplace_back_slow_path<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>&>(&__p, v31);
      }

      else
      {
        *v51 = 0;
        *(v32 + 1) = 0;
        *(v32 + 2) = 0;
        v33 = v31[1];
        if (v33 != *v31)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v33 - *v31) >> 4) < 0x555555555555556)
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v5 = v32 + 24;
      }

      v51 = v5;
LABEL_5:
      if (++v4 == v48)
      {
        goto LABEL_57;
      }
    }

    v7 = 0;
    v8 = 0;
    while (2)
    {
      v49 = v8;
      while (1)
      {
        v9 = (*(v3 + 11) + 24 * v4);
        v10 = (__p + 24 * v7);
        v12 = *v9;
        v11 = v9[1];
        v13 = *v10;
        if (v11 - *v9 == v10[1] - *v10)
        {
          break;
        }

LABEL_9:
        if (++v7 == v6)
        {
          if (v49)
          {
            goto LABEL_5;
          }

          goto LABEL_42;
        }
      }

      while (v12 != v11)
      {
        v14 = *(v12 + 8);
        if (v14 != *(v13 + 8))
        {
          goto LABEL_9;
        }

        if (v14)
        {
          v15 = *v12;
          v16 = *v13;
          v17 = 32 * v14;
          while (!mlir::presburger::compare(v15, v16))
          {
            v15 += 4;
            v16 = (v16 + 32);
            v17 -= 32;
            if (!v17)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_9;
        }

LABEL_12:
        v12 += 48;
        v13 += 48;
      }

      v18 = (v53 + 32 * v7);
      mlir::presburger::operator+(v18, (*(v3 + 5) + 32 * v4), &v56);
      if (v57)
      {
        mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v18, v57, &v56);
        v20 = v59;
        if (v59)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v19 = v56;
        if (*(v18 + 2) > 0x40u && *v18)
        {
          MEMORY[0x259C63150](*v18, 0x1000C8000313F17);
          *v18 = v19;
          *(v18 + 2) = 0;
          v20 = v59;
          if (v59)
          {
LABEL_29:
            mlir::presburger::QuasiPolynomial::collectTerms(v18, v20, &v58, (v18 + 2));
            v22 = v59;
            if (!v59)
            {
              goto LABEL_25;
            }

            goto LABEL_38;
          }
        }

        else
        {
          *v18 = v56;
          *(v18 + 2) = 0;
          v20 = v59;
          if (v59)
          {
            goto LABEL_29;
          }
        }
      }

      v21 = v58;
      if (*(v18 + 6) > 0x40u && (v23 = v18[2]) != 0)
      {
        MEMORY[0x259C63150](v23, 0x1000C8000313F17);
        v18[2] = v21;
        *(v18 + 6) = 0;
        v22 = v59;
        if (!v59)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v18[2] = v58;
        *(v18 + 6) = 0;
        v22 = v59;
        if (!v59)
        {
          goto LABEL_25;
        }
      }

LABEL_38:
      if (v22 >= 0x41 && v58)
      {
        MEMORY[0x259C63150](v58, 0x1000C8000313F17);
      }

LABEL_25:
      if (v57 > 0x40 && v56)
      {
        MEMORY[0x259C63150](v56, 0x1000C8000313F17);
      }

      ++v7;
      v8 = 1;
      if (v7 != v6)
      {
        continue;
      }

      goto LABEL_5;
    }
  }

LABEL_57:
  v34 = *(v3 + 2) + *v3;
  v35 = v53;
  v36 = v54;
  v37 = __p;
  v38 = v51;
  v39 = 0xAAAAAAAAAAAAAAABLL * ((v51 - __p) >> 3);
  *a2 = v34;
  *(a2 + 4) = 1;
  *(a2 + 8) = 0;
  *(a2 + 40) = a2 + 56;
  *(a2 + 16) = 0;
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  *(a2 + 48) = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>((a2 + 40), v35, v35 + 32 * v36);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(a2 + 88, v37, v38, v39);
  v40 = __p;
  if (__p)
  {
    v41 = v51;
    v42 = __p;
    if (v51 != __p)
    {
      do
      {
        v41 -= 3;
        v56 = v41;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v56);
      }

      while (v41 != v40);
      v42 = __p;
    }

    v51 = v40;
    operator delete(v42);
  }

  v43 = v53;
  if (v54)
  {
    v44 = v53 + 32 * v54 - 16;
    v45 = -32 * v54;
    do
    {
      if (*(v44 + 2) > 0x40u && *v44)
      {
        MEMORY[0x259C63150](*v44, 0x1000C8000313F17);
      }

      if (*(v44 - 2) > 0x40u)
      {
        v46 = *(v44 - 2);
        if (v46)
        {
          MEMORY[0x259C63150](v46, 0x1000C8000313F17);
        }
      }

      v44 -= 32;
      v45 += 32;
    }

    while (v45);
    v43 = v53;
  }

  if (v43 != v55)
  {
    free(v43);
  }
}

uint64_t *mlir::presburger::QuasiPolynomial::getConstantTerm@<X0>(mlir::presburger::QuasiPolynomial *this@<X0>, uint64_t *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 1;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  result = mlir::presburger::Fraction::Fraction(a2, &v11, &v9);
  if (v12 > 0x40)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v10 > 0x40)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  v5 = *(this + 12);
  if (v5)
  {
    v6 = 0;
    v7 = 32 * v5;
    v8 = 8;
    do
    {
      if (*(*(this + 11) + v8 - 8) == *(*(this + 11) + v8))
      {
        mlir::presburger::operator+(a2, (*(this + 5) + v6), &v11);
        result = mlir::presburger::Fraction::operator=(a2, &v11);
        if (v14 > 0x40)
        {
          result = v13;
          if (v13)
          {
            result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
          }
        }

        if (v12 > 0x40)
        {
          result = v11;
          if (v11)
          {
            result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
          }
        }
      }

      v8 += 24;
      v6 += 32;
    }

    while (v7 != v6);
  }

  return result;
}

uint64_t std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<llvm::SmallVector<mlir::presburger::Fraction,1u> const*>,std::__wrap_iter<llvm::SmallVector<mlir::presburger::Fraction,1u> const*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v26 = 48 * a5;
        v27 = a2 + 48 * a5;
        v28 = v10 - 48 * a5;
        v29 = a1[1];
        if (v28 < v10)
        {
          v30 = 0;
          do
          {
            v31 = v10 + v30;
            *v31 = v10 + v30 + 16;
            *(v31 + 8) = 0x100000000;
            if (*(v28 + v30 + 8))
            {
              llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v31, v28 + v30);
            }

            v30 += 48;
          }

          while (v28 + v30 < v10);
          v29 = v10 + v30;
        }

        a1[1] = v29;
        if (v10 != v27)
        {
          v43 = (v10 - 48);
          v44 = v5 + v26 - v10;
          v45 = v10 - 48 - v26;
          do
          {
            llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v43, v45);
            v43 -= 6;
            v45 -= 48;
            v44 += 48;
          }

          while (v44);
        }

        v46 = v7 + 48 * a5;
        v47 = v5;
        do
        {
          llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v47, v7);
          v7 += 48;
          v47 += 6;
        }

        while (v7 != v46);
      }

      else
      {
        v17 = v15 + a3;
        if (v15 + a3 == a4)
        {
          v18 = a1[1];
          v19 = v18;
        }

        else
        {
          v18 = a1[1];
          v42 = v15 + a3;
          v19 = v18;
          do
          {
            *v19 = v19 + 16;
            *(v19 + 8) = 0x100000000;
            if (*(v42 + 8))
            {
              llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v19, v42);
            }

            v42 += 48;
            v19 += 48;
            v18 += 48;
          }

          while (v42 != a4);
        }

        a1[1] = v18;
        if ((v10 - v5) >= 1)
        {
          v20 = 48 * a5;
          v21 = v5 + 48 * a5;
          v22 = v18;
          if (v18 - 48 * a5 < v10)
          {
            v53 = v5 + 48 * a5;
            v23 = 0;
            v24 = -48 * a5;
            do
            {
              v25 = v23 + v18;
              *v25 = v23 + v18 + 16;
              *(v25 + 8) = 0x100000000;
              if (*(v24 + v18 + 8))
              {
                llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v25, v24 + v18);
              }

              v24 += 48;
              v23 += 48;
            }

            while (v24 + v18 < v10);
            v22 = v23 + v18;
            v21 = v53;
          }

          a1[1] = v22;
          if (v19 != v21)
          {
            v48 = (v18 - 48);
            v49 = v5 + v20 - v18;
            v50 = v18 - 48 - v20;
            do
            {
              llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v48, v50);
              v48 -= 6;
              v50 -= 48;
              v49 += 48;
            }

            while (v49);
          }

          v51 = v5;
          do
          {
            llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v51, v7);
            v7 += 48;
            v51 += 6;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
      if (v12 > 0x555555555555555)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x2AAAAAAAAAAAAAALL)
      {
        v14 = 0x555555555555555;
      }

      else
      {
        v14 = v12;
      }

      v54[4] = a1;
      if (v14)
      {
        if (v14 <= 0x555555555555555)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v32 = 0;
      v33 = 16 * ((a2 - v11) >> 4);
      v34 = 48 * a5;
      v35 = v33 + 48 * a5;
      do
      {
        v36 = v33 + v32;
        *v36 = v33 + v32 + 16;
        *(v36 + 8) = 0x100000000;
        if (*(v7 + v32 + 8))
        {
          llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v36, v7 + v32);
        }

        v32 += 48;
      }

      while (v34 != v32);
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SmallVector<mlir::presburger::Fraction,1u>>,llvm::SmallVector<mlir::presburger::Fraction,1u>*>(a1, v5, a1[1], v35);
      v37 = *a1;
      v38 = v35 + a1[1] - v5;
      a1[1] = v5;
      v39 = v33 + v37 - v5;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SmallVector<mlir::presburger::Fraction,1u>>,llvm::SmallVector<mlir::presburger::Fraction,1u>*>(a1, v37, v5, v39);
      v40 = *a1;
      *a1 = v39;
      a1[1] = v38;
      v41 = a1[2];
      a1[2] = 0;
      v54[2] = v40;
      v54[3] = v41;
      v54[0] = v40;
      v54[1] = v40;
      std::__split_buffer<llvm::SmallVector<mlir::presburger::Fraction,1u>>::~__split_buffer(v54);
      return v33;
    }
  }

  return v5;
}

void *std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__emplace_back_slow_path<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>&>(uint64_t a1, void *a2)
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
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v6 = a2[1];
  if (v6 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  v9 = v5 - v8;
  memcpy(v5 - v8, *a1, v8);
  *a1 = v9;
  *(a1 + 8) = v5 + 3;
  *(a1 + 16) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v5 + 3;
}

void mlir::presburger::SimplexBase::SimplexBase(mlir::presburger::SimplexBase *this, unsigned int a2, char a3)
{
  *this = &unk_286893250;
  *(this + 8) = a3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

unsigned int *llvm::SmallVectorImpl<int>::insert(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v6 = *a1;
  v7 = a2 - *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = v8 + a3;
  if (*a1 + 4 * v8 == a2)
  {
    if (v10 > v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a3)
    {
      v24 = (v6 + 4 * v8);
      v25 = v24;
      v26 = a3;
      if (a3 < 8)
      {
        goto LABEL_52;
      }

      v25 = v24 + (a3 & 0xFFFFFFFFFFFFFFF8);
      v26 = a3 & 7;
      v27 = vdupq_n_s32(a4);
      v28 = v24 + 1;
      v29 = a3 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v28[-1] = v27;
        *v28 = v27;
        v28 += 2;
        v29 -= 8;
      }

      while (v29);
      if ((a3 & 0xFFFFFFFFFFFFFFF8) != a3)
      {
LABEL_52:
        do
        {
          *v25++ = a4;
          --v26;
        }

        while (v26);
      }

      LODWORD(v8) = *(a1 + 2);
    }

    *(a1 + 2) = v8 + a3;
    return (v6 + v7);
  }

  if (v10 > v9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = (v6 + v7);
  v12 = 4 * v8;
  v13 = (v6 + 4 * v8);
  v14 = 4 * v8 - v7;
  v15 = v14 >> 2;
  if (a3 > v14 >> 2)
  {
    v16 = v8 + a3;
    *(a1 + 2) = v16;
    if (v12 != v7)
    {
      memcpy((v6 + 4 * v16 - 4 * v15), (v6 + v7), v14);
      v17 = (v6 + v7);
      v18 = v14 >> 2;
      if (v15 < 8)
      {
        goto LABEL_53;
      }

      v17 = &v11[v15 & 0xFFFFFFFFFFFFFFF8];
      v18 = (v14 >> 2) & 7;
      v19 = vdupq_n_s32(a4);
      v20 = (v7 + v6 + 16);
      v21 = v15 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v20[-1] = v19;
        *v20 = v19;
        v20 += 2;
        v21 -= 8;
      }

      while (v21);
      if (v15 != (v15 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_53:
        do
        {
          *v17++ = a4;
          --v18;
        }

        while (v18);
      }
    }

    v22 = a3 - v15;
    if (a3 != v15)
    {
      if (v22 < 8)
      {
        v23 = a3 - v15;
        do
        {
LABEL_30:
          *v13++ = a4;
          --v23;
        }

        while (v23);
        return v11;
      }

      v13 += v22 & 0xFFFFFFFFFFFFFFF8;
      v23 = v22 & 7;
      v34 = vdupq_n_s32(a4);
      v35 = (v12 + v6 + 16);
      v36 = v22 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v35[-1] = v34;
        *v35 = v34;
        v35 += 2;
        v36 -= 8;
      }

      while (v36);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_30;
      }
    }

    return v11;
  }

  v30 = 4 * a3;
  if (v8 + ((4 * a3) >> 2) > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v31 = &v13[v30 / 0xFFFFFFFFFFFFFFFCLL];
  if (a3)
  {
    v32 = (*a1 + 4 * v8);
    if (v30 - 4 >= 0x1C)
    {
      v37 = 4 * v8 + *a1;
      v33 = &v13[v30 / 0xFFFFFFFFFFFFFFFCLL];
      if ((v37 - v31) >= 0x20)
      {
        v38 = ((v30 - 4) >> 2) + 1;
        v39 = v38 & 0x7FFFFFFFFFFFFFF8;
        v32 = (v32 + v39 * 4);
        v33 = &v31[v39];
        v40 = (v12 - v30 + v6 + 16);
        v41 = (v37 + 16);
        v42 = v38 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 2;
          v42 -= 8;
        }

        while (v42);
        if (v38 == (v38 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v33 = &v13[v30 / 0xFFFFFFFFFFFFFFFCLL];
    }

    do
    {
      v44 = *v33++;
      *v32++ = v44;
    }

    while (v33 != v13);
LABEL_37:
    LODWORD(v8) = *(a1 + 2);
  }

  *(a1 + 2) = v8 + (v30 >> 2);
  if (v31 != v11)
  {
    memmove(&v11[v30 / 4], (v6 + v7), &v13[v30 / 0xFFFFFFFFFFFFFFFCLL] - v11);
  }

  if (a3)
  {
    if (a3 >= 8)
    {
      v45 = &v11[a3 & 0xFFFFFFFFFFFFFFF8];
      v46 = a3 & 7;
      v47 = vdupq_n_s32(a4);
      v48 = (v7 + v6 + 16);
      v49 = a3 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v48[-1] = v47;
        *v48 = v47;
        v48 += 2;
        v49 -= 8;
      }

      while (v49);
      if ((a3 & 0xFFFFFFFFFFFFFFF8) == a3)
      {
        return v11;
      }
    }

    else
    {
      v45 = (v6 + v7);
      v46 = a3;
    }

    do
    {
      *v45++ = a4;
      --v46;
    }

    while (v46);
  }

  return v11;
}

void mlir::presburger::SimplexBase::swapColumns(mlir::presburger::SimplexBase *this, int a2, int a3)
{
  if (a2 != a3)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::swapColumns();
  }
}

uint64_t mlir::presburger::SimplexBase::unknownFromIndex(mlir::presburger::SimplexBase *this, int a2)
{
  v2 = 976;
  if (a2 < 0)
  {
    v2 = 864;
  }

  return *(this + v2) + 12 * (a2 ^ (a2 >> 31));
}

{
  v2 = 976;
  if (a2 < 0)
  {
    v2 = 864;
  }

  return *(this + v2) + 12 * (a2 ^ (a2 >> 31));
}

uint64_t mlir::presburger::SimplexBase::unknownFromColumn(mlir::presburger::SimplexBase *this, unsigned int a2)
{
  v2 = *(*(this + 102) + 4 * a2);
  v3 = v2 ^ (v2 >> 31);
  v4 = v2 < 0;
  v5 = 976;
  if (v4)
  {
    v5 = 864;
  }

  return *(this + v5) + 12 * v3;
}

{
  v2 = *(*(this + 102) + 4 * a2);
  v3 = v2 ^ (v2 >> 31);
  v4 = v2 < 0;
  v5 = 976;
  if (v4)
  {
    v5 = 864;
  }

  return *(this + v5) + 12 * v3;
}

uint64_t mlir::presburger::SimplexBase::unknownFromRow(mlir::presburger::SimplexBase *this, unsigned int a2)
{
  v2 = *(*(this + 96) + 4 * a2);
  v3 = v2 ^ (v2 >> 31);
  v4 = v2 < 0;
  v5 = 976;
  if (v4)
  {
    v5 = 864;
  }

  return *(this + v5) + 12 * v3;
}

{
  v2 = *(*(this + 96) + 4 * a2);
  v3 = v2 ^ (v2 >> 31);
  v4 = v2 < 0;
  v5 = 976;
  if (v4)
  {
    v5 = 864;
  }

  return *(this + v5) + 12 * v3;
}

double mlir::presburger::LexSimplex::findRationalLexMin@<D0>(mlir::presburger::LexSimplex *this@<X0>, uint64_t a2@<X8>)
{
  if (mlir::presburger::LexSimplex::restoreRationalConsistency(this))
  {

    mlir::presburger::LexSimplex::getRationalSample(this, a2);
  }

  else
  {
    if ((*(this + 312) & 1) == 0)
    {
      v6 = 2;
      v5 = *(this + 82);
      if (v5 >= *(this + 83))
      {
        llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(this + 320, &v6);
      }

      else
      {
        *(*(this + 40) + 4 * v5) = 2;
        *(this + 82) = v5 + 1;
      }

      *(this + 312) = 1;
    }

    *a2 = 0;
    *(a2 + 8) = a2 + 24;
    *&result = 0x800000000;
    *(a2 + 16) = 0x800000000;
  }

  return result;
}

uint64_t mlir::presburger::LexSimplex::restoreRationalConsistency(mlir::presburger::LexSimplex *this)
{
  if (*(this + 312))
  {
    return 0;
  }

  v3 = *(this + 6);
  if (!v3)
  {
    return 1;
  }

  do
  {
    v4 = 0;
    while ((mlir::presburger::LexSimplex::rowIsViolated(this, v4) & 1) == 0)
    {
      if (v3 == ++v4)
      {
        return 1;
      }
    }

    v5 = *(this + 4) + 3;
    v6 = *(this + 7);
    if (v5 >= v6)
    {
      return 0;
    }

    v7 = 0;
    LexMinPivotColumn = 0;
    do
    {
      while (1)
      {
        v9 = *(this + 5) + 16 * (v5 + *(this + 8) * v4);
        if (*(v9 + 8))
        {
          break;
        }

        if (*v9 <= 0)
        {
          v10 = LexMinPivotColumn;
        }

        else
        {
          v10 = v5;
        }

        if (((*v9 > 0) & v7) == 0)
        {
          v7 |= *v9 > 0;
          goto LABEL_17;
        }

LABEL_10:
        LexMinPivotColumn = mlir::presburger::LexSimplexBase::getLexMinPivotColumn(this, v4, LexMinPivotColumn, v5++);
        v7 = 1;
        if (v5 == v6)
        {
          goto LABEL_27;
        }
      }

      v11 = llvm::detail::operator<=(v9, 0);
      if (v11)
      {
        v10 = LexMinPivotColumn;
      }

      else
      {
        v10 = v5;
      }

      if (v11)
      {
        v7 |= !v11;
      }

      else
      {
        v12 = v7 ^ 1;
        v7 |= !v11;
        if ((v12 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

LABEL_17:
      ++v5;
      LexMinPivotColumn = v10;
    }

    while (v5 != v6);
    LODWORD(LexMinPivotColumn) = v10;
    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_27:
    mlir::presburger::SimplexBase::pivot(this, v4, LexMinPivotColumn);
    v3 = *(this + 6);
    result = 1;
  }

  while (v3);
  return result;
}

uint64_t mlir::presburger::SimplexBase::markEmpty(uint64_t this)
{
  if ((*(this + 312) & 1) == 0)
  {
    v3 = 2;
    v1 = *(this + 328);
    if (v1 >= *(this + 332))
    {
      v2 = this;
      llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(this + 320, &v3);
      this = v2;
    }

    else
    {
      *(*(this + 320) + 4 * v1) = 2;
      *(this + 328) = v1 + 1;
    }

    *(this + 312) = 1;
  }

  return this;
}

void mlir::presburger::LexSimplex::getRationalSample(mlir::presburger::LexSimplex *this@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(this + 312) == 1)
  {
    *a2 = 0;
    *(a2 + 8) = a2 + 24;
    *(a2 + 16) = 0x800000000;
    return;
  }

  v26 = v28;
  v27 = 0x800000000;
  v4 = *(this + 246);
  if (v4 >= 9)
  {
    v29 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  if (v4)
  {
    v5 = *(this + 122);
    v6 = 12 * v4;
    while (1)
    {
      if (v5[1] == 1)
      {
        *a2 = 1;
        *(a2 + 8) = a2 + 24;
        *(a2 + 16) = 0x800000000;
        goto LABEL_46;
      }

      v7 = *(this + 8);
      v8 = *(this + 5);
      v9 = (v8 + 16 * (v7 * *v5));
      v24 = *v9;
      v25 = 0;
      v10 = *(v9 + 2);
      if (v10)
      {
        v25 = *(v9 + 2);
        if (v10 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v24, v9);
        }
      }

      if (*(this + 8) == 1)
      {
        break;
      }

LABEL_14:
      v13 = (v8 + 16 * (v7 * *v5 + 1));
      v29 = *v13;
      v30 = 0;
      v14 = *(v13 + 2);
      if (v14)
      {
        v30 = *(v13 + 2);
        if (v14 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v29, v13);
        }
      }

      if (v27 >= HIDWORD(v27))
      {
        llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::growAndEmplaceBack<llvm::DynamicAPInt,llvm::DynamicAPInt&>();
      }

      mlir::presburger::Fraction::Fraction(v26 + 4 * v27, &v29, &v24);
      LODWORD(v27) = v27 + 1;
      if (v30 > 0x40 && v29)
      {
        MEMORY[0x259C63150](v29, 0x1000C8000313F17);
      }

      if (v25 > 0x40 && v24)
      {
        MEMORY[0x259C63150](v24, 0x1000C8000313F17);
      }

      v5 += 3;
      v6 -= 12;
      if (!v6)
      {
        goto LABEL_42;
      }
    }

    v11 = (v8 + 16 * (v7 * *v5 + 2));
    v22 = *v11;
    v23 = 0;
    v12 = *(v11 + 2);
    if (v12)
    {
      v23 = *(v11 + 2);
      if (v12 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v22, v11);
      }
    }

    else if (!v25)
    {
      if (v22 != v24)
      {
        goto LABEL_45;
      }

LABEL_13:
      v7 = *(this + 8);
      v8 = *(this + 5);
      goto LABEL_14;
    }

    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v22, &v29);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v24, &v20);
    v15 = llvm::detail::SlowDynamicAPInt::operator!=(&v29, &v20);
    if (v21 >= 0x41 && v20)
    {
      MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }

    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }

    if (v23 >= 0x41 && v22)
    {
      MEMORY[0x259C63150](v22, 0x1000C8000313F17);
    }

    if (v15)
    {
LABEL_45:
      *a2 = 1;
      *(a2 + 8) = a2 + 24;
      *(a2 + 16) = 0x800000000;
      if (v25 > 0x40 && v24)
      {
        MEMORY[0x259C63150](v24, 0x1000C8000313F17);
      }

LABEL_46:
      v16 = v26;
      if (v27)
      {
        v17 = v26 + 32 * v27 - 16;
        v18 = -32 * v27;
        do
        {
          if (*(v17 + 2) > 0x40u && *v17)
          {
            MEMORY[0x259C63150](*v17, 0x1000C8000313F17);
          }

          if (*(v17 - 2) > 0x40u)
          {
            v19 = *(v17 - 2);
            if (v19)
            {
              MEMORY[0x259C63150](v19, 0x1000C8000313F17);
            }
          }

          v17 -= 32;
          v18 += 32;
        }

        while (v18);
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    goto LABEL_13;
  }

LABEL_42:
  *a2 = 2;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x800000000;
  if (v27)
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((a2 + 8), &v26);
    goto LABEL_46;
  }

LABEL_56:
  v16 = v26;
LABEL_57:
  if (v16 != v28)
  {
    free(v16);
  }
}

void mlir::presburger::LexSimplexBase::addCut(mlir::presburger::LexSimplexBase *this, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5) + 16 * (*(this + 8) * a2);
  v4 = *v2;
  v5 = 0;
  v3 = *(v2 + 8);
  if (v3)
  {
    v5 = *(v2 + 8);
    if (v3 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v4, v2);
    }
  }

  mlir::presburger::SimplexBase::addZeroRow(this, 1);
}

uint64_t mlir::presburger::LexSimplexBase::moveRowUnknownToColumn(mlir::presburger::LexSimplexBase *this, unsigned int a2)
{
  v2 = *(this + 4) + 3;
  v3 = *(this + 7);
  if (v2 >= v3)
  {
    return 0;
  }

  v6 = 0;
  LexMinPivotColumn = 0;
  do
  {
    v8 = LexMinPivotColumn;
    v9 = *(this + 5) + 16 * (v2 + *(this + 8) * a2);
    if (*(v9 + 8))
    {
      v10 = llvm::detail::operator<=(v9, 0);
      if (v10)
      {
        LexMinPivotColumn = v8;
      }

      else
      {
        LexMinPivotColumn = v2;
      }

      if (v10)
      {
        v6 |= !v10;
      }

      else
      {
        v11 = v6 ^ 1;
        v6 |= !v10;
        if ((v11 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      if (*v9 <= 0)
      {
        LexMinPivotColumn = LexMinPivotColumn;
      }

      else
      {
        LexMinPivotColumn = v2;
      }

      if (((*v9 > 0) & v6) != 0)
      {
LABEL_3:
        LexMinPivotColumn = mlir::presburger::LexSimplexBase::getLexMinPivotColumn(this, a2, v8, v2);
        v6 = 1;
        goto LABEL_4;
      }

      v6 |= *v9 > 0;
    }

LABEL_4:
    ++v2;
  }

  while (v3 != v2);
  if (v6)
  {
    mlir::presburger::SimplexBase::pivot(this, a2, LexMinPivotColumn);
    return 1;
  }

  return 0;
}

uint64_t mlir::presburger::LexSimplex::maybeGetNonIntegralVarRow(mlir::presburger::LexSimplex *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(this + 246);
  if (!v1)
  {
LABEL_36:
    v17 = 0;
    v4 = 0;
    return v4 | v17;
  }

  v2 = (*(this + 122) + 4);
  v3 = 12 * v1;
  while (*v2 == 1)
  {
LABEL_3:
    v2 += 3;
    v3 -= 12;
    if (!v3)
    {
      goto LABEL_36;
    }
  }

  v4 = *(v2 - 1);
  v5 = *(this + 8) * v4;
  v6 = *(this + 5);
  v7 = (v6 + 16 * (v5 + 1));
  v26 = *v7;
  v27 = 0;
  v8 = *(v7 + 2);
  if (v8)
  {
    v27 = *(v7 + 2);
    if (v8 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v26, v7);
    }
  }

  v9 = (v6 + 16 * v5);
  v24 = *v9;
  v25 = 0;
  v10 = *(v9 + 2);
  if (v10)
  {
    v25 = *(v9 + 2);
    if (v10 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v24, v9);
    }
  }

  else if (!v27)
  {
    v28 = v26 % v24;
    v29 = 0;
    goto LABEL_9;
  }

  v13 = this;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v26, &v20);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v24, &v18);
  llvm::detail::SlowDynamicAPInt::operator%(&v20, &v18, &v22);
  v29 = v23;
  if (v23 > 0x40)
  {
    llvm::APInt::initSlowCase(&v28, &v22);
  }

  v28 = v22;
  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x259C63150](v18, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x259C63150](v20, 0x1000C8000313F17);
  }

  this = v13;
  if (!v29)
  {
LABEL_9:
    v11 = v28 != 0;
    v12 = v25;
    if (!v25)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

  v11 = llvm::detail::operator!=(&v28, 0);
  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  this = v13;
  v12 = v25;
  if (v25)
  {
LABEL_32:
    if (v12 >= 0x41 && v24)
    {
      v15 = this;
      MEMORY[0x259C63150](v24, 0x1000C8000313F17);
      this = v15;
    }
  }

LABEL_10:
  if (v27 > 0x40 && v26)
  {
    v14 = this;
    MEMORY[0x259C63150](v26, 0x1000C8000313F17);
    this = v14;
  }

  if (!v11)
  {
    goto LABEL_3;
  }

  v17 = 0x100000000;
  return v4 | v17;
}

void mlir::presburger::LexSimplex::findIntegerLexMin(mlir::presburger::LexSimplex *this@<X0>, uint64_t a2@<X8>)
{
  v27[32] = *MEMORY[0x277D85DE8];
  if ((mlir::presburger::LexSimplex::restoreRationalConsistency(this) & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 8) = a2 + 24;
    *(a2 + 16) = 0x800000000;
    return;
  }

  NonIntegralVarRow = mlir::presburger::LexSimplex::maybeGetNonIntegralVarRow(this);
  if ((NonIntegralVarRow & 0x100000000) != 0)
  {
    mlir::presburger::LexSimplexBase::addCut(this, NonIntegralVarRow);
  }

  mlir::presburger::LexSimplex::getRationalSample(this, &v24);
  if (v24 != 1)
  {
    v5 = v25;
    v6 = v26;
    v21 = v23;
    v22 = 0x800000000;
    if (v26 >= 9)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    if (v26)
    {
      v7 = v21;
      v8 = 32 * v26;
      do
      {
        mlir::presburger::Fraction::getAsInteger(v5, v7);
        v5 = (v5 + 32);
        v7 = (v7 + 16);
        v8 -= 32;
      }

      while (v8);
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }

    *a2 = 2;
    *(a2 + 8) = a2 + 24;
    *(a2 + 16) = 0x800000000;
    LODWORD(v22) = v9 + v6;
    if (v9 + v6)
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a2 + 8), &v21);
      v10 = v21;
      if (!v22)
      {
        goto LABEL_24;
      }

      v11 = (v21 + 16 * v22 - 8);
      v12 = -16 * v22;
      v13 = v11;
      do
      {
        v15 = *v13;
        v13 -= 4;
        v14 = v15;
        if (v15)
        {
          if (v14 >= 0x41)
          {
            v16 = *(v11 - 1);
            if (v16)
            {
              MEMORY[0x259C63150](v16, 0x1000C8000313F17);
            }
          }
        }

        v11 = v13;
        v12 += 16;
      }

      while (v12);
    }

    v10 = v21;
LABEL_24:
    if (v10 != v23)
    {
      free(v10);
    }

    goto LABEL_26;
  }

  *a2 = 1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x800000000;
LABEL_26:
  v17 = v25;
  if (v26)
  {
    v18 = v25 + 32 * v26 - 16;
    v19 = -32 * v26;
    do
    {
      if (*(v18 + 2) > 0x40u && *v18)
      {
        MEMORY[0x259C63150](*v18, 0x1000C8000313F17);
      }

      if (*(v18 - 2) > 0x40u)
      {
        v20 = *(v18 - 2);
        if (v20)
        {
          MEMORY[0x259C63150](v20, 0x1000C8000313F17);
        }
      }

      v18 -= 32;
      v19 += 32;
    }

    while (v19);
    v17 = v25;
  }

  if (v17 != v27)
  {
    free(v17);
  }
}

void mlir::presburger::LexSimplex::isRedundantInequality(mlir::presburger::SimplexBase *a1, uint64_t a2, unint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::presburger::getComplementIneq(a2, a3, &v4);
  mlir::presburger::LexSimplex::isSeparateInequality(a1, v4, v5);
}

llvm::APInt *mlir::presburger::SymbolicLexSimplex::getSymbolicSampleNumerator@<X0>(mlir::presburger::SymbolicLexSimplex *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a3 = a3 + 16;
  *(a3 + 8) = 0x800000000;
  v6 = *(this + 4);
  if ((v6 + 1) >= 9)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  if ((v6 - 1) <= 0xFFFFFFFB)
  {
    v7 = 3;
    while (1)
    {
      v8 = (*(this + 5) + 16 * (v7 + *(this + 8) * a2));
      v20 = *v8;
      v21 = 0;
      v9 = *(v8 + 2);
      if (v9)
      {
        v21 = *(v8 + 2);
        if (v9 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v20, v8);
        }
      }

      v10 = *(a3 + 8);
      if (v10 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<llvm::DynamicAPInt>();
      }

      v11 = (*a3 + 16 * v10);
      *v11 = v20;
      *(v11 + 2) = 0;
      v12 = v21;
      if (v21)
      {
        break;
      }

      ++*(a3 + 8);
      v13 = v21;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_9:
      if (++v7 >= (*(this + 4) + 3))
      {
        goto LABEL_21;
      }
    }

    *(v11 + 2) = v21;
    if (v12 > 0x40)
    {
      llvm::APInt::initSlowCase(v11, &v20);
    }

    *v11 = v20;
    ++*(a3 + 8);
    v13 = v21;
    if (!v21)
    {
      goto LABEL_9;
    }

LABEL_18:
    if (v13 >= 0x41 && v20)
    {
      MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }

    goto LABEL_9;
  }

LABEL_21:
  v14 = (*(this + 5) + 16 * (*(this + 8) * a2 + 1));
  v20 = *v14;
  v21 = 0;
  v15 = *(v14 + 2);
  if (v15)
  {
    v21 = *(v14 + 2);
    if (v15 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v20, v14);
    }
  }

  v16 = *(a3 + 8);
  if (v16 >= *(a3 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<llvm::DynamicAPInt>();
  }

  result = (*a3 + 16 * v16);
  *result = v20;
  *(result + 2) = 0;
  v18 = v21;
  if (!v21)
  {
    ++*(a3 + 8);
    v19 = v21;
    if (!v21)
    {
      return result;
    }

    goto LABEL_33;
  }

  *(result + 2) = v21;
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(result, &v20);
  }

  *result = v20;
  ++*(a3 + 8);
  v19 = v21;
  if (v21)
  {
LABEL_33:
    if (v19 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        return MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

uint64_t mlir::presburger::SymbolicLexSimplex::getSymbolicSampleIneq@<X0>(mlir::presburger::SymbolicLexSimplex *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  mlir::presburger::SymbolicLexSimplex::getSymbolicSampleNumerator(this, a2, a3);
  result = mlir::presburger::normalizeRange(*a3, *(a3 + 8), &v5);
  if (v6 > 0x40)
  {
    result = v5;
    if (v5)
    {
      return MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::presburger::LexSimplexBase::appendSymbol(mlir::presburger::LexSimplexBase *this)
{
  result = mlir::presburger::SimplexBase::appendVariable(this, 1u);
  if (*(this + 4) + 3 != *(this + 7) - 1)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::swapColumns();
  }

  v3 = *(this + 122) + 12 * *(this + 246);
  *(v3 - 4) |= 2u;
  ++*(this + 4);
  return result;
}

unsigned int *mlir::presburger::SimplexBase::appendVariable(unsigned int *this, unsigned int a2)
{
  if (a2)
  {
    v3 = this;
    if (this[246] + a2 > this[247])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (this[206] + a2 > this[207])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = 0;
    while (1)
    {
      LODWORD(v11) = 1;
      v13 = 0;
      v5 = v4 + *(v3 + 28);
      v12 = v5;
      v6 = *(v3 + 984);
      if (v6 >= *(v3 + 988))
      {
        llvm::SmallVectorTemplateBase<mlir::presburger::SimplexBase::Unknown,true>::growAndEmplaceBack<mlir::presburger::SimplexBase::Orientation,BOOL,unsigned int>(v3 + 976, &v11, &v13, &v12);
        v8 = *(v3 + 984);
      }

      else
      {
        v7 = *(v3 + 976) + 12 * v6;
        *v7 = v5;
        *(v7 + 4) = 1;
        *(v7 + 8) &= 0xFCu;
        v8 = *(v3 + 984) + 1;
        *(v3 + 984) = v8;
      }

      v9 = v8 - 1;
      v11 = v9;
      v10 = *(v3 + 824);
      if (v10 >= *(v3 + 828))
      {
        llvm::SmallVectorTemplateBase<int,true>::growAndEmplaceBack<unsigned long>(v3 + 816, &v11);
        if (a2 == ++v4)
        {
LABEL_14:
          mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeHorizontally();
        }
      }

      else
      {
        *(*(v3 + 816) + 4 * v10) = v9;
        ++*(v3 + 824);
        if (a2 == ++v4)
        {
          goto LABEL_14;
        }
      }
    }
  }

  return this;
}

uint64_t mlir::presburger::SymbolicLexSimplex::isSymbolicSampleIntegral(mlir::presburger::SymbolicLexSimplex *this, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(this + 8) * a2;
  v3 = *(this + 5);
  v4 = (v3 + 16 * v2);
  v19 = *v4;
  v20 = 0;
  v5 = *(v4 + 2);
  if (v5)
  {
    v20 = *(v4 + 2);
    if (v5 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v19, (v3 + 16 * v2));
    }
  }

  v6 = (v3 + 16 * (v2 + 1));
  v15 = *v6;
  v16 = 0;
  v7 = *(v6 + 2);
  if (v7)
  {
    v16 = *(v6 + 2);
    if (v7 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v15, v6);
    }
  }

  else if (!v20)
  {
    v17 = v15 % v19;
    v18 = 0;
    if (v15 % v19)
    {
LABEL_5:
      result = 0;
      goto LABEL_6;
    }

LABEL_30:
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v15, &v11);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v19, &v9);
  llvm::detail::SlowDynamicAPInt::operator%(&v11, &v9, &v13);
  v18 = v14;
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v17, &v13);
  }

  v17 = v13;
  if (v10 >= 0x41 && v9)
  {
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
  }

  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  if (!v18)
  {
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

  if (llvm::detail::operator==(&v17, 0))
  {
    goto LABEL_30;
  }

  result = 0;
  if (v18)
  {
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }

    result = 0;
  }

LABEL_6:
  if (v16 > 0x40 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    result = 0;
  }

  if (v20 > 0x40)
  {
    if (v19)
    {
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      return 0;
    }
  }

  return result;
}

void mlir::presburger::SimplexBase::addDivisionVariable(unsigned int *a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x277D85DE8];
  mlir::presburger::SimplexBase::appendVariable(a1, 1u);
  v45 = v47;
  v46 = 0x800000000;
  if (((16 * a3) >> 4) >= 9)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  v8 = 0;
  v9 = v47;
  v10 = 16 * a3;
  if (a3)
  {
    v11 = v47;
    v12 = v10;
    do
    {
      *v11 = *a2;
      *(v11 + 2) = 0;
      v13 = *(a2 + 2);
      if (v13)
      {
        *(v11 + 2) = v13;
        if (v13 > 0x40)
        {
          llvm::APInt::initSlowCase(v11, a2);
        }

        *v11 = *a2;
      }

      a2 = (a2 + 16);
      v11 = (v11 + 16);
      v12 -= 16;
    }

    while (v12);
    v8 = v46;
    v9 = v45;
  }

  LODWORD(v46) = v8 + (v10 >> 4);
  v14 = v9 + 16 * v46;
  v16 = *(v14 - 2);
  v15 = (v14 - 16);
  v43 = v16;
  v44 = 0;
  v17 = *(v15 + 2);
  if (v17)
  {
    v44 = *(v15 + 2);
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase(&v43, v15);
    }

    v43 = *v15;
  }

  if (*(a4 + 8) || *a4 == 0x8000000000000000)
  {
    mlir::presburger::LexSimplexBase::addCut(a4);
  }

  else
  {
    v52 = -*a4;
    v53 = 0;
  }

  v18 = v45 + 16 * v46;
  if (v53)
  {
    mlir::presburger::SimplexBase::addDivisionVariable(v18, v53, &v52, (v18 - 16));
    v20 = v53;
    if (!v53)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v19 = v52;
    if (*(v18 - 2) > 0x40u && *(v18 - 2))
    {
      v38 = v45 + 16 * v46;
      MEMORY[0x259C63150](*(v18 - 2), 0x1000C8000313F17);
      *(v38 - 2) = v19;
      *(v38 - 2) = 0;
      v20 = v53;
      if (!v53)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(v18 - 2) = v52;
      *(v18 - 2) = 0;
      v20 = v53;
      if (!v53)
      {
        goto LABEL_18;
      }
    }
  }

  if (v20 >= 0x41 && v52)
  {
    MEMORY[0x259C63150](v52, 0x1000C8000313F17);
  }

LABEL_18:
  if (v46 >= HIDWORD(v46))
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<llvm::DynamicAPInt>();
  }

  v21 = (v45 + 16 * v46);
  *v21 = v43;
  *(v21 + 2) = 0;
  v22 = v44;
  if (v44)
  {
    *(v21 + 2) = v44;
    if (v22 > 0x40)
    {
      llvm::APInt::initSlowCase(v21, &v43);
    }

    *v21 = v43;
  }

  LODWORD(v46) = v46 + 1;
  (*(*a1 + 16))(a1, v45, v46);
  if (v46)
  {
    v23 = v45;
    for (i = 16 * v46; i; i -= 16)
    {
      if (v23[2] || *v23 == 0x8000000000000000)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v23, &v39);
        llvm::detail::SlowDynamicAPInt::operator-(&v39, &v52);
        v51 = v53;
        if (v53 > 0x40)
        {
          llvm::APInt::initSlowCase(&v50, &v52);
        }

        v50 = v52;
        if (v40 >= 0x41 && v39)
        {
          MEMORY[0x259C63150](v39, 0x1000C8000313F17);
        }

        v26 = v51;
        if (v51)
        {
          if (v23[2])
          {
            llvm::detail::SlowDynamicAPInt::operator=(v23, &v50);
          }

          else
          {
            v23[2] = v51;
            if (v26 > 0x40)
            {
              llvm::APInt::initSlowCase(v23, &v50);
            }

            *v23 = v50;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v50 = -*v23;
        v51 = 0;
      }

      v25 = v50;
      if (v23[2] > 0x40 && *v23)
      {
        MEMORY[0x259C63150](*v23, 0x1000C8000313F17);
      }

      *v23 = v25;
      v23[2] = 0;
LABEL_27:
      if (v51 > 0x40 && v50)
      {
        MEMORY[0x259C63150](v50, 0x1000C8000313F17);
      }

      v23 += 4;
    }
  }

  v48 = 1;
  v49 = 0;
  if (*(a4 + 8) || __OFSUB__(*a4, 1))
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a4, &v39);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v48, &v50);
    llvm::detail::SlowDynamicAPInt::operator-(&v39, &v50, &v52);
    v42 = v53;
    if (v53 > 0x40)
    {
      llvm::APInt::initSlowCase(&v41, &v52);
    }

    v41 = v52;
    if (v51 >= 0x41 && v50)
    {
      MEMORY[0x259C63150](v50, 0x1000C8000313F17);
    }

    if (v40 >= 0x41 && v39)
    {
      MEMORY[0x259C63150](v39, 0x1000C8000313F17);
    }
  }

  else
  {
    v41 = *a4 - 1;
    v42 = 0;
  }

  if (v49 > 0x40 && v48)
  {
    MEMORY[0x259C63150](v48, 0x1000C8000313F17);
  }

  v27 = v45 + 16 * v46;
  v28 = v27 - 16;
  if (!(*(v27 - 2) | v42))
  {
    if (!__OFADD__(*v28, v41))
    {
      *v28 += v41;
      goto LABEL_53;
    }

    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v27 - 16), &v50);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v41, &v48);
    llvm::detail::SlowDynamicAPInt::operator+(&v50, &v48, &v39);
    v36 = v40;
    v53 = v40;
    if (v40 > 0x40)
    {
      llvm::APInt::initSlowCase(&v52, &v39);
    }

    v52 = v39;
    if (v40)
    {
      goto LABEL_95;
    }

LABEL_68:
    v37 = v52;
    if (*(v27 - 2) > 0x40u && *v28)
    {
      MEMORY[0x259C63150](*v28, 0x1000C8000313F17);
    }

    *(v27 - 2) = v37;
    *(v27 - 2) = 0;
    goto LABEL_70;
  }

  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v27 - 16), &v50);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v41, &v48);
  llvm::detail::SlowDynamicAPInt::operator+(&v50, &v48, &v39);
  v36 = v40;
  v53 = v40;
  if (v40 > 0x40)
  {
    llvm::APInt::initSlowCase(&v52, &v39);
  }

  v52 = v39;
  if (!v40)
  {
    goto LABEL_68;
  }

LABEL_95:
  if (*(v27 - 2))
  {
    llvm::detail::SlowDynamicAPInt::operator=(v27 - 4, &v52);
  }

  else
  {
    *(v27 - 2) = v36;
    if (v36 > 0x40)
    {
      llvm::APInt::initSlowCase((v27 - 16), &v52);
    }

    *v28 = v52;
  }

LABEL_70:
  if (v53 > 0x40 && v52)
  {
    MEMORY[0x259C63150](v52, 0x1000C8000313F17);
  }

  if (v40 >= 0x41 && v39)
  {
    MEMORY[0x259C63150](v39, 0x1000C8000313F17);
  }

  if (v49 >= 0x41 && v48)
  {
    MEMORY[0x259C63150](v48, 0x1000C8000313F17);
  }

  if (v51 >= 0x41 && v50)
  {
    MEMORY[0x259C63150](v50, 0x1000C8000313F17);
  }

LABEL_53:
  if (v42 > 0x40 && v41)
  {
    MEMORY[0x259C63150](v41, 0x1000C8000313F17);
  }

  (*(*a1 + 16))(a1, v45, v46);
  if (v44 > 0x40 && v43)
  {
    MEMORY[0x259C63150](v43, 0x1000C8000313F17);
  }

  v29 = v45;
  if (v46)
  {
    v30 = (v45 + 16 * v46 - 8);
    v31 = -16 * v46;
    v32 = v30;
    do
    {
      v34 = *v32;
      v32 -= 4;
      v33 = v34;
      if (v34)
      {
        if (v33 >= 0x41)
        {
          v35 = *(v30 - 1);
          if (v35)
          {
            MEMORY[0x259C63150](v35, 0x1000C8000313F17);
          }
        }
      }

      v30 = v32;
      v31 += 16;
    }

    while (v31);
    v29 = v45;
  }

  if (v29 != v47)
  {
    free(v29);
  }
}

uint64_t mlir::presburger::SymbolicLexSimplex::maybeGetAlwaysViolatedRow(mlir::presburger::SymbolicLexSimplex *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(this + 6);
  if (v1)
  {
    for (i = 0; i != v1; ++i)
    {
      v4 = *(this + 5) + 16 * (*(this + 8) * i + 2);
      if (*(v4 + 8))
      {
        if (llvm::detail::operator<(v4, 0))
        {
LABEL_8:
          v5 = i & 0xFFFFFF00;
          v6 = 0x100000000;
          return v6 | v5 | i;
        }
      }

      else if ((*v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }
    }

    v7 = *(this + 6);
    if (v7)
    {
      for (j = 0; j != v7; ++j)
      {
        v9 = *(this + 5) + 16 * (*(this + 8) * j + 2);
        if (*(v9 + 8))
        {
          if (!llvm::detail::operator>(v9, 0))
          {
LABEL_14:
            mlir::presburger::SymbolicLexSimplex::getSymbolicSampleNumerator(this, j, &v11);
            mlir::presburger::normalizeRange(v11, v12, &v13);
            if (v14 > 0x40)
            {
              if (v13)
              {
                MEMORY[0x259C63150](v13, 0x1000C8000313F17);
              }
            }

            mlir::presburger::LexSimplex::isSeparateInequality((this + 1712), v11, v12);
          }
        }

        else if (*v9 <= 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v6 = 0;
  LOBYTE(i) = 0;
  v5 = 0;
  return v6 | v5 | i;
}

uint64_t mlir::presburger::SymbolicLexSimplex::maybeGetNonIntegralVarRow(mlir::presburger::SymbolicLexSimplex *this)
{
  v1 = *(this + 246);
  if (!v1)
  {
    return 0;
  }

  v3 = *(this + 122);
  v4 = 12 * v1;
  do
  {
    if (v3[1] != 1 && !mlir::presburger::SymbolicLexSimplex::isSymbolicSampleIntegral(this, *v3))
    {
      return *v3 | 0x100000000;
    }

    v3 += 3;
    v4 -= 12;
  }

  while (v4);
  return 0;
}

uint64_t mlir::presburger::SymbolicLexSimplex::doNonBranchingPivots(mlir::presburger::SymbolicLexSimplex *this)
{
  AlwaysViolatedRow = mlir::presburger::SymbolicLexSimplex::maybeGetAlwaysViolatedRow(this);
  if ((AlwaysViolatedRow & 0x100000000) == 0)
  {
    return 1;
  }

  v4 = AlwaysViolatedRow;
LABEL_6:
  v7 = *(this + 4) + 3;
  v8 = *(this + 7);
  if (v7 < v8)
  {
    v9 = 0;
    LexMinPivotColumn = 0;
    while (1)
    {
      while (1)
      {
        v10 = *(this + 5) + 16 * (v7 + *(this + 8) * v4);
        if (!*(v10 + 8))
        {
          break;
        }

        v12 = llvm::detail::operator<=(v10, 0);
        if (v12)
        {
          v11 = LexMinPivotColumn;
        }

        else
        {
          v11 = v7;
        }

        if (v12)
        {
          v9 |= !v12;
          goto LABEL_15;
        }

        v13 = v9 ^ 1;
        v9 |= !v12;
        if (v13)
        {
          goto LABEL_15;
        }

LABEL_8:
        LexMinPivotColumn = mlir::presburger::LexSimplexBase::getLexMinPivotColumn(this, v4, LexMinPivotColumn, v7++);
        v9 = 1;
        if (v7 == v8)
        {
          goto LABEL_5;
        }
      }

      if (*v10 <= 0)
      {
        v11 = LexMinPivotColumn;
      }

      else
      {
        v11 = v7;
      }

      if (((*v10 > 0) & v9) != 0)
      {
        goto LABEL_8;
      }

      v9 |= *v10 > 0;
LABEL_15:
      ++v7;
      LexMinPivotColumn = v11;
      if (v7 == v8)
      {
        LODWORD(LexMinPivotColumn) = v11;
        if ((v9 & 1) == 0)
        {
          return 0;
        }

LABEL_5:
        mlir::presburger::SimplexBase::pivot(this, v4, LexMinPivotColumn);
        v6 = mlir::presburger::SymbolicLexSimplex::maybeGetAlwaysViolatedRow(this);
        v4 = v6;
        if ((v6 & 0x100000000) == 0)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }
  }

  return 0;
}

void mlir::presburger::SymbolicLexSimplex::computeSymbolicIntegerLexMin(mlir::presburger::SymbolicLexSimplex *this@<X0>, uint64_t a2@<X8>)
{
  v83[61] = *MEMORY[0x277D85DE8];
  v4 = *(this + 246) - *(this + 4);
  v5 = *(this + 276);
  LODWORD(v75[0]) = *(this + 275) + *(this + 274);
  HIDWORD(v75[0]) = v4;
  v75[1] = v5;
  LOBYTE(v76) = 0;
  v77[0] = &__dst;
  v77[1] = 0;
  *(a2 + 16) = 0;
  *a2 = *v75;
  *(a2 + 40) = a2 + 56;
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  *(a2 + 48) = 0x400000000;
  mlir::presburger::PresburgerSpace::getDomainSpace(v75, &v79);
  mlir::presburger::PresburgerSet::getEmpty(&v79, a2 + 8056);
  if (v82 != v83)
  {
    free(v82);
  }

  if (v77[0] != &__dst)
  {
    free(v77[0]);
  }

  v6 = 0;
  v79 = &v81;
  v80 = 0x800000000;
  v7 = 1;
  v8 = 1;
  do
  {
    if (v7)
    {
      if ((*(this + 312) & 1) == 0)
      {
        mlir::presburger::LexSimplex::findIntegerLexMin((this + 1712), v75);
        v9 = v75[0];
        v10 = v75[1];
        if (v76)
        {
          v11 = (v75[1] + 16 * v76 - 8);
          v12 = -16 * v76;
          v13 = v11;
          do
          {
            v15 = *v13;
            v13 -= 4;
            v14 = v15;
            if (v15)
            {
              if (v14 >= 0x41)
              {
                v16 = *(v11 - 1);
                if (v16)
                {
                  MEMORY[0x259C63150](v16, 0x1000C8000313F17);
                }
              }
            }

            v11 = v13;
            v12 += 16;
          }

          while (v12);
          v10 = v75[1];
        }

        if (v10 != v77)
        {
          free(v10);
        }

        if (v9 && (mlir::presburger::SymbolicLexSimplex::doNonBranchingPivots(this) & 1) != 0)
        {
          v72 = v74;
          *v73 = 0x800000000;
          v44 = *(this + 6);
          if (v44)
          {
            for (i = 0; i != v44; ++i)
            {
              v46 = *(this + 5) + 16 * (*(this + 8) * i + 2);
              if (*(v46 + 8))
              {
                if (!llvm::detail::operator>(v46, 0))
                {
LABEL_65:
                  mlir::presburger::SymbolicLexSimplex::getSymbolicSampleNumerator(this, i, v75);
                  mlir::presburger::normalizeRange(v75[0], LODWORD(v75[1]), &v70);
                  if (v71 > 0x40 && v70)
                  {
                    MEMORY[0x259C63150](v70, 0x1000C8000313F17);
                  }

                  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v72, v75);
                  v47 = v75[0];
                  if (LODWORD(v75[1]))
                  {
                    v48 = (v75[0] + 16 * LODWORD(v75[1]) - 8);
                    v49 = -16 * LODWORD(v75[1]);
                    v50 = v48;
                    do
                    {
                      v52 = *v50;
                      v50 -= 4;
                      v51 = v52;
                      if (v52)
                      {
                        if (v51 >= 0x41)
                        {
                          v53 = *(v48 - 1);
                          if (v53)
                          {
                            MEMORY[0x259C63150](v53, 0x1000C8000313F17);
                          }
                        }
                      }

                      v48 = v50;
                      v49 += 16;
                    }

                    while (v49);
                    v47 = v75[0];
                  }

                  if (v47 != &v76)
                  {
                    free(v47);
                  }

                  mlir::presburger::getComplementIneq(v72, v73[0], v75);
                  mlir::presburger::LexSimplex::isSeparateInequality((this + 1712), v75[0], v75[1]);
                }
              }

              else if (*v46 <= 0)
              {
                goto LABEL_65;
              }
            }

            if (v44 < *(this + 6))
            {
              mlir::presburger::SimplexBase::getSnapshotBasis((this + 1712));
              mlir::presburger::IntegerRelation::getCounts(this + 1088, &v70);
              mlir::presburger::SimplexBase::addRow((this + 1712), v72, v73[0], 1);
            }
          }

          v61 = *(this + 246);
          if (v61)
          {
            v62 = *(this + 122);
            v63 = 12 * v61;
            do
            {
              if (v62[1] != 1 && !mlir::presburger::SymbolicLexSimplex::isSymbolicSampleIntegral(this, *v62))
              {
                mlir::presburger::SymbolicLexSimplex::addSymbolicCut(this, *v62);
              }

              v62 += 3;
              v63 -= 12;
            }

            while (v63);
          }

          mlir::presburger::SymbolicLexSimplex::recordOutput(this, a2);
        }
      }

      --v8;
      goto LABEL_7;
    }

    v17 = (v79 + 64 * v6);
    mlir::presburger::IntegerRelation::truncate(this + 272, v17 - 12);
    v18 = *(v17 - 14);
    for (j = *(this + 510); j > v18; *(this + 510) = j)
    {
      mlir::presburger::SimplexBase::undo((this + 1712), *(*(this + 254) + 4 * j - 4));
      j = *(this + 510) - 1;
    }

    v20 = *(v17 - 15);
    for (k = *(this + 82); k > v20; *(this + 82) = k)
    {
      mlir::presburger::SimplexBase::undo(this, *(*(this + 40) + 4 * k - 4));
      k = *(this + 82) - 1;
    }

    v22 = *(v17 - 16);
    v23 = 976;
    if (v22 < 0)
    {
      v23 = 864;
    }

    v24 = *(this + v23);
    LODWORD(v80) = v80 - 1;
    v25 = v79 + 64 * v80;
    v26 = *(v25 + 5);
    if (v26 != v25 + 56)
    {
      free(v26);
    }

    v27 = (v24 + 12 * (v22 ^ (v22 >> 31)));
    mlir::presburger::SymbolicLexSimplex::getSymbolicSampleNumerator(this, *v27, &v72);
    mlir::presburger::normalizeRange(v72, v73[0], &v70);
    if (v71 > 0x40 && v70)
    {
      MEMORY[0x259C63150](v70, 0x1000C8000313F17);
    }

    mlir::presburger::getComplementIneq(v72, v73[0], v75);
    v28 = v72;
    if (v73[0])
    {
      v29 = (v72 + 16 * v73[0] - 8);
      v30 = -16 * v73[0];
      v31 = v29;
      do
      {
        v33 = *v31;
        v31 -= 4;
        v32 = v33;
        if (v33)
        {
          if (v32 >= 0x41)
          {
            v34 = *(v29 - 1);
            if (v34)
            {
              MEMORY[0x259C63150](v34, 0x1000C8000313F17);
            }
          }
        }

        v29 = v31;
        v30 += 16;
      }

      while (v30);
      v28 = v72;
    }

    if (v28 != v74)
    {
      free(v28);
    }

    mlir::presburger::normalizeRange(v75[0], LODWORD(v75[1]), &v68);
    if (v69 > 0x40 && v68)
    {
      MEMORY[0x259C63150](v68, 0x1000C8000313F17);
    }

    v35 = *(this + 4) + 3;
    v36 = *(this + 7);
    if (v35 >= v36)
    {
      goto LABEL_83;
    }

    v37 = 0;
    LexMinPivotColumn = 0;
    v39 = *v27;
    do
    {
      while (1)
      {
        v40 = *(this + 5) + 16 * (v35 + *(this + 8) * v39);
        if (*(v40 + 8))
        {
          break;
        }

        if (*v40 <= 0)
        {
          v41 = LexMinPivotColumn;
        }

        else
        {
          v41 = v35;
        }

        if (((*v40 > 0) & v37) == 0)
        {
          v37 |= *v40 > 0;
          goto LABEL_47;
        }

LABEL_40:
        LexMinPivotColumn = mlir::presburger::LexSimplexBase::getLexMinPivotColumn(this, v39, LexMinPivotColumn, v35++);
        v37 = 1;
        if (v35 == v36)
        {
          goto LABEL_82;
        }
      }

      v42 = llvm::detail::operator<=(v40, 0);
      if (v42)
      {
        v41 = LexMinPivotColumn;
      }

      else
      {
        v41 = v35;
      }

      if (v42)
      {
        v37 |= !v42;
      }

      else
      {
        v43 = v37 ^ 1;
        v37 |= !v42;
        if ((v43 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_47:
      ++v35;
      LexMinPivotColumn = v41;
    }

    while (v35 != v36);
    LODWORD(LexMinPivotColumn) = v41;
    if (v37)
    {
LABEL_82:
      mlir::presburger::SimplexBase::pivot(this, v39, LexMinPivotColumn);
      mlir::presburger::SimplexBase::addRow((this + 1712), v75[0], v75[1], 1);
    }

LABEL_83:
    --v8;
    v54 = v75[0];
    if (LODWORD(v75[1]))
    {
      v55 = (v75[0] + 16 * LODWORD(v75[1]) - 8);
      v56 = -16 * LODWORD(v75[1]);
      v57 = v55;
      do
      {
        v59 = *v57;
        v57 -= 4;
        v58 = v59;
        if (v59)
        {
          if (v58 >= 0x41)
          {
            v60 = *(v55 - 1);
            if (v60)
            {
              MEMORY[0x259C63150](v60, 0x1000C8000313F17);
            }
          }
        }

        v55 = v57;
        v56 += 16;
      }

      while (v56);
      v54 = v75[0];
    }

    if (v54 != &v76)
    {
      free(v54);
    }

LABEL_7:
    v6 = v80;
    v7 = v80 < v8;
  }

  while (v8);
  v64 = v79;
  if (v80)
  {
    v65 = v79 + 64 * v80 - 8;
    v66 = -64 * v80;
    do
    {
      v67 = *(v65 - 2);
      if (v65 != v67)
      {
        free(v67);
      }

      v65 -= 64;
      v66 += 64;
    }

    while (v66);
    v64 = v79;
  }

  if (v64 != &v81)
  {
    free(v64);
  }
}

void mlir::presburger::SimplexBase::rollback(mlir::presburger::SimplexBase *this, unsigned int a2)
{
  for (i = *(this + 82); i > a2; *(this + 82) = i)
  {
    mlir::presburger::SimplexBase::undo(this, *(*(this + 40) + 4 * i - 4));
    i = *(this + 82) - 1;
  }
}

uint64_t mlir::presburger::LexSimplex::rowIsViolated(mlir::presburger::LexSimplex *this, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = (*(this + 5) + 16 * (*(this + 8) * a2 + 2));
  v3 = *v2;
  v21 = *v2;
  v4 = *(v2 + 2);
  if (!v4)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v9 = a2;
  v10 = this;
  v22 = *(v2 + 2);
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v21, v2);
  }

  v11 = llvm::detail::operator<(&v21, 0);
  if (v22 >= 0x41 && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

  this = v10;
  a2 = v9;
  if (v11)
  {
    return 1;
  }

LABEL_3:
  v5 = (*(this + 5) + 16 * (*(this + 8) * a2 + 2));
  v6 = *v5;
  v21 = *v5;
  v22 = 0;
  v7 = *(v5 + 2);
  if (v7)
  {
    v12 = a2;
    v13 = this;
    v22 = *(v5 + 2);
    if (v7 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v21, v5);
    }

    v14 = llvm::detail::operator==(&v21, 0);
    this = v13;
    a2 = v12;
    if (!v14)
    {
      goto LABEL_5;
    }

LABEL_16:
    v15 = (*(this + 5) + 16 * (*(this + 8) * a2 + 1));
    v16 = *v15;
    v19 = *v15;
    v17 = *(v15 + 2);
    if (v17)
    {
      v20 = *(v15 + 2);
      if (v17 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v19, v15);
      }

      v8 = llvm::detail::operator<(&v19, 0);
      if (v20 >= 0x41 && v19)
      {
        MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }
    }

    else
    {
      v8 = v16 >> 63;
    }

    goto LABEL_18;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_5:
  v8 = 0;
LABEL_18:
  if (v22 > 0x40 && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

  return v8;
}

uint64_t mlir::presburger::LexSimplex::maybeGetViolatedRow(mlir::presburger::LexSimplex *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  while ((mlir::presburger::LexSimplex::rowIsViolated(this, v3) & 1) == 0)
  {
    if (v1 == ++v3)
    {
      return 0;
    }
  }

  return v3 | 0x100000000;
}

uint64_t mlir::presburger::LexSimplexBase::getLexMinPivotColumn(int **this, int a2, uint64_t a3, unsigned int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v14 = this;
  v15 = a2;
  v6 = *(this + 246);
  if (v6)
  {
    v8 = this[122];
    for (i = 12 * v6; i; i -= 12)
    {
      mlir::presburger::LexSimplexBase::getLexMinPivotColumn(unsigned int,unsigned int,unsigned int)const::$_0::operator()(&v20, &v14, a3, v8);
      mlir::presburger::LexSimplexBase::getLexMinPivotColumn(unsigned int,unsigned int,unsigned int)const::$_0::operator()(&v16, &v14, a4, v8);
      if ((mlir::presburger::compare(&v20, &v16) & 0x80000000) != 0)
      {
        v11 = 0;
        v4 = a3;
        v12 = v19;
        if (!v19)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v10 = mlir::presburger::compare(&v20, &v16);
        v11 = v10 < 1;
        if (v10 >= 1)
        {
          v4 = a4;
        }

        else
        {
          v4 = v4;
        }

        v12 = v19;
        if (!v19)
        {
          goto LABEL_10;
        }
      }

      if (v12 >= 0x41 && v18)
      {
        MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      }

LABEL_10:
      if (v17 > 0x40 && v16)
      {
        MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }

      if (v23 > 0x40 && v22)
      {
        MEMORY[0x259C63150](v22, 0x1000C8000313F17);
      }

      if (v21 > 0x40 && v20)
      {
        MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      }

      if (!v11)
      {
        return v4;
      }

      v8 += 3;
    }
  }

  return a3;
}

uint64_t mlir::presburger::SimplexBase::pivot(mlir::presburger::SimplexBase *this, unsigned int a2, unsigned int a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = *(this + 96);
  v7 = *(this + 102);
  v8 = *(v6 + 4 * a2);
  *(v6 + 4 * a2) = *(v7 + 4 * a3);
  *(v7 + 4 * a3) = v8;
  if (v8 >= 0)
  {
    v9 = 976;
  }

  else
  {
    v9 = 864;
  }

  v10 = *(v6 + 4 * a2);
  v11 = (*(this + v9) + 12 * (v8 ^ (v8 >> 31)));
  v12 = v10 ^ (v10 >> 31);
  if (v10 >= 0)
  {
    v13 = 976;
  }

  else
  {
    v13 = 864;
  }

  v14 = (*(this + v13) + 12 * v12);
  v11[1] = 1;
  v14[1] = 0;
  *v11 = a3;
  *v14 = a2;
  std::swap[abi:nn200100]<llvm::DynamicAPInt>((*(this + 5) + 16 * *(this + 8) * a2), *(this + 5) + 16 * (*(this + 8) * a2 + a3));
  v15 = *(this + 8) * a2;
  v16 = *(this + 5);
  v17 = v16 + 16 * v15;
  if (*(v17 + 8))
  {
    if (!llvm::detail::operator<(v17, 0))
    {
LABEL_9:
      v18 = *(this + 7);
      if (v18 >= 2)
      {
        v19 = 1;
        while (a3 == v19)
        {
LABEL_11:
          if (v18 == ++v19)
          {
            goto LABEL_49;
          }
        }

        v20 = *(this + 5) + 16 * (v19 + *(this + 8) * a2);
        if (*(v20 + 8) || *v20 == 0x8000000000000000)
        {
          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v20, &v73);
          llvm::detail::SlowDynamicAPInt::operator-(&v73, &v87);
          v86 = v88;
          if (v88 > 0x40)
          {
            llvm::APInt::initSlowCase(&v85, &v87);
          }

          v85 = v87;
          if (v74 >= 0x41 && v73)
          {
            MEMORY[0x259C63150](v73, 0x1000C8000313F17);
          }

          v23 = v86;
          v21 = (*(this + 5) + 16 * (v19 + *(this + 8) * a2));
          if (v86)
          {
            if (v21[2])
            {
              llvm::detail::SlowDynamicAPInt::operator=(v21, &v85);
            }

            else
            {
              v21[2] = v86;
              if (v23 > 0x40)
              {
                llvm::APInt::initSlowCase(v21, &v85);
              }

              *v21 = v85;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v85 = -*v20;
          v86 = 0;
          v21 = (*(this + 5) + 16 * (v19 + *(this + 8) * a2));
        }

        v22 = v85;
        if (v21[2] > 0x40 && *v21)
        {
          MEMORY[0x259C63150](*v21, 0x1000C8000313F17);
        }

        *v21 = v22;
        v21[2] = 0;
LABEL_18:
        if (v86 > 0x40 && v85)
        {
          MEMORY[0x259C63150](v85, 0x1000C8000313F17);
        }

        goto LABEL_11;
      }

      goto LABEL_49;
    }

    v16 = *(this + 5);
    v15 = *(this + 8) * a2;
  }

  else if ((*v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v24 = v16 + 16 * v15;
  if (*(v24 + 8) || *v24 == 0x8000000000000000)
  {
    mlir::presburger::LexSimplexBase::addCut(v24);
  }

  else
  {
    v87 = -*v24;
    v88 = 0;
  }

  v25 = (*(this + 5) + 16 * *(this + 8) * a2);
  if (v88)
  {
    mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v25, v88, &v87);
    v26 = v88;
    if (v88)
    {
      goto LABEL_231;
    }
  }

  else if (v25[2] > 0x40 && *v25)
  {
    v71 = *(this + 5) + 16 * *(this + 8) * a2;
    MEMORY[0x259C63150](*v25, 0x1000C8000313F17);
    *v71 = v87;
    *(v71 + 8) = 0;
    v26 = v88;
    if (v88)
    {
      goto LABEL_231;
    }
  }

  else
  {
    *v25 = v87;
    v25[2] = 0;
    v26 = v88;
    if (v88)
    {
LABEL_231:
      if (v26 >= 0x41 && v87)
      {
        MEMORY[0x259C63150](v87, 0x1000C8000313F17);
      }
    }
  }

  v27 = *(this + 5) + 16 * (a3 + *(this + 8) * a2);
  if (*(v27 + 8) || *v27 == 0x8000000000000000)
  {
    mlir::presburger::LexSimplexBase::addCut(v27);
  }

  else
  {
    v87 = -*v27;
    v88 = 0;
  }

  v28 = (*(this + 5) + 16 * (a3 + *(this + 8) * a2));
  if (v88)
  {
    mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v28, v88, &v87);
    v30 = v88;
    if (!v88)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v29 = v87;
    if (v28[2] > 0x40 && *v28)
    {
      v72 = *(this + 5) + 16 * (a3 + *(this + 8) * a2);
      MEMORY[0x259C63150](*v28, 0x1000C8000313F17);
      *v72 = v29;
      *(v72 + 8) = 0;
      v30 = v88;
      if (!v88)
      {
        goto LABEL_49;
      }
    }

    else
    {
      *v28 = v87;
      v28[2] = 0;
      v30 = v88;
      if (!v88)
      {
        goto LABEL_49;
      }
    }
  }

  if (v30 >= 0x41 && v87)
  {
    MEMORY[0x259C63150](v87, 0x1000C8000313F17);
  }

LABEL_49:
  result = mlir::presburger::IntMatrix::normalizeRow((this + 24), a2, &v81);
  if (v82 > 0x40)
  {
    result = v81;
    if (v81)
    {
      result = MEMORY[0x259C63150](v81, 0x1000C8000313F17);
    }
  }

  v32 = *(this + 6);
  if (v32)
  {
    for (i = 0; i != v32; ++i)
    {
      if (i != a2)
      {
        v34 = *(this + 8);
        v35 = *(this + 5);
        result = v35 + 16 * (v34 * i + a3);
        if (*(result + 8))
        {
          result = llvm::detail::operator==(result, 0);
          if ((result & 1) == 0)
          {
            v67 = *(this + 8);
            v68 = *(this + 5);
            v36 = (v68 + 16 * v67 * a2);
            v37 = (v68 + 16 * (v67 * i));
            if (v37[2])
            {
LABEL_175:
              llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v37, &v85);
              llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v36, &v83);
              llvm::detail::SlowDynamicAPInt::operator*(&v85, &v83, &v73);
              v69 = v74;
              v88 = v74;
              if (v74 > 0x40)
              {
                llvm::APInt::initSlowCase(&v87, &v73);
              }

              v87 = v73;
              if (!v74)
              {
LABEL_177:
                v70 = v87;
                if (v37[2] > 0x40 && *v37)
                {
                  MEMORY[0x259C63150](*v37, 0x1000C8000313F17);
                }

                *v37 = v70;
                v37[2] = 0;
LABEL_179:
                if (v88 > 0x40 && v87)
                {
                  MEMORY[0x259C63150](v87, 0x1000C8000313F17);
                }

                if (v74 >= 0x41 && v73)
                {
                  MEMORY[0x259C63150](v73, 0x1000C8000313F17);
                }

                if (v84 >= 0x41 && v83)
                {
                  MEMORY[0x259C63150](v83, 0x1000C8000313F17);
                }

                if (v86 >= 0x41 && v85)
                {
                  MEMORY[0x259C63150](v85, 0x1000C8000313F17);
                }

LABEL_62:
                v39 = *(this + 7);
                if (v39 >= 2)
                {
                  v40 = 1;
                  while (a3 == v40)
                  {
LABEL_64:
                    if (v39 == ++v40)
                    {
                      goto LABEL_154;
                    }
                  }

                  v41 = *(this + 8);
                  v42 = *(this + 5);
                  v43 = (v42 + 16 * (v40 + i * v41));
                  v44 = (v42 + 16 * v41 * a2);
                  v45 = *(v43 + 2);
                  if (v45)
                  {
                    v74 = *(v43 + 2);
                    if (v45 > 0x40)
                    {
                      llvm::APInt::initSlowCase(&v73, v43);
                    }

                    v73 = *v43;
                    v56 = *(v44 + 2);
                    if (v56)
                    {
                      goto LABEL_100;
                    }
                  }

                  else
                  {
                    if (*(v44 + 2))
                    {
                      v46 = *v43;
                    }

                    else
                    {
                      v46 = *v43;
                      if ((v46 * *v44) >> 64 == (v46 * *v44) >> 63)
                      {
                        v79 = v46 * *v44;
                        v80 = 0;
                        goto LABEL_70;
                      }
                    }

                    llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v73, v46);
                    v56 = *(v44 + 2);
                    if (v56)
                    {
LABEL_100:
                      v86 = v56;
                      if (v56 > 0x40)
                      {
                        llvm::APInt::initSlowCase(&v85, v44);
                      }

                      v85 = *v44;
                      goto LABEL_117;
                    }
                  }

                  llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v85, *v44);
LABEL_117:
                  llvm::detail::SlowDynamicAPInt::operator*(&v73, &v85, &v87);
                  v80 = v88;
                  if (v88 > 0x40)
                  {
                    llvm::APInt::initSlowCase(&v79, &v87);
                  }

                  v79 = v87;
                  if (v86 >= 0x41 && v85)
                  {
                    MEMORY[0x259C63150](v85, 0x1000C8000313F17);
                  }

                  if (v74 >= 0x41 && v73)
                  {
                    MEMORY[0x259C63150](v73, 0x1000C8000313F17);
                  }

LABEL_70:
                  v47 = *(this + 8);
                  v48 = *(this + 5);
                  v49 = (v48 + 16 * (a3 + v47 * i));
                  v50 = (v48 + 16 * (v40 + v47 * a2));
                  v51 = *(v49 + 2);
                  if (v51)
                  {
                    v74 = *(v49 + 2);
                    if (v51 > 0x40)
                    {
                      llvm::APInt::initSlowCase(&v73, v49);
                    }

                    v73 = *v49;
                    v57 = *(v50 + 2);
                    if (v57)
                    {
                      goto LABEL_104;
                    }
                  }

                  else
                  {
                    if (*(v50 + 2))
                    {
                      v52 = *v49;
                    }

                    else
                    {
                      v52 = *v49;
                      if ((v52 * *v50) >> 64 == (v52 * *v50) >> 63)
                      {
                        v77 = v52 * *v50;
                        v78 = 0;
                        goto LABEL_74;
                      }
                    }

                    llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v73, v52);
                    v57 = *(v50 + 2);
                    if (v57)
                    {
LABEL_104:
                      v86 = v57;
                      if (v57 > 0x40)
                      {
                        llvm::APInt::initSlowCase(&v85, v50);
                      }

                      v85 = *v50;
                      goto LABEL_128;
                    }
                  }

                  llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v85, *v50);
LABEL_128:
                  llvm::detail::SlowDynamicAPInt::operator*(&v73, &v85, &v87);
                  v78 = v88;
                  if (v88 > 0x40)
                  {
                    llvm::APInt::initSlowCase(&v77, &v87);
                  }

                  v77 = v87;
                  if (v86 >= 0x41 && v85)
                  {
                    MEMORY[0x259C63150](v85, 0x1000C8000313F17);
                  }

                  if (v74 >= 0x41 && v73)
                  {
                    MEMORY[0x259C63150](v73, 0x1000C8000313F17);
                  }

LABEL_74:
                  if (v80)
                  {
                    v74 = v80;
                    if (v80 > 0x40)
                    {
                      llvm::APInt::initSlowCase(&v73, &v79);
                    }

                    v73 = v79;
                    v58 = v78;
                    if (v78)
                    {
                      goto LABEL_108;
                    }
                  }

                  else
                  {
                    if (v78)
                    {
                      v53 = v79;
                    }

                    else
                    {
                      v53 = v79;
                      if (!__OFADD__(v79, v77))
                      {
                        v83 = v79 + v77;
                        v84 = 0;
                        v54 = (*(this + 5) + 16 * (v40 + i * *(this + 8)));
                        goto LABEL_78;
                      }
                    }

                    llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v73, v53);
                    v58 = v78;
                    if (v78)
                    {
LABEL_108:
                      v86 = v58;
                      if (v58 > 0x40)
                      {
                        llvm::APInt::initSlowCase(&v85, &v77);
                      }

                      v85 = v77;
LABEL_139:
                      llvm::detail::SlowDynamicAPInt::operator+(&v73, &v85, &v87);
                      v84 = v88;
                      if (v88 > 0x40)
                      {
                        llvm::APInt::initSlowCase(&v83, &v87);
                      }

                      v83 = v87;
                      if (v86 >= 0x41 && v85)
                      {
                        MEMORY[0x259C63150](v85, 0x1000C8000313F17);
                      }

                      if (v74 >= 0x41 && v73)
                      {
                        MEMORY[0x259C63150](v73, 0x1000C8000313F17);
                      }

                      v59 = v84;
                      v54 = (*(this + 5) + 16 * (v40 + i * *(this + 8)));
                      if (v84)
                      {
                        if (v54[2])
                        {
                          llvm::detail::SlowDynamicAPInt::operator=(v54, &v83);
                        }

                        else
                        {
                          v54[2] = v84;
                          if (v59 > 0x40)
                          {
                            llvm::APInt::initSlowCase(v54, &v83);
                          }

                          *v54 = v83;
                        }
                      }

                      else
                      {
LABEL_78:
                        v55 = v83;
                        if (v54[2] > 0x40 && *v54)
                        {
                          MEMORY[0x259C63150](*v54, 0x1000C8000313F17);
                        }

                        *v54 = v55;
                        v54[2] = 0;
                      }

                      if (v84 > 0x40 && v83)
                      {
                        MEMORY[0x259C63150](v83, 0x1000C8000313F17);
                      }

                      if (v78 > 0x40 && v77)
                      {
                        MEMORY[0x259C63150](v77, 0x1000C8000313F17);
                      }

                      if (v80 > 0x40 && v79)
                      {
                        MEMORY[0x259C63150](v79, 0x1000C8000313F17);
                      }

                      goto LABEL_64;
                    }
                  }

                  llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v85, v77);
                  goto LABEL_139;
                }

LABEL_154:
                v60 = *(this + 8);
                v61 = *(this + 5);
                v62 = (v61 + 16 * (a3 + v60 * a2));
                v63 = (v61 + 16 * (a3 + v60 * i));
                if (v63[2] || *(v62 + 2))
                {
                  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v63, &v85);
                  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v62, &v83);
                  llvm::detail::SlowDynamicAPInt::operator*(&v85, &v83, &v73);
                  v65 = v74;
                  v88 = v74;
                  if (v74 > 0x40)
                  {
                    llvm::APInt::initSlowCase(&v87, &v73);
                  }

                  v87 = v73;
                  if (!v74)
                  {
                    goto LABEL_161;
                  }

LABEL_192:
                  if (v63[2])
                  {
                    llvm::detail::SlowDynamicAPInt::operator=(v63, &v87);
                  }

                  else
                  {
                    v63[2] = v65;
                    if (v65 > 0x40)
                    {
                      llvm::APInt::initSlowCase(v63, &v87);
                    }

                    *v63 = v87;
                  }

LABEL_163:
                  if (v88 > 0x40 && v87)
                  {
                    MEMORY[0x259C63150](v87, 0x1000C8000313F17);
                  }

                  if (v74 >= 0x41 && v73)
                  {
                    MEMORY[0x259C63150](v73, 0x1000C8000313F17);
                  }

                  if (v84 >= 0x41 && v83)
                  {
                    MEMORY[0x259C63150](v83, 0x1000C8000313F17);
                  }

                  if (v86 >= 0x41 && v85)
                  {
                    MEMORY[0x259C63150](v85, 0x1000C8000313F17);
                  }
                }

                else
                {
                  v64 = *v63 * *v62;
                  if ((*v63 * *v62) >> 64 != v64 >> 63)
                  {
                    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v63, &v85);
                    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v62, &v83);
                    llvm::detail::SlowDynamicAPInt::operator*(&v85, &v83, &v73);
                    v65 = v74;
                    v88 = v74;
                    if (v74 > 0x40)
                    {
                      llvm::APInt::initSlowCase(&v87, &v73);
                    }

                    v87 = v73;
                    if (v74)
                    {
                      goto LABEL_192;
                    }

LABEL_161:
                    v66 = v87;
                    if (v63[2] > 0x40 && *v63)
                    {
                      MEMORY[0x259C63150](*v63, 0x1000C8000313F17);
                    }

                    *v63 = v66;
                    v63[2] = 0;
                    goto LABEL_163;
                  }

                  *v63 = v64;
                }

                result = mlir::presburger::IntMatrix::normalizeRow((this + 24), i, &v75);
                if (v76 > 0x40)
                {
                  result = v75;
                  if (v75)
                  {
                    result = MEMORY[0x259C63150](v75, 0x1000C8000313F17);
                  }
                }

                continue;
              }

LABEL_196:
              if (v37[2])
              {
                llvm::detail::SlowDynamicAPInt::operator=(v37, &v87);
              }

              else
              {
                v37[2] = v69;
                if (v69 > 0x40)
                {
                  llvm::APInt::initSlowCase(v37, &v87);
                }

                *v37 = v87;
              }

              goto LABEL_179;
            }

LABEL_59:
            if (*(v36 + 2))
            {
              goto LABEL_175;
            }

            v38 = *v37 * *v36;
            if ((*v37 * *v36) >> 64 == v38 >> 63)
            {
              *v37 = v38;
              goto LABEL_62;
            }

            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v37, &v85);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v36, &v83);
            llvm::detail::SlowDynamicAPInt::operator*(&v85, &v83, &v73);
            v69 = v74;
            v88 = v74;
            if (v74 > 0x40)
            {
              llvm::APInt::initSlowCase(&v87, &v73);
            }

            v87 = v73;
            if (!v74)
            {
              goto LABEL_177;
            }

            goto LABEL_196;
          }
        }

        else if (*result)
        {
          v36 = (v35 + 16 * v34 * a2);
          v37 = (v35 + 16 * (v34 * i));
          if (v37[2])
          {
            goto LABEL_175;
          }

          goto LABEL_59;
        }
      }
    }
  }

  return result;
}

uint64_t *mlir::presburger::LexSimplexBase::getLexMinPivotColumn(unsigned int,unsigned int,unsigned int)const::$_0::operator()(uint64_t *a1, _DWORD *a2, int a3, int *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = (*(*a2 + 40) + 16 * (a3 + *(*a2 + 32) * a2[2]));
  v11 = *v5;
  v12 = 0;
  v6 = *(v5 + 2);
  if (v6)
  {
    v12 = *(v5 + 2);
    if (v6 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v11, v5);
    }
  }

  v7 = *a4;
  if (a4[1] == 1)
  {
    if (v7 == a3)
    {
      v15 = 1;
      v16 = 0;
LABEL_12:
      result = mlir::presburger::Fraction::Fraction(a1, &v15, &v11);
      goto LABEL_13;
    }

    v15 = 0;
    v16 = 0;
  }

  else
  {
    if (v7 != a2[2])
    {
      v9 = (*(v4 + 40) + 16 * (a3 + *(v4 + 32) * v7));
      v15 = *v9;
      v16 = 0;
      v10 = *(v9 + 2);
      if (v10)
      {
        v16 = *(v9 + 2);
        if (v10 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v15, v9);
        }
      }

      goto LABEL_12;
    }

    v15 = 1;
    v16 = 0;
  }

  v13 = 1;
  v14 = 0;
  result = mlir::presburger::Fraction::Fraction(a1, &v15, &v13);
  if (v14 > 0x40)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

LABEL_13:
  if (v16 > 0x40)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v12 > 0x40)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

unint64_t mlir::presburger::Simplex::findPivot(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 28);
  if (v3 < 3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  for (i = 2; i != v3; ++i)
  {
    v7 = (*(a1 + 40) + 16 * (i + *(a1 + 32) * a2));
    v8 = *v7;
    v44 = *v7;
    v45 = 0;
    v9 = *(v7 + 2);
    if (v9)
    {
      v40 = a1;
      v13 = a3;
      v14 = a2;
      v45 = *(v7 + 2);
      if (v9 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v44, v7);
      }

      v15 = llvm::detail::operator==(&v44, 0);
      a2 = v14;
      a3 = v13;
      a1 = v40;
      if (v15)
      {
        goto LABEL_19;
      }
    }

    else if (!v8)
    {
      goto LABEL_19;
    }

    v10 = *(*(a1 + 816) + 4 * i);
    v11 = v10 ^ (v10 >> 31);
    if (v10 >= 0)
    {
      v12 = 976;
    }

    else
    {
      v12 = 864;
    }

    if (*(*(a1 + v12) + 12 * v11 + 8))
    {
      if (a3)
      {
        if (v45)
        {
          v42 = a1;
          v18 = a2;
          v19 = a3;
          v20 = llvm::detail::operator<(&v44, 0);
          a3 = v19;
          a2 = v18;
          v21 = v20;
          a1 = v42;
          if (!v21)
          {
            goto LABEL_19;
          }
        }

        else if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v45)
      {
        v43 = a1;
        v22 = a2;
        v23 = a3;
        v24 = llvm::detail::operator>(&v44, 0);
        a3 = v23;
        a2 = v22;
        v25 = v24;
        a1 = v43;
        if (!v25)
        {
          goto LABEL_19;
        }
      }

      else if (v44 <= 0)
      {
        goto LABEL_19;
      }
    }

    if ((v4 & 1) != 0 && *(*(a1 + 816) + 4 * i) >= *(*(a1 + 816) + 4 * v5))
    {
      v4 = 1;
    }

    else
    {
      v4 = 1;
      v5 = i;
    }

LABEL_19:
    if (v45 > 0x40 && v44)
    {
      v41 = a1;
      v16 = a2;
      v17 = a3;
      MEMORY[0x259C63150](v44, 0x1000C8000313F17);
      a1 = v41;
      a3 = v17;
      a2 = v16;
    }
  }

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v26 = (*(a1 + 40) + 16 * (v5 + *(a1 + 32) * a2));
  v27 = *v26;
  v44 = *v26;
  v45 = 0;
  v28 = *(v26 + 2);
  if (v28)
  {
    v33 = a1;
    v34 = a3;
    v35 = a2;
    v45 = *(v26 + 2);
    if (v28 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v44, v26);
    }

    v36 = llvm::detail::operator<(&v44, 0);
    LODWORD(a2) = v35;
    a3 = v34;
    a1 = v33;
    if (v36)
    {
LABEL_35:
      a3 = !a3;
    }
  }

  else if (v27 < 0)
  {
    goto LABEL_35;
  }

  if (v45 > 0x40 && v44)
  {
    v37 = a1;
    v38 = a2;
    v39 = a3;
    MEMORY[0x259C63150](v44, 0x1000C8000313F17);
    a1 = v37;
    a3 = v39;
    LODWORD(a2) = v38;
  }

  v29 = a2;
  PivotRow = mlir::presburger::Simplex::findPivotRow(a1, a2 | 0x100000000, a3, v5);
  if ((PivotRow & 0x100000000) != 0)
  {
    v31 = PivotRow;
  }

  else
  {
    v31 = v29;
  }

  return v31 & 0xFFFFFF00 | (v5 << 32) | v31;
}

unint64_t mlir::presburger::Simplex::findPivotRow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v152 = *MEMORY[0x277D85DE8];
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v7 = *(a1 + 12);
  v8 = *(a1 + 24);
  if (v8 <= v7)
  {
    goto LABEL_163;
  }

  v9 = 0;
  v5 = 0;
  v10 = 0;
  v11 = a2;
  v12 = v8 - v7;
  do
  {
    if ((a2 & 0x100000000) != 0 && v11 == v7)
    {
      goto LABEL_8;
    }

    v13 = (*(a1 + 40) + 16 * (a4 + *(a1 + 32) * v7));
    v14 = *v13;
    v146 = *v13;
    v147 = 0;
    v15 = *(v13 + 2);
    if (v15)
    {
      v87 = a2;
      v109 = a1;
      v49 = a3;
      v67 = a4;
      v147 = *(v13 + 2);
      if (v15 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v146, v13);
      }

      v25 = llvm::detail::operator==(&v146, 0);
      a3 = v49;
      a4 = v67;
      a2 = v87;
      a1 = v109;
      if (v25)
      {
        goto LABEL_7;
      }
    }

    else if (!v14)
    {
      goto LABEL_7;
    }

    v16 = *(*(a1 + 768) + 4 * v7);
    v17 = v16 ^ (v16 >> 31);
    if (v16 >= 0)
    {
      v18 = 976;
    }

    else
    {
      v18 = 864;
    }

    if (*(*(a1 + v18) + 12 * v17 + 8))
    {
      if (a3)
      {
        if (!v147)
        {
          if ((v146 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_7;
        }

        v88 = a2;
        v110 = a1;
        v50 = a3;
        v68 = a4;
        v26 = llvm::detail::operator<(&v146, 0);
LABEL_65:
        a3 = v50;
        a4 = v68;
        v27 = v26;
        a2 = v88;
        a1 = v110;
        if (v27)
        {
          goto LABEL_7;
        }

LABEL_23:
        v19 = (*(a1 + 40) + 16 * (*(a1 + 32) * v7 + 1));
        v144 = *v19;
        v145 = 0;
        v20 = *(v19 + 2);
        if (v20)
        {
          v145 = *(v19 + 2);
          if (v20 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v144, v19);
          }
        }

        if (v10)
        {
          if (v149 | v147)
          {
            v90 = a2;
            v112 = a1;
            v52 = a3;
            v70 = a4;
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v148, &v134);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v146, &v132);
            llvm::detail::SlowDynamicAPInt::operator*(&v134, &v132, &v136);
            v141 = v137;
            if (v137 > 0x40)
            {
              llvm::APInt::initSlowCase(&v140, &v136);
            }

            v140 = v136;
            if (v133 >= 0x41 && v132)
            {
              MEMORY[0x259C63150](v132, 0x1000C8000313F17);
            }

            if (v135 >= 0x41 && v134)
            {
              MEMORY[0x259C63150](v134, 0x1000C8000313F17);
            }

            a3 = v52;
            a4 = v70;
            a2 = v90;
            a1 = v112;
          }

          else if ((v148 * v146) >> 64 == (v148 * v146) >> 63)
          {
            v140 = v148 * v146;
            v141 = 0;
          }

          else
          {
            v99 = a2;
            v122 = a1;
            v60 = a3;
            v78 = a4;
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v148, &v134);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v146, &v132);
            llvm::detail::SlowDynamicAPInt::operator*(&v134, &v132, &v136);
            v141 = v137;
            if (v137 > 0x40)
            {
              llvm::APInt::initSlowCase(&v140, &v136);
            }

            v140 = v136;
            a3 = v60;
            a4 = v78;
            a2 = v99;
            a1 = v122;
            if (v133 >= 0x41 && v132)
            {
              MEMORY[0x259C63150](v132, 0x1000C8000313F17, v60, v78);
              a2 = v99;
              a1 = v122;
              a3 = v60;
              a4 = v78;
            }

            if (v135 >= 0x41 && v134)
            {
              MEMORY[0x259C63150](v134, 0x1000C8000313F17, a3, a4);
              a2 = v99;
              a1 = v122;
              a3 = v60;
              a4 = v78;
            }
          }

          if (v145 | v151)
          {
            v91 = a2;
            v113 = a1;
            v53 = a3;
            v71 = a4;
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v144, &v134);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v150, &v132);
            llvm::detail::SlowDynamicAPInt::operator*(&v134, &v132, &v136);
            v139 = v137;
            if (v137 > 0x40)
            {
              llvm::APInt::initSlowCase(&v138, &v136);
            }

            v138 = v136;
            if (v133 >= 0x41 && v132)
            {
              MEMORY[0x259C63150](v132, 0x1000C8000313F17);
            }

            if (v135 >= 0x41 && v134)
            {
              MEMORY[0x259C63150](v134, 0x1000C8000313F17);
            }

            a3 = v53;
            a4 = v71;
            a2 = v91;
            a1 = v113;
          }

          else if ((v144 * v150) >> 64 == (v144 * v150) >> 63)
          {
            v138 = v144 * v150;
            v139 = 0;
          }

          else
          {
            v100 = a2;
            v123 = a1;
            v61 = a3;
            v79 = a4;
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v144, &v134);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v150, &v132);
            llvm::detail::SlowDynamicAPInt::operator*(&v134, &v132, &v136);
            v139 = v137;
            if (v137 > 0x40)
            {
              llvm::APInt::initSlowCase(&v138, &v136);
            }

            v138 = v136;
            a3 = v61;
            a4 = v79;
            a2 = v100;
            a1 = v123;
            if (v133 >= 0x41 && v132)
            {
              MEMORY[0x259C63150](v132, 0x1000C8000313F17, v61, v79);
              a2 = v100;
              a1 = v123;
              a3 = v61;
              a4 = v79;
            }

            if (v135 >= 0x41 && v134)
            {
              MEMORY[0x259C63150](v134, 0x1000C8000313F17, a3, a4);
              a2 = v100;
              a1 = v123;
              a3 = v61;
              a4 = v79;
            }
          }

          if (v141 | v139)
          {
            v92 = a2;
            v114 = a1;
            v54 = a3;
            v72 = a4;
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v140, &v134);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v138, &v132);
            llvm::detail::SlowDynamicAPInt::operator-(&v134, &v132, &v136);
            v143 = v137;
            if (v137 > 0x40)
            {
              llvm::APInt::initSlowCase(&v142, &v136);
            }

            v142 = v136;
            if (v133 >= 0x41 && v132)
            {
              MEMORY[0x259C63150](v132, 0x1000C8000313F17);
            }

            if (v135 >= 0x41 && v134)
            {
              MEMORY[0x259C63150](v134, 0x1000C8000313F17);
            }

            a3 = v54;
            a4 = v72;
            a2 = v92;
            a1 = v114;
          }

          else if (__OFSUB__(v140, v138))
          {
            v101 = a2;
            v124 = a1;
            v62 = a3;
            v80 = a4;
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v140, &v134);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v138, &v132);
            llvm::detail::SlowDynamicAPInt::operator-(&v134, &v132, &v136);
            v143 = v137;
            if (v137 > 0x40)
            {
              llvm::APInt::initSlowCase(&v142, &v136);
            }

            v142 = v136;
            a3 = v62;
            a4 = v80;
            a2 = v101;
            a1 = v124;
            if (v133 >= 0x41 && v132)
            {
              MEMORY[0x259C63150](v132, 0x1000C8000313F17, v62, v80);
              a2 = v101;
              a1 = v124;
              a3 = v62;
              a4 = v80;
            }

            if (v135 >= 0x41 && v134)
            {
              MEMORY[0x259C63150](v134, 0x1000C8000313F17, a3, a4);
              a2 = v101;
              a1 = v124;
              a3 = v62;
              a4 = v80;
            }
          }

          else
          {
            v142 = v140 - v138;
            v143 = 0;
          }

          if (v139 > 0x40 && v138)
          {
            v94 = a2;
            v116 = a1;
            v56 = a3;
            v74 = a4;
            MEMORY[0x259C63150](v138, 0x1000C8000313F17);
            a2 = v94;
            a1 = v116;
            a3 = v56;
            a4 = v74;
          }

          if (v141 > 0x40 && v140)
          {
            v95 = a2;
            v117 = a1;
            v57 = a3;
            v75 = a4;
            MEMORY[0x259C63150](v140, 0x1000C8000313F17);
            a2 = v95;
            a1 = v117;
            a3 = v57;
            a4 = v75;
          }

          if (v143)
          {
            v96 = a2;
            v118 = a1;
            v58 = a3;
            v76 = a4;
            v28 = llvm::detail::operator==(&v142, 0);
            a3 = v58;
            a4 = v76;
            v29 = v28;
            a2 = v96;
            a1 = v118;
            if (!v29)
            {
LABEL_75:
              if (v143)
              {
                v102 = a2;
                v125 = a1;
                v63 = a3;
                v81 = a4;
                if (!llvm::detail::operator!=(&v142, 0))
                {
                  a3 = v63;
                  a4 = v81;
                  a2 = v102;
                  a1 = v125;
                  goto LABEL_5;
                }

                v21 = v143 == 0;
                a3 = v63;
                a4 = v81;
                a2 = v102;
                a1 = v125;
                if (v63)
                {
                  goto LABEL_39;
                }

                goto LABEL_118;
              }

              if (!v142)
              {
LABEL_6:
                if (v145 > 0x40 && v144)
                {
                  v89 = a2;
                  v111 = a1;
                  v51 = a3;
                  v69 = a4;
                  MEMORY[0x259C63150](v144, 0x1000C8000313F17);
                  a2 = v89;
                  a1 = v111;
                  a3 = v51;
                  a4 = v69;
                }

                goto LABEL_7;
              }

LABEL_38:
              v21 = 1;
              if (a3)
              {
LABEL_39:
                if (v21)
                {
                  if (v142 < 0)
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_120;
                }

                v105 = a2;
                v129 = a1;
                v65 = a3;
                v83 = a4;
                v43 = llvm::detail::operator<(&v142, 0);
                goto LABEL_158;
              }

LABEL_118:
              if (v21)
              {
                if (v142 > 0)
                {
                  goto LABEL_5;
                }

LABEL_120:
                if (v147)
                {
                  v127 = a1;
                  v38 = a3;
                  v39 = a4;
                  v40 = a2;
                  mlir::presburger::detail::getNonOrthogonalVector(&v151, v147, &v146, &v150);
                  a1 = v127;
                  a2 = v40;
                  a3 = v38;
                  a4 = v39;
                  v5 = v7;
                  v9 = v7 >> 8;
                  v36 = v145;
                  if (!v145)
                  {
LABEL_123:
                    v37 = v144;
                    if (v149 > 0x40 && v148)
                    {
                      v103 = a2;
                      v126 = a1;
                      v64 = a3;
                      v82 = a4;
                      MEMORY[0x259C63150](v148, 0x1000C8000313F17);
                      a2 = v103;
                      a1 = v126;
                      a3 = v64;
                      a4 = v82;
                    }

                    v148 = v37;
                    v149 = 0;
LABEL_4:
                    v10 = 1;
LABEL_5:
                    if (v143 > 0x40 && v142)
                    {
                      v93 = a2;
                      v115 = a1;
                      v55 = a3;
                      v73 = a4;
                      MEMORY[0x259C63150](v142, 0x1000C8000313F17);
                      a2 = v93;
                      a1 = v115;
                      a3 = v55;
                      a4 = v73;
                    }

                    goto LABEL_6;
                  }
                }

                else
                {
                  v35 = v146;
                  if (v151 > 0x40 && v150)
                  {
                    v104 = a2;
                    v128 = a1;
                    v41 = a4;
                    v42 = a3;
                    MEMORY[0x259C63150](v150, 0x1000C8000313F17);
                    a2 = v104;
                    a1 = v128;
                    a3 = v42;
                    a4 = v41;
                  }

                  v150 = v35;
                  v151 = 0;
                  v5 = v7;
                  v9 = v7 >> 8;
                  v36 = v145;
                  if (!v145)
                  {
                    goto LABEL_123;
                  }
                }

                if (v149)
                {
                  v107 = a2;
                  v131 = a1;
                  v85 = a4;
                  v46 = a3;
                  llvm::detail::SlowDynamicAPInt::operator=(&v148, &v144);
                  a2 = v107;
                  a1 = v131;
                  a3 = v46;
                  a4 = v85;
                }

                else
                {
                  v149 = v36;
                  if (v36 > 0x40)
                  {
                    llvm::APInt::initSlowCase(&v148, &v144);
                  }

                  v148 = v144;
                }

                goto LABEL_4;
              }

              v105 = a2;
              v129 = a1;
              v65 = a3;
              v83 = a4;
              v43 = llvm::detail::operator>(&v142, 0);
LABEL_158:
              a3 = v65;
              a4 = v83;
              v44 = v43;
              a2 = v105;
              a1 = v129;
              if (v44)
              {
                goto LABEL_5;
              }

              goto LABEL_120;
            }
          }

          else if (v142)
          {
            goto LABEL_38;
          }

          if (*(*(a1 + 768) + 4 * v7) < *(*(a1 + 768) + ((v9 << 10) | (4 * v5))))
          {
            goto LABEL_120;
          }

          goto LABEL_75;
        }

        if (v147)
        {
          v119 = a1;
          v30 = a3;
          v31 = a4;
          v32 = a2;
          mlir::presburger::detail::getNonOrthogonalVector(&v151, v147, &v146, &v150);
          a1 = v119;
          a2 = v32;
          a3 = v30;
          a4 = v31;
          v5 = v7;
          v9 = v7 >> 8;
          v23 = v145;
          if (!v145)
          {
LABEL_45:
            v24 = v144;
            if (v149 > 0x40 && v148)
            {
              v98 = a2;
              v121 = a1;
              v59 = a3;
              v77 = a4;
              MEMORY[0x259C63150](v148, 0x1000C8000313F17);
              a2 = v98;
              a1 = v121;
              a3 = v59;
              a4 = v77;
            }

            v148 = v24;
            v149 = 0;
            v10 = 1;
            goto LABEL_6;
          }
        }

        else
        {
          v22 = v146;
          if (v151 > 0x40 && v150)
          {
            v97 = a2;
            v120 = a1;
            v33 = a4;
            v34 = a3;
            MEMORY[0x259C63150](v150, 0x1000C8000313F17);
            a2 = v97;
            a1 = v120;
            a3 = v34;
            a4 = v33;
          }

          v150 = v22;
          v151 = 0;
          v5 = v7;
          v9 = v7 >> 8;
          v23 = v145;
          if (!v145)
          {
            goto LABEL_45;
          }
        }

        if (v149)
        {
          v106 = a2;
          v130 = a1;
          v84 = a4;
          v45 = a3;
          llvm::detail::SlowDynamicAPInt::operator=(&v148, &v144);
          a2 = v106;
          a1 = v130;
          a3 = v45;
          a4 = v84;
          v10 = 1;
        }

        else
        {
          v149 = v23;
          if (v23 > 0x40)
          {
            llvm::APInt::initSlowCase(&v148, &v144);
          }

          v148 = v144;
          v10 = 1;
        }

        goto LABEL_6;
      }

      if (v147)
      {
        v88 = a2;
        v110 = a1;
        v50 = 0;
        v68 = a4;
        v26 = llvm::detail::operator>(&v146, 0);
        goto LABEL_65;
      }

      if (v146 <= 0)
      {
        goto LABEL_23;
      }
    }

LABEL_7:
    if (v147 > 0x40 && v146)
    {
      v86 = a2;
      v108 = a1;
      v48 = a3;
      v66 = a4;
      MEMORY[0x259C63150](v146, 0x1000C8000313F17);
      a2 = v86;
      a1 = v108;
      a3 = v48;
      a4 = v66;
    }

LABEL_8:
    ++v7;
    --v12;
  }

  while (v12);
  v4 = v9 << 8;
  v6 = v10 << 32;
  if (v149 > 0x40 && v148)
  {
    MEMORY[0x259C63150](v148, 0x1000C8000313F17);
  }

LABEL_163:
  if (v151 > 0x40 && v150)
  {
    MEMORY[0x259C63150](v150, 0x1000C8000313F17);
  }

  return v4 | v5 | v6;
}

uint64_t mlir::presburger::SimplexBase::swapRowWithCol(uint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 768);
  v4 = *(this + 816);
  v5 = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = *(v4 + 4 * a3);
  *(v4 + 4 * a3) = v5;
  if (v5 >= 0)
  {
    v6 = 976;
  }

  else
  {
    v6 = 864;
  }

  v7 = *(v3 + 4 * a2);
  v8 = (*(this + v6) + 12 * (v5 ^ (v5 >> 31)));
  v9 = v7 ^ (v7 >> 31);
  if (v7 >= 0)
  {
    v10 = 976;
  }

  else
  {
    v10 = 864;
  }

  v11 = *(this + v10);
  *v8 = a3;
  v8[1] = 1;
  v12 = (v11 + 12 * v9);
  *v12 = a2;
  v12[1] = 0;
  return this;
}

uint64_t mlir::presburger::Simplex::restoreRow(uint64_t a1, unsigned int *a2)
{
  while (1)
  {
    v4 = *a2;
    v5 = *(a1 + 40) + 16 * (*(a1 + 32) * v4 + 1);
    if (*(v5 + 8))
    {
      v8 = llvm::detail::operator<(v5, 0);
      v4 = *a2;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else if ((*v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    Pivot = mlir::presburger::Simplex::findPivot(a1, v4, 0);
    if ((v7 & 1) == 0)
    {
      break;
    }

    mlir::presburger::SimplexBase::pivot(a1, Pivot, HIDWORD(Pivot));
    if (a2[1] == 1)
    {
      return 1;
    }
  }

  LODWORD(v4) = *a2;
LABEL_9:
  v9 = *(a1 + 40) + 16 * (*(a1 + 32) * v4 + 1);
  if (*(v9 + 8))
  {
    return llvm::detail::operator>=(v9, 0);
  }

  else
  {
    return *v9 >= 0;
  }
}

void mlir::presburger::SimplexBase::swapRows(mlir::presburger::SimplexBase *this, int a2, int a3)
{
  if (a2 != a3)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::swapRows();
  }
}

void mlir::presburger::SimplexBase::addEquality(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24[16] = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(a1);
  v22 = v24;
  v23 = 0x800000000;
  if (a3 >= 9)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      if (*(a2 + 8) || *a2 == 0x8000000000000000)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a2, &v16);
        llvm::detail::SlowDynamicAPInt::operator-(&v16, &v18);
        v21 = v19;
        if (v19 > 0x40)
        {
          llvm::APInt::initSlowCase(&v20, &v18);
        }

        v20 = v18;
        if (v17 >= 0x41 && v16)
        {
          MEMORY[0x259C63150](v16, 0x1000C8000313F17);
        }
      }

      else
      {
        v20 = -*a2;
        v21 = 0;
      }

      if (v23 >= HIDWORD(v23))
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<llvm::DynamicAPInt>();
      }

      v7 = (v22 + 16 * v23);
      *v7 = v20;
      *(v7 + 2) = 0;
      v8 = v21;
      if (v21)
      {
        *(v7 + 2) = v21;
        if (v8 > 0x40)
        {
          llvm::APInt::initSlowCase(v7, &v20);
        }

        *v7 = v20;
        LODWORD(v23) = v23 + 1;
        if (v21 > 0x40 && v20)
        {
          MEMORY[0x259C63150](v20, 0x1000C8000313F17);
        }
      }

      else
      {
        LODWORD(v23) = v23 + 1;
      }

      a2 += 16;
      v6 -= 16;
    }

    while (v6);
  }

  (*(*a1 + 16))(a1, v22, v23);
  v9 = v22;
  if (v23)
  {
    v10 = (v22 + 16 * v23 - 8);
    v11 = -16 * v23;
    v12 = v10;
    do
    {
      v14 = *v12;
      v12 -= 4;
      v13 = v14;
      if (v14)
      {
        if (v13 >= 0x41)
        {
          v15 = *(v10 - 1);
          if (v15)
          {
            MEMORY[0x259C63150](v15, 0x1000C8000313F17);
          }
        }
      }

      v10 = v12;
      v11 += 16;
    }

    while (v11);
    v9 = v22;
  }

  if (v9 != v24)
  {
    free(v9);
  }
}

uint64_t mlir::presburger::SimplexBase::getSnapshotBasis(mlir::presburger::SimplexBase *this)
{
  v16[4] = *MEMORY[0x277D85DE8];
  __src = v16;
  v15 = 0x800000000;
  v2 = *(this + 206);
  if (v2 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v2)
  {
    v3 = *(this + 102);
    v4 = 4 * v2;
    do
    {
      v5 = *v3;
      v13 = v5;
      if (v5 != 0x7FFFFFFF)
      {
        if (v15 < HIDWORD(v15))
        {
          *(__src + v15) = v5;
          LODWORD(v15) = v15 + 1;
        }

        else
        {
          llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(&__src, &v13);
        }
      }

      ++v3;
      v4 -= 4;
    }

    while (v4);
  }

  v6 = *(this + 94);
  if (v6 >= *(this + 95))
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<int,8u>,false>::growAndEmplaceBack<llvm::SmallVector<int,8u>>();
  }

  v7 = *(this + 46) + 48 * v6;
  *v7 = v7 + 16;
  *(v7 + 8) = 0x800000000;
  v8 = v15;
  if (v7 != &__src && v15 != 0)
  {
    if (__src == v16)
    {
      if (v15 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*v7, __src, 4 * v15);
      *(v7 + 8) = v8;
    }

    else
    {
      *v7 = __src;
      *(v7 + 8) = v8;
      *(v7 + 12) = HIDWORD(v15);
      __src = v16;
      HIDWORD(v15) = 0;
    }

    LODWORD(v15) = 0;
  }

  ++*(this + 94);
  v13 = 4;
  v10 = *(this + 82);
  if (v10 >= *(this + 83))
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(this + 320, &v13);
    v10 = (*(this + 82) - 1);
    v11 = __src;
    if (__src == v16)
    {
      return v10;
    }

    goto LABEL_23;
  }

  *(*(this + 40) + 4 * v10) = 4;
  *(this + 82) = v10 + 1;
  v11 = __src;
  if (__src != v16)
  {
LABEL_23:
    free(v11);
  }

  return v10;
}

void mlir::presburger::SimplexBase::removeLastConstraintRowOrientation(mlir::presburger::SimplexBase *this)
{
  if (*(*(this + 108) + 12 * *(this + 218) - 12) != *(this + 6) - 1)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::swapRows();
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeVertically();
}

uint64_t mlir::presburger::SimplexBase::findAnyPivotRow(mlir::presburger::SimplexBase *this, uint64_t a2)
{
  v2 = *(this + 3);
  v3 = *(this + 6);
  if (v2 < v3)
  {
    do
    {
      v4 = *(this + 5) + 16 * (a2 + *(this + 8) * v2);
      if (*(v4 + 8))
      {
        v5 = this;
        v6 = a2;
        v7 = llvm::detail::operator!=(*(this + 5) + 16 * (a2 + *(this + 8) * v2), 0);
        a2 = v6;
        v8 = v7;
        this = v5;
        if (v8)
        {
          return v2 | 0x100000000;
        }
      }

      else if (*v4)
      {
        return v2 | 0x100000000;
      }

      ++v2;
    }

    while (v3 != v2);
  }

  return 0;
}

void mlir::presburger::Simplex::undoLastConstraint(mlir::presburger::Simplex *this)
{
  v2 = *(this + 108) + 12 * *(this + 218);
  if (*(v2 - 8) == 1)
  {
    v3 = *(v2 - 12);
    PivotRow = mlir::presburger::Simplex::findPivotRow(this, 0, 0, v3);
    if ((PivotRow & 0x100000000) != 0)
    {
      v6 = PivotRow;
    }

    else
    {
      v5 = mlir::presburger::Simplex::findPivotRow(this, 0, 1, v3);
      if ((v5 & 0x100000000) != 0)
      {
        v6 = v5;
      }

      else
      {
        v6 = *(this + 3);
        v7 = *(this + 6);
        if (v6 < v7)
        {
          do
          {
            v8 = *(this + 5) + 16 * (v3 + *(this + 8) * v6);
            if (*(v8 + 8))
            {
              if (llvm::detail::operator!=(v8, 0))
              {
                goto LABEL_14;
              }
            }

            else if (*v8)
            {
              goto LABEL_14;
            }

            ++v6;
          }

          while (v7 != v6);
        }

        v6 = 0;
      }
    }

LABEL_14:
    mlir::presburger::SimplexBase::pivot(this, v6, v3);
  }

  if (*(*(this + 108) + 12 * *(this + 218) - 12) != *(this + 6) - 1)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::swapRows();
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeVertically();
}

void mlir::presburger::LexSimplexBase::undoLastConstraint(mlir::presburger::LexSimplexBase *this)
{
  v2 = *(this + 108);
  v3 = *(this + 218);
  v4 = v2 + 12 * v3;
  if (*(v4 - 8) == 1)
  {
    v5 = *(v4 - 12);
    v6 = *(this + 3);
    v7 = *(this + 6);
    if (v6 < v7)
    {
      do
      {
        v8 = *(this + 5) + 16 * (v5 + *(this + 8) * v6);
        if (*(v8 + 8))
        {
          v9 = v6;
          v10 = v5;
          v11 = llvm::detail::operator!=(v8, 0);
          v6 = v9;
          v5 = v10;
          if (v11)
          {
            goto LABEL_10;
          }
        }

        else if (*v8)
        {
          goto LABEL_10;
        }

        ++v6;
      }

      while (v7 != v6);
    }

    v6 = 0;
LABEL_10:
    mlir::presburger::SimplexBase::pivot(this, v6, v5);
    v2 = *(this + 108);
    v3 = *(this + 218);
  }

  if (*(v2 + 12 * v3 - 12) != *(this + 6) - 1)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::swapRows();
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeVertically();
}

void mlir::presburger::SimplexBase::undo(mlir::presburger::SimplexBase *a1, int a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = *(a1 + 122) + 12 * *(a1 + 246);
        if ((*(v10 - 4) & 2) != 0)
        {
          --*(a1 + 4);
        }

        if (*(v10 - 12) != *(a1 + 7) - 1)
        {
          mlir::presburger::Matrix<llvm::DynamicAPInt>::swapColumns();
        }

        mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeHorizontally();
      }
    }

    else
    {
      v11 = *(*a1 + 24);

      v11();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        *(a1 + 312) = 0;
        break;
      case 3:
        --*(a1 + 3);
        break;
      case 4:
        v3 = *(a1 + 46);
        v4 = *(a1 + 94);
        v5 = v3 + 48 * v4;
        v20 = v22;
        v21 = 0x800000000;
        if (*(v5 - 40))
        {
          llvm::SmallVectorImpl<int>::operator=(&v20, (v5 - 48));
          v4 = *(a1 + 94);
          v3 = *(a1 + 46);
        }

        v6 = v4 - 1;
        *(a1 + 94) = v6;
        v7 = (v3 + 48 * v6);
        if (*v7 != v7 + 2)
        {
          free(*v7);
        }

        v8 = v20;
        if (v21)
        {
          v9 = (v20 + 4 * v21);
          while (1)
          {
            if (*v8 >= 0)
            {
              v13 = 976;
            }

            else
            {
              v13 = 864;
            }

            v14 = (*(a1 + v13) + 12 * (*v8 ^ (*v8 >> 31)));
            if (v14[1] == 1)
            {
              goto LABEL_25;
            }

            v15 = *(a1 + 8) ? 3 : 2;
            v16 = *(a1 + 7);
            if (v15 >= v16)
            {
              goto LABEL_25;
            }

            while (1)
            {
              if (v21)
              {
                v17 = 4 * v21;
                v18 = v20;
                while (*v18 != *(*(a1 + 102) + 4 * v15))
                {
                  ++v18;
                  v17 -= 4;
                  if (!v17)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else
              {
                v18 = v20;
              }

              if (v18 != (v20 + 4 * v21))
              {
                goto LABEL_36;
              }

LABEL_44:
              v12 = *v14;
              v19 = *(a1 + 5) + 16 * (v15 + *(a1 + 8) * *v14);
              if (*(v19 + 8))
              {
                break;
              }

              if (*v19)
              {
                goto LABEL_24;
              }

LABEL_36:
              if (++v15 == v16)
              {
                goto LABEL_25;
              }
            }

            if (llvm::detail::operator==(v19, 0))
            {
              goto LABEL_36;
            }

            v12 = *v14;
LABEL_24:
            mlir::presburger::SimplexBase::pivot(a1, v12, v15);
LABEL_25:
            if (++v8 == v9)
            {
              v8 = v20;
              break;
            }
          }
        }

        if (v8 != v22)
        {
          free(v8);
        }

        break;
    }
  }
}

unsigned int *llvm::SmallVectorImpl<mlir::presburger::SimplexBase::UndoLogEntry>::insert(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v6 = *a1;
  v7 = a2 - *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = v8 + a3;
  if (*a1 + 4 * v8 == a2)
  {
    if (v10 > v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a3)
    {
      v24 = (v6 + 4 * v8);
      v25 = v24;
      v26 = a3;
      if (a3 < 8)
      {
        goto LABEL_50;
      }

      v25 = v24 + (a3 & 0xFFFFFFFFFFFFFFF8);
      v26 = a3 & 7;
      v27 = vdupq_n_s32(a4);
      v28 = v24 + 1;
      v29 = a3 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v28[-1] = v27;
        *v28 = v27;
        v28 += 2;
        v29 -= 8;
      }

      while (v29);
      if ((a3 & 0xFFFFFFFFFFFFFFF8) != a3)
      {
LABEL_50:
        do
        {
          *v25++ = a4;
          --v26;
        }

        while (v26);
      }
    }

    *(a1 + 2) = v8 + a3;
    return (v6 + v7);
  }

  if (v10 > v9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = (v6 + v7);
  v12 = 4 * v8;
  v13 = (v6 + 4 * v8);
  v14 = 4 * v8 - v7;
  v15 = v14 >> 2;
  if (a3 > v14 >> 2)
  {
    v16 = v8 + a3;
    *(a1 + 2) = v16;
    if (v12 != v7)
    {
      memcpy((v6 + 4 * v16 - 4 * v15), (v6 + v7), v14);
      v17 = (v6 + v7);
      v18 = v14 >> 2;
      if (v15 < 8)
      {
        goto LABEL_51;
      }

      v17 = &v11[v15 & 0xFFFFFFFFFFFFFFF8];
      v18 = (v14 >> 2) & 7;
      v19 = vdupq_n_s32(a4);
      v20 = (v7 + v6 + 16);
      v21 = v15 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v20[-1] = v19;
        *v20 = v19;
        v20 += 2;
        v21 -= 8;
      }

      while (v21);
      if (v15 != (v15 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_51:
        do
        {
          *v17++ = a4;
          --v18;
        }

        while (v18);
      }
    }

    v22 = a3 - v15;
    if (a3 != v15)
    {
      if (v22 < 8)
      {
        v23 = a3 - v15;
        do
        {
LABEL_29:
          *v13++ = a4;
          --v23;
        }

        while (v23);
        return v11;
      }

      v13 += v22 & 0xFFFFFFFFFFFFFFF8;
      v23 = v22 & 7;
      v34 = vdupq_n_s32(a4);
      v35 = (v12 + v6 + 16);
      v36 = v22 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v35[-1] = v34;
        *v35 = v34;
        v35 += 2;
        v36 -= 8;
      }

      while (v36);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_29;
      }
    }

    return v11;
  }

  v30 = 4 * a3;
  if (v8 + ((4 * a3) >> 2) > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v31 = &v13[v30 / 0xFFFFFFFFFFFFFFFCLL];
  if (a3)
  {
    v32 = (*a1 + 4 * v8);
    if (v30 - 4 < 0x1C)
    {
      v33 = &v13[v30 / 0xFFFFFFFFFFFFFFFCLL];
      do
      {
LABEL_35:
        v44 = *v33++;
        *v32++ = v44;
      }

      while (v33 != v13);
      goto LABEL_36;
    }

    v37 = 4 * v8 + *a1;
    v33 = &v13[v30 / 0xFFFFFFFFFFFFFFFCLL];
    if ((v37 - v31) < 0x20)
    {
      goto LABEL_35;
    }

    v38 = ((v30 - 4) >> 2) + 1;
    v39 = v38 & 0x7FFFFFFFFFFFFFF8;
    v32 = (v32 + v39 * 4);
    v33 = &v31[v39];
    v40 = (v12 - v30 + v6 + 16);
    v41 = (v37 + 16);
    v42 = v38 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v43 = *v40;
      *(v41 - 1) = *(v40 - 1);
      *v41 = v43;
      v40 += 2;
      v41 += 2;
      v42 -= 8;
    }

    while (v42);
    if (v38 != (v38 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  *(a1 + 2) = v8 + (v30 >> 2);
  if (v31 != v11)
  {
    memmove(&v11[v30 / 4], (v6 + v7), &v13[v30 / 0xFFFFFFFFFFFFFFFCLL] - v11);
  }

  if (a3)
  {
    if (a3 >= 8)
    {
      v45 = &v11[a3 & 0xFFFFFFFFFFFFFFF8];
      v46 = a3 & 7;
      v47 = vdupq_n_s32(a4);
      v48 = (v7 + v6 + 16);
      v49 = a3 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v48[-1] = v47;
        *v48 = v47;
        v48 += 2;
        v49 -= 8;
      }

      while (v49);
      if ((a3 & 0xFFFFFFFFFFFFFFF8) == a3)
      {
        return v11;
      }
    }

    else
    {
      v45 = (v6 + v7);
      v46 = a3;
    }

    do
    {
      *v45++ = a4;
      --v46;
    }

    while (v46);
  }

  return v11;
}

void mlir::presburger::SimplexBase::intersectIntegerRelation(mlir::presburger::SimplexBase *this, const mlir::presburger::IntegerRelation *a2)
{
  if (*(a2 + 84))
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  if (*(a2 + 12))
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }
}

llvm::APInt *mlir::presburger::Simplex::computeRowOptimum@<X0>(mlir::presburger::SimplexBase *a1@<X0>, _BOOL8 a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = mlir::presburger::Simplex::findPivot(a1, a3, a2);
  if ((v9 & 1) == 0)
  {
    return mlir::presburger::Simplex::computeRowOptimum(a1, a3, a4);
  }

  v10 = result;
  while (v10 != a3)
  {
    mlir::presburger::SimplexBase::pivot(a1, v10, HIDWORD(v10));
    result = mlir::presburger::Simplex::findPivot(a1, a3, a2);
    v10 = result;
    if ((v11 & 1) == 0)
    {
      return mlir::presburger::Simplex::computeRowOptimum(a1, a3, a4);
    }
  }

  *a4 = 1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = 0;
  return result;
}

mlir::presburger::SimplexBase *mlir::presburger::Simplex::computeOptimum@<X0>(mlir::presburger::SimplexBase *result@<X0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  if (*(result + 312) != 1)
  {
    mlir::presburger::SimplexBase::addRow(result, a2, a3, 0);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = 0;
  return result;
}

uint64_t mlir::presburger::Simplex::computeOptimum@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(result + 312) == 1)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
LABEL_3:
    *(a4 + 24) = 1;
    *(a4 + 32) = 0;
    return result;
  }

  v7 = result;
  if (a3[1] == 1)
  {
    v8 = *a3;
    result = mlir::presburger::Simplex::findPivotRow(result, 0, a2, *a3);
    if ((result & 0x100000000) == 0)
    {
      *a4 = 1;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_3;
    }

    mlir::presburger::SimplexBase::pivot(v7, result, v8);
  }

  result = mlir::presburger::Simplex::computeRowOptimum(v7, a2, *a3, a4);
  if (a2 == 1 && (a3[2] & 1) != 0)
  {
    if (*a4 == 1)
    {
      return mlir::presburger::Simplex::restoreRow(v7, a3);
    }

    v17 = 0;
    v18 = 0;
    v15 = 1;
    v16 = 0;
    mlir::presburger::Fraction::Fraction(&v11, &v17, &v15);
    if (v16 > 0x40 && v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }

    if (v18 > 0x40 && v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }

    result = mlir::presburger::compare((a4 + 8), &v11);
    if (v14 > 0x40 && v13)
    {
      v9 = result;
      MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      result = v9;
    }

    if (v12 > 0x40)
    {
      if (v11)
      {
        v10 = result;
        MEMORY[0x259C63150](v11, 0x1000C8000313F17);
        result = v10;
      }
    }

    if ((result & 0x80000000) != 0)
    {
      return mlir::presburger::Simplex::restoreRow(v7, a3);
    }
  }

  return result;
}

BOOL mlir::presburger::Simplex::isBoundedAlongConstraint(mlir::presburger::Simplex *this, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 312))
  {
    v2 = 0;
LABEL_3:
    result = 0;
    v10 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    goto LABEL_9;
  }

  v4 = (*(this + 108) + 12 * a2);
  if (v4[1] == 1)
  {
    v5 = *v4;
    v6 = this;
    PivotRow = mlir::presburger::Simplex::findPivotRow(this, 0, 0, *v4);
    if ((PivotRow & 0x100000000) == 0)
    {
      v2 = 1;
      goto LABEL_3;
    }

    mlir::presburger::SimplexBase::pivot(v6, PivotRow, v5);
    this = v6;
  }

  mlir::presburger::Simplex::computeRowOptimum(this, 0, *v4, &v10);
  result = v10 == 2;
  if (v14 > 0x40 && v13)
  {
    v8 = v10 == 2;
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    result = v8;
  }

LABEL_9:
  if (v12 > 0x40)
  {
    if (v11)
    {
      v9 = result;
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::presburger::Simplex::markRowRedundant(uint64_t result, _DWORD *a2)
{
  if (*a2 != *(result + 12))
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::swapRows();
  }

  *(result + 12) = *a2 + 1;
  v3 = 3;
  v2 = *(result + 328);
  if (v2 >= *(result + 332))
  {
    return llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(result + 320, &v3);
  }

  *(*(result + 320) + 4 * v2) = 3;
  *(result + 328) = v2 + 1;
  return result;
}

uint64_t mlir::presburger::Simplex::detectRedundant(uint64_t this, unsigned int a2, unsigned int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = this;
    if ((*(this + 312) & 1) == 0)
    {
      v5 = a3;
      while (1)
      {
        v6 = (*(v3 + 864) + 12 * a2);
        if (v6[1] != 1)
        {
          goto LABEL_8;
        }

        v7 = *v6;
        this = mlir::presburger::Simplex::findPivotRow(v3, 0, 1, *v6);
        if ((this & 0x100000000) != 0)
        {
          break;
        }

LABEL_4:
        ++a2;
        if (!--v5)
        {
          return this;
        }
      }

      mlir::presburger::SimplexBase::pivot(v3, this, v7);
LABEL_8:
      mlir::presburger::Simplex::computeRowOptimum(v3, 1, *v6, &v17);
      if (v17 == 1)
      {
        goto LABEL_19;
      }

      v24 = 0;
      v25 = 0;
      v22 = 1;
      v23 = 0;
      mlir::presburger::Fraction::Fraction(&v13, &v24, &v22);
      if (v23 > 0x40 && v22)
      {
        MEMORY[0x259C63150](v22, 0x1000C8000313F17);
      }

      if (v25 > 0x40 && v24)
      {
        MEMORY[0x259C63150](v24, 0x1000C8000313F17);
      }

      this = mlir::presburger::compare(&v18, &v13);
      if (v16 > 0x40 && v15)
      {
        v11 = this;
        MEMORY[0x259C63150](v15, 0x1000C8000313F17);
        this = v11;
      }

      if (v14 > 0x40 && v13)
      {
        v12 = this;
        MEMORY[0x259C63150](v13, 0x1000C8000313F17);
        this = v12;
      }

      if ((this & 0x80000000) != 0)
      {
LABEL_19:
        this = mlir::presburger::Simplex::restoreRow(v3, v6);
        v10 = v21;
        if (!v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v8 = *v6;
        if (v8 != *(v3 + 12))
        {
          mlir::presburger::Matrix<llvm::DynamicAPInt>::swapRows();
        }

        *(v3 + 12) = v8 + 1;
        LODWORD(v13) = 3;
        v9 = *(v3 + 328);
        if (v9 < *(v3 + 332))
        {
          *(*(v3 + 320) + 4 * v9) = 3;
          *(v3 + 328) = v9 + 1;
          v10 = v21;
          if (v21)
          {
            goto LABEL_32;
          }

LABEL_20:
          if (v19 > 0x40)
          {
            this = v18;
            if (v18)
            {
              this = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
            }
          }

          goto LABEL_4;
        }

        this = llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(v3 + 320, &v13);
        v10 = v21;
        if (!v21)
        {
          goto LABEL_20;
        }
      }

LABEL_32:
      if (v10 >= 0x41)
      {
        this = v20;
        if (v20)
        {
          this = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
        }
      }

      goto LABEL_20;
    }
  }

  return this;
}

uint64_t mlir::presburger::Simplex::isUnbounded(mlir::presburger::Simplex *this)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(this + 312))
  {
    return 0;
  }

  v3 = *(this + 246);
  v4 = v3 + 1;
  v18 = v20;
  *v19 = 0x800000000;
  if (v3 >= 8)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  v5 = v20;
  do
  {
    *v5 = 0;
    *(v5++ + 2) = 0;
  }

  while (v5 != &v20[v4]);
  v19[0] = v3 + 1;
  if (*(this + 246))
  {
    v6 = 0;
    do
    {
      v7 = v18 + 16 * v6;
      if (*(v7 + 2) > 0x40u && *v7)
      {
        MEMORY[0x259C63150](*v7, 0x1000C8000313F17);
      }

      *v7 = 1;
      *(v7 + 2) = 0;
      if (*(this + 312) != 1)
      {
        mlir::presburger::SimplexBase::addRow(this, v18, v19[0], 0);
      }

      v8 = v18 + 16 * v6;
      if (*(v8 + 2) > 0x40u && *v8)
      {
        MEMORY[0x259C63150](*v8, 0x1000C8000313F17);
      }

      *v8 = 0;
      *(v8 + 2) = 0;
      v6 = (v6 + 1);
    }

    while (*(this + 246) > v6);
    result = 0;
    LODWORD(v4) = v19[0];
    v9 = v18;
    if (!v19[0])
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  result = 0;
  v9 = v18;
  if (v4)
  {
LABEL_22:
    v10 = &v9[v4 - 1] + 8;
    v11 = -16 * v4;
    v12 = v10;
    do
    {
      v14 = *v12;
      v12 -= 4;
      v13 = v14;
      if (v14)
      {
        if (v13 >= 0x41)
        {
          v15 = *(v10 - 8);
          if (v15)
          {
            v16 = result;
            MEMORY[0x259C63150](v15, 0x1000C8000313F17);
            result = v16;
          }
        }
      }

      v10 = v12;
      v11 += 16;
    }

    while (v11);
    v9 = v18;
  }

LABEL_29:
  if (v9 != v20)
  {
    v17 = result;
    free(v9);
    return v17;
  }

  return result;
}

void mlir::presburger::Simplex::makeProduct(mlir::presburger::Simplex const&,mlir::presburger::Simplex const&)::$_2::operator()()
{
  v0 = *MEMORY[0x277D85DE8];
  mlir::presburger::Matrix<llvm::DynamicAPInt>::appendExtraRow();
}

{
  OUTLINED_FUNCTION_25_8();
  if (v2 > 0x40 && *v0)
  {
    OUTLINED_FUNCTION_0_14();
    MEMORY[0x259C63150]();
  }

  *v0 = v1;
  *(v0 + 8) = 0;
}

void mlir::presburger::Simplex::getRationalSample(mlir::presburger::Simplex *this@<X0>, uint64_t a2@<X8>)
{
  v25[32] = *MEMORY[0x277D85DE8];
  if (*(this + 312) == 1)
  {
    *a2 = 0;
    *(a2 + 272) = 0;
    return;
  }

  v23 = v25;
  v24 = 0x800000000;
  v4 = *(this + 246);
  if (v4 >= 9)
  {
    v21 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  if (v4)
  {
    v5 = *(this + 122);
    v6 = 12 * v4;
    do
    {
      if (v5[1] == 1)
      {
        LODWORD(v21) = 0;
        LODWORD(v19) = 1;
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::emplace_back<int,int>(&v23, &v21, &v19);
      }

      else
      {
        v7 = *(this + 8);
        v8 = *(this + 5);
        v9 = (v8 + 16 * (v7 * *v5));
        v21 = *v9;
        v22 = 0;
        v10 = *(v9 + 2);
        if (v10)
        {
          v22 = *(v9 + 2);
          if (v10 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v21, v9);
          }
        }

        v11 = (v8 + 16 * (v7 * *v5 + 1));
        v19 = *v11;
        v20 = 0;
        v12 = *(v11 + 2);
        if (v12)
        {
          v20 = *(v11 + 2);
          if (v12 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v19, v11);
          }
        }

        if (v24 >= HIDWORD(v24))
        {
          llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::growAndEmplaceBack<llvm::DynamicAPInt,llvm::DynamicAPInt&>();
        }

        mlir::presburger::Fraction::Fraction(v23 + 4 * v24, &v19, &v21);
        LODWORD(v24) = v24 + 1;
        if (v20 > 0x40 && v19)
        {
          MEMORY[0x259C63150](v19, 0x1000C8000313F17);
        }

        if (v22 > 0x40 && v21)
        {
          MEMORY[0x259C63150](v21, 0x1000C8000313F17);
        }
      }

      v5 += 3;
      v6 -= 12;
    }

    while (v6);
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x800000000;
  if (v24)
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(a2, &v23);
    v13 = v24;
    *(a2 + 272) = 1;
    v14 = v23;
    if (!v13)
    {
      goto LABEL_37;
    }

    v15 = 32 * v13;
    v16 = v23 + v15 - 16;
    v17 = -v15;
    do
    {
      if (*(v16 + 2) > 0x40u && *v16)
      {
        MEMORY[0x259C63150](*v16, 0x1000C8000313F17);
      }

      if (*(v16 - 2) > 0x40u)
      {
        v18 = *(v16 - 2);
        if (v18)
        {
          MEMORY[0x259C63150](v18, 0x1000C8000313F17);
        }
      }

      v16 -= 32;
      v17 += 32;
    }

    while (v17);
  }

  else
  {
    *(a2 + 272) = 1;
  }

  v14 = v23;
LABEL_37:
  if (v14 != v25)
  {
    free(v14);
  }
}

uint64_t llvm::SmallVectorImpl<mlir::presburger::Fraction>::emplace_back<int,int>(uint64_t a1, int *a2, int *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::growAndEmplaceBack<int,int>();
  }

  v5 = (*a1 + 32 * v4);
  v6 = *a3;
  v11 = *a2;
  v12 = 0;
  v9 = v6;
  v10 = 0;
  mlir::presburger::Fraction::Fraction(v5, &v11, &v9);
  if (v10 > 0x40 && v9)
  {
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
  }

  if (v12 > 0x40 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  v7 = (*(a1 + 8) + 1);
  *(a1 + 8) = v7;
  return *a1 + 32 * v7 - 32;
}

void mlir::presburger::Simplex::getSamplePointIfIntegral(mlir::presburger::Simplex *this@<X0>, uint64_t a2@<X8>)
{
  v42[32] = *MEMORY[0x277D85DE8];
  if (*(this + 312) == 1)
  {
    *a2 = 0;
    *(a2 + 144) = 0;
    return;
  }

  mlir::presburger::Simplex::getRationalSample(this, &v37);
  v40 = v42;
  v41 = 0x800000000;
  if (v38)
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(&v40, &v37);
  }

  if (v39[256] == 1)
  {
    v4 = v37;
    if (v38)
    {
      v5 = v37 + 32 * v38 - 16;
      v6 = -32 * v38;
      do
      {
        if (*(v5 + 2) > 0x40u && *v5)
        {
          MEMORY[0x259C63150](*v5, 0x1000C8000313F17);
        }

        if (*(v5 - 2) > 0x40u)
        {
          v7 = *(v5 - 2);
          if (v7)
          {
            MEMORY[0x259C63150](v7, 0x1000C8000313F17);
          }
        }

        v5 -= 32;
        v6 += 32;
      }

      while (v6);
      v4 = v37;
    }

    if (v4 != v39)
    {
      free(v4);
    }
  }

  v37 = v39;
  v38 = 0x800000000;
  if (*(this + 246) >= 9u)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  if (v41)
  {
    v8 = (v40 + 16);
    v9 = 32 * v41;
    while (1)
    {
      if (*(v8 - 2) || *(v8 + 2))
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v8 - 2), &v31);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v8, &v29);
        llvm::detail::SlowDynamicAPInt::operator%(&v31, &v29, &v33);
        v36 = v34;
        if (v34 > 0x40)
        {
          llvm::APInt::initSlowCase(&v35, &v33);
        }

        v35 = v33;
        if (v30 >= 0x41 && v29)
        {
          MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }

        if (v32 >= 0x41 && v31)
        {
          MEMORY[0x259C63150](v31, 0x1000C8000313F17);
        }

        if (v36)
        {
          v14 = llvm::detail::operator!=(&v35, 0);
          if (v36 >= 0x41 && v35)
          {
            v15 = v14;
            MEMORY[0x259C63150](v35, 0x1000C8000313F17);
            if (v15)
            {
              goto LABEL_76;
            }
          }

          else if (v14)
          {
LABEL_76:
            *a2 = 0;
            *(a2 + 144) = 0;
            v16 = v37;
            v17 = v38;
            if (v38)
            {
              goto LABEL_77;
            }

            goto LABEL_84;
          }
        }

        else if (v35)
        {
          goto LABEL_76;
        }
      }

      else if (*(v8 - 2) % *v8)
      {
        goto LABEL_76;
      }

      if (*(v8 - 2) || *(v8 + 2))
      {
        break;
      }

      v10 = *(v8 - 2);
      v11 = *v8;
      if (v10 == 0x8000000000000000 && v11 == -1)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v8 - 2), &v31);
        llvm::detail::SlowDynamicAPInt::operator-(&v31, &v33);
        v36 = v34;
        if (v34 > 0x40)
        {
          llvm::APInt::initSlowCase(&v35, &v33);
        }

        v35 = v33;
LABEL_69:
        if (v32 >= 0x41 && v31)
        {
          MEMORY[0x259C63150](v31, 0x1000C8000313F17);
        }

        goto LABEL_30;
      }

      v35 = v10 / v11;
      v36 = 0;
LABEL_30:
      if (v38 >= HIDWORD(v38))
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<llvm::DynamicAPInt>();
      }

      v12 = (v37 + 16 * v38);
      *v12 = v35;
      *(v12 + 2) = 0;
      v13 = v36;
      if (v36)
      {
        *(v12 + 2) = v36;
        if (v13 > 0x40)
        {
          llvm::APInt::initSlowCase(v12, &v35);
        }

        *v12 = v35;
        LODWORD(v38) = v38 + 1;
        if (v36 > 0x40 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        }
      }

      else
      {
        LODWORD(v38) = v38 + 1;
      }

      v8 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_72;
      }
    }

    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v8 - 2), &v31);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v8, &v29);
    llvm::detail::SlowDynamicAPInt::operator/(&v31, &v29, &v33);
    v36 = v34;
    if (v34 > 0x40)
    {
      llvm::APInt::initSlowCase(&v35, &v33);
    }

    v35 = v33;
    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }

    goto LABEL_69;
  }

LABEL_72:
  *a2 = a2 + 16;
  *(a2 + 8) = 0x800000000;
  if (v38)
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a2, &v37);
  }

  *(a2 + 144) = 1;
  v16 = v37;
  v17 = v38;
  if (v38)
  {
LABEL_77:
    v18 = 16 * v17;
    v19 = &v16[16 * v17 - 8];
    v20 = -v18;
    v21 = v19;
    do
    {
      v23 = *v21;
      v21 -= 4;
      v22 = v23;
      if (v23)
      {
        if (v22 >= 0x41)
        {
          v24 = *(v19 - 8);
          if (v24)
          {
            MEMORY[0x259C63150](v24, 0x1000C8000313F17);
          }
        }
      }

      v19 = v21;
      v20 += 16;
    }

    while (v20);
    v16 = v37;
  }

LABEL_84:
  if (v16 != v39)
  {
    free(v16);
  }

  v25 = v40;
  if (v41)
  {
    v26 = v40 + 32 * v41 - 16;
    v27 = -32 * v41;
    do
    {
      if (*(v26 + 2) > 0x40u && *v26)
      {
        MEMORY[0x259C63150](*v26, 0x1000C8000313F17);
      }

      if (*(v26 - 2) > 0x40u)
      {
        v28 = *(v26 - 2);
        if (v28)
        {
          MEMORY[0x259C63150](v28, 0x1000C8000313F17);
        }
      }

      v26 -= 32;
      v27 += 32;
    }

    while (v27);
    v25 = v40;
  }

  if (v25 != v42)
  {
    free(v25);
  }
}

void *mlir::presburger::Simplex::reduceBasis(mlir::presburger::Simplex *this, mlir::presburger::IntMatrix *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 3;
  v8 = 0;
  v13 = 4;
  LODWORD(v14) = 0;
  result = mlir::presburger::Fraction::Fraction(&v9, &v7, &v13);
  if (v14 > 0x40)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v8 > 0x40)
  {
    result = v7;
    if (v7)
    {
      result = MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  if (*a2 - 1 != a3)
  {
    mlir::presburger::Simplex::makeProduct(this, this, &v7);
  }

  if (v12 > 0x40)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v10 > 0x40)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::presburger::GBRSimplex::computeWidthAndDuals(mlir::presburger::SimplexBase *a1, const llvm::APInt *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::presburger::GBRSimplex::getCoeffsForDirection(a2, a3, &v4);
  mlir::presburger::SimplexBase::addRow(a1, v4, v5[0], 0);
}

void mlir::presburger::GBRSimplex::addEqualityForDirection(uint64_t a1, const llvm::APInt *a2, uint64_t a3)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 328);
  LODWORD(v15) = v4;
  v5 = *(a1 + 1104);
  if (v5 >= *(a1 + 1108))
  {
    v13 = a2;
    v14 = a3;
    llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(a1 + 1096, &v15);
    a2 = v13;
    a3 = v14;
  }

  else
  {
    *(*(a1 + 1096) + 4 * v5) = v4;
    ++*(a1 + 1104);
  }

  mlir::presburger::GBRSimplex::getCoeffsForDirection(a2, a3, &v15);
  mlir::presburger::SimplexBase::addEquality(a1, v15, v16);
  v6 = v15;
  if (v16)
  {
    v7 = (v15 + 16 * v16 - 8);
    v8 = -16 * v16;
    v9 = v7;
    do
    {
      v11 = *v9;
      v9 -= 4;
      v10 = v11;
      if (v11)
      {
        if (v10 >= 0x41)
        {
          v12 = *(v7 - 1);
          if (v12)
          {
            MEMORY[0x259C63150](v12, 0x1000C8000313F17);
          }
        }
      }

      v7 = v9;
      v8 += 16;
    }

    while (v8);
    v6 = v15;
  }

  if (v6 != v17)
  {
    free(v6);
  }
}

void mlir::presburger::Simplex::findIntegerSample(mlir::presburger::Simplex *this@<X0>, _BYTE *a2@<X8>)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(this + 312) == 1)
  {
    *a2 = 0;
    a2[144] = 0;
    return;
  }

  mlir::presburger::IntMatrix::identity(*(this + 246), v58);
  v55 = v57;
  v56 = 0x800000000;
  v52 = v54;
  v53 = 0x800000000;
  v49 = v51;
  v50 = 0x800000000;
  if (v58[0] >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (HIDWORD(v50) < v58[0])
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  v4 = 0;
  do
  {
    if (v4 == v58[0])
    {
      mlir::presburger::Simplex::getSamplePointIfIntegral(this, a2);
      if (a2[144])
      {
        goto LABEL_66;
      }

      --v4;
      continue;
    }

    if (v53 <= v4)
    {
      mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
    }

    v5 = *(v55 + v56 - 1);
    for (i = *(this + 82); i > v5; *(this + 82) = i)
    {
      mlir::presburger::SimplexBase::undo(this, *(*(this + 40) + 4 * i - 4));
      i = *(this + 82) - 1;
    }

    v7 = v49 + 16 * v50;
    v9 = *(v7 - 2);
    v8 = (v7 - 16);
    v41 = v9;
    v42 = 0;
    v10 = *(v8 + 2);
    if (v10)
    {
      v42 = *(v8 + 2);
      if (v10 > 0x40)
      {
        llvm::APInt::initSlowCase(&v41, v8);
      }

      v41 = *v8;
    }

    v11 = v49 + 16 * v50;
    v12 = v11 - 16;
    v64 = 1;
    LODWORD(v65) = 0;
    if (*(v11 - 2) || __OFADD__(*v12, 1))
    {
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v11 - 16), &v47);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v64, &v45);
      llvm::detail::SlowDynamicAPInt::operator+(&v47, &v45, &v43);
      v63 = v44;
      if (v44 > 0x40)
      {
        llvm::APInt::initSlowCase(&v62, &v43);
      }

      v62 = v43;
      if (v46 >= 0x41 && v45)
      {
        MEMORY[0x259C63150](v45, 0x1000C8000313F17);
      }

      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x259C63150](v47, 0x1000C8000313F17);
      }
    }

    else
    {
      v62 = (*v12 + 1);
      v63 = 0;
    }

    if (v65 > 0x40 && v64)
    {
      MEMORY[0x259C63150](v64, 0x1000C8000313F17);
    }

    if (v63)
    {
      mlir::presburger::detail::getNonOrthogonalVector(v11 - 2, v63, &v62, (v11 - 16));
      v14 = v63;
      if (v63)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v13 = v62;
      if (*(v11 - 2) > 0x40u && *v12)
      {
        MEMORY[0x259C63150](*v12, 0x1000C8000313F17);
        *(v11 - 2) = v13;
        *(v11 - 2) = 0;
        v14 = v63;
        if (v63)
        {
LABEL_58:
          if (v14 >= 0x41 && v62)
          {
            MEMORY[0x259C63150](v62, 0x1000C8000313F17);
          }
        }
      }

      else
      {
        *(v11 - 2) = v62;
        *(v11 - 2) = 0;
        v14 = v63;
        if (v63)
        {
          goto LABEL_58;
        }
      }
    }

    v15 = v52 + 16 * v53;
    v16 = v15 - 16;
    if (v42 || *(v15 - 2))
    {
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v41, &v43);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v16, &v47);
      v19 = llvm::detail::SlowDynamicAPInt::operator>(&v43, &v47);
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x259C63150](v47, 0x1000C8000313F17);
      }

      if (v44 >= 0x41 && v43)
      {
        MEMORY[0x259C63150](v43, 0x1000C8000313F17);
      }

      if (!v19)
      {
LABEL_40:
        mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
      }
    }

    else if (v41 <= *v16)
    {
      goto LABEL_40;
    }

    LODWORD(v56) = v56 - 1;
    LODWORD(v50) = v50 - 1;
    v17 = v49 + 16 * v50;
    if (*(v17 + 2) > 0x40u && *v17)
    {
      MEMORY[0x259C63150](*v17, 0x1000C8000313F17);
    }

    LODWORD(v53) = v53 - 1;
    v18 = v52 + 16 * v53;
    if (*(v18 + 2) > 0x40u && *v18)
    {
      MEMORY[0x259C63150](*v18, 0x1000C8000313F17);
    }

    --v4;
    if (v42 > 0x40 && v41)
    {
      MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    }
  }

  while (v4 != -1);
  *a2 = 0;
  a2[144] = 0;
LABEL_66:
  v20 = v49;
  if (v50)
  {
    v21 = (v49 + 16 * v50 - 8);
    v22 = -16 * v50;
    v23 = v21;
    do
    {
      v25 = *v23;
      v23 -= 4;
      v24 = v25;
      if (v25)
      {
        if (v24 >= 0x41)
        {
          v26 = *(v21 - 1);
          if (v26)
          {
            MEMORY[0x259C63150](v26, 0x1000C8000313F17);
          }
        }
      }

      v21 = v23;
      v22 += 16;
    }

    while (v22);
    v20 = v49;
  }

  if (v20 != v51)
  {
    free(v20);
  }

  v27 = v52;
  if (v53)
  {
    v28 = (v52 + 16 * v53 - 8);
    v29 = -16 * v53;
    v30 = v28;
    do
    {
      v32 = *v30;
      v30 -= 4;
      v31 = v32;
      if (v32)
      {
        if (v31 >= 0x41)
        {
          v33 = *(v28 - 1);
          if (v33)
          {
            MEMORY[0x259C63150](v33, 0x1000C8000313F17);
          }
        }
      }

      v28 = v30;
      v29 += 16;
    }

    while (v29);
    v27 = v52;
  }

  if (v27 != v54)
  {
    free(v27);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  v34 = v59;
  if (v60)
  {
    v35 = (v59 + 16 * v60 - 8);
    v36 = -16 * v60;
    v37 = v35;
    do
    {
      v39 = *v37;
      v37 -= 4;
      v38 = v39;
      if (v39)
      {
        if (v38 >= 0x41)
        {
          v40 = *(v35 - 1);
          if (v40)
          {
            MEMORY[0x259C63150](v40, 0x1000C8000313F17);
          }
        }
      }

      v35 = v37;
      v36 += 16;
    }

    while (v36);
    v34 = v59;
  }

  if (v34 != &v61)
  {
    free(v34);
  }
}

void *std::tuple<mlir::presburger::MaybeOptimum<llvm::DynamicAPInt> &,mlir::presburger::MaybeOptimum<llvm::DynamicAPInt> &>::operator=[abi:nn200100]<mlir::presburger::MaybeOptimum<llvm::DynamicAPInt>,mlir::presburger::MaybeOptimum<llvm::DynamicAPInt>,0>(void *result, _DWORD *a2)
{
  v2 = *result;
  **result = *a2;
  if (!a2[4])
  {
    v3 = *(a2 + 1);
    if (v2[4] > 0x40u)
    {
      v12 = *(v2 + 1);
      if (v12)
      {
        v14 = a2;
        v15 = result;
        MEMORY[0x259C63150](v12, 0x1000C8000313F17);
        a2 = v14;
        result = v15;
      }
    }

    *(v2 + 1) = v3;
    v2[4] = 0;
    v4 = result[1];
    *v4 = a2[6];
    v5 = a2[10];
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = result;
    std::tuple<mlir::presburger::MaybeOptimum<llvm::DynamicAPInt> &,mlir::presburger::MaybeOptimum<llvm::DynamicAPInt> &>::operator=[abi:nn200100]<mlir::presburger::MaybeOptimum<llvm::DynamicAPInt>,mlir::presburger::MaybeOptimum<llvm::DynamicAPInt>,0>(v4, v5, (a2 + 8), v4 + 2);
    return v11;
  }

  v7 = v2 + 2;
  v8 = result;
  v9 = v2;
  v10 = a2;
  std::tuple<mlir::presburger::MaybeOptimum<llvm::DynamicAPInt> &,mlir::presburger::MaybeOptimum<llvm::DynamicAPInt> &>::operator=[abi:nn200100]<mlir::presburger::MaybeOptimum<llvm::DynamicAPInt>,mlir::presburger::MaybeOptimum<llvm::DynamicAPInt>,0>(v9, a2[4], (a2 + 2), v7);
  a2 = v10;
  result = v8;
  v4 = v8[1];
  *v4 = a2[6];
  v5 = a2[10];
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = *(a2 + 4);
  if (v4[4] > 0x40u && (v13 = *(v4 + 1)) != 0)
  {
    v16 = result;
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    result = v16;
    *(v4 + 1) = v6;
    v4[4] = 0;
  }

  else
  {
    *(v4 + 1) = v6;
    v4[4] = 0;
  }

  return result;
}

uint64_t mlir::presburger::Simplex::isFlatAlong(mlir::presburger::SimplexBase *a1, int a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 312) != 1)
  {
    mlir::presburger::SimplexBase::addRow(a1, a2, a3, 0);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = 0;
  if (*(a1 + 312) != 1)
  {
    mlir::presburger::SimplexBase::addRow(a1, a2, a3, 0);
  }

  v4 = 0;
  v5 = 0;
  v6 = 1;
  v7 = 0;
  return 0;
}

void mlir::presburger::SimplexBase::print(mlir::presburger::SimplexBase *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v108 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 6uLL)
  {
    *(v4 + 3) = 540876915;
    *v4 = 1937207154;
    *(a2 + 4) += 7;
    v6 = llvm::raw_ostream::operator<<(a2, *(this + 6));
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 0xB)
    {
LABEL_3:
      *(v7 + 8) = 540876915;
      *v7 = *", columns = ";
      *(v6 + 4) += 12;
      v8 = llvm::raw_ostream::operator<<(v6, *(v3 + 7));
      v9 = *(v8 + 4);
      if (*(v8 + 3) != v9)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(a2, "rows = ", 7uLL);
    v6 = llvm::raw_ostream::operator<<(v5, *(v3 + 6));
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 0xB)
    {
      goto LABEL_3;
    }
  }

  v11 = llvm::raw_ostream::write(v6, ", columns = ", 0xCuLL);
  v8 = llvm::raw_ostream::operator<<(v11, *(v3 + 7));
  v9 = *(v8 + 4);
  if (*(v8 + 3) != v9)
  {
LABEL_4:
    *v9 = 10;
    ++*(v8 + 4);
    v10 = *(a2 + 4);
    if (*(v3 + 312) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  llvm::raw_ostream::write(v8, "\n", 1uLL);
  v10 = *(a2 + 4);
  if (*(v3 + 312) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (*(a2 + 3) - v10 > 0x15uLL)
  {
    qmemcpy(v10, "Simplex marked empty!\n", 22);
    v12 = *(a2 + 3);
    v10 = (*(a2 + 4) + 22);
    *(a2 + 4) = v10;
    if ((v12 - v10) <= 4)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  llvm::raw_ostream::write(a2, "Simplex marked empty!\n", 0x16uLL);
  v10 = *(a2 + 4);
LABEL_11:
  if (*(a2 + 3) - v10 <= 4uLL)
  {
LABEL_12:
    llvm::raw_ostream::write(a2, "var: ", 5uLL);
    goto LABEL_15;
  }

LABEL_14:
  v10[4] = 32;
  *v10 = 980574582;
  *(a2 + 4) += 5;
LABEL_15:
  v89 = v3;
  if (!*(v3 + 246))
  {
    goto LABEL_42;
  }

  v13 = *(v3 + 122);
  if (v13[1])
  {
    v14 = "c";
  }

  else
  {
    v14 = "r";
  }

  v15 = *(a2 + 4);
  if (*(a2 + 3) == v15)
  {
    llvm::raw_ostream::write(a2, v14, 1uLL);
    llvm::raw_ostream::operator<<(a2, *v13);
    if ((v13[2] & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v15 = *v14;
    ++*(a2 + 4);
    llvm::raw_ostream::operator<<(a2, *v13);
    if ((v13[2] & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v16 = *(a2 + 4);
  if ((*(a2 + 3) - v16) >= 6)
  {
    *(v16 + 4) = 23856;
    *v16 = 1027496736;
    *(a2 + 4) += 6;
    if (*(v3 + 246) < 2u)
    {
      goto LABEL_42;
    }

    goto LABEL_26;
  }

  llvm::raw_ostream::write(a2, " [>=0]", 6uLL);
LABEL_25:
  if (*(v3 + 246) < 2u)
  {
    goto LABEL_42;
  }

LABEL_26:
  v17 = 0;
  v18 = 1;
  do
  {
    v19 = *(a2 + 4);
    if (*(a2 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      v20 = (*(a2 + 4) + 2);
      *(a2 + 4) = v20;
    }

    else
    {
      llvm::raw_ostream::write(a2, ", ", 2uLL);
      v20 = *(a2 + 4);
    }

    v21 = *(v3 + 122);
    if (*(v21 + v17 + 16))
    {
      v22 = "c";
    }

    else
    {
      v22 = "r";
    }

    if (*(a2 + 3) == v20)
    {
      llvm::raw_ostream::write(a2, v22, 1uLL);
    }

    else
    {
      *v20 = *v22;
      ++*(a2 + 4);
    }

    llvm::raw_ostream::operator<<(a2, *(v21 + v17 + 12));
    v3 = v89;
    if (*(v21 + v17 + 20))
    {
      v23 = *(a2 + 4);
      if ((*(a2 + 3) - v23) > 5)
      {
        *(v23 + 4) = 23856;
        *v23 = 1027496736;
        *(a2 + 4) += 6;
      }

      else
      {
        llvm::raw_ostream::write(a2, " [>=0]", 6uLL);
      }
    }

    ++v18;
    v17 += 12;
  }

  while (*(v89 + 246) > v18);
LABEL_42:
  v24 = *(a2 + 4);
  if ((*(a2 + 3) - v24) > 5)
  {
    *(v24 + 4) = 8250;
    *v24 = 1852793610;
    *(a2 + 4) += 6;
    if (!*(v3 + 218))
    {
      goto LABEL_72;
    }
  }

  else
  {
    llvm::raw_ostream::write(a2, "\ncon: ", 6uLL);
    if (!*(v3 + 218))
    {
      goto LABEL_72;
    }
  }

  v25 = *(v3 + 108);
  if (v25[1])
  {
    v26 = "c";
  }

  else
  {
    v26 = "r";
  }

  v27 = *(a2 + 4);
  if (*(a2 + 3) == v27)
  {
    llvm::raw_ostream::write(a2, v26, 1uLL);
    llvm::raw_ostream::operator<<(a2, *v25);
    if ((v25[2] & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    *v27 = *v26;
    ++*(a2 + 4);
    llvm::raw_ostream::operator<<(a2, *v25);
    if ((v25[2] & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v28 = *(a2 + 4);
  if ((*(a2 + 3) - v28) >= 6)
  {
    *(v28 + 4) = 23856;
    *v28 = 1027496736;
    *(a2 + 4) += 6;
    if (*(v3 + 218) < 2u)
    {
      goto LABEL_72;
    }

    goto LABEL_56;
  }

  llvm::raw_ostream::write(a2, " [>=0]", 6uLL);
LABEL_55:
  if (*(v3 + 218) < 2u)
  {
    goto LABEL_72;
  }

LABEL_56:
  v29 = 0;
  v30 = 1;
  do
  {
    v31 = *(a2 + 4);
    if (*(a2 + 3) - v31 > 1uLL)
    {
      *v31 = 8236;
      v32 = (*(a2 + 4) + 2);
      *(a2 + 4) = v32;
    }

    else
    {
      llvm::raw_ostream::write(a2, ", ", 2uLL);
      v32 = *(a2 + 4);
    }

    v33 = *(v3 + 108);
    if (*(v33 + v29 + 16))
    {
      v34 = "c";
    }

    else
    {
      v34 = "r";
    }

    if (*(a2 + 3) == v32)
    {
      llvm::raw_ostream::write(a2, v34, 1uLL);
    }

    else
    {
      *v32 = *v34;
      ++*(a2 + 4);
    }

    llvm::raw_ostream::operator<<(a2, *(v33 + v29 + 12));
    v3 = v89;
    if (*(v33 + v29 + 20))
    {
      v35 = *(a2 + 4);
      if ((*(a2 + 3) - v35) > 5)
      {
        *(v35 + 4) = 23856;
        *v35 = 1027496736;
        *(a2 + 4) += 6;
      }

      else
      {
        llvm::raw_ostream::write(a2, " [>=0]", 6uLL);
      }
    }

    ++v30;
    v29 += 12;
  }

  while (*(v89 + 218) > v30);
LABEL_72:
  v36 = *(a2 + 4);
  v87 = a2;
  if (v36 >= *(a2 + 3))
  {
    llvm::raw_ostream::write(a2, 10);
    v37 = *(v3 + 6);
    if (!v37)
    {
      goto LABEL_83;
    }

    goto LABEL_76;
  }

  *(a2 + 4) = v36 + 1;
  *v36 = 10;
  v37 = *(v3 + 6);
  if (v37)
  {
LABEL_76:
    v38 = a2;
    v39 = *(a2 + 4);
    if (*(a2 + 3) == v39)
    {
      v38 = llvm::raw_ostream::write(a2, "r", 1uLL);
    }

    else
    {
      *v39 = 114;
      ++*(a2 + 4);
    }

    v40 = llvm::raw_ostream::operator<<(v38, 0);
    v41 = *(v40 + 4);
    if (*(v40 + 3) - v41 >= 2uLL)
    {
      *v41 = 8250;
      *(v40 + 4) += 2;
      llvm::raw_ostream::operator<<(v40, **(v89 + 96));
      if (v37 == 1)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v42 = llvm::raw_ostream::write(v40, ": ", 2uLL);
      llvm::raw_ostream::operator<<(v42, **(v89 + 96));
      if (v37 == 1)
      {
        goto LABEL_83;
      }
    }

    for (i = 1; v37 != i; ++i)
    {
      v81 = *(a2 + 4);
      if (*(a2 + 3) - v81 > 1uLL)
      {
        *v81 = 8236;
        *(a2 + 4) += 2;
        v82 = *(a2 + 4);
        if (*(a2 + 3) != v82)
        {
LABEL_166:
          *v82 = 114;
          ++*(a2 + 4);
          v83 = llvm::raw_ostream::operator<<(a2, i);
          v84 = *(v83 + 4);
          if (*(v83 + 3) - v84 <= 1uLL)
          {
            goto LABEL_170;
          }

          goto LABEL_162;
        }
      }

      else
      {
        llvm::raw_ostream::write(a2, ", ", 2uLL);
        v82 = *(a2 + 4);
        if (*(a2 + 3) != v82)
        {
          goto LABEL_166;
        }
      }

      v85 = llvm::raw_ostream::write(a2, "r", 1uLL);
      v83 = llvm::raw_ostream::operator<<(v85, i);
      v84 = *(v83 + 4);
      if (*(v83 + 3) - v84 <= 1uLL)
      {
LABEL_170:
        v83 = llvm::raw_ostream::write(v83, ": ", 2uLL);
        goto LABEL_163;
      }

LABEL_162:
      *v84 = 8250;
      *(v83 + 4) += 2;
LABEL_163:
      llvm::raw_ostream::operator<<(v83, *(*(v89 + 96) + 4 * i));
    }
  }

LABEL_83:
  v43 = a2;
  v44 = *(a2 + 4);
  if (v44 >= *(a2 + 3))
  {
    llvm::raw_ostream::write(a2, 10);
    v45 = v89;
    v46 = *(a2 + 4);
    if ((*(a2 + 3) - v46) > 0x13)
    {
LABEL_85:
      *(v46 + 16) = 1953721967;
      *v46 = *"c0: denom, c1: const";
      *(a2 + 4) += 20;
      v47 = *(v45 + 7);
      if (v47 < 3)
      {
        goto LABEL_97;
      }

      goto LABEL_89;
    }
  }

  else
  {
    *(a2 + 4) = v44 + 1;
    *v44 = 10;
    v45 = v89;
    v46 = *(a2 + 4);
    if ((*(a2 + 3) - v46) > 0x13)
    {
      goto LABEL_85;
    }
  }

  llvm::raw_ostream::write(a2, "c0: denom, c1: const", 0x14uLL);
  v47 = *(v45 + 7);
  if (v47 >= 3)
  {
LABEL_89:
    for (j = 2; v47 != j; ++j)
    {
      v49 = *(a2 + 4);
      if ((*(a2 + 3) - v49) > 2)
      {
        *(v49 + 2) = 99;
        *v49 = 8236;
        *(a2 + 4) += 3;
        v51 = llvm::raw_ostream::operator<<(a2, j);
        v52 = *(v51 + 4);
        if (*(v51 + 3) - v52 <= 1uLL)
        {
LABEL_96:
          v51 = llvm::raw_ostream::write(v51, ": ", 2uLL);
          goto LABEL_91;
        }
      }

      else
      {
        v50 = llvm::raw_ostream::write(a2, ", c", 3uLL);
        v51 = llvm::raw_ostream::operator<<(v50, j);
        v52 = *(v51 + 4);
        if (*(v51 + 3) - v52 <= 1uLL)
        {
          goto LABEL_96;
        }
      }

      *v52 = 8250;
      *(v51 + 4) += 2;
LABEL_91:
      llvm::raw_ostream::operator<<(v51, *(*(v45 + 102) + 4 * j));
    }
  }

LABEL_97:
  v53 = *(a2 + 4);
  if (v53 >= *(a2 + 3))
  {
    llvm::raw_ostream::write(a2, 10);
  }

  else
  {
    *(a2 + 4) = v53 + 1;
    *v53 = 10;
  }

  v90 = 0;
  v92 = 1;
  LOWORD(__p) = 45;
  v54 = *(v45 + 6);
  if (!v54)
  {
    goto LABEL_155;
  }

  v55 = *(v45 + 7);
  if (!v55)
  {
    goto LABEL_141;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  v86 = v54;
LABEL_103:
  v59 = 0;
  v88 = v55;
  do
  {
    v60 = (*(v89 + 5) + 16 * (v59 + *(v89 + 8) * v58));
    v106 = *v60;
    v107 = 0;
    v61 = *(v60 + 2);
    if (v61)
    {
      v107 = *(v60 + 2);
      if (v61 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v106, v60);
      }
    }

    __s = 0;
    v102 = 0;
    v103 = 0;
    v94 = 0;
    v98 = 0;
    v99 = 1;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v93 = &unk_2868A3EF8;
    p_s = &__s;
    llvm::raw_ostream::SetBufferAndMode(&v93, 0, 0, 0);
    llvm::DynamicAPInt::print(&v106, &v93);
    llvm::raw_ostream::~raw_ostream(&v93);
    v62 = SHIBYTE(v103);
    if ((SHIBYTE(v103) & 0x8000000000000000) != 0)
    {
      v64 = __s;
      v66 = v102;
      if (!v102)
      {
        goto LABEL_128;
      }

      v65 = __s + v102;
      if (v102 < 1)
      {
        v69 = __s + v102;
        goto LABEL_117;
      }

      v63 = __p;
    }

    else
    {
      if (!HIBYTE(v103))
      {
        goto LABEL_129;
      }

      v63 = __p;
      v64 = &__s;
      v65 = &__s + SHIBYTE(v103);
      v66 = SHIBYTE(v103);
    }

    v67 = v63;
    v68 = v64;
    do
    {
      v69 = memchr(v68, v67, v66);
      if (!v69)
      {
        break;
      }

      if (*v69 == __p)
      {
        goto LABEL_116;
      }

      v68 = v69 + 1;
      v66 = v65 - v68;
    }

    while (v65 - v68 > 0);
    v69 = v65;
LABEL_116:
    v55 = v88;
LABEL_117:
    if (v69 == v65)
    {
      v70 = 0;
    }

    else
    {
      v70 = v69 - v64 + 1;
    }

    if (v57 <= v70)
    {
      v57 = v70;
    }

    v71 = v102;
    if (v62 >= 0)
    {
      v71 = v62;
    }

    v72 = v71 - v70;
    if (v56 <= v72)
    {
      v56 = v72;
    }

    v90 = __PAIR64__(v56, v57);
    if (v62 < 0)
    {
      v64 = __s;
LABEL_128:
      operator delete(v64);
    }

LABEL_129:
    if (v107 > 0x40 && v106)
    {
      MEMORY[0x259C63150](v106, 0x1000C8000313F17);
    }

    ++v59;
  }

  while (v59 != v55);
  while (++v58 != v86)
  {
    v55 = *(v89 + 7);
    if (v55)
    {
      goto LABEL_103;
    }
  }

  v45 = v89;
  v54 = *(v89 + 6);
  v43 = v87;
  if (v54)
  {
LABEL_141:
    for (k = 0; k != v54; ++k)
    {
      while (1)
      {
        v74 = *(v45 + 7);
        if (v74)
        {
          for (m = 0; m != v74; ++m)
          {
            v76 = (*(v45 + 5) + 16 * (m + k * *(v45 + 8)));
            v104 = *v76;
            v105 = 0;
            v77 = *(v76 + 2);
            if (v77)
            {
              v105 = *(v76 + 2);
              if (v77 >= 0x41)
              {
                llvm::APInt::initSlowCase(&v104, v76);
              }
            }

            mlir::presburger::printWithPrintMetrics<llvm::DynamicAPInt>(v43, &v104, 1, &v90);
            if (v105 > 0x40)
            {
              if (v104)
              {
                MEMORY[0x259C63150](v104, 0x1000C8000313F17);
              }
            }
          }
        }

        v78 = *(v43 + 4);
        if (v78 >= *(v43 + 3))
        {
          break;
        }

        *(v43 + 4) = v78 + 1;
        *v78 = 10;
        if (++k == v54)
        {
          goto LABEL_155;
        }
      }

      llvm::raw_ostream::write(v43, 10);
    }
  }

LABEL_155:
  v79 = *(v43 + 4);
  if (v79 >= *(v43 + 3))
  {
    llvm::raw_ostream::write(v43, 10);
    if (v92 < 0)
    {
      goto LABEL_159;
    }
  }

  else
  {
    *(v43 + 4) = v79 + 1;
    *v79 = 10;
    if (v92 < 0)
    {
LABEL_159:
      operator delete(__p);
    }
  }
}

void mlir::presburger::SimplexBase::dump(mlir::presburger::SimplexBase *this)
{
  v2 = llvm::errs(this);

  mlir::presburger::SimplexBase::print(this, v2);
}

uint64_t mlir::presburger::Simplex::isRationalSubsetOf(mlir::presburger::Simplex *this, const mlir::presburger::IntegerRelation *a2)
{
  if (*(this + 312))
  {
    return 1;
  }

  if (*(a2 + 84))
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  if (*(a2 + 12))
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  return 1;
}

uint64_t mlir::presburger::Simplex::findIneqType(mlir::presburger::SimplexBase *a1, int a2, int a3)
{
  if (*(a1 + 312) != 1)
  {
    mlir::presburger::SimplexBase::addRow(a1, a2, a3, 0);
  }

  return 1;
}

uint64_t mlir::presburger::Simplex::isRedundantEquality(mlir::presburger::SimplexBase *a1, int a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 312) != 1)
  {
    mlir::presburger::SimplexBase::addRow(a1, a2, a3, 0);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = 0;
  if (*(a1 + 312) != 1)
  {
    mlir::presburger::SimplexBase::addRow(a1, a2, a3, 0);
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 0;
  return 0;
}

void mlir::presburger::LexSimplexBase::~LexSimplexBase(mlir::presburger::LexSimplexBase *this)
{
  mlir::presburger::SimplexBase::~SimplexBase(this);

  JUMPOUT(0x259C63180);
}

void mlir::presburger::Simplex::~Simplex(mlir::presburger::Simplex *this)
{
  mlir::presburger::SimplexBase::~SimplexBase(this);

  JUMPOUT(0x259C63180);
}

char *llvm::SmallVectorImpl<mlir::presburger::SimplexBase::Unknown>::insert<mlir::presburger::SimplexBase::Unknown const*,void>(uint64_t *a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = a4 - __src;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a4 - __src) >> 2);
  v13 = v12 + v9;
  if (*a1 + 12 * v9 == a2)
  {
    if (v13 > v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v5 != a4)
    {
      memcpy((v7 + 12 * v9), v5, v11);
      LODWORD(v9) = *(a1 + 2);
      v7 = *a1;
    }

    *(a1 + 2) = v9 + v12;
    return (v7 + v8);
  }

  if (v13 > v10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v14 = (v7 + v8);
  v15 = 12 * v9;
  v16 = (v7 + 12 * v9);
  v17 = 12 * v9 - v8;
  v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 2);
  if (v18 < v12)
  {
    v19 = v9 + v12;
    *(a1 + 2) = v19;
    if (v15 != v8)
    {
      memcpy((v7 + 12 * v19 - 4 * (v17 >> 2)), v14, v17);
      v20 = v14;
      do
      {
        v21 = *v5;
        v20[8] = v5[8];
        *v20 = v21;
        v20 += 12;
        v5 += 12;
        --v18;
      }

      while (v18);
    }

    if (v5 != a4)
    {
      memcpy(v16, v5, a4 - v5);
    }

    return v14;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((12 * v12) >> 2) + v9 > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4 != v5)
  {
    v22 = *a1 + 12 * v9;
    v23 = -12 * v12;
    do
    {
      v24 = *&v16[v23];
      *(v22 + 8) = *&v16[v23 + 8];
      *v22 = v24;
      v22 += 12;
      v23 += 12;
    }

    while (v23);
    LODWORD(v9) = *(a1 + 2);
  }

  *(a1 + 2) = v9 - 1431655765 * ((12 * v12) >> 2);
  if (&v16[-12 * v12] != v14)
  {
    memmove(&v14[12 * v12], v14, &v16[-12 * v12] - v14 - 3);
  }

  if (a4 == v5)
  {
    return v14;
  }

  return memmove(v14, v5, v11 - 3);
}

void mlir::presburger::GBRSimplex::getCoeffsForDirection(const llvm::APInt *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a1;
  v23 = *MEMORY[0x277D85DE8];
  *a3 = a3 + 16;
  *(a3 + 8) = 0x800000000;
  if (((16 * a2) >> 4) >= 9)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  v5 = 0;
  v6 = 16 * a2;
  if (a2)
  {
    v7 = *a3;
    v8 = 16 * a2;
    v9 = a1;
    do
    {
      *v7 = *v9;
      *(v7 + 2) = 0;
      v10 = *(v9 + 2);
      if (v10)
      {
        *(v7 + 2) = v10;
        if (v10 > 0x40)
        {
          llvm::APInt::initSlowCase(v7, v9);
        }

        *v7 = *v9;
      }

      v9 = (v9 + 16);
      v7 = (v7 + 16);
      v8 -= 16;
    }

    while (v8);
    v5 = *(a3 + 8);
  }

  *(a3 + 8) = v5 + a2;
  if (a2 + 1 > *(a3 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  if (a2)
  {
    while (1)
    {
      if (*(v3 + 8) || *v3 == 0x8000000000000000)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v3, &v17);
        llvm::detail::SlowDynamicAPInt::operator-(&v17, &v19);
        v22 = v20;
        if (v20 > 0x40)
        {
          llvm::APInt::initSlowCase(&v21, &v19);
        }

        v21 = v19;
        if (v18 >= 0x41 && v17)
        {
          MEMORY[0x259C63150](v17, 0x1000C8000313F17);
        }
      }

      else
      {
        v21 = -*v3;
        v22 = 0;
      }

      v11 = *(a3 + 8);
      if (v11 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<llvm::DynamicAPInt>();
      }

      v12 = (*a3 + 16 * v11);
      *v12 = v21;
      *(v12 + 2) = 0;
      v13 = v22;
      if (v22)
      {
        break;
      }

      ++*(a3 + 8);
      v14 = v22;
      if (v22)
      {
        goto LABEL_33;
      }

LABEL_20:
      v3 += 16;
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_36;
      }
    }

    *(v12 + 2) = v22;
    if (v13 > 0x40)
    {
      llvm::APInt::initSlowCase(v12, &v21);
    }

    *v12 = v21;
    ++*(a3 + 8);
    v14 = v22;
    if (!v22)
    {
      goto LABEL_20;
    }

LABEL_33:
    if (v14 >= 0x41 && v21)
    {
      MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }

    goto LABEL_20;
  }

LABEL_36:
  LODWORD(v19) = 0;
  v15 = *(a3 + 8);
  if (v15 >= *(a3 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<int>();
  }

  v16 = *a3 + 16 * v15;
  *v16 = 0;
  *(v16 + 8) = 0;
  ++*(a3 + 8);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::presburger::SimplexBase::Unknown,true>::growAndEmplaceBack<mlir::presburger::SimplexBase::Orientation,BOOL,unsigned int>(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, unsigned int *a4)
{
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *a1 + 12 * v5;
  *v6 = *a4 | (*a2 << 32);
  *(v6 + 8) = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 12 * v6 - 12;
}

unint64_t llvm::SmallBitVector::find_next(llvm::SmallBitVector *this, int a2)
{
  v2 = *this;
  if (*this)
  {
    v6 = v2 >> 58;
    v7 = (-1 << (a2 + 1)) & (v2 >> 1) & ~(-1 << (v2 >> 58));
    v8 = v6 <= (a2 + 1) || v7 == 0;
    if (v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return __clz(__rbit64(v7));
    }
  }

  else
  {
    v3 = a2 + 1;
    v4 = *(v2 + 64);
    if (a2 + 1 == v4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v3 >> 6;
      v10 = v4 - 1;
      v11 = v10 >> 6;
      if (v9 <= v11)
      {
        v12 = *v2;
        v13 = v3 & 0x3F;
        v8 = v13 == 0;
        v14 = 0xFFFFFFFFFFFFFFFFLL >> -v13;
        if (v8)
        {
          v15 = -1;
        }

        else
        {
          v15 = ~v14;
        }

        v16 = 0xFFFFFFFFFFFFFFFFLL >> ~v10;
        if (v9 == v11)
        {
          v17 = v16;
        }

        else
        {
          v17 = -1;
        }

        v18 = v17 & *(v12 + 8 * v9) & v15;
        if (v18)
        {
          return __clz(__rbit64(v18)) | (v9 << 6);
        }

        else
        {
          v19 = v9 + 1;
          if (v9 + 1 == v11 + 1)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            v20 = v11 - v9;
            for (i = -1; ; --i)
            {
              v22 = i ? -1 : v15;
              v23 = --v20 ? -1 : v16;
              v24 = v22 & v23 & *(v12 + 8 * v19);
              if (v24)
              {
                break;
              }

              ++v19;
              result = 0xFFFFFFFFLL;
              if (!v20)
              {
                return result;
              }
            }

            return __clz(__rbit64(v24)) | (v19 << 6);
          }
        }
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }
}

uint64_t llvm::SmallVectorTemplateBase<int,true>::growAndEmplaceBack<unsigned long>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a1 + 4 * v2) = *a2;
  v3 = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 4 * v3 - 4;
}

uint64_t OUTLINED_FUNCTION_20_7@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result = a13 + 16 * a1;
  *result = a9;
  *(result + 8) = 0;
  return result;
}

void OUTLINED_FUNCTION_29_7()
{

  mlir::presburger::SimplexBase::addRow(v0, v2, v1, 0);
}

void OUTLINED_FUNCTION_30_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  llvm::APInt::initSlowCase(va1, va);
}

void OUTLINED_FUNCTION_37_5(unsigned int a1@<W8>)
{
  v3 = *(*(v1 + 40) + 4 * a1 - 4);

  mlir::presburger::SimplexBase::undo(v1, v3);
}

void OUTLINED_FUNCTION_38_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);

  llvm::APInt::initSlowCase(va1, va);
}

uint64_t mlir::presburger::computeSingleVarRepr(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, uint64_t a6, unsigned int *a7)
{
  v150 = *MEMORY[0x277D85DE8];
  v135 = v137;
  v136 = 0x400000000;
  v132 = v134;
  v133 = 0x400000000;
  v129 = v131;
  v130 = 0x400000000;
  mlir::presburger::IntegerRelation::getLowerAndUpperBoundIndices(a1, a4, &v135, &v132, &v129);
  v126 = a7;
  v125 = a4;
  if (!v133)
  {
    v13 = a4;
    v14 = a2;
    v73 = v130;
    if (!v130)
    {
      goto LABEL_436;
    }

    goto LABEL_301;
  }

  v113 = v132 + 4 * v133;
  v12 = a4;
  v119 = a6;
  v123 = a5;
  v114 = v132;
  v115 = &a5[2 * a6];
  v112 = (v115 - 2);
  v13 = a4;
  v14 = a2;
  do
  {
    if (v136)
    {
      v15 = *v114;
      v16 = v135;
      v17 = v135 + 4 * v136;
      v117 = v17;
      do
      {
        v18 = *v16;
        v19 = (*(a1 + 352) + 16 * (v13 + *(a1 + 344) * *v16));
        v20 = *v19;
        v148 = *v19;
        v149 = 0;
        v21 = *(v19 + 2);
        if (v21)
        {
          v149 = *(v19 + 2);
          if (v21 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v148, v19);
          }

          if (a7[2])
          {
            llvm::detail::SlowDynamicAPInt::operator=(a7, &v148);
            v17 = v117;
            v14 = a2;
            v13 = v125;
          }

          else
          {
            a7[2] = v21;
            *a7 = v148;
          }
        }

        else
        {
          if (a7[2] > 0x40 && *a7)
          {
            MEMORY[0x259C63150](*a7, 0x1000C8000313F17);
            v17 = v117;
            v14 = a2;
            v13 = v125;
          }

          *a7 = v20;
          a7[2] = 0;
        }

        if (v149 > 0x40 && v148)
        {
          MEMORY[0x259C63150](v148, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

        v22 = vaddvq_s32(*(a1 + 8));
        if (!v22)
        {
          v35 = 0;
          goto LABEL_69;
        }

        for (i = 0; i != v22; ++i)
        {
          v24 = *(a1 + 344);
          v25 = *(a1 + 352);
          v26 = (v25 + 16 * (i + v24 * v15));
          v146 = *v26;
          v147 = 0;
          v27 = *(v26 + 2);
          if (v27)
          {
            v147 = *(v26 + 2);
            if (v27 >= 0x41)
            {
              llvm::APInt::initSlowCase(&v146, v26);
            }
          }

          v28 = (v25 + 16 * (i + v24 * v18));
          v29 = *v28;
          v142 = *v28;
          v143 = 0;
          v30 = *(v28 + 2);
          if (v30)
          {
            v143 = *(v28 + 2);
            if (v30 > 0x40)
            {
              llvm::APInt::initSlowCase(&v142, v28);
            }

            v128 = v30;
            v127 = v29;
            llvm::detail::SlowDynamicAPInt::operator-(&v127, &v148);
            v145 = v149;
            if (v149 > 0x40)
            {
              llvm::APInt::initSlowCase(&v144, &v148);
            }

            v144 = v148;
            if (v128 >= 0x41 && v127)
            {
              MEMORY[0x259C63150](v127, 0x1000C8000313F17);
            }

            v13 = v125;
            v14 = a2;
            v17 = v117;
            v31 = v147;
            if (!(v147 | v145))
            {
LABEL_18:
              v32 = v146 != v144;
              v33 = v143;
              if (!v143)
              {
                goto LABEL_19;
              }

LABEL_55:
              if (v33 >= 0x41 && v142)
              {
                MEMORY[0x259C63150](v142, 0x1000C8000313F17);
                v17 = v117;
                v14 = a2;
                v13 = v125;
              }

              goto LABEL_19;
            }
          }

          else if (v29 == 0x8000000000000000)
          {
            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v127, 0x8000000000000000);
            llvm::detail::SlowDynamicAPInt::operator-(&v127, &v148);
            v145 = v149;
            if (v149 > 0x40)
            {
              llvm::APInt::initSlowCase(&v144, &v148);
            }

            v144 = v148;
            if (v128 >= 0x41 && v127)
            {
              MEMORY[0x259C63150](v127, 0x1000C8000313F17);
            }

            v13 = v125;
            v14 = a2;
            v17 = v117;
            v31 = v147;
            if (!(v147 | v145))
            {
              goto LABEL_18;
            }
          }

          else
          {
            v144 = -v29;
            v145 = 0;
            v31 = v147;
            if (!v147)
            {
              goto LABEL_18;
            }
          }

          if (v31)
          {
            v149 = v31;
            if (v31 > 0x40)
            {
              llvm::APInt::initSlowCase(&v148, &v146);
            }

            v148 = v146;
            v34 = v145;
            if (!v145)
            {
LABEL_45:
              llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v127, v144);
              goto LABEL_47;
            }
          }

          else
          {
            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v148, v146);
            v34 = v145;
            if (!v145)
            {
              goto LABEL_45;
            }
          }

          v128 = v34;
          if (v34 > 0x40)
          {
            llvm::APInt::initSlowCase(&v127, &v144);
          }

          v127 = v144;
LABEL_47:
          v32 = llvm::detail::SlowDynamicAPInt::operator!=(&v148, &v127);
          if (v128 >= 0x41 && v127)
          {
            MEMORY[0x259C63150](v127, 0x1000C8000313F17);
          }

          if (v149 >= 0x41 && v148)
          {
            MEMORY[0x259C63150](v148, 0x1000C8000313F17);
          }

          if (v145 >= 0x41 && v144)
          {
            MEMORY[0x259C63150](v144, 0x1000C8000313F17);
          }

          v13 = v125;
          v14 = a2;
          v17 = v117;
          v33 = v143;
          if (v143)
          {
            goto LABEL_55;
          }

LABEL_19:
          if (v147 > 0x40 && v146)
          {
            MEMORY[0x259C63150](v146, 0x1000C8000313F17);
            v17 = v117;
            v14 = a2;
            v13 = v125;
          }

          if (v32)
          {
            goto LABEL_7;
          }
        }

        v35 = vaddvq_s32(*(a1 + 8));
        a7 = v126;
LABEL_69:
        v36 = *(a1 + 344);
        v37 = *(a1 + 352);
        v38 = (v37 + 16 * (v35 + v36 * v18));
        v144 = *v38;
        v145 = 0;
        v39 = *(v38 + 2);
        if (v39)
        {
          v145 = *(v38 + 2);
          if (v39 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v144, v38);
          }
        }

        v40 = (v37 + 16 * (v35 + v36 * v15));
        v140 = *v40;
        v141 = 0;
        v41 = *(v40 + 2);
        if (v41)
        {
          v141 = *(v40 + 2);
          if (v41 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v140, v40);
          }

          v42 = v145;
        }

        else
        {
          v13 = v125;
          v42 = v145;
          if (!v145)
          {
            v43 = v144;
            if (!__OFADD__(v144, v140))
            {
              v142 = v144 + v140;
              v143 = 0;
              goto LABEL_74;
            }

LABEL_130:
            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v127, v43);
            goto LABEL_151;
          }
        }

        if (!v42)
        {
          v43 = v144;
          goto LABEL_130;
        }

        v128 = v42;
        if (v42 > 0x40)
        {
          llvm::APInt::initSlowCase(&v127, &v144);
        }

        v127 = v144;
LABEL_151:
        if (v141)
        {
          v147 = v141;
          if (v141 > 0x40)
          {
            llvm::APInt::initSlowCase(&v146, &v140);
          }

          v146 = v140;
        }

        else
        {
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v146, v140);
        }

        llvm::detail::SlowDynamicAPInt::operator+(&v127, &v146, &v148);
        v143 = v149;
        if (v149 > 0x40)
        {
          llvm::APInt::initSlowCase(&v142, &v148);
        }

        v142 = v148;
        v13 = v125;
        v14 = a2;
        v17 = v117;
        if (v147 >= 0x41 && v146)
        {
          MEMORY[0x259C63150](v146, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

        if (v128 >= 0x41 && v127)
        {
          MEMORY[0x259C63150](v127, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

LABEL_74:
        if (v141 > 0x40 && v140)
        {
          MEMORY[0x259C63150](v140, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

        if (v145 > 0x40 && v144)
        {
          MEMORY[0x259C63150](v144, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

        v144 = 1;
        v145 = 0;
        v44 = a7[2];
        if (v44)
        {
          v128 = a7[2];
          if (v44 > 0x40)
          {
            llvm::APInt::initSlowCase(&v127, a7);
          }

          v127 = *a7;
        }

        else
        {
          if (!__OFSUB__(*a7, 1))
          {
            v138 = *a7 - 1;
            v139 = 0;
            goto LABEL_79;
          }

          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v127, *a7);
          if (v145)
          {
            v147 = v145;
            if (v145 > 0x40)
            {
              llvm::APInt::initSlowCase(&v146, &v144);
            }

            v146 = v144;
            goto LABEL_173;
          }
        }

        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v146, v144);
LABEL_173:
        llvm::detail::SlowDynamicAPInt::operator-(&v127, &v146, &v148);
        v139 = v149;
        if (v149 > 0x40)
        {
          llvm::APInt::initSlowCase(&v138, &v148);
        }

        v138 = v148;
        v13 = v125;
        v14 = a2;
        v17 = v117;
        if (v147 >= 0x41 && v146)
        {
          MEMORY[0x259C63150](v146, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

        if (v128 >= 0x41 && v127)
        {
          MEMORY[0x259C63150](v127, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

LABEL_79:
        if (v145 > 0x40 && v144)
        {
          MEMORY[0x259C63150](v144, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

        if (v139 | v143)
        {
          if (!v139)
          {
            v45 = v138;
            goto LABEL_128;
          }

          v128 = v139;
          if (v139 > 0x40)
          {
            llvm::APInt::initSlowCase(&v127, &v138);
          }

          v127 = v138;
        }

        else
        {
          v45 = v138;
          if (!__OFSUB__(v138, v142))
          {
            v140 = v138 - v142;
            v141 = 0;
            goto LABEL_83;
          }

LABEL_128:
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v127, v45);
        }

        if (v143)
        {
          v147 = v143;
          if (v143 > 0x40)
          {
            llvm::APInt::initSlowCase(&v146, &v142);
          }

          v146 = v142;
        }

        else
        {
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v146, v142);
        }

        llvm::detail::SlowDynamicAPInt::operator-(&v127, &v146, &v148);
        v141 = v149;
        if (v149 > 0x40)
        {
          llvm::APInt::initSlowCase(&v140, &v148);
        }

        v140 = v148;
        v13 = v125;
        v14 = a2;
        v17 = v117;
        if (v147 >= 0x41 && v146)
        {
          MEMORY[0x259C63150](v146, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

        if (v128 >= 0x41 && v127)
        {
          MEMORY[0x259C63150](v127, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

LABEL_83:
        if (v139 > 0x40 && v138)
        {
          MEMORY[0x259C63150](v138, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

        if (v141)
        {
          v49 = llvm::detail::operator<=(0, &v140);
          v17 = v117;
          v14 = a2;
          v13 = v125;
          if (!v49)
          {
            goto LABEL_92;
          }

LABEL_86:
          v144 = 1;
          v145 = 0;
          v46 = a7[2];
          if (v46)
          {
            v128 = a7[2];
            if (v46 > 0x40)
            {
              llvm::APInt::initSlowCase(&v127, a7);
            }

            v127 = *a7;
          }

          else
          {
            if (!__OFSUB__(*a7, 1))
            {
              v138 = *a7 - 1;
              v139 = 0;
              goto LABEL_89;
            }

            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v127, *a7);
            if (v145)
            {
              v147 = v145;
              if (v145 > 0x40)
              {
                llvm::APInt::initSlowCase(&v146, &v144);
              }

              v146 = v144;
              goto LABEL_260;
            }
          }

          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v146, v144);
LABEL_260:
          llvm::detail::SlowDynamicAPInt::operator-(&v127, &v146, &v148);
          v139 = v149;
          if (v149 > 0x40)
          {
            llvm::APInt::initSlowCase(&v138, &v148);
          }

          v138 = v148;
          v13 = v125;
          v14 = a2;
          v17 = v117;
          if (v147 >= 0x41 && v146)
          {
            MEMORY[0x259C63150](v146, 0x1000C8000313F17);
            v17 = v117;
            v14 = a2;
            v13 = v125;
          }

          if (v128 >= 0x41 && v127)
          {
            MEMORY[0x259C63150](v127, 0x1000C8000313F17);
            v17 = v117;
            v14 = a2;
            v13 = v125;
          }

LABEL_89:
          if (v145 > 0x40 && v144)
          {
            MEMORY[0x259C63150](v144, 0x1000C8000313F17);
            v17 = v117;
            v14 = a2;
            v13 = v125;
          }

          if (v141 | v139)
          {
            if (v141)
            {
              v149 = v141;
              if (v141 > 0x40)
              {
                llvm::APInt::initSlowCase(&v148, &v140);
              }

              v148 = v140;
            }

            else
            {
              llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v148, v140);
            }

            if (v139)
            {
              v128 = v139;
              if (v139 > 0x40)
              {
                llvm::APInt::initSlowCase(&v127, &v138);
              }

              v127 = v138;
            }

            else
            {
              llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v127, v138);
            }

            v50 = llvm::detail::SlowDynamicAPInt::operator<=(&v148, &v127);
            if (v128 >= 0x41 && v127)
            {
              MEMORY[0x259C63150](v127, 0x1000C8000313F17);
            }

            if (v149 >= 0x41 && v148)
            {
              MEMORY[0x259C63150](v148, 0x1000C8000313F17);
            }

            if (v139 >= 0x41 && v138)
            {
              MEMORY[0x259C63150](v138, 0x1000C8000313F17);
              v13 = v125;
              v14 = a2;
              v17 = v117;
              if (!v50)
              {
                goto LABEL_92;
              }
            }

            else
            {
              v13 = v125;
              v14 = a2;
              v17 = v117;
              if (!v50)
              {
                goto LABEL_92;
              }
            }
          }

          else if (v140 > v138)
          {
LABEL_92:
            v47 = 0;
            v48 = v141;
            if (!v141)
            {
              goto LABEL_225;
            }

            goto LABEL_236;
          }

          v51 = vaddvq_s32(*(a1 + 8));
          v52 = v51;
          if (v51)
          {
            v53 = 0;
            v54 = v123;
            do
            {
              if (v12 != v53)
              {
                v55 = (*(a1 + 352) + 16 * (v53 + *(a1 + 344) * v15));
                v56 = *v55;
                v148 = *v55;
                v149 = 0;
                v57 = *(v55 + 2);
                if (v57)
                {
                  v149 = *(v55 + 2);
                  if (v57 >= 0x41)
                  {
                    llvm::APInt::initSlowCase(&v148, v55);
                  }

                  if (v54[2])
                  {
                    llvm::detail::SlowDynamicAPInt::operator=(v54, &v148);
                  }

                  else
                  {
                    v54[2] = v57;
                    *v54 = v148;
                  }
                }

                else
                {
                  if (v54[2] > 0x40 && *v54)
                  {
                    MEMORY[0x259C63150](*v54, 0x1000C8000313F17);
                  }

                  *v54 = v56;
                  v54[2] = 0;
                }

                if (v149 > 0x40 && v148)
                {
                  MEMORY[0x259C63150](v148, 0x1000C8000313F17);
                }
              }

              ++v53;
              v54 += 4;
            }

            while (v52 != v53);
            v58 = vaddvq_s32(*(a1 + 8));
            a7 = v126;
          }

          else
          {
            v58 = 0;
          }

          v59 = (*(a1 + 352) + 16 * (v58 + *(a1 + 344) * v15));
          v138 = *v59;
          v139 = 0;
          v60 = *(v59 + 2);
          if (v60)
          {
            v139 = *(v59 + 2);
            if (v60 > 0x40)
            {
              llvm::APInt::initSlowCase(&v138, v59);
            }

            v128 = v60;
            v127 = v138;
          }

          else
          {
            if (v141)
            {
              v61 = v138;
            }

            else
            {
              v61 = v138;
              if (!__OFADD__(v138, v140))
              {
                v144 = v138 + v140;
                v145 = 0;
                v62 = v115;
                goto LABEL_220;
              }
            }

            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v127, v61);
          }

          if (v141)
          {
            v147 = v141;
            if (v141 > 0x40)
            {
              llvm::APInt::initSlowCase(&v146, &v140);
            }

            v146 = v140;
          }

          else
          {
            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v146, v140);
          }

          llvm::detail::SlowDynamicAPInt::operator+(&v127, &v146, &v148);
          v145 = v149;
          if (v149 > 0x40)
          {
            llvm::APInt::initSlowCase(&v144, &v148);
          }

          v144 = v148;
          v62 = v115;
          if (v147 >= 0x41 && v146)
          {
            MEMORY[0x259C63150](v146, 0x1000C8000313F17);
            v62 = v115;
          }

          if (v128 >= 0x41 && v127)
          {
            MEMORY[0x259C63150](v127, 0x1000C8000313F17);
            v62 = v115;
          }

          v70 = v145;
          if (v145)
          {
            if (*(v62 - 2))
            {
              llvm::detail::SlowDynamicAPInt::operator=(v112, &v144);
            }

            else
            {
              *(v62 - 2) = v145;
              if (v70 > 0x40)
              {
                llvm::APInt::initSlowCase(v112, &v144);
              }

              *v112 = v144;
            }
          }

          else
          {
LABEL_220:
            v63 = v144;
            if (*(v62 - 2) > 0x40u && *v112)
            {
              MEMORY[0x259C63150](*v112, 0x1000C8000313F17);
              v62 = v115;
            }

            *(v62 - 2) = v63;
            *(v62 - 2) = 0;
          }

          if (v145 > 0x40 && v144)
          {
            MEMORY[0x259C63150](v144, 0x1000C8000313F17);
          }

          if (v139 > 0x40 && v138)
          {
            MEMORY[0x259C63150](v138, 0x1000C8000313F17);
          }

          normalizeDivisionByGCD(v123, v119, a7);
          v47 = 1;
          v13 = v125;
          v14 = a2;
          v17 = v117;
          v48 = v141;
          if (!v141)
          {
            goto LABEL_225;
          }

LABEL_236:
          if (v48 >= 0x41 && v140)
          {
            MEMORY[0x259C63150](v140, 0x1000C8000313F17);
            v17 = v117;
            v14 = a2;
            v13 = v125;
          }

          goto LABEL_225;
        }

        if ((v140 & 0x8000000000000000) == 0)
        {
          goto LABEL_86;
        }

        v47 = 0;
LABEL_225:
        if (v143 > 0x40 && v142)
        {
          MEMORY[0x259C63150](v142, 0x1000C8000313F17);
          v17 = v117;
          v14 = a2;
          v13 = v125;
        }

        if (v47)
        {
          v64 = vaddvq_s32(*(a1 + 8));
          v65 = v64;
          if (!v64)
          {
            goto LABEL_293;
          }

          v66 = 0;
          v67 = 0;
          v68 = v123;
          while (1)
          {
            if (v12 != v66 && (*(v14 + v66) & 1) == 0)
            {
              if (*(v68 + 8))
              {
                v69 = llvm::detail::operator!=(v68, 0);
                v17 = v117;
                v14 = a2;
                v13 = v125;
                if (v69)
                {
                  goto LABEL_6;
                }
              }

              else if (*v68)
              {
LABEL_6:
                if (!v67)
                {
                  break;
                }

LABEL_293:
                v116 = 0;
                v71 = v129;
                if (v129 == v131)
                {
                  goto LABEL_295;
                }

LABEL_294:
                free(v71);
                goto LABEL_295;
              }
            }

            v67 = ++v66 >= v65;
            v68 += 16;
            if (v65 == v66)
            {
              goto LABEL_6;
            }
          }
        }

LABEL_7:
        v16 += 4;
        a7 = v126;
      }

      while (v16 != v17);
    }

    v114 += 4;
  }

  while (v114 != v113);
  a6 = v119;
  a5 = v123;
  v73 = v130;
  if (!v130)
  {
LABEL_436:
    v15 = 0;
    v116 = 2;
    v71 = v129;
    if (v129 == v131)
    {
      goto LABEL_295;
    }

    goto LABEL_294;
  }

LABEL_301:
  v74 = v129;
  v118 = (v129 + 4 * v73);
  v120 = a6;
  v75 = v13;
  v122 = v14;
  v124 = a5;
  v76 = &a5[2 * a6];
  v116 = 1;
  while (2)
  {
    v15 = *v74;
    v77 = (*(a1 + 64) + 16 * (v13 + *(a1 + 56) * v15));
    v78 = *v77;
    v142 = *v77;
    v143 = 0;
    v79 = *(v77 + 2);
    if (!v79)
    {
      if (v78)
      {
        goto LABEL_306;
      }

LABEL_303:
      if (++v74 == v118)
      {
        v15 = 0;
        v116 = 2;
        v71 = v129;
        if (v129 == v131)
        {
          goto LABEL_295;
        }

        goto LABEL_294;
      }

      continue;
    }

    break;
  }

  v143 = *(v77 + 2);
  if (v79 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v142, v77);
  }

  v109 = llvm::detail::operator==(&v142, 0);
  v101 = v143;
  if (v109)
  {
    v100 = 1;
    v102 = v122;
    v13 = v125;
    if (!v143)
    {
      goto LABEL_363;
    }

LABEL_377:
    if (v101 >= 0x41 && v142)
    {
      MEMORY[0x259C63150](v142, 0x1000C8000313F17);
      v102 = v122;
      v13 = v125;
    }

    goto LABEL_363;
  }

  if (v143)
  {
    LODWORD(v80) = llvm::detail::operator<(&v142, 0);
    v111 = -1;
    if (!v80)
    {
      v111 = 1;
    }

    v144 = v111;
    v145 = 0;
    if (v143)
    {
      goto LABEL_406;
    }

    v82 = v142 * v111;
    if ((v142 * v111) >> 64 != (v142 * v111) >> 63)
    {
      goto LABEL_406;
    }

LABEL_309:
    v140 = v82;
    v141 = 0;
  }

  else
  {
    v78 = v142;
LABEL_306:
    v80 = v78 >> 63;
    v81 = -1;
    if (v78 >= 0)
    {
      v81 = 1;
    }

    v144 = v81;
    v145 = 0;
    v82 = v78 * v81;
    if ((v78 * v81) >> 64 == (v78 * v81) >> 63)
    {
      goto LABEL_309;
    }

LABEL_406:
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v142, &v127);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v144, &v146);
    llvm::detail::SlowDynamicAPInt::operator*(&v127, &v146, &v148);
    v141 = v149;
    if (v149 > 0x40)
    {
      llvm::APInt::initSlowCase(&v140, &v148);
    }

    v140 = v148;
    if (v147 >= 0x41 && v146)
    {
      MEMORY[0x259C63150](v146, 0x1000C8000313F17);
    }

    if (v128 >= 0x41 && v127)
    {
      MEMORY[0x259C63150](v127, 0x1000C8000313F17);
    }
  }

  if (v145 > 0x40 && v144)
  {
    MEMORY[0x259C63150](v144, 0x1000C8000313F17);
  }

  if (v141)
  {
    mlir::presburger::detail::getNonOrthogonalVector(a7 + 2, v141, &v140, a7);
    v84 = v141;
    if (v141)
    {
LABEL_394:
      if (v84 >= 0x41 && v140)
      {
        MEMORY[0x259C63150](v140, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    v83 = v140;
    if (a7[2] > 0x40 && *a7)
    {
      MEMORY[0x259C63150](*a7, 0x1000C8000313F17);
      *a7 = v83;
      a7[2] = 0;
      v84 = v141;
      if (v141)
      {
        goto LABEL_394;
      }
    }

    else
    {
      *a7 = v140;
      a7[2] = 0;
      v84 = v141;
      if (v141)
      {
        goto LABEL_394;
      }
    }
  }

  v85 = vaddvq_s32(*(a1 + 8));
  if (v80)
  {
    v86 = 1;
  }

  else
  {
    v86 = -1;
  }

  if (!v85)
  {
    v89 = 0;
    goto LABEL_354;
  }

  v87 = 0;
  v88 = v124;
  while (2)
  {
    if (v75 != v87)
    {
      v91 = (*(a1 + 64) + 16 * (v87 + *(a1 + 56) * v15));
      v92 = *v91;
      v138 = *v91;
      v139 = 0;
      v93 = *(v91 + 2);
      if (v93)
      {
        v139 = *(v91 + 2);
        if (v93 > 0x40)
        {
          llvm::APInt::initSlowCase(&v138, v91);
        }

        v144 = v86;
        v145 = 0;
      }

      else
      {
        v144 = v86;
        v145 = 0;
        if ((v86 * v92) >> 64 == (v86 * v92) >> 63)
        {
          v140 = v86 * v92;
          v141 = 0;
          goto LABEL_327;
        }
      }

      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v144, &v127);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v138, &v146);
      llvm::detail::SlowDynamicAPInt::operator*(&v127, &v146, &v148);
      v141 = v149;
      if (v149 > 0x40)
      {
        llvm::APInt::initSlowCase(&v140, &v148);
      }

      v140 = v148;
      if (v147 >= 0x41 && v146)
      {
        MEMORY[0x259C63150](v146, 0x1000C8000313F17);
      }

      if (v128 >= 0x41 && v127)
      {
        MEMORY[0x259C63150](v127, 0x1000C8000313F17);
      }

LABEL_327:
      if (v145 > 0x40 && v144)
      {
        MEMORY[0x259C63150](v144, 0x1000C8000313F17);
      }

      if (v141)
      {
        mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v88, v141, &v140);
        v90 = v141;
        if (v141)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v94 = v140;
        if (v88[2] > 0x40 && *v88)
        {
          MEMORY[0x259C63150](*v88, 0x1000C8000313F17);
          *v88 = v94;
          v88[2] = 0;
          v90 = v141;
          if (v141)
          {
LABEL_331:
            if (v90 >= 0x41 && v140)
            {
              MEMORY[0x259C63150](v140, 0x1000C8000313F17);
            }
          }
        }

        else
        {
          *v88 = v140;
          v88[2] = 0;
          v90 = v141;
          if (v141)
          {
            goto LABEL_331;
          }
        }
      }

      if (v139 > 0x40 && v138)
      {
        MEMORY[0x259C63150](v138, 0x1000C8000313F17);
      }
    }

    ++v87;
    v88 += 4;
    if (v85 != v87)
    {
      continue;
    }

    break;
  }

  v89 = vaddvq_s32(*(a1 + 8));
LABEL_354:
  v95 = (*(a1 + 64) + 16 * (v89 + *(a1 + 56) * v15));
  v96 = *v95;
  v138 = *v95;
  v139 = 0;
  v97 = *(v95 + 2);
  if (v97)
  {
    v139 = *(v95 + 2);
    if (v97 > 0x40)
    {
      llvm::APInt::initSlowCase(&v138, v95);
    }

    v144 = v86;
    v145 = 0;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v144, &v127);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v138, &v146);
    llvm::detail::SlowDynamicAPInt::operator*(&v127, &v146, &v148);
    v141 = v149;
    if (v149 > 0x40)
    {
      llvm::APInt::initSlowCase(&v140, &v148);
    }

    v140 = v148;
    a7 = v126;
  }

  else
  {
    v144 = v86;
    v145 = 0;
    if ((v86 * v96) >> 64 == (v86 * v96) >> 63)
    {
      v140 = v86 * v96;
      v141 = 0;
      a7 = v126;
      goto LABEL_357;
    }

    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v144, &v127);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v138, &v146);
    llvm::detail::SlowDynamicAPInt::operator*(&v127, &v146, &v148);
    v141 = v149;
    a7 = v126;
    if (v149 > 0x40)
    {
      llvm::APInt::initSlowCase(&v140, &v148);
    }

    v140 = v148;
  }

  if (v147 >= 0x41 && v146)
  {
    MEMORY[0x259C63150](v146, 0x1000C8000313F17);
  }

  if (v128 >= 0x41 && v127)
  {
    MEMORY[0x259C63150](v127, 0x1000C8000313F17);
  }

LABEL_357:
  if (v145 > 0x40 && v144)
  {
    MEMORY[0x259C63150](v144, 0x1000C8000313F17);
  }

  if (v141)
  {
    mlir::presburger::detail::getNonOrthogonalVector(v76 - 2, v141, &v140, (v76 - 2));
    v99 = v141;
    if (v141)
    {
LABEL_399:
      if (v99 >= 0x41 && v140)
      {
        MEMORY[0x259C63150](v140, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    v98 = v140;
    if (*(v76 - 2) > 0x40u && (v110 = *(v76 - 2)) != 0)
    {
      MEMORY[0x259C63150](v110, 0x1000C8000313F17);
      *(v76 - 2) = v98;
      *(v76 - 2) = 0;
      v99 = v141;
      if (v141)
      {
        goto LABEL_399;
      }
    }

    else
    {
      *(v76 - 2) = v140;
      *(v76 - 2) = 0;
      v99 = v141;
      if (v141)
      {
        goto LABEL_399;
      }
    }
  }

  if (v139 > 0x40 && v138)
  {
    MEMORY[0x259C63150](v138, 0x1000C8000313F17);
  }

  normalizeDivisionByGCD(v124, v120, a7);
  v100 = 0;
  v101 = v143;
  v102 = v122;
  v13 = v125;
  if (v143)
  {
    goto LABEL_377;
  }

LABEL_363:
  if (v100)
  {
    goto LABEL_303;
  }

  v103 = vaddvq_s32(*(a1 + 8));
  v104 = v103;
  if (!v103)
  {
    goto LABEL_433;
  }

  v105 = 0;
  v106 = 0;
  v107 = v124;
  while (2)
  {
    if (v75 == v105 || (*(v102 + v105) & 1) != 0)
    {
LABEL_367:
      v106 = ++v105 >= v104;
      v107 += 16;
      if (v104 == v105)
      {
        goto LABEL_302;
      }

      continue;
    }

    break;
  }

  if (*(v107 + 8))
  {
    v108 = llvm::detail::operator!=(v107, 0);
    v102 = v122;
    v13 = v125;
    if (v108)
    {
      goto LABEL_302;
    }

    goto LABEL_367;
  }

  if (!*v107)
  {
    goto LABEL_367;
  }

LABEL_302:
  if (!v106)
  {
    goto LABEL_303;
  }

LABEL_433:
  v71 = v129;
  if (v129 != v131)
  {
    goto LABEL_294;
  }

LABEL_295:
  if (v132 != v134)
  {
    free(v132);
  }

  if (v135 != v137)
  {
    free(v135);
  }

  return v116 | (v15 << 32);
}