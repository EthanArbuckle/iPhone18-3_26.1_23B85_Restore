void mlir::presburger::floor(uint64_t a1@<X0>, llvm::APInt *a2@<X8>)
{
  if (*(a1 + 8) | *(a1 + 24))
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1, &v10);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1 + 16, &v8);
    llvm::detail::floorDiv(&v10, &v8, &v12);
    v7 = v13;
    *(a2 + 2) = v13;
    if (v7 > 0x40)
    {
      llvm::APInt::initSlowCase(a2, &v12);
    }

    *a2 = v12;
    if (v9 >= 0x41 && v8)
    {
      MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }

    if (v11 >= 0x41 && v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  else
  {
    v2 = *a1;
    v3 = *(a1 + 16);
    if (*a1 == 0x8000000000000000 && v3 == -1)
    {
      mlir::presburger::operator-(a1);
    }

    else
    {
      if (v2)
      {
        if ((v3 ^ v2) < 0)
        {
          v2 = (((v3 >> 63) | 1) + v2) / v3 - 1;
        }

        else
        {
          v2 /= v3;
        }
      }

      *a2 = v2;
      *(a2 + 2) = 0;
    }
  }
}

uint64_t *mlir::presburger::operator*@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2) | *(a2 + 2) || (*a1 * *a2) >> 64 != (*a1 * *a2) >> 63)
  {
    v7 = a1;
    v8 = a2;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1, &v12);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v8, &v10);
    llvm::detail::SlowDynamicAPInt::operator*(&v12, &v10, &v18);
    v17 = v19;
    if (v19 > 0x40)
    {
      llvm::APInt::initSlowCase(&v16, &v18);
    }

    v16 = v18;
    if (v11 >= 0x41 && v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }

    if (v13 >= 0x41 && v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }

    a2 = v8;
    a1 = v7;
    if (*(v7 + 6) | *(v8 + 24))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = *a1 * *a2;
    v17 = 0;
    if (*(a1 + 6) | *(a2 + 6))
    {
      goto LABEL_21;
    }
  }

  v4 = a1[2];
  v5 = a2[2];
  if ((v4 * v5) >> 64 == (v4 * v5) >> 63)
  {
    v14 = v4 * v5;
    v15 = 0;
    goto LABEL_6;
  }

LABEL_21:
  v9 = a2;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((a1 + 2), &v12);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v9 + 2), &v10);
  llvm::detail::SlowDynamicAPInt::operator*(&v12, &v10, &v18);
  v15 = v19;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, &v18);
  }

  v14 = v18;
  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x259C63150](v10, 0x1000C8000313F17);
  }

  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x259C63150](v12, 0x1000C8000313F17);
  }

LABEL_6:
  mlir::presburger::Fraction::Fraction(&v18, &v16, &v14);
  result = mlir::presburger::reduce(&v18, a3);
  if (v21 > 0x40)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

  if (v19 > 0x40)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v15 > 0x40)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v17 > 0x40)
  {
    result = v16;
    if (v16)
    {
      return MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *mlir::presburger::operator-@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2) | *(a2 + 6) || (v4 = a2[2], (*a1 * v4) >> 64 != (*a1 * v4) >> 63))
  {
    v10 = a1;
    v11 = a2;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1, &v19);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v11 + 2), &v17);
    llvm::detail::SlowDynamicAPInt::operator*(&v19, &v17, &v29);
    v26 = v30;
    if (v30 > 0x40)
    {
      llvm::APInt::initSlowCase(&v25, &v29);
    }

    v25 = v29;
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }

    if (v20 >= 0x41 && v19)
    {
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }

    a2 = v11;
    a1 = v10;
    if (*(v10 + 6) | *(v11 + 2))
    {
LABEL_27:
      v12 = a1;
      v13 = a2;
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((a1 + 2), &v19);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v13, &v17);
      llvm::detail::SlowDynamicAPInt::operator*(&v19, &v17, &v29);
      v24 = v30;
      if (v30 > 0x40)
      {
        llvm::APInt::initSlowCase(&v23, &v29);
      }

      v23 = v29;
      if (v18 >= 0x41 && v17)
      {
        MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }

      if (v20 >= 0x41 && v19)
      {
        MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }

      a2 = v13;
      a1 = v12;
      if (v26 | v24)
      {
        goto LABEL_37;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v25 = *a1 * v4;
    v26 = 0;
    if (*(a1 + 6) | *(a2 + 2))
    {
      goto LABEL_27;
    }
  }

  v5 = a1[2];
  if ((v5 * *a2) >> 64 != (v5 * *a2) >> 63)
  {
    goto LABEL_27;
  }

  v23 = v5 * *a2;
  v24 = 0;
  if (v26)
  {
    goto LABEL_37;
  }

LABEL_6:
  if (!__OFSUB__(v25, v23))
  {
    v27 = v25 - v23;
    v28 = 0;
    if (*(a1 + 6) | *(a2 + 6))
    {
      goto LABEL_47;
    }

    goto LABEL_8;
  }

LABEL_37:
  v14 = a1;
  v15 = a2;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v25, &v19);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v23, &v17);
  llvm::detail::SlowDynamicAPInt::operator-(&v19, &v17, &v29);
  v28 = v30;
  if (v30 > 0x40)
  {
    llvm::APInt::initSlowCase(&v27, &v29);
  }

  v27 = v29;
  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

  a2 = v15;
  a1 = v14;
  if (*(v14 + 6) | *(v15 + 6))
  {
    goto LABEL_47;
  }

LABEL_8:
  v6 = a1[2];
  v7 = a2[2];
  if ((v6 * v7) >> 64 == (v6 * v7) >> 63)
  {
    v21 = v6 * v7;
    v22 = 0;
    goto LABEL_10;
  }

LABEL_47:
  v16 = a2;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((a1 + 2), &v19);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v16 + 2), &v17);
  llvm::detail::SlowDynamicAPInt::operator*(&v19, &v17, &v29);
  v22 = v30;
  if (v30 > 0x40)
  {
    llvm::APInt::initSlowCase(&v21, &v29);
  }

  v21 = v29;
  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

LABEL_10:
  v8 = mlir::presburger::Fraction::Fraction(&v29, &v27, &v21);
  result = mlir::presburger::reduce(v8, a3);
  if (v32 > 0x40)
  {
    result = v31;
    if (v31)
    {
      result = MEMORY[0x259C63150](v31, 0x1000C8000313F17);
    }
  }

  if (v30 > 0x40)
  {
    result = v29;
    if (v29)
    {
      result = MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }
  }

  if (v22 > 0x40)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  if (v28 > 0x40)
  {
    result = v27;
    if (v27)
    {
      result = MEMORY[0x259C63150](v27, 0x1000C8000313F17);
    }
  }

  if (v24 > 0x40)
  {
    result = v23;
    if (v23)
    {
      result = MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    }
  }

  if (v26 > 0x40)
  {
    result = v25;
    if (v25)
    {
      return MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::presburger::detail::computeNumTerms(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v30 = 0;
  __p = 0;
  v31 = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(&__p, *(a1 + 96), *(a1 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3));
  v2 = __p;
  v3 = v30;
  if (__p != v30)
  {
    do
    {
      v4 = *v2;
      v5 = v2[1];
      v2 += 3;
      std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__insert_with_size[abi:nn200100]<llvm::SmallVector<mlir::presburger::Fraction,1u> const*,llvm::SmallVector<mlir::presburger::Fraction,1u> const*>(&v23, v24, v4, v5, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4));
    }

    while (v2 != v3);
    v2 = __p;
  }

  if (v2)
  {
    v6 = v30;
    v7 = v2;
    if (v30 != v2)
    {
      do
      {
        v6 -= 3;
        v33 = v6;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v33);
      }

      while (v6 != v2);
      v7 = __p;
    }

    v30 = v2;
    operator delete(v7);
  }

  mlir::presburger::detail::getNonOrthogonalVector(v23, 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 4), &v35);
  v8 = *a1;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(&v20, *(a1 + 96), *(a1 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3));
  v26 = 1;
  v27[0] = 0;
  v33 = 0;
  v34 = 0;
  mlir::presburger::Fraction::Fraction(&__p, &v33, &v26);
  if (v34 > 0x40 && v33)
  {
    MEMORY[0x259C63150](v33, 0x1000C8000313F17);
  }

  mlir::presburger::QuasiPolynomial::QuasiPolynomial(&v33, v8, &__p);
  if (v32 > 0x40 && v31)
  {
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
  }

  if (v30 > 0x40 && __p)
  {
    MEMORY[0x259C63150](__p, 0x1000C8000313F17);
  }

  if (v27[0] > 0x40u && v26)
  {
    MEMORY[0x259C63150](v26, 0x1000C8000313F17);
  }

  if (-1431655765 * ((v21 - v20) >> 3))
  {
    __p = &v31;
    v30 = 0xC00000000;
    v9 = *(a1 + 16);
    if ((a1 + 8) != &__p && v9 != 0)
    {
      if (v9 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(&v31, *(a1 + 8), 4 * *(a1 + 16));
      LODWORD(v30) = v9;
      if (__p != &v31)
      {
        free(__p);
      }
    }

    *v27 = 0;
    v26 = 0;
    v28 = 0;
    if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 80) - *(a1 + 72)) >> 5) < 0x78787878787879)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  mlir::presburger::QuasiPolynomial::simplify(&v33, a2);
  mlir::presburger::QuasiPolynomial::~QuasiPolynomial(&v33);
  v11 = v20;
  if (v20)
  {
    v12 = v21;
    v13 = v20;
    if (v21 != v20)
    {
      do
      {
        v12 -= 24;
        __p = v12;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&__p);
      }

      while (v12 != v11);
      v13 = v20;
    }

    v21 = v11;
    operator delete(v13);
  }

  v14 = v35;
  if (v36)
  {
    v15 = &v35[4 * v36 - 2];
    v16 = -32 * v36;
    do
    {
      if (*(v15 + 8) > 0x40u && *v15)
      {
        MEMORY[0x259C63150](*v15, 0x1000C8000313F17);
      }

      if (*(v15 - 8) > 0x40u)
      {
        v17 = *(v15 - 16);
        if (v17)
        {
          MEMORY[0x259C63150](v17, 0x1000C8000313F17);
        }
      }

      v15 -= 32;
      v16 += 32;
    }

    while (v16);
    v14 = v35;
  }

  if (v14 != v37)
  {
    free(v14);
  }

  __p = &v23;
  std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&__p);
}

void mlir::presburger::IntegerRelation::IntegerRelation(mlir::presburger::IntegerRelation *this, unsigned int a2, unsigned int a3, unsigned int a4, const mlir::presburger::PresburgerSpace *a5)
{
  *this = &unk_286893110;
  v5 = *a5;
  v6 = *(a5 + 16);
  *(this + 4) = this + 48;
  *(this + 24) = v6;
  *(this + 8) = v5;
  *(this + 5) = 0;
  if ((this + 8) != a5 && *(a5 + 8) != 0)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

void **llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(void **result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = a2 + 16;
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      v5 = *result;
      v6 = *(result + 2);
      if (v6)
      {
        v7 = 4 * v6;
        v8 = &v5[v7 - 2];
        v9 = -(v7 * 8);
        do
        {
          if (*(v8 + 8) > 0x40u && *v8)
          {
            v10 = result;
            MEMORY[0x259C63150](*v8, 0x1000C8000313F17);
            result = v10;
          }

          if (*(v8 - 8) > 0x40u && *(v8 - 16))
          {
            v11 = result;
            MEMORY[0x259C63150](*(v8 - 16), 0x1000C8000313F17);
            result = v11;
          }

          v8 -= 32;
          v9 += 32;
        }

        while (v9);
        v5 = *result;
      }

      if (v5 != result + 2)
      {
        v12 = result;
        free(v5);
        result = v12;
      }

      *result = *a2;
      v13 = (a2 + 8);
      result[1] = *(a2 + 8);
      *a2 = v3;
      *(a2 + 12) = 0;
LABEL_16:
      *v13 = 0;
      return result;
    }

    v13 = (a2 + 8);
    v14 = *(a2 + 8);
    v15 = *(result + 2);
    if (v15 < v14)
    {
      if (*(result + 3) < v14)
      {
        if (v15)
        {
          v16 = &(*result)[4 * v15 - 2];
          v17 = -32 * v15;
          do
          {
            if (*(v16 + 8) > 0x40u && *v16)
            {
              v18 = result;
              MEMORY[0x259C63150](*v16, 0x1000C8000313F17);
              result = v18;
            }

            if (*(v16 - 8) > 0x40u && *(v16 - 16))
            {
              v19 = result;
              MEMORY[0x259C63150](*(v16 - 16), 0x1000C8000313F17);
              result = v19;
            }

            v16 -= 32;
            v17 += 32;
          }

          while (v17);
        }

        *(result + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v24 = *result;
      if (v15)
      {
        v25 = result;
        v26 = 32 * v15;
        do
        {
          mlir::presburger::Fraction::operator=(v24, v4);
          v4 += 4;
          v24 += 4;
          v26 -= 32;
        }

        while (v26);
        result = v25;
        v24 = *v25;
        v27 = *a2;
        v28 = *(a2 + 8);
        if (v15 == v28)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v15 = 0;
        v27 = *a2;
        v28 = *(a2 + 8);
        if (!*(a2 + 8))
        {
LABEL_75:
          *(result + 2) = v14;
          v48 = *v13;
          if (v48)
          {
            v49 = 4 * v48;
            v50 = &v27[v49 - 2];
            v51 = -(v49 * 8);
            do
            {
              if (*(v50 + 8) > 0x40u && *v50)
              {
                v52 = result;
                MEMORY[0x259C63150](*v50, 0x1000C8000313F17);
                result = v52;
              }

              if (*(v50 - 8) > 0x40u && *(v50 - 16))
              {
                v53 = result;
                MEMORY[0x259C63150](*(v50 - 16), 0x1000C8000313F17);
                result = v53;
              }

              v50 -= 32;
              v51 += 32;
            }

            while (v51);
          }

          goto LABEL_16;
        }
      }

      v38 = 32 * v15;
      v39 = 32 * v28;
      while (1)
      {
        while (1)
        {
          v40 = &v27[v38 / 8];
          v41 = &v24[v38 / 8];
          *v41 = v27[v38 / 8];
          *(v41 + 2) = 0;
          v42 = v27[v38 / 8 + 1];
          if (!v42)
          {
            break;
          }

          *(v41 + 2) = v42;
          if (v42 > 0x40)
          {
            llvm::APInt::initSlowCase(&v24[v38 / 8], &v27[v38 / 8]);
          }

          *v41 = *v40;
          v47 = v40[2];
          v43 = (v40 + 2);
          v41[2] = v47;
          v45 = (v41 + 2);
          *(v41 + 6) = 0;
          v46 = *(v43 + 2);
          if (!v46)
          {
            goto LABEL_64;
          }

LABEL_70:
          *(v41 + 6) = v46;
          if (v46 > 0x40)
          {
            llvm::APInt::initSlowCase(v45, v43);
          }

          *v45 = *v43;
          v27 += 4;
          v24 += 4;
          v39 -= 32;
          if (v38 == v39)
          {
LABEL_74:
            v27 = *a2;
            goto LABEL_75;
          }
        }

        v44 = v40[2];
        v43 = (v40 + 2);
        v41[2] = v44;
        v45 = (v41 + 2);
        *(v41 + 6) = 0;
        v46 = *(v43 + 2);
        if (v46)
        {
          goto LABEL_70;
        }

LABEL_64:
        v27 += 4;
        v24 += 4;
        v39 -= 32;
        if (v38 == v39)
        {
          goto LABEL_74;
        }
      }
    }

    v20 = *result;
    if (v14)
    {
      v21 = result;
      v22 = 32 * v14;
      do
      {
        mlir::presburger::Fraction::operator=(v20, v4);
        v4 += 4;
        v20 += 4;
        v22 -= 32;
      }

      while (v22);
      result = v21;
      v23 = &(*v21)[4 * *(v21 + 2)];
      if (v23 == v20)
      {
LABEL_50:
        *(result + 2) = v14;
        v32 = *(a2 + 8);
        if (v32)
        {
          v33 = 32 * v32;
          v34 = v33 + *a2 - 16;
          v35 = -v33;
          do
          {
            if (*(v34 + 8) > 0x40u && *v34)
            {
              v36 = result;
              MEMORY[0x259C63150](*v34, 0x1000C8000313F17);
              result = v36;
            }

            if (*(v34 - 8) > 0x40u && *(v34 - 16))
            {
              v37 = result;
              MEMORY[0x259C63150](*(v34 - 16), 0x1000C8000313F17);
              result = v37;
            }

            v34 -= 32;
            v35 += 32;
          }

          while (v35);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v23 = &v20[4 * v15];
      if (v23 == v20)
      {
        goto LABEL_50;
      }
    }

    do
    {
      v29 = v23;
      if (*(v23 - 2) > 0x40u && *(v23 - 2))
      {
        v30 = result;
        MEMORY[0x259C63150](*(v29 - 2), 0x1000C8000313F17);
        result = v30;
      }

      v23 = v29 - 4;
      if (*(v29 - 6) > 0x40u && *v23)
      {
        v31 = result;
        MEMORY[0x259C63150](*v23, 0x1000C8000313F17);
        result = v31;
      }
    }

    while (v23 != v20);
    goto LABEL_50;
  }

  return result;
}

{
  if (result != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(result + 2);
    if (v3 < v2)
    {
      if (*(result + 3) < v2)
      {
        if (v3)
        {
          v4 = &(*result)[4 * v3 - 2];
          v5 = -32 * v3;
          do
          {
            if (*(v4 + 8) > 0x40u && *v4)
            {
              v6 = result;
              MEMORY[0x259C63150](*v4, 0x1000C8000313F17);
              result = v6;
            }

            if (*(v4 - 8) > 0x40u)
            {
              if (*(v4 - 16))
              {
                v7 = result;
                MEMORY[0x259C63150](*(v4 - 16), 0x1000C8000313F17);
                result = v7;
              }
            }

            v4 -= 32;
            v5 += 32;
          }

          while (v5);
        }

        *(result + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v13 = *result;
      if (v3)
      {
        v14 = result;
        v15 = a2;
        v16 = *a2;
        v17 = 32 * v3;
        do
        {
          mlir::presburger::Fraction::operator=(v13, v16);
          v16 += 4;
          v13 += 4;
          v17 -= 32;
        }

        while (v17);
        result = v14;
        v13 = *v14;
        a2 = v15;
        v18 = *(v15 + 8);
        if (v3 != v18)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = 0;
        v18 = *(a2 + 8);
        if (*(a2 + 8))
        {
LABEL_37:
          v22 = *a2;
          v23 = 32 * v3;
          v24 = 32 * v18;
          while (1)
          {
            while (1)
            {
              v25 = &v22[v23 / 8];
              v26 = &v13[v23 / 8];
              *v26 = v22[v23 / 8];
              *(v26 + 2) = 0;
              v27 = v22[v23 / 8 + 1];
              if (!v27)
              {
                break;
              }

              *(v26 + 2) = v27;
              if (v27 > 0x40)
              {
                llvm::APInt::initSlowCase(&v13[v23 / 8], &v22[v23 / 8]);
              }

              *v26 = *v25;
              v32 = v25[2];
              v28 = (v25 + 2);
              v26[2] = v32;
              v30 = (v26 + 2);
              *(v26 + 6) = 0;
              v31 = *(v28 + 2);
              if (!v31)
              {
                goto LABEL_40;
              }

LABEL_46:
              *(v26 + 6) = v31;
              if (v31 > 0x40)
              {
                llvm::APInt::initSlowCase(v30, v28);
              }

              *v30 = *v28;
              v22 += 4;
              v13 += 4;
              v24 -= 32;
              if (v23 == v24)
              {
                goto LABEL_35;
              }
            }

            v29 = v25[2];
            v28 = (v25 + 2);
            v26[2] = v29;
            v30 = (v26 + 2);
            *(v26 + 6) = 0;
            v31 = *(v28 + 2);
            if (v31)
            {
              goto LABEL_46;
            }

LABEL_40:
            v22 += 4;
            v13 += 4;
            v24 -= 32;
            if (v23 == v24)
            {
              goto LABEL_35;
            }
          }
        }
      }

      goto LABEL_35;
    }

    if (v2)
    {
      v8 = *a2;
      v9 = result;
      v10 = *result;
      v11 = 32 * v2;
      do
      {
        mlir::presburger::Fraction::operator=(v10, v8);
        v8 += 4;
        v10 += 4;
        v11 -= 32;
      }

      while (v11);
      result = v9;
      v12 = &(*v9)[4 * *(v9 + 2)];
      if (v12 == v10)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = *result;
      v12 = &(*result)[4 * v3];
      if (v12 == *result)
      {
LABEL_35:
        *(result + 2) = v2;
        return result;
      }
    }

    do
    {
      v19 = v12;
      if (*(v12 - 2) > 0x40u && *(v12 - 2))
      {
        v20 = result;
        MEMORY[0x259C63150](*(v19 - 2), 0x1000C8000313F17);
        result = v20;
      }

      v12 = v19 - 4;
      if (*(v19 - 6) > 0x40u && *v12)
      {
        v21 = result;
        MEMORY[0x259C63150](*v12, 0x1000C8000313F17);
        result = v21;
      }
    }

    while (v12 != v10);
    goto LABEL_35;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::moveElementsForGrow(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = 0;
  v4 = *result;
  v5 = 32 * v2;
  do
  {
    while (1)
    {
      v6 = (v4 + v3);
      v7 = a2 + v3;
      *v7 = *(v4 + v3);
      *(v7 + 8) = 0;
      v8 = *(v4 + v3 + 8);
      if (v8)
      {
        break;
      }

      v10 = v6[2];
      v9 = (v6 + 2);
      *(v7 + 16) = v10;
      v11 = (v7 + 16);
      *(v7 + 24) = 0;
      v12 = *(v9 + 2);
      if (v12)
      {
        goto LABEL_11;
      }

LABEL_5:
      v3 += 32;
      if (v5 == v3)
      {
        goto LABEL_15;
      }
    }

    *(v7 + 8) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase((a2 + v3), (v4 + v3));
    }

    *v7 = *v6;
    v13 = v6[2];
    v9 = (v6 + 2);
    *(v7 + 16) = v13;
    v11 = (v7 + 16);
    *(v7 + 24) = 0;
    v12 = *(v9 + 2);
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v7 + 24) = v12;
    if (v12 > 0x40)
    {
      llvm::APInt::initSlowCase(v11, v9);
    }

    *v11 = *v9;
    v3 += 32;
  }

  while (v5 != v3);
LABEL_15:
  v14 = *(result + 8);
  if (v14)
  {
    v15 = 32 * v14;
    v16 = v15 + *result - 16;
    v17 = -v15;
    do
    {
      if (*(v16 + 8) > 0x40u)
      {
        result = *v16;
        if (*v16)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }

      if (*(v16 - 8) > 0x40u)
      {
        result = *(v16 - 16);
        if (result)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }

      v16 -= 32;
      v17 += 32;
    }

    while (v17);
  }

  return result;
}

uint64_t mlir::presburger::detail::GeneratingFunction::GeneratingFunction(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t *a5)
{
  *a1 = a2;
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 0xC00000000;
  v8 = *(a3 + 8);
  if (a1 + 8 != a3 && v8 != 0)
  {
    if (v8 >= 0xD)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy((a1 + 24), *a3, 4 * *(a3 + 8));
    *(a1 + 16) = v8;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v10 = a4[1] - *a4;
  if (v10)
  {
    if (0xF0F0F0F0F0F0F0F1 * (v10 >> 5) < 0x78787878787879)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(a1 + 96, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
  return a1;
}

void std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

uint64_t mlir::presburger::compare(uint64_t *a1, llvm::APInt *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2) | *(a2 + 6) || (v2 = *(a2 + 2), (*a1 * v2) >> 64 != (*a1 * v2) >> 63))
  {
    v6 = a1;
    v7 = a2;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1, &v15);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v7 + 16, &v13);
    llvm::detail::SlowDynamicAPInt::operator*(&v15, &v13, &v17);
    v22 = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase(&v21, &v17);
    }

    v21 = v17;
    if (v14 >= 0x41 && v13)
    {
      MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }

    if (v16 >= 0x41 && v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }

    a1 = v6;
    a2 = v7;
    if (*(v7 + 2) | *(v6 + 6))
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = *a1 * v2;
    v22 = 0;
    if (*(a2 + 2) | *(a1 + 6))
    {
      goto LABEL_26;
    }
  }

  v3 = a1[2];
  if ((*a2 * v3) >> 64 == (*a2 * v3) >> 63)
  {
    v19 = *a2 * v3;
    v20 = 0;
    goto LABEL_6;
  }

LABEL_26:
  v8 = a1;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a2, &v15);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v8 + 2), &v13);
  llvm::detail::SlowDynamicAPInt::operator*(&v15, &v13, &v17);
  v20 = v18;
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v19, &v17);
  }

  v19 = v17;
  if (v14 >= 0x41 && v13)
  {
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
  }

  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

LABEL_6:
  if (v22 | v20 || __OFSUB__(v21, v19))
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v21, &v15);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v19, &v13);
    llvm::detail::SlowDynamicAPInt::operator-(&v15, &v13, &v17);
    v24 = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase(&v23, &v17);
    }

    v23 = v17;
    if (v14 >= 0x41 && v13)
    {
      MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }

    if (v16 >= 0x41 && v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  else
  {
    v23 = v21 - v19;
    v24 = 0;
  }

  if (v20 > 0x40 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

  if (v22 > 0x40 && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

  if (!v24)
  {
    v4 = v23;
    if (v23 > 0)
    {
      return 1;
    }

    goto LABEL_51;
  }

  v9 = llvm::detail::operator>(&v23, 0);
  v10 = v24;
  if (v9)
  {
    result = 1;
    goto LABEL_53;
  }

  if (!v24)
  {
    v4 = v23;
LABEL_51:
    v10 = 0;
    v11 = v4 >> 63;
    goto LABEL_52;
  }

  LODWORD(v11) = llvm::detail::operator<(&v23, 0);
  v10 = v24;
LABEL_52:
  result = ((v11 << 31) >> 31);
LABEL_53:
  if (v10 > 0x40)
  {
    if (v23)
    {
      v12 = result;
      MEMORY[0x259C63150](v23, 0x1000C8000313F17);
      return v12;
    }
  }

  return result;
}

uint64_t llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt@<X0>(uint64_t result@<X0>, llvm::APInt *a2@<X8>)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(a2, *result);
  }

  *(a2 + 2) = v2;
  if (v2 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, result);
  }

  *a2 = *result;
  return result;
}

uint64_t *mlir::presburger::Fraction::Fraction(uint64_t *this, const llvm::DynamicAPInt *a2, const llvm::DynamicAPInt *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *this = *a2;
  *(this + 2) = 0;
  v3 = *(a2 + 2);
  if (v3)
  {
    *(this + 2) = v3;
    if (v3 > 0x40)
    {
      llvm::APInt::initSlowCase(this, a2);
    }

    *this = *a2;
  }

  v4 = *a3;
  this[2] = *a3;
  v5 = this + 2;
  *(this + 6) = 0;
  v6 = *(a3 + 2);
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      return this;
    }

LABEL_4:
    if (*(this + 2) || *this == 0x8000000000000000)
    {
      v18 = this;
      mlir::presburger::operator-(this);
      this = v18;
      if (v21)
      {
        mlir::presburger::detail::getNonOrthogonalVector(v18 + 2, v21, &v20, v18);
        this = v18;
        v7 = v21;
        if (!v21)
        {
          goto LABEL_9;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v20 = -*this;
      v21 = 0;
    }

    if (*(this + 2) > 0x40u && *this)
    {
      v19 = this;
      MEMORY[0x259C63150](*this, 0x1000C8000313F17);
      this = v19;
      *v19 = v20;
      *(v19 + 2) = 0;
      v7 = v21;
      if (!v21)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *this = v20;
      *(this + 2) = 0;
      v7 = v21;
      if (!v21)
      {
        goto LABEL_9;
      }
    }

LABEL_30:
    if (v7 >= 0x41 && v20)
    {
      v12 = this;
      MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      this = v12;
    }

LABEL_9:
    if (*(this + 6) || *v5 == 0x8000000000000000)
    {
      v13 = this;
      mlir::presburger::operator-(v5);
      this = v13;
      if (v21)
      {
        mlir::presburger::detail::getNonOrthogonalVector(v13 + 6, v21, &v20, (v13 + 2));
        this = v13;
        v8 = v21;
        if (!v21)
        {
          return this;
        }

LABEL_38:
        if (v8 >= 0x41)
        {
          if (v20)
          {
            v17 = this;
            MEMORY[0x259C63150](v20, 0x1000C8000313F17);
            return v17;
          }
        }

        return this;
      }
    }

    else
    {
      v20 = -*v5;
      v21 = 0;
    }

    if (*(this + 6) > 0x40u && (v14 = *v5) != 0)
    {
      v15 = this;
      v16 = v20;
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
      this = v15;
      v15[2] = v16;
      *(v15 + 6) = 0;
      v8 = v21;
      if (!v21)
      {
        return this;
      }
    }

    else
    {
      this[2] = v20;
      *(this + 6) = 0;
      v8 = v21;
      if (!v21)
      {
        return this;
      }
    }

    goto LABEL_38;
  }

  *(this + 6) = v6;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase((this + 2), a3);
  }

  v9 = this;
  *v5 = *a3;
  v10 = llvm::detail::operator<(v5, 0);
  v11 = v10;
  this = v9;
  if (v11)
  {
    goto LABEL_4;
  }

  return this;
}

uint64_t *mlir::presburger::reduce@<X0>(mlir::presburger *this@<X0>, uint64_t *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v35 = 1;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  mlir::presburger::Fraction::Fraction(&v31, &v37, &v35);
  if (v38 > 0x40 && v37)
  {
    MEMORY[0x259C63150](v37, 0x1000C8000313F17);
  }

  v5 = mlir::presburger::compare(this, &v31);
  if (v34 > 0x40 && v33)
  {
    v22 = v5;
    MEMORY[0x259C63150](v33, 0x1000C8000313F17);
    v5 = v22;
  }

  if (v32 > 0x40 && v31)
  {
    v23 = v5;
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
    v5 = v23;
  }

  if (v36 > 0x40 && v35)
  {
    v24 = v5;
    MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    v5 = v24;
  }

  if (!v5)
  {
    v31 = 0;
    v32 = 0;
    v37 = 1;
    v38 = 0;
    result = mlir::presburger::Fraction::Fraction(a2, &v31, &v37);
    if (v38 > 0x40)
    {
      result = v37;
      if (v37)
      {
        result = MEMORY[0x259C63150](v37, 0x1000C8000313F17);
      }
    }

    if (v32 > 0x40)
    {
      result = v31;
      if (v31)
      {
        return MEMORY[0x259C63150](result, 0x1000C8000313F17);
      }
    }

    return result;
  }

  if (!*(this + 2))
  {
    v6 = *this;
    if ((*this & 0x8000000000000000) == 0)
    {
LABEL_10:
      v27 = v6;
      v28 = 0;
      goto LABEL_11;
    }

    if (v6 != 0x8000000000000000)
    {
LABEL_9:
      v6 = -v6;
      goto LABEL_10;
    }

    goto LABEL_133;
  }

  v18 = llvm::detail::operator>=(this, 0);
  v19 = *(this + 2);
  if (v18)
  {
    v27 = *this;
    v28 = 0;
    if (v19)
    {
      v28 = v19;
      if (v19 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v27, this);
      }
    }
  }

  else
  {
    if (!v19)
    {
      v6 = *this;
      if (*this != 0x8000000000000000)
      {
        goto LABEL_9;
      }

LABEL_133:
      mlir::presburger::operator-(this);
      goto LABEL_11;
    }

    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this, &v37);
    llvm::detail::SlowDynamicAPInt::operator-(&v37, &v31);
    v28 = v32;
    if (v32 > 0x40)
    {
      llvm::APInt::initSlowCase(&v27, &v31);
    }

    v27 = v31;
    if (v38 >= 0x41 && v37)
    {
      MEMORY[0x259C63150](v37, 0x1000C8000313F17);
    }
  }

LABEL_11:
  if (!*(this + 6))
  {
    v7 = *(this + 2);
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_15:
      v25 = v7;
      v26 = 0;
      goto LABEL_16;
    }

    if (v7 != 0x8000000000000000)
    {
LABEL_14:
      v7 = -v7;
      goto LABEL_15;
    }

    goto LABEL_135;
  }

  v20 = llvm::detail::operator>=(this + 16, 0);
  v21 = *(this + 6);
  if (v20)
  {
    v25 = *(this + 2);
    v26 = 0;
    if (v21)
    {
      v26 = v21;
      if (v21 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v25, (this + 16));
      }
    }
  }

  else
  {
    if (!v21)
    {
      v7 = *(this + 2);
      if (v7 != 0x8000000000000000)
      {
        goto LABEL_14;
      }

LABEL_135:
      mlir::presburger::operator-(this + 16);
      goto LABEL_16;
    }

    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this + 16, &v37);
    llvm::detail::SlowDynamicAPInt::operator-(&v37, &v31);
    v26 = v32;
    if (v32 > 0x40)
    {
      llvm::APInt::initSlowCase(&v25, &v31);
    }

    v25 = v31;
    if (v38 >= 0x41 && v37)
    {
      MEMORY[0x259C63150](v37, 0x1000C8000313F17);
    }
  }

LABEL_16:
  if (v28 | v26)
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v27, &v37);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v25, &v35);
    llvm::detail::gcd(&v37, &v35, &v31);
    v30 = v32;
    if (v32 > 0x40)
    {
      llvm::APInt::initSlowCase(&v29, &v31);
    }

    v29 = v31;
    if (v36 >= 0x41 && v35)
    {
      MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    }

    if (v38 >= 0x41 && v37)
    {
      MEMORY[0x259C63150](v37, 0x1000C8000313F17);
    }

    if (v26 >= 0x41 && v25)
    {
      MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }
  }

  else
  {
    v8 = v25;
    if (v27 == 0x8000000000000000)
    {
      v9 = 0;
    }

    else
    {
      v9 = -v27;
    }

    if (v27 >= 0)
    {
      v9 = v27;
    }

    if (v25 == 0x8000000000000000)
    {
      v10 = 0;
    }

    else
    {
      v10 = -v25;
    }

    if (v25 < 0)
    {
      v8 = v10;
    }

    if (v9 >= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v11)
    {
      v12 = v8 % v11;
      if (v12)
      {
        v13 = v12 >> __clz(__rbit64(v12));
        v14 = v11;
        do
        {
          v15 = v14 >> __clz(__rbit64(v14));
          v14 = v15 - v13;
          if (v13 > v15)
          {
            v14 = v13 - v15;
          }

          if (v13 >= v15)
          {
            v13 = v15;
          }
        }

        while (v14);
        v11 = v13 << __clz(__rbit64(v12 | v11));
      }
    }

    else
    {
      v11 = v8;
    }

    v29 = v11;
    v30 = 0;
  }

  if (v28 > 0x40 && v27)
  {
    MEMORY[0x259C63150](v27, 0x1000C8000313F17);
  }

  if (*(this + 2) | v30)
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this, &v37);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v29, &v35);
    llvm::detail::SlowDynamicAPInt::operator/(&v37, &v35, &v31);
    v28 = v32;
    if (v32 > 0x40)
    {
      llvm::APInt::initSlowCase(&v27, &v31);
    }

    v27 = v31;
    if (v36 >= 0x41 && v35)
    {
      MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    }

    if (v38 >= 0x41 && v37)
    {
      MEMORY[0x259C63150](v37, 0x1000C8000313F17);
    }
  }

  else if (*this == 0x8000000000000000 && v29 == -1)
  {
    mlir::presburger::operator-(this);
  }

  else
  {
    v27 = *this / v29;
    v28 = 0;
  }

  if (*(this + 6) | v30)
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this + 16, &v37);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v29, &v35);
    llvm::detail::SlowDynamicAPInt::operator/(&v37, &v35, &v31);
    v26 = v32;
    if (v32 > 0x40)
    {
      llvm::APInt::initSlowCase(&v25, &v31);
    }

    v25 = v31;
    if (v36 >= 0x41 && v35)
    {
      MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    }

    if (v38 >= 0x41 && v37)
    {
      MEMORY[0x259C63150](v37, 0x1000C8000313F17);
    }
  }

  else
  {
    v17 = *(this + 2);
    if (v17 == 0x8000000000000000 && v29 == -1)
    {
      mlir::presburger::operator-(this + 16);
    }

    else
    {
      v25 = v17 / v29;
      v26 = 0;
    }
  }

  result = mlir::presburger::Fraction::Fraction(a2, &v27, &v25);
  if (v26 > 0x40)
  {
    result = v25;
    if (v25)
    {
      result = MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }
  }

  if (v28 > 0x40)
  {
    result = v27;
    if (v27)
    {
      result = MEMORY[0x259C63150](v27, 0x1000C8000313F17);
    }
  }

  if (v30 > 0x40)
  {
    result = v29;
    if (v29)
    {
      return MEMORY[0x259C63150](result, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>::pair[abi:nn200100]<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction,0>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v6;
  v7 = a1 + 40;
  *(a1 + 24) = a1 + 40;
  v8 = a1 + 24;
  *(a1 + 32) = 0;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(v8, a2 + 3);
  }

  *(a1 + 40) = a1 + 56;
  *(a1 + 48) = 0x200000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v7, a2 + 40);
  }

  *(a1 + 1304) = *a3;
  *(a1 + 1312) = a1 + 1328;
  *(a1 + 1320) = 0xC00000000;
  if (*(a3 + 16))
  {
    llvm::SmallVectorImpl<int>::operator=(a1 + 1312, (a3 + 8));
  }

  *(a1 + 1392) = 0;
  *(a1 + 1376) = 0u;
  *(a1 + 1376) = *(a3 + 72);
  *(a1 + 1392) = *(a3 + 88);
  *(a3 + 88) = 0;
  *(a3 + 72) = 0u;
  *(a1 + 1416) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1400) = *(a3 + 96);
  *(a1 + 1416) = *(a3 + 112);
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  return a1;
}

uint64_t llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
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
      goto LABEL_16;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v9 = result;
        memmove(*result, *a2, 24 * v7);
        result = v9;
      }

      *(result + 8) = v7;
      goto LABEL_16;
    }

    if (*(result + 12) < v7)
    {
      *(result + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v10 = result;
      v11 = a2;
      memmove(*result, *a2, 24 * v8);
      a2 = v11;
      v12 = *v6 - v8;
      if (!v12)
      {
LABEL_15:
        result = v10;
        *(v10 + 8) = v7;
LABEL_16:
        *v6 = 0;
        return result;
      }
    }

    else
    {
      v10 = result;
      v8 = 0;
      v12 = *v6;
      if (!*v6)
      {
        goto LABEL_15;
      }
    }

    memcpy((*v10 + 24 * v8), *a2 + 24 * v8, 24 * v12);
    goto LABEL_15;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 16;
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = -624 * v7;
        v9 = v6 + 624 * v7 - 624;
        v10 = v9;
        do
        {
          (**v10)(v10);
          v10 -= 78;
          v9 -= 624;
          v8 += 624;
        }

        while (v8);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v11 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
LABEL_10:
      *v11 = 0;
      return a1;
    }

    v11 = (a2 + 8);
    v13 = *(a2 + 8);
    v14 = *(a1 + 8);
    if (v14 < v13)
    {
      if (*(a1 + 12) < v13)
      {
        if (v14)
        {
          v15 = -624 * v14;
          v16 = *a1 + 624 * v14 - 624;
          v17 = v16;
          do
          {
            (**v17)(v17);
            v17 -= 78;
            v16 -= 624;
            v15 += 624;
          }

          while (v15);
        }

        *(a1 + 8) = 0;
        v34 = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v21 = *a1;
      if (v14)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *>(&v35, v4, v4 + 624 * v14, *a1);
        v21 = *a1;
      }

      else
      {
        LODWORD(v14) = 0;
      }

      llvm::SmallVectorTemplateBase<mlir::presburger::IntegerRelation,false>::uninitialized_move<mlir::presburger::IntegerRelation*,mlir::presburger::IntegerRelation*>((*a2 + 624 * v14), (*a2 + 624 * *(a2 + 8)), (v21 + 624 * v14));
      *(a1 + 8) = v13;
      v29 = *(a2 + 8);
      if (v29)
      {
        v30 = -624 * v29;
        v31 = *a2 + 624 * v29 - 624;
        v32 = v31;
        do
        {
          (**v32)(v32);
          v32 -= 78;
          v31 -= 624;
          v30 += 624;
        }

        while (v30);
      }

      goto LABEL_10;
    }

    v18 = *a1;
    if (v13)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *>(&v33, v4, v4 + 624 * v13, v18);
      v20 = v19;
      v18 = *a1;
      LODWORD(v14) = *(a1 + 8);
      if (*a1 + 624 * v14 == v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = *a1;
      if (v18 + 624 * v14 == v18)
      {
        goto LABEL_27;
      }
    }

    v22 = v18 + 624 * v14 - 624;
    v23 = v22;
    do
    {
      (**v23)(v23);
      v22 -= 624;
      v24 = v23 == v20;
      v23 -= 78;
    }

    while (!v24);
LABEL_27:
    *(a1 + 8) = v13;
    v25 = *(a2 + 8);
    if (v25)
    {
      v26 = -624 * v25;
      v27 = *a2 + 624 * v25 - 624;
      v28 = v27;
      do
      {
        (**v28)(v28);
        v28 -= 78;
        v27 -= 624;
        v26 += 624;
      }

      while (v26);
    }

    goto LABEL_10;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 < v3)
    {
      if (*(a1 + 12) < v3)
      {
        if (v4)
        {
          v5 = -624 * v4;
          v6 = *a1 + 624 * v4 - 624;
          v7 = v6;
          do
          {
            (**v7)(v7);
            v7 -= 78;
            v6 -= 624;
            v5 += 624;
          }

          while (v5);
        }

        *(a1 + 8) = 0;
        v18 = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v11 = *a1;
      if (v4)
      {
        v12 = a2;
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *>(&v19, *a2, *a2 + 624 * v4, *a1);
        a2 = v12;
        v11 = *a1;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      std::uninitialized_copy[abi:nn200100]<mlir::presburger::IntegerRelation const*,mlir::presburger::IntegerRelation*>(*a2 + 624 * v4, *a2 + 624 * *(a2 + 8), v11 + 624 * v4);
      goto LABEL_20;
    }

    if (v3)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *>(&v17, *a2, *a2 + 624 * v3, *a1);
      v9 = v8;
      v10 = *a1;
      LODWORD(v4) = *(a1 + 8);
      if (*a1 + 624 * v4 == v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = *a1;
      v9 = *a1;
      if (*a1 + 624 * v4 == *a1)
      {
LABEL_20:
        *(a1 + 8) = v3;
        return a1;
      }
    }

    v13 = v10 + 624 * v4 - 624;
    v14 = v13;
    do
    {
      (**v14)(v14);
      v13 -= 624;
      v15 = v14 == v9;
      v14 -= 78;
    }

    while (!v15);
    goto LABEL_20;
  }

  return a1;
}

uint64_t *llvm::SmallVectorTemplateBase<mlir::presburger::IntegerRelation,false>::uninitialized_move<mlir::presburger::IntegerRelation*,mlir::presburger::IntegerRelation*>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = &a3[v6];
      v8 = &v5[v6];
      *v7 = &unk_286893110;
      v9 = *&v5[v6 + 1];
      *(v7 + 24) = v5[v6 + 3];
      *(v7 + 1) = v9;
      v10 = &a3[v6 + 6];
      a3[v6 + 4] = v10;
      v7[5] = 0;
      if (v5 != a3 && *(v8 + 10))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v8[6];
      LODWORD(a3[v6 + 7]) = *(v8 + 14);
      *v10 = v11;
      v7[8] = (v7 + 10);
      v12 = v7 + 8;
      v12[1] = 0x1000000000;
      if (*(v8 + 18))
      {
        result = llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v12, &v5[v6 + 8]);
      }

      v13 = &a3[v6];
      v14 = v5[v6 + 42];
      *(v13 + 86) = v5[v6 + 43];
      v13[42] = v14;
      v13[44] = &a3[v6 + 46];
      v13[45] = 0x1000000000;
      if (LODWORD(v5[v6 + 45]))
      {
        result = llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v13 + 44, &v5[v6 + 44]);
      }

      v6 += 78;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *,mlir::presburger::IntegerRelation *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a3;
    v7 = 0;
    while (1)
    {
      v10 = a4 + v7;
      v11 = a2 + v7;
      v12 = *(a2 + v7 + 8);
      *(v10 + 24) = *(a2 + v7 + 24);
      *(v10 + 8) = v12;
      if (a2 == a4)
      {
        goto LABEL_4;
      }

      v13 = *(v11 + 40);
      v14 = *(v10 + 40);
      if (v14 >= v13)
      {
        if (v13)
        {
          memmove(*(v10 + 32), *(v11 + 32), 24 * v13);
        }

        goto LABEL_3;
      }

      if (*(a4 + v7 + 44) < v13)
      {
        *(v10 + 40) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v14)
      {
        memmove(*(v10 + 32), *(v11 + 32), 24 * v14);
        v15 = *(v11 + 40) - v14;
        if (v15)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = 0;
        v15 = *(v11 + 40);
        if (*(v11 + 40))
        {
LABEL_15:
          memcpy((*(v10 + 32) + 24 * v14), (*(v11 + 32) + 24 * v14), 24 * v15);
        }
      }

LABEL_3:
      *(v10 + 40) = v13;
LABEL_4:
      v8 = *(v11 + 48);
      *(v10 + 56) = *(v11 + 56);
      *(v10 + 48) = v8;
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v10 + 64), (v11 + 64));
      v9 = *(v11 + 344);
      *(v10 + 336) = *(v11 + 336);
      *(v10 + 344) = v9;
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v10 + 352), (v11 + 352));
      v7 += 624;
      if (a2 + v7 == v6)
      {
        return v6;
      }
    }
  }

  return a2;
}

uint64_t std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>::~pair(uint64_t a1)
{
  v2 = *(a1 + 1400);
  if (v2)
  {
    v3 = *(a1 + 1408);
    v4 = *(a1 + 1400);
    if (v3 != v2)
    {
      do
      {
        v3 -= 3;
        v14 = v3;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v14);
      }

      while (v3 != v2);
      v4 = *(a1 + 1400);
    }

    *(a1 + 1408) = v2;
    operator delete(v4);
  }

  v14 = (a1 + 1376);
  std::vector<mlir::presburger::FracMatrix>::__destroy_vector::operator()[abi:nn200100](&v14);
  v5 = *(a1 + 1312);
  if (v5 != (a1 + 1328))
  {
    free(v5);
  }

  v7 = (a1 + 40);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = -624 * v8;
    v10 = v6 + 624 * v8 - 624;
    v11 = v10;
    do
    {
      (**v11)(v11);
      v11 -= 78;
      v10 -= 624;
      v9 += 624;
    }

    while (v9);
    v6 = *v7;
  }

  if (v6 != (a1 + 56))
  {
    free(v6);
  }

  v12 = *(a1 + 24);
  if (v12 != v7)
  {
    free(v12);
  }

  return a1;
}

uint64_t std::vector<mlir::presburger::FracMatrix>::__insert_with_size[abi:nn200100]<std::__wrap_iter<mlir::presburger::FracMatrix const*>,std::__wrap_iter<mlir::presburger::FracMatrix const*>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xF0F0F0F0F0F0F0F1 * ((v9 - v10) >> 5)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xF0F0F0F0F0F0F0F1 * ((v10 - a2) >> 5)) >= a5)
      {
        v23 = a2 + 544 * a5;
        v24 = v10 - 544 * a5;
        v25 = a1[1];
        if (v24 < v10)
        {
          v26 = 0;
          do
          {
            v27 = v24 + v26;
            v28 = v10 + v26;
            v29 = *(v24 + v26);
            *(v28 + 8) = *(v24 + v26 + 8);
            *v28 = v29;
            *(v28 + 24) = 0x1000000000;
            *(v28 + 16) = v10 + v26 + 32;
            if (*(v24 + v26 + 24))
            {
              llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v10 + v26 + 16), v27 + 16);
            }

            v26 += 544;
          }

          while (v27 + 544 < v10);
          v25 = v10 + v26;
        }

        a1[1] = v25;
        if (v10 != v23)
        {
          v46 = 0;
          do
          {
            v47 = *(v24 + v46 - 544);
            v48 = v10 + v46 - 544;
            *(v48 + 8) = *(v24 + v46 - 536);
            *v48 = v47;
            llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v10 + v46 - 528), v24 + v46 - 528);
            v46 -= 544;
          }

          while (v5 + 544 * v6 - v10 != v46);
        }

        v49 = 0;
        v50 = &v7[68 * v6];
        do
        {
          v51 = v49 + v5;
          v52 = *v7;
          *(v51 + 8) = *(v7 + 2);
          *v51 = v52;
          llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v49 + v5 + 16), (v7 + 2));
          v49 += 544;
          v7 += 68;
        }

        while (v7 != v50);
      }

      else
      {
        v17 = (a3 + v15);
        v18 = a1[1];
        if ((a3 + v15) != a4)
        {
          v19 = 0;
          do
          {
            v20 = &v17[v19];
            v21 = v10 + v19 * 8;
            v22 = v17[v19];
            *(v21 + 8) = v17[v19 + 1];
            *v21 = v22;
            *(v21 + 24) = 0x1000000000;
            *(v21 + 16) = v10 + v19 * 8 + 32;
            if (LODWORD(v17[v19 + 3]))
            {
              llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v10 + v19 * 8 + 16), (v20 + 2));
            }

            v19 += 68;
          }

          while (v20 + 68 != a4);
          v18 = v10 + v19 * 8;
        }

        a1[1] = v18;
        if (v15 >= 1)
        {
          v39 = v5 + 544 * v6;
          v40 = v18;
          if (v18 - 544 * v6 < v10)
          {
            v41 = 0;
            v61 = v6;
            v42 = -544 * v6;
            do
            {
              v43 = v42 + v18;
              v44 = v41 + v18;
              v45 = *(v42 + v18);
              *(v44 + 8) = *(v42 + v18 + 8);
              *v44 = v45;
              *(v44 + 24) = 0x1000000000;
              *(v44 + 16) = v41 + v18 + 32;
              if (*(v42 + v18 + 24))
              {
                llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v41 + v18 + 16), v43 + 16);
              }

              v42 += 544;
              v41 += 544;
            }

            while (v43 + 544 < v10);
            v40 = v41 + v18;
            v6 = v61;
          }

          a1[1] = v40;
          if (v18 != v39)
          {
            v53 = 0;
            v54 = -544 * v6;
            do
            {
              v55 = *(v54 + v18 - 544);
              v56 = v53 + v18 - 544;
              *(v56 + 8) = *(v54 + v18 - 536);
              *v56 = v55;
              llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v53 + v18 - 528), v54 + v18 - 528);
              v53 -= 544;
              v54 -= 544;
              v39 += 544;
            }

            while (v18 != v39);
          }

          v57 = 0;
          do
          {
            v58 = v57 + v5;
            v59 = *v7;
            *(v58 + 8) = *(v7 + 2);
            *v58 = v59;
            llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v57 + v5 + 16), (v7 + 2));
            v57 += 544;
            v7 += 68;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0xF0F0F0F0F0F0F0FLL * ((v10 - *a1) >> 5);
      if (v12 > 0x78787878787878)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = 0xF0F0F0F0F0F0F0F1 * ((v9 - v11) >> 5);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3C3C3C3C3C3C3CLL)
      {
        v14 = 0x78787878787878;
      }

      else
      {
        v14 = v12;
      }

      v63 = 0;
      v64 = a1;
      if (v14)
      {
        if (v14 <= 0x78787878787878)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v30 = 0;
      v31 = 32 * ((a2 - v11) >> 5);
      do
      {
        v32 = v31 + v30 * 8;
        v33 = v7[v30];
        *(v32 + 8) = v7[v30 + 1];
        *v32 = v33;
        *(v32 + 24) = 0x1000000000;
        *(v32 + 16) = v31 + v30 * 8 + 32;
        if (LODWORD(v7[v30 + 3]))
        {
          llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v31 + v30 * 8 + 16), &v7[v30 + 2]);
        }

        v30 += 68;
      }

      while (68 * v6 != v30);
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::presburger::FracMatrix>,mlir::presburger::FracMatrix*>(a1, v5, a1[1], v31 + 544 * v6);
      v34 = *a1;
      v35 = v31 + 544 * v6 + a1[1] - v5;
      a1[1] = v5;
      v36 = v31 + v34 - v5;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::presburger::FracMatrix>,mlir::presburger::FracMatrix*>(a1, v34, v5, v36);
      v37 = *a1;
      *a1 = v36;
      a1[1] = v35;
      v38 = a1[2];
      a1[2] = 0;
      v62[2] = v37;
      v63 = v38;
      v62[0] = v37;
      v62[1] = v37;
      std::__split_buffer<mlir::presburger::FracMatrix>::~__split_buffer(v62);
      return v31;
    }
  }

  return v5;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::presburger::FracMatrix>,mlir::presburger::FracMatrix*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2 + 16;
    v7 = a4 + 16;
    do
    {
      v9 = v6 - 16;
      v8 = *(v6 - 16);
      *(v7 - 8) = *(v6 - 8);
      *(v7 - 16) = v8;
      *v7 = v7 + 16;
      *(v7 + 8) = 0x1000000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v7, v6);
      }

      v6 += 544;
      v7 += 544;
    }

    while (v9 + 544 != a3);
    for (; v5 != a3; v5 += 544)
    {
      v10 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v11)
      {
        v12 = 32 * v11;
        v13 = v10 + v12 - 16;
        v14 = -v12;
        do
        {
          if (*(v13 + 8) > 0x40u && *v13)
          {
            MEMORY[0x259C63150](*v13, 0x1000C8000313F17);
          }

          if (*(v13 - 8) > 0x40u)
          {
            v15 = *(v13 - 16);
            if (v15)
            {
              MEMORY[0x259C63150](v15, 0x1000C8000313F17);
            }
          }

          v13 -= 32;
          v14 += 32;
        }

        while (v14);
        v10 = *(v5 + 16);
      }

      if (v10 != (v5 + 32))
      {
        free(v10);
      }
    }
  }
}

uint64_t std::__split_buffer<mlir::presburger::FracMatrix>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 544;
    v4 = *(i - 528);
    v5 = *(i - 520);
    if (v5)
    {
      v6 = 32 * v5;
      v7 = v4 + v6 - 16;
      v8 = -v6;
      do
      {
        if (*(v7 + 8) > 0x40u && *v7)
        {
          MEMORY[0x259C63150](*v7, 0x1000C8000313F17);
        }

        if (*(v7 - 8) > 0x40u)
        {
          v9 = *(v7 - 16);
          if (v9)
          {
            MEMORY[0x259C63150](v9, 0x1000C8000313F17);
          }
        }

        v7 -= 32;
        v8 += 32;
      }

      while (v8);
      v4 = *(i - 528);
    }

    if (v4 != (i - 512))
    {
      free(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>> const*>,std::__wrap_iter<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>> const*>>(uint64_t a1, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = a3;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3)) < a5)
  {
    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * (&v9[-*a1] >> 3);
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v21 = (8 * ((a2 - v10) >> 3));
    v22 = &v21[24 * a5];
    v46 = v21;
    while (1)
    {
      *v21 = 0;
      *(v21 + 1) = 0;
      *(v21 + 2) = 0;
      v23 = v7[1];
      if (v23 != *v7)
      {
        break;
      }

      v21 += 24;
      v7 += 3;
      if (v21 == v22)
      {
        v24 = *(a1 + 8) - a2;
        memcpy(v22, a2, v24);
        v25 = &v22[v24];
        *(a1 + 8) = v5;
        v26 = *a1;
        v27 = &v5[-*a1];
        v5 = v46;
        v28 = &v46[-v27];
        memcpy(&v46[-v27], *a1, v27);
        *a1 = v28;
        *(a1 + 8) = v25;
        *(a1 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }

        return v5;
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v23 - *v7) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

LABEL_51:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v14 = v9 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - a2) >> 3)) >= a5)
  {
    v17 = &a2[24 * a5];
    v18 = &v9[-24 * a5];
    if (v18 >= v9)
    {
      *(a1 + 8) = v9;
      if (v9 == v17)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v19 = &v9[-24 * a5];
      v20 = *(a1 + 8);
      do
      {
        *v20 = 0;
        v20[1] = 0;
        v20[2] = 0;
        *v20 = *v19;
        v20[2] = *(v19 + 2);
        *v19 = 0;
        *(v19 + 1) = 0;
        *(v19 + 2) = 0;
        v19 += 24;
        v20 += 3;
      }

      while (v19 < v9);
      *(a1 + 8) = v20;
      if (v9 == v17)
      {
LABEL_37:
        v36 = &v7[3 * v6];
        v37 = v5;
        do
        {
          if (v7 != v37)
          {
            std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__assign_with_size[abi:nn200100]<llvm::SmallVector<mlir::presburger::Fraction,1u>*,llvm::SmallVector<mlir::presburger::Fraction,1u>*>(v37, *v7, v7[1], 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 4));
          }

          v7 += 3;
          v37 += 24;
        }

        while (v7 != v36);
        return v5;
      }
    }

    v32 = 0;
    v33 = (&a2[24 * a5] - v9);
    do
    {
      v34 = &v32[v18];
      v35 = &v32[v9];
      std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__vdeallocate(&v32[v9 - 24]);
      *(v35 - 24) = *&v32[v18 - 24];
      *(v35 - 1) = *&v32[v18 - 8];
      *(v34 - 3) = 0;
      *(v34 - 2) = 0;
      *(v34 - 1) = 0;
      v32 -= 24;
    }

    while (v33 != v32);
    goto LABEL_37;
  }

  v15 = (a3 + v14);
  if ((a3 + v14) == a4)
  {
    v16 = *(a1 + 8);
    *(a1 + 8) = v9;
    if (v14 < 1)
    {
      return v5;
    }

    goto LABEL_42;
  }

  v30 = (a3 + v14);
  v16 = *(a1 + 8);
  do
  {
    *v16 = 0;
    *(v16 + 1) = 0;
    *(v16 + 2) = 0;
    v31 = v30[1];
    if (v31 != *v30)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v31 - *v30) >> 4) <= 0x555555555555555)
      {
        operator new();
      }

      goto LABEL_51;
    }

    v30 += 3;
    v16 += 24;
  }

  while (v30 != a4);
  v5 = a2;
  v6 = a5;
  *(a1 + 8) = v16;
  if (v9 - a2 < 1)
  {
    return v5;
  }

LABEL_42:
  v38 = &v5[24 * v6];
  v39 = &v16[-24 * v6];
  for (i = v16; v39 < v9; i += 24)
  {
    *i = 0;
    *(i + 1) = 0;
    *(i + 2) = 0;
    *i = *v39;
    *(i + 2) = *(v39 + 2);
    *v39 = 0;
    *(v39 + 1) = 0;
    *(v39 + 2) = 0;
    v39 += 24;
  }

  *(a1 + 8) = i;
  if (v16 != v38)
  {
    v41 = 0;
    v42 = -24 * v6;
    do
    {
      v43 = &v16[v42];
      v44 = &v16[v41];
      std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__vdeallocate(&v16[v41 - 24]);
      *(v44 - 24) = *&v16[v42 - 24];
      *(v44 - 1) = *&v16[v42 - 8];
      *(v43 - 3) = 0;
      *(v43 - 2) = 0;
      *(v43 - 1) = 0;
      v41 -= 24;
      v42 -= 24;
      v38 += 24;
    }

    while (v16 != v38);
  }

  v45 = v5;
  do
  {
    if (v7 != v45)
    {
      std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__assign_with_size[abi:nn200100]<llvm::SmallVector<mlir::presburger::Fraction,1u>*,llvm::SmallVector<mlir::presburger::Fraction,1u>*>(v45, *v7, v7[1], 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 4));
    }

    v7 += 3;
    v45 += 24;
  }

  while (v7 != v15);
  return v5;
}

void std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3;
      do
      {
        v7 = *(v5 - 6);
        v5 -= 48;
        v6 = v7;
        v8 = *(v5 + 2);
        if (v8)
        {
          v9 = 32 * v8;
          v10 = &v6[v9 - 16];
          v11 = -v9;
          do
          {
            if (*(v10 + 8) > 0x40u && *v10)
            {
              MEMORY[0x259C63150](*v10, 0x1000C8000313F17);
            }

            if (*(v10 - 8) > 0x40u)
            {
              v12 = *(v10 - 16);
              if (v12)
              {
                MEMORY[0x259C63150](v12, 0x1000C8000313F17);
              }
            }

            v10 -= 32;
            v11 += 32;
          }

          while (v11);
          v6 = *v5;
        }

        if (v6 != v3 - 32)
        {
          free(v6);
        }

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__assign_with_size[abi:nn200100]<llvm::SmallVector<mlir::presburger::Fraction,1u>*,llvm::SmallVector<mlir::presburger::Fraction,1u>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x555555555555555)
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v8, v6);
        v6 += 48;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    if (v11 != v8)
    {
      v17 = v11;
      do
      {
        v19 = *(v17 - 6);
        v17 -= 48;
        v18 = v19;
        v20 = *(v17 + 2);
        if (v20)
        {
          v21 = 32 * v20;
          v22 = &v18[v21 - 16];
          v23 = -v21;
          do
          {
            if (*(v22 + 8) > 0x40u && *v22)
            {
              MEMORY[0x259C63150](*v22, 0x1000C8000313F17);
            }

            if (*(v22 - 8) > 0x40u)
            {
              v24 = *(v22 - 16);
              if (v24)
              {
                MEMORY[0x259C63150](v24, 0x1000C8000313F17);
              }
            }

            v22 -= 32;
            v23 += 32;
          }

          while (v23);
          v18 = *v17;
        }

        if (v18 != v11 - 32)
        {
          free(v18);
        }

        v11 = v17;
      }

      while (v17 != v8);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v13 = a2 + v12;
    if (v11 != v8)
    {
      do
      {
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v8, v6);
        v6 += 48;
        v8 += 48;
        v12 -= 48;
      }

      while (v12);
      v11 = *(a1 + 8);
    }

    v14 = v11;
    if (v13 != a3)
    {
      v15 = 0;
      do
      {
        v16 = &v11[v15];
        *v16 = &v11[v15 + 16];
        *(v16 + 1) = 0x100000000;
        if (*(v13 + v15 + 8))
        {
          llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v16, v13 + v15);
        }

        v15 += 48;
      }

      while (v13 + v15 != a3);
      v14 = &v11[v15];
    }

    *(a1 + 8) = v14;
  }
}

uint64_t std::pair<int,mlir::presburger::IntegerRelation>::pair[abi:nn200100]<int,mlir::presburger::IntegerRelation&,0>(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = &unk_286893110;
  v5 = *(a3 + 8);
  v6 = *(a3 + 24);
  *(a1 + 40) = a1 + 56;
  *(a1 + 32) = v6;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (a1 + 8 != a3 && *(a3 + 40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 56);
  *(a1 + 56) = v7;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 0x1000000000;
  if (*(a3 + 72))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 72), (a3 + 64));
  }

  v8 = *(a3 + 336);
  *(a1 + 352) = *(a3 + 344);
  *(a1 + 344) = v8;
  *(a1 + 360) = a1 + 376;
  *(a1 + 368) = 0x1000000000;
  if (*(a3 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 360), (a3 + 352));
  }

  return a1;
}

void mlir::presburger::QuasiPolynomial::~QuasiPolynomial(mlir::presburger::QuasiPolynomial *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v3 -= 3;
        v13 = v3;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v13);
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
  }

  v6 = (this + 40);
  v5 = *(this + 5);
  v7 = *(this + 12);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = &v5[v8 - 16];
    v10 = -v8;
    do
    {
      if (*(v9 + 8) > 0x40u && *v9)
      {
        MEMORY[0x259C63150](*v9, 0x1000C8000313F17);
      }

      if (*(v9 - 8) > 0x40u)
      {
        v11 = *(v9 - 16);
        if (v11)
        {
          MEMORY[0x259C63150](v11, 0x1000C8000313F17);
        }
      }

      v9 -= 32;
      v10 += 32;
    }

    while (v10);
    v5 = *v6;
  }

  if (v5 != this + 56)
  {
    free(v5);
  }

  v12 = *(this + 3);
  if (v12 != v6)
  {
    free(v12);
  }
}

uint64_t std::pair<mlir::presburger::QuasiPolynomial,std::vector<mlir::presburger::Fraction>>::pair[abi:nn200100]<mlir::presburger::QuasiPolynomial&,std::vector<mlir::presburger::Fraction>&,0>(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v6 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v6;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 0;
  if (a1 != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a1 + 40) = a1 + 56;
  *(a1 + 48) = 0x100000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((a1 + 40), a2 + 40);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(a1 + 88, *(a2 + 11), *(a2 + 12), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 12) - *(a2 + 11)) >> 3));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  std::vector<mlir::presburger::Fraction>::__init_with_size[abi:nn200100]<mlir::presburger::Fraction*,mlir::presburger::Fraction*>(a1 + 112, *a3, a3[1], (a3[1] - *a3) >> 5);
  return a1;
}

void std::vector<mlir::presburger::Fraction>::__init_with_size[abi:nn200100]<mlir::presburger::Fraction*,mlir::presburger::Fraction*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<mlir::presburger::FracMatrix>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 66);
        v7 = *(v4 - 130);
        if (v7)
        {
          v8 = 32 * v7;
          v9 = &v6[v8 - 16];
          v10 = -v8;
          do
          {
            if (*(v9 + 8) > 0x40u && *v9)
            {
              MEMORY[0x259C63150](*v9, 0x1000C8000313F17);
            }

            if (*(v9 - 8) > 0x40u)
            {
              v11 = *(v9 - 16);
              if (v11)
              {
                MEMORY[0x259C63150](v11, 0x1000C8000313F17);
              }
            }

            v9 -= 32;
            v10 += 32;
          }

          while (v10);
          v6 = *(v4 - 66);
        }

        if (v6 != (v4 - 64))
        {
          free(v6);
        }

        v4 -= 68;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 6);
        v6 -= 48;
        v7 = v8;
        v9 = *(v6 + 2);
        if (v9)
        {
          v10 = 32 * v9;
          v11 = &v7[v10 - 16];
          v12 = -v10;
          do
          {
            if (*(v11 + 8) > 0x40u && *v11)
            {
              MEMORY[0x259C63150](*v11, 0x1000C8000313F17);
            }

            if (*(v11 - 8) > 0x40u)
            {
              v13 = *(v11 - 16);
              if (v13)
              {
                MEMORY[0x259C63150](v13, 0x1000C8000313F17);
              }
            }

            v11 -= 32;
            v12 += 32;
          }

          while (v12);
          v7 = *v6;
        }

        if (v7 != v4 - 32)
        {
          free(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned int *llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (v4 + ((a3 - a2) >> 5) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  if (a2 != a3)
  {
    v5 = 0;
    v6 = *result + 32 * v4;
    while (1)
    {
      while (1)
      {
        v7 = v6 + v5;
        v8 = (a2 + v5);
        *v7 = *(a2 + v5);
        *(v7 + 8) = 0;
        v9 = *(a2 + v5 + 8);
        if (!v9)
        {
          break;
        }

        *(v7 + 8) = v9;
        if (v9 > 0x40)
        {
          llvm::APInt::initSlowCase((v6 + v5), (a2 + v5));
        }

        *v7 = *v8;
        v13 = v8[2];
        v10 = (v8 + 2);
        *(v7 + 16) = v13;
        result = (v7 + 16);
        *(v7 + 24) = 0;
        v12 = *(v10 + 2);
        if (!v12)
        {
          goto LABEL_7;
        }

LABEL_13:
        *(v7 + 24) = v12;
        if (v12 > 0x40)
        {
          llvm::APInt::initSlowCase(result, v10);
        }

        *result = *v10;
        v5 += 32;
        if (a2 + v5 == a3)
        {
LABEL_17:
          LODWORD(v4) = v3[2];
          goto LABEL_18;
        }
      }

      v11 = v8[2];
      v10 = (v8 + 2);
      *(v7 + 16) = v11;
      result = (v7 + 16);
      *(v7 + 24) = 0;
      v12 = *(v10 + 2);
      if (v12)
      {
        goto LABEL_13;
      }

LABEL_7:
      v5 += 32;
      if (a2 + v5 == a3)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  v3[2] = v4 + ((a3 - a2) >> 5);
  return result;
}

uint64_t *llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(uint64_t *result, unint64_t a2)
{
  v2 = *(result + 2);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(result + 3) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v10 = *result;
      if (v2 != a2)
      {
        v11 = (v10 + 32 * v2);
        do
        {
          *v11 = 0uLL;
          v11[1] = 0uLL;
          *(v11 + 2) = 1;
          v11 += 2;
        }

        while (v11 != (v10 + 32 * a2));
      }
    }

    else
    {
      v3 = 32 * v2;
      v4 = v3 + *result - 16;
      v5 = 32 * a2 - v3;
      do
      {
        if (*(v4 + 8) > 0x40u && *v4)
        {
          v6 = result;
          v7 = a2;
          MEMORY[0x259C63150](*v4, 0x1000C8000313F17);
          result = v6;
          a2 = v7;
        }

        if (*(v4 - 8) > 0x40u)
        {
          if (*(v4 - 16))
          {
            v8 = result;
            v9 = a2;
            MEMORY[0x259C63150](*(v4 - 16), 0x1000C8000313F17);
            result = v8;
            a2 = v9;
          }
        }

        v4 -= 32;
        v5 += 32;
      }

      while (v5);
    }

    *(result + 2) = a2;
  }

  return result;
}

void std::vector<std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>>::__init_with_size[abi:nn200100]<std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction> const*,std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction> const*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2E05C0B81702E1)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

uint64_t std::uninitialized_copy[abi:nn200100]<mlir::presburger::IntegerRelation const*,mlir::presburger::IntegerRelation*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      *v7 = &unk_286893110;
      v9 = *(a1 + v6 + 8);
      *(v7 + 24) = *(a1 + v6 + 24);
      *(v7 + 8) = v9;
      v10 = (a3 + v6 + 48);
      *(a3 + v6 + 32) = v10;
      *(v7 + 40) = 0;
      if (a1 != a3 && *(v8 + 40))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = *(v8 + 48);
      *(a3 + v6 + 56) = *(v8 + 56);
      *v10 = v11;
      *(v7 + 64) = v7 + 80;
      v12 = (v7 + 64);
      v12[1] = 0x1000000000;
      if (*(v8 + 72))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v12, (a1 + v6 + 64));
      }

      v13 = a3 + v6;
      v14 = *(a1 + v6 + 336);
      *(v13 + 344) = *(a1 + v6 + 344);
      *(v13 + 336) = v14;
      *(v13 + 352) = a3 + v6 + 368;
      *(v13 + 360) = 0x1000000000;
      if (*(a1 + v6 + 360))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v13 + 352), (a1 + v6 + 352));
      }

      v6 += 624;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

uint64_t mlir::presburger::detail::GeneratingFunction::GeneratingFunction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 0xC00000000;
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      if (v4 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy((a1 + 24), *(a2 + 8), 4 * *(a2 + 16));
      *(a1 + 16) = v4;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v5)
  {
    if (0xF0F0F0F0F0F0F0F1 * ((v6 - v5) >> 5) < 0x78787878787879)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(a1 + 96, *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  return a1;
}

uint64_t std::vector<std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>>::__emplace_back_slow_path<mlir::presburger::PresburgerSet const&,mlir::presburger::detail::GeneratingFunction const&>(__int128 **a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xF47E8FD1FA3F47E9 * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0x2E05C0B81702E0)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xE8FD1FA3F47E8FD2 * (a1[2] - *a1) > v4)
  {
    v4 = 0xE8FD1FA3F47E8FD2 * (a1[2] - *a1);
  }

  if (0xF47E8FD1FA3F47E9 * (a1[2] - *a1) >= 0x1702E05C0B8170)
  {
    v7 = 0x2E05C0B81702E0;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x2E05C0B81702E0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = 16 * (a1[1] - *a1);
  *v8 = *a2;
  v9 = *(a2 + 16);
  *(v8 + 24) = v8 + 40;
  *(v8 + 16) = v9;
  *(v8 + 32) = 0;
  if (1424 * v3 != a2 && *(a2 + 32) != 0)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(1424 * v3 + 0x28) = 1424 * v3 + 56;
  *(1424 * v3 + 0x30) = 0x200000000;
  if (*(a2 + 48))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v8 + 40, a2 + 40);
  }

  mlir::presburger::detail::GeneratingFunction::GeneratingFunction(v8 + 1304, a3);
  v11 = *a1;
  v12 = a1[1];
  v13 = *a1 - v12;
  v14 = (v8 + v13);
  if (v12 != *a1)
  {
    v15 = *a1;
    v16 = v8 + v13;
    do
    {
      v17 = std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>::pair[abi:nn200100](v16, v15);
      v15 += 89;
      v16 = v17 + 1424;
    }

    while (v15 != v12);
    do
    {
      std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>::~pair(v11);
      v11 += 89;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v14;
  a1[1] = (v8 + 1424);
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8 + 1424;
}

uint64_t std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>::pair[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  v5 = a1 + 40;
  *(a1 + 24) = a1 + 40;
  v6 = a1 + 24;
  *(a1 + 32) = 0;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(v6, a2 + 3);
  }

  *(a1 + 40) = a1 + 56;
  *(a1 + 48) = 0x200000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v5, a2 + 40);
  }

  *(a1 + 1304) = *(a2 + 326);
  *(a1 + 1312) = a1 + 1328;
  *(a1 + 1320) = 0xC00000000;
  if (*(a2 + 330))
  {
    llvm::SmallVectorImpl<int>::operator=(a1 + 1312, a2 + 164);
  }

  *(a1 + 1392) = 0;
  *(a1 + 1376) = 0u;
  *(a1 + 1376) = a2[86];
  *(a1 + 1392) = *(a2 + 174);
  *(a2 + 174) = 0;
  a2[86] = 0u;
  *(a1 + 1416) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1400) = *(a2 + 175);
  *(a1 + 1408) = a2[88];
  *(a2 + 177) = 0;
  *(a2 + 1400) = 0u;
  return a1;
}

uint64_t std::vector<mlir::presburger::FracMatrix>::__emplace_back_slow_path<mlir::presburger::FracMatrix&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x78787878787878)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 5);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 5) >= 0x3C3C3C3C3C3C3CLL)
  {
    v5 = 0x78787878787878;
  }

  else
  {
    v5 = v3;
  }

  v12[4] = a1;
  if (v5)
  {
    if (v5 <= 0x78787878787878)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = 544 * v2;
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = v6 + 32;
  *(v6 + 24) = 0x1000000000;
  if (*(a2 + 24))
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v6 + 16), a2 + 16);
  }

  v7 = a1[1];
  v8 = v6 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::presburger::FracMatrix>,mlir::presburger::FracMatrix*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6 + 544;
  v10 = a1[2];
  a1[2] = 0;
  v12[2] = v9;
  v12[3] = v10;
  v12[0] = v9;
  v12[1] = v9;
  std::__split_buffer<mlir::presburger::FracMatrix>::~__split_buffer(v12);
  return v6 + 544;
}

uint64_t llvm::SmallVectorImpl<std::pair<int,mlir::presburger::IntegerRelation>>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 12) < a2)
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  return result;
}

uint64_t std::pair<int,mlir::presburger::IntegerRelation>::pair[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = &unk_286893110;
  v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v4;
  *(a1 + 40) = a1 + 56;
  *(a1 + 48) = 0;
  if (a1 != a2 && *(a2 + 48))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v5;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 0x1000000000;
  if (*(a2 + 80))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 72), (a2 + 72));
  }

  v6 = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 344) = v6;
  *(a1 + 360) = a1 + 376;
  *(a1 + 368) = 0x1000000000;
  if (*(a2 + 368))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 360), (a2 + 360));
  }

  return a1;
}

uint64_t std::vector<std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>>::__emplace_back_slow_path<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction&>(__int128 **a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xF47E8FD1FA3F47E9 * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0x2E05C0B81702E0)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xE8FD1FA3F47E8FD2 * (a1[2] - *a1) > v4)
  {
    v4 = 0xE8FD1FA3F47E8FD2 * (a1[2] - *a1);
  }

  if (0xF47E8FD1FA3F47E9 * (a1[2] - *a1) >= 0x1702E05C0B8170)
  {
    v8 = 0x2E05C0B81702E0;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    if (v8 <= 0x2E05C0B81702E0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = 16 * (a1[1] - *a1);
  *v9 = *a2;
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 24) = v9 + 40;
  *(v9 + 32) = 0;
  if (*(a2 + 32))
  {
    llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(1424 * v3 + 24, (a2 + 24));
  }

  *(1424 * v3 + 0x28) = 1424 * v3 + 56;
  *(1424 * v3 + 0x30) = 0x200000000;
  if (*(a2 + 48))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v9 + 40, a2 + 40);
  }

  mlir::presburger::detail::GeneratingFunction::GeneratingFunction(v9 + 1304, a3);
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = (v9 + v12);
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v9 + v12;
    do
    {
      v16 = std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>::pair[abi:nn200100](v15, v14);
      v14 += 89;
      v15 = v16 + 1424;
    }

    while (v14 != v11);
    do
    {
      std::pair<mlir::presburger::PresburgerSet,mlir::presburger::detail::GeneratingFunction>::~pair(v10);
      v10 += 89;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = (v9 + 1424);
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9 + 1424;
}

void std::vector<mlir::presburger::QuasiPolynomial>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = v4 + v7;
      v10 = v6 + v7;
      v11 = *(v4 + v7);
      *(v10 + 16) = *(v4 + v7 + 16);
      *v10 = v11;
      v12 = (v6 + v7 + 40);
      *(v6 + v7 + 24) = v12;
      *(v10 + 32) = 0;
      if (*(v4 + v7 + 32))
      {
        llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(v6 + v7 + 24, v9 + 3);
      }

      *v12 = v10 + 56;
      *(v10 + 48) = 0x100000000;
      if (*(v9 + 12))
      {
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v6 + v7 + 40), v4 + v7 + 40);
      }

      v8 = (v6 + v7);
      v8[11] = 0;
      v8[12] = 0;
      v8[13] = 0;
      *(v8 + 11) = *(v9 + 88);
      v8[13] = *(v9 + 13);
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      *(v9 + 13) = 0;
      v7 += 112;
    }

    while (v9 + 112 != v5);
    do
    {
      mlir::presburger::QuasiPolynomial::~QuasiPolynomial(v4);
      v4 = (v4 + 112);
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  *(a1 + 8) = v13;
  a2[1] = v13;
  v14 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v14;
  v15 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t std::vector<mlir::presburger::QuasiPolynomial>::__emplace_back_slow_path<mlir::presburger::QuasiPolynomial>(void *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    if (v6 <= 0x249249249249249)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = 112 * v2;
  __p = 0;
  v13 = v7;
  v15 = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = v7 + 40;
  *(v7 + 32) = 0;
  if (*(a2 + 32))
  {
    llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(112 * v2 + 24, (a2 + 24));
  }

  *(112 * v2 + 0x28) = 112 * v2 + 56;
  *(112 * v2 + 0x30) = 0x100000000;
  if (*(a2 + 48))
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v7 + 40), a2 + 40);
  }

  *(112 * v2 + 0x58) = *(a2 + 88);
  *(112 * v2 + 0x68) = *(a2 + 104);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  v14 = v7 + 112;
  std::vector<mlir::presburger::QuasiPolynomial>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 112;
    mlir::presburger::QuasiPolynomial::~QuasiPolynomial((i - 112));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

uint64_t std::vector<mlir::presburger::QuasiPolynomial>::__emplace_back_slow_path<mlir::presburger::QuasiPolynomial const>(void *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0x249249249249249)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = 112 * v2;
  __p = 0;
  v16 = v7;
  v18 = 0;
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(v7 + 24) = v7 + 40;
  *(v7 + 16) = v8;
  *(v7 + 32) = 0;
  if (v7 != a2 && *(a2 + 32) != 0)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v7 + 40) = v7 + 56;
  *(v7 + 48) = 0x100000000;
  if (*(a2 + 48))
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((v7 + 40), a2 + 40);
  }

  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  v10 = v7 + 88;
  *(v10 + 16) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(v10, *(a2 + 88), *(a2 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  v17 = v10 + 24;
  std::vector<mlir::presburger::QuasiPolynomial>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  v13 = v16;
  for (i = v17; v17 != v13; i = v17)
  {
    v17 = i - 112;
    mlir::presburger::QuasiPolynomial::~QuasiPolynomial((i - 112));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::presburger::Fraction>,mlir::presburger::Fraction*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v4 = 0;
  do
  {
    while (1)
    {
      v5 = (a2 + v4);
      v6 = a4 + v4;
      *v6 = *(a2 + v4);
      *(v6 + 8) = 0;
      v7 = *(a2 + v4 + 8);
      if (v7)
      {
        break;
      }

      v9 = v5[2];
      v8 = (v5 + 2);
      *(v6 + 16) = v9;
      v10 = (v6 + 16);
      *(v6 + 24) = 0;
      v11 = *(v8 + 2);
      if (v11)
      {
        goto LABEL_11;
      }

LABEL_5:
      v4 += 32;
      if (a2 + v4 == a3)
      {
        goto LABEL_15;
      }
    }

    *(v6 + 8) = v7;
    if (v7 > 0x40)
    {
      llvm::APInt::initSlowCase((a4 + v4), (a2 + v4));
    }

    *v6 = *v5;
    v12 = v5[2];
    v8 = (v5 + 2);
    *(v6 + 16) = v12;
    v10 = (v6 + 16);
    *(v6 + 24) = 0;
    v11 = *(v8 + 2);
    if (!v11)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v6 + 24) = v11;
    if (v11 > 0x40)
    {
      llvm::APInt::initSlowCase(v10, v8);
    }

    *v10 = *v8;
    v4 += 32;
  }

  while (a2 + v4 != a3);
LABEL_15:
  while (a2 != a3)
  {
    if (*(a2 + 24) > 0x40u)
    {
      v13 = *(a2 + 16);
      if (v13)
      {
        v14 = a2;
        v15 = a3;
        MEMORY[0x259C63150](v13, 0x1000C8000313F17);
        a2 = v14;
        a3 = v15;
      }
    }

    if (*(a2 + 8) > 0x40u)
    {
      if (*a2)
      {
        v16 = a2;
        v17 = a3;
        MEMORY[0x259C63150](*a2, 0x1000C8000313F17);
        a2 = v16;
        a3 = v17;
      }
    }

    a2 += 32;
  }
}

_DWORD *std::vector<mlir::presburger::Fraction>::__emplace_back_slow_path<mlir::presburger::Fraction>(uint64_t *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = (32 * v2);
  *v7 = *a2;
  v7[2] = 0;
  v8 = a2[2];
  if (v8)
  {
    v7[2] = v8;
    if (v8 >= 0x41)
    {
      llvm::APInt::initSlowCase(v7, a2);
    }
  }

  *(v7 + 2) = *(a2 + 2);
  v7[6] = 0;
  v9 = a2[6];
  if (v9)
  {
    v7[6] = v9;
    if (v9 >= 0x41)
    {
      llvm::APInt::initSlowCase((v7 + 4), (a2 + 4));
    }
  }

  v10 = v7 + 8;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::presburger::Fraction>,mlir::presburger::Fraction*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v10;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v10;
}

uint64_t std::vector<mlir::presburger::QuasiPolynomial>::__emplace_back_slow_path<unsigned int &,int>(void *a1, unsigned int *a2, int *a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x249249249249249)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v4;
  }

  v15 = a1;
  if (v6)
  {
    if (v6 <= 0x249249249249249)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  __p = 0;
  v12 = 112 * v3;
  v14 = 0;
  std::allocator<mlir::presburger::QuasiPolynomial>::construct[abi:nn200100]<mlir::presburger::QuasiPolynomial,unsigned int &,int>(a1, (112 * v3), a2, a3);
  v13 = 112 * v3 + 112;
  std::vector<mlir::presburger::QuasiPolynomial>::__swap_out_circular_buffer(a1, &__p);
  v7 = a1[1];
  v9 = v12;
  for (i = v13; v13 != v9; i = v13)
  {
    v13 = i - 112;
    mlir::presburger::QuasiPolynomial::~QuasiPolynomial((i - 112));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

uint64_t std::allocator<mlir::presburger::QuasiPolynomial>::construct[abi:nn200100]<mlir::presburger::QuasiPolynomial,unsigned int &,int>(uint64_t a1, mlir::presburger::QuasiPolynomial *a2, unsigned int *a3, int *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *a4;
  v8 = 1;
  v9 = 0;
  v14 = v6;
  v15 = 0;
  mlir::presburger::Fraction::Fraction(&v10, &v14, &v8);
  if (v15 > 0x40 && v14)
  {
    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
  }

  result = mlir::presburger::QuasiPolynomial::QuasiPolynomial(a2, v5, &v10);
  if (v13 > 0x40)
  {
    result = v12;
    if (v12)
    {
      result = MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  if (v11 > 0x40)
  {
    result = v10;
    if (v10)
    {
      result = MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  if (v9 > 0x40)
  {
    result = v8;
    if (v8)
    {
      return MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::vector<mlir::presburger::Fraction>::__emplace_back_slow_path<int>(uint64_t *a1, int *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = *a2;
  v14 = 1;
  v8 = 32 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 0;
  mlir::presburger::Fraction::Fraction((32 * v2), &v16, &v14);
  if (v17 > 0x40 && v16)
  {
    MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  }

  if (v15 > 0x40 && v14)
  {
    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
  }

  v9 = v8 + 32;
  v10 = a1[1];
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::presburger::Fraction>,mlir::presburger::Fraction*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

uint64_t std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__insert_with_size[abi:nn200100]<llvm::SmallVector<mlir::presburger::Fraction,1u> const*,llvm::SmallVector<mlir::presburger::Fraction,1u> const*>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
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

    v52[4] = a1;
    if (v14)
    {
      if (v14 <= 0x555555555555555)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v26 = 0;
    v27 = 16 * ((a2 - v11) >> 4);
    v28 = 48 * a5;
    v29 = v27 + 48 * a5;
    do
    {
      v30 = v27 + v26;
      *v30 = v27 + v26 + 16;
      *(v30 + 8) = 0x100000000;
      if (*(v7 + v26 + 8))
      {
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v30, v7 + v26);
      }

      v26 += 48;
    }

    while (v28 != v26);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SmallVector<mlir::presburger::Fraction,1u>>,llvm::SmallVector<mlir::presburger::Fraction,1u>*>(a1, v5, a1[1], v29);
    v31 = *a1;
    v32 = v29 + a1[1] - v5;
    a1[1] = v5;
    v33 = v27 + v31 - v5;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SmallVector<mlir::presburger::Fraction,1u>>,llvm::SmallVector<mlir::presburger::Fraction,1u>*>(a1, v31, v5, v33);
    v34 = *a1;
    *a1 = v33;
    a1[1] = v32;
    v35 = a1[2];
    a1[2] = 0;
    v52[2] = v34;
    v52[3] = v35;
    v52[0] = v34;
    v52[1] = v34;
    std::__split_buffer<llvm::SmallVector<mlir::presburger::Fraction,1u>>::~__split_buffer(v52);
    return v27;
  }

  v15 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) < a5)
  {
    v17 = a3 + v15;
    if (a3 + v15 == a4)
    {
      v36 = a1[1];
      a1[1] = v10;
      if (v15 < 1)
      {
        return v5;
      }
    }

    else
    {
      v18 = 0;
      do
      {
        v19 = v10 + v18;
        *v19 = v10 + v18 + 16;
        *(v19 + 8) = 0x100000000;
        if (*(v17 + v18 + 8))
        {
          llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v19, v17 + v18);
        }

        v18 += 48;
      }

      while (v17 + v18 != a4);
      v36 = v10 + v18;
      a1[1] = v10 + v18;
      if (v15 < 1)
      {
        return v5;
      }
    }

    v41 = 48 * a5;
    v42 = v5 + 48 * a5;
    v43 = v36;
    if (v36 - 48 * a5 < v10)
    {
      v44 = 0;
      v45 = -48 * a5;
      do
      {
        v46 = v44 + v36;
        *v46 = v44 + v36 + 16;
        *(v46 + 8) = 0x100000000;
        if (*(v45 + v36 + 8))
        {
          llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v46, v45 + v36);
        }

        v45 += 48;
        v44 += 48;
      }

      while (v45 + v36 < v10);
      v43 = v44 + v36;
    }

    a1[1] = v43;
    if (v36 != v42)
    {
      v47 = (v36 - 48);
      v48 = v5 + v41 - v36;
      v49 = &v47[v41 / 0xFFFFFFFFFFFFFFF8];
      do
      {
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v47, v49);
        v47 -= 6;
        v49 -= 48;
        v48 += 48;
      }

      while (v48);
    }

    v50 = v5;
    do
    {
      llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v50, v7);
      v7 += 48;
      v50 += 6;
      v15 -= 48;
    }

    while (v15);
    return v5;
  }

  v20 = 48 * a5;
  v21 = a2 + 48 * a5;
  v22 = v10 - 48 * a5;
  v23 = a1[1];
  if (v10 >= 48 * a5)
  {
    v24 = 0;
    do
    {
      v25 = v10 + v24;
      *v25 = v10 + v24 + 16;
      *(v25 + 8) = 0x100000000;
      if (*(v22 + v24 + 8))
      {
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v25, v22 + v24);
      }

      v24 += 48;
    }

    while (v22 + v24 < v10);
    v23 = v10 + v24;
  }

  a1[1] = v23;
  if (v10 != v21)
  {
    v37 = (v10 - 48);
    v38 = v5 + v20 - v10;
    v39 = &v37[v20 / 0xFFFFFFFFFFFFFFF8];
    do
    {
      llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v37, v39);
      v37 -= 6;
      v39 -= 48;
      v38 += 48;
    }

    while (v38);
  }

  v40 = v5;
  do
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v40, v7);
    v7 += 48;
    v40 += 6;
    v20 -= 48;
  }

  while (v20);
  return v5;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SmallVector<mlir::presburger::Fraction,1u>>,llvm::SmallVector<mlir::presburger::Fraction,1u>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = a4 + 16;
      *(a4 + 8) = 0x100000000;
      if (*(v7 + 8))
      {
        llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(a4, v7);
      }

      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    for (; v6 != a3; v6 += 48)
    {
      v8 = *v6;
      v9 = *(v6 + 8);
      if (v9)
      {
        v10 = 32 * v9;
        v11 = v8 + v10 - 16;
        v12 = -v10;
        do
        {
          if (*(v11 + 8) > 0x40u && *v11)
          {
            MEMORY[0x259C63150](*v11, 0x1000C8000313F17);
          }

          if (*(v11 - 8) > 0x40u)
          {
            v13 = *(v11 - 16);
            if (v13)
            {
              MEMORY[0x259C63150](v13, 0x1000C8000313F17);
            }
          }

          v11 -= 32;
          v12 += 32;
        }

        while (v12);
        v8 = *v6;
      }

      if (v8 != (v6 + 16))
      {
        free(v8);
      }
    }
  }
}

uint64_t std::__split_buffer<llvm::SmallVector<mlir::presburger::Fraction,1u>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = *(i - 48);
    *(a1 + 16) = i - 48;
    v5 = *(i - 40);
    if (v5)
    {
      v6 = 32 * v5;
      v7 = v4 + v6 - 16;
      v8 = -v6;
      do
      {
        if (*(v7 + 8) > 0x40u && *v7)
        {
          MEMORY[0x259C63150](*v7, 0x1000C8000313F17);
        }

        if (*(v7 - 8) > 0x40u)
        {
          v9 = *(v7 - 16);
          if (v9)
          {
            MEMORY[0x259C63150](v9, 0x1000C8000313F17);
          }
        }

        v7 -= 32;
        v8 += 32;
      }

      while (v8);
      v4 = *(i - 48);
    }

    if (v4 != (i - 32))
    {
      free(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::vector<mlir::presburger::Fraction>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v4 - 2);
          v10 = v7;
          if (v9 != v7)
          {
            do
            {
              v12 = v9;
              if (*(v9 - 2) > 0x40u)
              {
                v11 = *(v9 - 2);
                if (v11)
                {
                  MEMORY[0x259C63150](v11, 0x1000C8000313F17);
                }
              }

              v9 -= 4;
              if (*(v12 - 6) > 0x40u && *v9)
              {
                MEMORY[0x259C63150](*v9, 0x1000C8000313F17);
              }
            }

            while (v9 != v7);
            v10 = *v6;
          }

          *(v4 - 2) = v7;
          operator delete(v10);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

llvm::APInt *std::vector<mlir::presburger::Fraction>::__assign_with_size[abi:nn200100]<mlir::presburger::Fraction*,mlir::presburger::Fraction*>(llvm::APInt *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = *(result + 2);
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(result + 1);
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = v10;
          if (*(v10 - 2) > 0x40u)
          {
            v13 = *(v10 - 2);
            if (v13)
            {
              MEMORY[0x259C63150](v13, 0x1000C8000313F17);
            }
          }

          v10 -= 32;
          if (*(v12 - 6) > 0x40u && *v10)
          {
            MEMORY[0x259C63150](*v10, 0x1000C8000313F17);
          }
        }

        while (v10 != v8);
        v11 = *v6;
      }

      *(v6 + 1) = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v27 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v27 = a4;
      }

      v28 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v29 = 0x7FFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v29 = v27;
      }

      if (!(v29 >> 59))
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v14 = *(result + 1);
  v15 = v14 - v8;
  if (a4 <= (v14 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        result = mlir::presburger::Fraction::operator=(v8, v5);
        v5 += 4;
        v8 += 32;
      }

      while (v5 != a3);
      v14 = *(v6 + 1);
    }

    while (v14 != v8)
    {
      v26 = v14;
      if (*(v14 - 2) > 0x40u)
      {
        result = *(v14 - 2);
        if (result)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }

      v14 -= 32;
      if (*(v26 - 6) > 0x40u)
      {
        result = *v14;
        if (*v14)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }
    }

    *(v6 + 1) = v8;
  }

  else
  {
    v16 = (a2 + v15);
    if (v14 != v8)
    {
      do
      {
        result = mlir::presburger::Fraction::operator=(v8, v5);
        v5 += 4;
        v8 += 32;
        v15 -= 32;
      }

      while (v15);
      v14 = *(v6 + 1);
    }

    v17 = v14;
    if (v16 != a3)
    {
      v18 = 0;
      while (1)
      {
        while (1)
        {
          v19 = &v14[v18 * 8];
          v20 = &v16[v18];
          *v19 = v16[v18];
          *(v19 + 2) = 0;
          v21 = v16[v18 + 1];
          if (!v21)
          {
            break;
          }

          *(v19 + 2) = v21;
          if (v21 > 0x40)
          {
            llvm::APInt::initSlowCase(&v14[v18 * 8], &v16[v18]);
          }

          *v19 = *v20;
          v25 = v20[2];
          v22 = (v20 + 2);
          *(v19 + 2) = v25;
          result = (v19 + 16);
          *(v19 + 6) = 0;
          v24 = *(v22 + 2);
          if (!v24)
          {
            goto LABEL_20;
          }

LABEL_26:
          *(v19 + 6) = v24;
          if (v24 > 0x40)
          {
            llvm::APInt::initSlowCase(result, v22);
          }

          *result = *v22;
          v18 += 4;
          if (&v16[v18] == a3)
          {
LABEL_30:
            v17 = &v14[v18 * 8];
            goto LABEL_31;
          }
        }

        v23 = v20[2];
        v22 = (v20 + 2);
        *(v19 + 2) = v23;
        result = (v19 + 16);
        *(v19 + 6) = 0;
        v24 = *(v22 + 2);
        if (v24)
        {
          goto LABEL_26;
        }

LABEL_20:
        v18 += 4;
        if (&v16[v18] == a3)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_31:
    *(v6 + 1) = v17;
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_8_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return llvm::detail::SlowDynamicAPInt::operator-(&a11, &a9);
}

void OUTLINED_FUNCTION_9_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  llvm::APInt::initSlowCase(v9, &a9);
}

void OUTLINED_FUNCTION_10_8(int a1, int a2, llvm::APInt *a3, llvm::APInt *this)
{

  llvm::APInt::initSlowCase(this, a3);
}

unsigned int *OUTLINED_FUNCTION_11_9(int a1, int a2, const llvm::APInt *a3, llvm::APInt *this)
{

  return llvm::detail::SlowDynamicAPInt::operator=(this, a3);
}

char *mlir::presburger::IntegerRelation::setSpace(char *this, const mlir::presburger::PresburgerSpace *a2)
{
  v2 = *a2;
  this[24] = *(a2 + 16);
  *(this + 8) = v2;
  if (this + 8 != a2)
  {
    v3 = this;
    v4 = *(a2 + 8);
    v5 = *(this + 10);
    if (v5 >= v4)
    {
      if (v4)
      {
        this = memmove(*(this + 4), *(a2 + 3), 24 * v4);
      }

      goto LABEL_10;
    }

    if (*(this + 11) < v4)
    {
      *(this + 10) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v5)
    {
      v6 = a2;
      this = memmove(*(this + 4), *(a2 + 3), 24 * v5);
      a2 = v6;
      v7 = v6[8] - v5;
      if (!v7)
      {
LABEL_10:
        v3[10] = v4;
        return this;
      }
    }

    else
    {
      v5 = 0;
      v7 = *(a2 + 8);
      if (!*(a2 + 8))
      {
        goto LABEL_10;
      }
    }

    this = memcpy((*(v3 + 4) + 24 * v5), (*(a2 + 3) + 24 * v5), 24 * v7);
    goto LABEL_10;
  }

  return this;
}

uint64_t mlir::presburger::IntegerRelation::setSpaceExceptLocals(mlir::presburger::IntegerRelation *this, const mlir::presburger::PresburgerSpace *a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = this + 8;
  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = *a2;
  v8 = *(a2 + 1);
  v10 = *(a2 + 2);
  v9 = *(a2 + 3);
  v11 = *a2;
  *(this + 24) = *(a2 + 16);
  *(this + 8) = v11;
  if ((this + 8) != a2)
  {
    v13 = *(a2 + 8);
    v14 = *(this + 10);
    if (v14 >= v13)
    {
      if (v13)
      {
        v20 = v2;
        v15 = v3;
        memmove(*(this + 4), *(a2 + 3), 24 * v13);
        v3 = v15;
LABEL_12:
        v2 = v20;
      }
    }

    else
    {
      v19 = v3;
      if (*(this + 11) < v13)
      {
        *(this + 10) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v14)
      {
        v21 = v2;
        v18 = a2;
        memmove(*(this + 4), *(a2 + 3), 24 * v14);
        v3 = v19;
        v2 = v21;
        a2 = v18;
        v16 = v18[8] - v14;
        if (!v16)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      v14 = 0;
      v16 = *(a2 + 8);
      if (*(a2 + 8))
      {
LABEL_11:
        v20 = v2;
        memcpy((*(v4 + 3) + 24 * v14), (*(a2 + 3) + 24 * v14), 24 * v16);
        v3 = v19;
        goto LABEL_12;
      }
    }

LABEL_13:
    *(this + 10) = v13;
  }

  return mlir::presburger::PresburgerSpace::insertVar(v4, 1, 0, v3 + v2 + v5 + v6 - (v7 + v8 + v10 + v9));
}

__n128 mlir::presburger::IntegerRelation::setId(uint64_t a1, int a2, int a3, __n128 *a4)
{
  v12 = *a4;
  v13 = a4[1].n128_u64[0];
  if ((*(a1 + 24) & 1) == 0)
  {
    *(a1 + 40) = 0;
    v6 = *(a1 + 12) + *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = (v6 + v7);
    if (v6 + v7)
    {
      if (*(a1 + 44) < v8)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v6 + v7)
      {
        v9 = a2;
        bzero(*(a1 + 32), 24 * ((24 * v8 - 24) / 0x18uLL) + 24);
        a2 = v9;
      }

      *(a1 + 40) = v8;
    }

    *(a1 + 24) = 1;
  }

  v10 = *(a1 + 32) + 24 * (mlir::presburger::PresburgerSpace::getVarKindOffset((a1 + 8), a2) + a3);
  *(v10 + 16) = v13;
  result = v12;
  *v10 = v12;
  return result;
}

uint64_t mlir::presburger::IntegerRelation::getIds(uint64_t a1, int a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    *(a1 + 40) = 0;
    v4 = *(a1 + 12) + *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = (v4 + v5);
    if (v4 + v5)
    {
      if (*(a1 + 44) < v6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v4 + v5)
      {
        bzero(*(a1 + 32), 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
      }

      *(a1 + 40) = v6;
    }

    *(a1 + 24) = 1;
  }

  v7 = *(a1 + 32);
  v8 = v7 + 24 * mlir::presburger::PresburgerSpace::getVarKindOffset((a1 + 8), a2);
  mlir::presburger::PresburgerSpace::getNumVarKind((a1 + 8), a2);
  return v8;
}

void mlir::presburger::IntegerRelation::intersect(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_286893110;
  *(a3 + 8) = *(a1 + 8);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 32) = a3 + 48;
  *(a3 + 40) = 0;
  if (a3 != a1 && *(a1 + 40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a3 + 48) = *(a1 + 48);
  *(a3 + 56) = *(a1 + 56);
  *(a3 + 64) = a3 + 80;
  *(a3 + 72) = 0x1000000000;
  if (*(a1 + 72))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a3 + 64), (a1 + 64));
  }

  *(a3 + 336) = *(a1 + 336);
  *(a3 + 344) = *(a1 + 344);
  *(a3 + 352) = a3 + 368;
  *(a3 + 360) = 0x1000000000;
  if (*(a1 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a3 + 352), (a1 + 352));
  }

  mlir::presburger::mergeLocalVars(a3, a2);
}

uint64_t mlir::presburger::IntegerRelation::isEqual(mlir::presburger::IntegerRelation *this, const mlir::presburger::IntegerRelation *a2)
{
  v22[156] = *MEMORY[0x277D85DE8];
  mlir::presburger::PresburgerRelation::PresburgerRelation(v18, this);
  mlir::presburger::PresburgerRelation::PresburgerRelation(v13, a2);
  isEqual = mlir::presburger::PresburgerRelation::isEqual(v18, v13);
  v4 = v15;
  if (v16)
  {
    v5 = -624 * v16;
    v6 = v15 + 624 * v16 - 624;
    v7 = v6;
    do
    {
      (**v7)(v7);
      v7 -= 78;
      v6 -= 624;
      v5 += 624;
    }

    while (v5);
    v4 = v15;
  }

  if (v4 != &v17)
  {
    free(v4);
  }

  if (v14 != &v15)
  {
    free(v14);
  }

  v8 = v20;
  if (v21)
  {
    v9 = -624 * v21;
    v10 = v20 + 624 * v21 - 624;
    v11 = v10;
    do
    {
      (**v11)(v11);
      v11 -= 78;
      v10 -= 624;
      v9 += 624;
    }

    while (v9);
    v8 = v20;
  }

  if (v8 != v22)
  {
    free(v8);
  }

  if (v19 != &v20)
  {
    free(v19);
  }

  return isEqual;
}

BOOL mlir::presburger::IntegerRelation::isObviouslyEqual(mlir::presburger::IntegerRelation *this, const mlir::presburger::IntegerRelation *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  result = mlir::presburger::PresburgerSpace::isEqual((this + 8), (a2 + 8));
  if (result)
  {
    v5 = *(this + 12);
    if (v5 == *(a2 + 12))
    {
      v6 = *(this + 84);
      if (v6 == *(a2 + 84))
      {
        v7 = *(this + 2);
        v8 = *(this + 3);
        v9 = *(this + 4);
        v10 = *(this + 5);
        v11 = v7 + v8 + v9 + v10 + 1;
        if (v5)
        {
          if (v7 + v8 + v9 + v10 != -1)
          {
            v12 = 0;
            v13 = v8 + v9 + v10 + v7 + 1;
            while (1)
            {
              v14 = 0;
              do
              {
                v15 = *(this + 8) + 16 * (v14 + v12 * *(this + 14));
                v36 = *v15;
                v37 = 0;
                v16 = *(v15 + 8);
                if (v16)
                {
                  v37 = *(v15 + 8);
                  if (v16 >= 0x41)
                  {
                    llvm::APInt::initSlowCase(&v36, v15);
                  }
                }

                v17 = *(a2 + 8) + 16 * (v14 + v12 * *(a2 + 14));
                v34 = *v17;
                v35 = 0;
                v18 = *(v17 + 8);
                if (v18)
                {
                  v35 = *(v17 + 8);
                  if (v18 >= 0x41)
                  {
                    llvm::APInt::initSlowCase(&v34, v17);
                  }
                }

                if (v37)
                {
                  v33 = v37;
                  v28 = v11;
                  v29 = v7;
                  if (v37 >= 0x41)
                  {
                    llvm::APInt::initSlowCase(&v32, &v36);
                  }

                  v32 = v36;
                }

                else
                {
                  if (!v35)
                  {
                    v19 = v36 != v34;
                    goto LABEL_13;
                  }

                  v28 = v11;
                  v29 = v7;
                  llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v32, v36);
                }

                if (v35)
                {
                  v31 = v35;
                  if (v35 >= 0x41)
                  {
                    llvm::APInt::initSlowCase(&v30, &v34);
                  }

                  v30 = v34;
                }

                else
                {
                  llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v30, v34);
                }

                v19 = llvm::detail::SlowDynamicAPInt::operator!=(&v32, &v30);
                if (v31 >= 0x41 && v30)
                {
                  MEMORY[0x259C63150](v30, 0x1000C8000313F17);
                }

                if (v33 >= 0x41 && v32)
                {
                  MEMORY[0x259C63150](v32, 0x1000C8000313F17);
                }

                if (v35 >= 0x41 && v34)
                {
                  MEMORY[0x259C63150](v34, 0x1000C8000313F17);
                }

                v11 = v28;
                v7 = v29;
                if (v37 > 0x40 && v36)
                {
                  MEMORY[0x259C63150](v36, 0x1000C8000313F17);
                  v11 = v28;
                  v7 = v29;
                }

LABEL_13:
                if (v19)
                {
                  return 0;
                }

                ++v14;
              }

              while (v13 != v14);
              if (++v12 == v5)
              {
                v6 = *(this + 84);
                goto LABEL_43;
              }
            }
          }

          return 1;
        }

LABEL_43:
        if (!v6 || !v11)
        {
          return 1;
        }

        v20 = 0;
        v21 = v8 + v9 + v10 + v7 + 1;
LABEL_46:
        v22 = 0;
        while (1)
        {
          v23 = *(this + 44) + 16 * (v22 + v20 * *(this + 86));
          v36 = *v23;
          v37 = 0;
          v24 = *(v23 + 8);
          if (v24)
          {
            v37 = *(v23 + 8);
            if (v24 >= 0x41)
            {
              llvm::APInt::initSlowCase(&v36, v23);
            }
          }

          v25 = *(a2 + 44) + 16 * (v22 + v20 * *(a2 + 86));
          v34 = *v25;
          v35 = 0;
          v26 = *(v25 + 8);
          if (v26)
          {
            v35 = *(v25 + 8);
            if (v26 >= 0x41)
            {
              llvm::APInt::initSlowCase(&v34, v25);
            }
          }

          if (v37)
          {
            break;
          }

          if (v35)
          {
            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v32, v36);
LABEL_66:
            if (v35)
            {
              v31 = v35;
              if (v35 >= 0x41)
              {
                llvm::APInt::initSlowCase(&v30, &v34);
              }

              v30 = v34;
            }

            else
            {
              llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v30, v34);
            }

            v27 = llvm::detail::SlowDynamicAPInt::operator!=(&v32, &v30);
            if (v31 >= 0x41 && v30)
            {
              MEMORY[0x259C63150](v30, 0x1000C8000313F17);
            }

            if (v33 >= 0x41 && v32)
            {
              MEMORY[0x259C63150](v32, 0x1000C8000313F17);
            }

            if (v35 >= 0x41 && v34)
            {
              MEMORY[0x259C63150](v34, 0x1000C8000313F17);
            }

            goto LABEL_52;
          }

          v27 = v36 != v34;
LABEL_52:
          if (v37 > 0x40)
          {
            if (v36)
            {
              MEMORY[0x259C63150](v36, 0x1000C8000313F17);
            }
          }

          if (v27)
          {
            return 0;
          }

          if (v21 == ++v22)
          {
            ++v20;
            result = 1;
            if (v20 == v6)
            {
              return result;
            }

            goto LABEL_46;
          }
        }

        v33 = v37;
        if (v37 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v32, &v36);
        }

        v32 = v36;
        goto LABEL_66;
      }
    }

    return 0;
  }

  return result;
}

uint64_t mlir::presburger::IntegerRelation::isSubsetOf(mlir::presburger::IntegerRelation *this, const mlir::presburger::IntegerRelation *a2)
{
  v22[156] = *MEMORY[0x277D85DE8];
  mlir::presburger::PresburgerRelation::PresburgerRelation(v18, this);
  mlir::presburger::PresburgerRelation::PresburgerRelation(v13, a2);
  isSubsetOf = mlir::presburger::PresburgerRelation::isSubsetOf(v18, v13);
  v4 = v15;
  if (v16)
  {
    v5 = -624 * v16;
    v6 = v15 + 624 * v16 - 624;
    v7 = v6;
    do
    {
      (**v7)(v7);
      v7 -= 78;
      v6 -= 624;
      v5 += 624;
    }

    while (v5);
    v4 = v15;
  }

  if (v4 != &v17)
  {
    free(v4);
  }

  if (v14 != &v15)
  {
    free(v14);
  }

  v8 = v20;
  if (v21)
  {
    v9 = -624 * v21;
    v10 = v20 + 624 * v21 - 624;
    v11 = v10;
    do
    {
      (**v11)(v11);
      v11 -= 78;
      v10 -= 624;
      v9 += 624;
    }

    while (v9);
    v8 = v20;
  }

  if (v8 != v22)
  {
    free(v8);
  }

  if (v19 != &v20)
  {
    free(v19);
  }

  return isSubsetOf;
}

uint64_t mlir::presburger::IntegerRelation::getCounts@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 336);
  v3 = *(this + 48);
  *a2 = *(this + 8);
  *(a2 + 16) = *(this + 24);
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  if (this + 8 != a2 && *(this + 40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a2 + 40) = v2;
  *(a2 + 44) = v3;
  return this;
}

uint64_t mlir::presburger::IntegerRelation::truncateVarKind(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(a1 + 2, a2);
  v7 = *(*a1 + 40);

  return v7(a1, a2, a3, NumVarKind);
}

uint64_t mlir::presburger::IntegerRelation::truncateVarKind(unsigned int *a1, uint64_t a2, unsigned int *a3)
{
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(a3, a2);
  v6 = mlir::presburger::PresburgerSpace::getNumVarKind(a1 + 2, a2);
  v7 = *(*a1 + 40);

  return v7(a1, a2, NumVarKind, v6);
}

uint64_t mlir::presburger::IntegerRelation::truncate(unsigned int *a1, unsigned int *a2)
{
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(a2, 2);
  v5 = mlir::presburger::PresburgerSpace::getNumVarKind(a1 + 2, 2);
  (*(*a1 + 40))(a1, 2, NumVarKind, v5);
  v6 = mlir::presburger::PresburgerSpace::getNumVarKind(a2, 3);
  v7 = mlir::presburger::PresburgerSpace::getNumVarKind(a1 + 2, 3);
  (*(*a1 + 40))(a1, 3, v6, v7);
  v8 = mlir::presburger::PresburgerSpace::getNumVarKind(a2, 0);
  v9 = mlir::presburger::PresburgerSpace::getNumVarKind(a1 + 2, 0);
  (*(*a1 + 40))(a1, 0, v8, v9);
  v10 = mlir::presburger::PresburgerSpace::getNumVarKind(a2, 1);
  v11 = mlir::presburger::PresburgerSpace::getNumVarKind(a1 + 2, 1);
  result = (*(*a1 + 40))(a1, 1, v10, v11);
  if (a1[84] > a2[10])
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRows();
  }

  if (a1[12] > a2[11])
  {

    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRows();
  }

  return result;
}

void mlir::presburger::IntegerRelation::removeInequalityRange(mlir::presburger::IntegerRelation *this, unsigned int a2, unsigned int a3)
{
  if (a3 > a2)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRows();
  }
}

void mlir::presburger::IntegerRelation::removeEqualityRange(mlir::presburger::IntegerRelation *this, unsigned int a2, unsigned int a3)
{
  if (a3 > a2)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRows();
  }
}

mlir::presburger::PresburgerRelation *mlir::presburger::IntegerRelation::computeReprWithOnlyDivLocals(mlir::presburger::IntegerRelation *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v2;
  v17[32] = *MEMORY[0x277D85DE8];
  if (*(v2 + 20))
  {
    v7 = *(v2 + 8);
    v8 = *(v2 + 24);
    v6 = &unk_286893110;
    __dst = &v11;
    v10 = 0;
    if (&v6 != v2 && *(v2 + 40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = *(v2 + 48);
    v12 = *(v2 + 56);
    v13[0] = v14;
    v13[1] = 0x1000000000;
    if (*(v2 + 72))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v13, (v2 + 64));
    }

    v14[32] = *(v4 + 336);
    v15 = *(v4 + 344);
    v16[0] = v17;
    v16[1] = 0x1000000000;
    if (*(v4 + 360))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v16, (v4 + 352));
    }

    if (*(v4 + 20))
    {
      operator new();
    }

    mlir::presburger::IntegerRelation::getLocalReprs(&v6);
  }

  return mlir::presburger::PresburgerRelation::PresburgerRelation(v3, v2);
}

void mlir::presburger::IntegerRelation::getLocalReprs(_DWORD *a1)
{
  v4[3] = *MEMORY[0x277D85DE8];
  v1 = a1 + 2;
  v2 = a1[3] + a1[2] + a1[4];
  v3 = v2 + a1[5];
  if (v3 >= 9)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (v3)
  {
    bzero(v4, v3);
  }

  if (v2)
  {
    memset(v4, 1, v2);
  }

  mlir::presburger::PresburgerSpace::getVarKindOffset(v1, 1);
  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

uint64_t mlir::presburger::IntegerRelation::swapVar(uint64_t this, unsigned int a2, unsigned int a3)
{
  if (a2 != a3)
  {
    v3 = this;
    VarKindAt = mlir::presburger::PresburgerSpace::getVarKindAt((this + 8), a2);
    v7 = mlir::presburger::PresburgerSpace::getVarKindAt((v3 + 8), a3);
    v8 = a2 - mlir::presburger::PresburgerSpace::getVarKindOffset((v3 + 8), VarKindAt);
    VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset((v3 + 8), v7);
    mlir::presburger::PresburgerSpace::swapVar(v3 + 8, VarKindAt, v7, v8, a3 - VarKindOffset);
    mlir::presburger::Matrix<llvm::DynamicAPInt>::swapColumns();
  }

  return this;
}

void mlir::presburger::SymbolicLexSimplex::~SymbolicLexSimplex(mlir::presburger::SymbolicLexSimplex *this)
{
  *this = &unk_286893290;
  mlir::presburger::SimplexBase::~SimplexBase((this + 1712));
  mlir::presburger::IntegerRelation::~IntegerRelation((this + 1088));

  mlir::presburger::SimplexBase::~SimplexBase(this);
}

{
  *this = &unk_286893290;
  mlir::presburger::SimplexBase::~SimplexBase((this + 1712));
  mlir::presburger::IntegerRelation::~IntegerRelation((this + 1088));
  mlir::presburger::SimplexBase::~SimplexBase(this);

  JUMPOUT(0x259C63180);
}

void mlir::presburger::IntegerRelation::findSymbolicIntegerLexMin(mlir::presburger::IntegerRelation *this)
{
  v1 = (this + 8);
  v2 = vaddvq_s32(*(this + 8));
  if (v2 > 0x39)
  {
    operator new();
  }

  v3 = (v2 << 58) | 1;
  VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset(v1, 0);
  VarKindEnd = mlir::presburger::PresburgerSpace::getVarKindEnd(v1, 0);
  if (VarKindOffset != VarKindEnd)
  {
    if (v3)
    {
      v3 = v3 & 0xFC00000000000001 | (2 * ((((1 << VarKindEnd) + (-1 << VarKindOffset)) | (v3 >> 1)) & ~(-1 << (v3 >> 58))));
    }

    else
    {
      v6 = VarKindOffset >> 6;
      if (VarKindOffset >> 6 == VarKindEnd >> 6)
      {
        v7 = (1 << VarKindEnd) + (-1 << VarKindOffset);
        v8 = *v3;
LABEL_22:
        *(v8 + 8 * v6) |= v7;
        goto LABEL_23;
      }

      v8 = *v3;
      *(*v3 + 8 * v6) |= -1 << VarKindOffset;
      v9 = VarKindOffset - (VarKindOffset != 0) + ((VarKindOffset != 0) << 6);
      v10 = v9 & 0xFFFFFFC0;
      v11 = (v9 & 0xFFFFFFC0) + 64;
      if (v11 <= VarKindEnd)
      {
        v12 = v10 + 128 <= VarKindEnd + 1 ? VarKindEnd + 1 : v10 + 128;
        v13 = v12 - v10 - 65;
        if (v13 < 0x5C0)
        {
          goto LABEL_45;
        }

        if (((v10 - v12) | 0x3F) + 64 < v10)
        {
          goto LABEL_45;
        }

        v14 = (v13 >> 6) + 1;
        v11 += (v14 & 0x7FFFFFC) << 6;
        v10 += (v14 & 0x7FFFFFC) << 6;
        v15 = v9 >> 6;
        *&v16 = -1;
        *(&v16 + 1) = -1;
        v17 = v14 & 0x7FFFFFC;
        do
        {
          v18 = (v8 + 8 * (v15 & 0x3FFFFFF));
          *v18 = v16;
          v18[1] = v16;
          v15 += 4;
          v17 -= 4;
        }

        while (v17);
        if (v14 != (v14 & 0x7FFFFFC))
        {
LABEL_45:
          do
          {
            *(v8 + 8 * (v10 >> 6)) = -1;
            v10 = v11;
            v11 += 64;
          }

          while (v11 <= VarKindEnd);
          v10 = v11 - 64;
        }
      }

      if (v10 < VarKindEnd)
      {
        v7 = ~(-1 << VarKindEnd);
        v6 = v10 >> 6;
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  v19 = mlir::presburger::PresburgerSpace::getVarKindOffset(v1, 2);
  v20 = mlir::presburger::PresburgerSpace::getVarKindEnd(v1, 2);
  if (v19 != v20 && (v3 & 1) == 0)
  {
    v21 = v19 >> 6;
    if (v19 >> 6 == v20 >> 6)
    {
      v22 = (1 << v20) + (-1 << v19);
      v23 = *v3;
LABEL_41:
      *(v23 + 8 * v21) |= v22;
      goto LABEL_42;
    }

    v23 = *v3;
    *(*v3 + 8 * v21) |= -1 << v19;
    v24 = v19 - (v19 != 0) + ((v19 != 0) << 6);
    v25 = v24 & 0xFFFFFFC0;
    v26 = (v24 & 0xFFFFFFC0) + 64;
    if (v26 <= v20)
    {
      v27 = v25 + 128 <= v20 + 1 ? v20 + 1 : v25 + 128;
      v28 = v27 - v25 - 65;
      if (v28 < 0x5C0)
      {
        goto LABEL_46;
      }

      if (((v25 - v27) | 0x3F) + 64 < v25)
      {
        goto LABEL_46;
      }

      v29 = (v28 >> 6) + 1;
      v26 += (v29 & 0x7FFFFFC) << 6;
      v25 += (v29 & 0x7FFFFFC) << 6;
      v30 = v24 >> 6;
      *&v31 = -1;
      *(&v31 + 1) = -1;
      v32 = v29 & 0x7FFFFFC;
      do
      {
        v33 = (v23 + 8 * (v30 & 0x3FFFFFF));
        *v33 = v31;
        v33[1] = v31;
        v30 += 4;
        v32 -= 4;
      }

      while (v32);
      if (v29 != (v29 & 0x7FFFFFC))
      {
LABEL_46:
        do
        {
          *(v23 + 8 * (v25 >> 6)) = -1;
          v25 = v26;
          v26 += 64;
        }

        while (v26 <= v20);
        v25 = v26 - 64;
      }
    }

    if (v25 < v20)
    {
      v22 = ~(-1 << v20);
      v21 = v25 >> 6;
      goto LABEL_41;
    }
  }

LABEL_42:
  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

void mlir::presburger::IntegerRelation::findSymbolicIntegerLexMax(mlir::presburger::IntegerRelation *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v3 = v2;
  v43[32] = *MEMORY[0x277D85DE8];
  v33 = *(v2 + 8);
  v34 = *(v2 + 24);
  v32 = &unk_286893110;
  __dst = &v37;
  v36 = 0;
  if (&v32 != v2 && *(v2 + 40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v37 = *(v2 + 48);
  v38 = *(v2 + 56);
  v39[0] = v40;
  v39[1] = 0x1000000000;
  if (*(v2 + 72))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v39, (v2 + 64));
  }

  v40[32] = *(v3 + 336);
  v41 = *(v3 + 344);
  v42[0] = v43;
  v42[1] = 0x1000000000;
  if (*(v3 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v42, (v3 + 352));
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 12) + v4;
  if (v4 >= v5)
  {
LABEL_89:
    mlir::presburger::IntegerRelation::findSymbolicIntegerLexMin(&v32);
  }

  while (1)
  {
    v6 = *(v3 + 48);
    if (v6)
    {
      for (i = 0; v6 != i; ++i)
      {
        v8 = *(v3 + 64) + 16 * (v4 + *(v3 + 56) * i);
        v9 = *v8;
        v30 = *v8;
        v31 = 0;
        v10 = *(v8 + 8);
        if (v10)
        {
          v31 = *(v8 + 8);
          if (v10 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v30, v8);
          }
        }

        else if (v9 != 0x8000000000000000)
        {
          v26 = -v9;
          v27 = 0;
          v11 = (v39[0] + 16 * (v4 + v38 * i));
          goto LABEL_16;
        }

        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v22, -1);
        if (v31)
        {
          v25 = v31;
          if (v31 > 0x40)
          {
            llvm::APInt::initSlowCase(&v24, &v30);
          }

          v24 = v30;
        }

        else
        {
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v24, v30);
        }

        llvm::detail::SlowDynamicAPInt::operator*(&v22, &v24, &v28);
        v27 = v29;
        if (v29 > 0x40)
        {
          llvm::APInt::initSlowCase(&v26, &v28);
        }

        v26 = v28;
        if (v25 >= 0x41 && v24)
        {
          MEMORY[0x259C63150](v24, 0x1000C8000313F17);
        }

        if (v23 >= 0x41 && v22)
        {
          MEMORY[0x259C63150](v22, 0x1000C8000313F17);
        }

        v13 = v27;
        v11 = (v39[0] + 16 * (v4 + v38 * i));
        if (v27)
        {
          if (v11[2])
          {
            llvm::detail::SlowDynamicAPInt::operator=(v11, &v26);
          }

          else
          {
            v11[2] = v27;
            if (v13 > 0x40)
            {
              llvm::APInt::initSlowCase(v11, &v26);
            }

            *v11 = v26;
          }

          goto LABEL_18;
        }

LABEL_16:
        v12 = v26;
        if (v11[2] > 0x40 && *v11)
        {
          MEMORY[0x259C63150](*v11, 0x1000C8000313F17);
        }

        *v11 = v12;
        v11[2] = 0;
LABEL_18:
        if (v27 > 0x40 && v26)
        {
          MEMORY[0x259C63150](v26, 0x1000C8000313F17);
        }

        if (v31 > 0x40 && v30)
        {
          MEMORY[0x259C63150](v30, 0x1000C8000313F17);
        }
      }
    }

    v14 = *(v3 + 336);
    if (v14)
    {
      break;
    }

LABEL_10:
    if (++v4 == v5)
    {
      goto LABEL_89;
    }
  }

  v15 = 0;
  while (1)
  {
    v16 = *(v3 + 352) + 16 * (v4 + *(v3 + 344) * v15);
    v17 = *v16;
    v30 = *v16;
    v31 = 0;
    v18 = *(v16 + 8);
    if (v18)
    {
      v31 = *(v16 + 8);
      if (v18 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v30, v16);
      }
    }

    else if (v17 != 0x8000000000000000)
    {
      v26 = -v17;
      v27 = 0;
      v19 = (v42[0] + 16 * (v4 + v41 * v15));
      goto LABEL_55;
    }

    llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v22, -1);
    if (v31)
    {
      v25 = v31;
      if (v31 > 0x40)
      {
        llvm::APInt::initSlowCase(&v24, &v30);
      }

      v24 = v30;
    }

    else
    {
      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v24, v30);
    }

    llvm::detail::SlowDynamicAPInt::operator*(&v22, &v24, &v28);
    v27 = v29;
    if (v29 > 0x40)
    {
      llvm::APInt::initSlowCase(&v26, &v28);
    }

    v26 = v28;
    if (v25 >= 0x41 && v24)
    {
      MEMORY[0x259C63150](v24, 0x1000C8000313F17);
    }

    if (v23 >= 0x41 && v22)
    {
      MEMORY[0x259C63150](v22, 0x1000C8000313F17);
    }

    v21 = v27;
    v19 = (v42[0] + 16 * (v4 + v41 * v15));
    if (v27)
    {
      if (v19[2])
      {
        llvm::detail::SlowDynamicAPInt::operator=(v19, &v26);
      }

      else
      {
        v19[2] = v27;
        if (v21 > 0x40)
        {
          llvm::APInt::initSlowCase(v19, &v26);
        }

        *v19 = v26;
      }

      goto LABEL_57;
    }

LABEL_55:
    v20 = v26;
    if (v19[2] > 0x40 && *v19)
    {
      MEMORY[0x259C63150](*v19, 0x1000C8000313F17);
    }

    *v19 = v20;
    v19[2] = 0;
LABEL_57:
    if (v27 > 0x40 && v26)
    {
      MEMORY[0x259C63150](v26, 0x1000C8000313F17);
    }

    if (v31 > 0x40)
    {
      if (v30)
      {
        MEMORY[0x259C63150](v30, 0x1000C8000313F17);
      }
    }

    if (v14 == ++v15)
    {
      goto LABEL_10;
    }
  }
}

void mlir::presburger::IntegerRelation::subtract(mlir::presburger::IntegerRelation *this@<X0>, const mlir::presburger::PresburgerRelation *a2@<X1>, uint64_t a3@<X8>)
{
  v13[156] = *MEMORY[0x277D85DE8];
  mlir::presburger::PresburgerRelation::PresburgerRelation(v9, this);
  mlir::presburger::PresburgerRelation::subtract(v9, a2, a3);
  v5 = v11;
  if (v12)
  {
    v6 = -624 * v12;
    v7 = v11 + 624 * v12 - 624;
    v8 = v7;
    do
    {
      (**v8)(v8);
      v8 -= 78;
      v7 -= 624;
      v6 += 624;
    }

    while (v6);
    v5 = v11;
  }

  if (v5 != v13)
  {
    free(v5);
  }

  if (v10 != &v11)
  {
    free(v10);
  }
}

uint64_t mlir::presburger::IntegerRelation::appendVar(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(a1 + 2, a2);
  v7 = *(*a1 + 24);

  return v7(a1, a2, NumVarKind, a3);
}

unsigned int *mlir::presburger::IntegerRelation::removeVarRange(unsigned int *this, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return this;
  }

  v5 = this;
  VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset(this + 2, 2);
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(v5 + 2, 2);
  v8 = a3 - VarKindOffset;
  if (a3 - VarKindOffset >= NumVarKind)
  {
    v8 = NumVarKind;
  }

  if (a3 <= VarKindOffset)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2 - VarKindOffset;
  if (a2 - VarKindOffset >= NumVarKind)
  {
    v10 = NumVarKind;
  }

  if (a2 <= VarKindOffset)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  this = (*(*v5 + 40))(v5, 2, v11, v9);
  v12 = v11 - v9 + a3;
  if (v12 <= a2)
  {
    goto LABEL_13;
  }

  v20 = mlir::presburger::PresburgerSpace::getVarKindOffset(v5 + 2, 3);
  v21 = mlir::presburger::PresburgerSpace::getNumVarKind(v5 + 2, 3);
  v22 = v12 - v20;
  if (v12 - v20 >= v21)
  {
    v22 = v21;
  }

  if (v12 <= v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  v24 = a2 - v20;
  if (a2 - v20 >= v21)
  {
    v24 = v21;
  }

  v25 = a2 <= v20 ? 0 : v24;
  this = (*(*v5 + 40))(v5, 3, v25, v23);
  v12 = v12 - v23 + v25;
  if (v12 <= a2)
  {
LABEL_13:
    if (v12 <= a2)
    {
      return this;
    }

    goto LABEL_14;
  }

  v26 = mlir::presburger::PresburgerSpace::getVarKindOffset(v5 + 2, 0);
  v27 = mlir::presburger::PresburgerSpace::getNumVarKind(v5 + 2, 0);
  v28 = v12 - v26;
  if (v12 - v26 >= v27)
  {
    v28 = v27;
  }

  if (v12 <= v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  v30 = a2 - v26;
  if (a2 - v26 >= v27)
  {
    v30 = v27;
  }

  if (a2 <= v26)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  this = (*(*v5 + 40))(v5, 0, v31, v29);
  v12 = v12 - v29 + v31;
  if (v12 > a2)
  {
LABEL_14:
    v13 = mlir::presburger::PresburgerSpace::getVarKindOffset(v5 + 2, 1);
    v14 = mlir::presburger::PresburgerSpace::getNumVarKind(v5 + 2, 1);
    v15 = v12 - v13;
    if (v12 - v13 >= v14)
    {
      v15 = v14;
    }

    if (v12 <= v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    v17 = a2 - v13;
    if (a2 - v13 >= v14)
    {
      v17 = v14;
    }

    if (a2 <= v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v19 = *(*v5 + 40);

    return v19(v5, 1, v18, v16);
  }

  return this;
}

uint64_t mlir::presburger::IntegerRelation::removeVarRange(uint64_t result, int a2, unsigned int a3, unsigned int a4)
{
  if (a4 > a3)
  {
    mlir::presburger::PresburgerSpace::getVarKindOffset((result + 8), a2);
    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeColumns();
  }

  return result;
}

uint64_t mlir::presburger::IntegerRelation::getLowerAndUpperBoundIndices(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v16 = *MEMORY[0x277D85DE8];
  if (*(result + 336))
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  if (a5)
  {
    v13 = 0;
    v7 = *(result + 48);
    if (v7)
    {
      for (i = 0; i < v7; v13 = i)
      {
        v9 = (*(v6 + 64) + 16 * (a2 + *(v6 + 56) * i));
        v10 = *v9;
        v14 = *v9;
        v11 = *(v9 + 2);
        if (v11)
        {
          v15 = *(v9 + 2);
          if (v11 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v14, v9);
          }

          result = llvm::detail::operator==(&v14, 0);
          if (v15 >= 0x41 && v14)
          {
            v12 = result;
            result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
            if ((v12 & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          else if ((result & 1) == 0)
          {
LABEL_9:
            mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
          }
        }

        else if (v10)
        {
          goto LABEL_9;
        }

        i = v13 + 1;
      }
    }
  }

  return result;
}

unsigned int *mlir::presburger::IntegerRelation::setAndEliminate(unsigned int *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a4)
    {
      mlir::presburger::Matrix<llvm::DynamicAPInt>::addToColumn();
    }

    return mlir::presburger::IntegerRelation::removeVarRange(this, a2, a2);
  }

  return this;
}

uint64_t *mlir::presburger::IntegerRelation::clearAndCopyFrom(mlir::presburger::IntegerRelation *this, const mlir::presburger::IntegerRelation *a2)
{
  v4 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v4;
  if (this != a2)
  {
    v5 = *(a2 + 10);
    v6 = *(this + 10);
    if (v6 >= v5)
    {
      if (v5)
      {
        memmove(*(this + 4), *(a2 + 4), 24 * v5);
      }

      goto LABEL_10;
    }

    if (*(this + 11) < v5)
    {
      *(this + 10) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v6)
    {
      memmove(*(this + 4), *(a2 + 4), 24 * v6);
      v7 = *(a2 + 10) - v6;
      if (!v7)
      {
LABEL_10:
        *(this + 10) = v5;
        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 10);
      if (!*(a2 + 10))
      {
        goto LABEL_10;
      }
    }

    memcpy((*(this + 4) + 24 * v6), (*(a2 + 4) + 24 * v6), 24 * v7);
    goto LABEL_10;
  }

LABEL_11:
  v8 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v8;
  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(this + 8, a2 + 8);
  v9 = *(a2 + 86);
  *(this + 42) = *(a2 + 42);
  *(this + 86) = v9;

  return llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(this + 44, a2 + 44);
}

uint64_t mlir::presburger::IntegerRelation::findConstraintWithNonZeroAt(mlir::presburger::IntegerRelation *this, uint64_t a2, int a3, unsigned int *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = 336;
  if (a3)
  {
    v4 = 48;
  }

  v5 = *(this + v4);
  *a4 = 0;
  if (v5)
  {
    v6 = 0;
    if (a3)
    {
      while (1)
      {
        v7 = (*(this + 8) + 16 * (a2 + *(this + 14) * v6));
        v8 = *v7;
        v22 = *v7;
        v9 = *(v7 + 2);
        if (v9)
        {
          v10 = this;
          v11 = a2;
          v12 = a4;
          v23 = *(v7 + 2);
          if (v9 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v22, v7);
          }

          v13 = llvm::detail::operator!=(&v22, 0);
          if (v23 >= 0x41 && v22)
          {
            MEMORY[0x259C63150](v22, 0x1000C8000313F17);
            a4 = v12;
            a2 = v11;
            this = v10;
            if (v13)
            {
              return 1;
            }
          }

          else
          {
            a4 = v12;
            a2 = v11;
            this = v10;
            if (v13)
            {
              return 1;
            }
          }
        }

        else if (v8)
        {
          return 1;
        }

        v6 = *a4 + 1;
        *a4 = v6;
        if (v6 >= v5)
        {
          return 0;
        }
      }
    }

    do
    {
      v14 = (*(this + 44) + 16 * (a2 + *(this + 86) * v6));
      v15 = *v14;
      v22 = *v14;
      v16 = *(v14 + 2);
      if (v16)
      {
        v17 = this;
        v18 = a2;
        v19 = a4;
        v23 = *(v14 + 2);
        if (v16 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v22, v14);
        }

        v20 = llvm::detail::operator!=(&v22, 0);
        if (v23 >= 0x41 && v22)
        {
          MEMORY[0x259C63150](v22, 0x1000C8000313F17);
          a4 = v19;
          a2 = v18;
          this = v17;
          if (v20)
          {
            return 1;
          }
        }

        else
        {
          a4 = v19;
          a2 = v18;
          this = v17;
          if (v20)
          {
            return 1;
          }
        }
      }

      else if (v15)
      {
        return 1;
      }

      v6 = *a4 + 1;
      *a4 = v6;
    }

    while (v6 < v5);
  }

  return 0;
}

uint64_t mlir::presburger::IntegerRelation::normalizeConstraintsByGCD(uint64_t this)
{
  v1 = this;
  v11 = *MEMORY[0x277D85DE8];
  v2 = (this + 48);
  v3 = *(this + 48);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      this = mlir::presburger::IntMatrix::normalizeRow(v2, i, &v9);
      if (v10 > 0x40)
      {
        this = v9;
        if (v9)
        {
          this = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
        }
      }
    }
  }

  v5 = *(v1 + 336);
  if (v5)
  {
    for (j = 0; j != v5; ++j)
    {
      this = mlir::presburger::IntMatrix::normalizeRow((v1 + 336), j, &v7);
      if (v8 > 0x40)
      {
        this = v7;
        if (v7)
        {
          this = MEMORY[0x259C63150](v7, 0x1000C8000313F17);
        }
      }
    }
  }

  return this;
}

BOOL mlir::presburger::IntegerRelation::hasInvalidConstraint(mlir::presburger::IntegerRelation *this)
{
  if (mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(this, 1))
  {
    return 1;
  }

  return mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(this, 0);
}

BOOL mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = 336;
  if (a2)
  {
    v2 = 48;
  }

  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = 0;
    v5 = vaddvq_s32(*(a1 + 8));
    v6 = 1;
    while (1)
    {
      if (v5)
      {
        v7 = 0;
        if (a2)
        {
          while (1)
          {
            v8 = (*(a1 + 64) + 16 * (v7 + v4 * *(a1 + 56)));
            v9 = *v8;
            v38 = *v8;
            v10 = *(v8 + 2);
            if (v10)
            {
              v11 = a1;
              v12 = a2;
              v39 = *(v8 + 2);
              if (v10 >= 0x41)
              {
                llvm::APInt::initSlowCase(&v38, v8);
              }

              v13 = mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(&v38, &v39);
              a2 = v12;
              a1 = v11;
              if (v13)
              {
                goto LABEL_5;
              }
            }

            else if (v9)
            {
              goto LABEL_5;
            }

            if (v5 == ++v7)
            {
              goto LABEL_24;
            }
          }
        }

        do
        {
          v14 = (*(a1 + 352) + 16 * (v7 + v4 * *(a1 + 344)));
          v15 = *v14;
          v38 = *v14;
          v16 = *(v14 + 2);
          if (v16)
          {
            v17 = a1;
            v18 = a2;
            v39 = *(v14 + 2);
            if (v16 >= 0x41)
            {
              llvm::APInt::initSlowCase(&v38, v14);
            }

            v19 = mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(&v38, &v39);
            a2 = v18;
            a1 = v17;
            if (v19)
            {
              goto LABEL_5;
            }
          }

          else if (v15)
          {
            goto LABEL_5;
          }

          ++v7;
        }

        while (v5 != v7);
      }

LABEL_24:
      if (a2)
      {
        v20 = (*(a1 + 64) + 16 * (v5 + *(a1 + 56) * v4));
        v21 = *v20;
        v36 = *v20;
        v37 = 0;
        v22 = *(v20 + 2);
        if (v22)
        {
          v29 = a1;
          v30 = a2;
          v37 = *(v20 + 2);
          if (v22 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v36, v20);
          }

          v31 = llvm::detail::operator!=(&v36, 0);
          a2 = v30;
          a1 = v29;
          if (!v31)
          {
            goto LABEL_30;
          }
        }

        else if (!v21)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v24 = (*(a1 + 352) + 16 * (v5 + *(a1 + 344) * v4));
        v25 = *v24;
        v36 = *v24;
        v37 = 0;
        v26 = *(v24 + 2);
        if (v26)
        {
          v32 = a1;
          v33 = a2;
          v37 = *(v24 + 2);
          if (v26 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v36, v24);
          }

          v34 = llvm::detail::operator<(&v36, 0);
          a2 = v33;
          a1 = v32;
          if ((v34 & 1) == 0)
          {
LABEL_30:
            v23 = 1;
            goto LABEL_31;
          }
        }

        else if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }
      }

      v23 = 0;
LABEL_31:
      if (v37 > 0x40 && v36)
      {
        v27 = a1;
        v28 = a2;
        MEMORY[0x259C63150](v36, 0x1000C8000313F17);
        a1 = v27;
        a2 = v28;
      }

      if (!v23)
      {
        return v6;
      }

LABEL_5:
      v6 = ++v4 < v3;
      if (v4 == v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t mlir::presburger::IntegerRelation::isEmpty(void **this)
{
  v30[32] = *MEMORY[0x277D85DE8];
  v2 = 1;
  if (!mlir::presburger::IntegerRelation::isEmptyByGCDTest(this) && !mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(this, 1) && !mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(this, 0))
  {
    v18 = &unk_286893110;
    v19 = *(this + 1);
    v20 = *(this + 24);
    __dst = &v23;
    v22 = 0;
    if (&v18 != this && *(this + 10))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = this[6];
    v24 = *(this + 14);
    v25[0] = &v26;
    v25[1] = 0x1000000000;
    if (*(this + 18))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v25, this + 8);
    }

    v27 = this[42];
    v28 = *(this + 86);
    v29[0] = v30;
    v29[1] = 0x1000000000;
    if (*(this + 90))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v29, this + 44);
    }

    mlir::presburger::IntegerRelation::removeRedundantLocalVars(&v18);
    v2 = 1;
    if (!mlir::presburger::IntegerRelation::isEmptyByGCDTest(&v18) && !mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(&v18, 1) && !mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(&v18, 0))
    {
      v4 = 0;
      while (1)
      {
        v5 = vaddvq_s32(v19);
        v6 = v5;
        if (v4 >= v5)
        {
          break;
        }

        mlir::presburger::IntegerRelation::gaussianEliminateVars(&v18, v4, v5);
        v2 = 1;
        if (!mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(&v18, 1) && !mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(&v18, 0))
        {
          ++v4;
          if (!mlir::presburger::IntegerRelation::isEmptyByGCDTest(&v18))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      if (v5)
      {
        v7 = 0;
        v8 = 1;
        while (1)
        {
          v9 = v6;
          v10 = vaddvq_s32(v19);
          v17 = &v18;
          v11 = getBestVarToEliminate(mlir::presburger::IntegerRelation const&,unsigned int,unsigned int)::$_0::operator()(&v17, 0);
          v12 = 0;
          if (v10 >= 2)
          {
            v13 = v11;
            LODWORD(v12) = 0;
            v14 = 1;
            do
            {
              v15 = getBestVarToEliminate(mlir::presburger::IntegerRelation const&,unsigned int,unsigned int)::$_0::operator()(&v17, v14);
              if (v15 >= v13)
              {
                v12 = v12;
              }

              else
              {
                v13 = v15;
                v12 = v14;
              }

              v14 = (v14 + 1);
            }

            while (v10 != v14);
          }

          mlir::presburger::IntegerRelation::fourierMotzkinEliminate(&v18, v12, 0, 0);
          if (v23 + v27 >= (32 * vaddvq_s32(*(this + 1))))
          {
            break;
          }

          v16 = 1;
          if (!mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(&v18, 1) && !mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(&v18, 0))
          {
            ++v7;
            v6 = v9;
            v8 = v7 < v9;
            if (v7 != v9)
            {
              continue;
            }
          }

          goto LABEL_37;
        }

        v16 = 0;
LABEL_37:
        v2 = v8 & v16;
      }

      else
      {
        v2 = 0;
      }
    }

LABEL_14:
    mlir::presburger::IntegerRelation::~IntegerRelation(&v18);
  }

  return v2 & 1;
}

BOOL mlir::presburger::IntegerRelation::isEmptyByGCDTest(mlir::presburger::IntegerRelation *this)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(this + 12);
  if (v1)
  {
    v3 = 0;
    v4 = vaddvq_s32(*(this + 8));
    v5 = 1;
    while (1)
    {
      v6 = (*(this + 8) + 16 * (*(this + 14) * v3));
      v7 = *v6;
      v41 = *v6;
      v42 = 0;
      v8 = *(v6 + 2);
      if (v8)
      {
        v42 = *(v6 + 2);
        if (v8 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v41, v6);
        }

        if (llvm::detail::operator>=(&v41, 0))
        {
          v39 = v41;
          v40 = 0;
          if (!v42)
          {
            goto LABEL_16;
          }

          v40 = v42;
          if (v42 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v39, &v41);
          }

          goto LABEL_15;
        }

        if (v42)
        {
          goto LABEL_118;
        }
      }

      else if ((v7 & 0x8000000000000000) == 0)
      {
        v39 = v7;
        v40 = 0;
        goto LABEL_16;
      }

      if (v41 == 0x8000000000000000)
      {
LABEL_118:
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v41, &v29);
        llvm::detail::SlowDynamicAPInt::operator-(&v29, &v31);
        v40 = v32;
        if (v32 > 0x40)
        {
          llvm::APInt::initSlowCase(&v39, &v31);
        }

        v39 = v31;
        if (v30 >= 0x41 && v29)
        {
          MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }

        goto LABEL_15;
      }

      v39 = -v41;
      v40 = 0;
LABEL_15:
      if (v42 > 0x40 && v41)
      {
        MEMORY[0x259C63150](v41, 0x1000C8000313F17);
      }

LABEL_16:
      if (v4 >= 2)
      {
        v9 = 1;
        while (1)
        {
          v10 = (*(this + 8) + 16 * (v9 + *(this + 14) * v3));
          v11 = *v10;
          v33 = *v10;
          v34 = 0;
          v12 = *(v10 + 2);
          if (!v12)
          {
            break;
          }

          v34 = *(v10 + 2);
          if (v12 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v33, v10);
          }

          if (!llvm::detail::operator>=(&v33, 0))
          {
            if (v34)
            {
              v30 = v34;
              if (v34 > 0x40)
              {
                llvm::APInt::initSlowCase(&v29, &v33);
              }

              v29 = v33;
LABEL_100:
              llvm::detail::SlowDynamicAPInt::operator-(&v29, &v31);
              v36 = v32;
              if (v32 > 0x40)
              {
                llvm::APInt::initSlowCase(&v35, &v31);
              }

              v35 = v31;
              if (v30 >= 0x41 && v29)
              {
                MEMORY[0x259C63150](v29, 0x1000C8000313F17);
              }

              goto LABEL_23;
            }

LABEL_20:
            if (v33 != 0x8000000000000000)
            {
              v11 = -v33;
LABEL_22:
              v35 = v11;
              v36 = 0;
              goto LABEL_23;
            }

            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v29, 0x8000000000000000);
            goto LABEL_100;
          }

          v35 = v33;
          v36 = 0;
          if (v34)
          {
            v36 = v34;
            if (v34 >= 0x41)
            {
              llvm::APInt::initSlowCase(&v35, &v33);
            }
          }

LABEL_23:
          if (v40)
          {
            v30 = v40;
            if (v40 > 0x40)
            {
              llvm::APInt::initSlowCase(&v29, &v39);
            }

            v29 = v39;
            v22 = v36;
            if (!v36)
            {
              goto LABEL_80;
            }
          }

          else
          {
            if (!v36)
            {
              v13 = v35;
              if (v39 == 0x8000000000000000)
              {
                v14 = 0;
              }

              else
              {
                v14 = -v39;
              }

              if (v39 >= 0)
              {
                v14 = v39;
              }

              if (v35 == 0x8000000000000000)
              {
                v15 = 0;
              }

              else
              {
                v15 = -v35;
              }

              if (v35 < 0)
              {
                v13 = v15;
              }

              if (v14 >= v13)
              {
                v16 = v13;
              }

              else
              {
                v16 = v14;
              }

              if (v14 > v13)
              {
                v13 = v14;
              }

              if (v16)
              {
                v17 = v13 % v16;
                if (v17)
                {
                  v18 = v17 >> __clz(__rbit64(v17));
                  v19 = v16;
                  do
                  {
                    v20 = v19 >> __clz(__rbit64(v19));
                    v19 = v20 - v18;
                    if (v18 > v20)
                    {
                      v19 = v18 - v20;
                    }

                    if (v18 >= v20)
                    {
                      v18 = v20;
                    }
                  }

                  while (v19);
                  v16 = v18 << __clz(__rbit64(v17 | v16));
                }
              }

              else
              {
                v16 = v13;
              }

              v37 = v16;
              v38 = 0;
              goto LABEL_51;
            }

            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v29, v39);
            v22 = v36;
            if (!v36)
            {
LABEL_80:
              llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v41, v35);
              goto LABEL_81;
            }
          }

          v42 = v22;
          if (v22 > 0x40)
          {
            llvm::APInt::initSlowCase(&v41, &v35);
          }

          v41 = v35;
LABEL_81:
          llvm::detail::gcd(&v29, &v41, &v31);
          v38 = v32;
          if (v32 > 0x40)
          {
            llvm::APInt::initSlowCase(&v37, &v31);
          }

          v37 = v31;
          if (v42 >= 0x41 && v41)
          {
            MEMORY[0x259C63150](v41, 0x1000C8000313F17);
          }

          if (v30 >= 0x41 && v29)
          {
            MEMORY[0x259C63150](v29, 0x1000C8000313F17);
          }

          if (v38)
          {
            if (v40)
            {
              llvm::detail::SlowDynamicAPInt::operator=(&v39, &v37);
            }

            else
            {
              v40 = v38;
              if (v38 > 0x40)
              {
                llvm::APInt::initSlowCase(&v39, &v37);
              }

              v39 = v37;
            }

            goto LABEL_53;
          }

LABEL_51:
          v21 = v37;
          if (v40 > 0x40 && v39)
          {
            MEMORY[0x259C63150](v39, 0x1000C8000313F17);
          }

          v39 = v21;
          v40 = 0;
LABEL_53:
          if (v38 > 0x40 && v37)
          {
            MEMORY[0x259C63150](v37, 0x1000C8000313F17);
          }

          if (v36 > 0x40 && v35)
          {
            MEMORY[0x259C63150](v35, 0x1000C8000313F17);
          }

          if (v34 > 0x40 && v33)
          {
            MEMORY[0x259C63150](v33, 0x1000C8000313F17);
          }

          if (++v9 == v4)
          {
            goto LABEL_107;
          }
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

LABEL_107:
      v23 = (*(this + 8) + 16 * (v4 + *(this + 14) * v3));
      v24 = *v23;
      v41 = *v23;
      v42 = 0;
      v25 = *(v23 + 2);
      if (v25)
      {
        v42 = *(v23 + 2);
        if (v25 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v41, v23);
        }

        if (llvm::detail::operator>=(&v41, 0))
        {
          v37 = v41;
          v38 = 0;
          if (!v42)
          {
            goto LABEL_124;
          }

          v38 = v42;
          if (v42 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v37, &v41);
          }

          goto LABEL_123;
        }

        if (v42)
        {
          goto LABEL_146;
        }
      }

      else if ((v24 & 0x8000000000000000) == 0)
      {
        v37 = v24;
        v38 = 0;
        goto LABEL_124;
      }

      if (v41 == 0x8000000000000000)
      {
LABEL_146:
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v41, &v29);
        llvm::detail::SlowDynamicAPInt::operator-(&v29, &v31);
        v38 = v32;
        if (v32 > 0x40)
        {
          llvm::APInt::initSlowCase(&v37, &v31);
        }

        v37 = v31;
        if (v30 >= 0x41 && v29)
        {
          MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }

        goto LABEL_123;
      }

      v37 = -v41;
      v38 = 0;
LABEL_123:
      if (v42 > 0x40 && v41)
      {
        MEMORY[0x259C63150](v41, 0x1000C8000313F17);
      }

LABEL_124:
      if (v40)
      {
        if (llvm::detail::operator>(&v39, 0))
        {
          v26 = v40 == 0;
          if (v38)
          {
            goto LABEL_132;
          }

LABEL_127:
          if (v26)
          {
            v35 = v37 % v39;
LABEL_129:
            v27 = v35 != 0;
            goto LABEL_135;
          }

LABEL_132:
          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v37, &v29);
          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v39, &v41);
          llvm::detail::SlowDynamicAPInt::operator%(&v29, &v41, &v31);
          v36 = v32;
          if (v32 > 0x40)
          {
            llvm::APInt::initSlowCase(&v35, &v31);
          }

          v35 = v31;
          if (v42 >= 0x41 && v41)
          {
            MEMORY[0x259C63150](v41, 0x1000C8000313F17);
          }

          if (v30 >= 0x41 && v29)
          {
            MEMORY[0x259C63150](v29, 0x1000C8000313F17);
          }

          if (v36)
          {
            v27 = llvm::detail::operator!=(&v35, 0);
            if (v36 >= 0x41 && v35)
            {
              MEMORY[0x259C63150](v35, 0x1000C8000313F17);
            }

            goto LABEL_135;
          }

          goto LABEL_129;
        }
      }

      else if (v39 > 0)
      {
        v26 = 1;
        if (!v38)
        {
          goto LABEL_127;
        }

        goto LABEL_132;
      }

      v27 = 0;
LABEL_135:
      if (v38 > 0x40 && v37)
      {
        MEMORY[0x259C63150](v37, 0x1000C8000313F17);
      }

      if (v40 > 0x40 && v39)
      {
        MEMORY[0x259C63150](v39, 0x1000C8000313F17);
      }

      if (!v27)
      {
        v5 = ++v3 < v1;
        if (v3 != v1)
        {
          continue;
        }
      }

      return v5;
    }
  }

  return 0;
}

uint64_t mlir::presburger::IntegerRelation::removeRedundantLocalVars(uint64_t this)
{
  v1 = this;
  v30 = *MEMORY[0x277D85DE8];
  v2 = (this + 48);
  v3 = *(this + 48);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      this = mlir::presburger::IntMatrix::normalizeRow(v2, i, &v28);
      if (v29 > 0x40)
      {
        this = v28;
        if (v28)
        {
          this = MEMORY[0x259C63150](v28, 0x1000C8000313F17);
        }
      }
    }
  }

  v5 = *v2;
  if (*v2)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v1 + 20);
      v8 = *(v1 + 12) + *(v1 + 8) + *(v1 + 16);
      if (v8 < v8 + v7)
      {
        break;
      }

LABEL_11:
      if (++v6 == v5)
      {
        return this;
      }
    }

    while (1)
    {
      v9 = *(v1 + 64);
      v10 = (v9 + 16 * (v8 + v6 * *(v1 + 56)));
      if (*(v10 + 2))
      {
        this = llvm::detail::operator>=(v9 + 16 * (v8 + v6 * *(v1 + 56)), 0);
        if (this)
        {
          v11 = *v10;
          v26 = *v10;
          v27 = 0;
          v12 = *(v10 + 2);
          if (!v12)
          {
            goto LABEL_29;
          }

          goto LABEL_16;
        }

        v13 = *(v10 + 2);
        if (v13)
        {
          v21 = *(v10 + 2);
          if (v13 > 0x40)
          {
            llvm::APInt::initSlowCase(&v20, v10);
          }

          v20 = *v10;
          goto LABEL_33;
        }

        v11 = *v10;
      }

      else
      {
        v11 = *v10;
        if ((*v10 & 0x8000000000000000) == 0)
        {
          v26 = *v10;
          v27 = 0;
          v12 = *(v10 + 2);
          if (!v12)
          {
            goto LABEL_29;
          }

LABEL_16:
          v27 = v12;
          if (v12 > 0x40)
          {
            llvm::APInt::initSlowCase(&v26, v10);
          }

          v26 = *v10;
LABEL_40:
          this = llvm::detail::operator==(&v26, 1);
          if (v27 >= 0x41 && v26)
          {
            v14 = this;
            this = MEMORY[0x259C63150](v26, 0x1000C8000313F17);
            if (v14)
            {
              goto LABEL_49;
            }
          }

          else if (this)
          {
            goto LABEL_49;
          }

          goto LABEL_30;
        }
      }

      if (v11 != 0x8000000000000000)
      {
        v11 = -v11;
LABEL_29:
        if (v11 == 1)
        {
          goto LABEL_49;
        }

        goto LABEL_30;
      }

      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v20, 0x8000000000000000);
LABEL_33:
      this = llvm::detail::SlowDynamicAPInt::operator-(&v20, &v22);
      v27 = v23;
      if (v23 > 0x40)
      {
        llvm::APInt::initSlowCase(&v26, &v22);
      }

      v26 = v22;
      if (v21 >= 0x41)
      {
        this = v20;
        if (v20)
        {
          this = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
        }
      }

      if (v27)
      {
        goto LABEL_40;
      }

      if (v26 == 1)
      {
        goto LABEL_49;
      }

LABEL_30:
      ++v8;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }
  }

  v6 = 0;
  v8 = 0;
LABEL_49:
  if (v6 != v5)
  {
    v15 = *v2;
    if (!*v2)
    {
LABEL_60:
      v18 = *(v1 + 336);
      if (v18)
      {
        for (j = 0; j != v18; ++j)
        {
          eliminateFromConstraint(v1, j, v6, v8, v8, 0);
        }
      }

      mlir::presburger::IntegerRelation::removeVarRange(v1, v8, v8 + 1);
      mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRow();
    }

    v16 = 0;
    while (1)
    {
      v17 = *(v1 + 64) + 16 * (v8 + *(v1 + 56) * v16);
      if (*(v17 + 8))
      {
        if (llvm::detail::operator!=(v17, 0))
        {
LABEL_55:
          eliminateFromConstraint(v1, v16, v6, v8, v8, 1);
          mlir::presburger::IntMatrix::normalizeRow(v2, v16, &v24);
          if (v25 > 0x40 && v24)
          {
            MEMORY[0x259C63150](v24, 0x1000C8000313F17);
          }
        }
      }

      else if (*v17)
      {
        goto LABEL_55;
      }

      if (v15 == ++v16)
      {
        goto LABEL_60;
      }
    }
  }

  return this;
}

uint64_t mlir::presburger::IntegerRelation::gaussianEliminateVars(mlir::presburger::IntegerRelation *this, unsigned int a2, unsigned int a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a2 >= a3)
  {
    return 0;
  }

  mlir::presburger::IntegerRelation::gcdTightenInequalities(this);
  v6 = (this + 336);
  v7 = a2;
  do
  {
    v8 = *(this + 12);
    if (v8)
    {
      for (i = 0; v8 != i; ++i)
      {
        v10 = (*(this + 8) + 16 * (v7 + *(this + 14) * i));
        v11 = *v10;
        v31 = *v10;
        v12 = *(v10 + 2);
        if (v12)
        {
          v32 = *(v10 + 2);
          if (v12 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v31, v10);
          }

          v13 = llvm::detail::operator!=(&v31, 0);
          if (v32 >= 0x41 && v31)
          {
            v14 = v13;
            MEMORY[0x259C63150](v31, 0x1000C8000313F17);
            if (v14)
            {
              goto LABEL_18;
            }
          }

          else if (v13)
          {
LABEL_18:
            v15 = *(this + 12);
            if (v15)
            {
              for (j = 0; j != v15; ++j)
              {
                eliminateFromConstraint(this, j, i, v7, a2, 1);
                mlir::presburger::IntMatrix::normalizeRow((this + 48), j, &v29);
                if (v30 > 0x40 && v29)
                {
                  MEMORY[0x259C63150](v29, 0x1000C8000313F17);
                }
              }
            }

            v24 = *v6;
            if (*v6)
            {
              v25 = 0;
              do
              {
                eliminateFromConstraint(this, v25, i, v7, a2, 0);
                mlir::presburger::IntMatrix::normalizeRow((this + 336), v25, &v27);
                if (v28 > 0x40 && v27)
                {
                  MEMORY[0x259C63150](v27, 0x1000C8000313F17);
                }

                ++v25;
              }

              while (v24 != v25);
            }

            mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRow();
          }
        }

        else if (v11)
        {
          goto LABEL_18;
        }
      }
    }

    v17 = *v6;
    if (*v6)
    {
      for (k = 0; v17 != k; ++k)
      {
        v19 = (*(this + 44) + 16 * (v7 + *(this + 86) * k));
        v20 = *v19;
        v31 = *v19;
        v21 = *(v19 + 2);
        if (v21)
        {
          v32 = *(v19 + 2);
          if (v21 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v31, v19);
          }

          v22 = llvm::detail::operator!=(&v31, 0);
          if (v32 >= 0x41 && v31)
          {
            v23 = v22;
            MEMORY[0x259C63150](v31, 0x1000C8000313F17);
            if (v23)
            {
              goto LABEL_48;
            }
          }

          else if (v22)
          {
            goto LABEL_48;
          }
        }

        else if (v20)
        {
          goto LABEL_48;
        }
      }
    }

    ++v7;
  }

  while (v7 != a3);
  v7 = a3;
LABEL_48:
  mlir::presburger::IntegerRelation::removeVarRange(this, a2, v7);
  return v7 - a2;
}

unsigned int *mlir::presburger::IntegerRelation::fourierMotzkinEliminate(mlir::presburger::IntegerRelation *this, uint64_t a2, BOOL a3, BOOL *a4)
{
  v25[12] = *MEMORY[0x277D85DE8];
  v6 = *(this + 12);
  if (!v6)
  {
LABEL_11:
    mlir::presburger::IntegerRelation::gcdTightenInequalities(this);
    if (!mlir::presburger::IntegerRelation::isColZero(this, a2))
    {
      v24[2] = v25;
      v24[3] = 0x400000000;
      v22 = v24;
      v23 = 0x400000000;
      if (*(this + 84))
      {
        operator new();
      }

      v12 = *(this + 8);
      v13 = *(this + 24);
      __dst = v16;
      v15 = 0;
      if (&v12 != (this + 8) && *(this + 10))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      VarKindAt = mlir::presburger::PresburgerSpace::getVarKindAt(&v12, a2);
      VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset(&v12, VarKindAt);
      mlir::presburger::PresburgerSpace::removeVarRange(&v12, VarKindAt, a2 - VarKindOffset, a2 - VarKindOffset + 1);
      v16[22] = &unk_286893110;
      v17 = v12;
      v18 = v13;
      v19 = &v21;
      v20 = 0;
      if (v15)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
    }

    return mlir::presburger::IntegerRelation::removeVarRange(this, a2, a2 + 1);
  }

  v7 = 0;
  while (1)
  {
    v8 = *(this + 8) + 16 * (a2 + *(this + 14) * v7);
    if (*(v8 + 8))
    {
      break;
    }

    if (*v8)
    {
      goto LABEL_8;
    }

LABEL_5:
    if (v6 == ++v7)
    {
      goto LABEL_11;
    }
  }

  if (!llvm::detail::operator!=(v8, 0))
  {
    goto LABEL_5;
  }

LABEL_8:

  return mlir::presburger::IntegerRelation::gaussianEliminateVars(this, a2, a2 + 1);
}

BOOL mlir::presburger::IntegerRelation::isObviouslyEmpty(mlir::presburger::IntegerRelation *this)
{
  if (mlir::presburger::IntegerRelation::isEmptyByGCDTest(this) || mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(this, 1))
  {
    return 1;
  }

  return mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(this, 0);
}

uint64_t mlir::presburger::IntegerRelation::isIntegerEmpty(mlir::presburger::IntegerRelation *this, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  mlir::presburger::IntegerRelation::findIntegerSample(this, a2);
  v2 = v14;
  if (v14 == 1)
  {
    v3 = v11;
    if (v12)
    {
      v4 = &v11[2 * v12 - 1];
      v5 = -16 * v12;
      v6 = v4;
      do
      {
        v8 = *v6;
        v6 -= 4;
        v7 = v8;
        if (v8)
        {
          if (v7 >= 0x41)
          {
            v9 = *(v4 - 8);
            if (v9)
            {
              MEMORY[0x259C63150](v9, 0x1000C8000313F17);
            }
          }
        }

        v4 = v6;
        v5 += 16;
      }

      while (v5);
      v3 = v11;
    }

    if (v3 != &v13)
    {
      free(v3);
    }
  }

  return v2 ^ 1u;
}

BOOL mlir::presburger::IntegerRelation::findIntegerSample(mlir::presburger::IntegerRelation *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v6[136] = *MEMORY[0x277D85DE8];
  result = mlir::presburger::IntegerRelation::isEmptyByGCDTest(v2);
  if (!result)
  {
    mlir::presburger::SimplexBase::SimplexBase(v6, vaddvq_s32(*(v2 + 8)), 0);
  }

  *v4 = 0;
  v4[144] = 0;
  return result;
}

void mlir::presburger::ceil(mlir::presburger *this@<X0>, llvm::APInt *a2@<X8>)
{
  if (*(this + 2) | *(this + 6))
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this, &v12);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this + 16, &v10);
    llvm::detail::ceilDiv(&v12, &v10, &v14);
    v9 = v15;
    *(a2 + 2) = v15;
    if (v9 > 0x40)
    {
      llvm::APInt::initSlowCase(a2, &v14);
    }

    *a2 = v14;
    if (v11 >= 0x41 && v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }

    if (v13 >= 0x41 && v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  else
  {
    v3 = *this;
    v4 = *(this + 2);
    if (*this == 0x8000000000000000 && v4 == -1)
    {
      mlir::presburger::operator-(this);
    }

    else
    {
      if (v3)
      {
        if ((v4 ^ v3) < 0)
        {
          v3 /= v4;
        }

        else
        {
          if (v4 < 0)
          {
            v6 = v3 + 1;
          }

          else
          {
            v6 = v3 - 1;
          }

          v3 = v6 / v4 + 1;
        }
      }

      *a2 = v3;
      *(a2 + 2) = 0;
    }
  }
}

uint64_t mlir::presburger::IntegerRelation::containsPoint(uint64_t a1)
{
  if (*(a1 + 48))
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  if (*(a1 + 336))
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  return 1;
}

llvm::APInt *valueAt(llvm::APInt *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a2 + 16 * a3;
  v7 = *(v5 - 16);
  v6 = (v5 - 16);
  *result = v7;
  *(result + 2) = 0;
  v8 = *(v6 + 2);
  if (v8)
  {
    *(result + 2) = v8;
    if (v8 >= 0x41)
    {
      llvm::APInt::initSlowCase(result, v6);
    }
  }

  if (a5)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = 16 * v9;
      v12 = (a2 + v11);
      v13 = (a4 + v11);
      v14 = *(a2 + v11 + 8);
      if (v14)
      {
        v16 = result;
        v17 = a2;
        v18 = a4;
        v19 = a5;
        v77 = v14;
        if (v14 > 0x40)
        {
          llvm::APInt::initSlowCase(&v76, v12);
        }

        v76 = *v12;
      }

      else
      {
        if (!*(v13 + 2))
        {
          if ((*v12 * *v13) >> 64 == (*v12 * *v13) >> 63)
          {
            v78 = *v12 * *v13;
            v79 = 0;
          }

          else
          {
            v28 = result;
            v29 = a2;
            v30 = a4;
            v31 = a5;
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v12, &v76);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v13, &v74);
            llvm::detail::SlowDynamicAPInt::operator*(&v76, &v74, &v80);
            v79 = v81;
            if (v81 > 0x40)
            {
              llvm::APInt::initSlowCase(&v78, &v80);
            }

            v78 = v80;
            if (v75 >= 0x41 && v74)
            {
              MEMORY[0x259C63150](v74, 0x1000C8000313F17);
            }

            if (v77 >= 0x41 && v76)
            {
              MEMORY[0x259C63150](v76, 0x1000C8000313F17);
            }

            a5 = v31;
            a4 = v30;
            a2 = v29;
            result = v28;
          }

          goto LABEL_8;
        }

        v16 = result;
        v17 = a2;
        v18 = a4;
        v19 = a5;
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v76, *v12);
      }

      v37 = *(v13 + 2);
      if (v37)
      {
        v75 = *(v13 + 2);
        if (v37 > 0x40)
        {
          llvm::APInt::initSlowCase(&v74, v13);
        }

        v74 = *v13;
      }

      else
      {
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v74, *v13);
      }

      llvm::detail::SlowDynamicAPInt::operator*(&v76, &v74, &v80);
      v79 = v81;
      if (v81 > 0x40)
      {
        llvm::APInt::initSlowCase(&v78, &v80);
      }

      v78 = v80;
      a5 = v19;
      a4 = v18;
      a2 = v17;
      result = v16;
      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x259C63150](v74, 0x1000C8000313F17);
        result = v16;
        a2 = v17;
        a4 = v18;
        a5 = v19;
      }

      if (v77 >= 0x41 && v76)
      {
        v38 = result;
        v39 = a2;
        v40 = a5;
        v41 = a4;
        MEMORY[0x259C63150](v76, 0x1000C8000313F17);
        result = v38;
        a2 = v39;
        a4 = v41;
        a5 = v40;
      }

LABEL_8:
      v15 = *(result + 2);
      if (v15)
      {
        v20 = a2;
        v21 = a4;
        v22 = a5;
        v75 = *(result + 2);
        if (v15 > 0x40)
        {
          llvm::APInt::initSlowCase(&v74, result);
        }

        v23 = result;
        v74 = *result;
LABEL_43:
        if (v79)
        {
          v73 = v79;
          if (v79 > 0x40)
          {
            llvm::APInt::initSlowCase(&v72, &v78);
          }

          v72 = v78;
        }

        else
        {
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v72, v78);
        }

        llvm::detail::SlowDynamicAPInt::operator+(&v74, &v72, &v76);
        v81 = v77;
        if (v77 > 0x40)
        {
          llvm::APInt::initSlowCase(&v80, &v76);
        }

        v80 = v76;
        a5 = v22;
        a4 = v21;
        a2 = v20;
        result = v23;
        if (v77)
        {
          v58 = v23;
          v59 = (v23 + 8);
          v60 = a2;
          v61 = a4;
          v62 = v23;
          v63 = a5;
          valueAt(v59, v77, &v80, v62);
          result = v58;
          a2 = v60;
          a4 = v61;
          a5 = v63;
          v43 = v81;
          if (v81)
          {
LABEL_88:
            if (v43 >= 0x41 && v80)
            {
              v68 = result;
              v69 = a2;
              v70 = a5;
              v71 = a4;
              MEMORY[0x259C63150](v80, 0x1000C8000313F17);
              result = v68;
              a2 = v69;
              a4 = v71;
              a5 = v70;
            }
          }
        }

        else
        {
          v42 = v80;
          if (*(v23 + 2) > 0x40u && *v23)
          {
            v64 = v23;
            v65 = a2;
            v66 = a5;
            v67 = a4;
            MEMORY[0x259C63150](*result, 0x1000C8000313F17);
            result = v64;
            a2 = v65;
            a4 = v67;
            a5 = v66;
            *v64 = v42;
            *(v64 + 2) = 0;
            v43 = v81;
            if (v81)
            {
              goto LABEL_88;
            }
          }

          else
          {
            *v23 = v80;
            *(v23 + 2) = 0;
            v43 = v81;
            if (v81)
            {
              goto LABEL_88;
            }
          }
        }

        if (v77 >= 0x41 && v76)
        {
          v44 = result;
          v45 = a2;
          v46 = a5;
          v47 = a4;
          MEMORY[0x259C63150](v76, 0x1000C8000313F17);
          result = v44;
          a2 = v45;
          a4 = v47;
          a5 = v46;
        }

        if (v73 >= 0x41 && v72)
        {
          v48 = result;
          v49 = a2;
          v50 = a5;
          v51 = a4;
          MEMORY[0x259C63150](v72, 0x1000C8000313F17);
          result = v48;
          a2 = v49;
          a4 = v51;
          a5 = v50;
        }

        if (v75 >= 0x41 && v74)
        {
          v52 = result;
          v53 = a2;
          v54 = a5;
          v55 = a4;
          MEMORY[0x259C63150](v74, 0x1000C8000313F17);
          result = v52;
          a2 = v53;
          a4 = v55;
          a5 = v54;
        }

        goto LABEL_12;
      }

      if (v79)
      {
        v20 = a2;
        v21 = a4;
        v22 = a5;
        v23 = result;
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v74, *result);
        goto LABEL_43;
      }

      if (__OFADD__(*result, v78))
      {
        v32 = a2;
        v33 = a4;
        v34 = a5;
        v35 = result;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(result, &v74);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v78, &v72);
        llvm::detail::SlowDynamicAPInt::operator+(&v74, &v72, &v76);
        v36 = v77;
        v81 = v77;
        if (v77 > 0x40)
        {
          llvm::APInt::initSlowCase(&v80, &v76);
        }

        v80 = v76;
        result = v35;
        if (v77)
        {
          if (v35[2])
          {
            llvm::detail::SlowDynamicAPInt::operator=(v35, &v80);
            result = v35;
          }

          else
          {
            v35[2] = v77;
            if (v36 > 0x40)
            {
              llvm::APInt::initSlowCase(v35, &v80);
            }

            result = v35;
            *v35 = v80;
          }

          a5 = v34;
          a4 = v33;
          a2 = v32;
          v57 = v81;
          if (v81)
          {
LABEL_99:
            if (v57 >= 0x41 && v80)
            {
              MEMORY[0x259C63150](v80, 0x1000C8000313F17);
              result = v35;
              a2 = v32;
              a4 = v33;
              a5 = v34;
            }
          }
        }

        else
        {
          a5 = v34;
          a4 = v33;
          a2 = v32;
          v56 = v80;
          if (v35[2] > 0x40 && *v35)
          {
            MEMORY[0x259C63150](*v35, 0x1000C8000313F17);
            result = v35;
            a2 = v32;
            a4 = v33;
            a5 = v34;
            *v35 = v56;
            v35[2] = 0;
            v57 = v81;
            if (v81)
            {
              goto LABEL_99;
            }
          }

          else
          {
            *v35 = v80;
            v35[2] = 0;
            v57 = v81;
            if (v81)
            {
              goto LABEL_99;
            }
          }
        }

        if (v77 >= 0x41 && v76)
        {
          MEMORY[0x259C63150](v76, 0x1000C8000313F17);
          result = v35;
          a2 = v32;
          a4 = v33;
          a5 = v34;
        }

        if (v73 >= 0x41 && v72)
        {
          MEMORY[0x259C63150](v72, 0x1000C8000313F17);
          result = v35;
          a2 = v32;
          a4 = v33;
          a5 = v34;
        }

        if (v75 >= 0x41 && v74)
        {
          MEMORY[0x259C63150](v74, 0x1000C8000313F17);
          result = v35;
          a2 = v32;
          a4 = v33;
          a5 = v34;
        }

        goto LABEL_12;
      }

      *result += v78;
LABEL_12:
      if (v79 > 0x40)
      {
        if (v78)
        {
          v24 = result;
          v25 = a2;
          v26 = a5;
          v27 = a4;
          MEMORY[0x259C63150](v78, 0x1000C8000313F17);
          result = v24;
          a2 = v25;
          a4 = v27;
          a5 = v26;
        }
      }

      v9 = v10++;
    }

    while (a5 > v9);
  }

  return result;
}

void mlir::presburger::IntegerRelation::containsPointNoLocal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[32] = *MEMORY[0x277D85DE8];
  v5 = &unk_286893110;
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  __dst = &v10;
  v9 = 0;
  if (&v5 != a1 && *(a1 + 40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12[0] = v13;
  v12[1] = 0x1000000000;
  if (*(a1 + 72))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v12, (a1 + 64));
  }

  v13[32] = *(a1 + 336);
  v14 = *(a1 + 344);
  v15[0] = v16;
  v15[1] = 0x1000000000;
  if (*(a1 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v15, (a1 + 352));
  }

  if (a3)
  {
    if (a3)
    {
      mlir::presburger::Matrix<llvm::DynamicAPInt>::addToColumn();
    }

    mlir::presburger::IntegerRelation::removeVarRange(&v5, 0, 0);
  }

  mlir::presburger::IntegerRelation::findIntegerSample(&v5, a2);
  mlir::presburger::IntegerRelation::~IntegerRelation(&v5);
}

void mlir::presburger::IntegerRelation::gcdTightenInequalities(mlir::presburger::IntegerRelation *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(this + 84);
  if (v1)
  {
    v3 = 0;
    v4 = *(this + 3) + *(this + 2) + *(this + 4) + *(this + 5);
    while (1)
    {
      mlir::presburger::IntMatrix::normalizeRow((this + 336), v3, vaddvq_s32(*(this + 8)), &v21);
      if (v22)
      {
        break;
      }

      if (v21 > 1)
      {
        v5 = 1;
        goto LABEL_7;
      }

LABEL_3:
      if (v1 == ++v3)
      {
        return;
      }
    }

    if (!llvm::detail::operator>(&v21, 1))
    {
LABEL_23:
      if (v22 > 0x40)
      {
        if (v21)
        {
          MEMORY[0x259C63150](v21, 0x1000C8000313F17);
        }
      }

      goto LABEL_3;
    }

    v5 = v22 == 0;
LABEL_7:
    v6 = *(this + 44) + 16 * (v4 + *(this + 86) * v3);
    if (*(v6 + 8))
    {
      v7 = 1;
    }

    else
    {
      v7 = !v5;
    }

    if (v7)
    {
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v6, &v15);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v21, &v13);
      llvm::detail::floorDiv(&v15, &v13, &v17);
      v20 = v18;
      if (v18 > 0x40)
      {
        llvm::APInt::initSlowCase(&v19, &v17);
      }

      v19 = v17;
      if (v14 >= 0x41 && v13)
      {
        MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      }
    }

    else
    {
      v8 = *v6;
      if (*v6 != 0x8000000000000000 || v21 != -1)
      {
        if (v8)
        {
          if ((v21 ^ v8) < 0)
          {
            v8 = (((v21 >> 63) | 1) + v8) / v21 - 1;
          }

          else
          {
            v8 /= v21;
          }
        }

        v19 = v8;
        v20 = 0;
        v10 = (*(this + 44) + 16 * (v4 + *(this + 86) * v3));
        goto LABEL_20;
      }

      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v6, &v15);
      llvm::detail::SlowDynamicAPInt::operator-(&v15, &v17);
      v20 = v18;
      if (v18 > 0x40)
      {
        llvm::APInt::initSlowCase(&v19, &v17);
      }

      v19 = v17;
    }

    if (v16 >= 0x41 && v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }

    v12 = v20;
    v10 = (*(this + 44) + 16 * (v4 + *(this + 86) * v3));
    if (v20)
    {
      if (v10[2])
      {
        llvm::detail::SlowDynamicAPInt::operator=(v10, &v19);
      }

      else
      {
        v10[2] = v20;
        if (v12 > 0x40)
        {
          llvm::APInt::initSlowCase(v10, &v19);
        }

        *v10 = v19;
      }

      goto LABEL_22;
    }

LABEL_20:
    v11 = v19;
    if (v10[2] > 0x40 && *v10)
    {
      MEMORY[0x259C63150](*v10, 0x1000C8000313F17);
    }

    *v10 = v11;
    v10[2] = 0;
LABEL_22:
    if (v20 > 0x40 && v19)
    {
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }

    goto LABEL_23;
  }
}

void eliminateFromConstraint(mlir::presburger::IntegerRelation *a1, int a2, int a3, unsigned int a4, unsigned int a5, int a6)
{
  v77 = *MEMORY[0x277D85DE8];
  if (a2 == a3 && (a6 & 1) != 0)
  {
    return;
  }

  if (a6)
  {
    v12 = 64;
  }

  else
  {
    v12 = 352;
  }

  if (a6)
  {
    v13 = 56;
  }

  else
  {
    v13 = 344;
  }

  v52 = v12;
  v14 = (*(a1 + v12) + 16 * (a4 + *(a1 + v13) * a2));
  v15 = *v14;
  v67 = *v14;
  v68 = 0;
  v16 = *(v14 + 2);
  if (v16)
  {
    v68 = *(v14 + 2);
    if (v16 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v67, v14);
    }

    if (!llvm::detail::operator==(&v67, 0))
    {
LABEL_11:
      v17 = (*(a1 + 8) + 16 * (a4 + *(a1 + 14) * a3));
      v65 = *v17;
      v66 = 0;
      v18 = *(v17 + 2);
      if (v18)
      {
        v66 = *(v17 + 2);
        if (v18 > 0x40)
        {
          llvm::APInt::initSlowCase(&v65, v17);
        }

        v65 = *v17;
      }

      else if (!v68 && (v67 * v65) >> 64 == (v67 * v65) >> 63)
      {
        v75 = v67 * v65;
        v76 = 0;
        goto LABEL_15;
      }

      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v67, &v55);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v65, &v53);
      llvm::detail::SlowDynamicAPInt::operator*(&v55, &v53, &v57);
      v76 = v58;
      if (v58 > 0x40)
      {
        llvm::APInt::initSlowCase(&v75, &v57);
      }

      v75 = v57;
      if (v54 >= 0x41 && v53)
      {
        MEMORY[0x259C63150](v53, 0x1000C8000313F17);
      }

      if (v56 >= 0x41 && v55)
      {
        MEMORY[0x259C63150](v55, 0x1000C8000313F17);
      }

LABEL_15:
      if (v76)
      {
        v19 = llvm::detail::operator>(&v75, 0);
        if (v76 >= 0x41 && v75)
        {
          MEMORY[0x259C63150](v75, 0x1000C8000313F17);
        }
      }

      else
      {
        v19 = v75 > 0;
      }

      if (!v66)
      {
        v20 = v65;
        if ((v65 & 0x8000000000000000) == 0)
        {
LABEL_21:
          v75 = v20;
          v76 = 0;
          goto LABEL_22;
        }

        if (v65 != 0x8000000000000000)
        {
LABEL_20:
          v20 = -v20;
          goto LABEL_21;
        }

        goto LABEL_316;
      }

      if (llvm::detail::operator>=(&v65, 0))
      {
        v75 = v65;
        v76 = 0;
        if (v66)
        {
          v76 = v66;
          if (v66 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v75, &v65);
          }
        }
      }

      else
      {
        if (!v66)
        {
          v20 = v65;
          if (v65 != 0x8000000000000000)
          {
            goto LABEL_20;
          }

LABEL_316:
          mlir::presburger::operator-(&v65);
          goto LABEL_22;
        }

        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v65, &v55);
        llvm::detail::SlowDynamicAPInt::operator-(&v55, &v57);
        v76 = v58;
        if (v58 > 0x40)
        {
          llvm::APInt::initSlowCase(&v75, &v57);
        }

        v75 = v57;
        if (v56 >= 0x41 && v55)
        {
          MEMORY[0x259C63150](v55, 0x1000C8000313F17);
        }
      }

LABEL_22:
      if (!v68)
      {
        v21 = v67;
        if ((v67 & 0x8000000000000000) == 0)
        {
LABEL_26:
          v73 = v21;
          v74 = 0;
          goto LABEL_27;
        }

        if (v67 != 0x8000000000000000)
        {
LABEL_25:
          v21 = -v21;
          goto LABEL_26;
        }

LABEL_318:
        mlir::presburger::operator-(&v67);
        goto LABEL_27;
      }

      if (llvm::detail::operator>=(&v67, 0))
      {
        v73 = v67;
        v74 = 0;
        if (v68)
        {
          v74 = v68;
          if (v68 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v73, &v67);
          }
        }
      }

      else
      {
        if (!v68)
        {
          v21 = v67;
          if (v67 != 0x8000000000000000)
          {
            goto LABEL_25;
          }

          goto LABEL_318;
        }

        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v67, &v55);
        llvm::detail::SlowDynamicAPInt::operator-(&v55, &v57);
        v74 = v58;
        if (v58 > 0x40)
        {
          llvm::APInt::initSlowCase(&v73, &v57);
        }

        v73 = v57;
        if (v56 >= 0x41 && v55)
        {
          MEMORY[0x259C63150](v55, 0x1000C8000313F17);
        }
      }

LABEL_27:
      if (v76 | v74 || (v75 * v73) >> 64 != (v75 * v73) >> 63)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v75, &v55);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v73, &v53);
        llvm::detail::SlowDynamicAPInt::operator*(&v55, &v53, &v57);
        v72 = v58;
        if (v58 > 0x40)
        {
          llvm::APInt::initSlowCase(&v71, &v57);
        }

        v71 = v57;
        if (v54 >= 0x41 && v53)
        {
          MEMORY[0x259C63150](v53, 0x1000C8000313F17);
        }

        if (v56 >= 0x41 && v55)
        {
          MEMORY[0x259C63150](v55, 0x1000C8000313F17);
        }
      }

      else
      {
        v71 = v75 * v73;
        v72 = 0;
      }

      if (!(v76 | v74))
      {
        v22 = v73;
        if (v75 == 0x8000000000000000)
        {
          v23 = 0;
        }

        else
        {
          v23 = -v75;
        }

        if (v75 >= 0)
        {
          v23 = v75;
        }

        if (v73 == 0x8000000000000000)
        {
          v24 = 0;
        }

        else
        {
          v24 = -v73;
        }

        if (v73 < 0)
        {
          v22 = v24;
        }

        if (v23 >= v22)
        {
          v25 = v22;
        }

        else
        {
          v25 = v23;
        }

        if (v23 > v22)
        {
          v22 = v23;
        }

        if (v25)
        {
          v26 = v22 % v25;
          if (v26)
          {
            v27 = v26 >> __clz(__rbit64(v26));
            v28 = v25;
            do
            {
              v29 = v28 >> __clz(__rbit64(v28));
              v28 = v29 - v27;
              if (v27 > v29)
              {
                v28 = v27 - v29;
              }

              if (v27 >= v29)
              {
                v27 = v29;
              }
            }

            while (v28);
            v69 = v27 << __clz(__rbit64(v26 | v25));
            v70 = 0;
            v30 = 1;
            if (v72)
            {
              goto LABEL_253;
            }

            goto LABEL_58;
          }
        }

        else
        {
          v25 = v22;
        }

        v69 = v25;
        v70 = 0;
        v30 = 1;
        if (v72)
        {
          goto LABEL_253;
        }

        goto LABEL_58;
      }

      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v75, &v55);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v73, &v53);
      llvm::detail::gcd(&v55, &v53, &v57);
      v70 = v58;
      if (v58 > 0x40)
      {
        llvm::APInt::initSlowCase(&v69, &v57);
      }

      v69 = v57;
      if (v54 >= 0x41 && v53)
      {
        MEMORY[0x259C63150](v53, 0x1000C8000313F17);
      }

      if (v56 >= 0x41 && v55)
      {
        MEMORY[0x259C63150](v55, 0x1000C8000313F17);
      }

      v30 = v70 == 0;
      if (v72)
      {
        goto LABEL_253;
      }

LABEL_58:
      if (v30)
      {
        if (v71 == 0x8000000000000000 && v69 == -1)
        {
          mlir::presburger::operator-(&v71);
        }

        else
        {
          v63 = v71 / v69;
          v64 = 0;
        }

        goto LABEL_62;
      }

LABEL_253:
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v71, &v55);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v69, &v53);
      llvm::detail::SlowDynamicAPInt::operator/(&v55, &v53, &v57);
      v64 = v58;
      if (v58 > 0x40)
      {
        llvm::APInt::initSlowCase(&v63, &v57);
      }

      v63 = v57;
      if (v54 >= 0x41 && v53)
      {
        MEMORY[0x259C63150](v53, 0x1000C8000313F17);
      }

      if (v56 >= 0x41 && v55)
      {
        MEMORY[0x259C63150](v55, 0x1000C8000313F17);
      }

LABEL_62:
      if (v70 > 0x40 && v69)
      {
        MEMORY[0x259C63150](v69, 0x1000C8000313F17);
      }

      if (v72 > 0x40 && v71)
      {
        MEMORY[0x259C63150](v71, 0x1000C8000313F17);
      }

      if (v74 > 0x40 && v73)
      {
        MEMORY[0x259C63150](v73, 0x1000C8000313F17);
      }

      if (v76 > 0x40 && v75)
      {
        MEMORY[0x259C63150](v75, 0x1000C8000313F17);
      }

      if (v19)
      {
        v31 = -1;
      }

      else
      {
        v31 = 1;
      }

      if (!v66)
      {
        v32 = v65;
        if ((v65 & 0x8000000000000000) == 0)
        {
LABEL_73:
          v69 = v32;
          v70 = 0;
          goto LABEL_74;
        }

        if (v65 != 0x8000000000000000)
        {
LABEL_72:
          v32 = -v32;
          goto LABEL_73;
        }

        goto LABEL_320;
      }

      if (llvm::detail::operator>=(&v65, 0))
      {
        v69 = v65;
        v70 = 0;
        if (v66)
        {
          v70 = v66;
          if (v66 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v69, &v65);
          }
        }
      }

      else
      {
        if (!v66)
        {
          v32 = v65;
          if (v65 != 0x8000000000000000)
          {
            goto LABEL_72;
          }

LABEL_320:
          mlir::presburger::operator-(&v65);
          goto LABEL_74;
        }

        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v65, &v55);
        llvm::detail::SlowDynamicAPInt::operator-(&v55, &v57);
        v70 = v58;
        if (v58 > 0x40)
        {
          llvm::APInt::initSlowCase(&v69, &v57);
        }

        v69 = v57;
        if (v56 >= 0x41 && v55)
        {
          MEMORY[0x259C63150](v55, 0x1000C8000313F17);
        }
      }

LABEL_74:
      if (v64 | v70)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v63, &v55);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v69, &v53);
        llvm::detail::SlowDynamicAPInt::operator/(&v55, &v53, &v57);
        v72 = v58;
        if (v58 > 0x40)
        {
          llvm::APInt::initSlowCase(&v71, &v57);
        }

        v71 = v57;
        if (v54 >= 0x41 && v53)
        {
          MEMORY[0x259C63150](v53, 0x1000C8000313F17);
        }

        if (v56 >= 0x41 && v55)
        {
          MEMORY[0x259C63150](v55, 0x1000C8000313F17);
        }
      }

      else if (v63 == 0x8000000000000000 && v69 == -1)
      {
        mlir::presburger::operator-(&v63);
      }

      else
      {
        v71 = v63 / v69;
        v72 = 0;
      }

      v75 = v31;
      v76 = 0;
      if (v72 || (v31 * v71) >> 64 != (v31 * v71) >> 63)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v75, &v55);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v71, &v53);
        llvm::detail::SlowDynamicAPInt::operator*(&v55, &v53, &v57);
        v74 = v58;
        if (v58 > 0x40)
        {
          llvm::APInt::initSlowCase(&v73, &v57);
        }

        v73 = v57;
        if (v54 >= 0x41 && v53)
        {
          MEMORY[0x259C63150](v53, 0x1000C8000313F17);
        }

        if (v56 >= 0x41 && v55)
        {
          MEMORY[0x259C63150](v55, 0x1000C8000313F17);
        }
      }

      else
      {
        v73 = v31 * v71;
        v74 = 0;
      }

      if (v76 > 0x40 && v75)
      {
        MEMORY[0x259C63150](v75, 0x1000C8000313F17);
      }

      if (v72 > 0x40 && v71)
      {
        MEMORY[0x259C63150](v71, 0x1000C8000313F17);
      }

      if (v70 > 0x40 && v69)
      {
        MEMORY[0x259C63150](v69, 0x1000C8000313F17);
      }

      if (v68)
      {
        if (llvm::detail::operator>=(&v67, 0))
        {
          v71 = v67;
          v72 = 0;
          if (v68)
          {
            v72 = v68;
            if (v68 >= 0x41)
            {
              llvm::APInt::initSlowCase(&v71, &v67);
            }
          }

          goto LABEL_89;
        }

        if (v68)
        {
          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v67, &v55);
          llvm::detail::SlowDynamicAPInt::operator-(&v55, &v57);
          v72 = v58;
          if (v58 > 0x40)
          {
            llvm::APInt::initSlowCase(&v71, &v57);
          }

          v71 = v57;
          if (v56 >= 0x41 && v55)
          {
            MEMORY[0x259C63150](v55, 0x1000C8000313F17);
          }

          goto LABEL_89;
        }

        v33 = v67;
        if (v67 != 0x8000000000000000)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v33 = v67;
        if ((v67 & 0x8000000000000000) == 0)
        {
LABEL_88:
          v71 = v33;
          v72 = 0;
LABEL_89:
          if (v64 | v72)
          {
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v63, &v55);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v71, &v53);
            llvm::detail::SlowDynamicAPInt::operator/(&v55, &v53, &v57);
            v76 = v58;
            if (v58 > 0x40)
            {
              llvm::APInt::initSlowCase(&v75, &v57);
            }

            v75 = v57;
            if (v54 >= 0x41 && v53)
            {
              MEMORY[0x259C63150](v53, 0x1000C8000313F17);
            }

            if (v56 >= 0x41 && v55)
            {
              MEMORY[0x259C63150](v55, 0x1000C8000313F17);
            }
          }

          else if (v63 == 0x8000000000000000 && v71 == -1)
          {
            mlir::presburger::operator-(&v63);
          }

          else
          {
            v75 = v63 / v71;
            v76 = 0;
          }

          if (v72 > 0x40 && v71)
          {
            MEMORY[0x259C63150](v71, 0x1000C8000313F17);
          }

          v34 = vaddvq_s32(*(a1 + 8));
          if (v34 != -1)
          {
            v35 = 0;
            v36 = v34 + 1;
            v37 = 0x1000C8000313F17;
            do
            {
              if (v35 >= a5 && v35 < a4)
              {
                goto LABEL_96;
              }

              v38 = (*(a1 + 8) + 16 * (v35 + *(a1 + 14) * a3));
              if (v74 || *(v38 + 2) || (v73 * *v38) >> 64 != (v73 * *v38) >> 63)
              {
                llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v73, &v55);
                llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v38, &v53);
                llvm::detail::SlowDynamicAPInt::operator*(&v55, &v53, &v57);
                v70 = v58;
                if (v58 > 0x40)
                {
                  llvm::APInt::initSlowCase(&v69, &v57);
                }

                v69 = v57;
                v37 = 0x1000C8000313F17;
                if (v54 >= 0x41 && v53)
                {
                  MEMORY[0x259C63150](v53, 0x1000C8000313F17);
                  v37 = 0x1000C8000313F17;
                }

                if (v56 >= 0x41 && v55)
                {
                  MEMORY[0x259C63150](v55, 0x1000C8000313F17);
                  v37 = 0x1000C8000313F17;
                }
              }

              else
              {
                v69 = v73 * *v38;
                v70 = 0;
              }

              v39 = (*(a1 + v52) + 16 * (v35 + *(a1 + v13) * a2));
              v59 = *v39;
              v60 = 0;
              v40 = *(v39 + 2);
              if (v40)
              {
                v60 = *(v39 + 2);
                if (v40 >= 0x41)
                {
                  llvm::APInt::initSlowCase(&v59, v39);
                }
              }

              else if (!v76 && (v75 * v59) >> 64 == (v75 * v59) >> 63)
              {
                v61 = v75 * v59;
                v62 = 0;
                goto LABEL_107;
              }

              v46 = v37;
              llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v75, &v55);
              llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v59, &v53);
              llvm::detail::SlowDynamicAPInt::operator*(&v55, &v53, &v57);
              v62 = v58;
              if (v58 > 0x40)
              {
                llvm::APInt::initSlowCase(&v61, &v57);
              }

              v61 = v57;
              v37 = v46;
              if (v54 >= 0x41 && v53)
              {
                MEMORY[0x259C63150](v53, v46);
                v37 = v46;
              }

              if (v56 >= 0x41 && v55)
              {
                MEMORY[0x259C63150](v55, v37);
                v37 = v46;
              }

LABEL_107:
              if (v70 | v62 || __OFADD__(v69, v61))
              {
                v45 = v37;
                llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v69, &v55);
                llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v61, &v53);
                llvm::detail::SlowDynamicAPInt::operator+(&v55, &v53, &v57);
                v72 = v58;
                if (v58 > 0x40)
                {
                  llvm::APInt::initSlowCase(&v71, &v57);
                }

                v71 = v57;
                v37 = v45;
                if (v54 >= 0x41 && v53)
                {
                  MEMORY[0x259C63150](v53, v45);
                  v37 = v45;
                }

                if (v56 >= 0x41 && v55)
                {
                  MEMORY[0x259C63150](v55, v37);
                  v37 = v45;
                }
              }

              else
              {
                v71 = v69 + v61;
                v72 = 0;
              }

              if (v62 > 0x40 && v61)
              {
                v47 = v37;
                MEMORY[0x259C63150](v61, v37);
                v37 = v47;
              }

              if (v60 > 0x40 && v59)
              {
                v48 = v37;
                MEMORY[0x259C63150](v59, v37);
                v37 = v48;
              }

              if (v70 > 0x40 && v69)
              {
                v49 = v37;
                MEMORY[0x259C63150](v69, v37);
                v37 = v49;
              }

              if (a6)
              {
                v41 = (*(a1 + 8) + 16 * (v35 + *(a1 + 14) * a2));
                if (v72)
                {
                  goto LABEL_159;
                }
              }

              else
              {
                v41 = (*(a1 + 44) + 16 * (v35 + *(a1 + 86) * a2));
                if (v72)
                {
LABEL_159:
                  v50 = v37;
                  mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v41, v72, &v71);
                  v37 = v50;
                  v43 = v72;
                  if (v72)
                  {
LABEL_119:
                    if (v43 >= 0x41 && v71)
                    {
                      v44 = v37;
                      MEMORY[0x259C63150](v71, v37);
                      v37 = v44;
                    }

                    goto LABEL_96;
                  }

                  goto LABEL_96;
                }
              }

              v42 = v71;
              if (v41[2] > 0x40 && *v41)
              {
                v51 = v41;
                MEMORY[0x259C63150](*v41, v37);
                v37 = 0x1000C8000313F17;
                *v51 = v42;
                v51[2] = 0;
                v43 = v72;
                if (v72)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                *v41 = v71;
                v41[2] = 0;
                v43 = v72;
                if (v72)
                {
                  goto LABEL_119;
                }
              }

LABEL_96:
              ++v35;
            }

            while (v36 != v35);
          }

          if (v76 > 0x40 && v75)
          {
            MEMORY[0x259C63150](v75, 0x1000C8000313F17);
          }

          if (v74 > 0x40 && v73)
          {
            MEMORY[0x259C63150](v73, 0x1000C8000313F17);
          }

          if (v64 > 0x40 && v63)
          {
            MEMORY[0x259C63150](v63, 0x1000C8000313F17);
          }

          if (v66 > 0x40 && v65)
          {
            MEMORY[0x259C63150](v65, 0x1000C8000313F17);
          }

          goto LABEL_166;
        }

        if (v67 != 0x8000000000000000)
        {
LABEL_87:
          v33 = -v33;
          goto LABEL_88;
        }
      }

      mlir::presburger::operator-(&v67);
      goto LABEL_89;
    }
  }

  else if (v15)
  {
    goto LABEL_11;
  }

LABEL_166:
  if (v68 > 0x40)
  {
    if (v67)
    {
      MEMORY[0x259C63150](v67, 0x1000C8000313F17);
    }
  }
}